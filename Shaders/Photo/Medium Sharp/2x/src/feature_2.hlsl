sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.056604780256748,0.244729936122894,0.033942747861147,-0.246862366795540);
res += float4(-0.033153884112835,0.044165283441544,-0.028326544910669,0.142948478460312) * Get(-ddx,-ddy);
res += float4(-0.084430821239948,0.016014438122511,0.089072421193123,-0.071865521371365) * Get(-ddx,-dy);
res += float4(0.157856643199921,-0.037618372589350,0.045840322971344,-0.092629395425320) * Get(-ddx,0);
res += float4(0.069119319319725,0.089329391717911,-0.037711933255196,-0.020924964919686) * Get(-ddx,dy);
res += float4(-0.044934082776308,-0.022776236757636,-0.011214378289878,0.000320264109178) * Get(-ddx,ddy);
res += float4(0.185735672712326,-0.018468247726560,-0.149174466729164,0.316051185131073) * Get(-dx,-ddy);
res += float4(0.028300641104579,-0.106767661869526,0.222921863198280,-0.035996623337269) * Get(-dx,-dy);
res += float4(0.751808166503906,-0.082333132624626,0.157637432217598,-0.462192177772522) * Get(-dx,0);
res += float4(-0.032899562269449,-0.048751961439848,0.108078330755234,-0.041430585086346) * Get(-dx,dy);
res += float4(0.019991522654891,0.106122881174088,-0.097175359725952,-0.001559995347634) * Get(-dx,ddy);
res += float4(-0.170241415500641,-0.008277925662696,0.096001513302326,0.327286839485168) * Get(0,-ddy);
res += float4(-0.105832546949387,0.224003568291664,0.407051384449005,0.436174005270004) * Get(0,-dy);
res += float4(-0.818407118320465,-0.228141427040100,-0.728000462055206,-0.031995620578527) * Get(0,0);
res += float4(0.018590047955513,-0.998500287532806,0.025746054947376,-0.168447256088257) * Get(0,dy);
res += float4(0.013062474317849,-0.043442711234093,-0.112869784235954,-0.008131218142807) * Get(0,ddy);
res += float4(0.014400672167540,-0.023910596966743,0.200458899140358,0.032448526471853) * Get(dx,-ddy);
res += float4(0.090551026165485,-0.113622203469276,-0.286250233650208,0.040007181465626) * Get(dx,-dy);
res += float4(-0.021668162196875,0.293567776679993,0.110455542802811,0.017794173210859) * Get(dx,0);
res += float4(-0.075367368757725,-0.055395293980837,-0.258796781301498,-0.031097082421184) * Get(dx,dy);
res += float4(-0.013384623453021,0.028318185359240,0.115310132503510,-0.061988979578018) * Get(dx,ddy);
res += float4(-0.011809599585831,0.045898202806711,-0.003263166872784,-0.022202648222446) * Get(ddx,-ddy);
res += float4(-0.000999979674816,-0.003759310580790,-0.039765860885382,-0.021212903782725) * Get(ddx,-dy);
res += float4(-0.025721069425344,-0.126085802912712,-0.052811648696661,-0.080269157886505) * Get(ddx,0);
res += float4(0.038693491369486,0.014512545429170,0.185695216059685,0.032048024237156) * Get(ddx,dy);
res += float4(0.018185622990131,-0.042859572917223,0.004073370713741,0.056322079151869) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.528887629508972,0.005642006173730,0.908910810947418,-0.023825183510780) * min(float4(0, 0, 0, 0), res);
return res;
}