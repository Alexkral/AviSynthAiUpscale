/*

    ***** AviSynth AiUpscale v1.1.0 *****
    by Alexkral

    A script to test some Super-resolution convolutional neural networks implemented as hlsl pixel shaders, through AviSynth Shader.
    https://github.com/Alexkral/AviSynthAiUpscale
    https://forum.doom9.org/showthread.php?t=181665

    ----- Requirements -----

    AviSynth+
    AviSynth Shader

    ----- Installation -----

    Copy this file and the shaders folder to the AviSynth+ plugins folder.

    ----- Usage -----

    AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", int "Width" , int "Height" , int "Double", string "Mode", string "CPlace", int "OutDepth")

    - Input: (Default = last). Input image or progressive video in any AviSynth+ color format except YV411 and 32 bit float. Alpha planes are upscaled with Lanczos.
    - Factor: (Default = 2). Upscaling factor (1, 2, 3 or 4). 1 is for chroma resampling. Must be 2 when Double is set for Luma and/or Chroma. Ignored when Width and Height are set except for Factor = 1.
    - Luma: (Default = “Medium”). Model for luma or RGB upscaling. Must be an AiUpscale model (“Fast”, “Medium”, “VDSR”, “HQ” or “HQ Sharp”).
    - Chroma: (Default = “Lanczos”). Method for chroma upscaling. Can be an AiUpscale model, KrigBilateral (only for 4:2:0 or 4:4:4 and 2x upscale ratio), or any AviSynth resize method.
    - CResample: (Default = “”). Method for chroma resampling. Can be an AiUpscale model (only for 4:2:0), KrigBilateral, any AviSynth method, or an empty string which means that the chroma is not resampled.
    - Width, Height: (Default = 0). Target Width and Height. Only for the VDSR, HQ and HQ Sharp models. Both must be between 1x and 4x for the VDSR model, and between 2x and 4x for the HQ models.
      When the chroma is not resampled, Width must be Mod 2 for subsampled formats, and Height must be Mod 2 for 4:2:0. Default = 0 which means that Factor will be used instead.
    - Double: (Default = 0). This allows to repeat a 2x upscaling in the same pass. Factor must be 2. Only for the Fast and Medium models. 0 to disable, 1 to repeat a 2x luma upscaling, 2 to repeat a 2x chroma upscaling, and 3 to repeat both.
      When only used for luma or chroma, the other will be directly upscaled to 4x.
    - Mode: (default = “Photo”). Can be “Photo” for anything that comes from a camera, or “Illustration” for artwork, drawings, etc.
    - CPlace: (Default = “MPEG2”). Chroma placement when the source is YV12. Same as ChromaInPlacement in AviSynth Convert. This affects correct chroma positioning, most of the time it shouldn’t be changed. Can also be “MPEG1” and “DV”.
    - OutDepth: (Default = same as input). Output bit depth (8, 10, 12, 14 or 16).
    
*/

