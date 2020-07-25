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
res += mul(Get(s0,-dx,-dy), float4x4(-0.003743175417185,-0.129268154501915,-0.030122144147754,0.052959851920605,0.027674317359924,0.173579201102257,-0.115021571516991,-0.124550499022007,0.251557797193527,-0.087614879012108,-0.081685684621334,0.089571319520473,-0.016406390815973,-0.024277914315462,0.046263661235571,0.270540058612823));
res += mul(Get(s0,-dx,0), float4x4(-0.167354047298431,-0.068964347243309,-0.012948627583683,0.152888268232346,-0.178052768111229,-0.038015484809875,0.036887910217047,-0.066240824759007,-0.049392461776733,0.053774274885654,-0.002951375208795,0.234669819474220,0.190017238259315,0.120771788060665,-0.104391619563103,-0.225242197513580));
res += mul(Get(s0,-dx,dy), float4x4(0.013284686021507,-0.154465079307556,0.062540560960770,0.198235437273979,0.036864928901196,-0.030250716954470,-0.041981417685747,-0.118811137974262,-0.119417749345303,-0.145783275365829,-0.032296679913998,-0.189558967947960,0.152797311544418,-0.133533805608749,0.104257844388485,0.030726278200746));
res += mul(Get(s0,0,-dy), float4x4(0.055946011096239,-0.169818103313446,-0.032781012356281,-0.142996966838837,0.071298994123936,-0.088608056306839,-0.203048586845398,0.060691177845001,-0.012468561530113,-0.210228279232979,-0.058981746435165,-0.101930066943169,0.013919272460043,0.128960028290749,0.039336293935776,0.022412627935410));
res += mul(Get(s0,0,0), float4x4(-0.083106607198715,0.092355705797672,-0.051524039357901,-0.256089329719543,0.057368490844965,-0.123457752168179,0.162526190280914,-0.142457231879234,-0.074656024575233,0.104799970984459,-0.047821786254644,-0.005758285988122,0.058490827679634,0.012580104172230,0.080132365226746,0.227474749088287));
res += mul(Get(s0,0,dy), float4x4(-0.025473980233073,0.074442751705647,-0.063125908374786,0.006656088400632,-0.078834854066372,0.142494559288025,0.125345572829247,-0.076285362243652,0.010001381859183,0.165668532252312,0.023294977843761,0.090984351933002,-0.057127911597490,0.182008028030396,0.119443483650684,0.034470357000828));
res += mul(Get(s0,dx,-dy), float4x4(-0.144345387816429,-0.009800103493035,-0.024686641991138,0.016132738441229,-0.075715459883213,0.167120680212975,-0.071643963456154,-0.010148436762393,-0.156570941209793,0.051117043942213,0.040633704513311,0.036022257059813,0.055805504322052,0.064265064895153,0.069382913410664,0.069983400404453));
res += mul(Get(s0,dx,0), float4x4(-0.112971462309361,-0.067838169634342,-0.080416247248650,0.002380174817517,0.018660716712475,-0.026776889339089,0.033792950212955,0.121295079588890,-0.084930256009102,0.271330118179321,0.013287874870002,0.087935000658035,-0.047615844756365,0.018610209226608,0.146940350532532,-0.150399133563042));
res += mul(Get(s0,dx,dy), float4x4(-0.008462551981211,0.010686249472201,-0.308106303215027,0.193688109517097,0.076350517570972,-0.080165684223175,0.127788156270981,0.080300129950047,-0.002520589390770,-0.131330400705338,-0.064758211374283,-0.073185630142689,0.063472002744675,0.108635433018208,0.194335848093033,-0.203459471464157));
res += mul(Get(s1,-dx,-dy), float4x4(0.241682931780815,-0.002968715736642,0.020462675020099,-0.118095636367798,-0.185265630483627,0.042234010994434,0.105361625552177,-0.034719202667475,-0.062152940779924,-0.061823546886444,-0.209598705172539,0.176672026515007,0.048273414373398,0.198726281523705,0.006850388366729,0.081885218620300));
res += mul(Get(s1,-dx,0), float4x4(-0.205433934926987,0.051101621240377,-0.118411771953106,0.103981107473373,-0.027473859488964,0.158911839127541,0.160682216286659,-0.062372185289860,0.065433345735073,-0.120847202837467,-0.115372821688652,0.028004253283143,0.038907978683710,-0.102321930229664,-0.076695792376995,0.077639088034630));
res += mul(Get(s1,-dx,dy), float4x4(-0.044494770467281,0.074184395372868,0.096027866005898,0.082687593996525,0.009339088574052,-0.030976084992290,-0.050841782242060,-0.055711045861244,-0.098458103835583,0.230936929583549,-0.158751383423805,-0.126866161823273,-0.048888001590967,-0.298809349536896,0.147757485508919,0.135123044252396));
res += mul(Get(s1,0,-dy), float4x4(-0.005646636709571,0.167330235242844,-0.004618015140295,0.083205141127110,-0.023256294429302,0.095726639032364,-0.056413259357214,0.031258527189493,-0.010698745958507,0.022678138688207,0.100965403020382,0.077827118337154,-0.152557119727135,0.053286869078875,-0.049535993486643,-0.173690587282181));
res += mul(Get(s1,0,0), float4x4(-0.133593797683716,0.149187088012695,0.040178053081036,0.084218338131905,-0.085847832262516,-0.091262526810169,-0.054618246853352,0.043110519647598,-0.038818530738354,-0.074742875993252,0.024238768965006,0.085594438016415,-0.070585265755653,0.019908174872398,-0.236000865697861,-0.032635193318129));
res += mul(Get(s1,0,dy), float4x4(0.052426964044571,-0.093389533460140,-0.001318681519479,-0.061364036053419,-0.208495244383812,-0.002502896822989,-0.098816029727459,-0.096660695970058,-0.172976702451706,-0.072548337280750,0.032108586281538,-0.002498193411157,0.077494293451309,0.100260592997074,0.042571671307087,-0.050843697041273));
res += mul(Get(s1,dx,-dy), float4x4(0.015253983438015,0.155665874481201,-0.092867411673069,0.125604718923569,-0.000540256209206,-0.203605577349663,-0.085339851677418,-0.140040308237076,-0.016694873571396,0.074386149644852,0.256318539381027,0.013126094825566,-0.074330344796181,-0.091414988040924,-0.039550967514515,-0.047404602169991));
res += mul(Get(s1,dx,0), float4x4(0.179951593279839,-0.087211683392525,0.062700726091862,0.118883430957794,-0.018122347071767,0.287404090166092,0.137930527329445,0.142810672521591,0.064572013914585,-0.103395514190197,0.057003270834684,0.033420585095882,0.023252520710230,0.009780661202967,-0.085987694561481,-0.025577701628208));
res += mul(Get(s1,dx,dy), float4x4(-0.032055828720331,-0.062556713819504,0.006682944018394,0.123366817831993,0.064394794404507,-0.039875175803900,0.075849369168282,-0.162284269928932,-0.136677995324135,0.250164747238159,0.137965440750122,-0.172458425164223,0.066383555531502,0.176100715994835,0.011887614615262,0.032067604362965));
res += mul(Get(s2,-dx,-dy), float4x4(-0.011419402435422,0.133967384696007,-0.032919894903898,0.094571433961391,0.078525513410568,-0.048575565218925,-0.162657946348190,-0.056772988289595,0.046947661787271,-0.011954493820667,0.162366300821304,0.089747436344624,0.108910858631134,-0.120322503149509,0.175300166010857,-0.112604938447475));
res += mul(Get(s2,-dx,0), float4x4(-0.026783922687173,0.000298449565889,-0.110470272600651,-0.118743032217026,0.037203259766102,0.117285318672657,0.049859058111906,-0.058307472616434,-0.003153546480462,-0.093334279954433,0.131362155079842,-0.009457756765187,-0.089112244546413,0.252456158399582,0.094865359365940,0.173186570405960));
res += mul(Get(s2,-dx,dy), float4x4(0.153740242123604,0.169530570507050,-0.110625788569450,-0.066129744052887,-0.101759314537048,0.068204507231712,0.101309441030025,-0.159439221024513,-0.088196262717247,0.040602914988995,-0.075258046388626,-0.261303544044495,-0.144141763448715,0.157723248004913,0.156478971242905,0.056529108434916));
res += mul(Get(s2,0,-dy), float4x4(0.112272083759308,0.208791330456734,-0.097695179283619,-0.019493006169796,-0.119796030223370,0.022087542340159,-0.070714429020882,0.287146419286728,-0.078235737979412,0.318345725536346,-0.020529104396701,0.136548563838005,-0.011574423871934,0.240432485938072,-0.068796440958977,-0.012333387508988));
res += mul(Get(s2,0,0), float4x4(0.097028307616711,0.004007555544376,-0.056024614721537,0.296465277671814,-0.064994722604752,0.023425526916981,-0.009936543181539,-0.020588271319866,0.072836361825466,-0.095363758504391,0.180674925446510,0.041602201759815,-0.181725367903709,-0.063216894865036,0.016125960275531,-0.053057663142681));
res += mul(Get(s2,0,dy), float4x4(0.120620250701904,0.059680398553610,0.021187758073211,0.058878339827061,-0.045589350163937,0.125438690185547,0.080253414809704,-0.139248654246330,-0.086013190448284,-0.001908718608320,-0.129980802536011,-0.056685641407967,0.104026392102242,-0.013559601269662,-0.044518180191517,0.028064953163266));
res += mul(Get(s2,dx,-dy), float4x4(-0.073848046362400,-0.016550628468394,-0.074345812201500,-0.052096307277679,0.047241542488337,0.085828579962254,-0.132071226835251,0.030763855203986,-0.068594992160797,0.000827549665701,-0.020843092352152,0.041052442044020,0.001106372335926,-0.012274622917175,0.101165577769279,0.062771946191788));
res += mul(Get(s2,dx,0), float4x4(-0.146460816264153,-0.019868118688464,-0.156961679458618,0.069078825414181,0.060642983764410,-0.131583809852600,0.109526433050632,0.023672528564930,-0.069917850196362,-0.019628012552857,-0.213533848524094,0.181247174739838,-0.123764306306839,-0.093729697167873,-0.107296623289585,0.071735762059689));
res += mul(Get(s2,dx,dy), float4x4(-0.179142192006111,0.036497615277767,0.203593924641609,0.140275299549103,-0.145636424422264,0.039003476500511,0.107819996774197,0.222248628735542,0.001410757889971,-0.051765881478786,-0.047663599252701,0.079646810889244,0.120522499084473,0.148791104555130,0.041181571781635,0.162989407777786));
res += mul(Get(s3,-dx,-dy), float4x4(0.038546454161406,-0.115258835256100,-0.055440060794353,-0.202313765883446,-0.045687533915043,0.016177391633391,-0.093697398900986,0.134798660874367,0.014894394204021,0.246236339211464,-0.051440645009279,-0.102688670158386,-0.068649448454380,0.056150242686272,0.051007885485888,-0.027196060866117));
res += mul(Get(s3,-dx,0), float4x4(0.018046464771032,-0.134419351816177,-0.016340542584658,-0.031092628836632,0.005010349210352,0.161354035139084,-0.018180806189775,0.042524270713329,0.047979976981878,-0.047162625938654,-0.090051189064980,0.187959626317024,0.055698074400425,-0.073761232197285,0.245021894574165,-0.174079462885857));
res += mul(Get(s3,-dx,dy), float4x4(-0.111469790339470,-0.110301144421101,0.035493403673172,0.041370335966349,-0.008495471440256,0.132888659834862,-0.089478738605976,0.044384673237801,-0.037986341863871,-0.149815157055855,0.007988643832505,0.048413187265396,-0.150724753737450,0.025381248444319,0.031572982668877,0.188634216785431));
res += mul(Get(s3,0,-dy), float4x4(0.051157612353563,-0.142178148031235,0.078333146870136,-0.152902379631996,0.119826257228851,-0.119116887450218,-0.034620806574821,0.139544531702995,-0.098312743008137,-0.006875595077872,-0.015301525592804,-0.051593780517578,-0.038317389786243,0.094064056873322,-0.101024642586708,-0.179011344909668));
res += mul(Get(s3,0,0), float4x4(-0.246610254049301,-0.012323815375566,0.141307532787323,-0.179371863603592,0.088805988430977,0.114232644438744,0.113573499023914,-0.158035472035408,-0.065904490649700,-0.146270662546158,-0.002988750347868,0.008942792192101,0.058579690754414,0.015153229236603,-0.124733716249466,0.060898121446371));
res += mul(Get(s3,0,dy), float4x4(0.049021884799004,-0.052219510078430,-0.248219847679138,0.092873327434063,-0.005911163520068,0.158181995153427,-0.204699501395226,0.057300411164761,0.042321737855673,0.091633349657059,-0.081960335373878,0.007884961552918,0.123056925833225,0.017780734226108,-0.125325575470924,0.014477543532848));
res += mul(Get(s3,dx,-dy), float4x4(-0.044775482267141,-0.150742217898369,0.181329444050789,-0.052008766680956,-0.044559352099895,-0.088639959692955,-0.119644202291965,0.041153736412525,-0.050219256430864,0.129663512110710,-0.056026224046946,-0.022223327308893,-0.136898756027222,-0.093543663620949,0.056380264461040,0.002924431348220));
res += mul(Get(s3,dx,0), float4x4(0.100256413221359,-0.126178249716759,0.253101468086243,0.136252641677856,-0.124558165669441,-0.061449382454157,0.223787516355515,-0.000170456565684,-0.069628573954105,0.215240001678467,-0.020472334697843,0.043816894292831,0.035396903753281,-0.147659808397293,-0.106022492051125,0.025509677827358));
res += mul(Get(s3,dx,dy), float4x4(0.040744040161371,0.091212302446365,-0.051775958389044,0.037499908357859,0.023002842441201,0.046179693192244,-0.080690175294876,0.053836707025766,0.086778037250042,-0.085356242954731,-0.083218477666378,-0.037491794675589,-0.031875725835562,-0.129294306039810,0.133740842342377,0.160804331302643));
return max(float4(0,0,0,0), res);
}
