/*

    ***** AviSynth AiUpscale v1.2.0 *****
    by Alexkral

    A script to test some Super-resolution convolutional neural networks implemented as HLSL pixel shaders, through AviSynth Shader.
    https://github.com/Alexkral/AviSynthAiUpscale
    https://forum.doom9.org/showthread.php?t=181665

    ----- Requirements -----

    AviSynth+
    AviSynth Shader

    ----- Installation -----

    Copy this file and the shaders folder to the AviSynth+ plugins folder.

    ----- Usage -----

    AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", string "Mode", string "CPlace", int "OutDepth")

    - Input: (Default = last). Input image or progressive video in any AviSynth+ color format except YV411 and 32 bit float. Alpha planes are upscaled with Lanczos.
    - Factor: (Default = 2). Upscaling factor (1, 2, 3 or 4). 1 is for chroma resampling.
    - Luma: (Default = “Medium”). Model for luma or RGB upscaling. Must be an AiUpscale model (“Fast”, “Fast Sharp”, “Medium”, “Medium Sharp”, “HQ” or “HQ Sharp”).
    - Chroma: (Default = “Lanczos”). Method for chroma upscaling. Can be an AiUpscale model, KrigBilateral (only for 4:2:0 or 4:4:4 and Factor = 2), or any AviSynth resize method.
    - CResample: (Default = “”). Method for chroma resampling. Can be an AiUpscale model (only for 4:2:0), KrigBilateral, any AviSynth method, or an empty string which means that the chroma is not resampled.
    - Mode: (default = “Photo”). Can be “Photo” for anything that comes from a camera, or “LineArt” for artwork, drawings, etc.
    - CPlace: (Default = “MPEG2”). Chroma placement when the source is YV12. Same as ChromaInPlacement in AviSynth Convert. This affects correct chroma positioning, most of the time it shouldn’t be changed. Can also be “MPEG1” and “DV”.
    - OutDepth: (Default = same as input). Output bit depth (8, 10, 12, 14 or 16).
    
*/

