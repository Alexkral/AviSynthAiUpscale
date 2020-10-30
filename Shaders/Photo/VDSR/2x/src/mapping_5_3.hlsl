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
res += mul(Get(s0,-dx,-dy), float4x4(-0.206583768129349,-0.082807220518589,-0.018411260098219,0.076740920543671,0.042835418134928,0.108422286808491,0.011436780914664,0.060322999954224,-0.039787948131561,0.058103561401367,0.085132144391537,0.031289707869291,-0.152055844664574,-0.142868116497993,0.036736439913511,0.021012164652348));
res += mul(Get(s0,-dx,0), float4x4(0.014871916733682,0.106087796390057,-0.013115839101374,0.103216722607613,0.074803732335567,0.061151426285505,0.036753367632627,-0.137359708547592,0.090784512460232,0.074372723698616,0.103894509375095,0.093787007033825,0.104935802519321,-0.045989789068699,-0.048558220267296,0.035656027495861));
res += mul(Get(s0,-dx,dy), float4x4(-0.131398409605026,0.104853294789791,-0.032904706895351,-0.060802474617958,0.069670170545578,0.000963406404480,-0.001641281414777,-0.012322469614446,-0.020471453666687,0.114106558263302,-0.002490460872650,-0.035677164793015,-0.016486193984747,0.090300507843494,-0.001842391211540,0.042974948883057));
res += mul(Get(s0,0,-dy), float4x4(-0.105985566973686,0.006729545071721,0.125581428408623,-0.028554402291775,-0.096275836229324,0.021280525252223,0.120337262749672,0.013403727672994,-0.024038961157203,-0.018232544884086,0.068539112806320,-0.098530322313309,0.037272214889526,0.093709699809551,-0.114174254238605,0.230653405189514));
res += mul(Get(s0,0,0), float4x4(0.013892116956413,0.067215271294117,0.004712841007859,0.078044869005680,0.000184082033229,0.084225930273533,0.086194068193436,0.043867334723473,0.021325159817934,0.040975484997034,0.043456640094519,-0.027278544381261,0.240740463137627,-0.049001492559910,-0.163869291543961,0.174347728490829));
res += mul(Get(s0,0,dy), float4x4(-0.041287451982498,0.037111025303602,0.000407417566748,0.083555616438389,0.040113884955645,0.106060653924942,0.013710804283619,0.077865906059742,0.011817966587842,-0.035165138542652,0.079419896006584,-0.028726320713758,-0.018223239108920,0.185898438096046,-0.094198077917099,-0.006931291893125));
res += mul(Get(s0,dx,-dy), float4x4(0.037675920873880,-0.021826218813658,0.052888862788677,0.029575778171420,0.091384910047054,0.005757234990597,-0.072050876915455,-0.147657915949821,0.014832648448646,0.088473014533520,-0.061834733933210,0.087315380573273,-0.062655560672283,0.037841457873583,-0.120139457285404,0.061386242508888));
res += mul(Get(s0,dx,0), float4x4(0.075062930583954,-0.180087357759476,0.019657701253891,-0.027106530964375,0.015048078261316,-0.013820940628648,-0.123050928115845,-0.082461662590504,0.040988836437464,0.057799737900496,0.023354222998023,-0.014853737317026,-0.041436348110437,-0.048205677419901,-0.094947017729282,-0.033068034797907));
res += mul(Get(s0,dx,dy), float4x4(0.093226648867130,0.061016615480185,-0.001369494711980,-0.045731361955404,0.051704820245504,0.058260843157768,-0.160393849015236,0.049021363258362,0.090280190110207,0.080140590667725,0.018066899850965,0.047416068613529,-0.088369496166706,0.058161616325378,0.042691156268120,-0.055116280913353));
res += mul(Get(s1,-dx,-dy), float4x4(0.030137209221721,0.076136022806168,0.067831657826900,0.016920916736126,0.022327177226543,-0.150355398654938,-0.027023283764720,0.083883330225945,-0.147095277905464,0.025014566257596,0.044219423085451,-0.084620565176010,-0.054613959044218,-0.021550657227635,-0.058778461068869,0.088028691709042));
res += mul(Get(s1,-dx,0), float4x4(-0.011011209338903,0.001444941270165,-0.051453024148941,0.059250541031361,0.014982548542321,-0.109731331467628,0.019954845309258,0.053617443889380,-0.096590362489223,-0.182519003748894,-0.057660818099976,-0.019797319546342,-0.002011173404753,0.175501450896263,-0.122406780719757,0.008785258978605));
res += mul(Get(s1,-dx,dy), float4x4(-0.075914189219475,-0.030504897236824,-0.000885520130396,-0.001661632442847,0.001438343664631,-0.081184558570385,-0.106638669967651,-0.055862557142973,-0.055120319128036,-0.013424451462924,-0.051686000078917,-0.114490345120430,-0.054059956222773,0.016230149194598,0.144160687923431,-0.053383175283670));
res += mul(Get(s1,0,-dy), float4x4(0.058053247630596,0.066931866109371,0.006518028210849,0.078612081706524,0.084202058613300,-0.064713023602962,-0.048173632472754,0.100494779646397,-0.032282456755638,-0.055554635822773,0.076244831085205,0.034184966236353,-0.044241819530725,-0.125816121697426,0.019369138404727,0.031924959272146));
res += mul(Get(s1,0,0), float4x4(0.039030652493238,0.079630218446255,0.006088147405535,0.177265301346779,0.042947731912136,0.035688135772943,-0.072103843092918,-0.055721182376146,-0.038863949477673,-0.035519525408745,-0.079822212457657,-0.060327693820000,0.004368061199784,0.039983101189137,-0.079151339828968,0.016217062249780));
res += mul(Get(s1,0,dy), float4x4(0.012671105563641,0.009801487438381,0.000074071736890,0.052884921431541,0.017861247062683,-0.013990131206810,-0.033688526600599,0.045688517391682,-0.075417138636112,0.081977680325508,0.159035086631775,-0.042444549500942,0.005025431048125,-0.115311242640018,0.005776554346085,-0.032762903720140));
res += mul(Get(s1,dx,-dy), float4x4(0.199635922908783,-0.058403145521879,0.062846429646015,0.054782416671515,-0.035517208278179,-0.015209648758173,0.011311917565763,-0.132618680596352,0.222938075661659,-0.083342626690865,0.059545218944550,-0.114966168999672,0.123934827744961,-0.152726516127586,-0.054621841758490,-0.019336652010679));
res += mul(Get(s1,dx,0), float4x4(-0.029438138008118,-0.066382646560669,0.077760607004166,-0.078567199409008,-0.089937947690487,0.001337601919658,0.060602169483900,-0.025154020637274,0.037473700940609,0.068468332290649,0.075025774538517,-0.057512447237968,0.183287248015404,0.068471021950245,-0.074056088924408,0.006533320527524));
res += mul(Get(s1,dx,dy), float4x4(0.067423619329929,-0.003432811936364,0.028798982501030,-0.045129660516977,-0.010256695561111,-0.025646861642599,0.018306497484446,-0.008746280334890,0.084780894219875,0.076478041708469,0.078964464366436,-0.085611924529076,0.010848646983504,-0.032764896750450,-0.069514743983746,-0.022091532126069));
res += mul(Get(s2,-dx,-dy), float4x4(-0.029563907533884,0.006554279942065,-0.007574679795653,0.041051980108023,0.124776713550091,-0.089787758886814,0.131446287035942,0.076065346598625,-0.136623889207840,-0.081872142851353,-0.157307639718056,-0.004625465720892,-0.086793400347233,-0.072490833699703,-0.058098219335079,-0.032127585262060));
res += mul(Get(s2,-dx,0), float4x4(-0.014345524832606,0.152897447347641,0.022521140053868,-0.002968715503812,0.003344788216054,0.016874495893717,0.006222775205970,0.045678045600653,0.017410865053535,0.008659718558192,-0.037631981074810,0.067806676030159,0.032054744660854,0.090045481920242,0.020628750324249,-0.036319840699434));
res += mul(Get(s2,-dx,dy), float4x4(0.021201366558671,-0.090595215559006,-0.000613927026279,-0.106238588690758,0.026999304071069,0.061824403703213,0.009409480728209,0.098071947693825,0.091221131384373,-0.015967648476362,-0.009921343065798,-0.029308620840311,-0.040415894240141,-0.054271459579468,-0.083906285464764,-0.017356939613819));
res += mul(Get(s2,0,-dy), float4x4(0.042530421167612,0.121255367994308,-0.040462549775839,0.036877639591694,-0.098107837140560,0.012407888658345,0.097397252917290,-0.011777102015913,-0.152462601661682,-0.088132463395596,0.057083711028099,-0.053108930587769,-0.060347225517035,-0.007721514441073,0.133237332105637,0.031048983335495));
res += mul(Get(s2,0,0), float4x4(0.066689722239971,-0.010595091618598,-0.076217927038670,0.002534960862249,0.020239869132638,0.089536324143410,0.014091386459768,0.018741047009826,0.012791750021279,-0.074011020362377,0.123465664684772,-0.100162208080292,-0.040163930505514,-0.040083151310682,0.081889294087887,0.005243243183941));
res += mul(Get(s2,0,dy), float4x4(-0.040295138955116,-0.075173012912273,0.100965969264507,-0.060688532888889,-0.056910261511803,0.038295939564705,-0.059198871254921,-0.003178173443303,0.038235064595938,-0.020300222560763,-0.079307943582535,0.019494347274303,0.011992277577519,-0.017572136595845,0.081825919449329,-0.029834507033229));
res += mul(Get(s2,dx,-dy), float4x4(0.052041988819838,0.002025049878284,0.059036672115326,0.100247792899609,-0.016446989029646,0.047195717692375,0.004219267051667,-0.142953798174858,-0.056616306304932,-0.040705818682909,-0.099357046186924,0.111049443483353,-0.038638506084681,-0.008624859154224,0.014852769672871,-0.068801194429398));
res += mul(Get(s2,dx,0), float4x4(-0.106520816683769,0.012205622158945,-0.017604300752282,0.105240024626255,0.092473737895489,0.058798648416996,-0.060629893094301,-0.017370618879795,0.061868049204350,0.047494243830442,-0.018609555438161,0.014907111413777,0.027865124866366,-0.087326027452946,0.039349690079689,-0.116523578763008));
res += mul(Get(s2,dx,dy), float4x4(-0.082149155437946,-0.055963538587093,-0.037820685654879,0.043357249349356,-0.013528894633055,0.002461625961587,-0.115419924259186,0.041649103164673,0.074294969439507,-0.083270877599716,-0.105721019208431,0.003580702934414,-0.005675910040736,0.017711158841848,-0.020928846672177,0.058474864810705));
res += mul(Get(s3,-dx,-dy), float4x4(-0.033701956272125,0.041123516857624,0.044576443731785,-0.011201586574316,0.030262744054198,0.073284730315208,0.059213481843472,-0.021150115877390,-0.055837050080299,0.070862941443920,0.051922518759966,0.188692748546600,-0.007483989000320,0.023066798225045,-0.002701101126149,-0.023941433057189));
res += mul(Get(s3,-dx,0), float4x4(-0.067725270986557,-0.002479409100488,0.172415390610695,-0.019291495904326,-0.082038804888725,-0.081033647060394,0.105136565864086,-0.019346462562680,0.020524356514215,0.030857734382153,-0.010172574780881,0.192578062415123,-0.117821216583252,0.183481574058533,-0.036506123840809,0.015813097357750));
res += mul(Get(s3,-dx,dy), float4x4(0.030357589945197,-0.052812967449427,0.065703518688679,0.001022568438202,-0.021406941115856,0.062491398304701,-0.034904122352600,0.035219576209784,-0.069188281893730,0.056728973984718,0.012845109216869,0.080687299370766,-0.030811300501227,0.081647440791130,0.077206887304783,-0.024062158539891));
res += mul(Get(s3,0,-dy), float4x4(0.099670387804508,-0.072612270712852,0.052132453769445,-0.087800376117229,0.006936544552445,-0.009464940056205,-0.001738754101098,-0.030763136222959,-0.050290692597628,-0.013872523792088,0.115634247660637,0.003982665482908,0.142289593815804,0.044357940554619,-0.080790333449841,-0.014071273617446));
res += mul(Get(s3,0,0), float4x4(0.017940124496818,-0.161466568708420,0.077557802200317,0.109102547168732,0.095722571015358,-0.087345182895660,0.030371099710464,-0.061412375420332,-0.128661885857582,-0.129443466663361,-0.049426112323999,0.019927352666855,0.060294330120087,0.022278137505054,-0.120879776775837,-0.039324138313532));
res += mul(Get(s3,0,dy), float4x4(-0.005389754660428,-0.075787194073200,0.003187197027728,0.069416798651218,0.123089335858822,-0.001246930565685,0.022498479112983,0.086390301585197,0.061685927212238,-0.126012980937958,0.031191270798445,0.030892243608832,0.037584714591503,0.070568934082985,0.098848395049572,-0.006736294832081));
res += mul(Get(s3,dx,-dy), float4x4(-0.044200696051121,-0.023483343422413,0.067830935120583,-0.025660270825028,0.038782835006714,0.036398440599442,-0.047833431512117,0.007964941672981,0.202712610363960,-0.002661642851308,0.015994897112250,-0.144119560718536,-0.043482191860676,-0.018377430737019,-0.085262097418308,-0.118584662675858));
res += mul(Get(s3,dx,0), float4x4(0.057872328907251,-0.055555835366249,-0.086030215024948,-0.018776385113597,0.002984644379467,0.002802205737680,-0.043698191642761,0.042340964078903,-0.119402922689915,-0.104919247329235,-0.030451700091362,-0.185100153088570,0.011852430179715,-0.002948634326458,-0.025399705395103,-0.002477475674823));
res += mul(Get(s3,dx,dy), float4x4(0.158547639846802,0.006838330533355,-0.009733338840306,-0.016010994091630,-0.014925486408174,0.043451812118292,0.022516351193190,-0.014949472621083,0.032520584762096,-0.032400734722614,0.136087238788605,0.010867268778384,-0.067084349691868,0.011835610494018,0.004826238378882,-0.023288769647479));
return max(float4(0,0,0,0), res);
}
