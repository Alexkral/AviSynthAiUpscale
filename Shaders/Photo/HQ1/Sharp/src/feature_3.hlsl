sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0072896499186754,-0.0057934266515076,0.0005186887574382,-0.0083835823461413);
res += float4(-0.0014832182787359,0.0013290576171130,0.0339737907052040,-0.0056495643220842) * Get(-ddx,-ddy);
res += float4(0.0844202637672424,-0.0312935486435890,-0.0398991554975510,-0.0357607975602150) * Get(-ddx,-dy);
res += float4(-0.0251273401081562,0.0837804004549980,-0.1324430257081985,0.0962022021412849) * Get(-ddx,0);
res += float4(0.0263384748250246,-0.0288942866027355,-0.0071831517852843,0.0023278454318643) * Get(-ddx,dy);
res += float4(0.0305478554219007,0.0772910118103027,-0.0071420799940825,0.0207559540867805) * Get(-ddx,ddy);
res += float4(0.0678348615765572,0.0200403332710266,-0.0412981621921062,-0.0253075473010540) * Get(-dx,-ddy);
res += float4(-0.2273985743522644,0.1626169532537460,0.0798531696200371,0.0409853495657444) * Get(-dx,-dy);
res += float4(0.1711617261171341,0.1470893621444702,0.2372593432664871,-0.0433789566159248) * Get(-dx,0);
res += float4(0.0647129565477371,-0.1136883944272995,-0.1696027219295502,0.2971774041652679) * Get(-dx,dy);
res += float4(-0.1030672192573547,-0.0766026824712753,0.0224993284791708,-0.0776348114013672) * Get(-dx,ddy);
res += float4(-0.1478245556354523,0.0479201823472977,0.1207869350910187,0.0734693929553032) * Get(0,-ddy);
res += float4(0.2164082527160645,-0.4253262579441071,0.3576880693435669,-0.0613468773663044) * Get(0,-dy);
res += float4(-0.4775941967964172,0.1131401807069778,-0.5033978819847107,0.0872346758842468) * Get(0,0);
res += float4(0.2569202780723572,-0.0344869010150433,-0.0534082986414433,0.0910083279013634) * Get(0,dy);
res += float4(0.0457061901688576,0.1355427056550980,0.0201911460608244,0.0083823939785361) * Get(0,ddy);
res += float4(0.0018880012212321,0.0335485301911831,-0.0058378633111715,0.0072855926118791) * Get(dx,-ddy);
res += float4(0.0704879537224770,-0.0042678536847234,0.1776081025600433,-0.0024735166225582) * Get(dx,-dy);
res += float4(0.0510424003005028,0.0333045907318592,-0.1727366894483566,-0.1768811494112015) * Get(dx,0);
res += float4(-0.1203921586275101,-0.0127290664240718,0.0517640039324760,-0.1529678106307983) * Get(dx,dy);
res += float4(-0.0019998529460281,-0.0345961414277554,-0.0098353698849678,-0.1186172738671303) * Get(dx,ddy);
res += float4(0.0087721701711416,-0.0125849759206176,-0.0099613526836038,-0.0187051184475422) * Get(ddx,-ddy);
res += float4(-0.0182513725012541,0.0265230964869261,-0.0163572225719690,0.0244778264313936) * Get(ddx,-dy);
res += float4(-0.0384429134428501,-0.0867414698004723,0.0048721176572144,-0.1088646426796913) * Get(ddx,0);
res += float4(0.0749566182494164,0.0217747222632170,0.0550940893590450,-0.0191405657678843) * Get(ddx,dy);
res += float4(-0.0264269858598709,-0.0354125909507275,0.0103555740788579,0.0772486478090286) * Get(ddx,ddy);
return res;
}