Function AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", int "Width" , int "Height" , int "Double", string "Mode", string "CPlace", int "OutDepth")
{
    Mode = default(Mode, "Photo")
    Factor = default(Factor, 2)
    Double = default(Double, 0)
    Width = default(Width, 0)
    Height = default(Height, 0)
    Luma = default(Luma, "Medium")
    Chroma = default(Chroma, "Lanczos") 
    CResample = default(CResample, "")
    CPlace = default(CPlace, "MPEG2")
    OutDepth = default(OutDepth, Input.BitsPerComponent)
    WFactor = Float(Width) / Input.Width
    HFactor = Float(Height) / Input.Height
   
    MPYUV = !(Input.IsY || Input.IsRGB)
    AIUL1 = Luma == "Fast" || Luma == "Medium"
    AIUL2 =  AIUL1 || Luma == "VDSR" || Luma == "HQ" || Luma == "HQ Sharp"
    AIUC1 = Chroma == "Fast" || Chroma == "Medium"
    AIUC2 = AIUC1 || Chroma == "VDSR" || Chroma == "HQ" || Chroma == "HQ Sharp"
    FMCR = CResample == "Fast" || CResample == "Medium"
    HQCR = CResample == "HQ" || CResample == "HQ Sharp"
    AIUCR = FMCR || HQCR || CResample == "VDSR"
    AVSC = Chroma == "Bilinear" || Chroma == "Bicubic" || Chroma == "Blackman" || Chroma == "Gauss" || Chroma == "Lanczos" || Chroma == "Lanczos4" || Chroma == "Point" || Chroma == "Spline16" || Chroma == "Spline36" || Chroma == "Spline64" || Chroma == "Sinc"
    AVSCR = CResample == "Bilinear" || CResample == "Bicubic" || CResample == "Blackman" || CResample == "Gauss" || CResample == "Lanczos" || CResample == "Lanczos4" || CResample == "Point" || CResample == "Spline16" || CResample == "Spline36" || CResample == "Spline64" || CResample == "Sinc"

    Assert(Input.BitsPerComponent != 32 && !Input.IsYV411, "Unsupported color format")
    Assert(Mode == "Photo" || Mode == "Illustration", "Invalid Mode")
    Assert(Factor >= 1 && Factor <= 4, "Factor must be between 1 and 4")
    Assert(Factor != 1 || CResample != "", "Undefined CResample")
    Assert(Double >= 0 && Double <= 3, "Double must be between 0 and 3")
    Assert(Double == 0 || Factor == 2, "Double is only for 2x")
    Assert(Double < 2 || MPYUV, "Chroma Double is only for multi-plane YUV")
    Assert(Double % 2 == 0 || AIUL1, "Luma Double is only for Fast or Medium")
    Assert(Double < 2 || AIUC1, "Chroma Double is only for Fast or Medium")
    Assert(Width == 0 || !(AIUL1 || AIUC1), "Widh is not allowed for Fast or Medium")
    Assert(Height == 0 || !(AIUL1 || AIUC1), "Height is not allowed for Fast or Medium")
    Assert(!(Width == 0 && Height != 0) && !(Width != 0 && Height == 0), "Invalids Width and/or Height")
    Assert(Width == 0 || (WFactor >= 1.0 && WFactor <= 4.0), "Invalid Width")
    Assert(Height == 0 || (HFactor >= 1.0 && HFactor <= 4.0), "Invalid Height")
    Assert(Width == 0 || (Luma == "VDSR" && (Chroma == "VDSR" || AVSC)) || WFactor >= 2.0, "Invalid Width")
    Assert(Height == 0 || (Luma == "VDSR" && (Chroma == "VDSR" || AVSC)) || HFactor >= 2.0, "Invalid Height")
    Assert(Width % 2 == 0 || !(Input.Is420 || Input.Is422 || Input.IsYUY2) || CResample != "", "Width must be Mod 2 for 4:2:0 or 4:2:2")
    Assert(Height % 2 == 0 || !Input.Is420 || CResample != "", "Height must be Mod 2 for 4:2:0")
    Assert(AIUL2, "Invalid Luma mode")
    Assert(AIUC2 || AVSC || Chroma == "KrigBilateral", "Invalid Chroma mode")
    Assert(Chroma != "KrigBilateral" || (Input.Is420 || Input.Is444), "KrigBilateral Chroma upscaling is only for YUV 4:2:0 or 4:4:4")
    Assert(Chroma != "KrigBilateral" || (Width == 0 && Factor == 2 && Double == 0) || (Width != 0 && WFactor == 2.0 && HFactor == 2.0), "Upscale ratio must be 2 for KrigBilateral Chroma upscaling")
    Assert(CResample == ""  || AIUCR || AVSCR || CResample == "KrigBilateral", "Invalid CResample mode")
    Assert(Cresample == "" || Input.Is420 || Input.Is422 || Input.IsYUY2, "CResample is only for subsampled formats")
    Assert(!AIUCR || !(Input.Is422 || Input.IsYUY2), "Invalid CResample for 4:2:2")
    Assert(CPlace == "MPEG1" || CPlace == "MPEG2" || CPlace == "DV", "CPlace must be MPEG1, MPEG2 or DV")
    Assert(CPlace == "MPEG2" || Input.Is420, "Invalid CPlace")
    Assert(OutDepth == 8 || OutDepth == 10 || OutDepth == 12 || OutDepth == 14 || OutDepth == 16, "Invalid OutDepth")

    AFactor = Double != 0 ? 4 : Factor
    Alpha = Input.HasAlpha ? Width == 0 ? LanczosResize(ConvertBits(ExtractA(Input), OutDepth), Input.Width * AFactor, Input.Height * AFactor) : LanczosResize(ConvertBits(ExtractA(Input), OutDepth), Width, Height) : 0
    YUY2 = Input.IsYUY2
    Packed = Input.IsPackedRGB
    Input = YUY2 ? ConvertToYV16(Input) : Input
    Input = RemoveAlphaPlane(Input)
    Input = Packed ? ConvertToPlanarRGB(Input) : Input
    Input = Input.BitsPerComponent > 8 ? ConvertBits(Input, 16) : Input
    Input = Input.Is420 && CPlace == "DV" ? ConvertToYUV420(Input, ChromaInPlacement = "DV", ChromaOutPlacement = "MPEG2", chromaresample = "Sinc") : Input
    CPlace = CPlace == "DV" ? "MPEG2" : CPlace 
    LFactor = Double == 2 ? 4 : Factor
    CFactor = Double == 1 ? 4 : Factor
    OFactor = Double == 0 ? Factor : 4
    Lim = Double % 2 == 1 ? 1 : 0
    CLim = Double > 1 ? 1 : 0
    SWidth = Double == 2 ? Input.Width * 4 : Width == 0 ? Input.Width * Factor : Width
    SHeight = Double == 2 ? Input.Height * 4 : Height == 0 ? Input.Height * Factor : Height
    CRU = (Chroma == CResample) && !(Chroma == "Medium" && Double > 1)
    Global Fmt = Factor == 1  || (FMCR && CRU) ? "YUV444P" + String(OutDepth) : "YUV444P16"
    Global OutPrec = (Factor == 1  || (FMCR && CRU)) && OutDepth == 8 ? 1 : 2
    MPEG1 = CPlace == "MPEG1"
    MPEG2 = Input.Is420 && CPlace == "MPEG2"
    CROffset = (Input.Is422 || MPEG2) ? 0.5 : 0.0
    COffset = (Input.Is422 || MPEG2) ? OFactor * 0.5 : 0.0

    Global Path = "Shaders\"
    PathAIU = Path + Mode + "\"
    If (AIUL1 || (Luma == "VDSR" && Width == 0)) {
        Path2 = PathAIU + Luma + "\" + string(LFactor) + "x\"
    } else {
        Path2 = Luma == "VDSR" ? PathAIU + "VDSR\" : Luma == "HQ" ? PathAIU + "HQ2\Normal\" : PathAIU + "HQ2\Sharp\"
        If (Width == 0) {
            Path1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : Luma == "HQ" ? PathAIU + "HQ1\Normal\" : Factor == 2 ? PathAIU + "HQ1\Sharp\" : Factor == 3 ? PathAIU + "Medium\2x\" : PathAIU + "HQ1\Normal\"
            Path2 = Path2 + string(LFactor) + "x\"
        } else if (sqrt(WFactor * HFactor) <= 1.75) {
            Path2 = Path2 + "1.5x\"
            CPath2 = PathAIU + "VDSR\1.5x\"
        } else if (sqrt(WFactor * HFactor) <= 2.25) {
            Path1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : Luma == "HQ" ? PathAIU + "HQ1\Normal\" : PathAIU + "HQ1\Sharp\"
            Path2 = Path2 + "2x\"
            CPath1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : Chroma == "HQ" ? PathAIU + "HQ1\Normal\" : PathAIU + "HQ1\Sharp\"
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\2x\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\2x\" : PathAIU + "HQ2\Sharp\2x\"
        } else if (sqrt(WFactor * HFactor) <= 2.75) {
            Path1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : Luma == "HQ" ? PathAIU + "HQ1\Normal\" : PathAIU + "HQ1\Sharp\"
            Path2 = Path2 + "2.5x\"
            CPath1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : Chroma == "HQ" ? PathAIU + "HQ1\Normal\" : PathAIU + "HQ1\Sharp\"
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\2.5x\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\2.5x\" : PathAIU + "HQ2\Sharp\2.5x\"
        } else if (sqrt(WFactor * HFactor) <= 3.25) {
            Path1 = Luma == "HQ" && Mode == "Photo" ? PathAIU + "HQ1\Normal\" : PathAIU + "Medium\2x\"
            Path2 = Path2 + "3x\"
            CPath1 = Chroma == "HQ" && Mode == "Photo" ? PathAIU + "HQ1\Normal\" : PathAIU + "Medium\2x\"
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\3x\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\3x\" : PathAIU + "HQ2\Sharp\3x\"
        } else if (sqrt(WFactor * HFactor) <= 3.75) {
            Path1 = Luma == "HQ" && Mode == "Photo" ? PathAIU + "HQ1\Normal\" : PathAIU + "Medium\2x\"
            Path2 = Path2 + "3.5x\"
            CPath1 = Chroma == "HQ" && Mode == "Photo" ? PathAIU + "HQ1\Normal\" : PathAIU + "Medium\2x\"
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\3.5x\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\3.5x\" : PathAIU + "HQ2\Sharp\3.5x\"
        } else {
            Path1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : PathAIU + "HQ1\Normal\"
            Path2 = Path2 + "4x\"
            CPath1 = Path1
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\4x\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\4x\" : PathAIU + "HQ2\Sharp\4x\"
        }
    }
    
    If (AVSCR) {  
        Input = Input.Is420 ? ConvertToYUV444(Input, ChromaInPlacement = CPlace, ChromaResample = CResample) : ConvertToYUV444(Input, ChromaResample = CResample)
        Input = Factor == 1 ? ConvertBits(Input, OutDepth) : Input
    } else if (Cresample == "KrigBilateral") {
        Input = KrigBilateral(Input, CROffset)
    } else if (CResample == "VDSR") {
        U = AIUVDSR(ExtractU(Input), Input.Width, Input.Height, PathAIU + "VDSR\2x\")
        U = SincResize(U, U.Width, U.Height, CROffset)
        V = AIUVDSR(ExtractV(Input), Input.Width, Input.Height, PathAIU + "VDSR\2x\")
        V = SincResize(V, V.Width, V.Height, CROffset)
        Input = CombinePlanes(ConvertBits(ExtractY(Input), U.BitsPerComponent), U, V, "YUV", "YYY", Fmt)
    } else if (HQCR) {
        CRPath1 = Mode == "Illustration" ? PathAIU + "Medium\2x\" : CResample == "HQ" ? PathAIU + "HQ1\Normal\" : PathAIU + "HQ1\Sharp\"
        CRPath2 = CResample == "HQ" ? PathAIU + "HQ2\Normal\2x\" : PathAIU + "HQ2\Sharp\2x\"
        U = AIUMedium(ExtractU(Input), 2, 0, Input.Width, Input.Height, CRPath1, CRPath2, True, True)
        U = SincResize(U, U.Width, U.Height, CROffset)
        V = AIUMedium(ExtractV(Input), 2, 0, Input.Width, Input.Height, CRPath1, CRPath2, True, True)
        V = SincResize(V, V.Width, V.Height, CROffset)
        Input = CombinePlanes(ConvertBits(ExtractY(Input), U.BitsPerComponent), U, V, "YUV", "YYY", Fmt)
    } else if (FMCR) {
        If  (Factor != 1 && CRU) {
            CRFactor = CFactor
            CRLim = Double > 1 ? 2 : 1
            If (Luma == "Fast") {
                Y = AIUFast(Input, LFactor, Lim, "", Path2, False)
            } else if (Luma == "Medium") {
                Y = AIUMedium(Input, LFactor, Lim, 0, 0, "", Path2, False, False)
            } else if (Luma == "VDSR") {
                Y = AIUVDSR(Input, SWidth, SHeight, Path2)
            } else {
                Y = AIUMedium(Input, 2, 0, SWidth, SHeight, Path1, Path2, False, True)
            }
        } else {
            CRFactor = 2
            CRLim = 0
            Y = ExtractY(Input)
        }
        CRPath1 = PathAIU + CResample + "\2x\"
        CRPath2 = Double == 0 ? PathAIU + Chroma + "\" + string(Factor) + "x\" : Double == 1 ? PathAIU + Chroma + "\4x\" : PathAIU + Chroma + "\2x\"
        If (CResample == "Fast") {
            U = AIUFast(ExtractU(Input), CRFactor, CRLim, CRPath1, CRPath2, True)
            U = SincResize(U, U.Width, U.Height, CRLim == 0 ? CROffset : COffset)
            V = AIUFast(ExtractV(Input), CRFactor, CRLim, CRPath1, CRPath2, True)
            V = SincResize(V, V.Width, V.Height, CRLim == 0 ? CROffset : COffset)
            Input = CombinePlanes(ConvertBits(Y, U.BitsPerComponent), U, V, "YUV", "YYY", Fmt)
        } else {
            U = AIUMedium(ExtractU(Input), CRFactor, CRLim, 0, 0, CRPath1, CRPath2, True, False)
            U = SincResize(U, U.Width, U.Height, CRLim == 0 ? CROffset : COffset)
            V = AIUMedium(ExtractV(Input), CRFactor, CRLim, 0, 0, CRPath1, CRPath2, True, False)
            V = SincResize(V, V.Width, V.Height, CRLim == 0 ? CROffset : COffset)
            Input = CombinePlanes(ConvertBits(Y, U.BitsPerComponent), U, V, "YUV", "YYY", Fmt)
        }
    } else {
        NOP()
    }
    
    If (Factor == 1 || (FMCR && CRU)) {
        return IsClip(Alpha) ? AddAlphaPlane(Input, Alpha) : Input
    }

    Global Fmt = !(Chroma == "KrigBilateral" && Input.Is444) ? "YUV444P" + String(OutDepth) : "YUV444P16"
    Global OutPrec = !(Chroma == "KrigBilateral" && Input.Is444) && OutDepth == 8 ? 1 : 2
    OFactor = Width == 0 ? OFactor : WFactor
    COffset = MPEG1 || Input.Is444 ? 0.0 : 0.25 * (1.0 - 1.0 / OFactor)
    
    If (Input.IsRGB) {
        If (Luma == "Fast") {
            P0 = AIUFast(ExtractR(Input), LFactor, Lim, "", Path2, False)
            P1 = AIUFast(ExtractG(Input), LFactor, Lim, "", Path2, False)
            P2 = AIUFast(ExtractB(Input), LFactor, Lim, "", Path2, False)
        } else if (Luma == "Medium") {
            P0 = AIUMedium(ExtractR(Input), LFactor, Lim, 0, 0, "", Path2, False, False)
            P1 = AIUMedium(ExtractG(Input), LFactor, Lim, 0, 0, "", Path2, False, False)
            P2 = AIUMedium(ExtractB(Input), LFactor, Lim, 0, 0, "", Path2, False, False)
        } else if (Luma == "VDSR") {
            P0 = AIUVDSR(ExtractR(Input), SWidth, SHeight, Path2)
            P1 = AIUVDSR(ExtractG(Input), SWidth, SHeight, Path2)
            P2 = AIUVDSR(ExtractB(Input), SWidth, SHeight, Path2)
        } else {
            P0 = AIUMedium(ExtractR(Input), 2, 0, SWidth, SHeight, Path1, Path2, False, True)
            P1 = AIUMedium(ExtractG(Input), 2, 0, SWidth, SHeight, Path1, Path2, False, True)
            P2 = AIUMedium(ExtractB(Input), 2, 0, SWidth, SHeight, Path1, Path2, False, True)
        }
    } else {
        If (Luma == "Fast") {
            P0 = AIUFast(Input, LFactor, Lim, "", Path2, False)
        } else if (Luma == "Medium") {
            P0 = AIUMedium(Input, LFactor, Lim, 0, 0, "", Path2, False, False)
        } else if (Luma == "VDSR") {
            P0 = AIUVDSR(Input, SWidth, SHeight, Path2)
        } else {
            P0 = AIUMedium(Input, 2, 0, SWidth, SHeight, Path1, Path2, False, True)
        }
    }

    Global Fmt = "YUV444P" + String(OutDepth)
    Global OutPrec = OutDepth == 8 ? 1 : OutPrec
    TInput = ConvertBits(Input, OutDepth)
    If (MPYUV) {
        CWidth = Double == 1 ? Input.Width * 4 : Width == 0 ? Input.Width * Factor : Width
        CWidth = Input.Is444 ? CWidth : CWidth / 2
        CHeight = Double == 1 ? Input.Height * 4 : Height == 0 ? Input.Height * Factor : Height
        CHeight = Input.Is420 ? CHeight / 2 : CHeight
        If (Chroma == "Fast" || Chroma == "Medium" || (Chroma == "VDSR" && Width == 0)) {
            CPath2 = PathAIU + Chroma + "\" + string(CFactor) + "x\"
        } else if (Width == 0) {
            CPath1 = Mode == "Illustration" || (Chroma == "HQ Sharp" && CFactor == 3) ? PathAIU + "Medium\2x\" : Chroma == "HQ Sharp" && CFactor == 2 ? PathAIU + "HQ1\Sharp\" : PathAIU + "HQ1\Normal\"
            CPath2 = Chroma == "VDSR" ? PathAIU + "VDSR\" : Chroma == "HQ" ? PathAIU + "HQ2\Normal\" : PathAIU + "HQ2\Sharp\"
            CPath2 = CPath2 + string(CFactor) + "x\"
        } else {
            NOP()
        }
        If (AVSC) {
            P1 = Eval(Chroma + "Resize(ExtractU(TInput), CWidth, CHeight, COffset)")
            P2 = Eval(Chroma + "Resize(ExtractV(TInput), CWidth, CHeight, COffset)")
        } else if (Chroma == "Fast") {
            P1 = AIUFast(ExtractU(Input), CFactor, CLim, "", CPath2, False)
            P1 = SincResize(P1, P1.Width, P1.Height, COffset * OFactor)
            P2 = AIUFast(ExtractV(Input), CFactor, CLim, "", CPath2, False)
            P2 = SincResize(P2, P2.Width, P2.Height, COffset * OFactor)
        } else if (Chroma == "Medium") {
            P1 = AIUMedium(ExtractU(Input), CFactor, CLim, 0, 0, "", CPath2, False, False)
            P1 = SincResize(P1, P1.Width, P1.Height, COffset * OFactor)
            P2 = AIUMedium(ExtractV(Input), CFactor, CLim, 0, 0, "", CPath2, False, False)
            P2 = SincResize(P2, P2.Width, P2.Height, COffset * OFactor)
        } else if (Chroma == "VDSR") {
            P1 = AIUVDSR(ExtractU(Input), CWidth, CHeight, CPath2)
            P1 = SincResize(P1, P1.Width, P1.Height, COffset * OFactor)
            P2 = AIUVDSR(ExtractV(Input), CWidth, CHeight, CPath2)
            P2 = SincResize(P2, P2.Width, P2.Height, COffset * OFactor)
        } else if (Chroma != "KrigBilateral") {
            P1 = AIUMedium(ExtractU(Input), 2, CLim, CWidth, CHeight, CPath1, CPath2, False, True)
            P1 = SincResize(P1, P1.Width, P1.Height, COffset * OFactor)
            P2 = AIUMedium(ExtractV(Input), 2, CLim, CWidth, CHeight, CPath1, CPath2, False, True)
            P2 = SincResize(P2, P2.Width, P2.Height, COffset * OFactor)
        } else {
            T = Input.Is420 ? KrigBilateral(Input, Coffset * 2.0) : KrigBilateral(CombinePlanes(P0, ConvertBits(ExtractU(Input), 16), ConvertBits(ExtractV(Input), 16), "YUV", "YYY", "YUV420P16"), 0.0)
            P0 = ConvertBits(P0, OutDepth)
            P1 = ExtractU(T)
            P2 = ExtractV(T)
        }
    }

    Input = Input.IsY ? P0 : CombinePlanes(P0, P1, P2, Input.IsYUV ? "YUV" : "RGB", "YYY", TInput.PixelType)
    Input = YUY2 && OutDepth == 8 && CResample == "" ? ConvertToYUY2(Input) : Packed ? OutDepth == 8 ? ConvertToRGB24(Input) : OutDepth == 16 ? ConvertToRGB48(Input) : Input : Input
    return IsClip(Alpha) ? AddAlphaPlane(Input, Alpha) : Input
}

Function AIUFast(clip c, int Factor, int Lim, string Path1, string Path2, bool CR)
{
    W = c.Width
    H = c.Height
    c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
    InPrec = c.BitsPerComponent == 16 ? 2 : 0
    cc = ConvertToShader(c, Precision = InPrec)
    cc
    For (i = Lim, 0, -1) {
        CR = CR && i == Lim
        x3 = Factor > 2 && i == 0
        x4 = Factor == 4 && i == 0
        SPath = CR ? Path1 : Path2
        Shader(SPath + "feature_1.cso", output = 2, Width = W, Height = H)
        Shader(SPath + "feature_2.cso", output = 3, Width = W, Height = H)
        Shader(SPath + "feature_3.cso", output = 4, Width = W, Height = H)
        Shader(SPath + "mapping_1_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_1_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_1_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 8, Width = W, Height = H)
        Shader(SPath + "mapping_2_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 9, Width = W, Height = H)
        Shader(SPath + "mapping_2_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 10, Width = W, Height = H)
        Shader(SPath + "mapping_2_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 11, Width = W, Height = H)
        Shader(SPath + "mapping_3_1.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_3_2.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_3_3.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, output = 8, Width = W, Height = H)
        Shader(SPath + "mapping_4_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 9, Width = W, Height = H)
        Shader(SPath + "mapping_4_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 10, Width = W, Height = H)
        Shader(SPath + "mapping_4_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 11, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_1.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, Clip4 = 2, output = 6, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_2.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, Clip4 = 3, output = 7, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_3.cso", Clip1 = 9, Clip2 = 10, Clip3 = 11, Clip4 = 4, output = 8, Width = W, Height = H)
        Shader(SPath + "sub-pixel_convolution_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 2, Width = W, Height = H)
        x3 ? Shader(SPath + "sub-pixel_convolution_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 3, Width = W, Height = H) : last
        x3 ? Shader(SPath + "sub-pixel_convolution_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 4, Width = W, Height = H) : last
        x4 ? Shader(SPath + "sub-pixel_convolution_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, output = 5, Width = W, Height = H) : last
        W = CR ? W * 2 : W * Factor
        H = CR ? H * 2 : H * Factor
        Shader(SPath + "aggregation.cso", Clip1 = 2, Clip2 = x3 ? 3 : 0, Clip3 = x3 ? 4 : 0, Clip4 = x4 ? 5 : 0, Width = W, Height = H)
    }
    ExecuteShader(last, cc, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = True)
    ConvertFromShader(Precision = OutPrec, Format = Fmt)
    ExtractY()
}

Function AIUMedium(clip c, int Factor, int Lim, int Width, int Height, string Path1, string Path2, bool CR, bool HQ)
{
    W = c.Width
    H = c.Height
    c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
    InPrec = c.BitsPerComponent == 16 ? 2 : 0
    cc = ConvertToShader(c, Precision = InPrec)
    cc
    For (i = Lim, 0, -1) {
        CR = CR && i == Lim
        x3 = Factor > 2 && i == 0
        x4 = Factor == 4 && i == 0
        SPath = CR || HQ ? Path1 : Path2
        Shader(SPath + "feature_1.cso", output = 2, Width = W, Height = H)
        Shader(SPath + "feature_2.cso", output = 3, Width = W, Height = H)
        Shader(SPath + "feature_3.cso", output = 4, Width = W, Height = H)
        Shader(SPath + "feature_4.cso", output = 5, Width = W, Height = H)
        Shader(SPath + "feature_5.cso", output = 6, Width = W, Height = H)
        Shader(SPath + "feature_6.cso", output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_1_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 8, Width = W, Height = H)
        Shader(SPath + "mapping_1_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 9, Width = W, Height = H)
        Shader(SPath + "mapping_1_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 10, Width = W, Height = H)
        Shader(SPath + "mapping_1_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 11, Width = W, Height = H)
        Shader(SPath + "mapping_1_5.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 12, Width = W, Height = H)
        Shader(SPath + "mapping_1_6.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 13, Width = W, Height = H)
        Shader(SPath + "mapping_2_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 14, Width = W, Height = H)
        Shader(SPath + "mapping_2_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 15, Width = W, Height = H)
        Shader(SPath + "mapping_2_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 16, Width = W, Height = H)
        Shader(SPath + "mapping_2_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 17, Width = W, Height = H)
        Shader(SPath + "mapping_2_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 18, Width = W, Height = H)
        Shader(SPath + "mapping_2_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 19, Width = W, Height = H)
        Shader(SPath + "mapping_3_1.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 8, Width = W, Height = H)
        Shader(SPath + "mapping_3_2.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 9, Width = W, Height = H)
        Shader(SPath + "mapping_3_3.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 10, Width = W, Height = H)
        Shader(SPath + "mapping_3_4.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 11, Width = W, Height = H)
        Shader(SPath + "mapping_3_5.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 12, Width = W, Height = H)
        Shader(SPath + "mapping_3_6.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 13, Width = W, Height = H)
        Shader(SPath + "mapping_4_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 14, Width = W, Height = H)
        Shader(SPath + "mapping_4_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 15, Width = W, Height = H)
        Shader(SPath + "mapping_4_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 16, Width = W, Height = H)
        Shader(SPath + "mapping_4_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 17, Width = W, Height = H)
        Shader(SPath + "mapping_4_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 18, Width = W, Height = H)
        Shader(SPath + "mapping_4_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 19, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_1.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 2, output = 8, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_2.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 3, output = 9, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_3.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 4, output = 10, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_4.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 5, output = 11, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_5.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 6, output = 12, Width = W, Height = H)
        Shader(SPath + "sub-band_residuals_6.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, Clip7 = 7, output = 13, Width = W, Height = H)
        Shader(SPath + "sub-pixel_convolution_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 2, Width = W, Height = H)
        x3 ? Shader(SPath + "sub-pixel_convolution_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 3, Width = W, Height = H) : last
        x3 ? Shader(SPath + "sub-pixel_convolution_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 4, Width = W, Height = H) : last
        x4 ? Shader(SPath + "sub-pixel_convolution_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 5, Width = W, Height = H) : last
        W = CR ? W * 2 : W * Factor
        H = CR ? H * 2 : H * Factor
        Shader(SPath + "aggregation.cso", Clip1 = 2, Clip2 = x3 ? 3 : 0, Clip3 = x3 ? 4 : 0, Clip4 = x4 ? 5 : 0, Width = W, Height = H)
    }
    HQ ? AIUHQ(last, Width, Height, Path2, CreateParamFloat4(W, H), Width > W || Height > H ? True : False) : last
    ExecuteShader(last, cc, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = x3 && Lim == 1 ? False : True)
    ConvertFromShader(Precision = OutPrec, Format = Fmt)
    ExtractY()
}

Function AIUVDSR(clip c, int W, int H, string SPath)
{
    c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
    InPrec = c.BitsPerComponent == 16 ? 2 : 0
    Size = CreateParamFloat4(c.Width, c.Height)
    clip = ConvertToShader(c, Precision = InPrec)
    Shader(clip, Path + "Lanczos3\Lanczos3.cso", Param2 = Size, Width = W, Height = H)
    Shader(SPath + "feature_1.cso", output = 2)
    Shader(SPath + "feature_2.cso", output = 3)
    Shader(SPath + "feature_3.cso", output = 4)
    Shader(SPath + "feature_4.cso", output = 5)
    Shader(SPath + "mapping_1_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_1_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_1_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_1_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_2_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_2_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_2_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_2_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_3_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_3_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_3_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_3_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_4_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_4_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_4_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_4_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_5_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_5_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_5_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_5_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_6_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_6_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_6_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_6_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_7_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_7_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_7_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_7_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_8_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_8_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_8_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_8_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_9_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_9_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_9_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_9_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_10_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_10_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_10_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_10_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_11_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_11_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_11_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_11_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_12_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_12_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_12_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_12_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "mapping_13_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6)
    Shader(SPath + "mapping_13_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7)
    Shader(SPath + "mapping_13_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8)
    Shader(SPath + "mapping_13_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9)
    Shader(SPath + "mapping_14_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2)
    Shader(SPath + "mapping_14_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3)
    Shader(SPath + "mapping_14_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4)
    Shader(SPath + "mapping_14_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5)
    Shader(SPath + "reconstruction.cso", Clip1 = 1, Clip2 = 2, Clip3 = 3, Clip4 = 4, Clip5 = 5)
    ExecuteShader(last, clip, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = True)
    ConvertFromShader(Precision = OutPrec, Format = Fmt)
    ExtractY()
}

function AIUHQ(clip c, int Width, int Height, string SPath, string Size, bool UPS)
{
    UPS ? Shader(c, Path + "Lanczos3\Lanczos3.cso", Param2 = Size, Width = Width, Height = Height) : c
    Shader(SPath + "feature_1.cso", output = 2, Width = Width, Height = Height)
    Shader(SPath + "feature_2.cso", output = 3, Width = Width, Height = Height)
    Shader(SPath + "feature_3.cso", output = 4, Width = Width, Height = Height)
    Shader(SPath + "feature_4.cso", output = 5, Width = Width, Height = Height)
    Shader(SPath + "mapping_1_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6, Width = Width, Height = Height)
    Shader(SPath + "mapping_1_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7, Width = Width, Height = Height)
    Shader(SPath + "mapping_1_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8, Width = Width, Height = Height)
    Shader(SPath + "mapping_1_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9, Width = Width, Height = Height)
    Shader(SPath + "mapping_2_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2, Width = Width, Height = Height)
    Shader(SPath + "mapping_2_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3, Width = Width, Height = Height)
    Shader(SPath + "mapping_2_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4, Width = Width, Height = Height)
    Shader(SPath + "mapping_2_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5, Width = Width, Height = Height)
    Shader(SPath + "mapping_3_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6, Width = Width, Height = Height)
    Shader(SPath + "mapping_3_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7, Width = Width, Height = Height)
    Shader(SPath + "mapping_3_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8, Width = Width, Height = Height)
    Shader(SPath + "mapping_3_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9, Width = Width, Height = Height)
    Shader(SPath + "mapping_4_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2, Width = Width, Height = Height)
    Shader(SPath + "mapping_4_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3, Width = Width, Height = Height)
    Shader(SPath + "mapping_4_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4, Width = Width, Height = Height)
    Shader(SPath + "mapping_4_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5, Width = Width, Height = Height)
    Shader(SPath + "mapping_5_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6, Width = Width, Height = Height)
    Shader(SPath + "mapping_5_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7, Width = Width, Height = Height)
    Shader(SPath + "mapping_5_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8, Width = Width, Height = Height)
    Shader(SPath + "mapping_5_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9, Width = Width, Height = Height)
    Shader(SPath + "mapping_6_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2, Width = Width, Height = Height)
    Shader(SPath + "mapping_6_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3, Width = Width, Height = Height)
    Shader(SPath + "mapping_6_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4, Width = Width, Height = Height)
    Shader(SPath + "mapping_6_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5, Width = Width, Height = Height)
    Shader(SPath + "mapping_7_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 6, Width = Width, Height = Height)
    Shader(SPath + "mapping_7_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 7, Width = Width, Height = Height)
    Shader(SPath + "mapping_7_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 8, Width = Width, Height = Height)
    Shader(SPath + "mapping_7_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, output = 9, Width = Width, Height = Height)
    Shader(SPath + "mapping_8_1.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 2, Width = Width, Height = Height)
    Shader(SPath + "mapping_8_2.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 3, Width = Width, Height = Height)
    Shader(SPath + "mapping_8_3.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 4, Width = Width, Height = Height)
    Shader(SPath + "mapping_8_4.cso", Clip1 = 6, Clip2 = 7, Clip3 = 8, Clip4 = 9, output = 5, Width = Width, Height = Height)
    Shader(SPath + "reconstruction.cso", Clip1 = 1, Clip2 = 2, Clip3 = 3, Clip4 = 4, Clip5 = 5, Width = Width, Height = Height)
}

Function KrigBilateral(clip c, float Offset) {
    Offset = String(Offset * 0.5, "%.32f") + "f"
    InPrec = c.BitsPerComponent == 16 ? 2 : 1
    SPath = Path + "KrigBilateral\"
    Chroma = CombinePlanes(ExtractU(c), ExtractV(c), "YUV", "YYY", InPrec == 1 ? "YUV444P8" : "YUV444P16")
    LumaSize = CreateParamFloat4(c.width, c.Height)
    ChromaSize = CreateParamFloat4(Chroma.width, Chroma.Height)
    Y = ConvertToShader(c, Precision = InPrec)
    UV = ConvertToShader(Chroma, Precision = InPrec)
    Shader(Y, SPath + "LumaDownscalerI.cso", Param2 = LumaSize, Param3 = ChromaSize, Clip1 = 2, Output = 3, Width = c.Width, Height = Chroma.Height)
    Shader(SPath + "LumaDownscalerII.cso", Param2 = LumaSize, Param3 = ChromaSize, Clip1 = 3, Output = 3, Width = Chroma.Width, Height = Chroma.Height)
    Shader(SPath + "KrigBilateral.cso", Param2 = ChromaSize, Param3 = Offset, Clip1 = 1, Clip2 = 2, Clip3 = 3, Width = c.Width, Height = c.Height)
    ExecuteShader(last, Clip1 = UV, Clip2 = Y, Clip1Precision = InPrec, Clip2Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = True)
    ConvertFromShader(Precision = OutPrec, Format = Fmt)
    return CombinePlanes(ConvertBits(ExtractY(c), last.BitsPerComponent), ExtractY(last), ExtractU(last), "YUV", "YYY", Fmt)
}
