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
float4 res = float4(-0.2546404898166656,0.0350105389952660,0.1573954671621323,0.1638060063123703);
res += mul(Get(s0,-dx,-dy), float4x4(0.1510273218154907,0.0128124635666609,-0.0454845242202282,0.0370521284639835,-0.0042711305432022,-0.0431731492280960,-0.1035831868648529,0.0959946736693382,-0.1348756849765778,0.0370951965451241,0.0267849247902632,-0.0652770996093750,-0.1643347293138504,-0.0393565520644188,0.0892350003123283,-0.0025841179303825));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0990303754806519,0.0090689258649945,-0.0689255893230438,-0.0546979643404484,0.1184464097023010,0.0333746746182442,0.0559320896863937,0.0096766771748662,-0.0774471312761307,0.0562267191708088,-0.0014483339618891,0.0322596430778503,-0.3526417911052704,-0.0189732890576124,-0.0230021551251411,0.1032703667879105));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1441869884729385,0.0381570719182491,-0.0185977183282375,-0.0166834089905024,-0.0572707690298557,-0.1416556388139725,0.0485171340405941,0.0793501287698746,0.1592342257499695,-0.0153015526011586,-0.0026699870359153,-0.0043345247395337,0.0245042890310287,-0.0384865514934063,-0.0252423007041216,-0.0137272141873837));
res += mul(Get(s3,-dx,-dy), float4x4(0.0747949108481407,0.0573273375630379,0.0635775029659271,-0.0431355573236942,-0.1553966552019119,0.1494299769401550,-0.1213361397385597,0.0649653971195221,0.1777591109275818,-0.1340488642454147,-0.0047929580323398,-0.0756545588374138,-0.0220695622265339,-0.0889800265431404,0.0254252254962921,0.0532598681747913));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0397205948829651,0.0135198896750808,0.0480979718267918,-0.0653086379170418,-0.0630399510264397,-0.0860133245587349,-0.1202549263834953,0.0333347283303738,-0.0076218955218792,0.0156397577375174,0.0432788059115410,-0.0286726821213961,0.0133569585159421,-0.0258815828710794,0.0123306484892964,0.0342093519866467));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0707540735602379,-0.0652338936924934,0.0252386070787907,0.0026053767651320,-0.1503998041152954,0.1577363610267639,-0.0242289304733276,-0.0458579473197460,0.0644351840019226,-0.1040758416056633,-0.0933222547173500,0.0502907671034336,-0.1528144478797913,0.0650172978639603,0.1008201539516449,0.1221570223569870));
res += mul(Get(s0,-dx,0), float4x4(0.1144587770104408,0.0809470415115356,0.0593871362507343,0.0161322373896837,-0.2151158601045609,-0.0419684872031212,-0.0799964219331741,0.0468668490648270,-0.0385414697229862,-0.1207586377859116,-0.0683931186795235,-0.0319234877824783,-0.0211264062672853,-0.0393449552357197,0.1100189909338951,-0.0658894106745720));
res += mul(Get(s1,-dx,0), float4x4(-0.3123566210269928,-0.0027860247064382,0.0507459975779057,0.1104045286774635,0.0906890630722046,0.0303134098649025,0.0419185422360897,0.1446243226528168,-0.1517432332038879,0.1075214520096779,0.0679766908288002,-0.1321080625057220,-0.7694065570831299,0.1407057791948318,0.1017997041344643,-0.1925293058156967));
res += mul(Get(s2,-dx,0), float4x4(-0.0538060292601585,-0.0221981722861528,-0.0339269191026688,-0.0411278419196606,-0.1298495978116989,-0.1594659835100174,0.0892544835805893,-0.0495822466909885,-0.0272315088659525,-0.0127203967422247,-0.0295144505798817,-0.1066031754016876,-0.2051531076431274,-0.0761466771364212,-0.1121801584959030,0.0904110893607140));
res += mul(Get(s3,-dx,0), float4x4(0.0856139659881592,0.0458703525364399,0.0269696302711964,0.0986001268029213,0.0131153929978609,0.2299831956624985,-0.0431579649448395,0.1768477857112885,-0.0691982284188271,-0.1241592913866043,-0.0855907052755356,0.0082945227622986,0.0272559095174074,-0.0854885801672935,-0.0014343616785482,-0.0777540579438210));
res += mul(Get(s4,-dx,0), float4x4(0.0038450011052191,-0.1305804550647736,-0.0727744922041893,0.0621621832251549,0.0761934667825699,0.0039098188281059,0.1643118113279343,0.1902863532304764,0.0489003136754036,-0.0233628675341606,0.0548624061048031,0.0212179366499186,-0.0925654843449593,0.0978420078754425,-0.0129793584346771,0.0256630629301071));
res += mul(Get(s5,-dx,0), float4x4(0.0159121342003345,-0.1559434980154037,-0.0025692039635032,0.1263627409934998,0.0883247405290604,0.1733542680740356,0.1231526210904121,0.0427535362541676,0.1392265111207962,-0.1148734912276268,-0.1968085318803787,0.1463230699300766,0.2018818259239197,0.0055777463130653,-0.1064872816205025,0.0165942292660475));
res += mul(Get(s0,-dx,dy), float4x4(0.0988247543573380,0.0065752989612520,-0.0238659307360649,-0.0242550801485777,-0.0398221835494041,0.0109442565590143,-0.0335305705666542,-0.0461359955370426,0.2210140377283096,0.0130496881902218,-0.0180869214236736,0.0906157195568085,0.0020477217622101,0.1342774480581284,0.0077543952502310,0.0968832820653915));
res += mul(Get(s1,-dx,dy), float4x4(0.1207841485738754,-0.1076603457331657,0.0576776787638664,-0.0992837548255920,-0.1298559457063675,0.0943908914923668,0.0248238947242498,0.0069914064370096,-0.0533273369073868,-0.1319630593061447,0.0105936788022518,0.0237735118716955,0.0039868280291557,-0.0827008038759232,0.0022547713015229,-0.0289520230144262));
res += mul(Get(s2,-dx,dy), float4x4(-0.1777875721454620,-0.0009663114906289,-0.0654898509383202,0.0558692403137684,-0.0571891106665134,-0.0783572047948837,0.0003063608601224,0.0229578465223312,0.1348492354154587,0.0933992937207222,-0.1478885561227798,0.0318452455103397,-0.1394616365432739,-0.0004695746174548,-0.0153538994491100,0.0706655457615852));
res += mul(Get(s3,-dx,dy), float4x4(-0.0103030530735850,0.1647255569696426,-0.0234263911843300,0.0104199405759573,-0.0573066808283329,-0.0643907263875008,-0.0074592423625290,-0.0343037694692612,-0.0665478333830833,-0.0937147587537766,0.0030774583574384,0.0126569941639900,0.0019070081179962,-0.0282671488821507,0.0078292554244399,0.0797293782234192));
res += mul(Get(s4,-dx,dy), float4x4(-0.1511393040418625,-0.0082070296630263,0.0069863642565906,0.0574666410684586,0.0060064028948545,-0.0295843407511711,0.0204576849937439,0.0553596839308739,-0.0814242660999298,0.0178450010716915,0.0072138481773436,0.0066697448492050,-0.2053290009498596,0.0610445179045200,0.0001341825554846,-0.0012844394659624));
res += mul(Get(s5,-dx,dy), float4x4(-0.1099606975913048,-0.0203420538455248,0.0085293008014560,-0.0333202667534351,0.0277931950986385,0.0549441911280155,0.0336502641439438,0.0416775085031986,-0.0169648081064224,0.2052681893110275,-0.0060801454819739,0.0732426643371582,0.0494882427155972,-0.1029290407896042,0.0242496244609356,-0.0437072776257992));
res += mul(Get(s0,0,-dy), float4x4(0.0471231341362000,0.0765494629740715,0.1045479252934456,-0.0785500481724739,-0.0092215295881033,-0.0827067196369171,-0.0615404509007931,0.0168534964323044,0.2828756570816040,0.0060038166120648,0.1004107519984245,-0.1876055598258972,0.0097604338079691,-0.0560990162193775,0.1686434745788574,0.0587863922119141));
res += mul(Get(s1,0,-dy), float4x4(-0.0875251367688179,-0.0078818295150995,0.0672740116715431,-0.1227698996663094,-0.0609422102570534,0.0245184823870659,0.0254755504429340,-0.0503757148981094,-0.0288515482097864,0.0508379675447941,-0.0252205599099398,0.0893367454409599,-0.0604561604559422,0.0240022670477629,-0.0480963513255119,-0.2010771930217743));
res += mul(Get(s2,0,-dy), float4x4(-0.1108976975083351,0.1216930672526360,-0.0907520949840546,-0.1210324093699455,-0.0344613380730152,-0.0650224015116692,-0.0685474202036858,0.0527484305202961,0.1048299446702003,0.0580238774418831,0.0280366800725460,-0.0006033657118678,0.0881942138075829,0.0351455248892307,-0.1369755864143372,0.1397924572229385));
res += mul(Get(s3,0,-dy), float4x4(-0.0042602424509823,-0.0594911649823189,-0.0174674391746521,0.0385799296200275,0.0048475838266313,-0.1597909033298492,-0.2574654221534729,0.0592185184359550,0.1268639117479324,-0.1861117631196976,0.0031283667776734,0.0672847405076027,0.2560947239398956,-0.0912838876247406,0.1138588115572929,0.0045198085717857));
res += mul(Get(s4,0,-dy), float4x4(0.2466630190610886,0.0618014223873615,0.1342742890119553,-0.0993189886212349,0.0637204647064209,-0.0732644051313400,-0.0033528297208250,-0.0113110477104783,-0.2649320662021637,-0.0482819713652134,0.0255164857953787,-0.0277601759880781,-0.0476114451885223,-0.0294914040714502,-0.0584249235689640,0.1054691523313522));
res += mul(Get(s5,0,-dy), float4x4(-0.0202786605805159,-0.0811438933014870,0.0200243666768074,0.0011532185599208,-0.4360424876213074,0.0212903339415789,-0.0464545376598835,-0.1280633807182312,0.2591199278831482,0.0236748941242695,0.1069293394684792,-0.1257820129394531,-0.2275340408086777,-0.0262987948954105,0.0006157801835798,-0.1866888403892517));
res += mul(Get(s0,0,0), float4x4(-0.1479422152042389,-0.0496179200708866,0.1269792765378952,0.1685598045587540,0.7321606278419495,0.0979671031236649,-0.0177932921797037,0.0653982236981392,0.5245499610900879,0.2037896513938904,0.0855213627219200,0.1939000189304352,0.5370919704437256,-0.1971195340156555,0.4279738068580627,0.2771269381046295));
res += mul(Get(s1,0,0), float4x4(-0.1166793853044510,0.1309618353843689,-0.1503335237503052,-0.0370590649545193,0.2742163538932800,-0.1771500408649445,0.4893913269042969,0.2053994536399841,0.2445334643125534,-0.2031164616346359,-0.2499941736459732,0.0874435529112816,-0.0349807105958462,0.0123473284766078,-0.0750429704785347,-0.0131309013813734));
res += mul(Get(s2,0,0), float4x4(0.0469968579709530,-0.0887440294027328,0.0469476431608200,-0.1837591677904129,0.2329587787389755,-0.1184858381748199,0.0784176439046860,-0.1312916725873947,-0.0572675727307796,-0.0527200698852539,-0.0932565927505493,0.0560271032154560,-0.0508835054934025,0.1015555635094643,-0.0700248181819916,-0.0473697930574417));
res += mul(Get(s3,0,0), float4x4(0.1492180377244949,-0.3848175406455994,-0.2720280587673187,0.3027633130550385,-0.0129925673827529,-0.0810441449284554,-0.2133880704641342,0.2272991687059402,-0.5215533375740051,0.4953717291355133,0.0686167478561401,-0.1925922930240631,0.0943931117653847,0.1513206660747528,-0.0766607299447060,-0.0863365232944489));
res += mul(Get(s4,0,0), float4x4(-0.1332719326019287,0.0013280878774822,0.0980707257986069,-0.1546613425016403,0.2452318519353867,0.0303491316735744,0.0893959179520607,-0.0403406992554665,0.2278744727373123,-0.1986475586891174,0.1795181930065155,0.4755833745002747,-0.2942264974117279,0.4161098897457123,0.0320325344800949,0.0438682027161121));
res += mul(Get(s5,0,0), float4x4(0.2092882841825485,-0.0404401011765003,-0.1980656534433365,0.2222929894924164,0.1181621104478836,-0.8588294386863708,-0.0446065887808800,-0.1164990663528442,-0.0621352344751358,0.0761404559016228,0.1023803278803825,0.0756269693374634,-0.1025359183549881,-0.0485533066093922,0.0724176615476608,-0.1106815710663795));
res += mul(Get(s0,0,dy), float4x4(-0.1584941148757935,-0.2028439939022064,0.1113871708512306,-0.1427245736122131,-0.0649648532271385,0.0765092298388481,-0.0612625330686569,0.1630514264106750,0.1817752271890640,-0.1788970381021500,-0.0359960198402405,0.0452996492385864,-0.0228576064109802,0.2939921021461487,0.0618717297911644,0.0501121655106544));
res += mul(Get(s1,0,dy), float4x4(0.0010618877131492,-0.3866596221923828,0.1212397068738937,-0.1781577020883560,0.1389726847410202,0.3241369724273682,0.0373659580945969,-0.0093042720109224,0.1186032816767693,-0.0318261720240116,0.0025988123379648,0.0577466376125813,-0.0540306083858013,-0.0125194536522031,0.0132515160366893,0.0819926559925079));
res += mul(Get(s2,0,dy), float4x4(-0.0348859280347824,-0.0362234599888325,0.1274123936891556,-0.0350856892764568,0.1943180412054062,-0.1366222351789474,-0.0258056409657001,0.1685222238302231,-0.1299408376216888,-0.0502665042877197,-0.0279943160712719,0.1324755400419235,-0.0385771468281746,-0.0492269918322563,-0.1016499176621437,0.1157807037234306));
res += mul(Get(s3,0,dy), float4x4(-0.0788915380835533,0.0127436919137836,-0.0181101430207491,-0.1350868642330170,0.1760291606187820,-0.2496237307786942,-0.0633401945233345,-0.0769440755248070,0.1903459429740906,-0.1386206299066544,0.0000310402647301,0.2791517078876495,0.2740396559238434,0.0159971229732037,-0.0347498916089535,0.0503505617380142));
res += mul(Get(s4,0,dy), float4x4(0.0324660800397396,0.0268829967826605,0.1073456630110741,-0.1652781516313553,-0.1181083396077156,0.2327048927545547,-0.0640891715884209,0.0169683508574963,-0.0318149551749229,0.0141078028827906,0.0686777457594872,-0.0428879670798779,-0.6371504068374634,0.1661775261163712,-0.0223106332123280,0.1228629425168037));
res += mul(Get(s5,0,dy), float4x4(-0.0430824272334576,0.2471731603145599,-0.0253993328660727,0.1154870763421059,0.0039266413077712,-0.2444145083427429,0.0621651969850063,-0.0749819725751877,-0.0239172242581844,-0.3331857621669769,0.0510332919657230,-0.1015372276306152,-0.0170341953635216,-0.0091563668102026,0.0582652390003204,-0.0641932636499405));
res += mul(Get(s0,dx,-dy), float4x4(0.0487455092370510,0.0146444290876389,-0.1385814547538757,-0.0173500366508961,-0.0841720625758171,-0.0209972951561213,-0.0126928305253386,-0.0442436300218105,0.0003315350331832,-0.0910549461841583,0.0605740584433079,-0.1083486080169678,-0.0288079269230366,-0.0143868764862418,0.0028241444379091,-0.0062138973735273));
res += mul(Get(s1,dx,-dy), float4x4(0.1023937761783600,-0.0672400370240211,-0.1109327822923660,0.1089513450860977,-0.1520464718341827,-0.0098286271095276,-0.0325907394289970,0.1232155784964561,-0.2603574395179749,0.0355831198394299,0.1159256622195244,-0.1275825053453445,0.4691941738128662,0.0097627332434058,-0.0923703610897064,0.0212553404271603));
res += mul(Get(s2,dx,-dy), float4x4(0.0181365478783846,0.0496674068272114,-0.0618509948253632,-0.0986166745424271,0.0438335873186588,-0.0230681076645851,0.0016822314355522,0.0045729745179415,-0.0067522865720093,-0.0793734043836594,0.0094959130510688,0.0808440819382668,0.0108888661488891,0.0579940751194954,-0.0113177653402090,0.1643800288438797));
res += mul(Get(s3,dx,-dy), float4x4(0.0216598026454449,0.0650896131992340,0.0405187420547009,-0.0257827807217836,-0.0408724136650562,-0.1762185990810394,0.0307462103664875,-0.0225977543741465,0.0985690206289291,-0.1119055598974228,-0.0160398837178946,0.0372768118977547,-0.0614551603794098,-0.0495427660644054,-0.0610442496836185,0.0085786739364266));
res += mul(Get(s4,dx,-dy), float4x4(0.0764157399535179,-0.1467368751764297,0.1834902465343475,-0.0498845688998699,-0.1183226853609085,-0.0812422931194305,-0.0377085357904434,0.1495481133460999,-0.0089470464736223,0.0314959250390530,0.0187128130346537,-0.0630977526307106,-0.0929399058222771,0.0996726229786873,0.0618819221854210,0.0866563096642494));
res += mul(Get(s5,dx,-dy), float4x4(-0.1468673646450043,0.0044643720611930,-0.1368387639522552,0.0086383763700724,-0.0906114131212234,-0.0810958147048950,0.1381768286228180,-0.1452487260103226,0.1629720330238342,-0.0596924349665642,0.0374183356761932,0.0432618223130703,0.0735713317990303,-0.0278937481343746,-0.1767429709434509,0.0144715234637260));
res += mul(Get(s0,dx,0), float4x4(-0.1897846460342407,-0.0508378557860851,0.0705256462097168,0.0481597743928432,-0.0977036505937576,-0.0011826461413875,-0.0699487775564194,0.0651027113199234,0.2908040881156921,0.0233397819101810,0.0067096780985594,0.0658953040838242,-0.0872485488653183,-0.0411632284522057,0.0706118047237396,0.0577482394874096));
res += mul(Get(s1,dx,0), float4x4(-0.0375833399593830,0.0519498325884342,-0.0344096980988979,0.0231960862874985,0.1017613932490349,0.0180057901889086,-0.0980588793754578,0.0804512873291969,-0.2818875312805176,0.0942595899105072,-0.0974146872758865,0.0910352542996407,0.1284680515527725,0.0252651534974575,-0.0693896412849426,-0.0512514859437943));
res += mul(Get(s2,dx,0), float4x4(0.1073906868696213,-0.1351463347673416,0.0786801427602768,-0.1384844779968262,-0.0256364718079567,0.0689435973763466,0.0777248591184616,-0.1937930136919022,0.0491397976875305,0.0381349027156830,0.0427811108529568,0.1367089897394180,0.0967409387230873,0.0625481754541397,0.0651780068874359,-0.1157228499650955));
res += mul(Get(s3,dx,0), float4x4(0.2345130443572998,-0.1290797591209412,0.0308724623173475,-0.0363907106220722,0.0897788032889366,-0.1619668602943420,-0.0979287922382355,-0.1817594915628433,0.0563865229487419,0.0520706363022327,-0.0083420798182487,-0.0712183639407158,0.2411942183971405,-0.0525004006922245,0.0085789049044251,0.0223948508501053));
res += mul(Get(s4,dx,0), float4x4(-0.0323134548962116,-0.3046855032444000,-0.0475552082061768,-0.1092776432633400,0.0302872005850077,0.0136794373393059,-0.0184938348829746,0.1136027052998543,0.0425141938030720,-0.2737927734851837,0.0282200668007135,-0.0630522966384888,-0.1482607275247574,0.1811801493167877,0.0460302121937275,0.0598908029496670));
res += mul(Get(s5,dx,0), float4x4(-0.2766405344009399,-0.0749401971697807,-0.0399640649557114,-0.1430983394384384,0.0128641221672297,-0.3322674334049225,-0.0124533008784056,0.0457596667110920,0.0128384400159121,0.0030344515107572,-0.0674768015742302,-0.0100406007841229,0.0817589610815048,-0.0113272573798895,-0.0101590631529689,-0.0743034556508064));
res += mul(Get(s0,dx,dy), float4x4(0.0547968186438084,0.0517817735671997,-0.0175321958959103,0.1226812154054642,-0.0907514467835426,0.1015583053231239,0.0015351746696979,0.0037522600032389,0.0501498505473137,0.0968267768621445,-0.0235268566757441,0.0523368678987026,-0.0986094176769257,0.1133485361933708,-0.0373355485498905,0.1769675612449646));
res += mul(Get(s1,dx,dy), float4x4(0.1363966017961502,-0.1487521380186081,0.0667102858424187,-0.2462363094091415,-0.0098691610619426,0.0500260330736637,-0.0743513330817223,0.1553172618150711,-0.0518147647380829,-0.1161807402968407,0.0207770969718695,0.0702778026461601,0.0282798558473587,-0.0017846706323326,0.0939399302005768,-0.2702080905437469));
res += mul(Get(s2,dx,dy), float4x4(-0.0412123911082745,-0.0313761569559574,0.0028243314009160,-0.1427169293165207,0.1313297897577286,0.0463440939784050,-0.0046953000128269,0.1054910793900490,0.2018819898366928,0.1457832008600235,0.0118837514892220,-0.0989947468042374,0.0763981044292450,-0.0288296751677990,0.0955392867326736,-0.1110158637166023));
res += mul(Get(s3,dx,dy), float4x4(-0.1365485340356827,-0.0044183279387653,0.0746475234627724,-0.0984853431582451,-0.0603342093527317,-0.0067936517298222,-0.0924717336893082,0.1241949722170830,0.0835905820131302,0.0333611480891705,0.0117008630186319,0.0033548632636666,0.1646328121423721,-0.0217003319412470,0.0898935794830322,-0.0233134534209967));
res += mul(Get(s4,dx,dy), float4x4(-0.0099245421588421,-0.2457151561975479,-0.0170911196619272,0.0349368900060654,-0.0794603824615479,-0.0258664265275002,0.0023917306680232,0.0029791081324220,-0.0689135268330574,-0.0105841653421521,-0.0164734888821840,-0.0350426398217678,-0.1696218103170395,-0.0484346374869347,0.0019931592978537,-0.0418478250503540));
res += mul(Get(s5,dx,dy), float4x4(-0.0355584919452667,-0.0187079161405563,0.0411587394773960,-0.1711352914571762,-0.0386825874447823,-0.2939150333404541,-0.0318402871489525,0.0748213678598404,0.0388957187533379,-0.1775181144475937,0.0058494461700320,-0.0312446150928736,-0.0135952280834317,-0.0636964812874794,0.0002771273429971,-0.0052081742323935));
res = max(float4(0, 0, 0, 0), res) + float4(0.0786548107862473,-0.1248873472213745,0.9316149950027466,1.0557507276535034) * min(float4(0, 0, 0, 0), res);
return res;
}