sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.019264340400696,-0.008807889185846,0.024425769224763,0.086190290749073);
res += float4(0.039570350199938,0.035856515169144,-0.001203618943691,-0.026584351435304) * Get(-ddx,-ddy);
res += float4(-0.001699646352790,-0.076454266905785,-0.074713900685310,0.038288265466690) * Get(-ddx,-dy);
res += float4(-0.075833529233932,0.042813442647457,-0.012549133971334,-0.010205974802375) * Get(-ddx,0);
res += float4(0.001216818345711,-0.087501898407936,0.090172581374645,-0.007895554415882) * Get(-ddx,dy);
res += float4(0.019388467073441,0.048893809318542,0.015236835926771,-0.002489732578397) * Get(-ddx,ddy);
res += float4(-0.060976017266512,-0.015516189858317,0.036026779562235,-0.068857885897160) * Get(-dx,-ddy);
res += float4(-0.030113475397229,0.069054909050465,-0.161309376358986,-0.085181765258312) * Get(-dx,-dy);
res += float4(0.205916091799736,0.010775418020785,0.354191929101944,0.217233911156654) * Get(-dx,0);
res += float4(-0.151574283838272,0.037342451512814,0.055544178932905,-0.092971250414848) * Get(-dx,dy);
res += float4(0.034066993743181,-0.023428989574313,-0.043228909373283,0.012576195411384) * Get(-dx,ddy);
res += float4(-0.050471972674131,-0.071848846971989,0.074728816747665,0.024368306621909) * Get(0,-ddy);
res += float4(-0.035046614706516,0.079527325928211,-0.472645163536072,0.030038595199585) * Get(0,-dy);
res += float4(-0.496423572301865,0.068965747952461,-0.767053782939911,-0.157144039869308) * Get(0,0);
res += float4(0.457669109106064,-0.045485761016607,0.047559659928083,0.079751804471016) * Get(0,dy);
res += float4(0.018964860588312,-0.066844388842583,0.025517418980598,-0.070252090692520) * Get(0,ddy);
res += float4(0.031891882419586,0.068807125091553,-0.085496157407761,-0.017051715403795) * Get(dx,-ddy);
res += float4(-0.028257114812732,0.000143233963172,0.176816552877426,0.041342210024595) * Get(dx,-dy);
res += float4(0.332061737775803,0.011263327673078,0.576266586780548,0.012598779983819) * Get(dx,0);
res += float4(-0.269834786653519,0.016443094238639,0.064006775617599,-0.120493337512016) * Get(dx,dy);
res += float4(-0.025807064026594,-0.025075098499656,-0.021686764433980,0.033566340804100) * Get(dx,ddy);
res += float4(-0.065027296543121,-0.065715245902538,0.004671530798078,0.052067410200834) * Get(ddx,-ddy);
res += float4(0.165404453873634,0.014308569952846,-0.036916133016348,-0.090867586433887) * Get(ddx,-dy);
res += float4(-0.085613340139389,-0.020108764991164,0.164997994899750,0.014298648573458) * Get(ddx,0);
res += float4(0.023864731192589,-0.022165840491652,-0.119573026895523,0.058054126799107) * Get(ddx,dy);
res += float4(0.027130641043186,0.046858265995979,0.064976774156094,-0.024657791480422) * Get(ddx,ddy);
return res;
}