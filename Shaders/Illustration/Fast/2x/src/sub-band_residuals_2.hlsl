sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.3356908857822418,-0.1277009248733521,-0.0835081711411476,0.0257678627967834);
res += mul(Get(s00, float4x4(0.6389552354812622,0.2887970507144928,-0.3794100582599640,0.1257849186658859,0.1310404092073441,0.3732984066009521,-0.0759608522057533,0.3294571042060852,-0.0962607041001320,-0.1764891296625137,0.3091014325618744,-0.3109635710716248,-0.3009544014930725,-0.1281018108129501,-0.6183434128761292,-0.3143763244152069));
res += mul(Get(s10, float4x4(0.1752051264047623,0.2331387549638748,0.4549949765205383,-0.2391203194856644,0.1586752831935883,-0.1160729229450226,-0.4822402596473694,-0.1149510443210602,-0.9234952330589294,0.1387541592121124,-0.2574488222599030,-0.0044632880017161,-0.4778120219707489,-0.0546828545629978,-0.3199395537376404,0.0450830198824406));
res += mul(Get(s20, float4x4(-0.5452650785446167,-0.0979908555746078,0.6586328148841858,0.0381727889180183,-0.6360792517662048,0.4516248106956482,0.4015390872955322,0.0539187379181385,0.5394666790962219,0.3081164360046387,-0.2582519352436066,0.6680700778961182,0.1185579150915146,-0.0237760860472918,0.6166423559188843,0.4525973200798035));
res += Get(s3);
res = max(float4(0, 0, 0, 0), res) + float4(0.3186061978340149,0.9293574094772339,0.2001557350158691,0.4786472618579865) * min(float4(0, 0, 0, 0), res);
return res;
}
