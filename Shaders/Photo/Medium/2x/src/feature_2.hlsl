sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0033094598911703,0.1972424983978271,-0.0526681318879128,-0.1063649207353592);
res += float4(-0.0081174615770578,0.0057395948097110,0.0056570442393422,-0.0053748581558466) * Get(-ddx,-ddy);
res += float4(0.0187967121601105,0.0276041869074106,-0.0298459399491549,0.0645227953791618) * Get(-ddx,-dy);
res += float4(-0.0541859716176987,-0.0121927810832858,-0.0965099632740021,0.0031373619567603) * Get(-ddx,0);
res += float4(0.0451162904500961,-0.0098993554711342,0.0635516718029976,0.0094581507146358) * Get(-ddx,dy);
res += float4(0.0012318129884079,0.0032980488613248,0.0173914544284344,-0.0191727876663208) * Get(-ddx,ddy);
res += float4(0.0539341121912003,-0.0243026651442051,0.0390416905283928,-0.0541939064860344) * Get(-dx,-ddy);
res += float4(-0.1423149108886719,-0.0109203830361366,-0.1170317009091377,-0.0324064716696739) * Get(-dx,-dy);
res += float4(0.1010714843869209,0.0319982729852200,-0.0194572303444147,0.3909324705600739) * Get(-dx,0);
res += float4(0.0054741557687521,-0.0049187149852514,0.0565299503505230,-0.0226624514907598) * Get(-dx,dy);
res += float4(0.0213223360478878,0.0108643481507897,-0.0147742992267013,0.0503155551850796) * Get(-dx,ddy);
res += float4(-0.0093455975875258,0.0273434296250343,-0.0937825590372086,-0.0057723862119019) * Get(0,-ddy);
res += float4(0.3160622417926788,0.0509551540017128,-0.0552944652736187,-0.0697434395551682) * Get(0,-dy);
res += float4(-0.3341456353664398,-0.4302082359790802,0.2802395820617676,0.1507497280836105) * Get(0,0);
res += float4(0.2181414365768433,-0.0213573519140482,0.0992708727717400,0.2028344571590424) * Get(0,dy);
res += float4(-0.1805701851844788,-0.0868756324052811,0.1018822193145752,-0.0406300053000450) * Get(0,ddy);
res += float4(-0.0004786406643689,-0.0473043732345104,-0.0470438972115517,0.0132184308022261) * Get(dx,-ddy);
res += float4(0.0242640599608421,-0.0415700823068619,-0.1480331271886826,-0.1074910759925842) * Get(dx,-dy);
res += float4(-0.0615644678473473,-0.2553924918174744,0.0996971130371094,-0.1984657347202301) * Get(dx,0);
res += float4(-0.0342847667634487,-0.0827960446476936,-0.0064764302223921,0.0373324155807495) * Get(dx,dy);
res += float4(0.0517740510404110,-0.0172174572944641,0.0243388917297125,-0.0564514175057411) * Get(dx,ddy);
res += float4(0.0198824573308229,-0.0075586950406432,-0.0380111187696457,-0.0031115286983550) * Get(ddx,-ddy);
res += float4(-0.0141269620507956,0.0494910553097725,0.0779126435518265,0.0377074852585793) * Get(ddx,-dy);
res += float4(-0.0220991112291813,0.0243177078664303,-0.1323725283145905,-0.0255064181983471) * Get(ddx,0);
res += float4(0.0011310550617054,-0.0442894697189331,0.0178892519325018,-0.0216388776898384) * Get(ddx,dy);
res += float4(-0.0226130969822407,0.0065058381296694,0.0076861465349793,0.0063562882132828) * Get(ddx,ddy);
return res;
}
