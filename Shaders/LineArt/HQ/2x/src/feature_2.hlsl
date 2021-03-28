sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.011886487714946,-0.032882977277040,-0.019616613164544,-0.028433803468943);
res += float4(0.064008854329586,0.002475236076862,-0.054709721356630,-0.024552052840590) * Get(-ddx,-ddy);
res += float4(-0.111675389111042,-0.027822742238641,0.021624639630318,0.103601016104221) * Get(-ddx,-dy);
res += float4(-0.029802113771439,-0.107961013913155,-0.027911551296711,0.019652370363474) * Get(-ddx,0);
res += float4(0.113239921629429,0.127618893980980,-0.002658045385033,-0.006856690626591) * Get(-ddx,dy);
res += float4(-0.108402140438557,0.010697844438255,0.011158653534949,-0.038070026785135) * Get(-ddx,ddy);
res += float4(-0.034222893416882,-0.047150708734989,0.003597924485803,-0.017057577148080) * Get(-dx,-ddy);
res += float4(-0.097177863121033,-0.015384739264846,-0.001025136793032,-0.025668447837234) * Get(-dx,-dy);
res += float4(0.185814276337624,0.111423268914223,-0.034947048872709,0.030460814014077) * Get(-dx,0);
res += float4(0.063728518784046,-0.020959511399269,0.028329005464911,0.021104892715812) * Get(-dx,dy);
res += float4(0.095512032508850,0.045311775058508,0.010517979972064,0.045054089277983) * Get(-dx,ddy);
res += float4(0.106611944735050,0.036954943090677,0.044860865920782,0.051209382712841) * Get(0,-ddy);
res += float4(0.083873599767685,0.062725313007832,0.036255158483982,-0.103328779339790) * Get(0,-dy);
res += float4(0.030119903385639,0.069974295794964,-0.088377557694912,0.033679138869047) * Get(0,0);
res += float4(-0.306836903095245,0.035356931388378,0.034466251730919,0.019252777099609) * Get(0,dy);
res += float4(0.017215816304088,-0.151380568742752,0.039317008107901,0.054370708763599) * Get(0,ddy);
res += float4(-0.085722237825394,-0.032197404652834,0.011691274121404,0.079276464879513) * Get(dx,-ddy);
res += float4(0.163447901606560,0.155250459909439,-0.078925333917141,-0.099656581878662) * Get(dx,-dy);
res += float4(-0.193408638238907,-0.114657551050186,0.088142879307270,-0.002774584339932) * Get(dx,0);
res += float4(0.030311470851302,-0.020413259044290,-0.047031637281179,0.081319741904736) * Get(dx,dy);
res += float4(0.004430510569364,-0.007134678773582,0.039644472301006,-0.114081829786301) * Get(dx,ddy);
res += float4(-0.029675630852580,-0.037472266703844,-0.041356977075338,-0.082661516964436) * Get(ddx,-ddy);
res += float4(-0.005460315383971,-0.107992820441723,0.041123997420073,0.022012168541551) * Get(ddx,-dy);
res += float4(0.004218824207783,-0.076258361339569,0.046873401850462,-0.014253593049943) * Get(ddx,0);
res += float4(0.019625419750810,0.007654801942408,0.051083128899336,-0.041702888906002) * Get(ddx,dy);
res += float4(0.011776228435338,0.140766665339470,-0.107385389506817,0.056735757738352) * Get(ddx,ddy);
return res;
}