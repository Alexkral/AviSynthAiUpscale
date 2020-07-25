sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.1272392421960831,0.1292148381471634,0.1318815946578979,0.1306930631399155);
res += mul(Get(s0,-dx,-dy), float4x4(0.0078242709860206,-0.0063119172118604,-0.0053084539249539,0.0038174076471478,0.0130894463509321,-0.0096816783770919,-0.0113036977127194,-0.0072111012414098,-0.0121685573831201,0.0060715279541910,0.0091333445161581,0.0030021620914340,0.0028613409958780,-0.0037453239783645,-0.0072184395976365,-0.0086439549922943));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0176682732999325,0.0043971794657409,0.0117183541879058,0.0113780349493027,0.0472434908151627,0.0352632254362106,0.0128574213013053,-0.0177559070289135,0.0063552916981280,-0.0051839882507920,-0.0071077723987401,-0.0139262434095144,-0.0110754473134875,-0.0032686362974346,0.0026993318460882,0.0013798958389089));
res += mul(Get(s2,-dx,-dy), float4x4(0.0445289015769958,0.0099110091105103,-0.0047415238805115,-0.0140408538281918,0.0028719140682369,-0.0212910100817680,-0.0012386230519041,0.0185706224292517,-0.0172239653766155,-0.0098435906693339,-0.0040967217646539,0.0025815949775279,0.0373683087527752,0.0046118972823024,0.0002993769012392,0.0040268283337355));
res += mul(Get(s3,-dx,-dy), float4x4(0.0614320859313011,0.0090693952515721,-0.0150647172704339,-0.0095750782638788,-0.0135177262127399,0.0018905800534412,0.0011331749847159,-0.0030461051501334,0.0071544940583408,0.0054766465909779,0.0028488347306848,0.0068621500395238,0.0055452520027757,0.0036250052507967,0.0016532951267436,0.0009538360754959));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0157467275857925,0.0121690044179559,0.0052782869897783,0.0061348136514425,0.0386331267654896,0.0005211818497628,-0.0189388692378998,-0.0273736435920000,-0.0106979757547379,0.0033535908441991,0.0084357773885131,0.0073362025432289,0.0193030554801226,0.0023768683895469,-0.0110825216397643,-0.0095650088042021));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0415905974805355,-0.0126741593703628,0.0008785451063886,0.0042239115573466,-0.0020162053406239,0.0143332425504923,0.0075525366701186,-0.0004174240748398,0.0431358851492405,-0.0094406036660075,-0.0224638618528843,-0.0207221433520317,-0.0262411478906870,-0.0124689340591431,-0.0044611427001655,-0.0020183669403195));
res += mul(Get(s0,-dx,0), float4x4(0.0149884372949600,0.0629875510931015,0.0736841857433319,0.0385791733860970,0.0324216261506081,0.0399629920721054,0.0504752695560455,0.0455226078629494,-0.0913144424557686,-0.1075411513447762,-0.0864270552992821,-0.0409855507314205,-0.0434691831469536,-0.0237163230776787,0.0222368538379669,0.0205573812127113));
res += mul(Get(s1,-dx,0), float4x4(0.0992124825716019,-0.0273624509572983,-0.0732434913516045,-0.0620283894240856,0.0562566779553890,0.0073314388282597,-0.0221386011689901,0.0057550794444978,0.0791843831539154,0.0507130064070225,0.0040832492522895,-0.0129952523857355,-0.0099827265366912,0.0036800231318921,0.0083589730784297,-0.0052345837466419));
res += mul(Get(s2,-dx,0), float4x4(0.0551202669739723,0.0763245671987534,0.0678685605525970,0.0617892406880856,-0.0815035253763199,-0.0531207099556923,0.0072157974354923,0.0574666000902653,0.0293310098350048,0.0282095987349749,0.0116034438833594,-0.0051497109234333,0.0663273110985756,0.0734355375170708,0.0627709105610847,0.0482471063733101));
res += mul(Get(s3,-dx,0), float4x4(0.0122360102832317,0.0467107705771923,0.1085226535797119,0.1179819554090500,-0.0835249349474907,-0.0645731166005135,-0.0411800704896450,-0.0272767767310143,0.0208755228668451,0.0138793103396893,0.0024636134039611,-0.0020441650412977,-0.0032585188746452,0.0083812335506082,0.0147085599601269,0.0138045772910118));
res += mul(Get(s4,-dx,0), float4x4(-0.1570953875780106,-0.1152884960174561,-0.0558857172727585,-0.0260120350867510,0.0265916790813208,0.0417994484305382,0.0532709211111069,0.0559636689722538,0.0138320242986083,0.0180577915161848,-0.0022008237428963,-0.0173471029847860,-0.0071312366053462,-0.0220697540789843,-0.0126621890813112,0.0137727670371532));
res += mul(Get(s5,-dx,0), float4x4(0.0246971957385540,0.0394478626549244,0.0074367523193359,-0.0414559170603752,0.0676407888531685,0.0389325506985188,-0.0687786266207695,-0.0461619123816490,-0.0211221296340227,-0.0429704487323761,-0.0019929767586291,0.0668877065181732,-0.0113689880818129,-0.0375135652720928,-0.0534181222319603,-0.0527158491313457));
res += mul(Get(s0,-dx,dy), float4x4(-0.0018613854190335,-0.0062864567153156,-0.0143830422312021,-0.0154308648779988,-0.0160202588886023,-0.0112546663731337,-0.0080538624897599,0.0046922913752496,0.0269124303013086,0.0185193866491318,0.0067235976457596,-0.0234364140778780,-0.0038483187090605,0.0019086422398686,0.0162193831056356,-0.0051024737767875));
res += mul(Get(s1,-dx,dy), float4x4(-0.0742529928684235,-0.0936440899968147,-0.0072423364035785,0.1272985935211182,-0.0280248895287514,-0.0263876169919968,0.0201244540512562,0.0777294784784317,-0.0317599438130856,-0.0235924459993839,0.0134851746261120,0.0621378459036350,0.0013615833595395,0.0055616414174438,0.0063761286437511,-0.0013357128482312));
res += mul(Get(s2,-dx,dy), float4x4(-0.0155899617820978,-0.0100733526051044,0.0103067168965936,0.0352293066680431,0.0104248486459255,0.0086125144734979,-0.0036080118734390,-0.0198942031711340,-0.0003365789889358,-0.0042234137654305,0.0007890335982665,0.0105558652430773,-0.0067583541385829,-0.0079105636104941,0.0122137777507305,0.0482337102293968));
res += mul(Get(s3,-dx,dy), float4x4(0.0089913168922067,0.0076379869133234,0.0056285876780748,0.0077790208160877,0.0009351529879496,-0.0045280554331839,-0.0202510673552752,-0.0518918149173260,-0.0010144324041903,0.0015486269257963,0.0072878492064774,0.0161269623786211,0.0005828630528413,-0.0030988936778158,-0.0064658229239285,-0.0074113071896136));
res += mul(Get(s4,-dx,dy), float4x4(0.0545645169913769,0.0353973843157291,-0.0115258041769266,-0.0878627449274063,-0.0229968018829823,-0.0172568671405315,-0.0011776195606217,0.0155618833377957,-0.0030442855786532,-0.0075659728609025,-0.0027277399785817,0.0038972056936473,0.0007757706334814,-0.0026668391656131,-0.0046108220703900,0.0009395656525157));
res += mul(Get(s5,-dx,dy), float4x4(0.0069965198636055,0.0065533313900232,-0.0024155685678124,0.0020759822800756,0.0046587800607085,-0.0093709873035550,-0.0225001163780689,-0.0086048096418381,-0.0003314927162137,0.0007839176105335,0.0064550698734820,0.0080577991902828,-0.0024567572399974,-0.0025001277681440,-0.0047881752252579,-0.0051692635752261));
res += mul(Get(s0,0,-dy), float4x4(-0.0095422854647040,0.0021915035322309,0.0072127217426896,0.0062400507740676,0.0466620661318302,0.0287612285465002,0.0090573532506824,0.0052109071984887,-0.1273057609796524,-0.0840180665254593,-0.0455276705324650,-0.0306122656911612,0.0064979791641235,-0.0130077255889773,-0.0109683964401484,-0.0056301825679839));
res += mul(Get(s1,0,-dy), float4x4(-0.0015044719912112,0.0136393578723073,0.0153576675802469,0.0111056072637439,-0.0818548053503036,-0.0693243518471718,-0.0340509377419949,-0.0613237805664539,0.0846530050039291,0.0083802705630660,-0.0169252157211304,-0.0218538828194141,0.0092794597148895,0.0168025493621826,0.0087258405983448,0.0032250219956040));
res += mul(Get(s2,0,-dy), float4x4(0.0543601289391518,-0.0147097427397966,-0.0363429188728333,-0.0396629907190800,0.1502834707498550,0.0377311408519745,-0.0774824395775795,-0.0712929368019104,0.0247705932706594,0.0005239221500233,0.0009324708953500,0.0032817022874951,-0.0543622449040413,-0.0354496017098427,-0.0171532966196537,0.0044251396320760));
res += mul(Get(s3,0,-dy), float4x4(-0.0609823428094387,-0.0146141070872545,0.0036795719061047,0.0070478660054505,-0.0112479384988546,0.0016563184326515,0.0050551011227071,0.0139228478074074,0.0014241246972233,-0.0020611886866391,-0.0007339864387177,0.0033741947263479,0.0034922235645354,-0.0041504730470479,-0.0052454345859587,-0.0058844825252891));
res += mul(Get(s4,0,-dy), float4x4(-0.0659922808408737,-0.0303562674671412,-0.0072223208844662,0.0176168847829103,0.1362942755222321,0.0561437420547009,0.0059668906033039,-0.0042740278877318,-0.0164518691599369,0.0038151151966304,0.0069433068856597,0.0094749983400106,-0.0238059759140015,-0.0199391245841980,0.0006466518971138,-0.0001173895579996));
res += mul(Get(s5,0,-dy), float4x4(0.0329344086349010,0.0099277077242732,-0.0133638978004456,-0.0119797829538584,0.0499620959162712,0.0088439537212253,-0.0055450275540352,0.0012384572764859,0.0038875588215888,-0.0138243529945612,-0.0161984339356422,-0.0148037457838655,0.0082384981215000,-0.0202516466379166,-0.0209184344857931,-0.0084526147693396));
res += mul(Get(s0,0,0), float4x4(0.1241138353943825,0.0870682224631310,0.0235091075301170,-0.0150606408715248,0.1950924247503281,0.1860372126102448,0.1812797635793686,0.1750606149435043,-0.3801628053188324,-0.4113641381263733,-0.4000343680381775,-0.3269243538379669,-0.0779892206192017,-0.1016701087355614,0.0875971987843513,0.0875788480043411));
res += mul(Get(s1,0,0), float4x4(0.0811716616153717,-0.0308959409594536,-0.0729803815484047,-0.0439452715218067,-0.2425653040409088,-0.3037168979644775,-0.1944197118282318,-0.1159845292568207,0.1276594847440720,0.1683198362588882,0.1856273859739304,0.1380723863840103,0.1478959023952484,0.0378296226263046,-0.0381954908370972,-0.0120853530243039));
res += mul(Get(s2,0,0), float4x4(0.0931213796138763,0.1584868282079697,0.1482984125614166,0.0895611196756363,-0.1139215305447578,-0.1321118623018265,-0.0104077188298106,0.2498928010463715,0.0344763956964016,0.0991751924157143,0.1290460526943207,0.0902241542935371,-0.0685018599033356,-0.0944203436374664,-0.1001520454883575,-0.0815029442310333));
res += mul(Get(s3,0,0), float4x4(0.0364348553121090,0.0021547742653638,-0.0358238331973553,-0.0555654801428318,-0.0551024712622166,-0.0701848566532135,-0.0674778297543526,-0.0388104021549225,-0.0322739146649837,-0.0169563740491867,-0.0011875112541020,0.0066414130851626,-0.0158633608371019,-0.0089765917509794,-0.0018231014255434,0.0078500490635633));
res += mul(Get(s4,0,0), float4x4(-0.1521196663379669,-0.0965482071042061,-0.1470978260040283,-0.2009234875440598,0.3151539564132690,0.3764065206050873,0.3820756375789642,0.3132597208023071,0.0012310281163082,0.0283974949270487,-0.0100933834910393,-0.0570278875529766,-0.0381368808448315,0.0650013089179993,0.0992681086063385,0.0320113934576511));
res += mul(Get(s5,0,0), float4x4(-0.0341705121099949,-0.0580095723271370,-0.0322820805013180,0.0282025542110205,0.0968007445335388,-0.0247506666928530,-0.1315827071666718,0.0054753851145506,-0.0072909598238766,-0.0185284782201052,-0.0061279190704226,0.0233524888753891,-0.0112431347370148,-0.0047074267640710,0.0177616495639086,0.0322743766009808));
res += mul(Get(s0,0,dy), float4x4(0.0004239984555170,0.0088141132146120,0.0416795723140240,0.0964778736233711,0.0125298816710711,0.0292881596833467,0.0596971400082111,0.0983686894178391,0.0007697053952143,-0.0341588966548443,-0.0927267447113991,-0.1722159683704376,-0.0169603470712900,-0.0056072594597936,0.0569707788527012,0.0617883317172527));
res += mul(Get(s1,0,dy), float4x4(-0.0229646377265453,-0.0323984548449516,-0.0154520897194743,0.0550056360661983,0.0145096536725760,0.0177761390805244,-0.0155194457620382,-0.1304668933153152,-0.0247423350811005,-0.0162361785769463,0.0237875208258629,0.0750196948647499,-0.0130519205704331,-0.0325421430170536,0.0180794112384319,0.1197534725070000));
res += mul(Get(s2,0,dy), float4x4(-0.0225397087633610,-0.0241281669586897,0.0029728894587606,0.0574810132384300,0.0244919545948505,0.0293253846466541,0.0144086880609393,-0.0193632747977972,0.0045237382873893,0.0081043550744653,0.0022283720318228,-0.0001830805413192,0.0008628784562461,-0.0097318347543478,-0.0158840939402580,-0.0408681891858578));
res += mul(Get(s3,0,dy), float4x4(0.0022138769272715,0.0040214378386736,0.0032257165294141,0.0095802284777164,0.0024081501178443,-0.0034377949777991,-0.0043110642582178,-0.0121990442276001,-0.0024484284222126,-0.0011332490248606,-0.0108981765806675,-0.0311115588992834,0.0002805261465255,-0.0035573700442910,-0.0052347402088344,-0.0052908244542778));
res += mul(Get(s4,0,dy), float4x4(0.0239293798804283,-0.0052048573270440,-0.0490534305572510,-0.0605552904307842,0.0004032533615828,0.0237551536411047,0.0724807307124138,0.1490554064512253,-0.0016902108909562,-0.0124366646632552,-0.0207141414284706,-0.0154635189101100,0.0239157136529684,0.0283833071589470,-0.0075050797313452,-0.0593672357499599));
res += mul(Get(s5,0,dy), float4x4(0.0205414760857821,0.0248820781707764,0.0166171565651894,-0.0023105137515813,-0.0059250160120428,-0.0265645962208509,-0.0254134424030781,0.0182463824748993,0.0068125473335385,0.0084981927648187,0.0025176941417158,-0.0079124188050628,0.0099486224353313,0.0143603002652526,0.0110149215906858,-0.0028911551926285));
res += mul(Get(s0,dx,-dy), float4x4(-0.0014923224225640,0.0042225155048072,0.0044119753874838,0.0035613414365798,0.0142915248870850,0.0103248395025730,0.0077481232583523,0.0103677203878760,-0.0020703051704913,0.0043943021446466,0.0062383119948208,0.0026716694701463,-0.0056009246036410,-0.0029498529620469,-0.0052324268035591,-0.0032181742135435));
res += mul(Get(s1,dx,-dy), float4x4(0.0005654733395204,-0.0006431927904487,-0.0032322371844202,-0.0025932041462511,0.0105567369610071,0.0190898608416319,0.0200953558087349,0.0112489815801382,-0.0009363514254801,0.0079277977347374,0.0051843188703060,0.0019276411039755,-0.0047801751643419,-0.0011263092746958,0.0013513059820980,0.0014431613963097));
res += mul(Get(s2,dx,-dy), float4x4(0.0007682604482397,0.0076612783595920,0.0110850483179092,0.0088765202090144,-0.0198955051600933,-0.0110500771552324,0.0052584712393582,-0.0011544619919732,0.0143287712708116,0.0091593721881509,0.0041586710140109,0.0009286149288528,0.0056320410221815,-0.0040617813356221,-0.0085264965891838,-0.0056727994233370));
res += mul(Get(s3,dx,-dy), float4x4(0.0104665020480752,0.0015272974269465,-0.0014022998511791,0.0005051257903688,0.0118088806048036,0.0072803790681064,0.0038954340852797,0.0019264809088781,0.0053127612918615,0.0055383341386914,0.0018664223607630,-0.0011472958140075,0.0015684677055106,0.0031918911263347,0.0015916367992759,-0.0011462408583611));
res += mul(Get(s4,dx,-dy), float4x4(0.0044234395027161,0.0106051545590162,0.0203747730702162,0.0198056474328041,-0.0069153122603893,-0.0023102788254619,-0.0022114776074886,-0.0055122217163444,0.0027246752288193,0.0000940972240642,0.0014955208171159,0.0036141707096249,0.0065930262207985,-0.0002834147308022,-0.0080361692234874,-0.0069058351218700));
res += mul(Get(s5,dx,-dy), float4x4(-0.0014684896450490,0.0010318388231099,-0.0011491946643218,-0.0053583262488246,0.0013340854784474,0.0059222946874797,0.0091917170211673,0.0001506224652985,0.0071651772595942,0.0063853901810944,0.0049728988669813,0.0018495427211747,0.0012284346157685,0.0014497714582831,0.0020972762722522,0.0033557750284672));
res += mul(Get(s0,dx,0), float4x4(-0.0045637432485819,-0.0069571007043123,-0.0053698658011854,-0.0011818434577435,0.0272230505943298,0.0308225061744452,0.0283417981117964,0.0205116085708141,-0.0172777436673641,-0.0241853483021259,-0.0139261148869991,-0.0001106334530050,-0.0001768906367943,0.0013327643973753,-0.0036743406672031,-0.0067884423770010));
res += mul(Get(s1,dx,0), float4x4(0.0115896742790937,0.0058033955283463,0.0078160315752029,0.0075948955491185,0.0741609111428261,0.0595661550760269,0.0398559644818306,0.0490910001099110,-0.0196274854242802,-0.0354180783033371,-0.0362308323383331,-0.0205168034881353,-0.0191127024590969,-0.0096300067380071,0.0042731896974146,0.0030739130452275));
res += mul(Get(s2,dx,0), float4x4(-0.0010070536518469,-0.0055600008927286,-0.0081045497208834,-0.0040960945188999,-0.0029053494799882,0.0140234678983688,0.0090955710038543,-0.0082751121371984,0.0001519020297565,0.0064301891252398,0.0122096519917250,0.0147808948531747,0.0232586003839970,0.0211619567126036,0.0194310322403908,0.0160553138703108));
res += mul(Get(s3,dx,0), float4x4(0.0078010195866227,0.0157204624265432,0.0182288903743029,0.0127716595306993,0.0110098291188478,0.0188539717346430,0.0188461747020483,0.0168074909597635,-0.0055039576254785,-0.0065755266696215,-0.0075006829574704,-0.0069894986227155,-0.0026895727496594,-0.0035246443003416,-0.0029698819853365,-0.0008656517020427));
res += mul(Get(s4,dx,0), float4x4(-0.0629702582955360,-0.0402232818305492,-0.0260670427232981,-0.0175725817680359,-0.0187740381807089,-0.0194211937487125,-0.0218452922999859,-0.0204622372984886,0.0050715203396976,0.0036954430397600,-0.0006595206214115,0.0006566407391801,-0.0026711192913353,-0.0117983166128397,-0.0147581752389669,-0.0026246851775795));
res += mul(Get(s5,dx,0), float4x4(0.0043573561124504,0.0112830586731434,0.0170477814972401,0.0142754912376404,-0.0003258436627220,0.0034142232034355,0.0042990269139409,0.0087038101628423,-0.0019614661578089,-0.0065843649208546,-0.0044154552742839,0.0066704680211842,-0.0062249959446490,-0.0106794349849224,-0.0066520096734166,-0.0017969483742490));
res += mul(Get(s0,dx,dy), float4x4(-0.0014511439949274,0.0003412799851503,-0.0006971700931899,-0.0031091612763703,-0.0017410981236026,-0.0000438886381744,0.0040846192277968,0.0115208765491843,0.0052438047714531,0.0062111211009324,0.0017815973842517,-0.0029908667784184,0.0032222147565335,0.0086799161508679,0.0069786119274795,-0.0040554385632277));
res += mul(Get(s1,dx,dy), float4x4(-0.0155555577948689,-0.0086702462285757,0.0033904605079442,0.0077276621013880,0.0180226434022188,0.0177727583795786,0.0166469309478998,0.0283148214221001,-0.0054241707548499,-0.0024218384642154,-0.0034325027372688,-0.0120618082582951,-0.0041122036054730,-0.0076011684723198,-0.0087195979431272,-0.0137712294235826));
res += mul(Get(s2,dx,dy), float4x4(0.0019449827959761,0.0015406139427796,0.0001632427884033,-0.0026146972086281,-0.0001470278803026,-0.0006662234081887,-0.0037863741163164,-0.0010266329627484,-0.0050219483673573,-0.0084196170791984,-0.0064238002523780,-0.0041871936991811,-0.0015215284656733,0.0012173770228401,0.0039654606953263,0.0130095910280943));
res += mul(Get(s3,dx,dy), float4x4(-0.0036517316475511,-0.0033938763663173,0.0003528225934133,0.0051698675379157,-0.0014138456899673,-0.0038750243838876,-0.0016193783376366,0.0048853070475161,0.0023345069494098,0.0045042601414025,0.0063391034491360,0.0019507461693138,0.0028236892540008,0.0029910055454820,0.0017468916485086,-0.0012626099633053));
res += mul(Get(s4,dx,dy), float4x4(-0.0023613362573087,-0.0128026055172086,-0.0132582634687424,-0.0276568718254566,-0.0068955169990659,-0.0059237121604383,-0.0043469551019371,-0.0136473653838038,0.0023292289115489,0.0009116830187850,0.0016728364862502,0.0032605172600597,0.0020958136301488,0.0032431716099381,-0.0021960604935884,-0.0034746017772704));
res += mul(Get(s5,dx,dy), float4x4(-0.0067275436595082,-0.0056304116733372,-0.0050661470741034,-0.0001487892586738,-0.0050516086630523,-0.0021627608221024,-0.0006396375829354,-0.0079613486304879,-0.0001179316168418,0.0010981127852574,0.0010890393750742,0.0022644272539765,-0.0022430939134210,0.0005334478337318,0.0015080322045833,-0.0000784522853792));
return float4(res);
}
