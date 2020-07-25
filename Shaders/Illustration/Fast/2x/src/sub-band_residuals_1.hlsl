sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.5894373059272766,-0.0277843009680510,-0.0580756664276123,-0.1497671455144882);
res += mul(Get(s00, float4x4(-0.6319776773452759,-0.3802021443843842,0.0718883946537971,0.3710884451866150,0.0291787683963776,0.2389850169420242,-0.5632331371307373,-0.0604527629911900,-0.4063524007797241,-0.3057486116886139,0.2259691804647446,-0.2428666055202484,-0.0032282946631312,-0.4485699236392975,-0.5620771050453186,-0.5931991338729858));
res += mul(Get(s10, float4x4(0.3335244953632355,0.1313341259956360,-0.0357131510972977,-0.0504585877060890,-0.3251714110374451,-0.3076061904430389,-0.0403076596558094,-0.2774745821952820,-0.1444281190633774,-0.5053728818893433,-0.4739764034748077,-0.2219439744949341,-0.3048642277717590,-0.0937822237610817,-0.2245137393474579,0.2559031844139099));
res += mul(Get(s20, float4x4(-0.0022434892598540,-0.7475028038024902,0.1857597827911377,-0.0280503574758768,-0.2805433273315430,0.0024004515726119,0.5175969004631042,0.0091187320649624,0.3277365267276764,0.1775045543909073,-0.2038611322641373,0.1016386002302170,-0.2702310681343079,0.2087085843086243,0.0754776969552040,-0.2891358137130737));
res += Get(s3);
res = max(float4(0, 0, 0, 0), res) + float4(0.3628396093845367,0.4221612811088562,0.9991049766540527,0.0523057766258717) * min(float4(0, 0, 0, 0), res);
return res;
}
