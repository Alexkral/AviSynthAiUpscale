sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.326761156320572,0.363466441631317,-0.141280442476273,-0.005869337357581);
res += mul(Get(s0,-dx,-dy), float4x4(0.087980136275291,-0.065847635269165,-0.002828448079526,0.025121143087745,-0.105661019682884,-0.031592871993780,0.079910919070244,-0.000714115565643,-0.044930871576071,0.232475683093071,-0.008584826253355,-0.021595668047667,-0.056174352765083,-0.260388165712357,-0.166357338428497,-0.012233980931342));
res += mul(Get(s0,-dx,0), float4x4(0.111319310963154,0.139231652021408,-0.097198233008385,0.104805298149586,-0.068996921181679,0.277966022491455,-0.055351648479700,0.088572949171066,-0.043523889034986,-0.124541252851486,0.031271085143089,0.039941500872374,0.128126114606857,-0.290138661861420,-0.123321674764156,-0.019152542576194));
res += mul(Get(s0,-dx,dy), float4x4(0.131514996290207,0.110200434923172,-0.329162478446960,0.049674630165100,0.148677185177803,-0.235638573765755,-0.049520384520292,0.055747658014297,0.021240770816803,-0.091409988701344,0.181390866637230,0.004210637882352,0.076846383512020,-0.140166133642197,-0.105567246675491,0.017184445634484));
res += mul(Get(s0,0,-dy), float4x4(0.166117131710052,0.086183935403824,-0.001811873982660,0.163706347346306,-0.051057435572147,-0.132955014705658,-0.063664399087429,0.136620372533798,-0.026980761438608,0.100027859210968,0.046868007630110,-0.082853026688099,0.115945085883141,-0.293507784605026,-0.207707956433296,-0.041172593832016));
res += mul(Get(s0,0,0), float4x4(0.114645868539810,-0.005010490305722,0.481917113065720,0.105183638632298,0.344217479228973,-0.265033364295959,0.033081628382206,-0.217421710491180,-0.031698696315289,0.041407089680433,0.081079639494419,-0.035141214728355,0.145327791571617,-0.408856511116028,-0.038558334112167,0.294577240943909));
res += mul(Get(s0,0,dy), float4x4(0.065815873444080,0.064628534018993,-0.034733980894089,-0.121102839708328,0.147704318165779,-0.011641024611890,-0.105312719941139,-0.027100434526801,-0.146569684147835,-0.314909279346466,-0.026120213791728,-0.037895463407040,0.055895149707794,-0.060906089842319,-0.230690971016884,0.027439281344414));
res += mul(Get(s0,dx,-dy), float4x4(0.041911363601685,0.019153391942382,0.127431899309158,0.053953576833010,0.025502381846309,-0.053824417293072,0.157543838024139,-0.025237992405891,0.016360025852919,-0.094749450683594,-0.075694739818573,-0.060443855822086,0.123782664537430,0.081428624689579,0.032144945114851,0.031844694167376));
res += mul(Get(s0,dx,0), float4x4(-0.054250359535217,0.008485236205161,0.049067728221416,-0.005025930237025,0.134082257747650,-0.041042178869247,0.074627481400967,0.077265225350857,-0.083825945854187,0.052437987178564,0.092090092599392,0.115087352693081,0.080248765647411,0.113336212933064,0.187723889946938,-0.128466889262199));
res += mul(Get(s0,dx,dy), float4x4(0.014371972531080,-0.217960104346275,0.158604636788368,-0.005161099135876,0.043432038277388,0.122580617666245,0.159251809120178,0.033085420727730,0.135543018579483,-0.061404403299093,-0.023334344848990,-0.008685362525284,0.029832160100341,0.133517131209373,-0.066399805247784,0.007338134571910));
res += mul(Get(s1,-dx,-dy), float4x4(0.019391387701035,-0.000056530796428,-0.214255273342133,-0.000421219679993,0.012839041650295,0.122411489486694,0.241290479898453,0.067958131432533,-0.174395039677620,0.248371049761772,-0.068794652819633,0.066369861364365,-0.069589480757713,-0.083922766149044,0.014036537148058,0.082298569381237));
res += mul(Get(s1,-dx,0), float4x4(-0.010776857845485,-0.015925994142890,-0.211303904652596,-0.002283670939505,-0.003518367419019,-0.394614338874817,0.083481393754482,0.109314717352390,-0.029339872300625,-0.066554747521877,-0.209544986486435,-0.004371667746454,0.050061792135239,-0.059108901768923,0.069251872599125,-0.022382257506251));
res += mul(Get(s1,-dx,dy), float4x4(0.005383181385696,0.188706010580063,-0.122354090213776,0.030852282419801,0.038770791143179,0.171887874603271,0.173723533749580,0.067532591521740,-0.178035587072372,0.323352754116058,0.025638956576586,0.050003819167614,-0.056771617382765,-0.137244537472725,-0.005513304844499,-0.010014340281487));
res += mul(Get(s1,0,-dy), float4x4(0.044421166181564,-0.165801540017128,-0.062530092895031,0.098669685423374,0.062211900949478,0.397278398275375,0.349061161279678,0.074485547840595,-0.056342191994190,-0.054776862263680,-0.168965786695480,-0.003572359913960,0.090632572770119,-0.061342280358076,0.091552473604679,0.014728553593159));
res += mul(Get(s1,0,0), float4x4(0.044435400515795,-0.125733390450478,-0.179528847336769,-0.050048753619194,0.223025992512703,-0.215946868062019,0.080930128693581,0.003441235981882,0.022553201764822,-0.224323824048042,0.067783802747726,0.054425951093435,0.159372597932816,0.195066630840302,0.256528705358505,0.077846422791481));
res += mul(Get(s1,0,dy), float4x4(0.038660138845444,0.252250045537949,0.037333976477385,0.059125203639269,-0.019662212580442,0.207827031612396,0.095803961157799,-0.035728812217712,-0.025493059307337,0.175222858786583,0.157765179872513,-0.009681203402579,0.117451429367065,0.082488387823105,0.025450544431806,0.034866482019424));
res += mul(Get(s1,dx,-dy), float4x4(-0.022328535094857,0.156418398022652,-0.006607973948121,0.016590371727943,-0.075475007295609,0.048718571662903,0.049241326749325,-0.011873614974320,0.107953883707523,-0.216778486967087,-0.083750061690807,0.036492142826319,0.078277073800564,-0.135250359773636,0.116630278527737,0.053714986890554));
res += mul(Get(s1,dx,0), float4x4(0.038405165076256,-0.145561918616295,-0.016886427998543,0.196656316518784,-0.034741502255201,-0.029808906838298,0.024954633787274,0.009554502554238,0.050835929811001,-0.186081185936928,0.167312368750572,-0.083025187253952,0.225649982690811,0.029641060158610,0.081356205046177,0.081054441630840));
res += mul(Get(s1,dx,dy), float4x4(-0.105340242385864,0.277868270874023,0.000007403372365,0.048389531672001,-0.035236913710833,-0.032157253473997,0.141053110361099,-0.038898725062609,0.004963131155819,0.134639486670494,-0.038602858781815,-0.093995325267315,0.124729253351688,-0.098621539771557,-0.018112888559699,-0.068786054849625));
res += mul(Get(s2,-dx,-dy), float4x4(-0.038900092244148,-0.145022004842758,-0.012428704649210,-0.003573719412088,-0.016002763062716,-0.282252758741379,-0.058742795139551,-0.106868818402290,0.008936253376305,-0.158734858036041,-0.000125373480842,-0.030104529112577,-0.071372374892235,-0.243698820471764,-0.063531026244164,-0.042871467769146));
res += mul(Get(s2,-dx,0), float4x4(-0.088052801787853,-0.052713040262461,-0.123107358813286,0.016396692022681,0.023452837020159,-0.003944471944124,0.040076244622469,-0.086272709071636,-0.053140506148338,0.135957717895508,0.232920184731483,-0.014133518561721,-0.047776225954294,0.051557783037424,-0.041657596826553,0.053223121911287));
res += mul(Get(s2,-dx,dy), float4x4(-0.022953456267715,0.102845698595047,-0.067147277295589,-0.017511028796434,-0.008511297404766,-0.040800713002682,0.068344913423061,-0.097947649657726,-0.023026058450341,-0.225112855434418,0.213084980845451,0.005220035091043,-0.050287388265133,-0.045011121779680,-0.104292318224907,-0.024702122434974));
res += mul(Get(s2,0,-dy), float4x4(-0.026672331616282,-0.370698809623718,0.039097759872675,0.022908177226782,0.077096104621887,0.063244611024857,-0.080533482134342,0.064029067754745,-0.058239638805389,0.053460784256458,-0.006272982805967,-0.091647274792194,-0.052457764744759,-0.121727176010609,-0.076835930347443,-0.082384407520294));
res += mul(Get(s2,0,0), float4x4(0.102699436247349,-0.078839488327503,-0.066955782473087,0.078886143863201,-0.040709301829338,0.131789520382881,0.194737166166306,0.085434071719646,-0.015427358448505,-0.040656164288521,-0.333221137523651,0.188478380441666,0.008660711348057,-0.078918278217316,-0.217297792434692,-0.142289921641350));
res += mul(Get(s2,0,dy), float4x4(0.024947818368673,0.114669770002365,-0.085354484617710,0.005460022948682,-0.063952006399632,0.005220880266279,0.070242919027805,-0.035212684422731,0.009387475438416,-0.044706676155329,-0.250767052173615,-0.055043842643499,-0.092833898961544,-0.091500431299210,-0.062179066240788,-0.013446477241814));
res += mul(Get(s2,dx,-dy), float4x4(-0.095404148101807,-0.139942273497581,0.025682482868433,-0.076079733669758,0.019633829593658,0.011970586143434,0.137846931815147,-0.130023106932640,0.014235913753510,-0.106638304889202,-0.005015815608203,0.010817401111126,0.102743662893772,-0.097936965525150,0.192562222480774,-0.087952718138695));
res += mul(Get(s2,dx,0), float4x4(0.019051847979426,0.130231723189354,-0.175880879163742,-0.043479815125465,-0.010924119502306,0.057102788239717,0.070425905287266,-0.052190903574228,-0.000329318485456,-0.014899544417858,-0.025210589170456,-0.029414135962725,0.076825298368931,-0.317114919424057,-0.190089121460915,0.033892899751663));
res += mul(Get(s2,dx,dy), float4x4(0.000624169129878,-0.011857388541102,-0.078516252338886,-0.048560068011284,-0.067142553627491,0.011887431144714,-0.054027643054724,0.005169935990125,0.032035633921623,-0.174056038260460,-0.017121884971857,0.004866223782301,0.072162836790085,-0.092746488749981,-0.064470723271370,0.008526916615665));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001256064744666,-0.002782589523122,0.027195902541280,0.013476646505296,-0.213633432984352,0.035751823335886,-0.042893469333649,-0.105116814374924,0.031918168067932,0.050206746906042,0.082461901009083,-0.009669808670878,-0.058679766952991,-0.040907666087151,0.086484424769878,-0.043567653745413));
res += mul(Get(s3,-dx,0), float4x4(-0.050948638468981,0.225758716464043,0.137735202908516,0.021628748625517,-0.217788264155388,-0.122378394007683,0.189181894063950,-0.089244663715363,0.048092454671860,0.135184869170189,-0.124661341309547,0.028366312384605,0.019891824573278,0.202309444546700,0.139729350805283,0.044541928917170));
res += mul(Get(s3,-dx,dy), float4x4(-0.016946626827121,-0.067683488130569,-0.038591776043177,0.062979198992252,0.016456255689263,-0.025091502815485,-0.083343058824539,-0.017567370086908,-0.024862878024578,0.079404070973396,0.015604317188263,-0.025932053104043,-0.037836812436581,-0.020615896210074,0.049768511205912,0.045283179730177));
res += mul(Get(s3,0,-dy), float4x4(0.070758908987045,-0.073555290699005,-0.033647157251835,-0.069952353835106,-0.040921006351709,-0.287971884012222,-0.217772379517555,0.149266064167023,0.101861543953419,0.002807138022035,0.111183561384678,-0.043350573629141,0.249555349349976,-0.075609855353832,-0.249836415052414,0.144855409860611));
res += mul(Get(s3,0,0), float4x4(0.008256957866251,0.020855832844973,0.076958425343037,-0.054048925638199,-0.194686606526375,0.012949586845934,0.338712006807327,0.060942199081182,0.127297952771187,-0.069065310060978,0.017073014751077,-0.120234504342079,0.290906757116318,-0.010577032342553,-0.073849566280842,0.040560491383076));
res += mul(Get(s3,0,dy), float4x4(0.053467918187380,-0.045455660670996,0.259726792573929,-0.055854048579931,-0.062994502484798,0.040683463215828,-0.044554121792316,-0.014086612500250,-0.204746335744858,0.189646959304810,0.068355761468410,-0.077003866434097,-0.054592505097389,0.119317933917046,-0.056736744940281,-0.014358840882778));
res += mul(Get(s3,dx,-dy), float4x4(0.110999517142773,0.085448786616325,-0.082664541900158,0.006455906201154,-0.094010859727859,0.211045786738396,0.242169186472893,-0.132086947560310,0.119381912052631,0.045832846313715,0.110042899847031,-0.006469010375440,-0.034876294434071,0.078217253088951,0.228901863098145,0.192262411117554));
res += mul(Get(s3,dx,0), float4x4(0.009129704907537,0.103716902434826,0.068190149962902,-0.034848637878895,-0.150020033121109,-0.333927869796753,0.064843840897083,-0.121576704084873,0.041813053190708,-0.223976194858551,-0.107774302363396,-0.056337654590607,0.235212817788124,0.009639200754464,-0.002783752512187,0.081952519714832));
res += mul(Get(s3,dx,dy), float4x4(-0.077487729489803,0.314542859792709,-0.032147347927094,0.050022684037685,-0.038012973964214,0.030483409762383,-0.102076902985573,-0.030044306069613,-0.120350427925587,0.118169456720352,0.014610607177019,-0.098668456077576,0.057517856359482,0.047981061041355,0.041038382798433,0.077445067465305));
res += mul(Get(s4,-dx,-dy), float4x4(-0.033014349639416,0.093294866383076,-0.059088747948408,0.042634464800358,-0.011973191983998,0.196500301361084,0.172015815973282,-0.080342397093773,-0.040099587291479,-0.080285236239433,0.148469790816307,0.012469365261495,-0.032716896384954,0.071975655853748,-0.070634171366692,0.036137882620096));
res += mul(Get(s4,-dx,0), float4x4(0.033841051161289,-0.305553406476974,0.048922721296549,-0.009617154486477,-0.162431269884109,-0.180075347423553,0.088740102946758,0.020029399544001,0.013712810352445,0.050657149404287,0.047612544149160,-0.019372792914510,-0.014962565153837,-0.015258257277310,-0.034177351742983,0.042002994567156));
res += mul(Get(s4,-dx,dy), float4x4(-0.013011005707085,0.000822139496449,-0.056172948330641,0.078006215393543,0.018379529938102,0.186765119433403,-0.054763052612543,-0.012023101560771,-0.085785105824471,0.413275599479675,0.074722632765770,-0.042482618242502,0.071989886462688,0.232753917574883,-0.028426120057702,0.013527871109545));
res += mul(Get(s4,0,-dy), float4x4(-0.025693859905005,0.000256098137470,-0.019175034016371,0.024060817435384,0.021877268329263,-0.083205327391624,-0.003405326046050,0.017524993047118,-0.154875636100769,0.043941151350737,-0.042481441050768,-0.081141278147697,-0.076796092092991,-0.035397201776505,-0.070290610194206,0.003745223861188));
res += mul(Get(s4,0,0), float4x4(-0.064709298312664,0.243110522627831,-0.044389691203833,-0.045408423990011,0.190494358539581,0.017305849120021,-0.051302578300238,-0.020836960524321,0.057729318737984,0.339871942996979,0.055939432233572,0.050670653581619,0.096601009368896,-0.500301122665405,-0.212932169437408,0.026244547218084));
res += mul(Get(s4,0,dy), float4x4(0.206213161349297,0.034474566578865,0.043941073119640,0.022724429145455,-0.059314120560884,0.150603294372559,0.170470297336578,0.001269660424441,0.035039011389017,0.115563049912453,0.099458999931812,-0.106924362480640,0.093167923390865,0.163445904850960,0.152680963277817,-0.046559520065784));
res += mul(Get(s4,dx,-dy), float4x4(-0.089333578944206,-0.197296753525734,-0.001681623398326,0.039369329810143,0.172395676374435,-0.321607112884521,-0.014993505552411,0.202584177255630,-0.066604211926460,0.022930251434445,0.121468290686607,-0.077403217554092,-0.022542335093021,0.010729558765888,0.000073698174674,-0.088816612958908));
res += mul(Get(s4,dx,0), float4x4(0.166920214891434,0.240768671035767,0.015196043066680,0.071354515850544,0.079806394875050,-0.220598578453064,-0.011008294299245,0.131873011589050,0.036370567977428,-0.126942187547684,0.216009199619293,0.164173617959023,0.125194177031517,0.022578626871109,-0.287431031465530,0.054453022778034));
res += mul(Get(s4,dx,dy), float4x4(0.210402742028236,-0.162511050701141,0.066026233136654,0.033812142908573,-0.097414523363113,-0.071996293962002,0.052740018814802,0.012007557787001,0.023035237565637,-0.181545391678810,-0.121544972062111,-0.043426025658846,0.146123036742210,-0.056778032332659,0.085180670022964,0.044501677155495));
res += mul(Get(s5,-dx,-dy), float4x4(0.033083997666836,-0.482052564620972,-0.048833746463060,-0.093983650207520,0.049632415175438,0.010489791631699,-0.001908598816954,-0.014641965739429,-0.012350282631814,-0.495894849300385,-0.034044899046421,0.014399565756321,0.024903491139412,-0.149282649159431,-0.160669729113579,-0.067618831992149));
res += mul(Get(s5,-dx,0), float4x4(0.117646552622318,0.289444476366043,0.126667097210884,0.126674681901932,0.054438568651676,0.039971522986889,-0.008371360599995,0.110828340053558,0.023623403161764,0.133188247680664,-0.004872468300164,-0.014659421518445,-0.046220168471336,-0.024495877325535,-0.112479850649834,-0.049847066402435));
res += mul(Get(s5,-dx,dy), float4x4(0.179609939455986,-0.308949828147888,-0.068154759705067,-0.043044008314610,-0.064259737730026,-0.036791395395994,0.073360688984394,0.082915827631950,0.018962234258652,0.037382725626230,0.052096646279097,-0.086275249719620,-0.027891291305423,0.038721997290850,-0.169135183095932,-0.007279681973159));
res += mul(Get(s5,0,-dy), float4x4(-0.013788241893053,-0.178164497017860,0.000728450890165,0.006455459631979,-0.004609975498170,0.138920634984970,-0.065562643110752,-0.024567520245910,0.149335131049156,-0.955643355846405,-0.293010681867599,0.002444587880746,-0.074145205318928,-0.295803695917130,-0.022688996046782,-0.090624399483204));
res += mul(Get(s5,0,0), float4x4(-0.080549940466881,0.041553784161806,0.075110346078873,-0.108749516308308,-0.034763071686029,0.146924197673798,0.115090429782867,-0.243918195366859,0.183225944638252,-0.270354598760605,-0.171444058418274,0.019036622717977,0.124742165207863,-0.403326481580734,-0.343071073293686,-0.129910677671432));
res += mul(Get(s5,0,dy), float4x4(0.043386079370975,0.170341148972511,0.171733111143112,0.019476279616356,-0.014649316668510,0.007135731168091,-0.000768382975366,-0.018624998629093,0.069815225899220,-0.124714851379395,0.033092264086008,-0.095225714147091,-0.057548444718122,-0.009620772674680,-0.005250458605587,-0.120410695672035));
res += mul(Get(s5,dx,-dy), float4x4(-0.043651420623064,0.184931293129921,-0.067625105381012,0.014292786829174,0.003862770041451,-0.169076457619667,-0.101510398089886,0.008995637297630,0.034199956804514,-0.340461969375610,-0.020762018859386,-0.076864719390869,0.020231014117599,0.077894255518913,0.003137421095744,0.046050991863012));
res += mul(Get(s5,dx,0), float4x4(0.003506140550599,0.073104470968246,0.057235073298216,0.104527473449707,0.051811862736940,-0.074290357530117,0.084298536181450,0.161050230264664,0.097412191331387,-0.098016686737537,0.030170354992151,-0.088876441121101,0.125834465026855,-0.080503270030022,-0.032164353877306,0.074690148234367));
res += mul(Get(s5,dx,dy), float4x4(-0.045778304338455,0.148389562964439,-0.008579025976360,0.008450733497739,0.028223196044564,-0.179447785019875,0.087944127619267,-0.010930503718555,0.011952391825616,0.001999417785555,0.007007207255810,-0.107056282460690,-0.040295008569956,-0.150994196534157,0.043037340044975,-0.016210019588470));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.026182711124420,0.149590924382210,0.084072828292847,0.903265774250031) * min(float4(0, 0, 0, 0), res);
return res;
}
