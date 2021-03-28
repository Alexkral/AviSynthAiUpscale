sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.044157657772303,0.036690626293421,0.091150179505348,-0.551567137241364);
res += float4(0.017640134319663,-0.012634078972042,0.086701184511185,0.012079532258213) * Get(-ddx,-ddy);
res += float4(-0.004587583709508,0.009172703139484,-0.089860893785954,0.000934731680900) * Get(-ddx,-dy);
res += float4(0.036879830062389,0.048507425934076,-0.049087863415480,0.041487839072943) * Get(-ddx,0);
res += float4(-0.032427381724119,-0.115718677639961,0.069750100374222,-0.041271481662989) * Get(-ddx,dy);
res += float4(0.005735597107559,0.059390768408775,0.031476397067308,-0.013826456852257) * Get(-ddx,ddy);
res += float4(0.130394503474236,0.116446629166603,0.035641983151436,0.004104357678443) * Get(-dx,-ddy);
res += float4(0.024459434673190,0.090623430907726,-0.011290521360934,-0.009091840125620) * Get(-dx,-dy);
res += float4(-0.178868383169174,0.377890735864639,0.654958128929138,0.086569920182228) * Get(-dx,0);
res += float4(0.002905529690906,0.146815985441208,-0.070750340819359,0.087834477424622) * Get(-dx,dy);
res += float4(0.000336221506586,0.057382073253393,0.052925646305084,0.069861024618149) * Get(-dx,ddy);
res += float4(-0.330871760845184,-0.055614728480577,-0.106252253055573,0.128952935338020) * Get(0,-ddy);
res += float4(0.527150094509125,-0.139169633388519,-0.086700923740864,0.089034944772720) * Get(0,-dy);
res += float4(0.311743766069412,-0.345558643341064,-0.748726546764374,0.373322904109955) * Get(0,0);
res += float4(-0.066308401525021,-0.184028923511505,0.233170956373215,-0.056674279272556) * Get(0,dy);
res += float4(0.000913051771931,-0.075316444039345,-0.159378603100777,0.040017254650593) * Get(0,ddy);
res += float4(-0.479504346847534,0.057916209101677,0.034516092389822,-0.050260573625565) * Get(dx,-ddy);
res += float4(-0.256078362464905,0.047905690968037,0.023879183456302,0.119261592626572) * Get(dx,-dy);
res += float4(0.047918684780598,-0.105950720608234,-0.064021326601505,0.158172711730003) * Get(dx,0);
res += float4(0.145563855767250,-0.130834683775902,0.149998664855957,0.137703105807304) * Get(dx,dy);
res += float4(-0.034758590161800,0.109479583799839,0.012907085008919,-0.138136520981789) * Get(dx,ddy);
res += float4(0.130163535475731,0.039603088051081,-0.173816964030266,-0.012915582396090) * Get(ddx,-ddy);
res += float4(-0.061865340918303,-0.069787271320820,0.189395889639854,0.069504335522652) * Get(ddx,-dy);
res += float4(-0.022042490541935,-0.005767402239144,-0.133988395333290,0.035989344120026) * Get(ddx,0);
res += float4(-0.037235505878925,-0.008170173503458,-0.085069663822651,-0.082007043063641) * Get(ddx,dy);
res += float4(0.012830346822739,-0.004336564335972,0.053956203162670,0.057419180870056) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.071466185152531,0.002885429188609,0.941895484924316,1.013959050178528) * min(float4(0, 0, 0, 0), res);
return res;
}