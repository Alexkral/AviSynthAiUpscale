sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.071990229189396,-0.005649667233229,-0.556070983409882,-0.017412429675460);
res += float4(-0.066945761442184,0.014379062689841,-0.031225126236677,0.143058896064758) * Get(-ddx,-ddy);
res += float4(-0.035783462226391,-0.093650124967098,-0.035165507346392,-0.030667338520288) * Get(-ddx,-dy);
res += float4(0.014179897494614,0.063530668616295,0.144436955451965,0.005497834179550) * Get(-ddx,0);
res += float4(-0.116281740367413,0.014740368351340,-0.004599096719176,-0.025194153189659) * Get(-ddx,dy);
res += float4(-0.005677587352693,-0.036335442215204,0.003038868540898,0.048590026795864) * Get(-ddx,ddy);
res += float4(-0.029609655961394,-0.051340274512768,0.000456391106127,0.013423832133412) * Get(-dx,-ddy);
res += float4(-0.092011928558350,0.024223241955042,-0.270180821418762,-0.099274434149265) * Get(-dx,-dy);
res += float4(0.038240130990744,-0.004107569810003,0.202383652329445,0.236683160066605) * Get(-dx,0);
res += float4(0.016207538545132,-0.002885617315769,0.011265098117292,-0.190128684043884) * Get(-dx,dy);
res += float4(0.001552635687403,0.090991474688053,-0.021423816680908,0.025554962456226) * Get(-dx,ddy);
res += float4(0.053470425307751,-0.045561440289021,0.118348121643066,-0.050844758749008) * Get(0,-ddy);
res += float4(-0.382074445486069,0.014339576475322,0.058399818837643,0.190469130873680) * Get(0,-dy);
res += float4(0.362646967172623,-0.049085557460785,1.286023497581482,-0.306100010871887) * Get(0,0);
res += float4(0.121415294706821,0.124031983315945,0.183411106467247,0.155001223087311) * Get(0,dy);
res += float4(0.092499241232872,-0.029512217268348,-0.025333376601338,0.102108500897884) * Get(0,ddy);
res += float4(-0.093257330358028,-0.010564295575023,-0.006311642937362,0.014296564273536) * Get(dx,-ddy);
res += float4(0.234621956944466,0.022630834951997,-0.265314310789108,0.034126695245504) * Get(dx,-dy);
res += float4(-0.251648843288422,0.095881566405296,-0.204459205269814,-0.169495567679405) * Get(dx,0);
res += float4(-0.013519142754376,-0.088935680687428,-0.338480263948441,-0.070815287530422) * Get(dx,dy);
res += float4(0.066738769412041,-0.050710402429104,0.059936974197626,-0.016490334644914) * Get(dx,ddy);
res += float4(-0.085499376058578,-0.044195652008057,-0.054532356560230,-0.052117913961411) * Get(ddx,-ddy);
res += float4(-0.039959106594324,0.093323148787022,0.088518202304840,-0.095583163201809) * Get(ddx,-dy);
res += float4(0.051918398588896,-0.069952487945557,0.088387772440910,0.094573497772217) * Get(ddx,0);
res += float4(0.017076477408409,0.039591744542122,0.011383322067559,0.135054543614388) * Get(ddx,dy);
res += float4(-0.009115340188146,-0.023390995338559,-0.079046681523323,-0.044174917042255) * Get(ddx,ddy);
return res;
}