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
res += mul(Get(s0,-dx,-dy), float4x4(0.034810110926628,0.044446907937527,0.240406587719917,0.110135138034821,-0.008254966698587,-0.121475696563721,-0.000555309699848,0.056531708687544,-0.082353688776493,0.078936137259007,0.141665905714035,0.041633073240519,-0.013400167226791,-0.045870997011662,0.055146459490061,0.136425882577896));
res += mul(Get(s0,-dx,0), float4x4(0.002123099286109,-0.041870988905430,0.212378859519958,-0.043744310736656,-0.102440401911736,0.033028040081263,0.062056865543127,0.062759891152382,0.075705952942371,-0.101651355624199,-0.135331213474274,-0.106663063168526,-0.148468047380447,0.015331205911934,-0.043824009597301,-0.113498151302338));
res += mul(Get(s0,-dx,dy), float4x4(-0.011011000722647,0.061426199972630,0.111112274229527,-0.046881582587957,-0.064256645739079,0.020775977522135,-0.089581198990345,0.127272352576256,0.185637861490250,0.005037850700319,0.063847184181213,0.215040877461433,0.104188069701195,-0.048646852374077,-0.059726368635893,-0.010550862178206));
res += mul(Get(s0,0,-dy), float4x4(-0.023956000804901,0.021508537232876,-0.010035181418061,0.163596868515015,0.067208662629128,0.082474507391453,0.038033328950405,0.094182133674622,-0.102961227297783,-0.163465023040771,0.037997283041477,0.039803061634302,-0.116530582308769,-0.019705113023520,0.069580413401127,0.184589013457298));
res += mul(Get(s0,0,0), float4x4(-0.024833802133799,-0.027676310390234,0.049346249550581,-0.064371652901173,0.148724719882011,-0.105841919779778,0.033073738217354,0.078708849847317,0.157421767711639,0.153321534395218,0.037731859833002,0.051859777420759,0.148968264460564,-0.020375508815050,-0.084403596818447,0.191700160503387));
res += mul(Get(s0,0,dy), float4x4(0.096568018198013,0.179739788174629,-0.067307621240616,0.015716038644314,0.106685213744640,-0.130038917064667,0.036791488528252,-0.098118148744106,-0.173801735043526,-0.009999176487327,-0.142341673374176,0.148579642176628,0.083571314811707,0.156400606036186,0.176674872636795,-0.109266743063927));
res += mul(Get(s0,dx,-dy), float4x4(-0.021871998906136,-0.081471219658852,-0.247584611177444,-0.062483932822943,-0.005853092297912,0.156233176589012,0.161558136343956,0.010352831333876,-0.023807546123862,0.144195437431335,0.074431322515011,0.004861645866185,0.076237015426159,-0.096890583634377,0.003543145023286,-0.019616011530161));
res += mul(Get(s0,dx,0), float4x4(-0.104823514819145,0.156795904040337,-0.185442253947258,-0.208453848958015,0.161918595433235,-0.143598079681396,-0.109295129776001,-0.113019973039627,-0.002312931464985,-0.007173493504524,0.034551281481981,0.072016894817352,0.028978433459997,-0.055912282317877,0.085613533854485,0.150401204824448));
res += mul(Get(s0,dx,dy), float4x4(0.070067331194878,0.018954640254378,-0.100446708500385,0.051844842731953,-0.022106494754553,0.037626806646585,-0.074291303753853,0.135895103216171,0.083620473742485,-0.037759378552437,0.096121117472649,0.081092223525047,-0.210192561149597,0.070660389959812,-0.095578350126743,-0.140368118882179));
res += mul(Get(s1,-dx,-dy), float4x4(0.118396975100040,-0.053987156599760,-0.041516732424498,-0.078146435320377,-0.184390038251877,0.067591264843941,0.017765358090401,-0.121858753263950,-0.105730786919594,-0.165376365184784,-0.088974267244339,0.051353808492422,0.096396103501320,0.103829696774483,-0.076382972300053,0.123812481760979));
res += mul(Get(s1,-dx,0), float4x4(-0.027557512745261,0.067876338958740,0.071982070803642,-0.187184602022171,0.204784959554672,0.054934863001108,-0.128611654043198,-0.050386391580105,-0.047898199409246,0.043098844587803,0.020832207053900,0.004387290216982,-0.111201979219913,-0.248556062579155,-0.167643055319786,0.119188040494919));
res += mul(Get(s1,-dx,dy), float4x4(0.049008548259735,0.243161916732788,-0.043689094483852,0.078525565564632,0.128993242979050,0.023386321961880,0.103013902902603,0.084090657532215,-0.071989223361015,0.052070844918489,-0.006746103521436,-0.019986554980278,-0.220852971076965,0.058440182358027,-0.107813753187656,-0.029785584658384));
res += mul(Get(s1,0,-dy), float4x4(-0.008674048818648,0.121690899133682,-0.179543286561966,-0.011688554659486,0.146833688020706,0.016243627294898,0.014380270615220,0.003243690822273,0.183633595705032,-0.107798479497433,-0.030069269239902,0.000426550162956,-0.027568809688091,0.026348883286119,-0.005969826597720,-0.044978991150856));
res += mul(Get(s1,0,0), float4x4(0.014536015689373,-0.081350557506084,-0.010136405006051,0.061295583844185,-0.277414888143539,-0.131163522601128,-0.080145157873631,-0.053383275866508,-0.087491758167744,0.133030101656914,0.015680009499192,-0.126552492380142,0.062477428466082,-0.082040958106518,0.052942726761103,0.018365619704127));
res += mul(Get(s1,0,dy), float4x4(0.146936535835266,-0.145462900400162,0.241270899772644,-0.191638246178627,0.058986254036427,-0.010987480171025,-0.068973436951637,-0.030095560476184,0.040752343833447,-0.101062625646591,0.038074225187302,0.014258277602494,0.000743445591070,-0.052618999034166,0.052032776176929,-0.045922093093395));
res += mul(Get(s1,dx,-dy), float4x4(-0.047412756830454,0.067280828952789,0.135614931583405,-0.006692680530250,0.148548007011414,-0.134703740477562,0.042551580816507,0.035183470696211,-0.069745026528835,-0.091156609356403,0.080679573118687,0.304416060447693,0.009631395339966,0.029325086623430,0.019089421257377,0.004135862924159));
res += mul(Get(s1,dx,0), float4x4(0.061845801770687,0.171307891607285,0.004192928317934,-0.044162306934595,-0.090113818645477,0.151323959231377,-0.024434834718704,-0.023501219227910,0.043142553418875,0.041758626699448,0.045539319515228,0.013518158346415,-0.185988590121269,0.034130193293095,0.084853835403919,-0.089035674929619));
res += mul(Get(s1,dx,dy), float4x4(0.003151393262669,-0.033176094293594,0.002856040373445,-0.010428750887513,0.043059952557087,0.162956550717354,0.118382960557938,0.013182479888201,0.088752761483192,-0.061353683471680,0.087506331503391,-0.090292386710644,-0.043209105730057,0.124707698822021,-0.185600802302361,0.008162712678313));
res += mul(Get(s2,-dx,-dy), float4x4(-0.289250344038010,-0.167046040296555,0.141524001955986,-0.057657033205032,0.099657565355301,-0.148897096514702,0.264143645763397,0.219357833266258,-0.056333381682634,0.142647758126259,-0.053924664855003,0.019921800121665,0.071458086371422,0.019472358748317,-0.084615468978882,0.171668350696564));
res += mul(Get(s2,-dx,0), float4x4(0.009674821048975,-0.078928783535957,-0.047848157584667,0.051465764641762,-0.106085769832134,0.135084807872772,0.182644203305244,-0.028929734602571,0.031377863138914,0.297615051269531,-0.257283747196198,0.050882700830698,0.331638187170029,0.020764078944921,0.097183518111706,0.010400310158730));
res += mul(Get(s2,-dx,dy), float4x4(0.053179956972599,-0.000042869160097,0.118476673960686,-0.009811743162572,0.010885558091104,-0.176606550812721,0.029075844213367,-0.059723414480686,0.027687165886164,0.016157433390617,-0.009836356155574,-0.027864759787917,0.066902227699757,-0.165416821837425,-0.034429877996445,-0.044134356081486));
res += mul(Get(s2,0,-dy), float4x4(-0.029462246224284,0.155320882797241,-0.119180232286453,-0.002451756270602,-0.081958390772343,0.045189373195171,-0.061986684799194,0.005622348748147,0.119395874440670,-0.069823831319809,0.039780341088772,-0.059594228863716,-0.219272390007973,0.098307825624943,0.063112244009972,-0.134470298886299));
res += mul(Get(s2,0,0), float4x4(-0.046935889869928,-0.047578971832991,0.075117118656635,0.115425974130630,-0.048247393220663,0.126463055610657,-0.060137007385492,0.083251833915710,0.108418978750706,-0.106072284281254,0.174485638737679,0.091570369899273,0.166735604405403,0.066260322928429,0.129207551479340,0.022065859287977));
res += mul(Get(s2,0,dy), float4x4(0.132547408342361,-0.142715871334076,0.072948016226292,0.080240815877914,-0.154979854822159,0.079308085143566,-0.040366943925619,-0.172048211097717,-0.221787616610527,-0.059306629002094,0.070821233093739,0.238513231277466,-0.060511842370033,0.006293041631579,-0.028977639973164,0.090940274298191));
res += mul(Get(s2,dx,-dy), float4x4(-0.006256983615458,-0.103710658848286,0.209599867463112,0.066739797592163,0.066032208502293,-0.067735753953457,0.129270687699318,0.074701830744743,-0.051423657685518,-0.245734006166458,0.183096542954445,0.081106469035149,-0.011863807216287,-0.073714554309845,0.078038275241852,0.024995315819979));
res += mul(Get(s2,dx,0), float4x4(-0.089449986815453,-0.072185300290585,0.084058739244938,0.125966340303421,0.063859105110168,-0.139548704028130,-0.103521548211575,0.013686148449779,0.093460388481617,-0.034003667533398,-0.054576091468334,0.005188266746700,-0.062836505472660,-0.160888403654099,-0.061831578612328,0.162564113736153));
res += mul(Get(s2,dx,dy), float4x4(0.045274406671524,0.118428394198418,-0.006759323645383,0.130054667592049,0.140401959419250,-0.077324405312538,-0.139006376266479,0.165654435753822,-0.045688867568970,0.088062524795532,-0.125825330615044,0.039282258599997,-0.119721725583076,0.096711248159409,-0.228004992008209,0.008444502949715));
res += mul(Get(s3,-dx,-dy), float4x4(-0.145722091197968,0.099306792020798,-0.030868098139763,0.140550345182419,0.127644672989845,-0.073871657252312,0.009462250396609,0.007891155779362,0.203882858157158,-0.104404449462891,-0.067412793636322,0.118247129023075,-0.019228562712669,0.060933757573366,0.013868981041014,-0.286517560482025));
res += mul(Get(s3,-dx,0), float4x4(-0.036313645541668,-0.097770012915134,-0.049239609390497,-0.007525182329118,-0.045213975012302,-0.087526619434357,-0.148882642388344,-0.055538233369589,0.177312105894089,0.064979419112206,0.000047518606152,-0.086533516645432,-0.091181844472885,0.004468282219023,-0.066959649324417,-0.118424609303474));
res += mul(Get(s3,-dx,dy), float4x4(0.034257587045431,-0.198694080114365,-0.040981799364090,0.053132914006710,0.035134624689817,0.003187799360603,0.169628560543060,-0.060740418732166,-0.059243455529213,0.069350183010101,0.075190261006355,-0.068101212382317,0.183939859271049,-0.249044880270958,-0.003460250329226,-0.011386170051992));
res += mul(Get(s3,0,-dy), float4x4(0.131774514913559,-0.018542626872659,-0.150852948427200,0.007554555311799,0.105338118970394,0.115385256707668,0.026643494144082,-0.063087739050388,0.117008604109287,0.040419310331345,-0.047466952353716,-0.052846752107143,0.244122892618179,0.007093570195138,-0.048967175185680,-0.056695949286222));
res += mul(Get(s3,0,0), float4x4(0.036237720400095,0.061098236590624,0.090577505528927,-0.129652082920074,-0.043030194938183,0.006933259777725,0.073412291705608,0.089290924370289,0.047727961093187,-0.016026873141527,-0.002266419352964,0.161471098661423,0.042080912739038,0.084032990038395,0.023642379790545,-0.102932929992676));
res += mul(Get(s3,0,dy), float4x4(0.084073230624199,0.238455116748810,0.039874929934740,0.088431634008884,-0.132159158587456,0.040192380547523,0.058367710560560,-0.062896184623241,0.042280524969101,-0.008811557665467,-0.120298855006695,0.164443895220757,0.017351033166051,0.182923749089241,-0.077355913817883,-0.082649596035480));
res += mul(Get(s3,dx,-dy), float4x4(0.061246499419212,0.059798676520586,-0.008807563222945,-0.159862414002419,0.024273687973619,-0.000967958010733,-0.065593592822552,0.077241584658623,0.036814257502556,-0.101809099316597,0.019278187304735,0.077416412532330,0.050825681537390,-0.001356116845272,-0.012830790132284,-0.023420220240951));
res += mul(Get(s3,dx,0), float4x4(0.076479442417622,0.191627621650696,0.030503300949931,-0.120364576578140,-0.075004562735558,-0.041455060243607,-0.093415275216103,-0.002919263439253,-0.194231554865837,-0.011150746606290,0.135387182235718,0.003799515776336,0.121015168726444,-0.068543866276741,-0.023220151662827,0.021865718066692));
res += mul(Get(s3,dx,dy), float4x4(0.011473135091364,0.058712717145681,0.038183782249689,0.162935242056847,-0.012083318084478,0.198426157236099,0.122599795460701,0.068451099097729,-0.095563791692257,0.105652377009392,-0.060426983982325,-0.120167851448059,-0.020672366023064,-0.023518381640315,0.038595382124186,0.086912460625172));
return max(float4(0,0,0,0), res);
}
