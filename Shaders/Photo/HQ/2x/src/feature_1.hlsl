sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.011312438175082,0.045520890504122,-0.039313208311796,0.384781599044800);
res += float4(-0.002218066947535,0.012099204584956,-0.015182876028121,0.046586003154516) * Get(-ddx,-ddy);
res += float4(-0.064126066863537,0.053022604435682,0.061213091015816,0.031455233693123) * Get(-ddx,-dy);
res += float4(0.199175655841827,-0.255900949239731,-0.167397618293762,0.015304123982787) * Get(-ddx,0);
res += float4(-0.219465851783752,0.056751415133476,-0.056440308690071,-0.024874521419406) * Get(-ddx,dy);
res += float4(0.069236293435097,-0.044447246938944,0.036168739199638,0.003603375051171) * Get(-ddx,ddy);
res += float4(0.026721410453320,-0.001046921010129,-0.065564133226871,-0.037494488060474) * Get(-dx,-ddy);
res += float4(-0.097271479666233,-0.292907625436783,-0.082011073827744,-0.088109835982323) * Get(-dx,-dy);
res += float4(0.145748049020767,0.647099316120148,-0.085525795817375,-0.143733724951744) * Get(-dx,0);
res += float4(-0.124681010842323,-0.042418375611305,-0.051171235740185,-0.098623178899288) * Get(-dx,dy);
res += float4(-0.011035106144845,0.012744220905006,-0.090022310614586,-0.032571848481894) * Get(-dx,ddy);
res += float4(0.087309502065182,0.010092786513269,0.031392015516758,-0.052710525691509) * Get(0,-ddy);
res += float4(-0.289533168077469,0.461494088172913,-0.310173213481903,-0.101521931588650) * Get(0,-dy);
res += float4(0.619006693363190,-0.969902217388153,-0.364761143922806,-0.235743537545204) * Get(0,0);
res += float4(0.704757869243622,0.077054731547832,0.195774123072624,0.067283444106579) * Get(0,dy);
res += float4(-0.067636676132679,-0.277445226907730,-0.083750680088997,0.011175730265677) * Get(0,ddy);
res += float4(-0.124098844826221,-0.086220093071461,-0.004332001786679,0.016687987372279) * Get(dx,-ddy);
res += float4(0.009004777297378,0.291390031576157,0.375130981206894,-0.099165514111519) * Get(dx,-dy);
res += float4(-0.727936804294586,-0.034207154065371,0.513252794742584,-0.075864218175411) * Get(dx,0);
res += float4(-0.002202569739893,0.239381402730942,0.042543485760689,-0.112893156707287) * Get(dx,dy);
res += float4(-0.064603663980961,0.095604330301285,0.134922295808792,0.044370826333761) * Get(dx,ddy);
res += float4(0.004464050754905,0.007851781323552,0.059323582798243,-0.019311426207423) * Get(ddx,-ddy);
res += float4(-0.011577231809497,-0.114846572279930,-0.026964744552970,0.026046626269817) * Get(ddx,-dy);
res += float4(-0.142668873071671,0.233559623360634,0.031878285109997,-0.006600771564990) * Get(ddx,0);
res += float4(0.025840707123280,-0.207238510251045,-0.000946720538195,-0.020300123840570) * Get(ddx,dy);
res += float4(0.025702890008688,0.020291782915592,0.037508923560381,-0.079011470079422) * Get(ddx,ddy);
return res;
}