sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.344334721565247,-0.303277939558029,0.092026241123676,0.046699460595846);
res += float4(0.014644872397184,0.053483128547668,-0.037936422973871,-0.078755684196949) * Get(-ddx,-ddy);
res += float4(0.015848506242037,-0.027528582140803,0.065526284277439,-0.223278447985649) * Get(-ddx,-dy);
res += float4(-0.043554104864597,0.116390421986580,0.026936085894704,0.125767409801483) * Get(-ddx,0);
res += float4(-0.068079300224781,-0.040470030158758,0.052459690719843,0.019990770146251) * Get(-ddx,dy);
res += float4(0.085781335830688,0.003364385804161,0.001680974964984,0.072105444967747) * Get(-ddx,ddy);
res += float4(-0.022289289161563,-0.110559426248074,-0.016739429906011,0.124642021954060) * Get(-dx,-ddy);
res += float4(-0.050522636622190,-0.008414010517299,0.060486335307360,0.141947880387306) * Get(-dx,-dy);
res += float4(0.111936621367931,0.003373116021976,0.100370652973652,0.024789873510599) * Get(-dx,0);
res += float4(0.275122404098511,0.094591870903969,-0.003736617974937,-0.197255477309227) * Get(-dx,dy);
res += float4(0.430872827768326,-0.018065089359879,0.015392515808344,-0.030204847455025) * Get(-dx,ddy);
res += float4(-0.029808674007654,-0.104132406413555,0.039537619799376,0.049087025225163) * Get(0,-ddy);
res += float4(-0.175695270299911,-0.029345987364650,0.417776942253113,-0.723674297332764) * Get(0,-dy);
res += float4(-0.481248080730438,0.832893490791321,0.158147633075714,0.726216614246368) * Get(0,0);
res += float4(-0.049865253269672,0.208433568477631,-0.180757820606232,-0.268410205841064) * Get(0,dy);
res += float4(0.460380226373672,-0.038140837103128,-0.010753527283669,0.233571961522102) * Get(0,ddy);
res += float4(0.040776103734970,-0.021094053983688,0.093251913785934,-0.016453729942441) * Get(dx,-ddy);
res += float4(-0.020582197234035,-0.088278718292713,-0.040713459253311,0.171912014484406) * Get(dx,-dy);
res += float4(-0.024541079998016,-0.096393525600433,-1.425213336944580,-0.064736053347588) * Get(dx,0);
res += float4(-0.246906936168671,0.008793923072517,0.029121017083526,0.040454454720020) * Get(dx,dy);
res += float4(0.184658169746399,0.000779561931267,0.019937368109822,-0.107738398015499) * Get(dx,ddy);
res += float4(0.016653880476952,0.041279282420874,0.015757799148560,0.015185446478426) * Get(ddx,-ddy);
res += float4(0.013770908117294,-0.181416720151901,0.003348358441144,0.034521877765656) * Get(ddx,-dy);
res += float4(0.018363837152719,0.068121023476124,-0.134178027510643,-0.151251047849655) * Get(ddx,0);
res += float4(-0.069731660187244,-0.056304253637791,0.095613464713097,0.078747086226940) * Get(ddx,dy);
res += float4(0.032446015626192,-0.040073208510876,0.024838596582413,-0.019762447103858) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.074706844985485,0.847188830375671,-0.045877039432526,0.805211067199707) * min(float4(0, 0, 0, 0), res);
return res;
}
