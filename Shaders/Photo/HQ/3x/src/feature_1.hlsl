sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.308070570230484,-0.172085314989090,-0.152516111731529,-0.138089805841446);
res += float4(0.015714356675744,-0.024354448541999,-0.055625699460506,-0.026095179840922) * Get(-ddx,-ddy);
res += float4(-0.113951481878757,0.149726435542107,-0.023609124124050,-0.108190953731537) * Get(-ddx,-dy);
res += float4(-0.030178111046553,-0.016809741035104,0.279608011245728,0.017321852967143) * Get(-ddx,0);
res += float4(0.106777317821980,0.010429789312184,0.029963487759233,-0.033642072230577) * Get(-ddx,dy);
res += float4(-0.040532402694225,0.022043948993087,0.004382851999253,-0.111883342266083) * Get(-ddx,ddy);
res += float4(-0.063331425189972,0.017842981964350,-0.062844604253769,0.116298861801624) * Get(-dx,-ddy);
res += float4(0.020253973081708,-0.335419535636902,-0.003532141447067,0.014095515012741) * Get(-dx,-dy);
res += float4(-0.017929684370756,-0.135373711585999,0.219889014959335,-0.366425275802612) * Get(-dx,0);
res += float4(0.073870040476322,0.093337073922157,0.054475426673889,0.049352549016476) * Get(-dx,dy);
res += float4(0.015168239362538,0.117916785180569,0.081461191177368,0.044218283146620) * Get(-dx,ddy);
res += float4(0.059450365602970,0.143888175487518,-0.004443942569196,-0.009594031609595) * Get(0,-ddy);
res += float4(0.281104534864426,0.358238011598587,-0.217664256691933,0.030039982870221) * Get(0,-dy);
res += float4(0.675335407257080,0.258992284536362,0.314811885356903,0.245720610022545) * Get(0,0);
res += float4(0.490484088659286,-0.063718982040882,0.012735605239868,0.166407868266106) * Get(0,dy);
res += float4(0.039689697325230,-0.045198634266853,0.027690270915627,0.064801879227161) * Get(0,ddy);
res += float4(-0.130222022533417,-0.199102699756622,0.024756221100688,-0.029768578708172) * Get(dx,-ddy);
res += float4(-0.217056050896645,-0.007983191870153,-0.116926454007626,-0.033174201846123) * Get(dx,-dy);
res += float4(-0.218849897384644,0.388457804918289,-0.103396989405155,0.359331101179123) * Get(dx,0);
res += float4(0.147068455815315,-0.216506436467171,0.052589911967516,-0.286556661128998) * Get(dx,dy);
res += float4(0.044583775103092,-0.070411249995232,-0.079849705100060,0.038279574364424) * Get(dx,ddy);
res += float4(0.019718699157238,0.025136575102806,-0.045630469918251,-0.086485274136066) * Get(ddx,-ddy);
res += float4(0.012456325814128,-0.172596305608749,0.042930189520121,0.105914488434792) * Get(ddx,-dy);
res += float4(-0.032214108854532,0.091195508837700,-0.059393800795078,0.130433782935143) * Get(ddx,0);
res += float4(0.093957878649235,-0.107299976050854,-0.008800571784377,0.039574008435011) * Get(ddx,dy);
res += float4(0.049062713980675,0.032929450273514,-0.051280122250319,-0.055978313088417) * Get(ddx,ddy);
return res;
}