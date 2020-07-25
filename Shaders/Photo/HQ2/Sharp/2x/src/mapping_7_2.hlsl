sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.080315351486206,0.174214348196983,-0.027747586369514,0.011422295123339,0.091590248048306,-0.011404833756387,-0.052099838852882,-0.017876671627164,-0.036664053797722,0.183382868766785,0.005189895629883,-0.050363902002573,-0.033905252814293,0.118132404983044,0.072662726044655,-0.039691407233477));
res += mul(Get(s0,-dx,0), float4x4(-0.093085706233978,-0.125151813030243,0.163236752152443,-0.134129747748375,-0.008443382568657,-0.029117234051228,-0.059104878455400,0.048020832240582,-0.133634448051453,-0.011793106794357,-0.020897202193737,-0.022635761648417,0.072158940136433,-0.014216196723282,0.030440360307693,0.001343351788819));
res += mul(Get(s0,-dx,dy), float4x4(0.027951847761869,0.090960137546062,-0.040029298514128,-0.059546418488026,-0.039863552898169,0.005475233308971,0.139149859547615,0.043531551957130,0.025470366701484,0.061578586697578,0.056545060127974,0.093599468469620,-0.163459077477455,0.089367747306824,-0.030188536271453,-0.093321993947029));
res += mul(Get(s0,0,-dy), float4x4(0.043659690767527,0.076103486120701,-0.027200689539313,0.051373630762100,0.004440339747816,0.130449578166008,0.079017698764801,0.233675822615623,-0.184277638792992,0.001033531851135,-0.222167581319809,0.075844548642635,-0.218521609902382,0.109198741614819,-0.090368933975697,-0.034210603684187));
res += mul(Get(s0,0,0), float4x4(0.019215635955334,-0.115399934351444,-0.058993544429541,0.082816235721111,-0.069647878408432,0.091142669320107,0.039895627647638,-0.032739780843258,-0.007342458236963,-0.026963004842401,-0.002150775864720,0.083064325153828,-0.029729688540101,0.054695971310139,0.146619141101837,-0.093622438609600));
res += mul(Get(s0,0,dy), float4x4(-0.085824303328991,0.095526978373528,0.109458446502686,0.166382372379303,0.126128256320953,-0.019800841808319,-0.068810373544693,0.035283908247948,0.004042830318213,-0.061202447861433,-0.019029181450605,0.120000109076500,-0.038388021290302,-0.079565204679966,0.097476087510586,-0.029193487018347));
res += mul(Get(s0,dx,-dy), float4x4(0.142782643437386,0.165297389030457,0.071296066045761,-0.009282030165195,-0.043400373309851,-0.297240257263184,-0.072315081954002,-0.013770836405456,0.099061071872711,-0.110941819846630,-0.090073563158512,0.043104227632284,-0.004720074124634,-0.079356215894222,-0.023000555112958,-0.010476617142558));
res += mul(Get(s0,dx,0), float4x4(-0.010251780040562,-0.045045312494040,0.111727140843868,0.057930901646614,0.069063425064087,0.077471360564232,-0.171555325388908,0.011489122174680,0.055388182401657,0.001109268981963,0.002628943882883,-0.145055741071701,-0.097632415592670,-0.013570619747043,-0.123413898050785,-0.056939799338579));
res += mul(Get(s0,dx,dy), float4x4(-0.050742771476507,0.170323967933655,-0.034891612827778,0.020523713901639,0.003798301797360,-0.119223445653915,-0.020480766892433,-0.099430926144123,-0.033644277602434,-0.013338463380933,-0.088852167129517,-0.006471520755440,-0.054073188453913,-0.062677673995495,0.126308709383011,0.169037833809853));
res += mul(Get(s1,-dx,-dy), float4x4(-0.013252051547170,0.026420820504427,-0.035704534500837,0.175331890583038,-0.129018709063530,-0.123090721666813,0.138473272323608,-0.102117784321308,-0.055271606892347,-0.088233940303326,-0.215586841106415,0.048050794750452,-0.116751290857792,0.062734022736549,0.046126518398523,0.032431364059448));
res += mul(Get(s1,-dx,0), float4x4(-0.043407622724771,-0.080139823257923,0.083843909204006,-0.276664763689041,-0.312815338373184,-0.170151263475418,-0.058895498514175,-0.107872679829597,-0.005046785809100,-0.111694931983948,0.019805055111647,-0.054525610059500,0.126385450363159,-0.082155525684357,0.010967784561217,0.007835278287530));
res += mul(Get(s1,-dx,dy), float4x4(-0.043087583035231,0.036414958536625,-0.044152669608593,0.205156892538071,-0.063469730317593,0.087948121130466,-0.050246614962816,-0.144718021154404,-0.114416524767876,-0.001657027984038,-0.051507841795683,-0.055617712438107,-0.017359038814902,-0.091061390936375,0.115883238613605,-0.177650824189186));
res += mul(Get(s1,0,-dy), float4x4(0.025456937029958,-0.053685776889324,0.071074396371841,0.053537230938673,-0.011162744835019,0.074936248362064,0.005459185224026,-0.018039526417851,-0.053636077791452,-0.064047507941723,-0.017233051359653,0.158820644021034,-0.002611340256408,0.066109798848629,0.136620387434959,0.043178610503674));
res += mul(Get(s1,0,0), float4x4(0.110726602375507,-0.006496554706246,-0.010632230900228,-0.107920758426189,-0.137180551886559,0.083974801003933,0.131015613675117,-0.078806012868881,0.084912508726120,0.133959829807281,-0.148401841521263,-0.144186243414879,-0.051146510988474,-0.162957116961479,-0.193431392312050,0.013694697991014));
res += mul(Get(s1,0,dy), float4x4(-0.058933231979609,0.107024043798447,0.086458973586559,-0.090631395578384,-0.011446867138147,0.017672896385193,-0.092291519045830,-0.213224083185196,-0.131421282887459,0.072360031306744,-0.271719604730606,0.080763503909111,0.107206068933010,-0.016661219298840,-0.047967534512281,-0.099781267344952));
res += mul(Get(s1,dx,-dy), float4x4(-0.098032191395760,0.083697855472565,-0.042064987123013,0.130705848336220,0.107642345130444,0.103445291519165,0.001570957596414,-0.015382249839604,-0.094248451292515,0.168532937765121,-0.018402747809887,0.038544490933418,0.084908552467823,-0.138130500912666,-0.096946537494659,-0.165941312909126));
res += mul(Get(s1,dx,0), float4x4(-0.037375234067440,-0.187827140092850,0.070101298391819,0.022677246481180,-0.037377070635557,0.196843728423119,0.001615773653612,-0.049467708915472,0.026277551427484,-0.041826941072941,-0.122838683426380,0.081041440367699,-0.062023784965277,0.144240781664848,-0.187092989683151,0.115847133100033));
res += mul(Get(s1,dx,dy), float4x4(0.012536888010800,0.057606525719166,0.052792824804783,0.187851309776306,-0.033199939876795,-0.036827795207500,-0.017306793481112,0.079056195914745,-0.053408119827509,0.043343290686607,0.037837367504835,0.042313791811466,-0.045907888561487,-0.068639419972897,0.094683773815632,0.112399399280548));
res += mul(Get(s2,-dx,-dy), float4x4(-0.008502046577632,0.059509299695492,-0.111775897443295,-0.234838932752609,0.087210804224014,-0.007137759122998,0.040100038051605,-0.040200665593147,-0.038901962339878,0.163159549236298,-0.086675338447094,0.271797209978104,0.030284494161606,0.019570106640458,0.087687864899635,-0.075342170894146));
res += mul(Get(s2,-dx,0), float4x4(-0.055577222257853,0.082380130887032,0.052673418074846,-0.110705092549324,-0.003696542698890,0.185332506895065,-0.032400391995907,0.038290385156870,0.016031544655561,-0.061848629266024,0.054148625582457,-0.123723104596138,-0.133000373840332,-0.007044853642583,0.066287375986576,0.028264891356230));
res += mul(Get(s2,-dx,dy), float4x4(0.065354868769646,-0.143425598740578,-0.119889073073864,-0.073290593922138,-0.256702542304993,-0.029116647318006,0.007916412316263,-0.139813661575317,-0.050379082560539,-0.094651497900486,-0.051814660429955,-0.086640641093254,-0.106061071157455,-0.045799121260643,-0.001335975364782,-0.031560014933348));
res += mul(Get(s2,0,-dy), float4x4(0.088839776813984,0.236880302429199,-0.133304074406624,-0.068011738359928,0.053627248853445,0.011278500780463,-0.200192511081696,0.048699416220188,-0.212566807866096,-0.066025681793690,0.024573389440775,0.138437226414680,0.038831390440464,-0.099253915250301,0.003376122564077,-0.198309600353241));
res += mul(Get(s2,0,0), float4x4(-0.094418913125992,0.058532666414976,0.115806736052036,0.108275458216667,-0.021872298792005,-0.094455227255821,-0.090638346970081,0.102657273411751,0.108668781816959,0.033934671431780,-0.154308468103409,-0.036524552851915,0.009431491605937,0.060207653790712,0.116611041128635,-0.061449766159058));
res += mul(Get(s2,0,dy), float4x4(-0.035011302679777,0.151713177561760,-0.165889099240303,0.041490893810987,0.208685219287872,0.151666969060898,0.015696736052632,0.045435372740030,0.082275696098804,-0.023347929120064,-0.021528013050556,-0.001711910939775,0.064717501401901,-0.034155339002609,0.021210806444287,-0.035943221300840));
res += mul(Get(s2,dx,-dy), float4x4(-0.096797898411751,-0.047653399407864,-0.050150949507952,0.056194134056568,0.144661217927933,0.002435422502458,-0.130216121673584,-0.064482480287552,-0.105437338352203,-0.001105228788219,0.156184822320938,0.058060806244612,0.199255436658859,-0.026518153026700,-0.093407794833183,0.040876798331738));
res += mul(Get(s2,dx,0), float4x4(-0.017569299787283,0.173837468028069,0.147948712110519,-0.090515680611134,-0.018534487113357,0.097760975360870,-0.152480602264404,0.062192268669605,0.040667425841093,-0.014954407699406,0.103062115609646,-0.137433201074600,-0.079486705362797,-0.132345467805862,-0.053804282099009,0.006172202993184));
res += mul(Get(s2,dx,dy), float4x4(-0.053464572876692,0.015969153493643,-0.024378366768360,-0.021387727931142,0.025087043642998,-0.138205230236053,0.013759600929916,0.002624379005283,-0.004873221740127,0.149446159601212,0.058211673051119,-0.030270900577307,0.096242658793926,0.009660890325904,0.135925233364105,-0.064444571733475));
res += mul(Get(s3,-dx,-dy), float4x4(0.014810381457210,0.085781790316105,-0.190290898084641,-0.069323696196079,0.042068183422089,0.061032868921757,-0.054086085408926,-0.197703883051872,0.073123224079609,-0.102012164890766,0.149972334504128,-0.012044864706695,-0.003966312855482,-0.076677419245243,0.027059357613325,0.036432243883610));
res += mul(Get(s3,-dx,0), float4x4(-0.063798405230045,-0.002106027444825,-0.048346765339375,0.056208565831184,-0.095557220280170,0.058310303837061,-0.057061560451984,0.108945921063423,-0.139924496412277,-0.092620335519314,-0.120496898889542,0.035562846809626,0.045993939042091,-0.174384891986847,0.188605412840843,0.009260438382626));
res += mul(Get(s3,-dx,dy), float4x4(-0.047646880149841,0.053788401186466,-0.149954333901405,0.025868060067296,-0.069643832743168,0.107452832162380,-0.299573600292206,0.051216844469309,0.066913038492203,-0.057930748909712,0.056794371455908,0.065658092498779,-0.081350192427635,0.229383677244186,0.135985553264618,0.040513966232538));
res += mul(Get(s3,0,-dy), float4x4(0.054765846580267,0.114754475653172,-0.084671996533871,-0.083587117493153,-0.028231110423803,-0.160321861505508,0.019388258457184,0.051247179508209,-0.003154848935083,0.120556779205799,-0.076112627983093,0.030710646882653,-0.055718809366226,0.180060580372810,0.082916289567947,0.029669325798750));
res += mul(Get(s3,0,0), float4x4(-0.029721202328801,0.001150284777395,-0.034187223762274,0.045805692672729,0.041048619896173,-0.174195706844330,-0.049592874944210,-0.196880862116814,0.044431760907173,0.011918812990189,-0.201494202017784,-0.003314055735245,-0.005794987082481,0.077626064419746,0.018864449113607,-0.051760099828243));
res += mul(Get(s3,0,dy), float4x4(-0.053954653441906,-0.028941879048944,0.048650268465281,-0.103070899844170,0.026486435905099,-0.049359966069460,-0.131228193640709,-0.119516126811504,0.097227662801743,0.001800524885766,0.135169103741646,0.028912805020809,0.049517691135406,0.186870515346527,-0.020279800519347,0.055904421955347));
res += mul(Get(s3,dx,-dy), float4x4(0.173621192574501,0.114049248397350,-0.156022891402245,0.083399891853333,0.103009939193726,0.033590137958527,0.097414538264275,0.039025306701660,0.036081515252590,0.032373607158661,0.082252651453018,-0.019156714901328,-0.113364793360233,0.117397330701351,0.091390281915665,-0.077440984547138));
res += mul(Get(s3,dx,0), float4x4(0.016478393226862,0.070499554276466,0.126259490847588,0.051591437309980,0.023969074711204,0.094259209930897,0.176293700933456,-0.137229859828949,0.054131131619215,0.118809156119823,0.155981600284576,-0.001637500361539,0.080063946545124,-0.003581521799788,0.082878030836582,0.011918527074158));
res += mul(Get(s3,dx,dy), float4x4(0.048973165452480,-0.124678134918213,-0.045139588415623,0.099973447620869,0.211476296186447,-0.129126325249672,0.009908138774335,-0.062467932701111,-0.038734782487154,0.014114767313004,0.098886445164680,-0.048028431832790,0.008446376770735,-0.009478604421020,-0.126269102096558,-0.031437393277884));
res = max(float4(0,0,0,0), res);
return res;
}
