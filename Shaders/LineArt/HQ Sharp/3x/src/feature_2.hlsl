sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.010925312526524,0.148095443844795,-0.125456199049950,0.050847120583057);
res += float4(0.122255571186543,0.011935785412788,0.022456470876932,-0.100315682590008) * Get(-ddx,-ddy);
res += float4(0.001554806949571,-0.054410088807344,-0.022645784541965,0.148550838232040) * Get(-ddx,-dy);
res += float4(-0.077759020030499,0.042163178324699,-0.033275842666626,-0.135266125202179) * Get(-ddx,0);
res += float4(-0.049416873604059,0.049906410276890,0.082166098058224,0.025366231799126) * Get(-ddx,dy);
res += float4(-0.000984832993709,-0.033894039690495,-0.026049602776766,0.122989051043987) * Get(-ddx,ddy);
res += float4(-0.025917708873749,0.086302503943443,-0.096451304852962,0.070116363465786) * Get(-dx,-ddy);
res += float4(0.011261375620961,0.041587475687265,0.095821298658848,0.014965618960559) * Get(-dx,-dy);
res += float4(-0.085579395294189,-0.198437094688416,0.083024770021439,-0.450364828109741) * Get(-dx,0);
res += float4(0.113909699022770,-0.041686087846756,-0.409700930118561,0.027302237227559) * Get(-dx,dy);
res += float4(-0.101956069469452,-0.064690984785557,0.137351214885712,0.055707819759846) * Get(-dx,ddy);
res += float4(-0.013635224662721,-0.087827883660793,0.078077137470245,-0.110486082732677) * Get(0,-ddy);
res += float4(-0.155981108546257,0.020416203886271,-0.039339620620012,-0.250772655010223) * Get(0,-dy);
res += float4(0.410906970500946,-0.204399958252907,1.157885432243347,0.400092929601669) * Get(0,0);
res += float4(-0.235468849539757,0.007620649877936,-0.361250758171082,0.082498475909233) * Get(0,dy);
res += float4(0.183533936738968,0.102371089160442,0.039667841047049,-0.064605012536049) * Get(0,ddy);
res += float4(-0.071405552327633,-0.055028855800629,0.007064084056765,0.035469122231007) * Get(dx,-ddy);
res += float4(0.012340972200036,0.062296152114868,-0.250613093376160,-0.053995482623577) * Get(dx,-dy);
res += float4(-0.209425166249275,0.084611512720585,-0.256114840507507,0.150277063250542) * Get(dx,0);
res += float4(0.148593232035637,0.004043673630804,0.069029100239277,-0.024827968329191) * Get(dx,dy);
res += float4(0.027886835858226,0.042719963937998,-0.090634323656559,-0.043177410960197) * Get(dx,ddy);
res += float4(-0.056653644889593,-0.014365416951478,0.016960494220257,0.019898328930140) * Get(ddx,-ddy);
res += float4(0.090784691274166,-0.087995968759060,0.003064834745601,-0.047475956380367) * Get(ddx,-dy);
res += float4(-0.092051498591900,0.088254161179066,0.039469901472330,-0.011603891849518) * Get(ddx,0);
res += float4(0.032761484384537,-0.013191562145948,0.018993170931935,0.025398215278983) * Get(ddx,dy);
res += float4(0.023702476173639,-0.045047644525766,-0.090284265577793,0.020688701421022) * Get(ddx,ddy);
return res;
}