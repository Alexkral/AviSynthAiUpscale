sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.158686667680740,0.323978483676910,-0.014202905818820,-0.018337188288569);
res += float4(-0.020555144175887,0.003032882697880,-0.112049765884876,-0.000033249845728) * Get(-ddx,-ddy);
res += float4(-0.016133271157742,0.087199263274670,0.004761415999383,0.024541253224015) * Get(-ddx,-dy);
res += float4(0.018058001995087,-0.063609175384045,0.182396784424782,-0.210987716913223) * Get(-ddx,0);
res += float4(0.040173303335905,0.032853819429874,-0.127919584512711,0.069036908447742) * Get(-ddx,dy);
res += float4(-0.046070020645857,0.016715710982680,0.052583213895559,-0.008859913796186) * Get(-ddx,ddy);
res += float4(0.033468734472990,-0.034756429493427,0.224315211176872,0.058338567614555) * Get(-dx,-ddy);
res += float4(-0.067061536014080,-0.160182654857635,-0.036228507757187,0.034471984952688) * Get(-dx,-dy);
res += float4(-0.048870209604502,-0.197005778551102,-0.202121764421463,0.077373296022415) * Get(-dx,0);
res += float4(-0.041340436786413,0.145311698317528,-0.043502219021320,-0.078761391341686) * Get(-dx,dy);
res += float4(-0.023016005754471,-0.039881940931082,0.015046427957714,-0.126905903220177) * Get(-dx,ddy);
res += float4(-0.040992122143507,0.057638268917799,-0.091807581484318,-0.080746263265610) * Get(0,-ddy);
res += float4(0.098943069577217,-0.250897705554962,-0.124772787094116,0.060254901647568) * Get(0,-dy);
res += float4(0.502379238605499,-0.547586441040039,-0.082100421190262,-0.247929289937019) * Get(0,0);
res += float4(-0.191422194242477,-0.080068610608578,0.174641445279121,0.322906911373138) * Get(0,dy);
res += float4(0.089834578335285,-0.011285773478448,0.246499940752983,0.013826124370098) * Get(0,ddy);
res += float4(0.060510106384754,-0.002536823973060,-0.008414175361395,0.118480078876019) * Get(dx,-ddy);
res += float4(-0.107849225401878,-0.158023655414581,-0.174539878964424,-0.329867660999298) * Get(dx,-dy);
res += float4(-0.370003819465637,-0.521970570087433,-0.083625622093678,0.299835950136185) * Get(dx,0);
res += float4(-1.375436902046204,-0.016651913523674,0.266386598348618,-0.193086430430412) * Get(dx,dy);
res += float4(-0.142366364598274,-0.019200744107366,-0.055983234196901,0.095341466367245) * Get(dx,ddy);
res += float4(-0.025803994387388,0.060504496097565,-0.052956596016884,-0.120547078549862) * Get(ddx,-ddy);
res += float4(-0.019989291206002,0.000844403053634,0.169723480939865,0.026999076828361) * Get(ddx,-dy);
res += float4(0.143790364265442,-0.034379377961159,-0.126357212662697,0.072692126035690) * Get(ddx,0);
res += float4(-0.049800965934992,0.069377288222313,0.115642502903938,0.049727812409401) * Get(ddx,dy);
res += float4(0.108025304973125,0.011579091660678,-0.110693857073784,0.039800483733416) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.026278637349606,0.180899798870087,0.511275410652161,0.754353046417236) * min(float4(0, 0, 0, 0), res);
return res;
}
