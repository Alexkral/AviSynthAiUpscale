sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.082757689058781,-0.043049808591604,0.001834162627347,0.062866069376469);
res += float4(0.018206590786576,-0.021285271272063,0.080433778464794,0.107966661453247) * Get(-ddx,-ddy);
res += float4(0.029876867309213,0.247380629181862,-0.135583505034447,-0.115186609327793) * Get(-ddx,-dy);
res += float4(-0.027750540524721,0.111223295331001,0.196040183305740,-0.108744323253632) * Get(-ddx,0);
res += float4(0.043529659509659,0.218436762690544,-0.239430457353592,0.099520333111286) * Get(-ddx,dy);
res += float4(-0.017094802111387,0.097533211112022,0.208928987383842,0.011007735505700) * Get(-ddx,ddy);
res += float4(-0.096445746719837,0.002859133761376,0.017555546015501,-0.139840856194496) * Get(-dx,-ddy);
res += float4(0.275622755289078,-0.248165279626846,-0.093731582164764,0.222466483712196) * Get(-dx,-dy);
res += float4(-1.385008811950684,0.132352232933044,0.300546199083328,-0.101458244025707) * Get(-dx,0);
res += float4(-0.473743885755539,0.000494792941026,0.025539834052324,-0.019681876525283) * Get(-dx,dy);
res += float4(0.198773100972176,0.012325545772910,-0.000655131705571,-0.075313776731491) * Get(-dx,ddy);
res += float4(-0.030225345864892,-0.090080648660660,0.138987049460411,0.127114787697792) * Get(0,-ddy);
res += float4(0.047782190144062,-0.021641088649631,0.011602827347815,0.259976208209991) * Get(0,-dy);
res += float4(0.226348266005516,0.093206539750099,-0.368407756090164,-0.684226632118225) * Get(0,0);
res += float4(0.316899567842484,-0.007132109720260,-0.154770866036415,0.231055051088333) * Get(0,dy);
res += float4(-0.052111223340034,0.082760982215405,-0.161067768931389,0.157032728195190) * Get(0,ddy);
res += float4(0.043861966580153,-0.019691700115800,-0.346783190965652,-0.078895822167397) * Get(dx,-ddy);
res += float4(0.044095881283283,-0.152137279510498,0.344077646732330,0.379178643226624) * Get(dx,-dy);
res += float4(0.122943527996540,-0.276864916086197,-0.185550883412361,-0.210539951920509) * Get(dx,0);
res += float4(0.070426806807518,-0.179410934448242,0.308588385581970,0.089868105947971) * Get(dx,dy);
res += float4(0.014511230401695,0.155273973941803,0.057344682514668,-0.175645470619202) * Get(dx,ddy);
res += float4(-0.004152987152338,0.132291868329048,0.032516013830900,0.052677113562822) * Get(ddx,-ddy);
res += float4(0.013811941258609,-0.042640905827284,-0.045160695910454,-0.112638801336288) * Get(ddx,-dy);
res += float4(0.051415666937828,-0.078508332371712,0.087668485939503,-0.068001009523869) * Get(ddx,0);
res += float4(0.062443599104881,-0.128281280398369,0.114520408213139,-0.016336081549525) * Get(ddx,dy);
res += float4(-0.048827297985554,0.056711908429861,-0.201306775212288,0.099861018359661) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.007874090224504,0.102978721261024,0.917016446590424,0.677279353141785) * min(float4(0, 0, 0, 0), res);
return res;
}
