sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.108404904603958,0.477955073118210,0.004689660854638,0.137206062674522);
res += float4(0.028537739068270,-0.000876694510225,-0.015448769554496,-0.050403282046318) * Get(-ddx,-ddy);
res += float4(0.040424205362797,0.023015322163701,-0.060756824910641,0.199085354804993) * Get(-ddx,-dy);
res += float4(0.228650420904160,0.021847551688552,0.061590924859047,-0.114107325673103) * Get(-ddx,0);
res += float4(-0.269290566444397,-0.032902795821428,-0.011253593489528,-0.041490670293570) * Get(-ddx,dy);
res += float4(0.087506249547005,0.032994329929352,-0.149915903806686,-0.014135930687189) * Get(-ddx,ddy);
res += float4(0.011488190852106,-0.046597789973021,-0.001337620429695,0.069562055170536) * Get(-dx,-ddy);
res += float4(0.048044830560684,-0.086402364075184,0.103927791118622,-0.195600673556328) * Get(-dx,-dy);
res += float4(0.203793272376060,-0.054733004420996,-0.090691238641739,-0.027008902281523) * Get(-dx,0);
res += float4(0.010742205195129,0.024923700839281,-0.050164509564638,0.165195107460022) * Get(-dx,dy);
res += float4(0.000958223710768,0.032840333878994,-0.109591670334339,0.059693567454815) * Get(-dx,ddy);
res += float4(0.066776506602764,-0.014485525898635,0.034625284373760,-0.007414864841849) * Get(0,-ddy);
res += float4(-0.084909804165363,-0.056878522038460,-0.051392883062363,-1.172702908515930) * Get(0,-dy);
res += float4(0.328876346349716,-0.698092639446259,-0.011118728667498,-0.273847043514252) * Get(0,0);
res += float4(0.370497643947601,0.069257184863091,0.774299681186676,0.370225250720978) * Get(0,dy);
res += float4(-0.196585193276405,-0.075061336159706,-0.451989680528641,-0.067496299743652) * Get(0,ddy);
res += float4(-0.099388867616653,0.006716137751937,-0.049140583723783,-0.029424170032144) * Get(dx,-ddy);
res += float4(-0.092013135552406,-0.090623229742050,0.117026671767235,-0.037164971232414) * Get(dx,-dy);
res += float4(-0.517723679542542,-0.475390940904617,-0.158650413155556,0.142200604081154) * Get(dx,0);
res += float4(-0.013317368924618,0.083915792405605,-0.196231469511986,0.172454908490181) * Get(dx,dy);
res += float4(0.041584331542253,0.007993943057954,-0.650933206081390,0.041820410639048) * Get(dx,ddy);
res += float4(0.009736532345414,0.006057550664991,-0.020552558824420,0.047068912535906) * Get(ddx,-ddy);
res += float4(0.054265633225441,-0.046218402683735,0.012768508866429,0.137938752770424) * Get(ddx,-dy);
res += float4(-0.235230550169945,-0.022708257660270,-0.069090455770493,0.007217227481306) * Get(ddx,0);
res += float4(0.032692223787308,0.009165678173304,0.176333576440811,-0.116318523883820) * Get(ddx,dy);
res += float4(0.041736014187336,-0.054154608398676,-0.615258693695068,0.002577916253358) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.046757139265537,0.330450654029846,0.012786577455699,-0.022161925211549) * min(float4(0, 0, 0, 0), res);
return res;
}