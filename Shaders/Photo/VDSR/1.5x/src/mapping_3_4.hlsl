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
res += mul(Get(s0,-dx,-dy), float4x4(-0.019740698859096,-0.017802733927965,0.092754051089287,0.029227362945676,0.037831455469131,-0.018257914111018,-0.135256722569466,-0.044829163700342,0.021339865401387,0.014979211613536,-0.057149406522512,-0.034387115389109,0.124057583510876,0.002554576378316,-0.065902106463909,0.084771990776062));
res += mul(Get(s0,-dx,0), float4x4(0.062026072293520,0.005651138722897,-0.099463365972042,-0.033033668994904,-0.018440742045641,0.093223378062248,-0.085284851491451,-0.082311071455479,0.053213566541672,0.044581659138203,-0.022289013490081,-0.022715503349900,-0.162346363067627,0.121699683368206,-0.091568671166897,-0.017439808696508));
res += mul(Get(s0,-dx,dy), float4x4(-0.054906859993935,-0.014567935839295,-0.093150027096272,-0.002482112497091,0.033587533980608,-0.032774727791548,0.019731501117349,0.040304053574800,0.022393161430955,-0.018942099064589,-0.003899778937921,-0.080329872667789,0.084272593259811,-0.042899999767542,-0.014252122491598,0.089675672352314));
res += mul(Get(s0,0,-dy), float4x4(-0.069241963326931,-0.087411656975746,0.097617544233799,0.050276745110750,0.034091312438250,0.029704343527555,-0.218490272760391,-0.024423494935036,0.058276485651731,-0.053754296153784,-0.012441788800061,-0.087488204240799,-0.017818078398705,-0.183686345815659,-0.016411632299423,0.049173250794411));
res += mul(Get(s0,0,0), float4x4(0.129147514700890,0.016592033207417,-0.010673512704670,-0.032060813158751,-0.020641967654228,0.140395462512970,-0.131770983338356,0.111308105289936,0.210033878684044,0.044706922024488,0.157302066683769,-0.037089198827744,0.091188468039036,0.063207007944584,0.078567437827587,0.252607613801956));
res += mul(Get(s0,0,dy), float4x4(0.035035729408264,0.003011720953509,-0.033950861543417,0.155042186379433,-0.022140298038721,0.065385624766350,0.205594509840012,0.067566223442554,-0.009248822927475,0.068146146833897,0.100853212177753,-0.064091295003891,0.049114905297756,0.099692814052105,0.083725102245808,-0.066835433244705));
res += mul(Get(s0,dx,-dy), float4x4(0.002733696252108,0.012676654383540,-0.009958192706108,0.067741721868515,-0.009373011998832,-0.280614554882050,-0.113643065094948,-0.028676856309175,0.007089299149811,0.024165948852897,-0.007374728564173,-0.073821984231472,0.062857002019882,-0.056453485041857,0.044210676103830,-0.067125678062439));
res += mul(Get(s0,dx,0), float4x4(-0.011186623945832,-0.025896800681949,-0.083119183778763,0.053095024079084,0.053417570888996,-0.087881043553352,-0.180918946862221,0.178553506731987,0.078372500836849,-0.055130157619715,0.039774946868420,-0.030811119824648,0.002854769350961,-0.105101011693478,0.049341153353453,-0.169488027691841));
res += mul(Get(s0,dx,dy), float4x4(-0.046536337584257,0.041661430150270,-0.070827521383762,0.080763481557369,-0.060412306338549,0.025685029104352,0.277764081954956,0.067009791731834,0.000333343545208,-0.008291065692902,-0.044499337673187,0.004486718215048,0.023794287815690,-0.060308866202831,-0.002424892270938,-0.030690856277943));
res += mul(Get(s1,-dx,-dy), float4x4(-0.036131016910076,0.030177591368556,0.097540460526943,-0.010382820852101,-0.054822254925966,-0.078602835536003,-0.029098190367222,-0.069975994527340,0.084406957030296,-0.077313311398029,-0.055879436433315,0.080289490520954,-0.040416736155748,-0.036919429898262,-0.014194060117006,-0.037140313535929));
res += mul(Get(s1,-dx,0), float4x4(-0.012155608274043,-0.018354784697294,0.050406921654940,-0.005739484447986,0.071626372635365,-0.096398547291756,0.014398369938135,0.111191585659981,-0.057462278753519,-0.008694479241967,0.024136513471603,-0.036319114267826,-0.041530463844538,-0.034454848617315,0.067477926611900,-0.007413730490953));
res += mul(Get(s1,-dx,dy), float4x4(-0.044302813708782,0.002265920629725,-0.057972677052021,-0.062659345567226,-0.022845922037959,-0.058755218982697,0.139278918504715,-0.072669528424740,-0.034629039466381,0.021320588886738,-0.003560862503946,0.087736234068871,-0.049223072826862,-0.023905998095870,0.053405664861202,-0.014316861517727));
res += mul(Get(s1,0,-dy), float4x4(0.335165202617645,0.054224297404289,0.198081627488136,0.007992300204933,0.096361130475998,0.192082226276398,0.033573605120182,0.081808462738991,-0.163103803992271,0.071614079177380,-0.159497752785683,-0.032124001532793,0.054490678012371,0.061805032193661,0.097898297011852,-0.039999686181545));
res += mul(Get(s1,0,0), float4x4(-0.024932572618127,0.147861376404762,0.044845588505268,0.007137576583773,-0.009884810075164,0.016031522303820,0.021420845761895,0.042795442044735,-0.021250985562801,-0.056051254272461,-0.006403590086848,0.050948638468981,-0.039081919938326,0.130504101514816,-0.055250573903322,-0.096596837043762));
res += mul(Get(s1,0,dy), float4x4(0.023009091615677,0.059810470789671,-0.002242603804916,0.028121450915933,0.118541836738586,-0.072086676955223,0.043750215321779,0.018122792243958,0.152272179722786,-0.034816693514585,0.006004730239511,0.052227795124054,-0.026724372059107,-0.133627980947495,-0.142620950937271,-0.031842805445194));
res += mul(Get(s1,dx,-dy), float4x4(0.124159686267376,-0.142381563782692,0.026336438953876,0.004754068329930,0.189026281237602,0.103429846465588,0.183664500713348,-0.010710607282817,-0.006549788638949,0.156905874609947,-0.046233255416155,-0.019028089940548,-0.006977261044085,-0.068026654422283,0.085449256002903,-0.002787936246023));
res += mul(Get(s1,dx,0), float4x4(0.066278047859669,-0.038553748279810,-0.004984166007489,0.069894149899483,0.003770427312702,0.124429404735565,0.070576101541519,0.011046399362385,-0.037577763199806,-0.027862943708897,0.228635817766190,-0.071382559835911,0.064697846770287,0.098479926586151,-0.052943818271160,-0.039602208882570));
res += mul(Get(s1,dx,dy), float4x4(0.037646424025297,-0.057600878179073,0.034815255552530,0.000082292564912,0.030788404867053,-0.011728929355741,-0.020354203879833,0.007492178119719,-0.001510312547907,-0.117875099182129,0.011566886678338,-0.105822101235390,0.054100684821606,0.038522459566593,-0.050743989646435,-0.082973904907703));
res += mul(Get(s2,-dx,-dy), float4x4(0.013756902888417,0.000994344940409,0.124926440417767,0.024038625881076,0.018058681860566,-0.061093091964722,-0.003017459530383,-0.044748764485121,-0.009002164937556,-0.003784461412579,0.094643786549568,-0.014724400825799,-0.007562382146716,-0.002772054169327,-0.039969984441996,-0.031103732064366));
res += mul(Get(s2,-dx,0), float4x4(-0.084686420857906,0.031891196966171,0.029041845351458,-0.076891593635082,0.039261557161808,-0.003031299216673,-0.000944377796259,-0.048791702836752,0.048804096877575,0.006503898184747,0.039205133914948,0.003391733160242,0.057178452610970,0.003007750725374,-0.009467189200222,-0.088404074311256));
res += mul(Get(s2,-dx,dy), float4x4(-0.079820781946182,0.049538273364305,-0.120559237897396,0.000013928459339,-0.065056696534157,0.056097313761711,0.038396354764700,-0.031555946916342,-0.018033277243376,-0.023087799549103,-0.055303305387497,0.029209585860372,-0.003327375510707,0.125383883714676,-0.083126552402973,-0.026344111189246));
res += mul(Get(s2,0,-dy), float4x4(-0.020766843110323,0.061162430793047,-0.005382698029280,-0.025566965341568,-0.017112169414759,0.021779291331768,0.026342689990997,0.006117633543909,-0.038134437054396,0.015566370449960,0.166811540722847,0.030760908499360,0.066228859126568,0.123120620846748,0.026280868798494,-0.022139877080917));
res += mul(Get(s2,0,0), float4x4(-0.122760578989983,0.025128198787570,-0.055216703563929,-0.075580857694149,0.045422609895468,0.017165701836348,-0.026903752237558,-0.009135302156210,0.053187184035778,-0.032369542866945,0.073948949575424,-0.004586134571582,-0.000307292211801,0.039834678173065,0.074147053062916,-0.153769522905350));
res += mul(Get(s2,0,dy), float4x4(0.016986785456538,-0.016562301665545,-0.059590376913548,0.034102354198694,0.084714427590370,-0.003515738062561,0.060287486761808,-0.009695107117295,-0.032976694405079,-0.064376696944237,-0.003452296368778,-0.016108691692352,-0.011701049283147,-0.006182777229697,-0.057563651353121,-0.031389445066452));
res += mul(Get(s2,dx,-dy), float4x4(0.054986219853163,-0.105603449046612,0.002664623316377,0.055541589856148,-0.032861940562725,0.008273689076304,-0.013492800295353,-0.009659133851528,0.004081738647074,0.054369147866964,-0.001886610523798,-0.040204133838415,0.037610765546560,-0.023581899702549,-0.074489399790764,0.032331652939320));
res += mul(Get(s2,dx,0), float4x4(-0.037063840776682,-0.003470705356449,-0.096725136041641,0.129135027527809,0.050299804657698,-0.007630406413227,-0.161648035049438,-0.015964221209288,0.022935530170798,0.154183939099312,-0.002565236529335,-0.167143240571022,-0.110170692205429,0.269543051719666,0.030101610347629,0.039868522435427));
res += mul(Get(s2,dx,dy), float4x4(0.016171226277947,0.066395692527294,-0.035731635987759,0.024086533114314,-0.012325463816524,-0.048863701522350,-0.004096174146980,0.003092527855188,-0.063259571790695,-0.102289929986000,0.017797768115997,-0.061638936400414,0.040864925831556,0.176967293024063,-0.099948920309544,0.032775163650513));
res += mul(Get(s3,-dx,-dy), float4x4(-0.081830024719238,0.035120368003845,-0.152921542525291,0.044048313051462,-0.046385183930397,-0.136710211634636,-0.036132369190454,0.017828615382314,0.010171482339501,-0.155959412455559,-0.017703598365188,0.014109587296844,0.014874268323183,-0.120754577219486,-0.051889590919018,-0.050505835562944));
res += mul(Get(s3,-dx,0), float4x4(0.006506028585136,0.073415018618107,-0.123701259493828,-0.062253035604954,-0.086774460971355,-0.045339070260525,-0.044475238770247,0.025600908324122,0.123667970299721,-0.067620322108269,0.012204919010401,0.034526549279690,-0.073957130312920,0.039904948323965,-0.084331318736076,-0.051083583384752));
res += mul(Get(s3,-dx,dy), float4x4(0.012045673094690,0.015149280428886,0.057427413761616,0.042245063930750,-0.112636081874371,-0.092851422727108,0.088416785001755,0.119844406843185,-0.020695766434073,-0.000100582867162,0.083529531955719,-0.038341283798218,-0.018750922754407,0.007195414043963,-0.000354529969627,0.176783397793770));
res += mul(Get(s3,0,-dy), float4x4(-0.247246950864792,-0.091589756309986,-0.114979028701782,0.042502690106630,0.037728887051344,-0.054881460964680,0.049905516207218,-0.001951390178874,-0.076113827526569,0.145474568009377,0.010881569236517,-0.057499650865793,-0.225373283028603,0.029471836984158,-0.116845242679119,-0.029669851064682));
res += mul(Get(s3,0,0), float4x4(0.178584069013596,-0.025765804573894,-0.161547690629959,0.035494521260262,0.012987589463592,0.005203859414905,0.040746968239546,-0.026134716346860,-0.079087249934673,-0.143497124314308,-0.020715199410915,-0.133799865841866,0.220570728182793,-0.097408831119537,-0.045051664113998,0.092760972678661));
res += mul(Get(s3,0,dy), float4x4(0.093801520764828,0.061922401189804,0.044240690767765,0.056547194719315,0.023393070325255,-0.048678241670132,0.068149015307426,0.095059610903263,0.093665316700935,-0.147637054324150,-0.040914215147495,-0.018263662233949,-0.095900423824787,0.014948304742575,0.016189882531762,-0.036520332098007));
res += mul(Get(s3,dx,-dy), float4x4(-0.089586675167084,0.094654329121113,0.029327305033803,0.028865637257695,0.038424711674452,-0.043260596692562,0.012543564662337,0.010012285783887,-0.154716089367867,0.233793452382088,-0.042789757251740,0.066928848624229,-0.035971742123365,0.159116953611374,-0.032843772321939,0.036769740283489));
res += mul(Get(s3,dx,0), float4x4(-0.035616625100374,-0.005944291129708,0.171096548438072,-0.029342897236347,0.014241394586861,-0.027030749246478,0.029786886647344,0.081265702843666,0.099457152187824,0.107067048549652,0.040784478187561,0.249951004981995,0.063726738095284,0.036988358944654,0.106308646500111,0.040589932352304));
res += mul(Get(s3,dx,dy), float4x4(0.066618330776691,-0.142000898718834,0.131278082728386,-0.089988291263580,-0.033634033054113,-0.016504200175405,0.006803418509662,0.012351711280644,0.008755736052990,-0.195998832583427,-0.167295008897781,-0.006291389465332,0.022887917235494,-0.044728890061378,0.037671718746424,0.005839229095727));
return max(float4(0,0,0,0), res);
}
