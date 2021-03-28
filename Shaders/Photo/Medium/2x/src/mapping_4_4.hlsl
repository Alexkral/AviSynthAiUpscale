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
float4 res = float4(-0.056806612759829,-0.095430508255959,-0.031400073319674,-0.124986432492733);
res += mul(Get(s0,-dx,-dy), float4x4(-0.007450256962329,0.097693227231503,-0.124056696891785,0.042215496301651,-0.036780614405870,-0.072873167693615,-0.051885161548853,-0.056354779750109,0.088706307113171,0.003846592968330,-0.190467789769173,-0.128843694925308,0.160356730222702,-0.029654441401362,0.314225167036057,0.157469421625137));
res += mul(Get(s0,-dx,0), float4x4(0.052076023072004,-0.096721380949020,-0.144994094967842,0.180175051093102,0.021595707163215,0.041025314480066,0.198297575116158,0.044814355671406,0.011247014626861,-0.131986126303673,-0.022306276485324,0.142715543508530,0.049875680357218,0.043364431709051,-0.032545574009418,0.010806185193360));
res += mul(Get(s0,-dx,dy), float4x4(0.044993359595537,0.057055119425058,-0.045204389840364,0.038998950272799,-0.086263887584209,0.033843088895082,0.075890682637691,0.021658413112164,0.061511974781752,0.029104821383953,-0.013993224129081,-0.067819491028786,0.029166921973228,0.025229228660464,-0.023136874660850,-0.004044636152685));
res += mul(Get(s0,0,-dy), float4x4(-0.241256296634674,-0.102575674653053,0.123164661228657,-0.118872739374638,0.032469376921654,0.111237235367298,0.177476480603218,0.042608637362719,0.174214884638786,-0.047524783760309,0.059028066694736,0.113442689180374,0.165924876928329,0.029285456985235,-0.071813993155956,0.034399006515741));
res += mul(Get(s0,0,0), float4x4(-0.109757840633392,-0.163438901305199,0.058265909552574,0.220585420727730,-0.196221813559532,0.001348399557173,0.045098453760147,0.056102856993675,-0.066907614469528,0.056421034038067,-0.190819635987282,-0.059725746512413,0.065272554755211,0.141710788011551,0.025213466957211,-0.062793083488941));
res += mul(Get(s0,0,dy), float4x4(0.156317114830017,0.026552943512797,0.151537984609604,-0.105278097093105,0.103928081691265,-0.034980300813913,0.118465855717659,0.005356319248676,0.140319734811783,-0.001678527449258,-0.077845662832260,0.102639786899090,0.055653810501099,-0.102511413395405,0.044801358133554,0.036272373050451));
res += mul(Get(s0,dx,-dy), float4x4(-0.118938960134983,0.012750600464642,-0.045590072870255,0.001362873823382,-0.179316431283951,-0.044593784958124,0.243577674031258,0.039344716817141,-0.036112543195486,-0.056201495230198,-0.035528812557459,0.010540544986725,0.012145201675594,0.006014046259224,0.018933681771159,-0.163137659430504));
res += mul(Get(s0,dx,0), float4x4(0.123936355113983,0.144705340266228,-0.055057592689991,0.211061850190163,0.111253201961517,-0.060943342745304,0.056207492947578,-0.051060792058706,0.146393045783043,-0.003863659454510,-0.230283349752426,0.049956142902374,-0.040718115866184,-0.106283627450466,-0.036609463393688,-0.017173551023006));
res += mul(Get(s0,dx,dy), float4x4(0.146779909729958,0.011424944736063,-0.204793646931648,0.043728023767471,-0.027861746028066,0.001180709106848,0.241266235709190,0.008570119738579,-0.007081359159201,0.160268545150757,-0.031459756195545,0.030326908454299,-0.041394717991352,-0.008463532663882,0.046924334019423,0.025781583040953));
res += mul(Get(s1,-dx,-dy), float4x4(-0.053155891597271,0.057392373681068,-0.069388933479786,0.028837645426393,-0.177802070975304,0.010120313614607,0.017821351066232,0.031284809112549,-0.051581606268883,-0.003237037453800,0.089823268353939,0.001066446187906,0.158949181437492,-0.042082060128450,0.078793026506901,0.214739710092545));
res += mul(Get(s1,-dx,0), float4x4(0.008419536985457,0.091342322528362,-0.054513514041901,0.040872972458601,-0.052247505635023,-0.096923395991325,0.043180223554373,0.184421285986900,0.067583218216896,-0.018423693254590,-0.081155367195606,-0.022861057892442,0.007403356023133,-0.062249086797237,-0.169378638267517,-0.037673484534025));
res += mul(Get(s1,-dx,dy), float4x4(0.037601534277201,0.014060934074223,0.073046274483204,0.084075361490250,0.039361819624901,-0.090264357626438,-0.086274161934853,0.022707756608725,0.010668801143765,-0.109273426234722,0.003821099177003,0.029050480574369,-0.011494164355099,-0.066488035023212,0.052238129079342,-0.015902038663626));
res += mul(Get(s1,0,-dy), float4x4(0.135064661502838,0.000054529951740,0.049330964684486,0.106976166367531,-0.046029329299927,-0.081641793251038,-0.058754686266184,0.109150074422359,-0.126507654786110,-0.065444581210613,0.086263328790665,-0.012597138062119,0.175217300653458,0.030076291412115,-0.137918516993523,0.140704080462456));
res += mul(Get(s1,0,0), float4x4(0.040233474224806,0.020339002832770,0.055714402347803,-0.263645440340042,0.027948804199696,-0.101223170757294,-0.332173764705658,0.168923333287239,0.148454099893570,-0.128476038575172,0.048759859055281,-0.222080752253532,0.090762138366699,0.017572592943907,-0.076512731611729,-0.163398817181587));
res += mul(Get(s1,0,dy), float4x4(-0.084810845553875,0.224488750100136,0.021273547783494,0.129624500870705,0.009145359508693,0.029218474403024,0.035911966115236,-0.043484557420015,-0.085457384586334,0.034495275467634,0.008879236876965,0.011197489686310,-0.126376107335091,-0.134071946144104,0.016107147559524,0.152780592441559));
res += mul(Get(s1,dx,-dy), float4x4(0.030652465298772,-0.036758322268724,0.027062932029366,-0.076766781508923,0.078543409705162,0.004960902035236,0.002399864839390,0.127761706709862,-0.043131288141012,-0.211015135049820,-0.088254898786545,-0.155236124992371,0.107278689742088,-0.080375656485558,0.002306727692485,0.220524504780769));
res += mul(Get(s1,dx,0), float4x4(-0.012285675853491,-0.029033690690994,0.024486446753144,0.106507420539856,0.067279733717442,-0.086144551634789,0.077642813324928,0.027921684086323,-0.136576816439629,-0.008568692952394,0.049785617738962,0.051228571683168,0.050017241388559,-0.091047264635563,-0.090111032128334,-0.032038636505604));
res += mul(Get(s1,dx,dy), float4x4(0.005927662830800,0.101533398032188,-0.024126611649990,0.075823098421097,-0.119314149022102,-0.200711429119110,-0.022239066660404,0.043403271585703,-0.022959077730775,-0.042734067887068,0.113056659698486,-0.042849034070969,-0.036008395254612,0.024932753294706,-0.171103328466415,0.045469932258129));
res += mul(Get(s2,-dx,-dy), float4x4(-0.019726816564798,0.005144148599356,-0.071451678872108,-0.032160624861717,-0.023435009643435,-0.058130115270615,-0.051495920866728,0.184903070330620,-0.209507718682289,0.082007303833961,-0.140966862440109,-0.022393010556698,0.165635302662849,0.037938624620438,-0.020496074110270,0.110584080219269));
res += mul(Get(s2,-dx,0), float4x4(-0.006028318777680,-0.102920196950436,-0.000144927369547,-0.068034954369068,-0.006583282724023,-0.010578087531030,-0.071230992674828,-0.106863535940647,0.027783421799541,-0.101454265415668,-0.057270687073469,-0.117888741195202,-0.041216436773539,0.005216221325099,-0.177366733551025,-0.156623288989067));
res += mul(Get(s2,-dx,dy), float4x4(0.047887217253447,-0.118200480937958,-0.036778334528208,-0.032974556088448,-0.040297977626324,-0.091956965625286,0.076476722955704,0.016426846385002,0.015633875504136,0.084562294185162,-0.101024337112904,-0.058751899749041,0.060027811676264,-0.138008877635002,0.064355880022049,0.006441031116992));
res += mul(Get(s2,0,-dy), float4x4(0.179559051990509,-0.145308151841164,-0.004104063380510,-0.018534034490585,0.099452428519726,-0.171091228723526,0.044345319271088,0.366488486528397,-0.092928484082222,-0.078692473471165,-0.089440353214741,0.013988058082759,-0.086176462471485,-0.001034897635691,-0.071946792304516,0.318168938159943));
res += mul(Get(s2,0,0), float4x4(0.083447061479092,-0.076459974050522,-0.064322046935558,-0.192823499441147,0.053108751773834,0.043649971485138,0.020232057198882,-0.151833802461624,0.093954741954803,0.266671001911163,-0.101938933134079,-0.159960776567459,0.280280292034149,-0.122018866240978,0.193568855524063,-0.278669089078903));
res += mul(Get(s2,0,dy), float4x4(0.012526926584542,-0.083874568343163,-0.015366354025900,0.104212850332260,-0.092391580343246,0.100765727460384,0.011355954222381,0.096176102757454,-0.124150320887566,0.041857205331326,-0.092262983322144,-0.019055867567658,-0.144469097256660,0.097199253737926,0.111989311873913,0.013821593485773));
res += mul(Get(s2,dx,-dy), float4x4(0.109695322811604,0.119694031774998,-0.096451036632061,0.064795061945915,0.083966180682182,0.050007931888103,-0.023725256323814,0.218878313899040,-0.029226921498775,0.072193011641502,-0.087901465594769,-0.105791509151459,0.002219075802714,-0.120380818843842,-0.018223727121949,0.021159732714295));
res += mul(Get(s2,dx,0), float4x4(0.089510940015316,-0.154255032539368,0.119317449629307,-0.192857816815376,0.056398190557957,-0.082445144653320,-0.211282029747963,-0.159574717283249,-0.042990967631340,0.096137113869190,-0.179961413145065,0.067699544131756,0.123264230787754,0.070596531033516,-0.118075631558895,-0.072280339896679));
res += mul(Get(s2,dx,dy), float4x4(-0.042644120752811,0.052979033440351,0.083401449024677,0.021647036075592,-0.108817972242832,-0.116322822868824,-0.096034891903400,0.067977435886860,-0.011775226332247,-0.136064901947975,-0.092456489801407,-0.053713828325272,-0.043612774461508,-0.026032619178295,-0.027271548286080,-0.012677858583629));
res += mul(Get(s3,-dx,-dy), float4x4(0.028267558664083,-0.009490497410297,0.008023949339986,0.030345454812050,0.029253358021379,0.009017228148878,-0.008789385668933,-0.076127700507641,-0.199407204985619,-0.197608515620232,0.045748163014650,-0.125715360045433,0.024384843185544,0.026588309556246,0.021601581946015,0.006845687516034));
res += mul(Get(s3,-dx,0), float4x4(0.077176831662655,0.066015519201756,0.097936376929283,0.119083665311337,-0.039932508021593,-0.094066374003887,0.067307770252228,0.006790111307055,-0.067903444170952,0.152953088283539,-0.100591421127319,-0.015757786110044,-0.032454233616590,0.031533800065517,-0.015391201712191,0.098476015031338));
res += mul(Get(s3,-dx,dy), float4x4(-0.067900486290455,0.126124083995819,0.057255163788795,0.039725363254547,0.022645229473710,0.037287760525942,-0.015818472951651,0.007886018604040,-0.016781212761998,-0.009586885571480,0.058193251490593,-0.001517589553259,0.018131354823709,-0.070231296122074,-0.097020365297794,0.027797358110547));
res += mul(Get(s3,0,-dy), float4x4(0.182664200663567,0.120617166161537,0.097805038094521,0.070352837443352,-0.008612708188593,0.175991460680962,0.022860655561090,0.195403322577477,-0.164443016052246,0.148478582501411,-0.248609140515327,-0.091722883284092,-0.091791227459908,-0.143257543444633,0.074003890156746,-0.006732710171491));
res += mul(Get(s3,0,0), float4x4(-0.051757652312517,0.165489003062248,0.134372636675835,0.064817249774933,-0.110401257872581,-0.211605757474899,-0.016847269609571,-0.044352523982525,-0.227366745471954,-0.297410845756531,0.071184538304806,-0.003272049594671,0.011741762049496,-0.027191421017051,-0.014638841152191,0.040855780243874));
res += mul(Get(s3,0,dy), float4x4(0.039334401488304,-0.051995158195496,0.008599958382547,-0.018016897141933,0.008740832097828,-0.057365994900465,-0.035220496356487,-0.022301083430648,0.009469744749367,-0.017274096608162,0.008070674724877,0.059934653341770,-0.051306061446667,0.078689098358154,0.022361177951097,0.019307844340801));
res += mul(Get(s3,dx,-dy), float4x4(-0.139230623841286,0.024888526648283,0.039935152977705,-0.004918491467834,0.029867734760046,-0.191242024302483,-0.060716856271029,-0.020909791812301,0.100357957184315,0.118360519409180,0.119895197451115,0.076445423066616,-0.127098843455315,0.055930815637112,-0.115830734372139,0.097311124205589));
res += mul(Get(s3,dx,0), float4x4(0.154567047953606,-0.099603198468685,-0.129890918731689,0.078573837876320,-0.044662870466709,0.081361688673496,-0.100599892437458,0.070302076637745,-0.071381673216820,-0.048848021775484,0.188246950507164,-0.058381073176861,0.192703425884247,-0.012436249293387,0.043746817857027,-0.084023222327232));
res += mul(Get(s3,dx,dy), float4x4(0.103192239999771,-0.056425355374813,0.030514471232891,0.022252807393670,-0.009928048588336,-0.011702821590006,-0.078815430402756,0.007094144821167,0.061367426067591,-0.072519265115261,0.017471246421337,0.042966842651367,-0.082279101014137,-0.031803291290998,0.092945031821728,0.034115545451641));
res += mul(Get(s4,-dx,-dy), float4x4(0.019635794684291,0.039261560887098,0.059479251503944,0.011758458800614,0.041794385761023,-0.018833281472325,0.097747303545475,0.015975866466761,-0.063459232449532,0.056686371564865,-0.002714969450608,-0.115141585469246,0.214828088879585,0.020030604675412,-0.065212026238441,0.097634449601173));
res += mul(Get(s4,-dx,0), float4x4(0.017573127523065,0.004647406749427,0.075809083878994,0.063544429838657,-0.138471037149429,0.016287155449390,0.088489376008511,0.051690246909857,-0.006568677723408,-0.148429363965988,-0.047150097787380,0.018515609204769,-0.001951630343683,-0.054056111723185,-0.017955545336008,-0.056946426630020));
res += mul(Get(s4,-dx,dy), float4x4(-0.064473591744900,0.056612886488438,-0.148153945803642,0.011012876406312,-0.039647787809372,0.075473457574844,-0.113542124629021,-0.140303105115891,-0.013056632131338,-0.050254918634892,0.050920374691486,0.033770699054003,-0.031629800796509,-0.038126029074192,-0.045194208621979,0.000579154992010));
res += mul(Get(s4,0,-dy), float4x4(-0.175336599349976,0.168835133314133,-0.208020657300949,0.064962372183800,0.169516339898109,0.105787768959999,-0.169878780841827,0.124899752438068,-0.209302306175232,-0.104673661291599,0.055849220603704,-0.289315372705460,0.117193639278412,-0.150631681084633,0.032227810472250,0.043891832232475));
res += mul(Get(s4,0,0), float4x4(-0.012047084979713,-0.255097776651382,-0.080237686634064,0.016517035663128,-0.240266859531403,0.219826504588127,-0.190854221582413,0.185501426458359,0.014956186525524,-0.206892460584641,0.017741100862622,-0.032437250018120,-0.074366360902786,0.075376905500889,0.171638980507851,-0.111045017838478));
res += mul(Get(s4,0,dy), float4x4(0.030038230121136,-0.023582832887769,0.029200339689851,-0.042026590555906,0.180008679628372,-0.029196243733168,-0.174814805388451,-0.129165664315224,0.043252456933260,-0.024061491712928,0.013529743067920,0.022631967440248,0.001452222117223,-0.060799632221460,-0.182435184717178,0.082333341240883));
res += mul(Get(s4,dx,-dy), float4x4(-0.036766789853573,-0.094166196882725,0.014761342667043,-0.004318016115576,-0.069761872291565,0.063285999000072,-0.036085437983274,-0.076497219502926,0.063692212104797,-0.015203889459372,0.106672234833241,-0.132725104689598,0.034666605293751,-0.028973164036870,0.061752572655678,-0.066145293414593));
res += mul(Get(s4,dx,0), float4x4(0.055060740560293,0.155058279633522,0.010079444386065,0.045696906745434,-0.109672740101814,-0.023123992606997,0.111593149602413,-0.023064726963639,-0.033990785479546,0.022022673860192,-0.152508884668350,0.021465627476573,-0.079826414585114,-0.074684984982014,-0.067817702889442,-0.018630513921380));
res += mul(Get(s4,dx,dy), float4x4(-0.027280498296022,0.017458887770772,-0.047786109149456,-0.041857935488224,-0.037756938487291,0.116871848702431,-0.075310915708542,-0.099177211523056,-0.000108131884190,0.071108534932137,-0.107399620115757,0.021166946738958,-0.037525922060013,-0.000917763565667,-0.086414150893688,-0.021632466465235));
res += mul(Get(s5,-dx,-dy), float4x4(-0.096080891788006,0.107303760945797,0.010479315184057,-0.098797731101513,0.103361219167709,0.069036357104778,0.066919028759003,0.026750214397907,-0.054245050996542,-0.013652970083058,-0.094111979007721,-0.001736308564432,0.111454568803310,-0.017300466075540,-0.058556135743856,-0.013112987391651));
res += mul(Get(s5,-dx,0), float4x4(-0.014847033657134,-0.021112089976668,-0.022820279002190,-0.128330469131470,-0.008204687386751,-0.037229854613543,-0.136673673987389,0.043279692530632,-0.041523136198521,0.046139892190695,-0.097262181341648,-0.082808859646320,-0.003770400537178,0.064926452934742,-0.166137337684631,-0.049040518701077));
res += mul(Get(s5,-dx,dy), float4x4(-0.069273479282856,0.066168285906315,0.169940099120140,0.041505444794893,0.020677821710706,0.032001037150621,-0.141515314579010,0.069740444421768,-0.037723381072283,0.110468447208405,-0.041611149907112,-0.052713695913553,-0.024456711485982,0.023253757506609,-0.041968282312155,-0.079364232718945));
res += mul(Get(s5,0,-dy), float4x4(-0.266697257757187,-0.011522698216140,-0.012430263683200,-0.232376247644424,-0.126209154725075,-0.093987166881561,-0.164466917514801,-0.134462341666222,0.038993705064058,0.223431408405304,-0.073054037988186,-0.159805342555046,0.110369861125946,0.100471787154675,0.022524900734425,0.119887389242649));
res += mul(Get(s5,0,0), float4x4(-0.046408556401730,-0.157993733882904,0.091326870024204,-0.215794876217842,0.051815200597048,0.202430903911591,-0.182851284742355,-0.124161131680012,-0.185674667358398,0.029284035786986,0.172190904617310,0.238825693726540,-0.001049910904840,-0.136533498764038,-0.183011442422867,0.112753808498383));
res += mul(Get(s5,0,dy), float4x4(0.085081100463867,-0.222734093666077,-0.191883340477943,-0.040169257670641,-0.019573217257857,-0.030732149258256,-0.000283713976387,0.103105552494526,0.249070852994919,-0.129326567053795,-0.026565333828330,-0.144209101796150,-0.020072057843208,0.038493681699038,-0.054988224059343,-0.127617016434669));
res += mul(Get(s5,dx,-dy), float4x4(-0.175239145755768,-0.137202173471451,-0.012390867806971,-0.075907588005066,0.098690383136272,0.154155597090721,0.088520847260952,-0.118851713836193,-0.055242680013180,0.106680482625961,0.023573616519570,-0.007496269419789,0.106467813253403,-0.232591077685356,-0.005305361468345,-0.025445073843002));
res += mul(Get(s5,dx,0), float4x4(-0.101813264191151,0.020741369575262,-0.068476706743240,0.029379552230239,0.044345669448376,-0.007045827340335,-0.013441162183881,0.073102831840515,0.057119388133287,0.034131545573473,0.110666677355766,-0.048027113080025,-0.003705046139657,0.044740151613951,-0.102149054408073,0.164720281958580));
res += mul(Get(s5,dx,dy), float4x4(0.061638593673706,-0.047583129256964,0.206789165735245,0.070849165320396,-0.063035331666470,-0.050670776516199,-0.086123958230019,0.070290513336658,0.065772615373135,0.132750734686852,0.027199337258935,-0.039673916995525,0.136540636420250,-0.127763435244560,-0.061425577849150,-0.142560869455338));
res = max(float4(0, 0, 0, 0), res) + float4(-0.004122764337808,0.004191775340587,-0.041051272302866,0.076845295727253) * min(float4(0, 0, 0, 0), res);
return res;
}
