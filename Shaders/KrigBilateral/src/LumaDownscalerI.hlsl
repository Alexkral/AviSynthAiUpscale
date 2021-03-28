// KrigBilateral by Shiandow
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3.0 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library.


sampler s0 : register(s0);
float4 p2 :  register(c2);
float4 p3 :  register(c3);

#define Kernel(x) dot(float3(0.42659, -0.49656, 0.076849), cos(float3(0, 1, 2) * acos(-1.0) * (x + 1.0)))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
    float2 pos = tex;
    float W = 0.0, w, rel, k;
    float4 avg = 0, y;
    float low = ceil((tex - p3.zw) * p2.xy - 0.5)[1];
    float high = floor((tex + p3.zw) * p2.xy - 0.5)[1];
    [loop] for (k = low; k <= high; k++) {
	pos[1] = p2.w * (k + 0.5);
	rel = (pos[1] - tex[1]) * p3.y;
	w = Kernel(rel);
	y = tex2D(s0, pos, 0, 0).xxxx;
	y.y *= y.y;
	avg += w * y;
	W += w;
    }
    avg /= W;
    avg.y = abs(avg.y - pow(avg.x, 2.0));
    return avg;
}
