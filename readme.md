# AviSynth AiUpscale v1.2.0
An AviSynth+ implementation of some Super-Resolution Convolutional Neural Networks.

[Download](https://github.com/Alexkral/AviSynthAiUpscale/releases/tag/v1.2.0 "Download")


## Requirements
(Note that these are not required to use the mpv user shaders).

- [AviSynth+](https://github.com/AviSynth/AviSynthPlus/releases "Avisinth+")
- [AviSynth Shader](https://github.com/mysteryx93/AviSynthShader/releases "AviSynth Shader")

## Features
- Independent luma/chroma upscaling and chroma resampling.
- Two modes for Video/Photography and Line Art.
- KrigBilateral option for chroma upscaling/resampling.
- mpv user shaders of all models for real-time upscaling

## Installation
Copy `AiUpscale.avsi` and the `Shaders` folder to the AviSynth+ plugins folder.
## Usage


    AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", string "Mode", string "CPlace", int "OutDepth")
- **Input:** (Default = last). Input image or progressive video in any AviSynth+ color format except YV411 and 32 bit float. Alpha planes are upscaled with Lanczos.
- **Factor:** (Default = 2). Upscaling factor (1, 2, 3 or 4). 1 is for chroma resampling.
- **Luma:** (Default = "Medium"). Model for luma or RGB upscaling. Must be an AiUpscale model ("Fast", "Fast Sharp", "Medium", "Medium Sharp", "HQ" or "HQ Sharp").
- **Chroma:** (Default = "Lanczos"). Method for chroma upscaling. Can be an AiUpscale model, KrigBilateral (only for 4:2:0 or 4:4:4 and Factor = 2), or any AviSynth resize method.
- **CResample:** (Default = ""). Method for chroma resampling. Can be an AiUpscale model (only for 4:2:0), KrigBilateral, any AviSynth method, or an empty string which means that the chroma is not resampled.
- **Mode:** (default = "Photo"). Can be "Photo" for anything that comes from a camera, or "LineArt" for artwork, drawings, etc.
- **CPlace:** (Default = "MPEG2"). Chroma placement when the source is YV12. Same as **ChromaInPlacement** in AviSynth [Convert.](http://avisynth.nl/index.php/Convert "Convert.") This affects correct chroma positioning, most of the time it shouldn't be changed. Can also be "MPEG1" and "DV".
- **OutDepth:** (Default = Same as input). Output bit depth (8, 10, 12, 14 or 16).

## mpv user shaders (Installation and usage)
(Note that these are not needed for AviSynth AiUpscale to work).

1 - Install [mpv](https://mpv.io/ "mpv").

2 - Create a folder called `shaders` in `%AppData%\mpv\` for Windows or `~/.config/mpv/` for Linux, and copy the shaders into it.

3 - Create or edit `mpv.conf` in `%AppData%\mpv\` or `~/.config/mpv/` like this:
- To add a shader, use `glsl-shader="<PATH TO SHADER>"`
- To select a renderer, use `gpu-api=<RENDERER>` (On Windows, d3d11 is the fastest).
- You may need to create a `cache` folder in the `shaders` folder, and set it using `gpu-shader-cache-dir="<PATH TO CACHE FOLDER>"`

mpv.conf example: 

    profile=gpu-hq
    gpu-api=d3d11
    glsl-shader="C:\users\USERNAME\AppData\Roaming\mpv\shaders\AiUpscale_x2_Fast_Photo.glsl"
    gpu-shader-cache-dir="C:\users\USERNAME\AppData\Roaming\mpv\shaders\cache"

During playback, you can press `i` or `Shift + i` followed by `1` or `2`, to see some statistics. Press `Up` or `Down` to scroll on pages that support it.
## 2x Qualitative Results
PSNR and SSIM (evaluated on the Y channel) are also provided for reference.

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/cmp_01.png)

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/cmp_02.png)

## Quantitative Results
Below are PSNR and SSIM results (evaluated on the Y channel) of the AiUpscale models compared to other similar methods for image or video upscaling. The low resolution images were generated using the bicubic filter with Catmull-Rom settings, which is the method commonly used for training super-resolution networks, including those tested here. Note however that as an exception to this, the Anime4K models were trained using the average area downsampling method. The AiUpscale models used for all datasets were the "Photo" models, except for the Manga109 dataset for which the "LineArt" models were used. In the same way, the Waifu2x cunet model was used for the Manga109 dataset, and the upconv_7 model for the rest. 

The best performance is shown in red, and the second best performance is shown in blue.

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/2x.png)

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/3x.png)

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/4x.png)

## Performance Benchmarks
The following are performance results given in frames per second for the super-resolution methods tested in the previous section. Waifu2x and SRMD were tested using vspipe with a VapourSynth script to upscale an AVC video from 960x540 to 1920x1080. As in the quantitative results, for Waifu2x the VapourSynth-Waifu2x-caffe filter was used, and for SRMD the VapourSynth-SRMD-ncnn-Vulkan filter was used. Note that by design, both process all three channels while the other methods only process luminance. The methods that are implemented as mpv user shaders were tested in the same way using the vs-placebo filter. The AiUpscale models were also tested using AVSMeter with an AviSynth script to upscale an AVC video from 1920x1080 to 3840x2160. The FSRCNNX models were also implemented in AviSynth, and tested in the same way. Finally, all the models that are implemented as mpv user shaders were tested in mpv using a benchmarking profile  with d3d11 as the renderer, to upscale an AVC video from 1920x1080 to 3840x2160. The GPU used was an Nvidia GTX 1080.

![](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/figures/perf.png)

## About the models
All models are based on [FSRCNNX](https://github.com/igv/FSRCNN-TensorFlow "FSRCNNX") but with multiple changes, the most important being Global Residual Learning with Lanczos interpolation. The "Sharp" variants were made by playing with the image formation, trying to "match" the sharpness of the reference image without introducing too much distortion. This usually results in a better perceptual quality, but also a worse result in metrics that take into account distortion, such as PSNR. They should also work well with images that are not too sharp to start with, such as those coming directly from a camera.

## References
- [Doom9 thread](https://forum.doom9.org/showthread.php?t=181665 "Doom9 thread")
- [FSRCNN-TensorFlow](https://github.com/igv/FSRCNN-TensorFlow "FSRCNN-TensorFlow")

