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
res += mul(Get(s0,-dx,-dy), float4x4(0.066099472343922,-0.137086257338524,-0.148339092731476,-0.125385046005249,0.040558129549026,0.025148969143629,-0.045983489602804,0.131562575697899,0.061683543026447,-0.161847218871117,0.073154658079147,0.026089882478118,-0.087560720741749,0.123171240091324,-0.033627279102802,0.061685767024755));
res += mul(Get(s0,-dx,0), float4x4(-0.277707576751709,-0.002214956330135,-0.090351097285748,0.049822740256786,0.125158593058586,-0.122526623308659,-0.011695469729602,0.166846707463264,-0.043392546474934,0.020940961316228,-0.063007839024067,0.013552170246840,-0.196247681975365,0.044901929795742,0.186311349272728,-0.123215794563293));
res += mul(Get(s0,-dx,dy), float4x4(0.096908800303936,-0.045488540083170,0.122340783476830,-0.074753940105438,0.055910587310791,0.056165028363466,-0.011959133669734,-0.054397020488977,0.233724400401115,0.066508844494820,-0.158557340502739,0.202429473400116,0.215148091316223,-0.101059488952160,-0.012830890715122,-0.040578853338957));
res += mul(Get(s0,0,-dy), float4x4(-0.162278875708580,0.056222442537546,0.057169809937477,0.035908274352551,0.189092144370079,0.043787788599730,-0.198120877146721,-0.020707339048386,0.193027347326279,-0.056575339287519,-0.105187989771366,-0.018243728205562,-0.063383936882019,-0.179724112153053,0.162500917911530,-0.087481409311295));
res += mul(Get(s0,0,0), float4x4(-0.245859727263451,0.074281670153141,0.034400135278702,0.160346955060959,0.117169268429279,-0.188835144042969,-0.103616066277027,-0.004591754171997,-0.179766833782196,-0.115788266062737,0.142391741275787,-0.084745801985264,0.008843124844134,0.161855310201645,-0.019190359860659,0.123689718544483));
res += mul(Get(s0,0,dy), float4x4(0.018099624663591,0.175988391041756,0.039386704564095,-0.184480547904968,0.004443773068488,0.052565265446901,-0.143670007586479,-0.105301238596439,0.083050087094307,0.007187663577497,0.038661494851112,-0.064656510949135,0.105802386999130,0.146693706512451,0.076724596321583,-0.101718112826347));
res += mul(Get(s0,dx,-dy), float4x4(-0.178359761834145,-0.013903218321502,-0.083582870662212,0.283298671245575,0.204296559095383,0.003214385360479,0.097808487713337,0.038926623761654,-0.103611297905445,0.039546586573124,-0.139250189065933,-0.022422444075346,0.072044983506203,0.104889243841171,-0.103783063590527,0.206730723381042));
res += mul(Get(s0,dx,0), float4x4(0.114108510315418,-0.002810317557305,-0.126467615365982,-0.071835622191429,-0.068063549697399,0.054127153009176,-0.133304268121719,0.099648855626583,-0.012057431042194,0.092117108404636,-0.017809065058827,-0.125253453850746,-0.086891345679760,-0.146663874387741,-0.176304623484612,-0.068817406892776));
res += mul(Get(s0,dx,dy), float4x4(-0.020775854587555,-0.064307659864426,0.028050338849425,-0.014889268204570,-0.068620480597019,-0.156678929924965,-0.080511257052422,0.077491767704487,-0.136713132262230,-0.050899412482977,0.066018678247929,0.050564173609018,-0.239371001720428,0.058392368257046,-0.146909222006798,-0.097982458770275));
res += mul(Get(s1,-dx,-dy), float4x4(-0.145476013422012,-0.118100449442863,0.067244574427605,-0.185722976922989,0.074046172201633,-0.102190598845482,0.045644149184227,-0.010074015706778,-0.199528396129608,0.019655406475067,-0.015541655011475,0.067960828542709,0.215817078948021,0.090008698403835,-0.015924021601677,0.097313612699509));
res += mul(Get(s1,-dx,0), float4x4(-0.005944722797722,-0.248968288302422,0.004842933733016,0.027427919209003,0.281205922365189,0.107704661786556,-0.048283144831657,0.014904058538377,0.130193024873734,0.079523511230946,0.224225103855133,-0.020766653120518,-0.006283475086093,0.086503662168980,-0.109015755355358,0.124709695577621));
res += mul(Get(s1,-dx,dy), float4x4(-0.030998663976789,0.275586217641830,0.020989593118429,0.017220016568899,-0.089123941957951,0.020277155563235,0.148154899477959,-0.165360152721405,0.158365353941917,-0.050077483057976,0.085506707429886,-0.262768745422363,-0.172754719853401,-0.005617265589535,-0.105248443782330,-0.032490193843842));
res += mul(Get(s1,0,-dy), float4x4(0.208551988005638,0.130188062787056,0.067742064595222,-0.185210213065147,0.153625294566154,0.063720062375069,0.024076066911221,0.127186954021454,-0.190666973590851,-0.032025903463364,-0.034025933593512,0.181484267115593,-0.020234189927578,0.110560379922390,-0.224464297294617,-0.085269451141357));
res += mul(Get(s1,0,0), float4x4(0.016051677986979,0.006232362240553,0.159402444958687,0.031459100544453,0.049412503838539,0.031325630843639,0.116655938327312,0.045568794012070,-0.074824400246143,0.049282934516668,0.017766365781426,-0.084890924394131,0.013475562445819,-0.084353648126125,0.041564580053091,-0.177463680505753));
res += mul(Get(s1,0,dy), float4x4(0.261041432619095,0.213079303503036,0.075304433703423,-0.089257545769215,-0.009511095471680,-0.006052439101040,0.105854734778404,0.000988659099676,-0.131709054112434,0.025401530787349,-0.079095713794231,0.107835747301579,0.015096922405064,0.034457776695490,0.036624688655138,-0.108164384961128));
res += mul(Get(s1,dx,-dy), float4x4(0.066516064107418,-0.000976831652224,-0.024179773405194,0.101980060338974,-0.218215882778168,-0.000493708590511,0.012793715111911,0.039869703352451,-0.077624522149563,0.053631972521544,0.178610652685165,0.006817879620939,-0.043161869049072,-0.086793318390846,0.084108188748360,0.111639164388180));
res += mul(Get(s1,dx,0), float4x4(0.007032501976937,-0.079821787774563,0.125944316387177,-0.073247514665127,-0.056275930255651,0.138813704252243,-0.012329630553722,-0.159133911132813,-0.002093694638461,-0.107298195362091,0.067883290350437,-0.036498382687569,0.205065280199051,-0.008665854111314,0.087128810584545,-0.142612397670746));
res += mul(Get(s1,dx,dy), float4x4(-0.008746051229537,-0.225055232644081,-0.130872234702110,0.056875988841057,-0.052968736737967,0.090972080826759,0.024883992969990,-0.030040167272091,0.040872864425182,-0.139402478933334,-0.042711049318314,-0.137108579277992,0.004370233975351,-0.056860879063606,0.365089476108551,0.196278676390648));
res += mul(Get(s2,-dx,-dy), float4x4(-0.146482616662979,-0.110603116452694,0.061755735427141,0.086837440729141,-0.129082575440407,-0.086652800440788,0.013068456202745,-0.057265356183052,-0.219447910785675,0.049056183546782,-0.072179354727268,-0.025133714079857,-0.016797650605440,-0.230718955397606,0.004851259756833,0.061312824487686));
res += mul(Get(s2,-dx,0), float4x4(-0.064821451902390,0.090724065899849,-0.017593491822481,0.002619876991957,-0.093941636383533,0.092717945575714,0.052898321300745,0.090205706655979,0.166987299919128,0.019431870430708,0.067646846175194,0.023389365524054,0.078115880489349,0.067661866545677,0.028250735253096,0.094621703028679));
res += mul(Get(s2,-dx,dy), float4x4(-0.052375860512257,0.010151506401598,-0.062859512865543,0.102668255567551,-0.114813469350338,0.064849756658077,0.177908062934875,0.108486883342266,0.033596355468035,-0.018888911232352,-0.013760839588940,0.047089599072933,-0.086725085973740,0.088934183120728,0.017343867570162,-0.197664022445679));
res += mul(Get(s2,0,-dy), float4x4(-0.030754430219531,0.114824533462524,0.152179330587387,-0.141658231616020,0.049659535288811,0.017455518245697,-0.311124116182327,-0.063423641026020,-0.014834408648312,-0.069799214601517,0.053591862320900,0.016869286075234,-0.123307302594185,0.055164776742458,0.022138457745314,-0.126893684267998));
res += mul(Get(s2,0,0), float4x4(0.033415962010622,-0.206446081399918,0.028184153139591,-0.020786140114069,-0.268085062503815,-0.121937438845634,0.039242643862963,0.156855180859566,-0.066676110029221,-0.171220958232880,0.232507228851318,-0.068392418324947,-0.034141592681408,-0.077735275030136,-0.179561153054237,-0.037138957530260));
res += mul(Get(s2,0,dy), float4x4(-0.018274724483490,-0.052396416664124,0.027107084169984,0.155883312225342,-0.030552098527551,-0.061468321830034,-0.013577817007899,-0.067068681120872,-0.177890107035637,0.117287203669548,0.112493820488453,0.031325004994869,-0.006406086962670,-0.011175999417901,-0.185036510229111,0.101247556507587));
res += mul(Get(s2,dx,-dy), float4x4(-0.086113817989826,0.079094797372818,-0.007540805730969,0.163422629237175,0.124283686280251,-0.061753548681736,0.056701168417931,0.003811589209363,0.069504439830780,-0.134655103087425,0.022506877779961,-0.052401676774025,0.010494633577764,0.074246667325497,0.159025132656097,-0.049982987344265));
res += mul(Get(s2,dx,0), float4x4(-0.117345571517944,-0.050891969352961,0.014326917938888,-0.153478249907494,0.019811682403088,0.013513880781829,0.151554957032204,-0.024692570790648,-0.027813570573926,-0.016194039955735,0.047707304358482,0.055481597781181,-0.045411195605993,0.026794381439686,-0.010619266889989,-0.014071145094931));
res += mul(Get(s2,dx,dy), float4x4(0.108091823756695,-0.331842094659805,0.164827302098274,0.074208259582520,0.132413551211357,-0.040503460913897,0.016638606786728,0.048210453242064,-0.028070157393813,-0.031989607959986,0.019289216026664,0.074105516076088,-0.027085572481155,0.106672272086143,-0.215848043560982,0.024152435362339));
res += mul(Get(s3,-dx,-dy), float4x4(-0.075931921601295,-0.018832065165043,0.062084712088108,0.196769028902054,0.060030326247215,0.081888660788536,-0.036799989640713,0.103065825998783,-0.007116258610040,0.158580854535103,-0.082229293882847,-0.088040329515934,0.100064031779766,-0.007305370643735,0.004520686808974,0.153154075145721));
res += mul(Get(s3,-dx,0), float4x4(0.146809279918671,-0.149503007531166,-0.022683225572109,0.103214703500271,0.114031709730625,0.164964348077774,-0.037489805370569,0.056063793599606,0.006983654107898,0.126455813646317,0.054010815918446,-0.056470647454262,0.085889965295792,-0.068262755870819,0.194660097360611,-0.226702645421028));
res += mul(Get(s3,-dx,dy), float4x4(0.003845623694360,-0.133029386401176,0.137333571910858,0.089986547827721,0.138224646449089,0.195694312453270,0.067459955811501,-0.029002331197262,-0.074128173291683,-0.088325619697571,0.089386790990829,0.061749406158924,-0.097597703337669,0.000048950354540,0.119346573948860,-0.027433475479484));
res += mul(Get(s3,0,-dy), float4x4(0.167169034481049,0.223464697599411,-0.179340064525604,0.170636832714081,-0.092154003679752,-0.049823939800262,0.260880589485168,0.018686322495341,0.083103820681572,0.002600464737043,-0.070494361221790,0.057781063020229,-0.254982173442841,0.001007019658573,0.018910802900791,0.077718257904053));
res += mul(Get(s3,0,0), float4x4(-0.080204539000988,-0.125718250870705,0.208759248256683,0.050515785813332,0.073206104338169,0.148321926593781,0.016972104087472,-0.005005553364754,0.083700448274612,0.035404082387686,-0.116860486567020,-0.006346906069666,0.203482374548912,-0.097585283219814,-0.108387537300587,0.043024498969316));
res += mul(Get(s3,0,dy), float4x4(0.039925109595060,0.037780459970236,0.051614958792925,-0.015674624592066,0.175045341253281,0.098386317491531,0.028468800708652,-0.076850660145283,-0.102373413741589,-0.095033675432205,-0.270430266857147,-0.052573334425688,0.024105433374643,0.111026555299759,0.021919948980212,0.096104554831982));
res += mul(Get(s3,dx,-dy), float4x4(-0.051704119890928,0.218308120965958,-0.081540890038013,0.052965391427279,0.107262827455997,0.011237155646086,-0.252174139022827,0.010620274581015,0.086637400090694,-0.127522110939026,-0.080283358693123,0.173288911581039,-0.091932363808155,0.103524565696716,0.045008640736341,0.123628310859203));
res += mul(Get(s3,dx,0), float4x4(-0.173196762800217,0.059858020395041,-0.202096045017242,0.106909215450287,0.015859346836805,-0.184640169143677,0.137505486607552,-0.015660397708416,-0.142391562461853,-0.058928437530994,0.038897380232811,-0.030550776049495,-0.128321781754494,0.055514845997095,0.116913132369518,0.015493172220886));
res += mul(Get(s3,dx,dy), float4x4(0.112522512674332,0.023456308990717,0.014790858142078,-0.042760569602251,0.304748415946960,-0.163890421390533,0.081642866134644,-0.038530487567186,-0.098878107964993,0.017218766734004,0.113687030971050,-0.076748795807362,0.037873182445765,0.325216561555862,0.025238355621696,-0.204558372497559));
return max(float4(0,0,0,0), res);
}
