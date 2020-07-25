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
res += mul(Get(s0,-dx,-dy), float4x4(0.000017761243726,0.011783457361162,0.017286045476794,-0.012708519585431,-0.000007362807992,-0.006727376487106,0.017905356362462,0.099989213049412,-0.000010934779311,0.030805977061391,-0.009730650112033,-0.009212400764227,-0.000016055824744,0.012542288750410,0.013102993369102,-0.070411771535873));
res += mul(Get(s0,-dx,0), float4x4(0.000007455038485,0.009248216636479,-0.033833611756563,-0.025592831894755,0.000027008160032,0.004186136648059,0.039712302386761,-0.064062274992466,-0.000013819761080,0.082212857902050,0.060643143951893,0.013235201127827,0.000004732496109,0.017188398167491,0.035567324608564,0.034720703959465));
res += mul(Get(s0,-dx,dy), float4x4(-0.000040875358536,0.013724775984883,-0.006484242156148,-0.011691940017045,0.000015688636267,-0.014853962697089,0.004128212574869,-0.020382354035974,-0.000014605131582,0.022277466952801,-0.011556267738342,-0.004622165113688,0.000017013711840,0.006263611838222,0.020378017798066,-0.018454665318131));
res += mul(Get(s0,0,-dy), float4x4(-0.000024553002731,-0.042089372873306,-0.043936159461737,0.015731750056148,-0.000011259725397,-0.013844527304173,-0.012220548465848,0.161971807479858,0.000016303049051,0.055692851543427,0.048961970955133,-0.035610087215900,-0.000021398753233,0.004063208121806,-0.023837519809604,-0.042804766446352));
res += mul(Get(s0,0,0), float4x4(0.000003423754151,-0.007744763046503,-0.060550376772881,-0.021760726347566,-0.000014427439964,-0.028470924124122,-0.038345821201801,0.068884171545506,-0.000018067034034,-0.038016926497221,-0.029121695086360,0.099235452711582,0.000005835483080,-0.008582706563175,0.002192523330450,0.040236979722977));
res += mul(Get(s0,0,dy), float4x4(-0.000003398683020,0.023398399353027,0.033195290714502,-0.013569657690823,0.000003996139640,-0.012048042379320,0.010635758750141,-0.018425142392516,-0.000047793717386,-0.018786134198308,-0.046228293329477,0.017829248681664,-0.000008195240298,-0.018014756962657,0.008762320503592,-0.020601836964488));
res += mul(Get(s0,dx,-dy), float4x4(0.000005569565928,-0.040684945881367,-0.060187160968781,0.013704082928598,0.000020484772904,0.017430864274502,0.046762712299824,0.039535168558359,-0.000016796087948,0.007022728212178,-0.020184941589832,-0.014910743571818,-0.000034237138607,-0.017348976805806,-0.026764743030071,-0.039133004844189));
res += mul(Get(s0,dx,0), float4x4(-0.000092722926638,-0.002349118702114,-0.025104913860559,-0.011039816774428,-0.000035461012885,-0.000254795275396,-0.029503498226404,0.064315557479858,-0.000024810999093,0.037154171615839,-0.013586714863777,0.002171567874029,0.000047561887186,0.041445527225733,0.017849463969469,-0.017783310264349));
res += mul(Get(s0,dx,dy), float4x4(-0.000030785220588,-0.003023480065167,0.023365825414658,-0.012455042451620,-0.000021975660275,-0.021255925297737,-0.017112236469984,0.034308116883039,-0.000014803679733,0.016938356682658,-0.008028150536120,-0.000761411327403,0.000045057458919,-0.009361414238811,-0.016602005809546,-0.024815764278173));
res += mul(Get(s1,-dx,-dy), float4x4(0.000003628206741,-0.007808213587850,0.006323521491140,-0.016445357352495,-0.000027900201530,-0.016326380893588,0.023272497579455,-0.041398439556360,-0.000010197964002,-0.036883402615786,-0.027064852416515,-0.018368879333138,-0.000011313725736,-0.021492758765817,0.001339159207419,-0.075457558035851));
res += mul(Get(s1,-dx,0), float4x4(0.000026247493224,0.013395321555436,0.029439618811011,-0.009337293915451,-0.000072450915468,0.004670563153923,0.017074134200811,-0.045463286340237,-0.000023404094463,-0.035432100296021,0.035878065973520,-0.057371772825718,0.000002159824817,0.000200931623112,0.026218246668577,0.016230637207627));
res += mul(Get(s1,-dx,dy), float4x4(0.000065565247496,0.011077141389251,-0.008788886480033,-0.033096436411142,0.000035210367059,0.016506269574165,0.060394506901503,-0.020791308954358,-0.000046461129386,-0.025712089613080,-0.012922182679176,-0.034498974680901,-0.000041170045733,-0.001093073049560,0.059708185493946,-0.013062030076981));
res += mul(Get(s1,0,-dy), float4x4(0.000024949476938,0.018943849951029,0.006666501518339,-0.007782260887325,0.000018654240193,-0.027367809787393,0.001191665185615,-0.004420606885105,0.000063412597228,-0.027321321889758,-0.025196459144354,-0.010275825858116,-0.000025213392291,-0.008020421490073,-0.020999616011977,-0.034751545637846));
res += mul(Get(s1,0,0), float4x4(-0.000051306786190,0.036264196038246,0.076362125575542,-0.019170908257365,-0.000036364635889,-0.009530819952488,-0.052568726241589,0.008232679218054,0.000063517683884,-0.014851028099656,-0.051718510687351,0.021658577024937,-0.000027261447030,0.038117613643408,0.028926495462656,0.016485460102558));
res += mul(Get(s1,0,dy), float4x4(-0.000026654928661,-0.041794911026955,-0.087804585695267,0.033644989132881,0.000017516849766,0.026833647862077,0.036148443818092,0.007971128448844,-0.000027661257263,0.007568090222776,-0.024110365658998,-0.019281867891550,-0.000031379891880,0.002205767901614,0.072859644889832,-0.011708348989487));
res += mul(Get(s1,dx,-dy), float4x4(-0.000019455084839,0.006890208926052,0.009697734378278,-0.005084522068501,0.000017887965441,-0.010242605581880,-0.020382393151522,0.027522506192327,0.000028634734917,0.020577048882842,0.077290937304497,-0.048602897673845,0.000028782880690,0.000922715698835,0.024149812757969,-0.062670893967152));
res += mul(Get(s1,dx,0), float4x4(-0.000015568819435,0.005536827258766,0.026777427643538,0.007022175472230,-0.000041793693526,0.003253598930314,-0.050304308533669,0.035357527434826,0.000013039013538,0.061930645257235,0.098359994590282,-0.066139996051788,0.000006452770776,0.033604338765144,0.086434505879879,-0.038132559508085));
res += mul(Get(s1,dx,dy), float4x4(0.000011351549801,-0.015443337149918,-0.063557125627995,-0.006964617408812,-0.000052733928896,0.011017730459571,-0.000518224958796,0.033021777868271,0.000035834931623,0.058171313256025,0.055752798914909,-0.037286914885044,0.000045827262511,-0.010744863189757,0.054123219102621,-0.055532760918140));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000000136241795,0.013581893406808,-0.019892161712050,-0.000513273931574,0.000001139122219,-0.027695851400495,-0.018558742478490,-0.032421857118607,0.000003958215984,-0.057869043201208,0.032849632203579,-0.025053346529603,0.000029407565307,-0.048792306333780,-0.022391458973289,-0.033027015626431));
res += mul(Get(s2,-dx,0), float4x4(0.000049360936828,0.093613304197788,0.039927624166012,0.029652377590537,-0.000013378840777,-0.009964263066649,0.003090405836701,0.013603564351797,-0.000016511779904,-0.004444919526577,0.010593768209219,0.044444128870964,0.000010235111404,0.000053133931942,0.008557096123695,-0.039868172258139));
res += mul(Get(s2,-dx,dy), float4x4(0.000004546783657,0.023823499679565,0.031669285148382,0.037135977298021,-0.000075999676483,-0.026485038921237,-0.026706233620644,-0.018204029649496,0.000006491639851,0.008855316787958,-0.008944998495281,-0.009500054642558,-0.000000534051026,-0.034566935151815,-0.008501511998475,-0.064506940543652));
res += mul(Get(s2,0,-dy), float4x4(-0.000024346731152,0.033230338245630,-0.009119453839958,-0.009696049615741,0.000021009722332,0.003018205752596,0.014016713947058,-0.049913898110390,0.000019510363927,0.034131944179535,0.007920913398266,0.002597941551358,0.000014267722690,-0.020579680800438,0.029183413833380,-0.038851201534271));
res += mul(Get(s2,0,0), float4x4(-0.000021774179913,0.000896516896319,0.038455221801996,-0.005911240819842,0.000012576078916,-0.019033661112189,0.001942132716067,0.023096282035112,-0.000015806368538,0.091869585216045,0.105973556637764,0.038221586495638,-0.000017477867004,-0.049132250249386,0.016519611701369,0.045237347483635));
res += mul(Get(s2,0,dy), float4x4(-0.000002244111101,0.023649042472243,0.041829939931631,-0.016113864257932,0.000049649541324,-0.030146805569530,-0.019810298457742,-0.031807534396648,-0.000011492429621,-0.007423527538776,-0.011169383302331,0.054373774677515,-0.000011984613593,-0.023662406951189,0.021955415606499,-0.027846697717905));
res += mul(Get(s2,dx,-dy), float4x4(-0.000035839751945,0.002797346329316,-0.012116408906877,-0.012725898995996,-0.000034383036109,-0.017217932268977,-0.010000913403928,-0.034970115870237,-0.000007312774869,0.025425657629967,-0.041788119822741,0.019581995904446,0.000021008761905,-0.007868889719248,-0.031843416392803,0.030051570385695));
res += mul(Get(s2,dx,0), float4x4(0.000018707798517,-0.000822578382213,-0.012009709142148,0.005751509685069,-0.000017726417354,-0.038535360246897,-0.016775587573647,-0.007124193478376,-0.000015216227439,0.004926981870085,-0.000700026517734,0.081048913300037,0.000008242134754,-0.002673717448488,-0.069101274013519,0.113600820302963));
res += mul(Get(s2,dx,dy), float4x4(-0.000004091365554,-0.002340928418562,-0.006803251337260,-0.013875972479582,-0.000004641647593,-0.028270848095417,-0.023485943675041,-0.039201080799103,0.000024181847039,-0.018663773313165,-0.024241518229246,0.040057953447104,0.000011858972357,0.014452189207077,-0.003434917191043,0.072290718555450));
res += mul(Get(s3,-dx,-dy), float4x4(-0.000009357147064,-0.092382177710533,0.012628109194338,-0.001031179912388,-0.000030380437238,-0.021248528733850,0.029260490089655,-0.010087452828884,0.000034137392504,-0.005125361960381,-0.021357353776693,0.009514787234366,-0.000002531548262,-0.024678843095899,0.027595670893788,-0.022752651944757));
res += mul(Get(s3,-dx,0), float4x4(0.000000982596134,-0.078841321170330,-0.033713880926371,0.006987429689616,-0.000017383472368,0.011562056839466,0.017768682911992,0.035120274871588,0.000001887091344,0.005667204502970,-0.012451343238354,-0.011156082153320,0.000030324157706,0.021751744672656,0.030247574672103,-0.030918681994081));
res += mul(Get(s3,-dx,dy), float4x4(-0.000039219718019,-0.028927559033036,0.030919352546334,-0.024748258292675,-0.000042822517571,-0.018685145303607,-0.068739309906960,0.028204496949911,-0.000026925657949,-0.029616922140121,0.012644783593714,0.003896006150171,0.000028003025363,0.012743021361530,0.011563714593649,0.016066543757915));
res += mul(Get(s3,0,-dy), float4x4(-0.000012801263438,-0.016436068341136,-0.005920402240008,0.030866203829646,0.000011565182831,0.023130983114243,0.016368648037314,0.015060428529978,-0.000066308828536,-0.021663673222065,0.001307567814365,0.048019651323557,-0.000017412496163,-0.027203733101487,0.030993202701211,-0.021021869033575));
res += mul(Get(s3,0,0), float4x4(0.000046587440011,0.166455209255219,0.179739654064178,-0.044334698468447,-0.000046740715334,0.008255784399807,-0.004065869841725,0.057580545544624,-0.000088261396741,-0.035711839795113,-0.080200433731079,0.060721904039383,0.000007330540939,-0.014203545637429,-0.034660618752241,-0.003991950303316));
res += mul(Get(s3,0,dy), float4x4(0.000002770666015,0.030972881242633,0.075064212083817,0.019050946459174,-0.000009544673048,-0.014105145819485,-0.098365165293217,0.014940301887691,-0.000018687564079,0.024059308692813,0.025970926508307,0.002955504925922,0.000004671312581,0.024809751659632,-0.026725128293037,-0.025243338197470));
res += mul(Get(s3,dx,-dy), float4x4(0.000018457507394,-0.007716300431639,0.044752754271030,-0.036970142275095,-0.000008707554116,0.019459797069430,0.000559584295843,-0.012464378960431,-0.000050836169976,-0.001348684774712,0.048433937132359,-0.043135061860085,-0.000028143087548,-0.026187462732196,-0.013432106934488,0.002431089524180));
res += mul(Get(s3,dx,0), float4x4(0.000054970361816,-0.021455476060510,0.071314662694931,0.025399969890714,0.000010901513633,0.018788704648614,0.041887857019901,-0.022675402462482,-0.000002293379339,0.065516017377377,0.017528545111418,-0.055438518524170,0.000032307103538,-0.009754985570908,-0.037785008549690,-0.014347265474498));
res += mul(Get(s3,dx,dy), float4x4(-0.000035901673982,-0.035577815026045,-0.000857153208926,-0.037972170859575,-0.000019687082386,-0.014742117375135,-0.023173782974482,-0.068134747445583,-0.000074011280958,0.023479137569666,0.018344789743423,-0.017872378230095,-0.000015581359548,0.000122265671962,-0.058484300971031,-0.028580395504832));
return max(float4(0,0,0,0), res);
}
