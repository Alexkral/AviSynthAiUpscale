sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.192059099674225,-0.170409366488457,-0.369170993566513,-0.466949552297592);
res += float4(0.132213816046715,-0.013647073879838,0.014990745112300,0.014243457466364) * Get(-ddx,-ddy);
res += float4(0.028581388294697,-0.006426907144487,-0.074123233556747,-0.024842869490385) * Get(-ddx,-dy);
res += float4(0.159116521477699,-0.038973070681095,0.137251451611519,0.066141501069069) * Get(-ddx,0);
res += float4(-0.025190440937877,-0.015825144946575,-0.094173662364483,-0.020728584378958) * Get(-ddx,dy);
res += float4(-0.037357885390520,-0.027009868994355,-0.005858574062586,0.029279906302691) * Get(-ddx,ddy);
res += float4(-0.087725713849068,-0.127457544207573,0.004066003486514,-0.022967344149947) * Get(-dx,-ddy);
res += float4(-0.368060290813446,0.064460307359695,-0.041351169347763,0.130898013710976) * Get(-dx,-dy);
res += float4(-0.354893416166306,-0.168959528207779,-0.306687474250793,-0.253186196088791) * Get(-dx,0);
res += float4(0.049509860575199,0.098750561475754,0.085980534553528,0.260443300008774) * Get(-dx,dy);
res += float4(0.154577285051346,0.074290968477726,-0.190836206078529,-0.015240950509906) * Get(-dx,ddy);
res += float4(-0.061476521193981,0.312641739845276,-0.044658541679382,0.057267818599939) * Get(0,-ddy);
res += float4(0.654076755046844,-0.611877381801605,0.302966773509979,0.008538696914911) * Get(0,-dy);
res += float4(-0.567325472831726,0.335767567157745,0.967058539390564,0.090281493961811) * Get(0,0);
res += float4(0.124823756515980,-0.173361867666245,-0.272865235805511,0.742723047733307) * Get(0,dy);
res += float4(-0.120334498584270,0.191191852092743,0.065951123833656,-0.096296921372414) * Get(0,ddy);
res += float4(-0.129894435405731,-0.053407322615385,-0.052412591874599,-0.038007058203220) * Get(dx,-ddy);
res += float4(-0.025507295504212,-0.033320456743240,0.034285679459572,-0.002738202456385) * Get(dx,-dy);
res += float4(-0.047586932778358,0.490713387727737,0.042999707162380,-0.007701861672103) * Get(dx,0);
res += float4(0.082333065569401,0.130985647439957,0.035748329013586,-0.280122667551041) * Get(dx,dy);
res += float4(0.048115104436874,-0.159160733222961,-0.122651219367981,0.093150705099106) * Get(dx,ddy);
res += float4(0.014071687124670,-0.060335237532854,-0.016470912843943,-0.015687186270952) * Get(ddx,-ddy);
res += float4(0.069456301629543,0.076212763786316,-0.107117906212807,-0.012298390269279) * Get(ddx,-dy);
res += float4(0.010022756643593,0.021233657374978,0.236492604017258,0.014172104187310) * Get(ddx,0);
res += float4(-0.045799639075994,-0.083337448537350,-0.136544302105904,0.050590611994267) * Get(ddx,dy);
res += float4(-0.042949292808771,0.073125362396240,0.051909435540438,-0.011363819241524) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.980549275875092,0.914440691471100,0.687309861183167,-0.092687755823135) * min(float4(0, 0, 0, 0), res);
return res;
}
