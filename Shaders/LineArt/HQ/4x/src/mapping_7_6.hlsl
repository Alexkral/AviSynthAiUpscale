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
float4 res = float4(-0.250237971544266,-0.111956030130386,-0.061902552843094,-0.109018690884113);
res += mul(Get(s0,-dx,-dy), float4x4(0.139113917946815,0.001629898790270,-0.194795116782188,-0.061746444553137,-0.112027689814568,0.145273432135582,-0.151208266615868,-0.143568068742752,0.045389402657747,0.071148149669170,-0.076590135693550,-0.018847072497010,0.051887329667807,0.092696540057659,0.074519932270050,0.051915664225817));
res += mul(Get(s0,-dx,0), float4x4(0.032800447195768,-0.017750784754753,0.162646055221558,0.044224061071873,-0.036937315016985,0.078080326318741,-0.235777527093887,0.047309760004282,0.105211801826954,0.077608302235603,-0.075806714594364,0.037583243101835,0.079963169991970,-0.063190273940563,-0.078550815582275,-0.019657835364342));
res += mul(Get(s0,-dx,dy), float4x4(0.023485980927944,-0.000795073050540,0.010802751407027,-0.023081619292498,0.022071270272136,0.049206189811230,-0.320042192935944,0.135471865534782,-0.015231651253998,-0.136732667684555,-0.041245728731155,0.053920220583677,-0.128608286380768,0.000767496938352,0.144438818097115,-0.017329998314381));
res += mul(Get(s0,0,-dy), float4x4(0.113036021590233,-0.083488538861275,0.198288843035698,0.192380145192146,0.163333088159561,0.213767543435097,-0.210063919425011,0.132711216807365,-0.109525687992573,-0.157899856567383,-0.048364955931902,-0.009837207384408,0.057319059967995,-0.145368874073029,-0.123494625091553,0.058629568666220));
res += mul(Get(s0,0,0), float4x4(0.021793052554131,-0.056690372526646,0.090707033872604,0.273483693599701,0.111349225044250,-0.334431707859039,-0.149320632219315,-0.358964055776596,-0.123818472027779,-0.384852766990662,0.315234780311584,-0.053270861506462,0.163503587245941,0.095232762396336,-0.239912033081055,0.033712346106768));
res += mul(Get(s0,0,dy), float4x4(0.224320128560066,-0.000960522622336,-0.128879070281982,-0.091747254133224,0.216564387083054,0.113306432962418,-0.035218391567469,0.132444918155670,0.017968105152249,0.024333357810974,0.128537327051163,0.085996583104134,-0.044612362980843,0.041539497673512,0.010938847437501,0.050077084451914));
res += mul(Get(s0,dx,-dy), float4x4(-0.037752386182547,0.032775878906250,-0.027820149436593,0.031674221158028,0.114570066332817,0.031271778047085,-0.071229554712772,0.031285136938095,0.145264506340027,-0.016282064840198,-0.116832815110683,-0.030374813824892,-0.021709585562348,-0.076397240161896,0.000907693174668,-0.018740817904472));
res += mul(Get(s0,dx,0), float4x4(0.159086510539055,-0.321026504039764,-0.162999629974365,-0.140164479613304,-0.094290897250175,0.128844693303108,0.098643355071545,0.037518702447414,0.081450052559376,-0.239023357629776,-0.295260697603226,0.086671903729439,0.229991450905800,0.270142048597336,-0.121266625821590,0.098971426486969));
res += mul(Get(s0,dx,dy), float4x4(-0.046027835458517,0.119451694190502,0.049320179969072,0.013914151117206,-0.101269245147705,0.129731819033623,0.003065414726734,0.005718595813960,-0.032589763402939,0.212916821241379,-0.061353523284197,0.021916171535850,-0.082757674157619,-0.047752756625414,0.082948975265026,-0.059708185493946));
res += mul(Get(s1,-dx,-dy), float4x4(0.122137725353241,0.016679296270013,-0.149821132421494,-0.021654756739736,-0.104704141616821,0.004785529337823,0.082880087196827,0.131698712706566,-0.243102341890335,0.044311158359051,0.072086393833160,0.109356880187988,-0.044739518314600,-0.001877807429992,0.021391656249762,-0.094328336417675));
res += mul(Get(s1,-dx,0), float4x4(0.231943115592003,0.020748548209667,-0.001360828522593,-0.239797085523605,0.044471979141235,0.215347513556480,-0.122734390199184,0.001687379321083,-0.021900912746787,0.092777393758297,-0.076993048191071,0.161830857396126,0.059649843722582,0.057004090398550,0.257649779319763,-0.188660249114037));
res += mul(Get(s1,-dx,dy), float4x4(0.076081939041615,0.024486992508173,-0.048898585140705,0.042663335800171,0.156747698783875,0.004713085014373,-0.249494791030884,-0.216450318694115,-0.003861550940201,-0.016275009140372,-0.004389022942632,0.012968061491847,-0.088880836963654,0.069611817598343,-0.029247645288706,-0.086354836821556));
res += mul(Get(s1,0,-dy), float4x4(0.051613628864288,-0.047079838812351,0.082755468785763,-0.028880976140499,-0.074053652584553,0.146015182137489,0.035056181252003,0.220515921711922,-0.190791040658951,-0.046321723610163,0.077746756374836,0.263213872909546,0.086881332099438,0.021792765706778,-0.010103741660714,-0.139846950769424));
res += mul(Get(s1,0,0), float4x4(-0.085659131407738,-0.067825779318810,0.074345484375954,-0.272966951131821,0.220891281962395,-0.184663459658623,-0.106619402766228,0.015020270831883,-0.064621284604073,-0.125065878033638,-0.062949299812317,0.189627379179001,0.083085656166077,0.335647553205490,0.016592394560575,0.024627096951008));
res += mul(Get(s1,0,dy), float4x4(-0.019249727949500,0.015255664475262,0.007381812203676,0.188749089837074,0.290740400552750,-0.197985887527466,-0.032365169376135,-0.144824907183647,0.050708014518023,0.064756684005260,0.017229091376066,-0.050904449075460,-0.121584206819534,0.129444971680641,0.045564368367195,0.044666502624750));
res += mul(Get(s1,dx,-dy), float4x4(-0.004180704243481,0.099367439746857,-0.026597518473864,0.072361811995506,-0.045869458466768,0.089297406375408,0.014083575457335,0.006899452768266,-0.269416868686676,0.039902657270432,0.039304167032242,0.100783139467239,0.016387907788157,0.104027718305588,0.064841382205486,-0.055176295340061));
res += mul(Get(s1,dx,0), float4x4(-0.085115760564804,0.050730627030134,0.350482106208801,-0.030705701559782,-0.078178733587265,-0.062165189534426,-0.044054828584194,0.001296834554523,-0.068193428218365,-0.034189552068710,-0.019141266122460,0.185382261872292,0.095848828554153,-0.055397029966116,-0.118582807481289,-0.032049488276243));
res += mul(Get(s1,dx,dy), float4x4(-0.097534880042076,-0.039809931069613,0.014968596398830,0.057313848286867,0.133662387728691,0.170905843377113,-0.111813090741634,0.209301099181175,0.106102414429188,-0.039178263396025,0.046597529202700,-0.051538448780775,0.052692368626595,0.008392375893891,0.000584352936130,0.011503634974360));
res += mul(Get(s2,-dx,-dy), float4x4(-0.101657241582870,0.031140157952905,0.058803196996450,0.014721870422363,0.048730179667473,-0.018959989771247,-0.093010969460011,-0.099753715097904,-0.046553775668144,-0.102209933102131,0.013099539093673,0.046030052006245,0.017694247886539,-0.029211463406682,0.050565168261528,0.007443733979017));
res += mul(Get(s2,-dx,0), float4x4(-0.122892275452614,-0.011869938112795,0.040941640734673,0.060395143926144,0.047052886337042,-0.136186584830284,-0.004343122709543,-0.100274212658405,0.010786158964038,0.045714240521193,0.160558104515076,0.177584454417229,0.025034852325916,0.031612973660231,-0.120588265359402,0.145732611417770));
res += mul(Get(s2,-dx,dy), float4x4(0.004167323000729,0.055091802030802,-0.043738223612309,-0.004412722308189,0.196587309241295,-0.016259068623185,-0.000878563732840,-0.091382056474686,0.100392915308475,-0.024031227454543,-0.006655632983893,-0.015122937038541,0.053424954414368,-0.031537715345621,0.041155382990837,-0.005986936856061));
res += mul(Get(s2,0,-dy), float4x4(-0.069364644587040,0.158900186419487,0.024384478107095,-0.047877851873636,-0.076929636299610,-0.295551717281342,0.042220849543810,-0.285359293222427,-0.085363283753395,-0.061227682977915,0.084470771253109,-0.068671576678753,-0.055225022137165,0.167040258646011,0.018483458086848,0.112374752759933));
res += mul(Get(s2,0,0), float4x4(-0.180751368403435,0.006535672582686,-0.036153044551611,0.009341618977487,-0.090398997068405,-0.105042733252048,0.178076073527336,0.465953409671783,-0.415684312582016,0.007674211636186,0.194569617509842,0.251194447278976,0.270409435033798,-0.131493240594864,-0.237196326255798,0.195708498358727));
res += mul(Get(s2,0,dy), float4x4(0.019637335091829,0.096239052712917,-0.105988651514053,-0.067129500210285,0.098647452890873,-0.055400442332029,0.038146831095219,-0.130807206034660,0.048462957143784,-0.146709889173508,-0.019353451207280,0.108210273087025,0.034559678286314,0.068398170173168,-0.086444102227688,-0.095139607787132));
res += mul(Get(s2,dx,-dy), float4x4(-0.090815849602222,-0.059473764151335,0.084338456392288,0.008082231506705,0.100790761411190,0.109743341803551,0.015870509669185,-0.013376461341977,-0.034262128174305,-0.127591073513031,-0.052139673382044,-0.007246044464409,0.031461533159018,-0.121983081102371,-0.139727354049683,-0.095259591937065));
res += mul(Get(s2,dx,0), float4x4(0.109426006674767,-0.357520431280136,-0.201624765992165,-0.215350732207298,-0.238178744912148,-0.003532795002684,0.261842399835587,0.094047106802464,0.040734112262726,0.022991301491857,0.091542750597000,0.043918430805206,-0.071241416037083,0.066457152366638,-0.041580963879824,0.045959942042828));
res += mul(Get(s2,dx,dy), float4x4(-0.079126834869385,-0.026613781228662,0.066662862896919,0.026450363919139,0.117619030177593,-0.100743092596531,-0.087650597095490,-0.100789994001389,-0.097826518118382,0.117728680372238,0.034447528421879,0.009632553905249,0.005521166604012,0.000680250755977,-0.047156315296888,-0.012994776479900));
res += mul(Get(s3,-dx,-dy), float4x4(0.091994084417820,0.104672990739346,-0.125063627958298,0.030017839744687,-0.024333341047168,-0.039223182946444,-0.010948652401567,0.030319625511765,-0.024808352813125,-0.137383773922920,0.050051096826792,0.092407651245594,-0.109278351068497,-0.042482919991016,0.007250037044287,0.123761102557182));
res += mul(Get(s3,-dx,0), float4x4(-0.058502748608589,0.078715451061726,-0.074850283563137,-0.067961342632771,-0.000916053541005,0.062909655272961,0.116870813071728,0.001864265766926,0.240669712424278,0.082760646939278,-0.225925296545029,-0.281307816505432,-0.103769205510616,-0.184136584401131,0.186040893197060,-0.090926215052605));
res += mul(Get(s3,-dx,dy), float4x4(-0.007122959941626,0.009703181684017,0.029323643073440,0.139272645115852,-0.073252215981483,-0.035411871969700,0.037211935967207,-0.033897966146469,0.168649837374687,-0.075609326362610,-0.116835542023182,0.026336288079619,0.072592899203300,0.000791537051555,0.057767909020185,-0.009233689866960));
res += mul(Get(s3,0,-dy), float4x4(0.117292754352093,0.096885859966278,0.043180741369724,-0.018212683498859,0.001638938789256,0.304458439350128,0.024503296241164,0.199057012796402,-0.024780781939626,-0.030237691476941,0.074099525809288,0.003004010766745,-0.061142306774855,0.155897945165634,-0.036779385060072,0.173105537891388));
res += mul(Get(s3,0,0), float4x4(-0.164540305733681,0.303506523370743,-0.298047780990601,0.015330635011196,0.500738680362701,-0.748464941978455,-0.129625424742699,-0.435528159141541,-0.003006034530699,-0.162877261638641,0.154812604188919,-0.238958001136780,-0.062842942774296,0.183875307440758,-0.084757745265961,-0.317008346319199));
res += mul(Get(s3,0,dy), float4x4(-0.049485076218843,0.160053059458733,-0.021936481818557,-0.060211919248104,0.182579100131989,-0.033382147550583,-0.084389597177505,-0.034374199807644,-0.031125050038099,-0.256060868501663,0.345097601413727,-0.086843155324459,0.273641645908356,-0.078536488115788,0.049959171563387,0.049477599561214));
res += mul(Get(s3,dx,-dy), float4x4(0.083898738026619,-0.009893352165818,-0.047568935900927,-0.000879190221895,0.071238920092583,-0.040732327848673,-0.150285542011261,-0.010239745490253,-0.067392073571682,-0.088647894561291,-0.050907727330923,0.002863422967494,-0.026074863970280,-0.028943663462996,-0.034110870212317,0.057635862380266));
res += mul(Get(s3,dx,0), float4x4(0.079246178269386,0.076913498342037,-0.064430251717567,0.023192385211587,0.071514964103699,0.216076761484146,0.109781846404076,0.065658010542393,-0.128519669175148,0.032308176159859,0.061838909983635,0.036712020635605,0.138820409774780,-0.102954611182213,-0.203552603721619,-0.107673361897469));
res += mul(Get(s3,dx,dy), float4x4(0.140156984329224,0.013603617437184,-0.112305477261543,0.044515199959278,-0.055242553353310,0.107999891042709,0.083650626242161,0.056001413613558,-0.008541014976799,0.117258623242378,0.095689766108990,-0.069960765540600,-0.042386841028929,0.072696179151535,0.165757596492767,-0.041676040738821));
res += mul(Get(s4,-dx,-dy), float4x4(-0.078416757285595,-0.279612421989441,0.221411645412445,-0.011342892423272,-0.005290546920151,-0.122462391853333,-0.084826894104481,0.053449925035238,-0.083103321492672,-0.060358919203281,0.038162052631378,-0.181342095136642,0.180494040250778,0.102854788303375,-0.175624936819077,-0.174391910433769));
res += mul(Get(s4,-dx,0), float4x4(-0.166158199310303,-0.162474572658539,0.306237876415253,0.042956598103046,0.015914876013994,-0.243755429983139,-0.056463263928890,-0.075020402669907,0.203040957450867,-0.184521257877350,-0.032137673348188,-0.270662724971771,-0.168191730976105,-0.074137046933174,-0.221441745758057,0.152617394924164));
res += mul(Get(s4,-dx,dy), float4x4(-0.003775576595217,-0.003194398945197,0.032584819942713,-0.033225879073143,-0.069761179387569,-0.082133911550045,0.122337058186531,0.090653002262115,-0.034279529005289,-0.069833151996136,0.137062370777130,-0.006714770104736,-0.039911504834890,0.137620791792870,-0.123982623219490,0.016742538660765));
res += mul(Get(s4,0,-dy), float4x4(-0.233300536870956,0.068876020610332,0.021552158519626,-0.132664263248444,0.100805155932903,-0.154533252120018,-0.075688511133194,-0.048701349645853,0.008936102502048,-0.033602092415094,0.009061120450497,-0.024629361927509,0.241187557578087,-0.143906608223915,-0.057322867214680,-0.049008987843990));
res += mul(Get(s4,0,0), float4x4(-0.128924041986465,0.059302303940058,-0.038062997162342,0.025006486102939,0.132337421178818,0.007821896113455,-0.097945630550385,0.014012243598700,-0.341227531433105,-0.008437094278634,0.234722003340721,-0.053052984178066,0.252338111400604,-0.173112928867340,-0.146736666560173,-0.155923992395401));
res += mul(Get(s4,0,dy), float4x4(0.052082940936089,0.086140789091587,-0.008448610082269,0.065584108233452,-0.069210186600685,-0.088325873017311,0.022600516676903,0.016768412664533,-0.293656140565872,-0.002926224842668,0.221026599407196,-0.006060626357794,0.190512701869011,0.105256125330925,-0.141302719712257,0.141663968563080));
res += mul(Get(s4,dx,-dy), float4x4(0.038009688258171,-0.115645214915276,-0.126153513789177,-0.023356406018138,0.016193663701415,0.064196020364761,0.009874554350972,0.020412949845195,0.057353734970093,0.028779925778508,-0.087652489542961,-0.047155238687992,0.058623190969229,0.119263969361782,-0.095350332558155,-0.053689725697041));
res += mul(Get(s4,dx,0), float4x4(0.050643723458052,-0.130765721201897,-0.109701372683048,-0.036569055169821,0.081107579171658,-0.069825790822506,-0.145114734768867,-0.033555407077074,0.165644600987434,0.090277083218098,-0.143948033452034,-0.041196729987860,-0.109322540462017,0.180371761322021,0.201727762818336,0.080866709351540));
res += mul(Get(s4,dx,dy), float4x4(-0.024969879537821,-0.043650470674038,-0.057471249252558,0.015880307182670,-0.008025772869587,-0.029888153076172,0.023576801642776,-0.024658322334290,-0.037691120058298,-0.042144734412432,-0.013611542060971,0.022406106814742,-0.018507027998567,-0.012375823222101,-0.050570778548717,0.061782848089933));
res += mul(Get(s5,-dx,-dy), float4x4(-0.068592309951782,0.165268763899803,0.055012721568346,0.092168629169464,0.059068866074085,-0.061946619302034,-0.079380378127098,-0.046979535371065,-0.005066731944680,0.014018039219081,-0.063096560537815,-0.146030828356743,-0.017063647508621,0.001681047608145,-0.087852112948895,0.089720405638218));
res += mul(Get(s5,-dx,0), float4x4(0.008866458199918,0.053668774664402,-0.120295003056526,0.202058136463165,0.005400323774666,-0.016546344384551,0.091647878289223,-0.211627960205078,-0.068616785109043,0.027028137817979,-0.083427436649799,0.126741394400597,-0.134150102734566,-0.093423552811146,0.000024318364012,0.033906497061253));
res += mul(Get(s5,-dx,dy), float4x4(0.031417969614267,0.003633141517639,-0.001417977735400,-0.036765895783901,-0.001189825241454,0.058242805302143,0.013780015520751,0.038433726876974,-0.047960836440325,-0.060233637690544,-0.003556557232514,0.016340624541044,-0.029550351202488,-0.041078492999077,-0.039496980607510,0.006209991872311));
res += mul(Get(s5,0,-dy), float4x4(0.252350807189941,-0.188712745904922,-0.182492837309837,-0.394441634416580,0.096967943012714,0.130060002207756,-0.080969430506229,0.181232780218124,0.064304076135159,-0.182146802544594,-0.012702555395663,-0.041988246142864,-0.087123781442642,-0.186147436499596,0.138324171304703,-0.127947181463242));
res += mul(Get(s5,0,0), float4x4(-0.279450416564941,-0.295242726802826,0.249533072113991,-0.033131923526525,-0.261677503585815,0.065862871706486,0.181227996945381,0.031813155859709,0.103141836822033,0.251680463552475,-0.454990148544312,-0.396698206663132,-0.355276793241501,0.234523579478264,-0.088635370135307,0.050545055419207));
res += mul(Get(s5,0,dy), float4x4(0.069774188101292,-0.062317270785570,-0.057633150368929,0.011330757290125,-0.126161113381386,-0.088388703763485,0.122202597558498,0.050151746720076,-0.004919881466776,-0.111870966851711,-0.174922436475754,0.046115498989820,-0.106006294488907,-0.050591859966516,0.104607619345188,0.004926384426653));
res += mul(Get(s5,dx,-dy), float4x4(-0.000556001905352,0.014002648182213,0.113721214234829,-0.045774150639772,0.012560107745230,0.068273834884167,0.037536032497883,-0.062135644257069,-0.007892306894064,0.008969043381512,0.029839783906937,-0.030954761430621,-0.149046510457993,0.136368721723557,0.001042773481458,-0.081871181726456));
res += mul(Get(s5,dx,0), float4x4(-0.173880785703659,-0.097853690385818,0.110101014375687,0.012207307852805,0.021373450756073,0.019176462665200,0.044468097388744,0.019298357889056,-0.144238188862801,-0.027935396879911,0.011604927480221,-0.002495232503861,-0.287535578012466,0.067586347460747,0.212071880698204,0.030948068946600));
res += mul(Get(s5,dx,dy), float4x4(-0.065187245607376,0.011988868005574,0.131727755069733,-0.036522455513477,0.074363283813000,-0.090096741914749,-0.019198566675186,0.028499472886324,0.033814202994108,-0.098771028220654,0.037897493690252,-0.006304059643298,-0.145746126770973,-0.024651022627950,0.069657184183598,0.031914360821247));
res = max(float4(0, 0, 0, 0), res) + float4(0.023444112390280,-0.016317190602422,0.020175985991955,0.080532260239124) * min(float4(0, 0, 0, 0), res);
return res;
}