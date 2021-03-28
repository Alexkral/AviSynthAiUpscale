sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.550223767757416,-0.041450940072536,0.030531849712133,0.294956982135773);
res += float4(0.000354451069143,0.049147982150316,0.044610664248466,-0.000247521500569) * Get(-ddx,-ddy);
res += float4(-0.016009250655770,-0.058263756334782,0.028881374746561,-0.002988573629409) * Get(-ddx,-dy);
res += float4(-0.041437443345785,-0.003885309910402,-0.200935959815979,0.061153396964073) * Get(-ddx,0);
res += float4(0.072233110666275,0.023096246644855,-0.059227459132671,-0.076983690261841) * Get(-ddx,dy);
res += float4(0.016770960763097,-0.001330024213530,0.100184008479118,0.028145413845778) * Get(-ddx,ddy);
res += float4(-0.022301081568003,-0.024783287197351,0.028336588293314,-0.030500702559948) * Get(-dx,-ddy);
res += float4(0.078827612102032,0.081966929137707,0.021491521969438,0.084938190877438) * Get(-dx,-dy);
res += float4(-0.122352451086044,0.038914758712053,0.187359124422073,-0.245624512434006) * Get(-dx,0);
res += float4(-0.153472304344177,-0.093975022435188,-0.037069477140903,-0.204699277877808) * Get(-dx,dy);
res += float4(0.024692110717297,0.030967911705375,-0.193988293409348,-0.007042321842164) * Get(-dx,ddy);
res += float4(0.030143920332193,-0.112134151160717,0.041246492415667,0.063309744000435) * Get(0,-ddy);
res += float4(-0.198833882808685,0.798838794231415,-0.112727418541908,0.203934714198112) * Get(0,-dy);
res += float4(0.268463790416718,-0.600643455982208,0.512575626373291,-0.370611220598221) * Get(0,0);
res += float4(0.778868794441223,-0.065330423414707,-0.050496738404036,-0.429683357477188) * Get(0,dy);
res += float4(-0.020924011245370,-0.080653563141823,-0.242492511868477,0.187563911080360) * Get(0,ddy);
res += float4(-0.026588905602694,-0.039437521249056,-0.046235486865044,-0.045333210378885) * Get(dx,-ddy);
res += float4(-0.225062474608421,0.206864193081856,0.137625098228455,-0.078427657485008) * Get(dx,-dy);
res += float4(0.076278202235699,-0.287332206964493,-0.485334008932114,0.123432002961636) * Get(dx,0);
res += float4(0.284793496131897,0.095579415559769,0.134077712893486,0.165882527828217) * Get(dx,dy);
res += float4(-0.093782112002373,0.040293704718351,0.166635349392891,-0.093707844614983) * Get(dx,ddy);
res += float4(-0.015122872777283,0.088989831507206,-0.087395705282688,0.014617978595197) * Get(ddx,-ddy);
res += float4(0.033363912254572,-0.067449554800987,-0.086605519056320,-0.025524152442813) * Get(ddx,-dy);
res += float4(-0.058955781161785,-0.019635953009129,0.126797571778297,0.012114817276597) * Get(ddx,0);
res += float4(-0.097698420286179,-0.021050203591585,-0.035127736628056,0.042630583047867) * Get(ddx,dy);
res += float4(0.089231327176094,-0.007428724784404,0.074309177696705,-0.025461684912443) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.006412934977561,-0.226486727595329,0.795585691928864,0.165324077010155) * min(float4(0, 0, 0, 0), res);
return res;
}
