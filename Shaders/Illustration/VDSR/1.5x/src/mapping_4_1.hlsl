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
res += mul(Get(s0,-dx,-dy), float4x4(0.046611316502094,-0.072903878986835,-0.020231934264302,-0.015654522925615,0.044979393482208,0.006608078721911,0.004181057680398,0.031183416023850,0.011305086314678,-0.030265562236309,-0.015569683164358,-0.007680599112064,0.002423712285236,0.027969654649496,0.019639667123556,0.040873821824789));
res += mul(Get(s0,-dx,0), float4x4(0.055154964327812,-0.032061815261841,-0.003562847152352,-0.062698133289814,0.064042374491692,-0.000243306072662,-0.027705654501915,-0.023772248998284,0.012707130052149,-0.055598340928555,-0.032886039465666,-0.027112323790789,0.015902124345303,0.038584589958191,0.047045502811670,0.024843253195286));
res += mul(Get(s0,-dx,dy), float4x4(-0.026450850069523,-0.041111886501312,-0.002923077438027,-0.076603651046753,-0.021171260625124,-0.017542898654938,-0.023138562217355,0.001067381817847,0.049857739359140,0.028912957757711,-0.009293533861637,0.075789719820023,0.016589421778917,0.051308661699295,0.024495702236891,0.070134006440639));
res += mul(Get(s0,0,-dy), float4x4(-0.024086777120829,-0.077433936297894,0.020882669836283,-0.084486655890942,-0.011853271164000,-0.028894672170281,0.016906598582864,0.017019340768456,-0.013560264371336,0.001604149700142,-0.052787132561207,-0.012692471966147,-0.017753789201379,0.031533919274807,-0.016387283802032,0.022719839587808));
res += mul(Get(s0,0,0), float4x4(0.025977358222008,-0.014783658087254,0.088397599756718,-0.044553544372320,0.015020602382720,0.009947399608791,0.030592406168580,0.073501989245415,-0.028275437653065,0.004377997945994,-0.024507094174623,0.024045502766967,-0.020179579034448,0.003229330992326,0.042773190885782,0.041332565248013));
res += mul(Get(s0,0,dy), float4x4(0.030854264274240,-0.018133135512471,0.039889737963676,0.063286498188972,0.083363711833954,0.014401314780116,-0.003318940987810,0.080250345170498,-0.018701549619436,-0.000672365014907,-0.034656289964914,-0.016965551301837,0.003519747639075,0.008481749333441,0.001967513700947,0.043054975569248));
res += mul(Get(s0,dx,-dy), float4x4(-0.071785449981689,-0.032363593578339,-0.055262994021177,-0.101046390831470,0.017578972503543,-0.008416049182415,-0.014600401744246,-0.015007697977126,-0.002596826059744,0.026589196175337,-0.005683741066605,-0.000497610657476,0.035417128354311,0.009527189657092,0.000231202822761,0.067779570817947));
res += mul(Get(s0,dx,0), float4x4(-0.070018842816353,0.047665156424046,0.019019281491637,-0.045949067920446,0.003246305277571,0.018059486523271,-0.011977684684098,-0.011381479911506,-0.030298087745905,0.049642004072666,0.000012300294657,0.019641043618321,-0.018252313137054,-0.000212574406760,0.046589124947786,0.035960897803307));
res += mul(Get(s0,dx,dy), float4x4(-0.076430112123489,0.002629206981510,-0.008386390283704,-0.052627991884947,-0.062283519655466,-0.014702318236232,-0.018745308741927,-0.069700397551060,-0.064877115190029,-0.026650646701455,-0.022929340600967,-0.107677087187767,-0.009961147792637,0.001542042125948,0.015388754196465,0.038136642426252));
res += mul(Get(s1,-dx,-dy), float4x4(0.001765495166183,-0.015663512051105,0.031843226402998,0.059783618897200,0.063345298171043,-0.026569996029139,0.008147036656737,0.065014384686947,0.033151093870401,-0.012812465429306,-0.005859925877303,-0.104004025459290,0.030484335497022,0.067571513354778,0.015145595185459,0.085037745535374));
res += mul(Get(s1,-dx,0), float4x4(0.015961755067110,-0.010712456889451,-0.003310711355880,0.001967869699001,-0.043235559016466,-0.053504232317209,-0.027274576947093,-0.013180501759052,0.046406354755163,0.230998203158379,0.013509708456695,0.250597715377808,0.011915922164917,0.006149443332106,0.040050663053989,0.027268011122942));
res += mul(Get(s1,-dx,dy), float4x4(0.017163209617138,0.028805075213313,0.001826145802625,0.098886094987392,-0.010361850261688,-0.048359427601099,-0.054294541478157,-0.050823114812374,0.009873399510980,0.040043488144875,-0.021484654396772,-0.013335547409952,0.011785961687565,0.037071637809277,0.027242103591561,0.056634649634361));
res += mul(Get(s1,0,-dy), float4x4(-0.040406238287687,-0.043901327997446,0.027277672663331,-0.015349881723523,0.036433666944504,-0.001052272971720,-0.046882674098015,-0.032320301979780,0.065240256488323,0.064516447484493,-0.014821605756879,0.022322405129671,-0.005738544277847,0.018340267241001,-0.001972774043679,0.082752726972103));
res += mul(Get(s1,0,0), float4x4(0.003934970591217,0.022848056629300,0.061050768941641,0.071295857429504,-0.058960363268852,-0.069898076355457,-0.059074554592371,-0.179847255349159,0.029847489669919,0.107801266014576,-0.060932215303183,0.139100268483162,-0.003059559268877,-0.012272355146706,0.054628711193800,0.020774167031050));
res += mul(Get(s1,0,dy), float4x4(0.026234628632665,0.016824126243591,-0.009616421535611,0.125706240534782,-0.007645202334970,0.031169919297099,0.028074134141207,0.119760468602180,-0.000764053373132,0.030825864523649,-0.043040040880442,-0.038157515227795,0.021228164434433,-0.002259588334709,0.019035404548049,0.037054359912872));
res += mul(Get(s1,dx,-dy), float4x4(-0.000050594637287,-0.010388627648354,0.027782019227743,0.014461131766438,-0.101259723305702,-0.002538555301726,0.040685702115297,-0.023348042741418,-0.014135609380901,-0.008155573159456,0.000268577219686,-0.078618340194225,0.036506820470095,-0.001786315697245,-0.005918609444052,0.065413527190685));
res += mul(Get(s1,dx,0), float4x4(-0.000090837325843,0.049580983817577,0.024742325767875,0.057370074093342,0.037565547972918,0.012910392135382,0.059791229665279,0.041679531335831,-0.021972823888063,0.007037571165711,-0.023275354877114,-0.048870027065277,-0.012903652153909,-0.018135370686650,0.038927126675844,0.010523713193834));
res += mul(Get(s1,dx,dy), float4x4(-0.023779209703207,-0.012094425968826,0.016084946691990,-0.022136215120554,-0.010013661347330,-0.005206670612097,-0.029219074174762,0.014284878969193,0.018043221905828,0.080306045711040,0.000262408342678,0.073465593159199,0.013161621056497,-0.011633596383035,0.025242509320378,0.056479971855879));
res += mul(Get(s2,-dx,-dy), float4x4(0.045816816389561,-0.026567691937089,-0.024113794788718,-0.016724530607462,0.069214291870594,-0.015002829022706,-0.062735877931118,0.050375502556562,0.002040723105893,-0.006254568696022,0.005426505114883,0.000242913505645,-0.038374435156584,-0.042960096150637,-0.030777949839830,-0.044040337204933));
res += mul(Get(s2,-dx,0), float4x4(0.098930820822716,-0.017874125391245,-0.002648035995662,-0.073895931243896,0.077386625111103,-0.063792772591114,-0.079700909554958,-0.089949108660221,0.001912185689434,0.005529324058443,0.000179543174454,-0.012474170885980,-0.002366641070694,-0.057645067572594,0.005466337781399,-0.007819305174053));
res += mul(Get(s2,-dx,dy), float4x4(-0.087642304599285,0.023564016446471,-0.021497137844563,0.018099704757333,-0.012966775335371,-0.017465544864535,-0.036189198493958,-0.062981270253658,0.001042436459102,0.000215314372326,-0.000302247586660,-0.002341778250411,0.020388776436448,0.043953355401754,0.004039134364575,0.056766051799059));
res += mul(Get(s2,0,-dy), float4x4(-0.077562525868416,-0.039119150489569,0.056582324206829,0.023483855649829,-0.064143978059292,-0.031115293502808,-0.012184304185212,-0.031864386051893,-0.003679920453578,-0.004499865695834,0.010259167291224,-0.000490913749672,0.024083191528916,-0.021210467442870,-0.075171314179897,-0.024498246610165));
res += mul(Get(s2,0,0), float4x4(0.002916113939136,-0.035192418843508,0.069318205118179,-0.034169550985098,-0.011442393064499,-0.013141308911145,0.044129118323326,0.106944382190704,0.002075828146189,0.003615682478994,-0.016235517337918,-0.000860642758198,-0.037251934409142,-0.021116467192769,-0.005597849376500,-0.041068397462368));
res += mul(Get(s2,0,dy), float4x4(0.052402175962925,0.035545453429222,-0.010313856415451,0.056844141334295,0.153182268142700,0.058334376662970,-0.030307494103909,0.144545927643776,0.007013478782028,0.000933957984671,-0.002060966333374,-0.002546825911850,-0.020857609808445,0.039449986070395,-0.025704659521580,0.004479367751628));
res += mul(Get(s2,dx,-dy), float4x4(-0.013990080915391,-0.048365745693445,-0.026860332116485,-0.060195989906788,-0.020043548196554,0.044600382447243,-0.099590510129929,-0.084271520376205,0.004283891525120,-0.006588687188923,0.004789419006556,0.000816607731394,-0.001152523094788,-0.037675112485886,-0.044364821165800,-0.044013842940331));
res += mul(Get(s2,dx,0), float4x4(-0.082822263240814,-0.022349407896399,0.079442597925663,-0.042680792510509,-0.088085301220417,0.046483565121889,-0.053855296224356,-0.059667550027370,-0.004158523865044,-0.005655438639224,-0.002515272237360,0.004566533491015,0.008939294144511,0.064188934862614,0.057698853313923,-0.009291658177972));
res += mul(Get(s2,dx,dy), float4x4(-0.066429018974304,-0.023411383852363,-0.003336047520861,0.069168962538242,-0.156622469425201,-0.001476706122048,-0.030644124373794,-0.116599701344967,-0.002364950254560,-0.003824658924714,0.006580580025911,-0.001513982424513,-0.035115372389555,0.033731147646904,-0.000058287492720,-0.039825137704611));
res += mul(Get(s3,-dx,-dy), float4x4(0.042738702148199,-0.034461110830307,0.036164421588182,-0.039239231497049,-0.011147392913699,0.100310400128365,0.085601322352886,-0.010122584179044,0.039309442043304,-0.016240596771240,-0.016292540356517,-0.025703758001328,0.004206153098494,0.032317813485861,0.026102224364877,0.063246756792068));
res += mul(Get(s3,-dx,0), float4x4(0.020699560642242,-0.003926647827029,0.024402959272265,-0.017976455390453,-0.021367687731981,0.033893596380949,0.106734231114388,0.037578497081995,-0.006757155526429,0.014572629705071,-0.001543916179799,-0.027665125206113,-0.014813793823123,0.020865799859166,0.007596491836011,0.000847447838169));
res += mul(Get(s3,-dx,dy), float4x4(-0.009760950691998,-0.030518366023898,0.055160980671644,-0.037858929485083,0.001521674334072,0.001173718483187,0.087221987545490,-0.010844377800822,-0.001997767947614,0.036388587206602,0.014392023906112,0.050814598798752,0.017038749530911,0.064662270247936,0.043161172419786,0.050287947058678));
res += mul(Get(s3,0,-dy), float4x4(-0.011938322335482,-0.014530553482473,0.075154967606068,0.026881236582994,0.032576382160187,0.095303609967232,-0.018472000956535,0.044726014137268,0.038018703460693,0.021760078147054,0.012983264401555,0.025118669494987,-0.008340599015355,0.039378855377436,0.004328288603574,-0.002656108001247));
res += mul(Get(s3,0,0), float4x4(0.069192685186863,-0.011883786879480,0.080459177494049,0.097648963332176,-0.032315611839294,-0.000575383484829,-0.033383719623089,-0.082076445221901,0.064306847751141,0.058181621134281,0.023168638348579,0.072043076157570,-0.011525277979672,0.055414132773876,0.033109236508608,0.037023440003395));
res += mul(Get(s3,0,dy), float4x4(0.009592893533409,-0.035766113549471,0.056680209934711,-0.024104842916131,-0.057323105633259,0.001496807439253,0.026256995275617,-0.047624204307795,0.042261511087418,0.044389709830284,-0.022672688588500,0.027919594198465,-0.023499585688114,0.028869912028313,0.022214816883206,0.076900869607925));
res += mul(Get(s3,dx,-dy), float4x4(-0.018487866967916,-0.036945872008801,-0.000963904487435,-0.013195763342083,0.039932698011398,0.041371718049049,0.020324084907770,0.027686079964042,-0.039497468620539,0.004699565470219,-0.018230985850096,-0.014017242938280,0.013261093758047,0.051408004015684,-0.008542890660465,0.017091827467084));
res += mul(Get(s3,dx,0), float4x4(-0.028491456061602,-0.040405150502920,0.009253785014153,-0.013719537295401,0.039664674550295,-0.001594339730218,0.039469107985497,0.002290356205776,-0.051671840250492,-0.000710159190930,-0.001537042902783,-0.027135225012898,0.042274832725525,0.036589775234461,-0.020341470837593,0.053240839391947));
res += mul(Get(s3,dx,dy), float4x4(-0.017695123329759,-0.029397580772638,0.019119177013636,-0.034818172454834,0.017792314291000,-0.008891311474144,0.031353864818811,0.060440912842751,-0.033123146742582,-0.000985951861367,-0.036851540207863,-0.032098691910505,-0.000600976170972,0.008262812159956,0.001392514561303,-0.025577690452337));
return max(float4(0,0,0,0), res);
}
