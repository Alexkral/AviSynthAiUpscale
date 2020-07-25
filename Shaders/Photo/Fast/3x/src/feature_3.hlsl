sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0236025676131248,0.0052084517665207,0.0096153058111668,-0.0615401603281498);
res += float4(0.0070089059881866,0.0142891546711326,-0.0241799280047417,0.0225605200976133) * Get(-ddx,-ddy);
res += float4(-0.0424739718437195,-0.0554677248001099,0.0286017619073391,-0.0176645684987307) * Get(-ddx,-dy);
res += float4(0.1264726817607880,0.0040637534111738,0.0211385637521744,0.2057783156633377) * Get(-ddx,0);
res += float4(0.0514733418822289,0.0102787613868713,-0.1098201274871826,-0.0419278107583523) * Get(-ddx,dy);
res += float4(-0.0107822408899665,-0.0086118867620826,0.0114614265039563,0.0171804521232843) * Get(-ddx,ddy);
res += float4(-0.0113540776073933,0.0113039910793304,0.0339876972138882,-0.1143490001559258) * Get(-dx,-ddy);
res += float4(0.0452494397759438,0.0294260084629059,0.0083314664661884,-0.0276526380330324) * Get(-dx,-dy);
res += float4(-0.3609372377395630,0.0330533459782600,-0.0317632667720318,0.0156836546957493) * Get(-dx,0);
res += float4(-0.1635160893201828,-0.0834665521979332,0.2621669769287109,0.2437529563903809) * Get(-dx,dy);
res += float4(-0.0126954149454832,0.0187296103686094,-0.0135845178738236,0.0034801939036697) * Get(-dx,ddy);
res += float4(-0.0195923391729593,0.1337504088878632,-0.0430842489004135,0.0299525000154972) * Get(0,-ddy);
res += float4(-0.1495363265275955,-0.1751865893602371,-0.0847542062401772,0.0931412875652313) * Get(0,-dy);
res += float4(-0.1560538709163666,-0.4574229121208191,0.0154445208609104,0.3509323894977570) * Get(0,0);
res += float4(0.1350278705358505,0.6443360447883606,-0.1594914048910141,0.0156461242586374) * Get(0,dy);
res += float4(0.0212164409458637,-0.1882885396480560,0.0095475194975734,0.0088793775066733) * Get(0,ddy);
res += float4(0.0137218330055475,-0.0106056071817875,0.0415693707764149,-0.0136199211701751) * Get(dx,-ddy);
res += float4(0.0227655973285437,-0.0209126658737659,-0.0182962156832218,0.0281612258404493) * Get(dx,-dy);
res += float4(0.7833107709884644,-0.0549883209168911,0.0936785116791725,-0.2578795552253723) * Get(dx,0);
res += float4(-0.1045415252447128,0.1534154862165451,0.0424660965800285,-0.0920428037643433) * Get(dx,dy);
res += float4(0.0470487810671329,-0.0008708507521078,0.0006967602530494,0.0115228323265910) * Get(dx,ddy);
res += float4(-0.0024986381176859,0.0109655130654573,-0.0010019335895777,-0.0081060035154223) * Get(ddx,-ddy);
res += float4(-0.0149933565407991,0.0115724494680762,0.0155589794740081,-0.0351791717112064) * Get(ddx,-dy);
res += float4(-0.1694873273372650,-0.0617774687707424,-0.0903479307889938,-0.1767542958259583) * Get(ddx,0);
res += float4(0.0059432624839246,0.0131187820807099,-0.0000488224250148,-0.0022230772301555) * Get(ddx,dy);
res += float4(-0.0082733100280166,0.0039477222599089,-0.0052520940080285,-0.0018781077815220) * Get(ddx,ddy);
return res;
}
