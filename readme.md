# AviSynth AiUpscale v1.0
An AviSynth+ implementation of some Super-Resolution Convolutional Neural Networks.

[Download](https://github.com/por definir "Download")


## Requirements
- [AviSynth+](https://github.com/AviSynth/AviSynthPlus/releases "Avisinth+")
- [AviSynth Shader](https://github.com/mysteryx93/AviSynthShader/releases "AviSynth Shader")

## Features
- Independent luma/chroma upscaling and chroma resampling.
- Adjustable target width and height.
- Two modes for Photography and Illustration.
- KrigBilateral option for chroma upscaling/resampling.

## Usage
    AiUpscale(clip Input, int "Factor", string "Luma", string "Chroma", string "CResample", int "Width" , int "Height" , int "Double", string "Mode", string "CPlace")
- **Input:** (Default = last). Input image or progressive video in any AviSynth+ color format except YV411 and 32 bit float.
- **Factor:** (Default = 2). Upscaling factor (1, 2, 3 or 4). 1 is for chroma resampling. Must be 2 when Double is set for Luma and/or Chroma. Ignored when Width and Height are set.
- **Luma:** (Default = "Medium"). Model for luma or RGB upscaling. Must be an AiUpscale model ("Fast", "Medium", "VDSR", "HQ" or "HQ Sharp").
- **Chroma:** (Default = "Lanczos"). Method for chroma upscaling. Can be an AiUpscale model, KrigBilateral (only for 4:2:0 or 4:4:4 and 2x upscale ratio), or any AviSynth resize method.
- **CResample:** (Default = ""). Method for chroma resampling. Can be an AiUpscale model (only for 4:2:0), KrigBilateral, any AviSynth method, or an empty string which means that the chroma is not resampled.
- **Width, Height:** (Default = 0). Target Width and Height. Only for the VDSR, HQ and HQ Sharp models. Both must be between 1x and 4x for the VDSR model, and between 2x and 4x for the HQ models. When the chroma is not resampled, Width must be Mod 2 for subsampled formats, and Height must be Mod 2 for 4:2:0. Default = 0 which means that Factor will be used instead.
- **Double:** (Default = 0). This allows to repeat a 2x upscaling in the same pass. Factor must be 2. Only for the Fast and Medium models. 0 to disable, 1 to repeat a 2x luma upscaling, 2 to repeat a 2x chroma upscaling, and 3 to repeat both. When only used for luma or chroma, the other will be directly upscaled to 4x.
- **Mode:** (default = "Photo"). Can be "Photo" or "Illustration".
- **CPlace:** (Default = "MPEG2"). Chroma placement when the source is YV12. Same as **ChromaInPlacement** in AviSynth [Convert.](http://avisynth.nl/index.php/Convert "Convert.") This affects correct chroma positioning, most of the time it shouldn't be changed. Can also be "MPEG1" and "DV".

## Notes
- There is no limitation about changing the source Aspect Ratio using Width and Height.
- The Medium model can only do two upscaling steps in the same pass. This means that when Double is set to 2 or 3 and the Medium model is used for chroma upscaling and resampling, only 2 of the 3 required upscaling steps will be done in the same pass.

## About the models
The Fast and Medium models and the first module of the HQ an HQ Sharp models, were trained using [FSRCNN-TensorFlow](https://github.com/igv/FSRCNN-TensorFlow "FSRCNN-TensorFlow") with some changes. They have the same architecture as FSRCNNX_x2_8-0-4-1 and FSRCNNX_x2_16-0-4-1, but with different number of filters.
The VDSR model and the second module of the HQ and HQ Sharp models, were trained using the [Matlab VDSR example](https://www.mathworks.com/help/images/single-image-super-resolution-using-deep-learning.html?lang=en "Matlab VDSR example"), also with some changes and a reduced number of filters and layers.
The HQ and HQ Sharp models are made by a Medium model followed by a reduced VDSR model.


## Results

## 2x

| Lanczos | AiUpscale HQ Sharp |
| ------------ | ------------ |
| ![L3x2](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/quokka_91_L3.png) | ![SRx2](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/quokka_91_SR.png) |

## 3x

| Lanczos | AiUpscale HQ Sharp |
| ------------ | ------------ |
| ![L3x3](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/plant_821_L3.png) | ![SRx3](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/plant_821_SR.png) |

## 4x

| Lanczos | AiUpscale HQ Sharp |
| ------------ | ------------ |
| ![L3x4](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/comic_L3.png) | ![SRx4](https://github.com/Alexkral/AviSynthAiUpscale/blob/master/Results/comic_SR.png) |

## References
- [FSRCNN-TensorFlow](https://github.com/igv/FSRCNN-TensorFlow "FSRCNN-TensorFlow")
- [Single Image Super-Resolution Using Deep Learning](https://www.mathworks.com/help/images/single-image-super-resolution-using-deep-learning.html?lang=en "Single Image Super-Resolution Using Deep Learning")
