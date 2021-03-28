sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.052459813654423,0.028308024629951,0.263551950454712,0.005932832602412);
res += float4(-0.005126772448421,-0.011567877605557,-0.001383069669828,-0.001295973313972) * Get(-ddx,-ddy);
res += float4(0.032867722213268,-0.062163744121790,0.038808606564999,-0.095942065119743) * Get(-ddx,-dy);
res += float4(-0.067922428250313,0.049401544034481,-0.050347592681646,0.082507058978081) * Get(-ddx,0);
res += float4(0.061245728284121,0.017823090776801,0.062295839190483,0.151547059416771) * Get(-ddx,dy);
res += float4(-0.032735213637352,-0.014561172574759,-0.029336376115680,-0.034555193036795) * Get(-ddx,ddy);
res += float4(-0.064973607659340,0.000807863485534,0.010492487810552,0.069724328815937) * Get(-dx,-ddy);
res += float4(0.145992338657379,-0.049731556326151,-0.034558389335871,0.514540672302246) * Get(-dx,-dy);
res += float4(-0.122806876897812,0.112962707877159,-0.059659801423550,-0.893619775772095) * Get(-dx,0);
res += float4(0.015715276822448,-0.123749487102032,0.005908428225666,-0.542439043521881) * Get(-dx,dy);
res += float4(0.022660810500383,-0.051737081259489,0.023385103791952,0.153060942888260) * Get(-dx,ddy);
res += float4(0.144231095910072,0.076299905776978,0.070149041712284,-0.015976672992110) * Get(0,-ddy);
res += float4(0.699097394943237,0.096355929970741,-0.060920950025320,0.019778231158853) * Get(0,-dy);
res += float4(-0.640341103076935,0.746685385704041,-0.109010025858879,0.134744092822075) * Get(0,0);
res += float4(-0.208443388342857,-0.248757004737854,-2.142746925354004,0.096900746226311) * Get(0,dy);
res += float4(-0.008520347066224,0.156126499176025,0.063596270978451,0.011593570001423) * Get(0,ddy);
res += float4(-0.044882390648127,0.012677742168307,-0.008043498732150,-0.037356082350016) * Get(dx,-ddy);
res += float4(0.285940587520599,0.065924108028412,-0.063125528395176,-0.014560457319021) * Get(dx,-dy);
res += float4(-0.218470066785812,-0.679023563861847,0.381455153226852,0.090157903730869) * Get(dx,0);
res += float4(-0.014157600700855,-0.447231590747833,0.068428598344326,0.053305774927139) * Get(dx,dy);
res += float4(0.029440188780427,-0.110804833471775,0.028222978115082,0.026813164353371) * Get(dx,ddy);
res += float4(-0.014176492579281,0.002531837439165,-0.026994563639164,-0.028126930817962) * Get(ddx,-ddy);
res += float4(0.037511702626944,-0.109717875719070,0.015371065586805,-0.019909350201488) * Get(ddx,-dy);
res += float4(-0.090856626629829,0.102220550179482,-0.025677248835564,0.100675739347935) * Get(ddx,0);
res += float4(0.059504535049200,0.060711257159710,-0.050574537366629,0.013492151163518) * Get(ddx,dy);
res += float4(-0.018979778513312,-0.006547683849931,-0.022920688614249,-0.014196374453604) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.294292956590652,-0.004117403179407,0.004448399879038,0.005141398869455) * min(float4(0, 0, 0, 0), res);
return res;
}