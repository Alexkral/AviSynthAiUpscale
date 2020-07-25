sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0137492176145315,-0.0073265386745334,-0.2056715339422226,-0.0763898640871048);
res += float4(0.0114648044109344,-0.0441142469644547,0.0086341993883252,-0.0279942192137241) * Get(-ddx,-ddy);
res += float4(-0.0354107804596424,0.0053644930012524,-0.0571443699300289,0.0211629513651133) * Get(-ddx,-dy);
res += float4(0.1215584650635719,-0.0139101818203926,-0.0349049344658852,-0.0431973226368427) * Get(-ddx,0);
res += float4(-0.0695313140749931,0.0074840816669166,-0.0315492041409016,0.0005531492643058) * Get(-ddx,dy);
res += float4(-0.0218951571732759,-0.0510705634951591,0.0594625398516655,0.0057286084629595) * Get(-ddx,ddy);
res += float4(0.0093345055356622,0.0881875008344650,0.0167880654335022,0.0138275641947985) * Get(-dx,-ddy);
res += float4(-0.1283157020807266,-0.0542077608406544,-0.1348859518766403,-0.0455107688903809) * Get(-dx,-dy);
res += float4(0.0231088455766439,-0.1739604324102402,0.0376219227910042,-0.1964539438486099) * Get(-dx,0);
res += float4(-0.0430547259747982,0.0536110214889050,0.1083755865693092,0.0012516406131908) * Get(-dx,dy);
res += float4(0.0663626417517662,0.0406911782920361,-0.0553559996187687,0.0487257130444050) * Get(-dx,ddy);
res += float4(-0.1457362323999405,0.0287904031574726,-0.0806873440742493,-0.0349163115024567) * Get(0,-ddy);
res += float4(0.1354314982891083,-0.1000627353787422,-0.3668738603591919,-0.0161656253039837) * Get(0,-dy);
res += float4(-0.0320496857166290,-0.3196689188480377,0.6468253731727600,0.4425254464149475) * Get(0,0);
res += float4(0.0150690283626318,0.2366888821125031,-0.0287522915750742,-0.0024980963207781) * Get(0,dy);
res += float4(-0.0740199610590935,-0.0401386842131615,-0.0040751658380032,0.1654579788446426) * Get(0,ddy);
res += float4(0.0615643337368965,-0.0116638122126460,0.0275253038853407,-0.0059787463396788) * Get(dx,-ddy);
res += float4(0.0835519582033157,0.0608421191573143,-0.0665223747491837,0.0343024507164955) * Get(dx,-dy);
res += float4(0.0099698435515165,0.2879854440689087,0.1047791168093681,-0.0179925803095102) * Get(dx,0);
res += float4(0.0452438108623028,-0.0142242973670363,0.0255359392613173,-0.0384787544608116) * Get(dx,dy);
res += float4(-0.0043418412096798,0.0529599152505398,0.0046862894669175,-0.0182564407587051) * Get(dx,ddy);
res += float4(-0.0147743448615074,0.0206411685794592,-0.0458012223243713,-0.0500498078763485) * Get(ddx,-ddy);
res += float4(-0.0045121069997549,-0.0538053773343563,0.0831799507141113,0.0306612234562635) * Get(ddx,-dy);
res += float4(-0.0851049870252609,-0.0222986005246639,0.1416818052530289,-0.0710636526346207) * Get(ddx,0);
res += float4(-0.0238507352769375,0.0089376019313931,-0.0454091504216194,-0.0575353242456913) * Get(ddx,dy);
res += float4(0.0641557574272156,0.0177225787192583,0.0232855677604675,-0.0202354807406664) * Get(ddx,ddy);
return res;
}
