sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.721159815788269,0.224139302968979,-0.289328038692474,-0.259883016347885);
res += float4(-0.022359725087881,-0.025348477065563,0.033723141998053,0.270135939121246) * Get(-ddx,-ddy);
res += float4(0.001472554053180,0.133445277810097,0.013899086974561,0.250653117895126) * Get(-ddx,-dy);
res += float4(0.061046812683344,-0.078684546053410,0.053373962640762,0.053331214934587) * Get(-ddx,0);
res += float4(-0.017946770414710,-0.076362982392311,-0.066911190748215,0.055915925651789) * Get(-ddx,dy);
res += float4(-0.015947192907333,-0.069234885275364,-0.020997565239668,-0.032017495483160) * Get(-ddx,ddy);
res += float4(0.055812459439039,-0.062098581343889,-0.006129631772637,-0.239393234252930) * Get(-dx,-ddy);
res += float4(-0.079365514218807,0.001097473665141,-0.126148372888565,0.113147750496864) * Get(-dx,-dy);
res += float4(-0.121999941766262,-0.312100082635880,-0.110010415315628,0.069591552019119) * Get(-dx,0);
res += float4(-0.094671748578548,-0.100384049117565,0.205733075737953,0.145059660077095) * Get(-dx,dy);
res += float4(0.032274220138788,0.060068059712648,-0.034875787794590,-0.018703874200583) * Get(-dx,ddy);
res += float4(-0.038387417793274,-0.180303737521172,-0.099812969565392,-0.113594770431519) * Get(0,-ddy);
res += float4(0.053532171994448,0.125084772706032,0.175618842244148,0.190183296799660) * Get(0,-dy);
res += float4(0.733105361461639,-0.285181343555450,0.573693335056305,-0.051814641803503) * Get(0,0);
res += float4(0.049100436270237,-0.025857910513878,-0.185451328754425,-0.098240770399570) * Get(0,dy);
res += float4(-0.001118877902627,-0.064440235495567,0.145018488168716,-0.047580827027559) * Get(0,ddy);
res += float4(0.012297889217734,0.143190473318100,0.019772950559855,0.066758446395397) * Get(dx,-ddy);
res += float4(0.038541588932276,-0.013322040438652,-0.086352951824665,-0.087021559476852) * Get(dx,-dy);
res += float4(0.313806742429733,0.481417983770370,0.052914738655090,-0.116643220186234) * Get(dx,0);
res += float4(0.033415827900171,-0.024999782443047,-0.136811584234238,-0.220300242304802) * Get(dx,dy);
res += float4(-0.021045917645097,-0.083683960139751,0.020132625475526,-0.001073555438779) * Get(dx,ddy);
res += float4(0.008511267602444,-0.013510791584849,0.034485325217247,0.003992809448391) * Get(ddx,-ddy);
res += float4(-0.010144890286028,-0.003625318408012,-0.024604363366961,0.066580839455128) * Get(ddx,-dy);
res += float4(-0.061560813337564,-0.029877418652177,0.051496211439371,-0.250823050737381) * Get(ddx,0);
res += float4(-0.007085113320500,0.077801033854485,-0.027172870934010,0.067136503756046) * Get(ddx,dy);
res += float4(0.016407549381256,0.075194701552391,-0.023945195600390,0.075145915150642) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.006964255589992,0.842344820499420,0.212342396378517,0.028056420385838) * min(float4(0, 0, 0, 0), res);
return res;
}