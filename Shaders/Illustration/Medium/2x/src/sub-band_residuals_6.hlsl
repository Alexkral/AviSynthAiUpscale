sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0601927377283573,-0.0264206007122993,-0.0150369163602591,0.0994379892945290);
res += mul(Get(s0), float4x4(-0.0352107435464859,0.2819134891033173,-0.0383872240781784,0.0497681424021721,0.0932528674602509,-0.0551715455949306,0.0769669562578201,0.0040933904238045,0.0227518025785685,-0.1090331971645355,-0.0983979627490044,0.0799306780099869,-0.0872819051146507,-0.0515258014202118,0.0920033529400826,-0.0430246479809284));
res += mul(Get(s1), float4x4(-0.0208732727915049,0.2424429357051849,0.0964415371417999,-0.0493453107774258,-0.1184236705303192,0.0602651871740818,0.1197226047515869,-0.1385903954505920,0.0173675622791052,0.0315969325602055,-0.0308009106665850,-0.0800029858946800,-0.2393566519021988,0.1341861039400101,-0.0889952480792999,0.0112179107964039));
res += mul(Get(s2), float4x4(0.0031475576106459,-0.1037062481045723,-0.1433847695589066,0.0105157271027565,-0.0085578607395291,0.2110304236412048,-0.1406929343938828,0.1176761314272881,0.0779458060860634,-0.0206393115222454,0.0514457486569881,0.1201332733035088,-0.1930197030305862,-0.0780603289604187,0.0090193226933479,0.0965379849076271));
res += mul(Get(s3), float4x4(0.0428829267621040,-0.1267964839935303,-0.0558799952268600,0.0272787045687437,0.0902540013194084,-0.0942433252930641,-0.0604294762015343,0.0953889861702919,0.4437147378921509,0.2963970005512238,0.1211494356393814,-0.4712021350860596,0.3387669324874878,0.1536328941583633,-0.0961102247238159,-0.2948361039161682));
res += mul(Get(s4), float4x4(0.1387200206518173,0.0350713357329369,-0.0157224517315626,-0.0323395542800426,0.1817150563001633,-0.1247800663113594,0.0949559956789017,0.2545549869537354,0.1157081946730614,0.2262644469738007,-0.1218328624963760,0.1647479087114334,0.1257442682981491,0.1215358972549438,-0.0906371250748634,0.0627945736050606));
res += mul(Get(s5), float4x4(0.0116993105039001,0.1159538924694061,0.0406709462404251,-0.2561795115470886,0.0287053212523460,0.3173421919345856,-0.0103118233382702,0.0144458785653114,0.2561932504177094,-0.0992114990949631,0.0079639758914709,-0.0631477162241936,-0.2145593017339706,0.0557328201830387,0.1648599803447723,0.2664774954319000));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(-0.0258690584450960,-0.0513241402804852,0.0321582444012165,1.0027974843978882) * min(float4(0, 0, 0, 0), res);
return res;
}
