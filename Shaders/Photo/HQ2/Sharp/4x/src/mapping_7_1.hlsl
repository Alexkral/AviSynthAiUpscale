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
res += mul(Get(s0,-dx,-dy), float4x4(0.028255667537451,0.123944960534573,-0.039449684321880,-0.016533851623535,0.054647471755743,-0.068343356251717,-0.068531252443790,0.095830060541630,-0.129461362957954,-0.217420458793640,0.010249566286802,0.030259361490607,0.037567764520645,0.033938385546207,-0.064203374087811,0.000189785481780));
res += mul(Get(s0,-dx,0), float4x4(0.098730646073818,-0.044152826070786,0.130736529827118,0.036401618272066,0.001224778941832,-0.057441849261522,-0.043937306851149,-0.069188758730888,-0.147761583328247,-0.059585835784674,-0.013436142355204,-0.110696345567703,0.086977288126945,-0.065839760005474,0.012043337337673,-0.040953990072012));
res += mul(Get(s0,-dx,dy), float4x4(0.018173415213823,0.089456707239151,0.006551153957844,0.007931058295071,0.010977630503476,0.086069568991661,0.027642320841551,-0.006252693012357,0.064460866153240,0.063031971454620,-0.039003260433674,-0.133780077099800,-0.017749397084117,0.032548092305660,0.018100181594491,0.040863480418921));
res += mul(Get(s0,0,-dy), float4x4(-0.031209420412779,-0.040715664625168,-0.003405964700505,0.131111487746239,-0.009784353896976,-0.118400633335114,-0.038907822221518,-0.022990660741925,-0.095888018608093,-0.125978246331215,-0.000865433306899,0.000540526292752,-0.024544509127736,0.038031674921513,-0.095382124185562,-0.065577976405621));
res += mul(Get(s0,0,0), float4x4(0.003352460218593,0.010743367485702,0.061263322830200,0.130172997713089,0.000578235776629,0.042213696986437,-0.103837229311466,0.188418582081795,-0.008134243078530,-0.023662462830544,-0.061432749032974,-0.006256192456931,-0.049253497272730,-0.024025011807680,-0.072653397917747,0.144220784306526));
res += mul(Get(s0,0,dy), float4x4(0.032943993806839,0.051297593861818,0.010299709625542,0.026527859270573,-0.041197940707207,0.129929438233376,-0.047749329358339,0.044670812785625,0.019719503819942,0.030772868543863,-0.050808213651180,-0.113385923206806,0.036722529679537,-0.085582904517651,0.103476129472256,0.146241337060928));
res += mul(Get(s0,dx,-dy), float4x4(-0.021464461460710,-0.099264904856682,0.043322328478098,0.051459338515997,-0.024848435074091,-0.141775161027908,0.050565537065268,-0.089985243976116,-0.143207743763924,-0.135958045721054,-0.030321095138788,0.112315334379673,-0.100174777209759,0.064279943704605,-0.019461758434772,-0.006775411777198));
res += mul(Get(s0,dx,0), float4x4(0.008930361829698,-0.055691391229630,0.000144196907058,-0.100924730300903,-0.002066055545583,0.018370652571321,0.246613904833794,-0.104572445154190,-0.050090972334146,-0.082653224468231,0.055368416011333,-0.006057720165700,-0.099097572267056,-0.002519918372855,0.038492385298014,0.059505313634872));
res += mul(Get(s0,dx,dy), float4x4(-0.025817120447755,0.062545873224735,-0.035851594060659,-0.163450747728348,0.019053312018514,0.089230008423328,0.101879440248013,-0.083236239850521,0.079253949224949,0.069701075553894,0.033168870955706,-0.050447825342417,0.003732416545972,0.026979863643646,-0.087691932916641,0.158681884407997));
res += mul(Get(s1,-dx,-dy), float4x4(0.024103840813041,0.088904850184917,-0.016974113881588,-0.010029722936451,0.096088275313377,0.000706965802237,-0.087271891534328,0.003933928906918,-0.007003738079220,-0.064160734415054,-0.047104056924582,-0.148890212178230,0.016612203791738,0.078595235943794,-0.013773667626083,-0.020083000883460));
res += mul(Get(s1,-dx,0), float4x4(0.007486314978451,0.011999892070889,-0.051958464086056,0.031278725713491,-0.112867809832096,0.046959891915321,-0.009833563119173,-0.048366166651249,-0.011267865076661,0.169733673334122,0.026906326413155,-0.096512578427792,0.019101157784462,-0.053295686841011,-0.019514534622431,-0.027834104374051));
res += mul(Get(s1,-dx,dy), float4x4(0.103241600096226,-0.011937935836613,0.069442532956600,-0.069091260433197,0.003251928836107,-0.071994721889496,-0.012141449376941,-0.094727769494057,0.083990320563316,0.075092844665051,0.043980445712805,0.052455637603998,0.099892005324364,-0.018193332478404,-0.031796503812075,-0.098836489021778));
res += mul(Get(s1,0,-dy), float4x4(-0.070388376712799,-0.158262223005295,0.049528844654560,0.020295724272728,0.019982401281595,0.037658821791410,0.019442191347480,-0.035378634929657,-0.044067822396755,0.057401496917009,-0.013727487996221,-0.112859845161438,0.017184602096677,-0.118460781872272,0.045308645814657,-0.028007220476866));
res += mul(Get(s1,0,0), float4x4(0.061769161373377,-0.087261706590652,0.015230281278491,0.007335016969591,-0.054949749261141,-0.016144996508956,0.004303832538426,-0.042373798787594,-0.056355960667133,0.049671474844217,0.046316176652908,-0.081012070178986,-0.020262839272618,-0.018107064068317,-0.076592490077019,-0.039944432675838));
res += mul(Get(s1,0,dy), float4x4(-0.009470447897911,0.063863150775433,-0.009551974013448,-0.142568737268448,0.077602155506611,0.130717009305954,-0.135010302066803,-0.000469759077532,0.065465964376926,-0.008704599924386,0.000327049201587,-0.009698154404759,0.067035354673862,-0.014090401120484,-0.011112397536635,-0.045545931905508));
res += mul(Get(s1,dx,-dy), float4x4(0.001031474443153,-0.013812690041959,0.002066687680781,0.015956757590175,-0.004558952059597,-0.062445234507322,-0.063564866781235,0.017215101048350,0.000043356318201,0.025800812989473,-0.001735372119583,0.022467318922281,0.061231918632984,0.033941209316254,0.016831653192639,-0.110954225063324));
res += mul(Get(s1,dx,0), float4x4(-0.074540175497532,-0.102926284074783,0.103046923875809,-0.000878278224263,-0.042444445192814,-0.068550921976566,0.054582320153713,0.009191046468914,0.077760383486748,-0.092988036572933,0.040133744478226,0.085236512124538,0.082475394010544,0.035255458205938,0.039309330284595,0.095097288489342));
res += mul(Get(s1,dx,dy), float4x4(0.057138163596392,-0.001753039425239,0.030446525663137,-0.000985447433777,-0.028794903308153,-0.028475616127253,-0.015999455004930,0.051467716693878,0.026663914322853,-0.099234007298946,0.124382890760899,0.142869561910629,-0.041894830763340,0.119170755147934,0.057358019053936,-0.074690669775009));
res += mul(Get(s2,-dx,-dy), float4x4(-0.004365677479655,-0.022599408403039,0.048379678279161,-0.085859581828117,-0.008535132743418,0.078478068113327,0.048150841146708,-0.006584130227566,-0.015054715797305,-0.063196271657944,-0.002166625112295,0.055602625012398,-0.002378291683272,0.111988067626953,-0.013638177886605,-0.036911815404892));
res += mul(Get(s2,-dx,0), float4x4(0.116155631840229,-0.031917918473482,-0.029202070087194,-0.025339372456074,-0.007960560731590,0.017339376732707,-0.115877144038677,0.018856901675463,0.004575725179166,0.030695112422109,0.078959442675114,0.072772763669491,-0.045046649873257,-0.026487698778510,-0.048274107277393,0.011396812275052));
res += mul(Get(s2,-dx,dy), float4x4(-0.018911426886916,0.043782815337181,0.005916482768953,0.115718297660351,0.040067344903946,0.034887108951807,-0.150606766343117,0.033616874366999,0.079314634203911,0.028372744098306,-0.002950491616502,0.049448590725660,0.050802107900381,0.094855785369873,-0.042280837893486,0.061006691306829));
res += mul(Get(s2,0,-dy), float4x4(0.074861727654934,0.082204014062881,0.016596030443907,-0.027568323537707,0.057593837380409,-0.005051440559328,-0.073609873652458,-0.014380974695086,-0.033641561865807,0.095674872398376,0.036217994987965,0.052025511860847,0.093184985220432,0.101835705339909,-0.007820795290172,-0.003718209918588));
res += mul(Get(s2,0,0), float4x4(-0.025286287069321,0.024551754817367,-0.020466279238462,0.020819863304496,0.051621012389660,0.010335367172956,-0.016751324757934,-0.107515186071396,0.018587654456496,-0.011304027400911,0.035869900137186,0.008402273058891,-0.120039053261280,0.030141677707434,0.049420822411776,-0.128662884235382));
res += mul(Get(s2,0,dy), float4x4(-0.018772404640913,0.033559899777174,-0.009516933001578,0.133964776992798,-0.052424732595682,-0.132369056344032,-0.031532261520624,-0.119340270757675,-0.037987422198057,-0.015900129452348,-0.194537997245789,-0.018660554662347,-0.148101657629013,-0.055387787520885,0.044367387890816,-0.065279327332973));
res += mul(Get(s2,dx,-dy), float4x4(-0.015861405059695,0.050703804939985,0.036499466747046,-0.019185625016689,-0.147104665637016,-0.037517681717873,-0.026478867977858,-0.041958291083574,-0.004444714169949,0.093078278005123,0.047663792967796,0.021662075072527,0.071186400949955,0.065514490008354,-0.032916232943535,0.124922655522823));
res += mul(Get(s2,dx,0), float4x4(0.017268538475037,0.086916275322437,-0.056064888834953,0.033336237072945,-0.111079543828964,-0.015073512680829,-0.126241371035576,-0.070498250424862,-0.007532115560025,0.095495596528053,0.057586699724197,0.006416970398277,-0.005499707534909,0.108938857913017,0.134041309356689,0.052083000540733));
res += mul(Get(s2,dx,dy), float4x4(0.069124229252338,0.081021785736084,0.038099139928818,0.074216619133949,0.044346492737532,0.158473074436188,0.030381917953491,0.057770594954491,-0.075012691318989,-0.011597240343690,0.029658472165465,0.022591825574636,0.072316467761993,0.044720739126205,-0.078304700553417,0.027032932266593));
res += mul(Get(s3,-dx,-dy), float4x4(0.070255003869534,0.002022750908509,-0.034534353762865,0.189575821161270,-0.033873621374369,-0.009944977238774,-0.098225884139538,-0.003715530736372,-0.101973965764046,0.171269863843918,-0.020992711186409,-0.042439483106136,-0.021045492962003,0.076586328446865,0.009990697726607,0.053006131201982));
res += mul(Get(s3,-dx,0), float4x4(0.041552752256393,-0.014872432686388,-0.014054041355848,0.142206043004990,0.007018785923719,-0.037808064371347,0.100924476981163,0.006050698924810,0.043840132653713,0.035012017935514,0.008453927002847,0.001375906052999,-0.043408531695604,-0.052851665765047,-0.057566422969103,-0.001523542217910));
res += mul(Get(s3,-dx,dy), float4x4(-0.055039253085852,-0.038859311491251,0.048028226941824,0.149957567453384,0.066382937133312,0.021445548161864,-0.052320249378681,0.159558027982712,0.033113777637482,-0.048267539590597,-0.018767042085528,0.041800230741501,-0.029420718550682,0.020002966746688,0.015805361792445,0.022596748545766));
res += mul(Get(s3,0,-dy), float4x4(-0.001551784225740,-0.196590244770050,0.002261581132188,-0.044432822614908,0.017008012160659,0.045189544558525,-0.009110047481954,-0.058122865855694,-0.026558250188828,-0.049801256507635,-0.022916613146663,0.029302645474672,-0.088084422051907,0.042784847319126,-0.129288777709007,0.010614031925797));
res += mul(Get(s3,0,0), float4x4(-0.076175175607204,-0.153054669499397,0.096590302884579,0.008667846210301,0.047474402934313,0.010633421130478,0.138229951262474,0.021156433969736,-0.079176664352417,-0.059338115155697,0.070731177926064,-0.007687740959227,0.019227910786867,0.071570351719856,-0.024241698905826,-0.010995998978615));
res += mul(Get(s3,0,dy), float4x4(-0.024167677387595,0.059541732072830,0.081427559256554,0.161359027028084,0.059944096952677,0.054636631160975,-0.034059643745422,0.141354650259018,0.005650789942592,0.054225765168667,0.058157194405794,-0.079920165240765,0.149100795388222,0.023643368855119,0.017340857535601,-0.068174540996552));
res += mul(Get(s3,dx,-dy), float4x4(-0.082505904138088,-0.113873191177845,0.030931090936065,0.006633422803134,0.048147358000278,0.065484382212162,-0.011762358248234,-0.115738756954670,0.126222819089890,-0.015001792460680,0.044773172587156,-0.124814927577972,0.053168158978224,-0.029432402923703,0.044952783733606,-0.136204943060875));
res += mul(Get(s3,dx,0), float4x4(0.046219263225794,-0.065598584711552,-0.109783202409744,-0.037108991295099,-0.008803281933069,0.086005121469498,0.020241044461727,0.103387169539928,0.073242403566837,0.092140212655067,-0.019024277105927,0.006528689526021,0.043343733996153,0.134258434176445,-0.146664112806320,0.093379579484463));
res += mul(Get(s3,dx,dy), float4x4(0.030166894197464,-0.013738981448114,0.024724049493670,0.064549125730991,0.053311076015234,-0.049147490411997,0.068536035716534,0.122131370007992,0.005808815360069,0.070112809538841,-0.019507480785251,0.037675131112337,-0.043508682399988,-0.034327942878008,0.046929903328419,-0.005784117151052));
res = max(float4(0,0,0,0), res);
return res;
}
