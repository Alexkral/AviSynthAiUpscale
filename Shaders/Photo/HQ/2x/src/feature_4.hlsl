sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.074951514601707,0.021283410489559,-0.680451750755310,0.046952761709690);
res += float4(-0.020050439983606,-0.011564771644771,-0.005934239830822,-0.007574341259897) * Get(-ddx,-ddy);
res += float4(0.094209149479866,0.003710313001648,-0.002029641298577,0.019892731681466) * Get(-ddx,-dy);
res += float4(-0.151057913899422,-0.122233644127846,-0.021237766370177,-0.035211045295000) * Get(-ddx,0);
res += float4(-0.044117830693722,0.099529452621937,0.026039712131023,-0.006651602219790) * Get(-ddx,dy);
res += float4(0.012458662502468,0.055508606135845,-0.074556663632393,0.018232598900795) * Get(-ddx,ddy);
res += float4(0.050891101360321,-0.067920140922070,0.092010051012039,-0.042178031057119) * Get(-dx,-ddy);
res += float4(-0.077651403844357,-0.109441637992859,0.093945808708668,-0.116960339248180) * Get(-dx,-dy);
res += float4(-0.070980705320835,-0.354467213153839,0.352194637060165,-0.079226575791836) * Get(-dx,0);
res += float4(0.013586159795523,0.222406491637230,0.025336336344481,-0.099556796252728) * Get(-dx,dy);
res += float4(0.032628513872623,0.156825676560402,0.081382296979427,0.021199658513069) * Get(-dx,ddy);
res += float4(-0.010728625580668,0.121409684419632,0.157396227121353,-0.056903783231974) * Get(0,-ddy);
res += float4(-0.132135108113289,0.075376167893410,0.137141898274422,-0.301363021135330) * Get(0,-dy);
res += float4(-0.062619678676128,-0.578352987766266,0.308909356594086,-0.428216189146042) * Get(0,0);
res += float4(0.038527883589268,0.234273403882980,0.144088819622993,-0.213662475347519) * Get(0,dy);
res += float4(0.088125728070736,0.081051290035248,0.036817375570536,-0.076669931411743) * Get(0,ddy);
res += float4(-0.054689709097147,-0.031905051320791,-0.032179493457079,0.051967982202768) * Get(dx,-ddy);
res += float4(-0.070187397301197,-0.171520888805389,0.022954190149903,0.331321001052856) * Get(dx,-dy);
res += float4(0.147210866212845,0.153383493423462,0.006291620898992,0.274689376354218) * Get(dx,0);
res += float4(-0.024098601192236,0.248523890972137,-0.010236795991659,0.248936399817467) * Get(dx,dy);
res += float4(0.018812526017427,-0.011156176216900,0.016441408544779,0.020802449434996) * Get(dx,ddy);
res += float4(-0.005607689265162,0.023462370038033,-0.022772902622819,0.066495291888714) * Get(ddx,-ddy);
res += float4(0.098773777484894,-0.004187419544905,-0.009807181544602,0.059210110455751) * Get(ddx,-dy);
res += float4(0.090537279844284,-0.095777913928032,0.124493353068829,0.274305969476700) * Get(ddx,0);
res += float4(-0.023751435801387,0.091051101684570,-0.065257459878922,0.049156121909618) * Get(ddx,dy);
res += float4(-0.058170430362225,0.019537489861250,0.012237971648574,0.001243588165380) * Get(ddx,ddy);
return res;
}