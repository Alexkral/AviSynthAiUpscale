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
res += mul(Get(s0,-dx,-dy), float4x4(0.013455168344080,-0.054720692336559,-0.048904940485954,0.088301695883274,0.035517338663340,-0.062689818441868,-0.137984827160835,-0.255658656358719,0.059419225901365,-0.058933407068253,-0.131664425134659,-0.114785864949226,0.122767686843872,0.027260435745120,0.106789216399193,-0.107999816536903));
res += mul(Get(s0,-dx,0), float4x4(-0.013972898945212,-0.211167439818382,-0.094574220478535,0.079053208231926,-0.016692688688636,0.095917187631130,0.158207565546036,-0.127069666981697,-0.034821324050426,-0.226185545325279,-0.083065301179886,0.149463325738907,-0.066573053598404,-0.228243082761765,-0.121086873114109,0.118984811007977));
res += mul(Get(s0,-dx,dy), float4x4(-0.130753576755524,0.034332599490881,0.059346731752157,0.039869941771030,-0.177309527993202,-0.135370448231697,-0.200510010123253,-0.119141139090061,-0.023722069337964,0.227485567331314,0.177781179547310,-0.176293015480042,0.054365891963243,0.183366954326630,0.091052845120430,-0.014876846224070));
res += mul(Get(s0,0,-dy), float4x4(-0.032420389354229,-0.105102010071278,-0.074725441634655,-0.032636035233736,-0.095932625234127,0.107135184109211,-0.094925053417683,-0.080382905900478,-0.065217249095440,-0.090164951980114,0.003179673803970,-0.077863238751888,0.058931894600391,0.039764855057001,-0.096071518957615,0.028396867215633));
res += mul(Get(s0,0,0), float4x4(0.029696961864829,-0.101500712335110,0.039068218320608,-0.126730978488922,-0.029759727418423,-0.008720017038286,0.013403326272964,-0.145522505044937,-0.024734882637858,0.123801320791245,-0.014189359731972,-0.087770320475101,0.012747137807310,0.069271586835384,-0.038973059505224,0.006826668512076));
res += mul(Get(s0,0,dy), float4x4(0.037914559245110,-0.024770306423306,-0.079237319529057,-0.093943804502487,0.170881226658821,0.111427128314972,-0.088563591241837,0.071050181984901,0.033365678042173,-0.012010140344501,-0.072621509432793,-0.158273771405220,-0.238350510597229,0.092238791286945,-0.079754129052162,-0.053323604166508));
res += mul(Get(s0,dx,-dy), float4x4(0.170940488576889,0.126677200198174,-0.131634622812271,0.045235421508551,-0.007822237908840,-0.056499015539885,-0.163026228547096,0.062711685895920,0.011252179741859,-0.173911064863205,0.233518674969673,0.137489140033722,-0.144312635064125,0.043728124350309,-0.095594272017479,0.044620070606470));
res += mul(Get(s0,dx,0), float4x4(0.062640614807606,0.038006402552128,-0.080661244690418,-0.026336736977100,0.066439688205719,-0.147969812154770,-0.118213072419167,-0.051894120872021,0.071946270763874,0.172147274017334,-0.067672781646252,0.043375775218010,-0.093267641961575,0.082646384835243,0.050390720367432,0.016064047813416));
res += mul(Get(s0,dx,dy), float4x4(-0.187825903296471,-0.067644558846951,0.107296593487263,0.074834801256657,0.065147943794727,-0.083895809948444,0.061028700321913,-0.129927247762680,0.132540643215179,0.099874719977379,-0.032064441591501,0.029453510418534,-0.085699506103992,0.074324674904346,-0.114278614521027,-0.018788535147905));
res += mul(Get(s1,-dx,-dy), float4x4(-0.029855581000447,0.130185648798943,0.067839294672012,-0.156915441155434,0.060335073620081,-0.023158980533481,-0.150628149509430,-0.012548765167594,-0.171351939439774,-0.065634332597256,0.195549681782722,-0.107569418847561,-0.055066186934710,-0.004509880207479,-0.032849680632353,0.019214516505599));
res += mul(Get(s1,-dx,0), float4x4(-0.027695037424564,0.133462339639664,-0.010350890457630,-0.040792461484671,-0.130940571427345,-0.066442377865314,0.135330691933632,0.062056526541710,-0.084865346550941,0.201413109898567,0.027525359764695,0.088951326906681,-0.011707474477589,0.083681344985962,-0.143199235200882,0.045650511980057));
res += mul(Get(s1,-dx,dy), float4x4(0.034640911966562,0.000130392567371,-0.041544537991285,0.095711328089237,-0.025244815275073,-0.069632671773434,-0.124742180109024,0.072898089885712,-0.094284117221832,0.078860215842724,-0.031206943094730,-0.018222136422992,0.106927044689655,-0.174728184938431,0.271982133388519,-0.188481301069260));
res += mul(Get(s1,0,-dy), float4x4(0.048062320798635,-0.186321258544922,-0.109755717217922,-0.029927851632237,-0.058845669031143,0.086719177663326,0.137179180979729,0.093266360461712,0.068493410944939,-0.118688456714153,0.173790916800499,-0.030528740957379,0.050199914723635,-0.029718065634370,0.214986935257912,0.214153945446014));
res += mul(Get(s1,0,0), float4x4(-0.115764975547791,0.119942978024483,-0.004132657311857,0.027026010677218,-0.038407377898693,0.037582747638226,-0.051424015313387,0.121584385633469,0.014863925054669,0.237618118524551,0.082381471991539,-0.028853606432676,0.040480744093657,0.011314578354359,-0.126799806952477,-0.019062645733356));
res += mul(Get(s1,0,dy), float4x4(0.120851412415504,-0.066844604909420,-0.191088020801544,-0.062196161597967,-0.003392617451027,0.064897499978542,0.012712613679469,0.071383319795132,-0.093467548489571,-0.112170010805130,0.051687411963940,0.024582203477621,-0.129386022686958,0.045801352709532,0.000756177410949,0.048729121685028));
res += mul(Get(s1,dx,-dy), float4x4(-0.090892292559147,0.048989966511726,0.022050956264138,0.086008399724960,0.131690964102745,-0.025568939745426,0.087169170379639,0.108949631452560,-0.121505349874496,0.097300089895725,-0.105331875383854,0.132974982261658,-0.002064849948511,0.045456379652023,-0.117160484194756,-0.003523479448631));
res += mul(Get(s1,dx,0), float4x4(0.169056460261345,-0.178722620010376,0.199466764926910,-0.049569603055716,0.054744008928537,-0.043011680245399,0.120037995278835,0.064612746238708,-0.180810675024986,0.037665382027626,0.082693383097649,0.036545243114233,-0.077285043895245,0.005410019773990,-0.102217108011246,0.037910614162683));
res += mul(Get(s1,dx,dy), float4x4(0.077461354434490,0.058846399188042,0.039927408099174,0.145813807845116,0.000619654252660,0.166466385126114,-0.053461007773876,0.060764983296394,0.199940159916878,-0.009423076175153,0.127677798271179,-0.039952058345079,0.122114278376102,0.125970378518105,-0.028136251494288,0.081216223537922));
res += mul(Get(s2,-dx,-dy), float4x4(-0.142704695463181,-0.101335585117340,-0.171391993761063,0.248919844627380,0.014125505462289,-0.143814519047737,-0.100381374359131,-0.140723764896393,-0.118388384580612,-0.117966882884502,-0.073994994163513,0.215262934565544,0.220208793878555,0.060400333255529,0.062384478747845,0.068242408335209));
res += mul(Get(s2,-dx,0), float4x4(-0.090115703642368,-0.131689563393593,-0.082980118691921,0.171679943799973,0.084462299942970,-0.004459741525352,-0.023314163088799,-0.001615981454961,0.087673574686050,-0.098895937204361,-0.072889491915703,-0.061900697648525,0.044984702020884,-0.216602087020874,-0.059249188750982,-0.142480716109276));
res += mul(Get(s2,-dx,dy), float4x4(-0.103349708020687,0.056810468435287,-0.088758498430252,0.086994156241417,-0.157795056700706,-0.059129036962986,-0.167408078908920,0.008219421841204,-0.133121430873871,-0.062889255583286,-0.079732373356819,0.160277798771858,0.070795662701130,-0.028508268296719,-0.213496819138527,0.001728759612888));
res += mul(Get(s2,0,-dy), float4x4(0.004516313318163,-0.095104880630970,-0.143382221460342,0.259421914815903,-0.060036607086658,-0.003349496982992,-0.011620520614088,0.025127658620477,-0.034358378499746,-0.091085284948349,-0.118198797106743,0.072286739945412,0.103657476603985,-0.100734136998653,-0.083955928683281,0.128008648753166));
res += mul(Get(s2,0,0), float4x4(0.012935334816575,0.047040645033121,0.149106755852699,-0.177378296852112,-0.148898199200630,0.027993179857731,0.001066439901479,-0.170467033982277,-0.025721980258822,-0.009983468800783,0.076242633163929,-0.096959598362446,0.036631874740124,-0.004529837984592,0.008616008795798,0.115255229175091));
res += mul(Get(s2,0,dy), float4x4(-0.410397052764893,-0.092971824109554,0.043216712772846,0.121640510857105,-0.017645904794335,0.073876917362213,-0.109419777989388,-0.056784026324749,0.022011833265424,-0.063320644199848,0.223881989717484,0.155034810304642,0.088838838040829,-0.082048833370209,-0.119189962744713,-0.024837424978614));
res += mul(Get(s2,dx,-dy), float4x4(0.079531066119671,-0.006324102170765,0.022023996338248,-0.022483771666884,-0.115467011928558,0.040653567761183,0.105388663709164,0.104475498199463,-0.051878850907087,-0.076072715222836,-0.016490725800395,-0.105206742882729,0.051402382552624,0.025608532130718,-0.002655694028363,-0.074147239327431));
res += mul(Get(s2,dx,0), float4x4(0.024394094944000,-0.069667398929596,-0.287610530853271,-0.088983252644539,0.137621641159058,-0.048586424440145,0.063830748200417,-0.019072230905294,-0.043030086904764,0.163608133792877,-0.076248571276665,-0.109114244580269,-0.013072919100523,-0.050532706081867,-0.072352997958660,0.044864550232887));
res += mul(Get(s2,dx,dy), float4x4(0.038255367428064,0.056039400398731,0.026868185028434,-0.018081856891513,0.161503642797470,-0.005486231762916,0.194090694189072,-0.143302023410797,-0.034754659980536,-0.129035726189613,0.210232004523277,0.002294247271493,-0.244111284613609,0.013459385372698,0.013356222771108,0.089670464396477));
res += mul(Get(s3,-dx,-dy), float4x4(-0.078741200268269,-0.088830053806305,-0.119589149951935,0.045559059828520,0.101432442665100,-0.154077678918839,-0.113885916769505,0.198975622653961,0.131653860211372,-0.082931540906429,-0.061899982392788,-0.045852228999138,-0.066404737532139,0.255305796861649,0.013094988651574,-0.185770258307457));
res += mul(Get(s3,-dx,0), float4x4(0.006267628166825,0.015825288370252,0.096529744565487,-0.078389726579189,-0.046945929527283,0.163515225052834,0.078520216047764,-0.049362819641829,0.264538288116455,-0.084096662700176,-0.099730253219604,-0.084434047341347,-0.145019561052322,-0.078620083630085,-0.023158222436905,-0.065809890627861));
res += mul(Get(s3,-dx,dy), float4x4(0.104276061058044,0.024435443803668,0.079886615276337,-0.149929568171501,0.009325947612524,-0.102993436157703,0.116860218346119,-0.035902515053749,-0.028708947822452,-0.173682868480682,-0.054385490715504,0.004030852578580,0.172455757856369,-0.121948480606079,-0.040559761226177,-0.029236622154713));
res += mul(Get(s3,0,-dy), float4x4(-0.073924258351326,-0.049228370189667,0.140421152114868,-0.053549084812403,0.062954850494862,-0.017486941069365,-0.087219528853893,0.014622850343585,-0.081019610166550,0.112789556384087,0.078876949846745,0.148157864809036,-0.079074136912823,0.084109753370285,-0.047518532723188,-0.093710131943226));
res += mul(Get(s3,0,0), float4x4(0.026009717956185,-0.086370393633842,-0.049191962927580,0.085869498550892,-0.255250155925751,-0.061938833445311,0.091356255114079,0.092471092939377,0.177546650171280,-0.061037436127663,-0.032570060342550,0.003461167914793,0.023274231702089,-0.096443466842175,0.033398307859898,0.069402858614922));
res += mul(Get(s3,0,dy), float4x4(-0.115133047103882,-0.046572528779507,-0.137439370155334,-0.133901700377464,0.070599474012852,-0.083017677068710,-0.053324118256569,-0.027011049911380,-0.029403358697891,-0.057987425476313,-0.077962726354599,-0.033820621669292,0.199371576309204,-0.028217013925314,0.033748794347048,-0.146542310714722));
res += mul(Get(s3,dx,-dy), float4x4(-0.131859347224236,-0.157958492636681,0.008189531043172,-0.020526494830847,0.070291481912136,0.025703798979521,-0.031402569264174,-0.005829024128616,-0.039795331656933,0.064837828278542,0.037030976265669,0.032619334757328,0.016018282622099,0.035545039921999,0.030052460730076,-0.129919886589050));
res += mul(Get(s3,dx,0), float4x4(0.068213827908039,0.003099169582129,0.031602479517460,0.152207911014557,-0.077597461640835,0.008911157026887,0.041146639734507,0.219468638300896,-0.206677511334419,-0.015515930019319,0.160768538713455,0.110526159405708,0.042365271598101,0.057484511286020,0.068993411958218,0.233788132667542));
res += mul(Get(s3,dx,dy), float4x4(-0.008779057301581,0.131621837615967,-0.047050189226866,0.048768281936646,-0.055326264351606,-0.148973241448402,0.037495337426662,0.058321926742792,-0.198292061686516,-0.029180254787207,0.114392511546612,0.271929860115051,-0.061741024255753,-0.049333881586790,-0.065140642225742,-0.200991913676262));
return max(float4(0,0,0,0), res);
}