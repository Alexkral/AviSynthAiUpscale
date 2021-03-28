sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.048069998621941,0.045956298708916,0.073306314647198,0.479518800973892);
res += float4(-0.023922944441438,-0.039256017655134,0.037209481000900,-0.029914811253548) * Get(-ddx,-ddy);
res += float4(-0.025613619014621,0.199228510260582,-0.069875143468380,0.059644520282745) * Get(-ddx,-dy);
res += float4(0.110100269317627,-0.192814782261848,0.217323094606400,-0.071914941072464) * Get(-ddx,0);
res += float4(0.159636527299881,0.015602083876729,-0.119876191020012,0.022660912945867) * Get(-ddx,dy);
res += float4(-0.055516641587019,-0.011462230235338,0.030292812734842,0.011264060623944) * Get(-ddx,ddy);
res += float4(0.148728594183922,-0.015631152316928,0.147342443466187,0.015327163040638) * Get(-dx,-ddy);
res += float4(0.143672063946724,-0.294383227825165,-0.113418921828270,0.030658686533570) * Get(-dx,-dy);
res += float4(0.157949700951576,0.486794412136078,0.546726047992706,0.048071984201670) * Get(-dx,0);
res += float4(-0.615071594715118,-0.272269248962402,0.237075954675674,0.035516075789928) * Get(-dx,dy);
res += float4(0.074296928942204,0.123716302216053,0.017654329538345,0.026522902771831) * Get(-dx,ddy);
res += float4(-0.211858689785004,0.129049658775330,-0.082927495241165,-0.027564726769924) * Get(0,-ddy);
res += float4(-0.084789119660854,-0.320097416639328,-0.220644474029541,-0.171301826834679) * Get(0,-dy);
res += float4(-0.496866852045059,0.216102868318558,-0.696738183498383,-1.184619665145874) * Get(0,0);
res += float4(0.614726483821869,-0.418200820684433,-0.041004601866007,0.151498898863792) * Get(0,dy);
res += float4(-0.061182584613562,0.365494668483734,-0.089975170791149,-0.055688735097647) * Get(0,ddy);
res += float4(0.075959704816341,-0.036902058869600,-0.053184077143669,0.005445741582662) * Get(dx,-ddy);
res += float4(-0.073628552258015,0.044994197785854,0.208024203777313,0.055466067045927) * Get(dx,-dy);
res += float4(0.499846577644348,-0.036909852176905,0.040696978569031,-0.002698349067941) * Get(dx,0);
res += float4(-0.252654761075974,-0.015926396474242,-0.049315091222525,0.101807452738285) * Get(dx,dy);
res += float4(0.027200106531382,0.060280147939920,0.042909029871225,-0.046409703791142) * Get(dx,ddy);
res += float4(-0.026013653725386,0.037564378231764,0.009600481949747,0.015307537280023) * Get(ddx,-ddy);
res += float4(0.010608936659992,-0.072053410112858,0.011035682633519,-0.010873967781663) * Get(ddx,-dy);
res += float4(-0.156001523137093,0.000714875699487,0.047741994261742,0.031396444886923) * Get(ddx,0);
res += float4(0.172256648540497,-0.011737566441298,-0.062235433608294,-0.035044655203819) * Get(ddx,dy);
res += float4(-0.083351582288742,0.042558524757624,0.014905286021531,0.024538563564420) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.776118874549866,0.276575744152069,0.596931159496307,0.124651946127415) * min(float4(0, 0, 0, 0), res);
return res;
}
