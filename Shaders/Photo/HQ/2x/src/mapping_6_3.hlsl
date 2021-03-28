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
float4 res = float4(0.076977171003819,0.054625254124403,-0.138342127203941,-0.201881021261215);
res += mul(Get(s0,-dx,-dy), float4x4(0.073556013405323,-0.163383632898331,-0.098590195178986,0.051620040088892,0.067725218832493,0.000319011742249,0.021387768909335,-0.002129721455276,0.042981054633856,0.038284756243229,0.017255309969187,-0.016176283359528,0.011006354354322,-0.005400929600000,0.035964697599411,0.052760243415833));
res += mul(Get(s0,-dx,0), float4x4(0.066635735332966,-0.187463596463203,0.082945339381695,0.173221737146378,0.004086887929589,0.014920808374882,0.072215631604195,0.157338976860046,0.015316591598094,-0.011503661982715,-0.055836606770754,0.176663175225258,-0.048665858805180,-0.104543566703796,0.055273812264204,0.093809656798840));
res += mul(Get(s0,-dx,dy), float4x4(0.033283859491348,-0.087379992008209,0.057423491030931,0.013558434322476,0.026224091649055,0.064050301909447,0.031320199370384,-0.013945613987744,-0.032164786010981,-0.084014274179935,-0.231656387448311,0.001280270516872,0.055667437613010,0.133407503366470,-0.133481308817863,-0.034343142062426));
res += mul(Get(s0,0,-dy), float4x4(0.148283988237381,-0.036453921347857,0.017156112939119,0.184960365295410,0.026540294289589,-0.106587685644627,-0.022268230095506,0.032422326505184,-0.017320970073342,0.051217768341303,-0.005295565817505,0.031540688127279,-0.155401140451431,-0.030354393646121,-0.048507168889046,0.034389168024063));
res += mul(Get(s0,0,0), float4x4(0.050925560295582,-0.075679652392864,0.009169526398182,0.123561903834343,0.212264120578766,-0.129358053207397,0.078256562352180,0.164413288235664,-0.049256589263678,0.106376357376575,0.056316427886486,0.091272614896297,-0.084176272153854,0.031595967710018,0.110068954527378,0.262351065874100));
res += mul(Get(s0,0,dy), float4x4(0.018938701599836,-0.024208446964622,0.047421429306269,0.005732275545597,0.073560304939747,-0.055486749857664,0.262542247772217,-0.030731875449419,-0.075388781726360,0.156922116875648,-0.324344843626022,-0.093078307807446,0.012392395175993,-0.064720049500465,-0.049620132893324,-0.080185994505882));
res += mul(Get(s0,dx,-dy), float4x4(0.121625795960426,-0.093630902469158,-0.038078952580690,0.097693935036659,-0.033982716500759,-0.041636250913143,-0.053350687026978,0.103782400488853,0.047428004443645,0.158996164798737,0.150260016322136,0.121085748076439,-0.136599481105804,-0.021130414679646,0.056060943752527,0.074440844357014));
res += mul(Get(s0,dx,0), float4x4(0.086705423891544,-0.072835773229599,0.057223543524742,0.056005492806435,-0.082037188112736,0.056990705430508,-0.013727969489992,0.025255160406232,-0.039021715521812,0.043884303420782,0.046319738030434,-0.045095346868038,-0.019932128489017,-0.020171197131276,-0.072866588830948,-0.140832662582397));
res += mul(Get(s0,dx,dy), float4x4(0.018621299415827,-0.066068887710571,-0.024867601692677,0.037486352026463,-0.018608514219522,-0.142574608325958,0.033967670053244,-0.053525973111391,-0.020898483693600,-0.001621456933208,0.042554140090942,-0.044686451554298,0.017886230722070,-0.152510359883308,0.054072640836239,-0.032544642686844));
res += mul(Get(s1,-dx,-dy), float4x4(0.064186833798885,0.049032725393772,0.050565574318171,0.084873788058758,-0.014045721851289,-0.083232380449772,0.050140913575888,0.045370377600193,0.001567972707562,-0.004890383221209,-0.055123809725046,-0.036504529416561,-0.048603564500809,0.048513926565647,-0.051205389201641,0.005962514318526));
res += mul(Get(s1,-dx,0), float4x4(0.103400059044361,0.038430999964476,-0.031779829412699,-0.012729994021356,-0.076658301055431,0.139857143163681,0.098239637911320,0.030527221038938,0.022242289036512,-0.041176855564117,0.107243023812771,-0.056802336126566,0.084485612809658,0.075214691460133,-0.034574404358864,-0.016841936856508));
res += mul(Get(s1,-dx,dy), float4x4(-0.097539380192757,0.045411340892315,-0.033941339701414,0.019209988415241,-0.016470741480589,0.086193315684795,0.115165606141090,0.110944524407387,0.032923407852650,0.057970616966486,-0.081681609153748,0.131092846393585,-0.057532235980034,0.183475464582443,-0.146287709474564,0.094701193273067));
res += mul(Get(s1,0,-dy), float4x4(0.017823442816734,0.024461466819048,0.049361988902092,0.118273966014385,-0.002287220442668,-0.095236018300056,-0.040233530104160,0.058584176003933,-0.081442788243294,0.019092312082648,-0.045606117695570,-0.121925063431263,-0.077522665262222,-0.069459244608879,0.037616074085236,-0.031731829047203));
res += mul(Get(s1,0,0), float4x4(-0.175457835197449,-0.078248061239719,-0.001985690323636,-0.121526867151260,-0.082684896886349,0.195316880941391,-0.029555099084973,-0.020763665437698,0.061902001500130,0.174888893961906,0.073026962578297,-0.269008815288544,-0.057412356138229,-0.188027858734131,0.180303633213043,-0.236031219363213));
res += mul(Get(s1,0,dy), float4x4(-0.099809169769287,0.178260132670403,-0.132741987705231,0.046476572751999,-0.062921762466431,0.216953873634338,0.069668203592300,-0.014406585134566,-0.023629900068045,0.089563414454460,0.172112673521042,-0.176424115896225,-0.097246669232845,0.027446417137980,0.017745111137629,-0.064008861780167));
res += mul(Get(s1,dx,-dy), float4x4(-0.063425578176975,0.151104733347893,-0.059155337512493,-0.113617949187756,-0.036285050213337,0.083316951990128,-0.040987655520439,0.048771608620882,-0.018119964748621,-0.009795732796192,-0.008199772797525,0.068581089377403,-0.034708146005869,-0.057595822960138,0.022109430283308,0.015676472336054));
res += mul(Get(s1,dx,0), float4x4(-0.098259992897511,0.245901226997375,-0.113298341631889,-0.165271878242493,-0.011700269766152,-0.043571043759584,0.078437797725201,-0.047765992581844,-0.042108863592148,0.145075023174286,-0.030557001009583,-0.227201417088509,-0.043511226773262,-0.021979477256536,-0.003426143666729,-0.000966352643445));
res += mul(Get(s1,dx,dy), float4x4(-0.033243656158447,-0.114939153194427,0.152813374996185,-0.028504610061646,-0.110610842704773,-0.054813541471958,0.075006991624832,-0.138612955808640,-0.075033113360405,0.105821959674358,-0.041186299175024,-0.223449364304543,-0.067304387688637,0.060808632522821,-0.021709470078349,-0.074344202876091));
res += mul(Get(s2,-dx,-dy), float4x4(-0.069813057780266,-0.139916077256203,0.036072276532650,-0.073371581733227,-0.013251768425107,-0.046653565019369,0.067763514816761,0.050315178930759,-0.059957854449749,0.027117663994431,-0.000841430271976,0.023595510050654,-0.001841580145992,0.138035759329796,-0.027119899168611,-0.140577137470245));
res += mul(Get(s2,-dx,0), float4x4(-0.025170983746648,0.070134215056896,-0.109951689839363,0.047881342470646,0.051439240574837,-0.125365063548088,0.097200408577919,0.019003065302968,0.057097740471363,0.029655186459422,0.002214029198512,0.010347341187298,0.136985182762146,-0.061764720827341,0.069387674331665,-0.020630367100239));
res += mul(Get(s2,-dx,dy), float4x4(-0.004800003953278,-0.131782397627831,-0.012387581169605,-0.087327845394611,-0.007630760315806,0.034581713378429,0.047833006829023,0.109031975269318,0.171237275004387,0.121207445859909,-0.060871712863445,0.063947759568691,0.006773679517210,0.079863876104355,-0.117712743580341,0.082176841795444));
res += mul(Get(s2,0,-dy), float4x4(-0.104703381657600,-0.003011622698978,0.248230502009392,0.019506908953190,-0.062168046832085,0.026047049090266,0.027047112584114,-0.204677551984787,0.032957974821329,0.048967637121677,-0.034152299165726,0.104061648249626,0.044973831623793,-0.076066471636295,0.010214413516223,0.088330686092377));
res += mul(Get(s2,0,0), float4x4(-0.113108433783054,-0.108102440834045,-0.276097983121872,0.068500004708767,0.148654043674469,0.257056593894958,0.039387859404087,0.183041870594025,-0.309421479701996,-0.135871350765228,-0.013956169597805,-0.067747473716736,0.060688842087984,0.278889983892441,0.041505724191666,-0.017573099583387));
res += mul(Get(s2,0,dy), float4x4(-0.064272046089172,-0.002187355421484,-0.194053143262863,-0.091146342456341,0.054506279528141,-0.045682191848755,0.027657270431519,0.089520320296288,-0.042721912264824,-0.125475123524666,-0.159635141491890,-0.031425256282091,-0.024739040061831,0.009395445697010,0.028357824310660,0.107892699539661));
res += mul(Get(s2,dx,-dy), float4x4(-0.097536183893681,0.065655238926411,0.056006062775850,0.041915908455849,-0.068160653114319,0.067846581339836,0.159706905484200,0.174356251955032,0.082077443599701,0.043920289725065,-0.084168069064617,-0.062843196094036,0.041803173720837,-0.030196228995919,0.033944752067327,-0.049744021147490));
res += mul(Get(s2,dx,0), float4x4(-0.053771581500769,-0.137935683131218,0.077770002186298,-0.127796351909637,-0.158157110214233,-0.332773149013519,-0.274650961160660,0.090787254273891,0.265840023756027,-0.005453358404338,0.082121148705482,0.013715882785618,0.248148098587990,-0.221692234277725,-0.051857192069292,0.041647352278233));
res += mul(Get(s2,dx,dy), float4x4(0.091566771268845,-0.252938032150269,0.006635177414864,0.046913836151361,0.133839592337608,-0.067610248923302,-0.008431361056864,0.081017762422562,-0.125972330570221,-0.018265001475811,0.094868138432503,-0.057779189199209,-0.029521431773901,0.018460107967257,-0.030244536697865,-0.094231039285660));
res += mul(Get(s3,-dx,-dy), float4x4(-0.099843665957451,-0.053901139646769,-0.029404615983367,-0.108933806419373,0.024727042764425,0.167113527655602,0.021519776433706,0.049482755362988,0.067634776234627,0.068776436150074,-0.067478410899639,0.105218134820461,-0.025811037048697,-0.029165105894208,0.016580762341619,-0.059169575572014));
res += mul(Get(s3,-dx,0), float4x4(0.049569979310036,-0.032225407660007,-0.065044336020947,-0.091141626238823,-0.014220829121768,-0.045054130256176,0.148241981863976,-0.003351813182235,0.002492987317964,-0.044324140995741,0.213706523180008,0.163748860359192,0.027043234556913,0.113351672887802,0.050765752792358,-0.121762849390507));
res += mul(Get(s3,-dx,dy), float4x4(0.003110720776021,0.038014192134142,-0.002804351039231,0.059433061629534,-0.079922534525394,-0.031908858567476,-0.003167451126501,-0.029399288818240,-0.012143115513027,-0.009667905978858,0.029732812196016,0.049607910215855,0.048314824700356,0.072717219591141,-0.084845781326294,0.052237704396248));
res += mul(Get(s3,0,-dy), float4x4(-0.016450796276331,-0.097756586968899,0.133044719696045,-0.041229307651520,-0.168519973754883,-0.042341727763414,-0.053712498396635,0.089241623878479,0.034767881035805,-0.133695453405380,-0.200230717658997,0.022326352074742,0.053120911121368,0.057109225541353,-0.015752367675304,-0.033182684332132));
res += mul(Get(s3,0,0), float4x4(0.033326566219330,0.157513454556465,-0.086557336151600,-0.017300819978118,-0.108519144356251,-0.052147280424833,0.159487530589104,0.194499596953392,0.073117636144161,0.004676339216530,0.321050584316254,0.205409765243530,0.029390837997198,-0.009471832774580,0.101773262023926,-0.212222218513489));
res += mul(Get(s3,0,dy), float4x4(-0.015666844323277,0.043654467910528,-0.149432122707367,0.048536200076342,0.041076697409153,-0.134573578834534,-0.037211485207081,0.033188618719578,0.088898450136185,-0.168671876192093,0.054435141384602,0.119401887059212,0.200417861342430,0.013444344513118,-0.217047184705734,0.160610571503639));
res += mul(Get(s3,dx,-dy), float4x4(-0.049960859119892,0.060536962002516,0.076334990561008,-0.083179913461208,0.047008920460939,0.140481188893318,0.020765930414200,0.015209938399494,-0.041611492633820,-0.060143608599901,-0.022432439029217,0.241083413362503,0.032420013099909,-0.002368155634031,0.024388575926423,-0.007307227235287));
res += mul(Get(s3,dx,0), float4x4(-0.286816895008087,0.255067408084869,-0.020552013069391,0.142442867159843,0.043432928621769,-0.037679988890886,-0.047596491873264,-0.008017838932574,0.081366159021854,0.118643142282963,-0.062010522931814,0.084344595670700,-0.251154184341431,-0.106297276914120,0.098421134054661,0.262594968080521));
res += mul(Get(s3,dx,dy), float4x4(0.104729205369949,-0.044634066522121,-0.035389181226492,0.011225764639676,0.104397438466549,-0.198192328214645,-0.008135997690260,0.083167657256126,0.122895762324333,-0.043455332517624,-0.023598309606314,0.128480091691017,-0.046309936791658,-0.212075293064117,-0.166307359933853,-0.054703697562218));
res += mul(Get(s4,-dx,-dy), float4x4(-0.053364437073469,-0.265528857707977,0.188353702425957,0.098859928548336,-0.218775510787964,0.200095802545547,0.176445245742798,0.170087292790413,-0.035092666745186,0.025502456352115,-0.020517967641354,-0.022208491340280,0.030352890491486,-0.004576350096613,0.000536066712812,0.022082703188062));
res += mul(Get(s4,-dx,0), float4x4(0.021988714113832,-0.144830673933029,-0.024008698761463,0.108424618840218,-0.084266424179077,-0.028096038848162,0.140344962477684,-0.031856182962656,-0.123861819505692,0.197245761752129,-0.124621354043484,0.042509026825428,-0.010621142573655,-0.115773230791092,0.048460956662893,-0.055813770741224));
res += mul(Get(s4,-dx,dy), float4x4(-0.022142020985484,0.019611258059740,-0.118943437933922,0.048451166599989,-0.088333673775196,-0.097248800098896,-0.000212171391468,-0.045705426484346,0.019323995336890,-0.080200716853142,0.090435706079006,-0.045203685760498,-0.119774468243122,0.078470557928085,-0.095788843929768,0.102551192045212));
res += mul(Get(s4,0,-dy), float4x4(0.087293751537800,0.168198391795158,0.191896229982376,0.015779441222548,-0.247192859649658,-0.156232610344887,0.013987735845149,-0.164132580161095,0.012823825702071,0.171901404857635,0.130679666996002,0.074384473264217,0.025990290567279,-0.006693509407341,0.024424137547612,0.049254346638918));
res += mul(Get(s4,0,0), float4x4(-0.017091695219278,0.160917535424232,-0.196700677275658,-0.025286704301834,-0.162619575858116,-0.170828849077225,0.032859865576029,-0.129938378930092,-0.367680758237839,-0.251176029443741,-0.246457397937775,0.003373022424057,-0.061975702643394,-0.252185076475143,0.028978006914258,0.115980759263039));
res += mul(Get(s4,0,dy), float4x4(0.082212910056114,0.065986052155495,-0.010680416598916,-0.018597368150949,-0.070237204432487,-0.068272486329079,-0.069817245006561,0.004027767572552,0.050636269152164,-0.150826826691628,0.206554949283600,0.159548670053482,0.036155156791210,0.165162667632103,-0.251085728406906,0.123223006725311));
res += mul(Get(s4,dx,-dy), float4x4(-0.012619155459106,0.069414444267750,0.020294429734349,-0.036164481192827,-0.132590338587761,-0.066172160208225,-0.010513260029256,-0.057077143341303,-0.038127556443214,-0.170323908329010,0.017281835898757,-0.110013522207737,0.068705499172211,-0.064812906086445,0.003669129451737,-0.001354781328700));
res += mul(Get(s4,dx,0), float4x4(0.014984222128987,0.040856134146452,-0.140973269939423,0.033218394964933,-0.148970946669579,-0.018422707915306,0.043249696493149,-0.063506036996841,0.057089842855930,-0.317210972309113,0.101679779589176,0.329611599445343,-0.030436089262366,-0.039776802062988,0.057949978858232,0.109709851443768));
res += mul(Get(s4,dx,dy), float4x4(0.004691116977483,-0.221103042364120,0.026575794443488,0.048662688583136,-0.106456167995930,0.050243519246578,0.011146953329444,0.002162291901186,-0.135923996567726,0.186814203858376,-0.060162119567394,0.104785270988941,-0.090859889984131,-0.087447792291641,-0.083362229168415,-0.016254225745797));
res += mul(Get(s5,-dx,-dy), float4x4(-0.041303839534521,-0.054234590381384,-0.086521379649639,-0.055093493312597,0.020821897312999,-0.014525686390698,-0.156446605920792,0.071548379957676,-0.046006157994270,-0.013181173242629,-0.125950038433075,0.109578780829906,-0.053301718086004,-0.064246416091919,-0.044905643910170,-0.017956882715225));
res += mul(Get(s5,-dx,0), float4x4(-0.029710339382291,0.130546629428864,0.071360602974892,-0.032738287001848,-0.114339232444763,-0.148576021194458,0.111191399395466,0.175937086343765,0.032086577266455,-0.175046831369400,0.034479282796383,-0.038146298378706,-0.050926290452480,-0.121636673808098,0.079975664615631,0.260779768228531));
res += mul(Get(s5,-dx,dy), float4x4(-0.028081089258194,-0.000953216571361,-0.003301670541987,0.021699972450733,-0.104142360389233,-0.094185285270214,-0.048923462629318,-0.040445782244205,-0.073147788643837,-0.124886706471443,0.119124427437782,0.009752750396729,-0.122244261205196,-0.042599473148584,0.237554579973221,0.055365644395351));
res += mul(Get(s5,0,-dy), float4x4(0.052378769963980,0.067570090293884,0.115134961903095,0.044571366161108,-0.051729716360569,-0.200270503759384,-0.073675401508808,0.067449115216732,-0.019787291064858,-0.027614487335086,-0.127424448728561,0.034485697746277,0.082607299089432,0.037496998906136,0.016050850972533,0.023084346204996));
res += mul(Get(s5,0,0), float4x4(-0.197338402271271,-0.068626180291176,-0.108276806771755,0.144488528370857,0.055393882095814,0.095845341682434,0.177516728639603,0.078603222966194,-0.343866974115372,-0.226508781313896,0.180637359619141,0.121000923216343,-0.015163861215115,-0.044872205704451,0.090144909918308,0.118249237537384));
res += mul(Get(s5,0,dy), float4x4(-0.011261655949056,-0.050463758409023,-0.164657756686211,0.058166053146124,-0.082639411091805,0.023017428815365,0.028607737272978,0.000374210678274,-0.006605449132621,-0.036138333380222,-0.055901262909174,0.034852474927902,-0.061599064618349,0.068082340061665,0.086493074893951,-0.036372136324644));
res += mul(Get(s5,dx,-dy), float4x4(0.081010252237320,0.008979309350252,-0.024247441440821,0.021824738010764,-0.132170438766479,0.196783974766731,0.041551876813173,-0.001229857327417,-0.041363772004843,-0.063882179558277,-0.024463146924973,0.049724906682968,-0.035749595612288,-0.095877751708031,0.235724568367004,0.152303859591484));
res += mul(Get(s5,dx,0), float4x4(-0.245997518301010,-0.032132990658283,-0.046697784215212,-0.014847719110548,-0.133235022425652,-0.008736571297050,-0.075837060809135,0.035182781517506,0.002721084281802,0.076682813465595,0.083255790174007,0.004252660553902,-0.069628223776817,-0.136056140065193,-0.024688702076674,-0.051674194633961));
res += mul(Get(s5,dx,dy), float4x4(-0.009775529615581,-0.063528917729855,0.044552143663168,0.000975865637884,-0.181394442915916,0.121968396008015,0.036320086568594,-0.015502173453569,-0.030340621247888,0.148816689848900,0.019057776778936,-0.033720269799232,-0.126808375120163,-0.071976773440838,0.173310130834579,-0.078569792211056));
res = max(float4(0, 0, 0, 0), res) + float4(0.464552581310272,-0.154090687632561,-0.259028166532516,0.169494047760963) * min(float4(0, 0, 0, 0), res);
return res;
}
