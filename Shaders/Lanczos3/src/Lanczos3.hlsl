/*
   Copyright (C) 2010 Team XBMC
   http://www.xbmc.org
   Copyright (C) 2011 Stefanos A.
   http://www.opentk.com

This Program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This Program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this library.

*/

sampler s0 : register(s0);
float4 p2 :  register(c2);

#define get(x, y) tex2D(s0, float2(x, y)).rgb
#define FIX(c) max(abs(c), 1e-5);
static const float PI = 3.141592653;

float3 weight3(float x)
{
    const float radius = 3.0;
    float s1 = FIX(2.0 * PI * (x - 1.5));
    float s2 = FIX(2.0 * PI * (x - 0.5));
    float s3 = FIX(2.0 * PI * (x + 0.5));
    float3 sample = float3(s1, s2, s3);
    return sin(sample) * sin(sample / radius) / (sample * sample);
}

float3 line_run(float ypos, float3 xpos1, float3 xpos2, float3 linetaps1, float3 linetaps2)
{
    return
	get(xpos1.r, ypos) * linetaps1.r +
	get(xpos1.g, ypos) * linetaps2.r +
	get(xpos1.b, ypos) * linetaps1.g +
	get(xpos2.r, ypos) * linetaps2.g +
	get(xpos2.g, ypos) * linetaps1.b +
	get(xpos2.b, ypos) * linetaps2.b; 
}

float4 main(float2 tex : TEXCOORD0) : COLOR
{
    float2 pos = tex + p2.zw * 0.5;
    float2 f = frac(pos / p2.zw);

    float3 linetaps1   = weight3(0.5 - f.x * 0.5);
    float3 linetaps2   = weight3(1.0 - f.x * 0.5);
    float3 columntaps1 = weight3(0.5 - f.y * 0.5);
    float3 columntaps2 = weight3(1.0 - f.y * 0.5);

    float suml = dot(linetaps1, float3(1, 1, 1)) + dot(linetaps2, float3(1, 1, 1));
    float sumc = dot(columntaps1, float3(1, 1, 1)) + dot(columntaps2, float3(1, 1, 1));
    linetaps1 /= suml;
    linetaps2 /= suml;
    columntaps1 /= sumc;
    columntaps2 /= sumc;

    float2 xystart = (-2.5 - f) * p2.zw + pos;
    float3 xpos1 = float3(xystart.x, xystart.x + p2.z, xystart.x + p2.z * 2.0);
    float3 xpos2 = float3(xystart.x + p2.z * 3.0, xystart.x + p2.z * 4.0, xystart.x + p2.z * 5.0);

    return float4(
	line_run(xystart.y              , xpos1, xpos2, linetaps1, linetaps2) * columntaps1.r +
	line_run(xystart.y + p2.w       , xpos1, xpos2, linetaps1, linetaps2) * columntaps2.r +
	line_run(xystart.y + p2.w * 2.0 , xpos1, xpos2, linetaps1, linetaps2) * columntaps1.g +
	line_run(xystart.y + p2.w * 3.0 , xpos1, xpos2, linetaps1, linetaps2) * columntaps2.g +
	line_run(xystart.y + p2.w * 4.0 , xpos1, xpos2, linetaps1, linetaps2) * columntaps1.b +
	line_run(xystart.y + p2.w * 5.0 , xpos1, xpos2, linetaps1, linetaps2) * columntaps2.b, 1.0);
}
