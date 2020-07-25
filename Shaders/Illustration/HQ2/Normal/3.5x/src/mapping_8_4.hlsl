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
res += mul(Get(s0,-dx,-dy), float4x4(0.019587211310863,-0.044806234538555,0.078011423349380,0.073653891682625,0.022983454167843,-0.028042087331414,0.031705725938082,0.002072221599519,-0.010954207740724,0.000074977593613,0.007547537796199,0.039060801267624,-0.027118332684040,0.042324963957071,-0.078809812664986,0.099148310720921));
res += mul(Get(s0,-dx,0), float4x4(-0.010599151253700,0.006376198492944,0.121379479765892,0.012838874012232,0.047716915607452,-0.097455896437168,0.009573218412697,0.026669492945075,0.033791486173868,0.062851458787918,0.033208865672350,0.081427454948425,0.009980615228415,0.142211720347404,-0.057482320815325,0.005113311577588));
res += mul(Get(s0,-dx,dy), float4x4(0.023125719279051,0.027004055678844,0.062450069934130,0.059565093368292,0.038531161844730,-0.046279806643724,0.018717581406236,0.048155359923840,0.028566861525178,0.039661645889282,0.014964798465371,0.053874451667070,-0.013335458002985,0.092791564762592,-0.049384079873562,-0.038089998066425));
res += mul(Get(s0,0,-dy), float4x4(0.006082129199058,-0.144799306988716,0.051970433443785,0.084370039403439,-0.053835883736610,0.078939817845821,0.071626931428909,-0.050557371228933,-0.004082287661731,0.008934007026255,0.016678472980857,0.028592020273209,0.000274687423371,-0.039950408041477,-0.044527016580105,0.061523374170065));
res += mul(Get(s0,0,0), float4x4(0.055659282952547,0.014742704108357,0.112027674913406,0.038214709609747,-0.065789468586445,-0.045546375215054,0.076204240322113,-0.082926228642464,0.011577962897718,0.181947737932205,0.040246535092592,0.054421048611403,0.020629875361919,-0.039675019681454,-0.005663934629411,-0.023697871714830));
res += mul(Get(s0,0,dy), float4x4(0.035378336906433,0.035986948758364,0.061650063842535,-0.021082559600472,0.030778830870986,-0.040813576430082,-0.025072721764445,0.105657160282135,-0.016067909076810,0.100243091583252,-0.003546072635800,-0.000046336353989,0.000466624915134,-0.036386087536812,-0.012982912361622,-0.038854911923409));
res += mul(Get(s0,dx,-dy), float4x4(0.048257678747177,-0.103484742343426,-0.073844730854034,0.146364778280258,0.004438002593815,0.118849605321884,0.055576238781214,-0.011627126485109,0.001071511534974,0.001042477902956,0.020880058407784,-0.003124142996967,-0.015840314328671,0.048712771385908,-0.072647623717785,0.086971960961819));
res += mul(Get(s0,dx,0), float4x4(0.111753508448601,-0.036798141896725,-0.092038273811340,0.146483436226845,-0.027111317962408,0.078815676271915,0.101297110319138,-0.068339675664902,0.003039463190362,0.117638103663921,0.041818708181381,0.006183876655996,-0.010532000102103,0.037354279309511,-0.044445265084505,0.076034195721149));
res += mul(Get(s0,dx,dy), float4x4(0.044728673994541,0.019181018695235,-0.039454691112041,0.030318681150675,0.007004839368165,-0.009104642085731,-0.000896125624422,0.000935278949328,-0.016452891752124,0.089940175414085,-0.045181445777416,-0.018233345821500,-0.000765114091337,0.044802296906710,-0.032842729240656,0.107249580323696));
res += mul(Get(s1,-dx,-dy), float4x4(-0.026757033541799,-0.052304446697235,-0.003745233640075,0.029730906710029,-0.070527583360672,0.060009881854057,0.042862661182880,-0.071013174951077,0.043505482375622,0.044429194182158,-0.022003924474120,0.056374248117208,0.063341446220875,-0.057649664580822,-0.025395259261131,0.064547844231129));
res += mul(Get(s1,-dx,0), float4x4(-0.001456511439756,0.018303066492081,0.015396263450384,0.038218922913074,0.002839079359546,0.090586677193642,0.020870214328170,0.038617491722107,0.033055506646633,0.064154520630836,0.002664064988494,-0.040974583476782,0.053495597094297,-0.036842457950115,0.005899590905756,0.060594122856855));
res += mul(Get(s1,-dx,dy), float4x4(-0.000089175242465,0.007967234589159,-0.033266719430685,0.019416231662035,-0.025697767734528,-0.026629133149981,-0.007673995569348,0.051145110279322,0.037171240895987,0.133878946304321,0.018996639177203,0.064625434577465,0.063849799335003,-0.025760700926185,0.008611365221441,0.062625557184219));
res += mul(Get(s1,0,-dy), float4x4(-0.014125172048807,-0.064098045229912,-0.019599106162786,0.059337191283703,-0.026857074350119,0.101531170308590,0.029971234500408,-0.026140522211790,0.081791788339615,-0.008707691915333,-0.010608417913318,0.052734535187483,0.002593027427793,-0.023817574605346,0.029617145657539,-0.007905047386885));
res += mul(Get(s1,0,0), float4x4(0.038886792957783,0.066729515790939,-0.002312962198630,0.085823819041252,-0.027132352814078,0.166619449853897,-0.020217623561621,-0.018705362454057,0.077640973031521,0.028008513152599,0.028124500066042,-0.028299730271101,0.013622977770865,0.031866014003754,0.027114978060126,0.058604449033737));
res += mul(Get(s1,0,dy), float4x4(-0.033697165548801,0.076504394412041,0.009826819412410,-0.012677503749728,-0.034556820988655,-0.002425628947094,-0.072223514318466,0.041251376271248,0.092067301273346,0.129052013158798,-0.048300690948963,0.099337786436081,0.023401819169521,0.094695836305618,0.012430286966264,0.060033701360226));
res += mul(Get(s1,dx,-dy), float4x4(-0.024884007871151,-0.046347815543413,0.006578005384654,0.013561625964940,-0.006298827473074,0.034757696092129,0.026345839723945,0.030829915776849,0.038800340145826,0.026217186823487,0.072795271873474,-0.010988162830472,-0.000560942455195,0.010344938375056,0.021842906251550,-0.025054018944502));
res += mul(Get(s1,dx,0), float4x4(0.042621951550245,-0.042058251798153,-0.026470853015780,0.055209621787071,-0.008827447891235,0.048405870795250,0.033723235130310,0.009906929917634,0.057726435363293,0.056943286210299,0.120821438729763,-0.074044659733772,0.030578535050154,-0.002070933114737,-0.034152042120695,0.027371365576982));
res += mul(Get(s1,dx,dy), float4x4(-0.002126243896782,0.025620192289352,-0.026058999821544,0.027118224650621,-0.035220321267843,0.022589437663555,-0.032221328467131,-0.007425197400153,0.060474142432213,0.127034157514572,0.023482803255320,-0.021407578140497,0.027587579563260,0.043477766215801,-0.073380485177040,0.021535629406571));
res += mul(Get(s2,-dx,-dy), float4x4(-0.002040572697297,-0.008134482428432,0.053175721317530,0.051947388797998,0.078770354390144,-0.094654954969883,0.047555543482304,-0.034901373088360,0.030017826706171,-0.026318402960896,-0.016446618363261,-0.025977361947298,-0.027020059525967,-0.012039815075696,-0.045033697038889,0.013593896292150));
res += mul(Get(s2,-dx,0), float4x4(-0.020870169624686,0.042124997824430,0.106718890368938,-0.018647896125913,0.108310453593731,-0.146047607064247,0.007022235076874,0.025836085900664,0.017059596255422,0.032705001533031,-0.046508379280567,0.028074150905013,-0.037575133144855,0.113588966429234,0.014199902303517,0.004852515179664));
res += mul(Get(s2,-dx,dy), float4x4(-0.013817654922605,-0.022777181118727,0.040271554142237,-0.003904599929228,0.020408790558577,-0.134108662605286,0.034512151032686,-0.058801956474781,-0.032435622066259,-0.022914707660675,-0.000247846648563,-0.032267633825541,-0.045930225402117,0.018419384956360,-0.039057366549969,-0.002276900457218));
res += mul(Get(s2,0,-dy), float4x4(0.028399806469679,-0.023121008649468,-0.015965808182955,0.072334058582783,-0.007293653208762,-0.003873771987855,-0.008883016183972,-0.012316230684519,-0.004966722335666,-0.013320921920240,0.071752436459064,-0.074456706643105,-0.003495844779536,-0.025386521592736,-0.024991590529680,0.029782844707370));
res += mul(Get(s2,0,0), float4x4(0.032327566295862,0.078324779868126,0.031113661825657,0.030860289931297,-0.010709021240473,-0.093383200466633,-0.006413736846298,0.029915900900960,0.004979236517102,-0.044458732008934,-0.049771755933762,0.039791546761990,0.051084078848362,0.089038111269474,-0.008284353651106,0.065672025084496));
res += mul(Get(s2,0,dy), float4x4(-0.014508780092001,0.020202526822686,0.000729345600121,-0.018990853801370,-0.060615502297878,0.008485920727253,0.042754419147968,-0.047495305538177,-0.050988662987947,-0.069212146103382,0.000907560461201,-0.013850772753358,-0.026830941438675,0.046807598322630,-0.005858774762601,-0.041903339326382));
res += mul(Get(s2,dx,-dy), float4x4(0.026687707751989,-0.028872963041067,-0.031129008159041,0.060146905481815,-0.053844552487135,0.038307290524244,0.035271577537060,-0.072783403098583,-0.011706572026014,-0.001415930455551,0.154774755239487,-0.091011315584183,-0.013465396128595,0.006611328106374,-0.023747224360704,-0.001535729388706));
res += mul(Get(s2,dx,0), float4x4(0.056619178503752,-0.031686522066593,-0.044347979128361,0.051415476948023,-0.055964838713408,0.036103289574385,0.068292103707790,-0.083490684628487,-0.077882580459118,-0.025225957855582,0.140506207942963,-0.110267631709576,0.003733747173101,-0.016895329579711,-0.032744809985161,-0.007775716949254));
res += mul(Get(s2,dx,dy), float4x4(0.024429475888610,-0.020781984552741,-0.042543012648821,0.047491561621428,-0.089625544846058,0.028044572100043,0.102278798818588,-0.126261070370674,-0.050583854317665,-0.050214800983667,0.123712986707687,-0.038455050438643,-0.041800789535046,0.000796720269136,-0.047654885798693,-0.011907145380974));
res += mul(Get(s3,-dx,-dy), float4x4(0.007130845449865,-0.005835557356477,0.029101314023137,0.043075431138277,-0.025070559233427,-0.027776410803199,-0.111538641154766,-0.085520334541798,-0.037126004695892,0.014813714660704,0.007635147310793,-0.024436859413981,0.006070530042052,0.017931189388037,-0.048533532768488,0.006606246810406));
res += mul(Get(s3,-dx,0), float4x4(0.042477011680603,-0.035425208508968,0.008506912738085,0.036856200546026,0.028818810358644,0.048013869673014,-0.090016856789589,-0.029736492782831,-0.062665052711964,0.065776705741882,0.080682165920734,-0.024964971467853,0.028999393805861,-0.081726439297199,-0.037382710725069,0.030712194740772));
res += mul(Get(s3,-dx,dy), float4x4(-0.005384874995798,-0.098148785531521,0.020945399999619,0.011415973305702,0.052601937204599,0.140786886215210,-0.061012521386147,-0.019722582772374,-0.017744908109307,0.033436629921198,0.045942485332489,0.026084680110216,0.069891110062599,-0.210751354694366,-0.020007368177176,0.058354925364256));
res += mul(Get(s3,0,-dy), float4x4(0.020699052140117,0.059950996190310,-0.020766954869032,0.102675162255764,-0.024052130058408,-0.044345814734697,-0.032051689922810,-0.082495838403702,-0.000519832014106,-0.029572712257504,-0.032395049929619,0.009328144602478,-0.053000364452600,0.045002780854702,-0.069641552865505,0.003544282866642));
res += mul(Get(s3,0,0), float4x4(0.017192784696817,-0.023833019658923,-0.009498239494860,0.003065088065341,0.044023178517818,-0.119872517883778,-0.030175561085343,0.005220863968134,0.081730253994465,0.072541400790215,-0.050592351704836,0.152086064219475,-0.021763531491160,0.066025599837303,-0.029433343559504,0.024804776534438));
res += mul(Get(s3,0,dy), float4x4(-0.054499633610249,-0.121654823422432,0.058963812887669,-0.013771290890872,0.089089632034302,0.009696005843580,-0.060545019805431,0.021613691002131,0.029746809974313,0.105754956603050,-0.068302765488625,0.065755493938923,-0.023056225851178,-0.074551828205585,0.029849966987967,-0.019434696063399));
res += mul(Get(s3,dx,-dy), float4x4(-0.017564550042152,0.001339090056717,-0.005089265760034,0.021397614851594,-0.038860749453306,0.055654652416706,-0.038194429129362,-0.020023489370942,0.019648844376206,0.004510167054832,-0.068333111703396,0.035066179931164,-0.033670607954264,-0.039397452026606,0.004199954215437,-0.012071409262717));
res += mul(Get(s3,dx,0), float4x4(-0.047696821391582,0.059398055076599,0.039460998028517,-0.072818733751774,-0.024813188239932,-0.019663389772177,-0.012909016571939,0.005745798349380,0.046280201524496,-0.001459743827581,-0.073721207678318,0.097733877599239,-0.037407472729683,0.041082374751568,0.068324506282806,-0.043857678771019));
res += mul(Get(s3,dx,dy), float4x4(-0.108867555856705,0.003920223563910,0.101260431110859,-0.048820938915014,0.002166454680264,0.043689273297787,-0.030026976019144,-0.000205090836971,0.016462529078126,0.020417964085937,-0.013623236678541,0.032683599740267,-0.035805400460958,0.024896232411265,0.097259357571602,-0.079180277884007));
return max(float4(0,0,0,0), res);
}
