sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.043764796108007,0.498540192842484,0.001827546395361,-0.341229200363159);
res += float4(0.037665948271751,0.063261128962040,0.018140044063330,0.021091191098094) * Get(-ddx,-ddy);
res += float4(-0.065861664712429,0.050245456397533,-0.050904911011457,0.004871693905443) * Get(-ddx,-dy);
res += float4(0.048944070935249,-0.044983375817537,-0.043163027614355,-0.027058778330684) * Get(-ddx,0);
res += float4(-0.092883273959160,0.048893958330154,-0.029179537668824,0.033182613551617) * Get(-ddx,dy);
res += float4(0.044899508357048,0.031669240444899,-0.002394302049652,-0.035796951502562) * Get(-ddx,ddy);
res += float4(-0.040662493556738,-0.019278153777122,0.050050962716341,-0.084859520196915) * Get(-dx,-ddy);
res += float4(-0.067245922982693,-0.066091038286686,0.022135630249977,0.043763473629951) * Get(-dx,-dy);
res += float4(0.076962701976299,0.046550512313843,-0.031672090291977,0.095241807401180) * Get(-dx,0);
res += float4(0.004382168408483,0.126314103603363,-0.041241396218538,0.036190021783113) * Get(-dx,dy);
res += float4(-0.014295672997832,-0.005882123485208,0.149316713213921,0.026447633281350) * Get(-dx,ddy);
res += float4(0.072738863527775,-0.045889422297478,-0.138389259576797,0.065767414867878) * Get(0,-ddy);
res += float4(0.047153167426586,-0.160134807229042,0.089749515056610,0.080644130706787) * Get(0,-dy);
res += float4(0.011821903288364,-0.460756748914719,0.224166616797447,0.435544490814209) * Get(0,0);
res += float4(-0.001944289426319,-0.147508189082146,0.019169876351953,0.195723026990891) * Get(0,dy);
res += float4(0.056581608951092,-0.045294880867004,-0.162390530109406,-0.001989413518459) * Get(0,ddy);
res += float4(-0.088093169033527,-0.034807130694389,-0.046062253415585,0.018872404471040) * Get(dx,-ddy);
res += float4(0.015835203230381,-0.051490839570761,-0.159937664866447,-0.040746930986643) * Get(dx,-dy);
res += float4(-0.036549683660269,0.042195238173008,0.085795491933823,0.262138605117798) * Get(dx,0);
res += float4(0.045544277876616,-0.177658021450043,-0.005143549758941,-0.040584724396467) * Get(dx,dy);
res += float4(-0.040895588696003,0.069110333919525,0.041062045842409,0.003187784459442) * Get(dx,ddy);
res += float4(0.004461615346372,0.024798555299640,0.029917042702436,-0.026053113862872) * Get(ddx,-ddy);
res += float4(0.042152617126703,-0.018314156681299,0.046488955616951,0.068911202251911) * Get(ddx,-dy);
res += float4(-0.039075572043657,-0.037884492427111,-0.076510228216648,0.050367660820484) * Get(ddx,0);
res += float4(-0.090051360428333,-0.029919849708676,0.012245799414814,-0.036477450281382) * Get(ddx,dy);
res += float4(-0.022332048043609,0.003462587948889,0.002324616070837,-0.016788028180599) * Get(ddx,ddy);
return res;
}
