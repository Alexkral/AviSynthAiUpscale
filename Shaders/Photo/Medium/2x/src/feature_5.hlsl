sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0051216706633568,0.0171549674123526,0.0094883814454079,-0.0131355440244079);
res += float4(0.0190848093479872,-0.0063304086215794,0.0223222747445107,0.0098226023837924) * Get(-ddx,-ddy);
res += float4(0.0096700144931674,0.0474395491182804,-0.0595900081098080,0.0025127860717475) * Get(-ddx,-dy);
res += float4(0.0061297025531530,-0.0969825983047485,-0.0552083365619183,0.0926079973578453) * Get(-ddx,0);
res += float4(0.1029864698648453,0.0615468360483646,0.0301251579076052,0.0295212510973215) * Get(-ddx,dy);
res += float4(0.0010965759865940,-0.0456362031400204,-0.0255191586911678,0.0068829776719213) * Get(-ddx,ddy);
res += float4(0.0099035268649459,0.0026094876229763,-0.0629750639200211,-0.0519807450473309) * Get(-dx,-ddy);
res += float4(0.0092752296477556,0.1327608972787857,0.1048509031534195,0.0655921995639801) * Get(-dx,-dy);
res += float4(0.1192004755139351,-0.3007219135761261,0.3296761512756348,-0.3993037343025208) * Get(-dx,0);
res += float4(-0.0950256884098053,0.0033323122188449,-0.0644212067127228,-0.0220176596194506) * Get(-dx,dy);
res += float4(0.0153821744024754,0.0398215875029564,0.0109026366844773,0.0001021999632940) * Get(-dx,ddy);
res += float4(0.0422218330204487,-0.0507285706698895,-0.0650187358260155,0.0345957465469837) * Get(0,-ddy);
res += float4(-0.1042181029915810,-0.0408008918166161,0.4020734727382660,0.0161411818116903) * Get(0,-dy);
res += float4(0.0037265056744218,0.1634408533573151,-0.3226318359375000,-0.0183580033481121) * Get(0,0);
res += float4(-0.1989372819662094,0.1870337426662445,-0.2529317736625671,-0.1317573636770248) * Get(0,dy);
res += float4(0.0773617923259735,0.0797990933060646,0.0685143172740936,-0.0087149534374475) * Get(0,ddy);
res += float4(-0.0510285720229149,0.0479614771902561,-0.0168101340532303,0.0225701257586479) * Get(dx,-ddy);
res += float4(0.0572080276906490,0.0090614212676883,-0.1425642222166061,-0.0930018126964569) * Get(dx,-dy);
res += float4(-0.0354439355432987,-0.1639052778482437,-0.0287302266806364,0.4130842387676239) * Get(dx,0);
res += float4(-0.0602248422801495,-0.0909507945179939,0.0986104607582092,0.1380138099193573) * Get(dx,dy);
res += float4(-0.0126041350886226,-0.0340462289750576,-0.0117613850161433,0.0190329458564520) * Get(dx,ddy);
res += float4(-0.0023711915127933,0.0029577943496406,-0.0024211707059294,-0.0013590076705441) * Get(ddx,-ddy);
res += float4(-0.0086554996669292,-0.0037812045775354,0.0532079786062241,-0.0057266564108431) * Get(ddx,-dy);
res += float4(0.0696117356419563,0.0402584373950958,-0.0024800207465887,-0.0719302818179131) * Get(ddx,0);
res += float4(0.0213946234434843,-0.0577039234340191,-0.0093798171728849,-0.0293640196323395) * Get(ddx,dy);
res += float4(0.0086358450353146,0.0479476675391197,0.0038946759887040,-0.0060861078090966) * Get(ddx,ddy);
return res;
}
