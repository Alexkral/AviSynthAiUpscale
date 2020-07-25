sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0351303145289421,-0.0416821092367172,-0.0040509472601116,0.0387085899710655);
res += mul(Get(s0), float4x4(-0.0714556574821472,0.1228611096739769,0.0027899830602109,-0.1174252107739449,0.0732806324958801,0.1573675870895386,0.0174015555530787,0.0897745713591576,-0.3468249142169952,0.3816031515598297,0.2688768506050110,-0.2575304210186005,-0.0197759103029966,-0.0616534054279327,-0.0109861530363560,0.0747066214680672));
res += mul(Get(s1), float4x4(0.1890493184328079,-0.0809996724128723,0.0100499885156751,-0.0370707996189594,-0.1738241761922836,-0.6101751327514648,0.1727768331766129,0.2032368630170822,0.0069285952486098,-0.0316188968718052,-0.0275983642786741,0.1029225289821625,0.1339256316423416,-0.0008379587088712,-0.0375465638935566,-0.0453099571168423));
res += mul(Get(s2), float4x4(0.0967623814940453,0.0495071746408939,-0.0427735671401024,0.0676000118255615,-0.0350294820964336,-0.0610776990652084,0.0201709773391485,-0.0791756734251976,-0.0133883813396096,-0.1120545119047165,-0.0330653153359890,0.0997251048684120,0.0465377755463123,-0.0927809998393059,-0.0318001583218575,-0.0751707851886749));
res += mul(Get(s3), float4x4(-0.0018605478107929,-0.0667462199926376,-0.1732861995697021,-0.2673196494579315,0.0057982527650893,0.0436285436153412,0.0155174378305674,0.0563899837434292,-0.1782207787036896,0.1866252571344376,0.0077321180142462,-0.0680530592799187,-0.1982262134552002,-0.0181569010019302,-0.0178922731429338,0.0267740041017532));
res += mul(Get(s4), float4x4(-0.0525542274117470,-0.1107740625739098,0.1034747660160065,0.0594868101179600,-0.0422207005321980,0.1246137246489525,0.0714512541890144,-0.1647180318832397,-0.0305939279496670,0.0506934747099876,-0.0204937681555748,0.0087831337004900,0.0804879143834114,0.0636891052126884,0.1052690297365189,-0.1051401942968369));
res += mul(Get(s5), float4x4(0.0672805160284042,-0.0101297460496426,0.0300726536661386,0.0071382587775588,-0.1732427477836609,0.0342870503664017,0.1790717989206314,0.0495112873613834,-0.4308218657970428,0.5770744085311890,-0.2367602884769440,0.1591411679983139,0.0839504599571228,-0.0047574900090694,0.1123361513018608,0.0690185353159904));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(1.7603179216384888,0.0531230978667736,0.1152568981051445,2.2114076614379883) * min(float4(0, 0, 0, 0), res);
return res;
}
