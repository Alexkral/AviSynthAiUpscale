sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0011657292488962,-0.0033582774922252,0.0056463452056050,0.0063912984915078);
res += float4(-0.0162362195551395,0.0220054425299168,-0.0578211359679699,0.0134792765602469) * Get(-ddx,-ddy);
res += float4(0.0360616445541382,0.0322526693344116,0.0429898165166378,0.0209788493812084) * Get(-ddx,-dy);
res += float4(0.0109787229448557,0.0350972972810268,-0.0057819616049528,-0.0767636969685555) * Get(-ddx,0);
res += float4(0.0040557784959674,-0.0413318127393723,-0.0136644979938865,-0.0184914488345385) * Get(-ddx,dy);
res += float4(-0.0232431422919035,0.0333483591675758,-0.0238694902509451,-0.0038962198887020) * Get(-ddx,ddy);
res += float4(0.0031229418236762,0.0211055465042591,0.0548574291169643,0.0092100789770484) * Get(-dx,-ddy);
res += float4(-0.0215337295085192,-0.0036589687224478,-0.0566387996077538,-0.0280857849866152) * Get(-dx,-dy);
res += float4(-0.1052315309643745,-0.1507841348648071,-0.0991881489753723,0.2124225646257401) * Get(-dx,0);
res += float4(0.0413051135838032,0.1078450679779053,0.0504846982657909,0.0200097300112247) * Get(-dx,dy);
res += float4(-0.0200997777283192,-0.0294892955571413,-0.0123517112806439,-0.0182262249290943) * Get(-dx,ddy);
res += float4(0.0296183098107576,0.0017996967071667,-0.0193856358528137,-0.0382242910563946) * Get(0,-ddy);
res += float4(-0.0363445617258549,-0.2441982924938202,0.0981515645980835,0.0616616010665894) * Get(0,-dy);
res += float4(0.2058092802762985,0.2785532772541046,0.0074476841837168,-0.5282331705093384) * Get(0,0);
res += float4(0.0050579481758177,-0.0880514085292816,-0.2321824580430984,0.3693921566009521) * Get(0,dy);
res += float4(-0.0259138308465481,0.0642071738839149,0.0551966242492199,-0.0665315613150597) * Get(0,ddy);
res += float4(-0.0089660203084350,0.0095676407217979,0.0197264105081558,0.0645811855792999) * Get(dx,-ddy);
res += float4(0.0694243311882019,0.0600840672850609,-0.0915222838521004,-0.2344309687614441) * Get(dx,-dy);
res += float4(-0.2833487689495087,0.0237926300615072,0.2765247821807861,0.2819003760814667) * Get(dx,0);
res += float4(0.1379382461309433,-0.0583007037639618,0.0380698852241039,0.0215499699115753) * Get(dx,dy);
res += float4(0.0051477607339621,-0.0280185043811798,0.0323846302926540,-0.0241883676499128) * Get(dx,ddy);
res += float4(0.0059396037831903,-0.0126352719962597,0.0085664885118604,-0.0354639515280724) * Get(ddx,-ddy);
res += float4(-0.0293992348015308,0.0658648684620857,0.0412681885063648,0.0663040950894356) * Get(ddx,-dy);
res += float4(0.0693315789103508,-0.0343002155423164,-0.1437899172306061,-0.1097225323319435) * Get(ddx,0);
res += float4(-0.0811848118901253,-0.0517278574407101,0.0134318610653281,0.0242551285773516) * Get(ddx,dy);
res += float4(0.0091443918645382,0.0074184304103255,0.0097046159207821,0.0076077678240836) * Get(ddx,ddy);
return res;
}
