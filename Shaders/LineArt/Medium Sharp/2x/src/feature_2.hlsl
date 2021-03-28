sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.003501987550408,-0.362484693527222,0.027023572474718,0.001399151515216);
res += float4(-0.018131623044610,0.021282931789756,0.007804326247424,-0.001550283399411) * Get(-ddx,-ddy);
res += float4(0.024088388308883,0.010350295342505,-0.024654483422637,0.011291326023638) * Get(-ddx,-dy);
res += float4(-0.026778383180499,0.057957809418440,0.043756652623415,0.010687751695514) * Get(-ddx,0);
res += float4(0.048987876623869,0.023413637652993,-0.050897188484669,-0.018409902229905) * Get(-ddx,dy);
res += float4(-0.027361750602722,-0.041062898933887,-0.021088887006044,-0.015601239167154) * Get(-ddx,ddy);
res += float4(0.028882950544357,0.046026468276978,0.042768627405167,-0.011967001482844) * Get(-dx,-ddy);
res += float4(-0.030954929068685,-0.092704996466637,0.030611295253038,-0.017157347872853) * Get(-dx,-dy);
res += float4(0.026039874181151,0.207989871501923,-0.072633765637875,0.042412340641022) * Get(-dx,0);
res += float4(-0.016547430306673,-0.062914095818996,0.017604500055313,-0.026854088529944) * Get(-dx,dy);
res += float4(-0.015281619504094,0.032782632857561,0.074952982366085,0.024713192135096) * Get(-dx,ddy);
res += float4(-0.028051948174834,-0.081780441105366,-0.116731353104115,0.019053243100643) * Get(0,-ddy);
res += float4(0.004480370320380,0.396193861961365,0.071754619479179,-0.000114584792755) * Get(0,-dy);
res += float4(-0.087475366890430,0.575059413909912,-1.093934535980225,0.061326090246439) * Get(0,0);
res += float4(-0.522775828838348,-0.173260241746902,-0.060143124312162,-0.456706106662750) * Get(0,dy);
res += float4(0.662711858749390,0.012367784976959,0.073495991528034,0.070133581757545) * Get(0,ddy);
res += float4(0.038507550954819,-0.032251585274935,0.029960384592414,0.012524192221463) * Get(dx,-ddy);
res += float4(0.005259919911623,-0.134694084525108,-0.035786982625723,0.091790460050106) * Get(dx,-dy);
res += float4(0.074480108916759,-0.217188090085983,0.004028161522001,0.551218390464783) * Get(dx,0);
res += float4(-0.423357486724854,0.023560045287013,0.644832611083984,-0.550402402877808) * Get(dx,dy);
res += float4(0.283652961254120,0.002850010292605,0.039452210068703,-0.013072476722300) * Get(dx,ddy);
res += float4(-0.013659260235727,0.012820098549128,0.000321876897942,-0.016847586259246) * Get(ddx,-ddy);
res += float4(-0.005395446438342,-0.026488563045859,0.004669787827879,-0.070863343775272) * Get(ddx,-dy);
res += float4(-0.047104880213737,0.060194488614798,0.015174887143075,0.274069041013718) * Get(ddx,0);
res += float4(0.052410162985325,0.041966844350100,0.144498527050018,0.044562600553036) * Get(ddx,dy);
res += float4(0.016306059435010,-0.043740086257458,-0.156272485852242,-0.032372418791056) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.206739962100983,0.669134914875031,-0.088210970163345,-0.341170936822891) * min(float4(0, 0, 0, 0), res);
return res;
}
