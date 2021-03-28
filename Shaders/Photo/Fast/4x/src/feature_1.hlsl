sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.056273318827152,0.101188644766808,-0.555750668048859,0.173603564500809);
res += float4(0.027163995429873,0.002533331513405,-0.034123685210943,-0.043577846139669) * Get(-ddx,-ddy);
res += float4(0.075207091867924,0.025781452655792,0.063412599265575,0.081454008817673) * Get(-ddx,-dy);
res += float4(-0.063584238290787,-0.006029849406332,0.069762535393238,-0.125684782862663) * Get(-ddx,0);
res += float4(0.002847701543942,-0.035675201565027,-0.021282244473696,0.058030102401972) * Get(-ddx,dy);
res += float4(-0.057856526225805,0.017929781228304,-0.008249324746430,0.011422592215240) * Get(-ddx,ddy);
res += float4(0.016643783077598,0.005840926431119,0.035452585667372,0.072565361857414) * Get(-dx,-ddy);
res += float4(-0.199662849307060,-0.062315572053194,-0.076770722866058,0.108563564717770) * Get(-dx,-dy);
res += float4(-0.112901695072651,0.106467947363853,0.233125925064087,0.359310001134872) * Get(-dx,0);
res += float4(0.203384205698967,0.157086938619614,0.300611197948456,-0.005467761773616) * Get(-dx,dy);
res += float4(0.057383421808481,-0.054332599043846,-0.031718712300062,0.062492687255144) * Get(-dx,ddy);
res += float4(-0.104666262865067,0.003861817065626,0.033146742731333,-0.146737530827522) * Get(0,-ddy);
res += float4(0.475649237632751,0.693295359611511,-0.018102265894413,-0.032294437289238) * Get(0,-dy);
res += float4(-0.505006194114685,-1.423231363296509,0.476667761802673,-1.592117071151733) * Get(0,0);
res += float4(-0.384541213512421,-0.179917454719543,-0.046950731426477,0.200468719005585) * Get(0,dy);
res += float4(-0.085099048912525,0.032873284071684,0.082979500293732,-0.122478298842907) * Get(0,ddy);
res += float4(-0.017136514186859,0.039740584790707,0.065609961748123,0.083284735679626) * Get(dx,-ddy);
res += float4(-0.042525120079517,-0.064218625426292,0.023709602653980,-0.036296762526035) * Get(dx,-dy);
res += float4(0.599416196346283,-0.062856160104275,0.210477367043495,0.092719450592995) * Get(dx,0);
res += float4(0.006198890507221,0.098251134157181,0.177109256386757,-0.035483490675688) * Get(dx,dy);
res += float4(0.077467501163483,-0.045272309333086,0.065513849258423,0.035750616341829) * Get(dx,ddy);
res += float4(0.033482369035482,-0.046911485493183,-0.011574981734157,0.001167910988443) * Get(ddx,-ddy);
res += float4(-0.032585415989161,0.126135051250458,-0.167808040976524,0.016759332269430) * Get(ddx,-dy);
res += float4(-0.026451407000422,0.004479352850467,0.133262470364571,-0.086441494524479) * Get(ddx,0);
res += float4(0.056841671466827,-0.039045222103596,-0.095332615077496,0.064129091799259) * Get(ddx,dy);
res += float4(-0.022492974996567,-0.018269548192620,-0.012330116704106,-0.011194480583072) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.615297555923462,0.139953777194023,0.936189413070679,-0.003462160471827) * min(float4(0, 0, 0, 0), res);
return res;
}
