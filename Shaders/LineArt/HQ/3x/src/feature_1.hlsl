sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.363931834697723,0.043931309133768,-0.014075079001486,0.010909927077591);
res += float4(0.042866200208664,-0.030960561707616,-0.022708233445883,-0.022605942562222) * Get(-ddx,-ddy);
res += float4(0.060665212571621,0.055337931960821,0.027856666594744,-0.001569160842337) * Get(-ddx,-dy);
res += float4(-0.095092810690403,-0.166613012552261,0.073048442602158,-0.017825232818723) * Get(-ddx,0);
res += float4(0.082321114838123,-0.015776701271534,-0.068150319159031,0.061980661004782) * Get(-ddx,dy);
res += float4(-0.065995790064335,-0.058819409459829,-0.040591850876808,0.027966007590294) * Get(-ddx,ddy);
res += float4(-0.060424067080021,0.042025465518236,0.016861259937286,-0.041282884776592) * Get(-dx,-ddy);
res += float4(-0.069372139871120,-0.109957598149776,0.108829721808434,0.005914479959756) * Get(-dx,-dy);
res += float4(0.019054871052504,-0.152857407927513,-0.109427243471146,0.022330364212394) * Get(-dx,0);
res += float4(0.186894878745079,-0.264326840639114,0.060680426657200,0.069036886096001) * Get(-dx,dy);
res += float4(0.077801577746868,0.019923564046621,-0.049488916993141,-0.039995770901442) * Get(-dx,ddy);
res += float4(-0.019349504262209,0.051756169646978,0.110133022069931,0.009007776156068) * Get(0,-ddy);
res += float4(0.036937873810530,-0.029058001935482,-0.197465509176254,0.021702317520976) * Get(0,-dy);
res += float4(0.073979161679745,0.264271110296249,0.093832269310951,0.239326968789101) * Get(0,0);
res += float4(0.094541870057583,0.240941822528839,-0.039754822850227,-0.089142166078091) * Get(0,dy);
res += float4(0.070133224129677,-0.044737018644810,0.026697970926762,-0.011451882310212) * Get(0,ddy);
res += float4(-0.015058999881148,-0.091431573033333,0.033515911549330,-0.013972570188344) * Get(dx,-ddy);
res += float4(-0.027652844786644,-0.038974028080702,0.146061480045319,-0.106135971844196) * Get(dx,-dy);
res += float4(0.038918208330870,0.148747026920319,-0.156861752271652,-0.147900074720383) * Get(dx,0);
res += float4(0.126632541418076,0.076116494834423,0.021292736753821,0.069177046418190) * Get(dx,dy);
res += float4(0.068583466112614,0.004438927862793,-0.016836818307638,0.049705140292645) * Get(dx,ddy);
res += float4(0.032783623784781,-0.013032468967140,-0.045987270772457,0.039236586540937) * Get(ddx,-ddy);
res += float4(-0.099080950021744,0.029908074066043,-0.066495105624199,-0.021328441798687) * Get(ddx,-dy);
res += float4(-0.022290216758847,-0.020692994818091,0.159066244959831,-0.063213631510735) * Get(ddx,0);
res += float4(0.089477285742760,0.029813356697559,-0.057015016674995,-0.085810631513596) * Get(ddx,dy);
res += float4(-0.016563013195992,-0.016145566478372,0.034351430833340,0.011913812719285) * Get(ddx,ddy);
return res;
}
