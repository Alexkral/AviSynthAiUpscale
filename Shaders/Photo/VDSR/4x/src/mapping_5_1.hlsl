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
res += mul(Get(s0,-dx,-dy), float4x4(0.087670698761940,-0.035397667437792,-0.052728876471519,-0.037017844617367,-0.193776726722717,-0.148886904120445,0.100612670183182,-0.032346881926060,-0.018446134403348,-0.076278418302536,-0.022748958319426,0.056932739913464,-0.080438509583473,-0.003727409755811,-0.203890547156334,0.145584046840668));
res += mul(Get(s0,-dx,0), float4x4(-0.002680205274373,-0.031118806451559,-0.088564500212669,0.003269192995504,-0.071797765791416,-0.072617739439011,-0.023871405050159,-0.034638646990061,-0.032839991152287,0.059574078768492,-0.103398054838181,-0.141028746962547,-0.060153950005770,-0.196266800165176,-0.120664656162262,0.195307597517967));
res += mul(Get(s0,-dx,dy), float4x4(-0.094391785562038,-0.014264499768615,-0.011555232107639,-0.013144252821803,-0.092242583632469,0.162467703223228,-0.038183074444532,0.088950753211975,-0.042111635208130,0.054484296590090,-0.070674337446690,-0.172492653131485,-0.137364223599434,0.054078321903944,-0.117523290216923,0.059372626245022));
res += mul(Get(s0,0,-dy), float4x4(-0.155736699700356,-0.011747074313462,-0.031338583678007,-0.062873244285583,-0.042607679963112,-0.096118137240410,-0.053869150578976,0.182668149471283,-0.030039483681321,-0.153267756104469,-0.210200324654579,0.193156242370605,-0.065017729997635,-0.042951088398695,-0.110883966088295,-0.030830051749945));
res += mul(Get(s0,0,0), float4x4(-0.125298172235489,-0.030379859730601,0.030864732339978,-0.091716192662716,-0.036957077682018,-0.029839888215065,-0.019942719489336,-0.075688295066357,0.000378534779884,0.009254468604922,-0.147305548191071,0.224374845623970,-0.043515458703041,0.087574608623981,0.009551580063999,0.109963014721870));
res += mul(Get(s0,0,dy), float4x4(0.014726867899299,-0.040473692119122,-0.008763097226620,-0.065721578896046,-0.075559951364994,-0.088267326354980,0.014765552245080,0.054169163107872,-0.029121577739716,-0.005432052537799,-0.049572836607695,0.002521450631320,-0.013582794927061,0.028876025229692,-0.111477270722389,-0.058657765388489));
res += mul(Get(s0,dx,-dy), float4x4(-0.125678151845932,0.162125498056412,0.005418835673481,-0.006992138922215,-0.092853643000126,-0.048233561217785,0.324969172477722,0.032579965889454,0.038053579628468,-0.080951645970345,0.080156251788139,-0.260022461414337,-0.060251343995333,-0.143100902438164,-0.034751996397972,0.064621224999428));
res += mul(Get(s0,dx,0), float4x4(-0.129414096474648,0.094140365719795,0.112055815756321,-0.117607787251472,-0.112734109163284,-0.015788989141583,0.178830429911613,0.045322719961405,0.007272273767740,0.038287390023470,0.011095128022134,0.066535100340843,-0.048920221626759,-0.165513932704926,-0.000659137731418,0.090536952018738));
res += mul(Get(s0,dx,dy), float4x4(0.067687958478928,0.079841412603855,-0.010308020748198,-0.117999635636806,-0.108445271849632,-0.246738001704216,-0.084841355681419,0.427445918321609,0.051245912909508,0.106977246701717,0.048270054161549,-0.171063199639320,0.195180818438530,-0.125650972127914,-0.104520305991173,-0.035107690840960));
res += mul(Get(s1,-dx,-dy), float4x4(0.032742816954851,0.037038523703814,0.011258313432336,0.041437391191721,-0.041167765855789,0.044347293674946,-0.071025162935257,0.035993758589029,0.058994635939598,0.026938030496240,0.148477539420128,-0.056735426187515,-0.053874112665653,-0.049125581979752,-0.027388272807002,-0.082035027444363));
res += mul(Get(s1,-dx,0), float4x4(0.000754949869588,-0.021087883040309,0.187760233879089,0.031501669436693,0.049899592995644,0.080917149782181,-0.078625082969666,0.049680285155773,0.070533767342567,-0.067611917853355,0.222838863730431,-0.110943637788296,-0.041335895657539,-0.131326690316200,0.027631334960461,0.066420033574104));
res += mul(Get(s1,-dx,dy), float4x4(0.110617093741894,-0.105961643159389,0.095444768667221,0.082123540341854,-0.050204597413540,-0.014330788515508,-0.136883914470673,0.099672816693783,-0.069731086492538,-0.057163972407579,-0.036512948572636,-0.097545318305492,0.018247364088893,-0.154105320572853,0.050863999873400,0.078561544418335));
res += mul(Get(s1,0,-dy), float4x4(-0.059945549815893,0.145948186516762,0.078815191984177,-0.070452168583870,-0.073414921760559,0.000804214330856,-0.027332119643688,-0.071666166186333,0.086242131888866,0.039879489690065,0.067408151924610,-0.075231671333313,-0.092306360602379,-0.014051161706448,-0.085115760564804,0.177263319492340));
res += mul(Get(s1,0,0), float4x4(-0.176296457648277,-0.036671184003353,0.038902718573809,0.018843814730644,0.060244105756283,-0.099342204630375,-0.163961067795753,-0.069185107946396,-0.031230324879289,0.020049136132002,0.115448273718357,-0.146088957786560,0.133116140961647,-0.050714924931526,-0.018431656062603,-0.035316880792379));
res += mul(Get(s1,0,dy), float4x4(-0.043487440794706,-0.123050592839718,-0.106391303241253,0.105380378663540,0.165716454386711,-0.079309612512589,-0.141236141324043,-0.062931969761848,-0.131611526012421,-0.013417503796518,0.035835865885019,-0.054600235074759,0.034174628555775,0.115852624177933,0.141223981976509,0.102481216192245));
res += mul(Get(s1,dx,-dy), float4x4(0.024033008143306,0.120059132575989,0.047496762126684,-0.174276977777481,-0.164783909916878,0.181501090526581,0.022592054679990,-0.027297167107463,-0.029731359332800,0.049220912158489,-0.014397458173335,-0.030179543420672,-0.184817567467690,0.060793571174145,-0.059866357594728,-0.050475087016821));
res += mul(Get(s1,dx,0), float4x4(-0.122111365199089,-0.068677455186844,0.023252427577972,-0.012534573674202,0.056122850626707,0.174677252769470,-0.041361112147570,-0.064582757651806,-0.078151717782021,-0.000149174942635,-0.063038013875484,-0.007114239968359,0.191792905330658,0.004351585637778,-0.096829354763031,-0.166162848472595));
res += mul(Get(s1,dx,dy), float4x4(0.040746957063675,-0.163784533739090,-0.054853852838278,0.104116752743721,0.021815294399858,0.001511989044957,0.017442258074880,-0.070497825741768,-0.084619097411633,0.017020113766193,-0.028570901602507,-0.068910889327526,0.176677599549294,0.142615064978600,0.052896305918694,-0.043303500860929));
res += mul(Get(s2,-dx,-dy), float4x4(-0.112342216074467,0.024809401482344,-0.027638113126159,0.051802843809128,-0.122300542891026,-0.098725333809853,-0.046986553817987,0.152205035090446,0.093748651444912,-0.081286497414112,0.071660354733467,-0.217350631952286,0.156893491744995,0.029401978477836,-0.051509819924831,-0.118596069514751));
res += mul(Get(s2,-dx,0), float4x4(-0.136289283633232,-0.016832092776895,-0.043665494769812,0.023886557668447,-0.051485903561115,-0.001459539402276,-0.032811850309372,0.095133043825626,0.026635108515620,-0.017867470160127,-0.111070334911346,-0.089899666607380,0.222507551312447,-0.032069925218821,0.149800404906273,-0.093102604150772));
res += mul(Get(s2,-dx,dy), float4x4(-0.064405567944050,0.089523866772652,-0.082333050668240,-0.012976998463273,-0.103795342147350,-0.054148945957422,-0.127668470144272,0.191758692264557,0.056057743728161,0.046442463994026,-0.098261274397373,0.043962892144918,-0.034235689789057,-0.056371323764324,-0.080047532916069,-0.128742009401321));
res += mul(Get(s2,0,-dy), float4x4(-0.060208376497030,-0.144966661930084,-0.010859078727663,-0.052718318998814,-0.088840171694756,-0.171499088406563,0.161034762859344,0.003862232901156,0.137312933802605,-0.003075896762311,0.238331809639931,0.067670665681362,-0.055856030434370,0.014999859966338,-0.122045457363129,-0.096893712878227));
res += mul(Get(s2,0,0), float4x4(-0.031446993350983,-0.065336719155312,0.037998035550117,-0.045982722193003,-0.044504474848509,0.169952750205994,0.241173490881920,-0.072391889989376,0.071710437536240,0.051566258072853,-0.007653553504497,0.068129241466522,-0.080885738134384,0.002208301564679,-0.032220590859652,-0.131567880511284));
res += mul(Get(s2,0,dy), float4x4(0.151717007160187,-0.008114269934595,-0.065732181072235,-0.075214922428131,-0.035870850086212,-0.030223876237869,-0.032842990010977,-0.009593501687050,0.119402386248112,0.239800199866295,-0.154754549264908,-0.103831455111504,-0.093677692115307,0.007065976969898,-0.033451586961746,-0.157946124672890));
res += mul(Get(s2,dx,-dy), float4x4(-0.164379358291626,0.343014478683472,0.014316610060632,-0.020318582653999,-0.062516219913960,-0.186616599559784,-0.063447684049606,0.091486871242523,-0.023313818499446,-0.144963458180428,-0.079271249473095,0.148265898227692,-0.036366239190102,-0.016138406470418,-0.110009074211121,-0.083339512348175));
res += mul(Get(s2,dx,0), float4x4(-0.258904755115509,0.123669326305389,-0.067832820117474,-0.095911897718906,-0.039567906409502,0.264506697654724,0.058424759656191,0.000732075655833,-0.099184326827526,-0.091761186718941,-0.076001711189747,-0.126641571521759,-0.038133032619953,-0.101520933210850,-0.077979139983654,0.013026338070631));
res += mul(Get(s2,dx,dy), float4x4(0.005881925113499,0.037247449159622,-0.132481753826141,-0.104094006121159,0.029129639267921,0.035288691520691,-0.054759241640568,0.062228668481112,-0.083621039986610,-0.016713660210371,0.015432815067470,-0.127514779567719,-0.114281736314297,-0.111926957964897,-0.106649346649647,-0.066288419067860));
res += mul(Get(s3,-dx,-dy), float4x4(0.019479317590594,-0.064032524824142,-0.031895946711302,-0.147015869617462,-0.082168899476528,0.166026934981346,0.265348941087723,0.033983454108238,0.094483800232410,0.006413615308702,-0.108093589544296,0.133040815591812,0.030004600062966,-0.191634625196457,-0.070346169173717,0.027357365936041));
res += mul(Get(s3,-dx,0), float4x4(0.179640352725983,-0.128879308700562,-0.087395250797272,-0.029125332832336,-0.112748943269253,0.086358383297920,-0.069579109549522,-0.018755326047540,-0.009632818400860,-0.096401669085026,-0.003166070906445,0.146814897656441,0.125097483396530,-0.050026409327984,0.012792726047337,0.007019406184554));
res += mul(Get(s3,-dx,dy), float4x4(0.057631004601717,-0.137465849518776,-0.158547624945641,0.112932063639164,-0.061170887202024,0.175264522433281,0.002943467814475,0.108644574880600,0.079518556594849,-0.107514046132565,-0.131166398525238,-0.049935292452574,-0.154686331748962,-0.028335981070995,-0.039187449961901,-0.123683623969555));
res += mul(Get(s3,0,-dy), float4x4(-0.046473849564791,0.036066640168428,0.099487856030464,-0.253320157527924,-0.031923674046993,-0.149104952812195,0.056493230164051,-0.142023593187332,0.010742459446192,0.015731193125248,-0.066914804279804,-0.081025652587414,0.187339141964912,-0.175774142146111,-0.101164504885674,0.203394010663033));
res += mul(Get(s3,0,0), float4x4(-0.035454306751490,-0.065575614571571,0.130021244287491,-0.055457070469856,-0.049032550305128,-0.098348505795002,-0.123058371245861,-0.158993765711784,-0.084014832973480,0.016907002776861,0.037407170981169,-0.034083578735590,0.172752857208252,-0.091002196073532,0.052857138216496,0.008389947004616));
res += mul(Get(s3,0,dy), float4x4(-0.097400262951851,-0.044138200581074,0.065076462924480,0.155969023704529,-0.004902981687337,-0.101708687841892,-0.058186572045088,-0.010465459898114,0.028883077204227,-0.015899507328868,-0.058701712638140,-0.028856078162789,-0.098353952169418,-0.116584964096546,-0.003355865832418,0.040026377886534));
res += mul(Get(s3,dx,-dy), float4x4(0.046222850680351,0.114480450749397,-0.018486853688955,-0.136468231678009,0.068963706493378,-0.101258851587772,0.276690274477005,-0.370993793010712,0.005565956700593,-0.098617516458035,-0.121398150920868,-0.078287862241268,0.058321077376604,-0.257729619741440,-0.121004700660706,0.037572570145130));
res += mul(Get(s3,dx,0), float4x4(0.061506394296885,-0.125174000859261,-0.029232228174806,0.191763237118721,0.101000279188156,-0.037931449711323,0.036813244223595,0.059121493250132,-0.093873083591461,-0.022425657138228,-0.003047889564186,-0.106107048690319,0.147229492664337,-0.070889569818974,-0.004414146300405,0.034118663519621));
res += mul(Get(s3,dx,dy), float4x4(0.062674127519131,-0.033448733389378,0.037461072206497,0.030856143683195,-0.052645146846771,-0.009402442723513,-0.071618467569351,0.083543822169304,-0.023983867838979,-0.040854044258595,-0.066110864281654,0.099150061607361,-0.077871188521385,-0.176940947771072,-0.136360332369804,0.041318189352751));
return max(float4(0,0,0,0), res);
}
