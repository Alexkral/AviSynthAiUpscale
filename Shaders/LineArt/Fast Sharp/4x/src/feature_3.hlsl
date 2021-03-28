sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.884333312511444,0.079992897808552,0.016083164140582,-0.314707279205322);
res += float4(0.008372223936021,0.016840172931552,0.024956841021776,0.002174163004383) * Get(-ddx,-ddy);
res += float4(-0.015443568117917,0.013431027531624,-0.016490733250976,-0.023623568937182) * Get(-ddx,-dy);
res += float4(0.029578646644950,-0.028512785211205,0.010859111323953,-0.030349658802152) * Get(-ddx,0);
res += float4(-0.040212601423264,-0.060973651707172,-0.015535806305707,0.030656374990940) * Get(-ddx,dy);
res += float4(0.018158948048949,0.053823862224817,0.016526697203517,0.009493855759501) * Get(-ddx,ddy);
res += float4(-0.000431741354987,-0.036786150187254,-0.006462242454290,0.039863582700491) * Get(-dx,-ddy);
res += float4(-0.005363406613469,0.013453286141157,-0.085732348263264,0.057904183864594) * Get(-dx,-dy);
res += float4(0.007252451498061,0.074621364474297,0.644061803817749,-0.154584586620331) * Get(-dx,0);
res += float4(0.018818886950612,0.107634954154491,0.489623844623566,0.011108878999949) * Get(-dx,dy);
res += float4(-0.006471870467067,-0.074472039937973,-0.076588310301304,0.002084259875119) * Get(-dx,ddy);
res += float4(-0.028885649517179,-0.011540407314897,0.002332418458536,-0.044413324445486) * Get(0,-ddy);
res += float4(0.051158241927624,0.390911519527435,0.082927323877811,-0.428770482540131) * Get(0,-dy);
res += float4(-0.009891205467284,-1.422767043113708,-0.609759569168091,-0.135878950357437) * Get(0,0);
res += float4(-0.068486049771309,0.097877569496632,-0.508971631526947,-0.023436559364200) * Get(0,dy);
res += float4(-0.004945098422468,0.039407633244991,0.072673968970776,-0.010718076489866) * Get(0,ddy);
res += float4(0.034416068345308,0.003054174594581,-0.039196263998747,-0.057758938521147) * Get(dx,-ddy);
res += float4(-0.065275236964226,0.016376933082938,0.045797806233168,0.235522255301476) * Get(dx,-dy);
res += float4(1.006075263023376,0.492951333522797,-0.035295754671097,0.889672219753265) * Get(dx,0);
res += float4(0.113242112100124,-0.010499953292310,0.048387009650469,0.059315931051970) * Get(dx,dy);
res += float4(-0.007016621530056,-0.030601100996137,-0.024663256481290,-0.068046241998672) * Get(dx,ddy);
res += float4(-0.012941238470376,0.033494718372822,0.018969623371959,0.055499281734228) * Get(ddx,-ddy);
res += float4(0.012193076312542,-0.002997111063451,-0.023045161738992,-0.145066097378731) * Get(ddx,-dy);
res += float4(0.046746265143156,-0.086739748716354,0.014793311245739,0.107502512633801) * Get(ddx,0);
res += float4(-0.045450218021870,0.014892890118062,-0.025888886302710,-0.055400777608156) * Get(ddx,dy);
res += float4(0.005828252062201,0.021164854988456,0.015868153423071,0.062586814165115) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.026969868689775,-0.025824010372162,-0.399110674858093,0.101859211921692) * min(float4(0, 0, 0, 0), res);
return res;
}