Function AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", string "Mode", string "CPlace", int "OutDepth")
{
    Factor = default(Factor, 2)
    Global Factor = Factor
    Luma = default(Luma, "Medium")
    Chroma = default(Chroma, "Lanczos") 
    CResample = default(CResample, "")
    Mode = default(Mode, "Photo")
    CPlace = default(CPlace, "MPEG2")
    OutDepth = default(OutDepth, Input.BitsPerComponent)
   
    MPYUV = !(Input.IsY || Input.IsRGB)
    AIULF = Luma == "Fast" || Luma == "Fast Sharp"
    AIULM = Luma == "Medium" || Luma == "Medium Sharp" 
    AIULHQ = Luma == "HQ" || Luma == "HQ Sharp"
    AIUL = AIULF || AIULM || AIULHQ
    AIUCF = Chroma == "Fast" || Chroma == "Fast Sharp"
    AIUCM = Chroma == "Medium" || Chroma == "Medium Sharp"
    AIUCHQ = Chroma == "HQ" || Chroma == "HQ Sharp"
    AIUC = AIUCF || AIUCM || AIUCHQ
    AIUCRF = CResample == "Fast" || CResample == "Fast Sharp"
    AIUCRM = CResample == "Medium" || CResample == "Medium Sharp"
    AIUCRHQ = CResample == "HQ" || CResample == "HQ Sharp"
    AIUCR = AIUCRF || AIUCRM || AIUCRHQ
    AVSC = Chroma == "Bilinear" || Chroma == "Bicubic" || Chroma == "Blackman" || Chroma == "Gauss" || Chroma == "Lanczos" || Chroma == "Lanczos4" || Chroma == "Point" || Chroma == "Spline16" || Chroma == "Spline36" || Chroma == "Spline64" || Chroma == "Sinc"
    AVSCR = CResample == "Bilinear" || CResample == "Bicubic" || CResample == "Blackman" || CResample == "Gauss" || CResample == "Lanczos" || CResample == "Lanczos4" || CResample == "Point" || CResample == "Spline16" || CResample == "Spline36" || CResample == "Spline64" || CResample == "Sinc"

    Assert(Input.BitsPerComponent != 32 && !Input.IsYV411, "Unsupported color format")
    Assert(Mode == "Photo" || Mode == "LineArt", "Invalid Mode")
    Assert(Factor >= 1 && Factor <= 4, "Factor must be between 1 and 4")
    Assert(Factor != 1 || CResample != "", "Undefined CResample")
    Assert(AIUL, "Invalid Luma mode")
    Assert(AIUC || AVSC || Chroma == "KrigBilateral", "Invalid Chroma mode")
    Assert(Chroma != "KrigBilateral" || (Input.Is420 || Input.Is444), "KrigBilateral Chroma upscaling is only for YUV 4:2:0 or 4:4:4")
    Assert(Chroma != "KrigBilateral" || Factor == 2,"Factor must be 2 for KrigBilateral Chroma upscaling")
    Assert(CResample == ""  || AIUCR || AVSCR || CResample == "KrigBilateral", "Invalid CResample mode")
    Assert(Cresample == "" || Input.Is420 || Input.Is422 || Input.IsYUY2, "CResample is only for subsampled formats")
    Assert(!AIUCR || !(Input.Is422 || Input.IsYUY2), "Invalid CResample for 4:2:2")
    Assert(CPlace == "MPEG1" || CPlace == "MPEG2" || CPlace == "DV", "CPlace must be MPEG1, MPEG2 or DV")
    Assert(CPlace == "MPEG2" || Input.Is420, "Invalid CPlace")
    Assert(OutDepth == 8 || OutDepth == 10 || OutDepth == 12 || OutDepth == 14 || OutDepth == 16, "Invalid OutDepth")

    Alpha = Input.HasAlpha ? LanczosResize(ConvertBits(ExtractA(Input), OutDepth), Input.Width * Factor, Input.Height * Factor) : 0
    YUY2 = Input.IsYUY2
    Packed = Input.IsPackedRGB
    Input = YUY2 ? ConvertToYV16(Input) : Input
    Input = RemoveAlphaPlane(Input)
    Input = Packed ? ConvertToPlanarRGB(Input) : Input
    Input = Input.BitsPerComponent > 8 ? ConvertBits(Input, 16) : Input
    Input = Input.Is420 && CPlace == "DV" ? ConvertToYUV420(Input, ChromaInPlacement = "DV", ChromaOutPlacement = "MPEG2", chromaresample = "Sinc") : Input
    CPlace = CPlace == "DV" ? "MPEG2" : CPlace
    Global Fmt = Factor == 1 || (AIUCRF && AIUC) || (AIUCRM && (AIUCF || AIUCM)) || (AIUCRHQ && AIUCF) ? "YUV444P" + String(OutDepth) : "YUV444P16"
    Global OutPrec = (Factor == 1 || (AIUCRF && AIUC) || (AIUCRM && (AIUCF || AIUCM)) || (AIUCRHQ && AIUCF)) && OutDepth == 8 ? 1 : 2
    POut = ((AIUCRF && AIUCHQ) || (AIUCRHQ && AIUCF)) && (Factor == 4 || (Factor == 3 && OutPrec == 1))
    LumaStr = ReplaceStr(Luma, " Sharp", "")
    Global ChromaStr = ReplaceStr(Chroma, " Sharp", "")
    CResampleStr = ReplaceStr(CResample, " Sharp", "")
    MPEG1 = CPlace == "MPEG1"
    MPEG2 = Input.Is420 && CPlace == "MPEG2"
    CROffset = (Input.Is422 || MPEG2) ? 0.5 : 0.0
    COffset = (Input.Is422 || MPEG2) ? Factor * 0.5 : 0.0

    Global Path = "Shaders\"
    PathAIU = Path + Mode + "\"
    PathL = PathAIU + Luma + "\" + string(Factor) + "x\"
    Global PathC = AIUC ? PathAIU + Chroma + "\" + string(Factor) + "x\" : ""
    PathCR = AIUCR ? PathAIU + CResample + "\2x\" : ""
        
    If (AVSCR) {  
        Input = Input.Is420 ? ConvertToYUV444(Input, ChromaInPlacement = CPlace, ChromaResample = CResample) : ConvertToYUV444(Input, ChromaResample = CResample)
        Input = Factor == 1 ? ConvertBits(Input, OutDepth) : Input
    } else if (Cresample == "KrigBilateral") {
        Input = KrigBilateral(Input, CROffset)
    } else if (AIUCR) {
        If (Factor == 1 || (AIUCRF && !AIUC) || (AIUCRM && !(AIUCF || AIUCM)) || (AIUCRHQ && !AIUCF)) {
            U = ExtractU(Input)
            U = Eval("AIU" + CresampleStr + "(U, U.Width, U.Height, PathCR, 0, 0, false)")
            U = SincResize(U, U.Width, U.Height, CROffset)
            V = ExtractV(Input)
            V = Eval("AIU" + CresampleStr + "(V, V.Width, V.Height, PathCR, 0, 0, false)")
            V = SincResize(V, V.Width, V.Height, CROffset)
            Input = CombinePlanes(ConvertBits(ExtractY(Input), U.BitsPerComponent), U, V, "YUV", "YYY", Fmt)
        } else {
            Y = Eval("AIU" + LumaStr + "(ExtractY(Input), Input.Width, Input.Height, PathL, 0, 1, false)")
            Same = (AIUCRF && AIUCF) || (AIUCRM && AIUCM)
            Lim =  Same ? 1 : 0
            Mode = Same ? 0 : 2
            U = ExtractU(Input)
            U = Eval("AIU" + CResampleStr + "(U, U.Width, U.Height, PathCR, Lim, Mode, POut)")
            U = SincResize(U, U.Width, U.Height, COffset)
            V = ExtractV(Input)
            V = Eval("AIU" + CResampleStr + "(V, V.Width, V.Height, PathCR, Lim, Mode, POut)")
            V = SincResize(V, V.Width, V.Height, COffset)
            Input = CombinePlanes(Y, U, V, "YUV", "YYY", Fmt)
        }
    } else {
        NOP()
    }
    
     If (Factor == 1 || VarExist("Y")) {
        return IsClip(Alpha) ? AddAlphaPlane(Input, Alpha) : Input
    }

    Global Fmt = !(Chroma == "KrigBilateral" && Input.Is444) ? "YUV444P" + String(OutDepth) : "YUV444P16"
    Global OutPrec = !(Chroma == "KrigBilateral" && Input.Is444) && OutDepth == 8 ? 1 : 2
    COffset = MPEG1 || Input.Is444 ? 0.0 : 0.25 * (1.0 - 1.0 / Factor)
    
    If (Input.IsRGB) {
        P0 = Eval("AIU" + LumaStr + "(ExtractR(Input), Input.Width, Input.Height, PathL, 0, 1, false)")
        P1 = Eval("AIU" + LumaStr + "(ExtractG(Input), Input.Width, Input.Height, PathL, 0, 1, false)")
        P2 = Eval("AIU" + LumaStr + "(ExtractB(Input), Input.Width, Input.Height, PathL, 0, 1, false)")
    } else {
        P0 = Eval("AIU" + LumaStr + "(ExtractY(Input), Input.Width, Input.Height, PathL, 0, 1, false)")
    }

    Global Fmt = "YUV444P" + String(OutDepth)
    Global OutPrec = OutDepth == 8 ? 1 : OutPrec
    TInput = ConvertBits(Input, OutDepth)
    If (MPYUV) {
        CWidth = Input.Is444 ? Input.Width * Factor : Input.Width * Factor / 2
        CHeight = Input.Is420 ? Input.Height * Factor / 2 : Input.Height * Factor
        If (AVSC) {
            P1 = Eval(Chroma + "Resize(ExtractU(TInput), CWidth, CHeight, COffset)")
            P2 = Eval(Chroma + "Resize(ExtractV(TInput), CWidth, CHeight, COffset)")
        } else if (Chroma != "KrigBilateral") {
            P1 = ExtractU(Input)
            P1 = Eval("AIU" + ChromaStr + "(P1, P1.Width, P1.Height, PathC, 0, 1, false)")
            P1 = SincResize(P1, P1.Width, P1.Height, COffset * Factor)
            P2 = ExtractV(Input)
            P2 = Eval("AIU" + ChromaStr + "(P2, P2.Width, P2.Height, PathC, 0, 1, false)")
            P2 = SincResize(P2, P2.Width, P2.Height, COffset * Factor)
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

Function AIUFast(clip c, int W, int H, string SPath, int Lim, int Mode, bool Pout)
{
    If (Mode != 3) {
        c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
        InPrec = c.BitsPerComponent == 16 ? 2 : 0
        c = ConvertToShader(c, Precision = InPrec)
    }
    c
    For (i = 0, Lim) {
        Size = CreateParamFloat4(W, H)
        W2 = Mode % 2 == 0 && i == 0 ? W * 2 : W * Factor
        H2 = Mode % 2 == 0 && i == 0 ? H * 2 : H * Factor
        x3 = Factor > 2 && (Mode % 2 == 1 || i == 1)
        x4 = Factor == 4 && (Mode % 2 == 1 || i == 1)
        SPath = i == 1 ? PathC : SPath
        Shader(Path + "Lanczos3\Lanczos3.cso", Param2 = Size, Width = W2, Height = H2, output = 9)
        Shader(SPath + "feature_1.cso", output = 2, Width = W, Height = H)
        Shader(SPath + "feature_2.cso", output = 3, Width = W, Height = H)
        Shader(SPath + "feature_3.cso", output = 4, Width = W, Height = H)
        Shader(SPath + "mapping_1_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 5, Width = W, Height = H)
        Shader(SPath + "mapping_1_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_1_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_2_1.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 2, Width = W, Height = H)
        Shader(SPath + "mapping_2_2.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 3, Width = W, Height = H)
        Shader(SPath + "mapping_2_3.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 4, Width = W, Height = H)
        Shader(SPath + "mapping_3_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 5, Width = W, Height = H)
        Shader(SPath + "mapping_3_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_3_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_4_1.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 2, Width = W, Height = H)
        Shader(SPath + "mapping_4_2.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 3, Width = W, Height = H)
        Shader(SPath + "mapping_4_3.cso", Clip1 = 5, Clip2 = 6, Clip3 = 7, output = 4, Width = W, Height = H)
        Shader(SPath + "sub-pixel_convolution_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 5, Width = W, Height = H)
        x3 ? Shader(SPath + "sub-pixel_convolution_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 6, Width = W, Height = H) : last
        x3 ? Shader(SPath + "sub-pixel_convolution_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 7, Width = W, Height = H) : last
        x4 ? Shader(SPath + "sub-pixel_convolution_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, output = 8, Width = W, Height = H) : last
        Shader(SPath + "depth2space.cso", Clip1 = 5, Clip2 = x3 ? 6 : 9, Clip3 = x3 ? 7 : 0, Clip4 = x4 ? 8 : x3 ? 9 : 0, Clip5 = x4 ? 9 : 0, Width = W2, Height = H2)
        W = W2
        H = H2
    }
    If (Mode != 3) {
        Mode == 2 ? Eval("AIU" + ChromaStr + "(last, W, H, PathC, 0, 3, false)") : last
        ExecuteShader(last, c, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = !(POut && Mode == 2))
        ConvertFromShader(Precision = OutPrec, Format = Fmt)
        ExtractY()
     }
}

Function AIUMedium(clip c, int W, int H, string SPath, int Lim, int Mode, bool Pout)
{
    If (Mode != 3) {
        c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
        InPrec = c.BitsPerComponent == 16 ? 2 : 0
        c = ConvertToShader(c, Precision = InPrec)
    }
    c
    For (i = 0, Lim) {
        Size = CreateParamFloat4(W, H)
        W2 = Mode % 2 == 0 && i == 0 ? W * 2 : W * Factor
        H2 = Mode % 2 == 0 && i == 0 ? H * 2 : H * Factor
        x3 = Factor > 2 && (Mode % 2 == 1 || i == 1)
        x4 = Factor == 4 && (Mode % 2 == 1 || i == 1)
        SPath = i == 1 ? PathC : SPath
        Shader(Path + "Lanczos3\Lanczos3.cso", Param2 = Size, Width = W2, Height = H2, output = 14)
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
        Shader(SPath + "mapping_2_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 2, Width = W, Height = H)
        Shader(SPath + "mapping_2_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 3, Width = W, Height = H)
        Shader(SPath + "mapping_2_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 4, Width = W, Height = H)
        Shader(SPath + "mapping_2_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 5, Width = W, Height = H)
        Shader(SPath + "mapping_2_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_2_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 7, Width = W, Height = H)
        Shader(SPath + "mapping_3_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 8, Width = W, Height = H)
        Shader(SPath + "mapping_3_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 9, Width = W, Height = H)
        Shader(SPath + "mapping_3_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 10, Width = W, Height = H)
        Shader(SPath + "mapping_3_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 11, Width = W, Height = H)
        Shader(SPath + "mapping_3_5.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 12, Width = W, Height = H)
        Shader(SPath + "mapping_3_6.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 13, Width = W, Height = H)
        Shader(SPath + "mapping_4_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 2, Width = W, Height = H)
        Shader(SPath + "mapping_4_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 3, Width = W, Height = H)
        Shader(SPath + "mapping_4_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 4, Width = W, Height = H)
        Shader(SPath + "mapping_4_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 5, Width = W, Height = H)
        Shader(SPath + "mapping_4_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 6, Width = W, Height = H)
        Shader(SPath + "mapping_4_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 7, Width = W, Height = H)   
        Shader(SPath + "sub-pixel_convolution_1.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 8, Width = W, Height = H)
        x3 ? Shader(SPath + "sub-pixel_convolution_2.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 9, Width = W, Height = H) : last
        x3 ? Shader(SPath + "sub-pixel_convolution_3.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 10, Width = W, Height = H) : last
        x4 ? Shader(SPath + "sub-pixel_convolution_4.cso", Clip1 = 2, Clip2 = 3, Clip3 = 4, Clip4 = 5, Clip5 = 6, Clip6 = 7, output = 11, Width = W, Height = H) : last
        Shader(SPath + "depth2space.cso", Clip1 = 8, Clip2 = x3 ? 9 : 14, Clip3 = x3 ? 10 : 0, Clip4 = x4 ? 11 : x3 ? 14 : 0, Clip5 = x4 ? 14 : 0, Width = W2, Height = H2)
        W = W2
        H = H2
    }
    If (Mode != 3) {
        Mode == 2 ? AIUFast(last, W, H, PathC, 0, 3, false) : last
        ExecuteShader(last, c, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = true)
        ConvertFromShader(Precision = OutPrec, Format = Fmt)
        ExtractY()
    }
}

Function AIUHQ(clip c, int W, int H, string SPath, int Lim, int Mode, bool Pout)
{
    If (Mode != 3) {
        c = c.BitsPerComponent == 16 ? ConvertToYUV444(c) : c
        InPrec = c.BitsPerComponent == 16 ? 2 : 0
        c = ConvertToShader(c, Precision = InPrec)
    }
    c
    Size = CreateParamFloat4(W, H)
    W2 = Mode % 2 == 0 ? W * 2 : W * Factor
    H2 = Mode % 2 == 0 ? H * 2 : H * Factor
    x3 = Factor > 2 && Mode % 2 == 1
    x4 = Factor == 4 && Mode % 2 == 1
    Shader(Path + "Lanczos3\Lanczos3.cso", Param2 = Size, Width = W2, Height = H2, output = 20)
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
    Shader(SPath + "mapping_4_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 2, output = 14, Width = W, Height = H)
    Shader(SPath + "mapping_4_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 3, output = 15, Width = W, Height = H)
    Shader(SPath + "mapping_4_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 4, output = 16, Width = W, Height = H)
    Shader(SPath + "mapping_4_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 5, output = 17, Width = W, Height = H)
    Shader(SPath + "mapping_4_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 6, output = 18, Width = W, Height = H)
    Shader(SPath + "mapping_4_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, Clip7 = 7, output = 19, Width = W, Height = H)
    Shader(SPath + "mapping_5_1.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 8, Width = W, Height = H)
    Shader(SPath + "mapping_5_2.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 9, Width = W, Height = H)
    Shader(SPath + "mapping_5_3.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 10, Width = W, Height = H)
    Shader(SPath + "mapping_5_4.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 11, Width = W, Height = H)
    Shader(SPath + "mapping_5_5.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 12, Width = W, Height = H)
    Shader(SPath + "mapping_5_6.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 13, Width = W, Height = H)
    Shader(SPath + "mapping_6_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 14, Width = W, Height = H)
    Shader(SPath + "mapping_6_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 15, Width = W, Height = H)
    Shader(SPath + "mapping_6_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 16, Width = W, Height = H)
    Shader(SPath + "mapping_6_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 17, Width = W, Height = H)
    Shader(SPath + "mapping_6_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 18, Width = W, Height = H)
    Shader(SPath + "mapping_6_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 19, Width = W, Height = H)
    Shader(SPath + "mapping_7_1.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 8, Width = W, Height = H)
    Shader(SPath + "mapping_7_2.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 9, Width = W, Height = H)
    Shader(SPath + "mapping_7_3.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 10, Width = W, Height = H)
    Shader(SPath + "mapping_7_4.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 11, Width = W, Height = H)
    Shader(SPath + "mapping_7_5.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 12, Width = W, Height = H)
    Shader(SPath + "mapping_7_6.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 13, Width = W, Height = H)
    Shader(SPath + "mapping_8_1.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 14, Width = W, Height = H)
    Shader(SPath + "mapping_8_2.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 15, Width = W, Height = H)
    Shader(SPath + "mapping_8_3.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 16, Width = W, Height = H)
    Shader(SPath + "mapping_8_4.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 17, Width = W, Height = H)
    Shader(SPath + "mapping_8_5.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 18, Width = W, Height = H)
    Shader(SPath + "mapping_8_6.cso", Clip1 = 8, Clip2 = 9, Clip3 = 10, Clip4 = 11, Clip5 = 12, Clip6 = 13, output = 19, Width = W, Height = H)
    Shader(SPath + "sub-pixel_convolution_1.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 2, Width = W, Height = H)
    x3 ? Shader(SPath + "sub-pixel_convolution_2.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 3, Width = W, Height = H) : last
    x3 ? Shader(SPath + "sub-pixel_convolution_3.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 4, Width = W, Height = H) : last
    x4 ? Shader(SPath + "sub-pixel_convolution_4.cso", Clip1 = 14, Clip2 = 15, Clip3 = 16, Clip4 = 17, Clip5 = 18, Clip6 = 19, output = 5, Width = W, Height = H) : last
    Shader(SPath + "depth2space.cso", Clip1 = 2, Clip2 = x3 ? 3 : 20, Clip3 = x3 ? 4 : 0, Clip4 = x4 ? 5 : x3 ? 20 : 0, Clip5 = x4 ? 20 : 0, Width = W2, Height = H2)
    If (Mode != 3) {
        Mode == 2 ? AIUFast(last, W2, H2, PathC, 0, 3, false) : last
        ExecuteShader(last, c, Clip1Precision = InPrec, Precision = 3, OutputPrecision = OutPrec, PlanarOut = !(POut && Mode == 2))
        ConvertFromShader(Precision = OutPrec, Format = Fmt)
        ExtractY()
    }
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
    CombinePlanes(ConvertBits(ExtractY(c), last.BitsPerComponent), ExtractY(last), ExtractU(last), "YUV", "YYY", Fmt)
}
