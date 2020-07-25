sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0280689802020788,0.0678109005093575,0.1290648132562637,0.0026979125104845);
res += float4(-0.0126249920576811,0.0151221044361591,0.0063505158759654,-0.0291153956204653) * Get(-ddx,-ddy);
res += float4(-0.0207496769726276,-0.0517944730818272,-0.0167934410274029,0.0009098362643272) * Get(-ddx,-dy);
res += float4(0.0683847218751907,-0.0030743135139346,0.0043758796527982,0.0716468021273613) * Get(-ddx,0);
res += float4(0.0333750918507576,-0.0304362811148167,0.0020380911882967,-0.0245559122413397) * Get(-ddx,dy);
res += float4(-0.0121467728167772,0.0125787761062384,0.0020612601656467,0.0033505700994283) * Get(-ddx,ddy);
res += float4(0.0128661319613457,-0.0252338591963053,0.0010867167729884,-0.0064328243024647) * Get(-dx,-ddy);
res += float4(0.0454866103827953,0.0485574081540108,-0.0017469659214839,0.0504348054528236) * Get(-dx,-dy);
res += float4(-0.3299850523471832,0.1917903274297714,0.2356890141963959,-0.1763164550065994) * Get(-dx,0);
res += float4(-0.0528581067919731,0.0972589179873466,-0.1019194200634956,0.0771180912852287) * Get(-dx,dy);
res += float4(-0.0069256131537259,-0.0080032367259264,0.0009240452782251,-0.0334940999746323) * Get(-dx,ddy);
res += float4(0.0399430729448795,0.1358076184988022,-0.0634073391556740,0.0038850845303386) * Get(0,-ddy);
res += float4(-0.1478566229343414,-0.3437847793102264,0.2017940133810043,-0.0438724830746651) * Get(0,-dy);
res += float4(-0.0649836212396622,-0.2721545696258545,-0.2555960416793823,0.0396325103938580) * Get(0,0);
res += float4(0.3206529915332794,-0.1206731647253036,-0.2279624342918396,0.0200838483870029) * Get(0,dy);
res += float4(-0.0319028794765472,0.0349413827061653,0.0386083349585533,0.0864545181393623) * Get(0,ddy);
res += float4(0.0237170439213514,0.0013857173034921,0.0236630495637655,-0.0736184492707253) * Get(dx,-ddy);
res += float4(0.0027681612409651,-0.0104995910078287,0.0102193336933851,-0.0362839028239250) * Get(dx,-dy);
res += float4(0.2424921393394470,0.2784495651721954,-0.3688345253467560,0.0127064092084765) * Get(dx,0);
res += float4(0.0093546714633703,0.0721850916743279,0.1347836256027222,0.0638279765844345) * Get(dx,dy);
res += float4(-0.0364422053098679,0.0022335606627166,-0.0728286355733871,0.0603330247104168) * Get(dx,ddy);
res += float4(0.0047075022011995,-0.0207108054310083,-0.0025666586589068,0.0026672254316509) * Get(ddx,-ddy);
res += float4(-0.0425916574895382,-0.0473658069968224,0.0357505977153778,-0.0300985220819712) * Get(ddx,-dy);
res += float4(-0.0889224782586098,-0.0773667991161346,-0.0579314790666103,0.0469404980540276) * Get(ddx,0);
res += float4(-0.0439592637121677,0.0285546854138374,-0.0062741911970079,-0.0721958801150322) * Get(ddx,dy);
res += float4(0.0152727803215384,-0.0108735160902143,0.0196182690560818,-0.0031652164179832) * Get(ddx,ddy);
return res;
}
