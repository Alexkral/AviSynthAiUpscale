sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.508984267711639,0.064886189997196,0.236094355583191,-0.239041775465012);
res += float4(-0.038210723549128,-0.031784065067768,-0.013998968526721,0.039689451456070) * Get(-ddx,-ddy);
res += float4(0.039002992212772,0.064142696559429,-0.031395819038153,-0.163525104522705) * Get(-ddx,-dy);
res += float4(0.009710656479001,0.045410033315420,0.056522734463215,0.125964209437370) * Get(-ddx,0);
res += float4(-0.024317605420947,-0.071661882102489,-0.048637282103300,-0.027420111000538) * Get(-ddx,dy);
res += float4(0.016876118257642,0.025181422010064,0.027512762695551,0.021232109516859) * Get(-ddx,ddy);
res += float4(0.065561525523663,0.075935602188110,0.067863300442696,-0.083212167024612) * Get(-dx,-ddy);
res += float4(0.022500885650516,-0.067632019519806,-0.077070862054825,0.236397340893745) * Get(-dx,-dy);
res += float4(-0.186445206403732,0.474083870649338,-0.071314722299576,-0.579184234142303) * Get(-dx,0);
res += float4(0.057464763522148,-0.023476565256715,-0.052446577697992,-0.012110047973692) * Get(-dx,dy);
res += float4(0.003893961198628,0.049047745764256,0.043278917670250,-0.004617147147655) * Get(-dx,ddy);
res += float4(-0.029405089095235,0.027372287586331,0.009501247666776,0.144716098904610) * Get(0,-ddy);
res += float4(-0.112915702164173,-0.123825661838055,0.192342206835747,-0.244054004549980) * Get(0,-dy);
res += float4(-0.674403607845306,-0.520698249340057,-0.677599430084229,1.099440217018127) * Get(0,0);
res += float4(-0.115636788308620,0.000829843571410,-0.277730882167816,-0.272293537855148) * Get(0,dy);
res += float4(0.034109838306904,-0.020504925400019,-0.001311575411819,0.036234874278307) * Get(0,ddy);
res += float4(0.026862068101764,-0.040264077484608,-0.033200811594725,-0.002647931687534) * Get(dx,-ddy);
res += float4(0.003787852358073,0.053440582007170,-0.044452361762524,0.163745746016502) * Get(dx,-dy);
res += float4(0.174649313092232,0.072032265365124,-0.647418797016144,0.347372740507126) * Get(dx,0);
res += float4(0.013023931533098,0.072083152830601,-0.122193455696106,-0.000457933492726) * Get(dx,dy);
res += float4(-0.005971351638436,-0.026261625811458,-0.001144742243923,-0.069773420691490) * Get(dx,ddy);
res += float4(-0.011305906809866,-0.019225746393204,-0.111498527228832,-0.057954538613558) * Get(ddx,-ddy);
res += float4(0.031321376562119,0.058484893292189,0.032486449927092,-0.135682120919228) * Get(ddx,-dy);
res += float4(-0.052447512745857,-0.108836889266968,-0.080727711319923,-0.027655309066176) * Get(ddx,0);
res += float4(0.034976895898581,0.020925877615809,0.056231260299683,-0.109269060194492) * Get(ddx,dy);
res += float4(0.005497104953974,-0.011142961680889,-0.068932361900806,-0.023016901686788) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(2.577767848968506,-0.461281210184097,0.329996049404144,0.928627431392670) * min(float4(0, 0, 0, 0), res);
return res;
}