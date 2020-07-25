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
res += mul(Get(s0,-dx,-dy), float4x4(-0.091281838715076,-0.073217265307903,-0.132153004407883,0.094944007694721,0.148843958973885,-0.087350741028786,-0.131463259458542,0.024269873276353,-0.043538004159927,-0.008004438132048,0.042323902249336,0.076031260192394,0.141383290290833,0.019114717841148,0.102176457643509,-0.074077591300011));
res += mul(Get(s0,-dx,0), float4x4(-0.048921614885330,0.051593542098999,-0.065450079739094,0.020484825596213,-0.025140415877104,-0.006529199425131,0.028235571458936,-0.101983420550823,0.098912909626961,-0.047565910965204,0.060917068272829,-0.078335449099541,0.108098179101944,0.047092240303755,0.202350199222565,0.008479207754135));
res += mul(Get(s0,-dx,dy), float4x4(0.021681660786271,-0.179221332073212,0.092081516981125,-0.018910529091954,-0.050010893493891,0.133947879076004,-0.077986672520638,-0.057786762714386,-0.029812706634402,-0.116358317434788,0.105384841561317,0.080559022724628,-0.136484071612358,0.061950016766787,-0.225922510027885,0.111971378326416));
res += mul(Get(s0,0,-dy), float4x4(0.166160702705383,-0.102822184562683,-0.018315672874451,-0.037212785333395,-0.011151233687997,-0.037047613412142,-0.041487660259008,-0.027870520949364,-0.034275565296412,-0.061067506670952,0.107584945857525,-0.016083277761936,0.130107074975967,0.040139310061932,-0.031535502523184,-0.020086653530598));
res += mul(Get(s0,0,0), float4x4(0.019632436335087,0.062721237540245,0.023162735626101,0.107708550989628,-0.060065552592278,-0.116389147937298,-0.114322513341904,-0.070833399891853,-0.065562047064304,-0.085315816104412,-0.102121241390705,-0.049263913184404,-0.115415297448635,0.139448836445808,-0.031025199219584,-0.039470214396715));
res += mul(Get(s0,0,dy), float4x4(0.093896619975567,0.041145820170641,0.048255294561386,0.078236222267151,-0.222060799598694,0.029178246855736,-0.046741105616093,-0.086956121027470,-0.059109456837177,-0.055045068264008,-0.007862170226872,0.099829092621803,0.181956142187119,-0.003676115768030,-0.126874625682831,0.068518824875355));
res += mul(Get(s0,dx,-dy), float4x4(0.068933956325054,-0.110768586397171,-0.091275952756405,-0.037968516349792,-0.016095444560051,-0.045205272734165,0.038331273943186,-0.033158339560032,0.007684625685215,0.134128972887993,0.118830107152462,0.048932503908873,0.004239059984684,0.056639708578587,-0.047818969935179,0.062785767018795));
res += mul(Get(s0,dx,0), float4x4(0.058422978967428,0.047015819698572,0.015859054401517,-0.120359413325787,-0.015524722635746,-0.027430180460215,0.135694861412048,-0.057708520442247,0.052528947591782,0.007308352272958,0.056969847530127,-0.043270301073790,-0.051655329763889,-0.009562600404024,0.116157136857510,-0.012724374420941));
res += mul(Get(s0,dx,dy), float4x4(0.104570046067238,0.043462470173836,-0.038423642516136,-0.079222157597542,-0.051408044993877,0.063169635832310,-0.092807658016682,-0.133843347430229,0.081510446965694,-0.044485174119473,0.129504159092903,-0.097931437194347,-0.173117682337761,-0.130968481302261,-0.002106501255184,0.167257159948349));
res += mul(Get(s1,-dx,-dy), float4x4(-0.023196162655950,-0.051744081079960,0.087438650429249,-0.019398413598537,0.059973187744617,-0.022723065689206,-0.085351265966892,0.043752931058407,-0.056912384927273,0.099006228148937,0.203313678503036,-0.113146826624870,0.062021180987358,0.031107377260923,-0.053238570690155,0.080889813601971));
res += mul(Get(s1,-dx,0), float4x4(0.141069442033768,0.129716515541077,0.141013845801353,0.043395411223173,-0.015015344135463,-0.090817131102085,-0.117626406252384,-0.137637659907341,-0.102981507778168,-0.031084826216102,0.071583092212677,-0.027021240442991,0.000752824067604,0.250884711742401,0.037202261388302,0.024064803496003));
res += mul(Get(s1,-dx,dy), float4x4(-0.042117964476347,0.002872231183574,-0.032794874161482,0.045847035944462,0.104887120425701,0.064533650875092,-0.042705763131380,-0.140555411577225,-0.053518258035183,0.003876560600474,0.053364112973213,-0.001196527387947,0.123798981308937,-0.084790095686913,-0.081049107015133,-0.162549182772636));
res += mul(Get(s1,0,-dy), float4x4(-0.046638898551464,0.061141010373831,-0.039254032075405,0.007389449048787,-0.028387328609824,0.114653252065182,-0.026173613965511,-0.209325596690178,-0.053586237132549,-0.135232850909233,0.004605654627085,0.056049555540085,0.126278489828110,0.106567665934563,-0.085303366184235,0.103110432624817));
res += mul(Get(s1,0,0), float4x4(-0.117252036929131,0.063907347619534,-0.117851786315441,-0.033094745129347,-0.069776169955730,-0.038396593183279,-0.096510022878647,0.046330668032169,-0.038418162614107,0.035405654460192,0.017647307366133,0.008968655019999,0.185804009437561,-0.050829462707043,-0.114862225949764,-0.078545369207859));
res += mul(Get(s1,0,dy), float4x4(-0.097608588635921,-0.004728883504868,-0.027732463553548,0.049539566040039,0.061005063354969,0.198282971978188,0.012682853266597,0.161796674132347,-0.044192750006914,0.021518832072616,0.057369515299797,-0.068296395242214,-0.138116255402565,-0.076417110860348,0.027230894193053,0.074269875884056));
res += mul(Get(s1,dx,-dy), float4x4(-0.059622090309858,0.170877158641815,-0.060777112841606,-0.150323256850243,0.039577122777700,-0.032166350632906,-0.020673381164670,-0.007167924661189,-0.055110253393650,0.055199600756168,-0.044756952673197,-0.128037378191948,-0.168615698814392,-0.092685610055923,0.179169714450836,0.016623130068183));
res += mul(Get(s1,dx,0), float4x4(0.028986530378461,0.096151553094387,-0.020064171403646,-0.018151147291064,0.191484093666077,0.034694314002991,-0.021884793415666,0.254754096269608,-0.031862448900938,0.043551981449127,-0.128708168864250,-0.045686751604080,0.062798395752907,0.027354849502444,0.006623546127230,0.007348248735070));
res += mul(Get(s1,dx,dy), float4x4(-0.160980790853500,0.084163732826710,-0.030703926458955,-0.034807439893484,-0.178270086646080,0.003755261190236,0.083450391888618,-0.008255607448518,0.010678493417799,-0.052758574485779,0.037707634270191,-0.122241817414761,0.110961325466633,-0.007302578072995,0.033011727035046,-0.057524319738150));
res += mul(Get(s2,-dx,-dy), float4x4(-0.082302935421467,0.069834955036640,-0.023995386436582,-0.037819594144821,-0.063031703233719,-0.107134625315666,0.071019560098648,0.030960485339165,0.012448257766664,-0.071526490151882,0.009262958541512,0.051316436380148,0.192523494362831,0.033394079655409,0.092675857245922,0.013911865651608));
res += mul(Get(s2,-dx,0), float4x4(-0.116201899945736,-0.018119050189853,-0.031923908740282,-0.034341171383858,-0.131493628025055,-0.083414785563946,-0.055979609489441,0.003746598027647,-0.119353249669075,0.084605492651463,-0.068093799054623,0.088034279644489,0.106210730969906,0.104360423982143,-0.102747470140457,-0.044601634144783));
res += mul(Get(s2,-dx,dy), float4x4(0.159836396574974,-0.117024444043636,0.144359558820724,0.054615247994661,0.030713083222508,0.070140197873116,0.041373919695616,0.092435583472252,0.147171884775162,0.270042508840561,-0.072218164801598,-0.255849003791809,-0.132854595780373,0.006147861480713,0.109328709542751,-0.037533905357122));
res += mul(Get(s2,0,-dy), float4x4(0.145413175225258,0.024899058043957,-0.100481547415257,-0.066237874329090,-0.089889705181122,0.013488176278770,-0.007483559194952,-0.055029705166817,-0.134607329964638,0.098990403115749,-0.111553847789764,-0.152054727077484,0.008918313309550,-0.029647007584572,-0.079666681587696,-0.026668617501855));
res += mul(Get(s2,0,0), float4x4(0.183473438024521,-0.006602403242141,-0.054419331252575,0.013810267671943,-0.018179578706622,0.076277121901512,0.135313764214516,0.201383307576180,-0.075909838080406,0.127038687467575,0.016640663146973,0.202009469270706,0.087819121778011,0.115811936557293,-0.136006623506546,0.060240462422371));
res += mul(Get(s2,0,dy), float4x4(-0.122210703790188,0.083624392747879,-0.099876157939434,-0.177607178688049,0.054998688399792,0.049685828387737,0.038078028708696,0.106709450483322,0.318549841642380,-0.107063516974449,-0.016177432611585,0.139110714197159,-0.142664179205894,-0.035603154450655,0.276504874229431,-0.013226709328592));
res += mul(Get(s2,dx,-dy), float4x4(0.033932078629732,-0.095949038863182,0.071052484214306,-0.044881477952003,0.107393898069859,0.108284808695316,-0.024309804663062,0.109695620834827,0.226136624813080,0.002894130069762,0.128755494952202,0.018061699345708,0.021540449932218,-0.046171892434359,0.029240613803267,0.176147282123566));
res += mul(Get(s2,dx,0), float4x4(0.175879657268524,-0.223071843385696,0.034344751387835,0.036173276603222,-0.019143318757415,0.043338797986507,-0.121000103652477,-0.036928497254848,-0.038176972419024,0.027662614360452,0.154256492853165,0.158316493034363,-0.006775483954698,0.087149932980537,-0.055572859942913,-0.036398518830538));
res += mul(Get(s2,dx,dy), float4x4(0.002013591583818,0.043652612715960,-0.024370672181249,0.010977165773511,-0.081733457744122,-0.074582681059837,-0.142464667558670,-0.071932703256607,0.073184743523598,-0.401051819324493,0.065992355346680,0.107943587005138,0.017071718350053,0.014001021161675,0.002808102406561,-0.057351171970367));
res += mul(Get(s3,-dx,-dy), float4x4(-0.092913135886192,-0.056376285851002,-0.009025236591697,0.027123207226396,0.064311571419239,-0.044902637600899,-0.165962710976601,-0.027514563873410,-0.012822912074625,0.010283423587680,-0.015043426305056,-0.202525585889816,-0.136146724224091,-0.091160565614700,-0.088412880897522,-0.063999459147453));
res += mul(Get(s3,-dx,0), float4x4(-0.148074567317963,0.070971794426441,-0.193942934274673,0.050102762877941,0.035515338182449,0.042433358728886,0.008299943991005,-0.050593107938766,0.046836458146572,-0.057716399431229,-0.098538458347321,-0.122735388576984,-0.082355082035065,0.231177195906639,-0.164543032646179,-0.074320808053017));
res += mul(Get(s3,-dx,dy), float4x4(0.018194094300270,-0.054208766669035,-0.072940640151501,0.082697808742523,-0.069104626774788,0.056618478149176,0.095462374389172,-0.043208450078964,0.147667422890663,-0.138259246945381,-0.012499674223363,-0.068425364792347,0.108585983514786,0.022871075198054,-0.124819010496140,-0.040443763136864));
res += mul(Get(s3,0,-dy), float4x4(0.128677606582642,0.167719036340714,0.031651578843594,-0.153340011835098,0.057726990431547,-0.037215508520603,-0.172243326902390,0.028523795306683,-0.040555115789175,0.037589158862829,-0.048769105225801,0.035866133868694,-0.032800715416670,-0.062118168920279,0.024231659248471,0.071172870695591));
res += mul(Get(s3,0,0), float4x4(-0.040183112025261,-0.028991390019655,-0.007908239960670,0.013032652437687,-0.013279661536217,0.091334909200668,0.020795729011297,0.066735535860062,-0.100699670612812,0.027020966634154,-0.055729202926159,-0.059038158506155,-0.009922109544277,0.034393317997456,-0.024478130042553,-0.049580272287130));
res += mul(Get(s3,0,dy), float4x4(-0.080947451293468,-0.033368367701769,-0.153557360172272,-0.146586894989014,0.271160036325455,-0.038251433521509,0.088680647313595,0.066610790789127,0.139551296830177,0.054662156850100,0.119812585413456,-0.011417086236179,0.025855610147119,0.096510857343674,0.065592348575592,0.058339010924101));
res += mul(Get(s3,dx,-dy), float4x4(0.048861455172300,-0.048221968114376,-0.051004819571972,0.051936727017164,-0.082220688462257,0.202263653278351,0.012801364995539,0.146200343966484,-0.039867021143436,-0.069267392158508,-0.006107458844781,0.034663040190935,0.108693763613701,0.053419653326273,-0.032939728349447,0.032795969396830));
res += mul(Get(s3,dx,0), float4x4(0.153627797961235,-0.012803870253265,-0.010454357601702,0.108482398092747,-0.105562761425972,0.017411410808563,0.035829283297062,-0.008089850656688,0.035247486084700,-0.068527013063431,0.062732383608818,-0.124958857893944,0.022522421553731,0.075277127325535,-0.113361991941929,0.008985525928438));
res += mul(Get(s3,dx,dy), float4x4(-0.065187156200409,0.114502184092999,0.008757574483752,0.096520379185677,0.026617953553796,-0.095072299242020,-0.050621252506971,-0.144510492682457,-0.045808725059032,-0.041319027543068,0.035051289945841,-0.089839160442352,-0.013622670434415,0.031189460307360,0.008027085103095,0.081263162195683));
res = max(float4(0,0,0,0), res);
return res;
}
