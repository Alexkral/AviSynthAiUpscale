sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.125783935189247,0.269758880138397,-0.144018068909645,-0.733838558197021);
res += float4(0.003577496623620,-0.002631699666381,-0.037339821457863,-0.003838399192318) * Get(-ddx,-ddy);
res += float4(0.044860318303108,0.063034340739250,-0.060060694813728,-0.004941963125020) * Get(-ddx,-dy);
res += float4(0.169692069292068,-0.031039588153362,0.092491105198860,0.015183614566922) * Get(-ddx,0);
res += float4(0.036395091563463,-0.048050086945295,-0.018762478604913,-0.011484459973872) * Get(-ddx,dy);
res += float4(-0.048434488475323,0.032968506217003,0.017090942710638,0.014142891392112) * Get(-ddx,ddy);
res += float4(0.002583860652521,-0.016742780804634,-0.162742897868156,0.066766381263733) * Get(-dx,-ddy);
res += float4(-0.026832856237888,0.124436564743519,-0.483188480138779,-0.092790864408016) * Get(-dx,-dy);
res += float4(-0.070039510726929,-0.126604855060577,-0.360979229211807,-0.024005649611354) * Get(-dx,0);
res += float4(0.163648337125778,-0.098356619477272,-0.206363156437874,-0.066395305097103) * Get(-dx,dy);
res += float4(-0.148508921265602,0.056859225034714,-0.013150661252439,-0.016293028369546) * Get(-dx,ddy);
res += float4(-0.141677543520927,0.021644335240126,0.130369350314140,-0.091131217777729) * Get(0,-ddy);
res += float4(-0.070434898138046,-0.268831610679626,0.165996730327606,0.286405563354492) * Get(0,-dy);
res += float4(-0.976890206336975,-0.790117859840393,0.714359879493713,0.759670674800873) * Get(0,0);
res += float4(0.247921735048294,-0.536812305450439,0.263682782649994,0.203118532896042) * Get(0,dy);
res += float4(0.417856007814407,-0.103987559676170,-0.024706028401852,0.004354232922196) * Get(0,ddy);
res += float4(0.030742693692446,0.066274881362915,-0.008036663755774,0.005393106956035) * Get(dx,-ddy);
res += float4(0.034794669598341,-0.024003956466913,-0.261600434780121,-0.168695390224457) * Get(dx,-dy);
res += float4(-0.385153859853745,-0.046305086463690,0.126538366079330,0.328959256410599) * Get(dx,0);
res += float4(-0.306834042072296,0.055057834833860,-0.187715247273445,-0.080653689801693) * Get(dx,dy);
res += float4(0.173978373408318,0.110145695507526,0.001906302524731,-0.046389408409595) * Get(dx,ddy);
res += float4(-0.021507063880563,0.005676487460732,-0.007251210045069,0.002120833843946) * Get(ddx,-ddy);
res += float4(0.057840496301651,-0.053385611623526,0.054292980581522,-0.015288521535695) * Get(ddx,-dy);
res += float4(0.070363260805607,0.002940660342574,0.034312773495913,-0.006411340553313) * Get(ddx,0);
res += float4(0.094469144940376,-0.091297864913940,0.067738331854343,-0.024980459362268) * Get(ddx,dy);
res += float4(-0.102044880390167,0.012609588913620,-0.000795910891611,0.020058372989297) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.005976231303066,0.460473269224167,-0.007033937610686,0.001638846239075) * min(float4(0, 0, 0, 0), res);
return res;
}
