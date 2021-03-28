sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.024719830602407,-0.707654774188995,-0.530290246009827,-0.011935355141759);
res += float4(-0.019977498799562,-0.011767573654652,-0.002723664510995,0.013600490987301) * Get(-ddx,-ddy);
res += float4(0.012536254711449,-0.027528444305062,-0.026905136182904,0.206486091017723) * Get(-ddx,-dy);
res += float4(-0.035034153610468,-0.011146364733577,0.043943256139755,0.086494058370590) * Get(-ddx,0);
res += float4(-0.015004632063210,0.015722654759884,0.039460550993681,-0.196825399994850) * Get(-ddx,dy);
res += float4(0.031291909515858,0.009368726983666,-0.036344863474369,0.119301535189152) * Get(-ddx,ddy);
res += float4(0.002205995842814,0.019630320370197,-0.002356018871069,-0.019527044147253) * Get(-dx,-ddy);
res += float4(-0.063376702368259,0.126165032386780,-0.019864950329065,0.098818123340607) * Get(-dx,-dy);
res += float4(-0.129143342375755,0.017601927742362,-0.084525994956493,-0.286432981491089) * Get(-dx,0);
res += float4(0.234751150012016,-0.051981311291456,-0.064308248460293,0.016359487548470) * Get(-dx,dy);
res += float4(-0.047180425375700,-0.021882504224777,0.027914000675082,-0.134220659732819) * Get(-dx,ddy);
res += float4(-0.033796239644289,-0.040828853845596,0.082757771015167,0.077208042144775) * Get(0,-ddy);
res += float4(0.098472006618977,-0.139107331633568,0.184883698821068,-0.430909782648087) * Get(0,-dy);
res += float4(0.917006969451904,0.123296104371548,0.604932129383087,0.439798623323441) * Get(0,0);
res += float4(-0.406852722167969,0.015007924288511,0.090815745294094,0.297781407833099) * Get(0,dy);
res += float4(-0.061332106590271,-0.003786938497797,-0.022694973275065,-0.136502385139465) * Get(0,ddy);
res += float4(0.002599478000775,0.110110767185688,-0.066645465791225,-0.075986623764038) * Get(dx,-ddy);
res += float4(-0.111401647329330,0.882669210433960,-0.227069810032845,0.052797563374043) * Get(dx,-dy);
res += float4(-0.268365532159805,-0.152856051921844,0.437873244285583,-0.240645304322243) * Get(dx,0);
res += float4(-0.078670226037502,0.033640354871750,-0.206975042819977,-0.038736179471016) * Get(dx,dy);
res += float4(0.038151156157255,0.019793525338173,0.054949123412371,0.080031462013721) * Get(dx,ddy);
res += float4(0.047692716121674,-0.054558172821999,-0.007400962058455,-0.036953262984753) * Get(ddx,-ddy);
res += float4(0.001175521989353,0.057865351438522,0.039404865354300,0.055257450789213) * Get(ddx,-dy);
res += float4(-0.047586467117071,-0.016332045197487,-0.018444718793035,0.147301912307739) * Get(ddx,0);
res += float4(-0.008926416747272,0.009763640351593,0.042097136378288,-0.069249600172043) * Get(ddx,dy);
res += float4(-0.033918000757694,-0.008085479028523,-0.033487994223833,0.011245210655034) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.270129561424255,-0.022056572139263,0.399950295686722,0.899755239486694) * min(float4(0, 0, 0, 0), res);
return res;
}