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
float4 res = float4(-0.1173192337155342,0.0186685565859079,-0.0245428681373596,0.0860777124762535);
res += mul(Get(s0), float4x4(0.2980832159519196,-0.0163184925913811,-0.0466651059687138,0.2977612614631653,-0.1659629195928574,0.1089139953255653,-0.0830026939511299,0.1482881903648376,0.1835270076990128,-0.0848142728209496,-0.1020042821764946,0.2353567332029343,-0.0770902931690216,0.2092926949262619,-0.2040992826223373,0.4625633358955383));
res += mul(Get(s1), float4x4(0.2343845367431641,-0.0624831654131413,-0.2623770236968994,0.1244452893733978,-0.8659000396728516,-0.0932551771402359,0.0796222686767578,-0.1575454175472260,-0.5633123517036438,0.2186884135007858,0.0920689702033997,0.2539521753787994,0.5313799977302551,-0.0518155097961426,-0.0418674014508724,-0.0506247580051422));
res += mul(Get(s2), float4x4(0.1775602102279663,-0.0479871779680252,0.0827370733022690,-0.1174563840031624,-0.1730354279279709,0.0659986808896065,0.1955415159463882,0.1705738604068756,-0.0297675225883722,0.0727914348244667,0.5455539822578430,-0.2394202500581741,0.2628258466720581,-0.0083086639642715,0.1462362110614777,-0.0716098845005035));
res += mul(Get(s3), float4x4(0.3784507513046265,0.1202593073248863,0.3434092402458191,0.1094211041927338,-0.0765278339385986,-0.1058719754219055,-0.0683772638440132,-0.2759626805782318,-0.3264088332653046,-0.1654161512851715,-0.0276852939277887,0.2930740118026733,-0.1990009397268295,-0.1340821981430054,0.1417734324932098,-0.2318069785833359));
res += mul(Get(s4), float4x4(0.1751420795917511,-0.0282975435256958,-0.3142537772655487,-0.2986506819725037,-0.1464289575815201,0.0257431883364916,-0.0710274204611778,-0.5453267693519592,0.3611486554145813,0.1106181070208549,0.4436167180538177,0.2584689557552338,-0.0917065143585205,-0.1116419807076454,0.2773973047733307,-0.0577462427318096));
res += mul(Get(s5), float4x4(-0.5307956933975220,-0.0603609904646873,-0.2693281173706055,0.0358956977725029,-0.0775950476527214,-0.1632555276155472,-0.0108743654564023,-0.5729322433471680,-0.1305257678031921,0.1468057036399841,0.1846315115690231,0.3522327244281769,-0.2570456266403198,0.2547136545181274,0.4342029690742493,0.0151985920965672));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(-0.0123541262000799,-1.0724276304244995,0.0561955124139786,0.9924685359001160) * min(float4(0, 0, 0, 0), res);
return res;
}
