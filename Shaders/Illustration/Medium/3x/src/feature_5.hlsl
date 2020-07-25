sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0065321912989020,0.0205273199826479,0.0006084165070206,0.1905439347028732);
res += float4(-0.0026069618761539,-0.0386583916842937,-0.0507217235863209,-0.0311233773827553) * Get(-ddx,-ddy);
res += float4(-0.0080373222008348,-0.0130365164950490,0.0037041457835585,0.0161407496780157) * Get(-ddx,-dy);
res += float4(0.0390804968774319,0.0981825739145279,0.0267603639513254,-0.0031402856111526) * Get(-ddx,0);
res += float4(0.0188503898680210,-0.0559419505298138,-0.0529380403459072,0.0262761618942022) * Get(-ddx,dy);
res += float4(-0.0397355891764164,0.0208591353148222,0.0327677428722382,-0.0291484519839287) * Get(-ddx,ddy);
res += float4(0.0307780746370554,-0.0312622040510178,-0.0136379562318325,0.0327700600028038) * Get(-dx,-ddy);
res += float4(-0.0547204203903675,0.0068920315243304,0.1317304223775864,-0.0501294098794460) * Get(-dx,-dy);
res += float4(-0.3618303537368774,-0.0681944414973259,-0.0590665638446808,0.2564785182476044) * Get(-dx,0);
res += float4(-0.0338806509971619,0.1048251911997795,-0.0095017310231924,0.0588640198111534) * Get(-dx,dy);
res += float4(-0.0076377196237445,-0.0002422207908239,-0.0281318668276072,-0.0397589206695557) * Get(-dx,ddy);
res += float4(0.0078843766823411,-0.0613441281020641,0.0922129973769188,0.0522457249462605) * Get(0,-ddy);
res += float4(0.2537402510643005,0.0758006572723389,-0.1429562121629715,-0.2583386003971100) * Get(0,-dy);
res += float4(0.1713858693838120,0.0112423570826650,0.1620195508003235,0.2185289561748505) * Get(0,0);
res += float4(-0.4282135665416718,-0.1027614623308182,-0.0363431274890900,-0.0604883506894112) * Get(0,dy);
res += float4(-0.0070857750251889,-0.0310750678181648,-0.0316800884902477,0.0516261979937553) * Get(0,ddy);
res += float4(0.0454016290605068,0.0574630163609982,-0.0621307417750359,0.0398779585957527) * Get(dx,-ddy);
res += float4(-0.0291213393211365,-0.2831646203994751,-0.0081649506464601,-0.0410128980875015) * Get(dx,-dy);
res += float4(0.3692944049835205,0.2783035337924957,-0.1464073359966278,-0.2276776283979416) * Get(dx,0);
res += float4(0.0133990375325084,-0.0494452416896820,0.2136026769876480,-0.2663964927196503) * Get(dx,dy);
res += float4(-0.0371537283062935,0.0293629262596369,0.0361705832183361,0.0388288199901581) * Get(dx,ddy);
res += float4(-0.0033131220843643,0.0204928759485483,0.0407084077596664,-0.0289993714541197) * Get(ddx,-ddy);
res += float4(-0.0164843462407589,-0.0330659225583076,0.0382952876389027,-0.0675580501556396) * Get(ddx,-dy);
res += float4(0.0661603808403015,-0.0280362162739038,-0.0746351182460785,-0.0142360161989927) * Get(ddx,0);
res += float4(-0.0185024514794350,0.0722538307309151,-0.0258332751691341,0.0215050857514143) * Get(ddx,dy);
res += float4(0.0337924957275391,-0.0209383759647608,-0.0301045645028353,-0.0275559127330780) * Get(ddx,ddy);
return res;
}