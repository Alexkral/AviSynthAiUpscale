sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.069515191018581,0.111990749835968,-0.216023936867714,0.011993243359029) * Get(-dx,-dy);
res += float4(-0.216228529810905,0.361703008413315,0.171061769127846,-0.009754725731909) * Get(-dx,0);
res += float4(0.088852956891060,0.267880141735077,0.128996342420578,0.026951659470797) * Get(-dx,dy);
res += float4(0.098282814025879,-0.147910907864571,-0.078049965202808,0.102914728224277) * Get(0,-dy);
res += float4(0.008127867244184,-0.065832078456879,-0.028782147914171,0.170130476355553) * Get(0,0);
res += float4(0.365375220775604,-0.387982338666916,0.026062777265906,-0.111401349306107) * Get(0,dy);
res += float4(-0.041074309498072,-0.064542002975941,-0.141581997275352,-0.012866410426795) * Get(dx,-dy);
res += float4(-0.089212328195572,-0.116798236966133,-0.226161777973175,-0.100429922342300) * Get(dx,0);
res += float4(-0.059408020228148,0.097411245107651,-0.053626313805580,-0.135953485965729) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
