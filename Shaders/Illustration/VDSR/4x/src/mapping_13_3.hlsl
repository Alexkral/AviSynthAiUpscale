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
res += mul(Get(s0,-dx,-dy), float4x4(0.046193528920412,-0.046768214553595,-0.052730288356543,0.189389213919640,0.082698285579681,0.211002036929131,0.173985242843628,-0.018831003457308,-0.030075017362833,-0.099775657057762,0.093227878212929,0.155440032482147,0.161252722144127,-0.096835397183895,-0.141858309507370,0.039633542299271));
res += mul(Get(s0,-dx,0), float4x4(0.317535907030106,-0.004513252992183,-0.118993148207664,-0.084128573536873,-0.125163182616234,0.113900229334831,-0.001564542413689,-0.173929661512375,0.012900080531836,0.044338431209326,0.178866744041443,0.217669472098351,0.033372458070517,0.047802392393351,-0.049031976610422,-0.040065940469503));
res += mul(Get(s0,-dx,dy), float4x4(0.187482491135597,0.069990418851376,0.006415115203708,-0.062832482159138,0.139329195022583,-0.050640545785427,0.081882871687412,0.105280414223671,0.232494443655014,0.067915946245193,-0.084663152694702,-0.060691975057125,-0.083202220499516,-0.130074620246887,-0.018746985122561,0.020800946280360));
res += mul(Get(s0,0,-dy), float4x4(0.093322992324829,-0.101689338684082,0.005319319665432,0.003925513010472,0.181990042328835,-0.112151198089123,0.186806574463844,-0.017380129545927,0.140259549021721,-0.008363988250494,-0.233230471611023,0.044847488403320,0.028294352814555,-0.146761268377304,0.006381002254784,0.069082029163837));
res += mul(Get(s0,0,0), float4x4(-0.221946075558662,-0.017513370141387,0.130186080932617,0.103837810456753,0.008062957786024,0.180952802300453,0.115404114127159,-0.093795053660870,-0.154685899615288,0.073549114167690,0.015882674604654,0.123140312731266,0.167050600051880,0.018103919923306,-0.030064148828387,0.122006736695766));
res += mul(Get(s0,0,dy), float4x4(0.004231994040310,0.041337057948112,0.125889897346497,-0.054877787828445,-0.031494893133640,0.001631439896300,-0.059367071837187,-0.069642573595047,-0.011754251085222,0.031365860253572,-0.095232285559177,-0.105331487953663,-0.050967894494534,-0.083571605384350,0.240491479635239,0.037911500781775));
res += mul(Get(s0,dx,-dy), float4x4(-0.059302691370249,0.020297398790717,-0.093693509697914,0.007561611011624,0.139757513999939,0.187805190682411,-0.087077081203461,-0.071364305913448,-0.106660544872284,-0.092046074569225,0.108756534755230,0.132322758436203,0.069501921534538,-0.164739429950714,0.144516676664352,0.250209093093872));
res += mul(Get(s0,dx,0), float4x4(-0.001077058492228,0.015032973140478,-0.074794091284275,-0.008590823970735,-0.037694633007050,-0.211193680763245,-0.076189436018467,-0.123941645026207,-0.118482396006584,0.093065239489079,-0.212146610021591,-0.180281758308411,-0.065980061888695,-0.230739817023277,0.190143033862114,-0.049982853233814));
res += mul(Get(s0,dx,dy), float4x4(-0.071050621569157,-0.178601801395416,0.060773998498917,-0.094364963471889,-0.013310257345438,0.050511248409748,-0.135718926787376,-0.195842146873474,0.149216651916504,0.250851780176163,-0.075296148657799,-0.135197445750237,0.079819776117802,-0.002207917394117,0.255876988172531,-0.180401027202606));
res += mul(Get(s1,-dx,-dy), float4x4(0.278214633464813,0.204034015536308,-0.042806059122086,-0.000869214767590,-0.010423962026834,0.012589158490300,0.193732663989067,-0.060220956802368,-0.157885417342186,0.031420532613993,0.070524774491787,-0.020832771435380,-0.105315156280994,0.015600467100739,-0.138532325625420,-0.041686993092299));
res += mul(Get(s1,-dx,0), float4x4(0.033590156584978,-0.206491053104401,0.055747628211975,-0.136299043893814,-0.210805058479309,-0.068424582481384,0.171270102262497,-0.069187045097351,-0.084696926176548,-0.021341351792216,-0.021349344402552,-0.013730549253523,-0.210512459278107,-0.015287961810827,-0.063721410930157,-0.182983279228210));
res += mul(Get(s1,-dx,dy), float4x4(0.075625590980053,-0.181803524494171,0.126314058899879,0.125772595405579,-0.169598966836929,0.119848802685738,-0.015703856945038,0.191417992115021,0.085159189999104,-0.264782041311264,0.198043391108513,-0.092555247247219,-0.026322631165385,-0.137034565210342,0.011089000850916,0.009129211306572));
res += mul(Get(s1,0,-dy), float4x4(0.016611246392131,0.119094617664814,-0.122294783592224,-0.054392129182816,0.045960623770952,0.027579929679632,0.076472766697407,-0.027593502774835,-0.134274989366531,0.111604243516922,0.094240739941597,0.007925917394459,-0.143716871738434,0.168945550918579,-0.034570813179016,0.006553882267326));
res += mul(Get(s1,0,0), float4x4(0.171405866742134,0.055531110614538,0.065995588898659,0.059875335544348,0.086735382676125,-0.121528953313828,0.002828856930137,0.099609307944775,-0.162969872355461,0.075555801391602,0.039920855313540,0.072238959372044,-0.095212884247303,0.194507524371147,-0.079248622059822,0.013141615316272));
res += mul(Get(s1,0,dy), float4x4(0.052107572555542,0.227550864219666,0.074694551527500,0.020656032487750,-0.057981107383966,-0.096073314547539,-0.240564316511154,0.103273786604404,0.095479369163513,-0.128162294626236,0.062124013900757,-0.004372436087579,0.006174765527248,0.139096990227699,0.060065317898989,0.097283735871315));
res += mul(Get(s1,dx,-dy), float4x4(-0.041872873902321,0.148476347327232,-0.157413601875305,-0.153084605932236,-0.042383957654238,-0.092675745487213,0.237386181950569,-0.001015737536363,0.010512319393456,-0.059520822018385,0.128442779183388,0.019096909090877,-0.043001603335142,0.017381804063916,-0.102553501725197,-0.032058965414762));
res += mul(Get(s1,dx,0), float4x4(0.026536487042904,0.020476859062910,0.039500486105680,0.049789581447840,0.169576078653336,-0.059859383851290,-0.260491073131561,-0.011498476378620,-0.026772236451507,-0.007068224251270,-0.037927299737930,-0.120511479675770,0.062695890665054,-0.097093768417835,-0.220752909779549,0.056439843028784));
res += mul(Get(s1,dx,dy), float4x4(0.058733407407999,-0.103113375604153,0.075562655925751,-0.167321532964706,0.138152554631233,0.027296757325530,0.166132912039757,-0.013699091970921,-0.113235533237457,0.023201527073979,0.052171412855387,-0.038946341723204,-0.048000488430262,0.116013959050179,-0.078484833240509,-0.208322286605835));
res += mul(Get(s2,-dx,-dy), float4x4(0.024264413863420,-0.239915370941162,0.104294508695602,-0.076020553708076,0.039801150560379,-0.175972118973732,0.043843504041433,-0.006852507591248,0.232189044356346,-0.168301790952682,-0.071496970951557,-0.203204244375229,0.127733081579208,0.126690432429314,-0.108486548066139,0.264893919229507));
res += mul(Get(s2,-dx,0), float4x4(-0.069081149995327,-0.125294938683510,-0.170994251966476,-0.006242052651942,-0.176206246018410,-0.175608456134796,-0.076363697648048,-0.145414769649506,-0.045079309493303,-0.003562633180991,0.154036775231361,-0.033436518162489,0.023529319092631,-0.026673622429371,-0.188940525054932,-0.037508752197027));
res += mul(Get(s2,-dx,dy), float4x4(0.067388623952866,0.037221316248178,-0.102100625634193,-0.182026326656342,-0.267471313476563,0.218880340456963,0.076777555048466,0.112385801970959,0.187439158558846,-0.041268412023783,0.186335027217865,-0.027345830574632,0.145735442638397,-0.124795965850353,0.045526586472988,-0.105189636349678));
res += mul(Get(s2,0,-dy), float4x4(-0.034080717712641,0.033204119652510,0.039108321070671,0.183758407831192,-0.052701666951180,-0.245001703500748,0.101844154298306,-0.019014736637473,0.067273527383804,-0.089932851493359,-0.037394762039185,0.145022824406624,-0.099537007510662,-0.049239195883274,-0.071626737713814,0.132870152592659));
res += mul(Get(s2,0,0), float4x4(0.036561410874128,-0.058961078524590,0.008134899660945,-0.180661842226982,0.021137857809663,0.152400016784668,-0.064065925776958,0.017878750339150,0.109541498124599,0.023872287943959,-0.002757663140073,-0.154208347201347,0.119938492774963,-0.038000386208296,-0.175290957093239,-0.002668043365702));
res += mul(Get(s2,0,dy), float4x4(0.321627408266068,0.085400849580765,-0.056820750236511,-0.074236199259758,-0.104126848280430,0.104781121015549,0.099825784564018,-0.074056118726730,0.025333609431982,0.149356558918953,-0.005195967387408,-0.083872511982918,0.054618202149868,-0.164043053984642,-0.075427383184433,-0.091082118451595));
res += mul(Get(s2,dx,-dy), float4x4(0.041114442050457,-0.059744410216808,-0.015041355974972,-0.019873745739460,0.159555777907372,0.088786780834198,0.045437354594469,-0.405958414077759,0.025388393551111,-0.003516831668094,-0.067962631583214,-0.035596605390310,0.182837635278702,0.034135155379772,0.034791987389326,0.133957892656326));
res += mul(Get(s2,dx,0), float4x4(-0.075575172901154,-0.143247142434120,-0.010591854341328,-0.061695639044046,0.036379028111696,-0.142579644918442,0.179235115647316,-0.013171742670238,-0.198240756988525,-0.010614021681249,-0.165851384401321,-0.140816375613213,0.122285284101963,-0.116723105311394,-0.058909676969051,0.026152003556490));
res += mul(Get(s2,dx,dy), float4x4(0.050662256777287,-0.016352875158191,0.026711724698544,0.109800979495049,0.082406647503376,0.177157789468765,0.087399959564209,0.329306066036224,-0.145585194230080,-0.070869594812393,-0.139177843928337,-0.117258578538895,0.122664749622345,0.047843445092440,0.058614816516638,-0.056921150535345));
res += mul(Get(s3,-dx,-dy), float4x4(-0.114837281405926,-0.165869399905205,0.109091199934483,0.052935764193535,-0.101115107536316,-0.068982280790806,0.099381417036057,0.148583427071571,0.030375784263015,-0.092181183397770,0.049971841275692,0.063724078238010,-0.157859712839127,-0.126039683818817,0.003073017811403,-0.004736500326544));
res += mul(Get(s3,-dx,0), float4x4(-0.089531220495701,0.095961801707745,0.050046104937792,0.125296488404274,0.061449032276869,-0.022289928048849,0.083772987127304,0.071636900305748,-0.017133308574557,-0.099035523831844,-0.011555988341570,-0.065334044396877,-0.015513489022851,0.085193850100040,-0.139014631509781,-0.020759932696819));
res += mul(Get(s3,-dx,dy), float4x4(-0.205247685313225,-0.013817164115608,-0.014940592460334,0.133966788649559,0.177702426910400,-0.153941869735718,-0.143686965107918,-0.216258153319359,-0.245601728558540,-0.140465334057808,0.066094033420086,0.008768878877163,0.025950312614441,-0.056129939854145,-0.089438073337078,0.030783513560891));
res += mul(Get(s3,0,-dy), float4x4(0.063603937625885,0.019571725279093,0.098988972604275,-0.051670007407665,0.077172033488750,-0.202905654907227,-0.224187538027763,-0.047622077167034,0.088534668087959,-0.145185351371765,0.029170196503401,0.011789321899414,0.047599095851183,0.001866398146376,-0.120779655873775,-0.076373010873795));
res += mul(Get(s3,0,0), float4x4(-0.015376700088382,-0.042001500725746,-0.032324790954590,-0.073871105909348,-0.114948235452175,0.110500164330006,-0.001530831446871,0.174689128994942,-0.152418762445450,-0.056857079267502,0.042132861912251,0.123606316745281,0.031273253262043,-0.000201237489819,0.057296037673950,-0.002809156896546));
res += mul(Get(s3,0,dy), float4x4(-0.202399089932442,0.080117471516132,0.133851796388626,-0.127018243074417,-0.072814404964447,0.064096003770828,0.036017674952745,-0.019680041819811,0.032038349658251,-0.164749726653099,-0.096404746174812,0.150900483131409,-0.018722776323557,-0.051279015839100,0.183683827519417,-0.015569745562971));
res += mul(Get(s3,dx,-dy), float4x4(-0.020372640341520,0.044974341988564,0.065234862267971,-0.074268154799938,0.034496262669563,-0.106409244239330,-0.015154868364334,0.034553140401840,-0.062549665570259,0.017440879717469,0.113344140350819,-0.062131974846125,-0.156167656183243,-0.090720519423485,0.039585653692484,0.225285097956657));
res += mul(Get(s3,dx,0), float4x4(-0.050032652914524,-0.002430869266391,0.067676618695259,0.074318848550320,-0.175442099571228,0.105808213353157,-0.006982530467212,0.039892893284559,-0.098045162856579,0.006735987029970,0.009308395907283,-0.017078880220652,-0.007739379070699,-0.044022142887115,0.177274748682976,0.045445062220097));
res += mul(Get(s3,dx,dy), float4x4(-0.359400302171707,0.108289614319801,0.024286586791277,0.094095811247826,-0.218682467937469,-0.103045552968979,0.013638692907989,0.015827078372240,0.043119683861732,0.052117206156254,-0.059667780995369,0.051734991371632,-0.035108208656311,0.074883654713631,0.019187329337001,0.066411525011063));
return max(float4(0,0,0,0), res);
}