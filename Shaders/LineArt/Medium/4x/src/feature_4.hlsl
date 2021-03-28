sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.779751539230347,0.311412960290909,-0.010847288183868,-0.454491108655930);
res += float4(-0.005138433072716,-0.018384637311101,-0.034467011690140,-0.038466490805149) * Get(-ddx,-ddy);
res += float4(-0.015065558254719,-0.006948944646865,-0.022946286946535,0.097664430737495) * Get(-ddx,-dy);
res += float4(-0.006717315874994,-0.043465163558722,0.061595320701599,-0.062069505453110) * Get(-ddx,0);
res += float4(0.002834359183908,-0.036975044757128,-0.031648527830839,0.000922521401662) * Get(-ddx,dy);
res += float4(0.015857230871916,0.019138243049383,0.019596628844738,-0.035088449716568) * Get(-ddx,ddy);
res += float4(-0.022087736055255,-0.134234189987183,-0.023442814126611,-0.123936206102371) * Get(-dx,-ddy);
res += float4(0.036725420504808,0.052807074040174,0.152277678251266,-0.017499584704638) * Get(-dx,-dy);
res += float4(-0.099428579211235,-0.439148247241974,-0.760640978813171,0.092597380280495) * Get(-dx,0);
res += float4(-0.104198962450027,0.255020141601563,0.258200854063034,-0.084670446813107) * Get(-dx,dy);
res += float4(-0.031923059374094,-0.026720046997070,-0.050312828272581,0.010041175410151) * Get(-dx,ddy);
res += float4(0.055003348737955,-0.127484872937202,-0.141596272587776,0.194139868021011) * Get(0,-ddy);
res += float4(-0.053224176168442,-0.026467792689800,-0.124364458024502,0.293315887451172) * Get(0,-dy);
res += float4(1.019220113754272,-0.407907396554947,0.754180729389191,0.168765738606453) * Get(0,0);
res += float4(0.063692621886730,0.092196919023991,-0.017125327140093,0.033084597438574) * Get(0,dy);
res += float4(0.061091784387827,0.000395486073103,0.008022598922253,-0.061881922185421) * Get(0,ddy);
res += float4(-0.029437508434057,0.091322697699070,0.081299990415573,0.050018798559904) * Get(dx,-ddy);
res += float4(0.062022022902966,0.249424532055855,-0.281080305576324,0.171477273106575) * Get(dx,-dy);
res += float4(0.015366627834737,-0.215997889637947,0.549233019351959,0.162738278508186) * Get(dx,0);
res += float4(0.000788556702901,0.131661310791969,-0.302068710327148,-0.024010816588998) * Get(dx,dy);
res += float4(-0.026083420962095,-0.076034963130951,-0.051573377102613,-0.046575333923101) * Get(dx,ddy);
res += float4(0.004808614961803,-0.056659232825041,0.016886781901121,-0.072860635817051) * Get(ddx,-ddy);
res += float4(0.000409923173720,-0.066609002649784,0.014189798384905,0.024846181273460) * Get(ddx,-dy);
res += float4(-0.027643237262964,0.100002653896809,-0.023626171052456,0.027060002088547) * Get(ddx,0);
res += float4(0.009492929093540,0.043939348310232,-0.008200836367905,0.007932563312352) * Get(ddx,dy);
res += float4(-0.007694019470364,0.089518755674362,-0.015331683680415,0.049699019640684) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.019274711608887,1.014182448387146,0.971801817417145,0.927285373210907) * min(float4(0, 0, 0, 0), res);
return res;
}