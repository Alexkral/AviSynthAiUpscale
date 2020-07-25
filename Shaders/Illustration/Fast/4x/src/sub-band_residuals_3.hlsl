sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0424583815038204,0.0768031775951385,0.1017849966883659,-0.1313269436359406);
res += mul(Get(s0), float4x4(-0.0522856302559376,-0.1199894174933434,0.1040903627872467,0.0905842408537865,0.0234702061861753,-0.1111935824155807,0.2435198575258255,0.0195806846022606,0.5907648801803589,-0.3136715590953827,0.4824786782264709,0.0360649898648262,-0.1172671094536781,0.5544468164443970,0.2207973450422287,-0.5200890898704529));
res += mul(Get(s1), float4x4(-0.3117609024047852,0.0871027112007141,0.1270485967397690,-0.0486400164663792,-0.1220915839076042,0.2138705849647522,0.4033928513526917,0.1035838350653648,0.0267147105187178,-0.0349211469292641,0.1712720543146133,0.1386843919754028,0.0042724395170808,-0.1231363937258720,0.2712521851062775,-0.1892572343349457));
res += mul(Get(s2), float4x4(0.1402597278356552,0.1080522537231445,-0.0890484601259232,-0.2966560721397400,0.0459110699594021,-0.0222737845033407,-0.0112528447061777,-0.1644654422998428,-0.0350115410983562,0.0548762194812298,0.0554415918886662,-0.1112595796585083,-0.2743070721626282,0.1796971410512924,-0.2492911666631699,0.2029485255479813));
res += Get(s3);
res = max(float4(0, 0, 0, 0), res) + float4(0.5755007863044739,3.8949368000030518,0.1451124846935272,0.1477992385625839) * min(float4(0, 0, 0, 0), res);
return res;
}