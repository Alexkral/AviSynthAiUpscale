sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float res = 0;
res += dot(float4(0.077299207448959,-0.087755143642426,-0.095240354537964,0.136392802000046), Get(s1,-dx,-dy));
res += dot(float4(0.114451982080936,0.062056750059128,0.019804513081908,0.035905681550503), Get(s2,-dx,-dy));
res += dot(float4(0.181904017925262,-0.194456413388252,-0.099665798246861,-0.195708408951759), Get(s3,-dx,-dy));
res += dot(float4(0.229690819978714,-0.045522052794695,0.154529616236687,-0.006436142139137), Get(s4,-dx,-dy));
res += dot(float4(-0.013594004325569,0.344613134860992,0.423205912113190,-0.195648416876793), Get(s1,-dx,0));
res += dot(float4(-0.077605865895748,0.100691363215446,0.454248517751694,0.064924977719784), Get(s2,-dx,0));
res += dot(float4(0.266475766897202,-0.099249936640263,-0.260915875434875,-0.318531990051270), Get(s3,-dx,0));
res += dot(float4(-0.036258768290281,-0.073182046413422,-0.008159093558788,-0.101015023887157), Get(s4,-dx,0));
res += dot(float4(0.063310712575912,0.006037184037268,0.029712723568082,0.084390841424465), Get(s1,-dx,dy));
res += dot(float4(0.121166571974754,-0.073414772748947,0.140311092138290,-0.048222046345472), Get(s2,-dx,dy));
res += dot(float4(0.060438476502895,0.045208688825369,-0.070863187313080,-0.116696864366531), Get(s3,-dx,dy));
res += dot(float4(0.152008354663849,-0.114384993910789,0.057684082537889,-0.013271232135594), Get(s4,-dx,dy));
res += dot(float4(-0.049039516597986,-0.340692967176437,-0.185896456241608,0.316013902425766), Get(s1,0,-dy));
res += dot(float4(0.107953026890755,-0.265894383192062,-0.036284897476435,0.069656543433666), Get(s2,0,-dy));
res += dot(float4(0.388377398252487,0.325310170650482,0.042674712836742,-0.350754529237747), Get(s3,0,-dy));
res += dot(float4(-0.243646979331970,0.078667953610420,-0.428355753421783,0.210164517164230), Get(s4,0,-dy));
res += dot(float4(-0.512405276298523,0.031978014856577,-0.043106086552143,-0.399818122386932), Get(s1,0,0));
res += dot(float4(-0.489767283201218,0.108250692486763,-0.351815491914749,-0.434612900018692), Get(s2,0,0));
res += dot(float4(-0.235728457570076,0.327485859394073,0.460497736930847,0.304920524358749), Get(s3,0,0));
res += dot(float4(-0.053769029676914,0.627584934234619,0.120067641139030,-0.014529399573803), Get(s4,0,0));
res += dot(float4(0.000457308342448,-0.255374938249588,-0.187001481652260,0.116192832589149), Get(s1,0,dy));
res += dot(float4(0.172812879085541,-0.159179553389549,-0.220968425273895,0.388773769140244), Get(s2,0,dy));
res += dot(float4(-0.254871994256973,-0.026788096874952,-0.143415197730064,0.310659170150757), Get(s3,0,dy));
res += dot(float4(0.169912680983543,-0.068373769521713,-0.044847946614027,0.228554978966713), Get(s4,0,dy));
res += dot(float4(0.187013313174248,-0.057636655867100,0.110418841242790,0.026231946423650), Get(s1,dx,-dy));
res += dot(float4(0.050440542399883,-0.071921348571777,0.011479337699711,0.092135608196259), Get(s2,dx,-dy));
res += dot(float4(0.141358450055122,-0.299252688884735,-0.004504200071096,-0.183084934949875), Get(s3,dx,-dy));
res += dot(float4(-0.058348987251520,-0.072483085095882,0.234786406159401,0.103765659034252), Get(s4,dx,-dy));
res += dot(float4(0.312563359737396,0.281609982252121,-0.117504470050335,-0.071762613952160), Get(s1,dx,0));
res += dot(float4(0.167003080248833,0.411627203226089,0.071892037987709,-0.069378443062305), Get(s2,dx,0));
res += dot(float4(-0.210724458098412,-0.228385373950005,-0.010052782483399,0.199321702122688), Get(s3,dx,0));
res += dot(float4(0.069952435791492,-0.334338158369064,0.006639083847404,-0.439363360404968), Get(s4,dx,0));
res += dot(float4(0.111472994089127,-0.021481890231371,-0.048414312303066,0.037360433489084), Get(s1,dx,dy));
res += dot(float4(-0.023908048868179,-0.159120410680771,0.096832387149334,0.012768400833011), Get(s2,dx,dy));
res += dot(float4(-0.402402400970459,0.023288574069738,-0.085377752780914,0.382794409990311), Get(s3,dx,dy));
res += dot(float4(-0.102523103356361,-0.043943647295237,-0.014367423951626,0.114128224551678), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}
