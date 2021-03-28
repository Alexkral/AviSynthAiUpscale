sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.024484226480126,0.305377870798111,0.008525703102350,0.055828515440226);
res += float4(0.000820041226689,0.076453082263470,0.023170590400696,0.074604518711567) * Get(-ddx,-ddy);
res += float4(0.109129764139652,-0.008515627123415,-0.024438222870231,0.028408767655492) * Get(-ddx,-dy);
res += float4(-0.004957600496709,-0.108768559992313,0.124347142875195,-0.137920409440994) * Get(-ddx,0);
res += float4(-0.039074204862118,-0.048989936709404,-0.076916173100471,-0.051613334566355) * Get(-ddx,dy);
res += float4(0.102038539946079,0.001734878984280,0.025714613497257,0.042700503021479) * Get(-ddx,ddy);
res += float4(0.060633461922407,-0.081106267869473,-0.003631892148405,-0.028023168444633) * Get(-dx,-ddy);
res += float4(-0.046313043683767,-0.098704382777214,0.189406007528305,-0.100718446075916) * Get(-dx,-dy);
res += float4(-0.102460086345673,-0.239664599299431,0.063730590045452,0.806124925613403) * Get(-dx,0);
res += float4(0.142206177115440,-0.083463586866856,-0.089567877352238,-0.245180785655975) * Get(-dx,dy);
res += float4(-0.063066169619560,0.043574333190918,-0.096281975507736,-0.020260790362954) * Get(-dx,ddy);
res += float4(0.045138642191887,-0.094386547803879,0.069803498685360,0.052082773298025) * Get(0,-ddy);
res += float4(-0.269208073616028,-0.130013808608055,0.073917992413044,0.231352269649506) * Get(0,-dy);
res += float4(0.138580784201622,-0.225952893495560,-0.424110084772110,-1.071753144264221) * Get(0,0);
res += float4(0.019922705367208,-0.137613520026207,0.222010344266891,0.530593037605286) * Get(0,dy);
res += float4(0.016977638006210,-0.066343702375889,-0.027251228690147,-0.162240892648697) * Get(0,ddy);
res += float4(-0.113833144307137,0.048486571758986,0.003551592817530,-0.022938651964068) * Get(dx,-ddy);
res += float4(0.227333649992943,0.088502727448940,0.140787735581398,-0.099751330912113) * Get(dx,-dy);
res += float4(-0.114966496825218,-0.028666498139501,-0.371336787939072,0.126906350255013) * Get(dx,0);
res += float4(0.032270953059196,-0.055587410926819,0.095230251550674,-0.026927551254630) * Get(dx,dy);
res += float4(-0.019779182970524,0.021886464208364,0.066049359738827,0.006791620515287) * Get(dx,ddy);
res += float4(-0.014040755107999,0.018553270027041,-0.000360688136425,-0.007297721225768) * Get(ddx,-ddy);
res += float4(-0.033696025609970,-0.056724768131971,0.006366347894073,-0.004470399580896) * Get(ddx,-dy);
res += float4(0.045468449592590,-0.000214650863199,0.138803899288177,0.043871589004993) * Get(ddx,0);
res += float4(-0.194330811500549,0.018705431371927,-0.122562706470490,-0.101144179701805) * Get(ddx,dy);
res += float4(0.033211290836334,0.013362648896873,-0.010517233982682,0.060137216001749) * Get(ddx,ddy);
return res;
}
