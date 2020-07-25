sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0155094554647803,0.0024967887438834,0.0039369887672365,-0.3553058803081512);
res += float4(0.0117951054126024,0.0074496972374618,-0.0530431754887104,-0.0167676229029894) * Get(-ddx,-ddy);
res += float4(-0.0240452755242586,-0.0621103830635548,-0.0019243860151619,0.0463885255157948) * Get(-ddx,-dy);
res += float4(0.0439265333116055,0.0852419883012772,0.0520098246634007,0.0163304116576910) * Get(-ddx,0);
res += float4(-0.0193464420735836,-0.0064479266293347,0.0487481988966465,0.0377948023378849) * Get(-ddx,dy);
res += float4(-0.0107674403116107,-0.0977771431207657,0.0135714896023273,-0.0174288172274828) * Get(-ddx,ddy);
res += float4(-0.0177496243268251,0.0056194239296019,0.0246740020811558,0.0014299916801974) * Get(-dx,-ddy);
res += float4(-0.0861312523484230,0.0244147107005119,0.1855217069387436,0.0205649398267269) * Get(-dx,-dy);
res += float4(-0.1440302431583405,0.0471234880387783,-0.3925639390945435,0.0326331816613674) * Get(-dx,0);
res += float4(0.0227666385471821,-0.1196756660938263,0.0783021599054337,-0.0497469045221806) * Get(-dx,dy);
res += float4(-0.0019552418962121,0.0517063513398170,-0.0118886465206742,0.0130569115281105) * Get(-dx,ddy);
res += float4(-0.0391024500131607,0.1041415259242058,0.0098602455109358,0.0057133366353810) * Get(0,-ddy);
res += float4(0.1528076678514481,-0.3163073360919952,-0.2224225997924805,0.0081429323181510) * Get(0,-dy);
res += float4(0.3323603868484497,0.1513649523258209,0.3356912732124329,0.6895832419395447) * Get(0,0);
res += float4(-0.2361195832490921,0.0204187743365765,-0.1712392121553421,-0.0355327948927879) * Get(0,dy);
res += float4(-0.0220174547284842,0.0687077268958092,0.0447927713394165,-0.0878349766135216) * Get(0,ddy);
res += float4(-0.0332865417003632,-0.0583626441657543,0.0610985197126865,0.0179209448397160) * Get(dx,-ddy);
res += float4(0.1376901119947433,0.1528723537921906,-0.0728517994284630,0.0313779525458813) * Get(dx,-dy);
res += float4(0.0482278317213058,-0.1214866638183594,0.1892384439706802,0.0424572937190533) * Get(dx,0);
res += float4(-0.0907301008701324,-0.0578260906040668,-0.0686545073986053,0.0586629472672939) * Get(dx,dy);
res += float4(-0.0137371737509966,-0.0008968185866252,0.0412541255354881,-0.0024984437040985) * Get(dx,ddy);
res += float4(0.0072530638426542,0.0734305828809738,-0.0299365911632776,-0.0206433646380901) * Get(ddx,-ddy);
res += float4(-0.0111857103183866,-0.0425229370594025,0.0280417520552874,0.0330410115420818) * Get(ddx,-dy);
res += float4(-0.0172738488763571,0.0714613795280457,-0.0741958990693092,0.0097163235768676) * Get(ddx,0);
res += float4(0.0225653331726789,0.0237385518848896,-0.0244179125875235,0.0240016672760248) * Get(ddx,dy);
res += float4(0.0013599820667878,-0.0194043125957251,-0.0089110285043716,-0.0207845531404018) * Get(ddx,ddy);
return res;
}
