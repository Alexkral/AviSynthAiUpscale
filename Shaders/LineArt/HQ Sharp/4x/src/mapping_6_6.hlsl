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
float4 res = float4(-0.053941007703543,-0.244668215513229,0.184096574783325,-0.239637151360512);
res += mul(Get(s0,-dx,-dy), float4x4(0.058836527168751,-0.111908636987209,0.044506601989269,-0.132032811641693,0.083142966032028,-0.026790292933583,-0.082157835364342,-0.149168789386749,-0.071504980325699,0.022855844348669,0.036539472639561,-0.071250557899475,0.027757197618484,-0.059970356523991,0.038739100098610,-0.107618056237698));
res += mul(Get(s0,-dx,0), float4x4(0.026875894516706,-0.050678625702858,0.283293157815933,-0.186466112732887,-0.184240818023682,-0.094815090298653,0.024162484332919,-0.012510607019067,-0.179766401648521,0.078594155609608,-0.253375858068466,-0.233736664056778,0.097031325101852,0.041263129562140,-0.057110451161861,-0.122438952326775));
res += mul(Get(s0,-dx,dy), float4x4(0.086781136691570,0.121963642537594,0.086890533566475,0.062051165848970,0.001751062343828,-0.073902949690819,-0.071781523525715,-0.029933875426650,-0.083295091986656,0.009533077478409,-0.121614031493664,-0.088249281048775,-0.153816133737564,0.042615666985512,0.000252068479313,0.178599059581757));
res += mul(Get(s0,0,-dy), float4x4(0.012927762232721,-0.028391018509865,-0.119116447865963,0.025234304368496,0.275933116674423,-0.101446799933910,0.235443621873856,0.101415768265724,-0.160256251692772,-0.333508133888245,0.134372010827065,0.052100010216236,0.058761127293110,-0.183529675006866,0.209692329168320,-0.036316446959972));
res += mul(Get(s0,0,0), float4x4(-0.022935155779123,0.141043111681938,0.413442820310593,0.029371451586485,-0.042971409857273,0.038160201162100,-0.053028903901577,0.116375297307968,-0.281332314014435,-0.133275002241135,0.007654136046767,-0.129166647791862,0.171999216079712,0.186992272734642,-0.336854726076126,0.108438685536385));
res += mul(Get(s0,0,dy), float4x4(0.162530452013016,0.198819339275360,0.118160009384155,0.148241102695465,-0.097677081823349,0.040070075541735,0.055312775075436,0.053666703402996,-0.044302001595497,-0.191774636507034,-0.106504194438457,-0.063624568283558,-0.006924908142537,-0.031353753060102,0.216872155666351,0.238251656293869));
res += mul(Get(s0,dx,-dy), float4x4(-0.111691087484360,-0.101173825562000,0.204273551702499,-0.030935989692807,0.035703595727682,-0.063697747886181,0.324548482894897,0.006554589606822,-0.061110343784094,-0.143044069409370,-0.176857158541679,0.111185640096664,0.006004393566400,-0.045316398143768,-0.101165510714054,-0.030146857723594));
res += mul(Get(s0,dx,0), float4x4(-0.012823767960072,-0.144010260701180,0.033491939306259,0.025381356477737,0.189815014600754,0.088932268321514,-0.341453105211258,0.107604816555977,0.001567800529301,-0.136925771832466,-0.208684846758842,0.027080373838544,0.087882764637470,0.010639058426023,-0.452307224273682,-0.009406030178070));
res += mul(Get(s0,dx,dy), float4x4(-0.047349914908409,0.071621268987656,0.071788355708122,0.018166283145547,0.071452386677265,0.104498475790024,0.141930297017097,0.045191582292318,-0.103477798402309,-0.180191025137901,-0.022128451615572,0.097000442445278,0.209043994545937,-0.061248686164618,-0.138817891478539,-0.047495190054178));
res += mul(Get(s1,-dx,-dy), float4x4(-0.040371779352427,-0.050391588360071,-0.139275446534157,-0.046831216663122,-0.037207704037428,0.050821974873543,0.035189919173717,0.109892822802067,0.039964184165001,0.077451407909393,0.074781291186810,0.009182536043227,0.023496683686972,0.005531142931432,-0.082852303981781,-0.037941675633192));
res += mul(Get(s1,-dx,0), float4x4(-0.084215432405472,-0.201052784919739,0.096105836331844,-0.008181503042579,-0.123939469456673,-0.009159989655018,-0.140244156122208,0.093255206942558,-0.038607310503721,-0.054269075393677,0.017364183440804,-0.175736710429192,-0.060041632503271,0.083999499678612,-0.061044115573168,0.247490301728249));
res += mul(Get(s1,-dx,dy), float4x4(-0.061215985566378,0.011891731992364,-0.122195348143578,-0.013377766124904,0.268835812807083,0.071392841637135,-0.241349533200264,0.051225047558546,-0.144950062036514,-0.072663836181164,0.023591505363584,0.080629959702492,0.148011311888695,0.068572677671909,-0.086872257292271,-0.118845865130424));
res += mul(Get(s1,0,-dy), float4x4(-0.106806680560112,-0.170521438121796,0.076829276978970,0.011288302019238,0.048884388059378,0.047558423131704,0.214668169617653,-0.062038253992796,-0.039786715060472,0.287139058113098,-0.155547156929970,0.067164659500122,0.030422132462263,-0.033623382449150,-0.315825760364532,0.022116539999843));
res += mul(Get(s1,0,0), float4x4(-0.387615054845810,-0.299011051654816,-0.354715943336487,-0.578959345817566,0.318066179752350,0.138327375054359,-0.467157036066055,-0.084789104759693,0.048220373690128,-0.418847560882568,-0.168218180537224,-0.287245929241180,0.085381783545017,-0.072016224265099,-0.030498629435897,-0.180252179503441));
res += mul(Get(s1,0,dy), float4x4(-0.166984111070633,-0.138613983988762,-0.068004988133907,-0.175889864563942,-0.034181129187346,0.057857096195221,0.202966123819351,0.203285694122314,0.094759546220303,-0.113182663917542,-0.007351560518146,-0.061707876622677,0.093749932944775,0.146318212151527,-0.222312256693840,-0.293127864599228));
res += mul(Get(s1,dx,-dy), float4x4(0.012141991406679,-0.192175880074501,-0.049395557492971,-0.096192859113216,0.067186705768108,0.093158550560474,-0.076765969395638,0.022700544446707,-0.082939237356186,0.249396100640297,-0.072530969977379,0.086975626647472,0.135656416416168,-0.002991235349327,-0.115431688725948,0.007044472731650));
res += mul(Get(s1,dx,0), float4x4(0.093168579041958,-0.157786920666695,-0.051396921277046,0.020947119221091,-0.015520754270256,0.104288868606091,0.091006092727184,0.106011323630810,0.081875726580620,-0.068600952625275,0.007592295296490,0.227486059069633,-0.059599347412586,-0.115859322249889,0.015300301834941,-0.237163543701172));
res += mul(Get(s1,dx,dy), float4x4(-0.107859306037426,0.000549966178369,-0.049487251788378,-0.073643065989017,0.028580376878381,0.101902589201927,-0.235119655728340,0.126536607742310,-0.049494717270136,-0.013873293064535,0.014772940427065,0.015430599451065,0.011916317045689,0.057970322668552,-0.093312568962574,-0.116577878594398));
res += mul(Get(s2,-dx,-dy), float4x4(-0.010387972928584,-0.088432118296623,-0.052351094782352,-0.101434215903282,-0.091371253132820,0.088175699114799,0.219610273838043,0.092122845351696,0.222031712532043,-0.079169236123562,0.079809278249741,-0.025435088202357,-0.140768557786942,-0.019178315997124,0.029352908954024,0.119120076298714));
res += mul(Get(s2,-dx,0), float4x4(-0.075801201164722,0.024573592469096,0.084668323397636,-0.204772964119911,-0.215895667672157,-0.067971751093864,0.248193845152855,0.221833929419518,0.022057704627514,-0.219140946865082,0.017942979931831,0.039029810577631,-0.166050404310226,-0.193806558847427,-0.008009089156985,0.083783231675625));
res += mul(Get(s2,-dx,dy), float4x4(-0.012343846261501,-0.121156007051468,-0.014168005436659,0.027562491595745,-0.006511036772281,0.170872107148170,-0.009564860723913,-0.084521800279617,0.057544451206923,0.038693249225616,0.001683893846348,-0.036571167409420,-0.036807939410210,-0.207173243165016,-0.076702892780304,-0.043651692569256));
res += mul(Get(s2,0,-dy), float4x4(0.017584469169378,-0.014513377100229,0.030642922967672,-0.188917100429535,-0.041877381503582,0.089054673910141,-0.081308886408806,0.235781416296959,-0.117592774331570,-0.000456083012978,-0.172797664999962,0.184902057051659,-0.055539645254612,0.083253554999828,0.118854433298111,-0.089938968420029));
res += mul(Get(s2,0,0), float4x4(0.145407959818840,0.252595961093903,0.042196854948997,0.248616889119148,0.006129434332252,0.040454436093569,0.342952102422714,0.147976577281952,0.358745723962784,0.035459171980619,0.099493980407715,0.065929025411606,0.113259576261044,0.199166998267174,-0.616766810417175,0.147224575281143));
res += mul(Get(s2,0,dy), float4x4(0.109165750443935,-0.106428720057011,-0.001189190079458,0.090254798531532,-0.016538167372346,0.120330706238747,-0.020547162741423,0.111922621726990,-0.242499679327011,-0.080018803477287,-0.122798539698124,0.029028045013547,0.020021660253406,-0.369799762964249,-0.028770558536053,-0.053089652210474));
res += mul(Get(s2,dx,-dy), float4x4(-0.159159213304520,-0.130708158016205,-0.023577686399221,-0.109547398984432,0.021857149899006,0.190845489501953,-0.067388698458672,0.096247158944607,0.049303036183119,0.098361343145370,-0.029414691030979,0.039807282388210,0.082435443997383,0.053087510168552,-0.147850215435028,-0.084416873753071));
res += mul(Get(s2,dx,0), float4x4(0.026610037311912,-0.012602806091309,0.111255280673504,-0.010668200440705,0.141552016139030,0.225622698664665,0.232970818877220,0.085732221603394,-0.042548283934593,0.158427402377129,0.166058182716370,-0.163682743906975,0.111741110682487,-0.000402025878429,-0.129336446523666,-0.059267848730087));
res += mul(Get(s2,dx,dy), float4x4(-0.071709342300892,0.081005342304707,-0.007399756927043,-0.006448222324252,-0.060205288231373,0.143059268593788,0.081978484988213,-0.007216553203762,0.134324163198471,0.064852967858315,0.051988884806633,-0.079500004649162,-0.155056759715080,-0.286155581474304,0.092832244932652,-0.013449158519506));
res += mul(Get(s3,-dx,-dy), float4x4(-0.138596341013908,0.003280750010163,-0.041839908808470,-0.001795085496269,-0.143846541643143,-0.016664814203978,0.000090564048151,0.032207440584898,0.024570289999247,0.155032411217690,-0.010242042131722,-0.029579147696495,-0.149512737989426,0.027350174263120,-0.133864641189575,-0.097768455743790));
res += mul(Get(s3,-dx,0), float4x4(-0.290039747953415,-0.164673075079918,-0.041435301303864,0.243334531784058,0.022891525179148,0.031609341502190,0.017627721652389,-0.082113295793533,-0.019288714975119,-0.127379640936852,0.085130870342255,-0.263886958360672,0.023703437298536,0.100743278861046,0.138120338320732,0.259712517261505));
res += mul(Get(s3,-dx,dy), float4x4(-0.186907693743706,0.100932277739048,0.082227230072021,0.194664672017097,0.073173992335796,0.016942497342825,-0.047500755637884,-0.159798949956894,0.002471394836903,0.151987299323082,-0.156535014510155,0.035690575838089,0.144435539841652,0.045022349804640,-0.068271808326244,-0.098592862486839));
res += mul(Get(s3,0,-dy), float4x4(-0.032632213085890,0.227910190820694,0.082241892814636,0.052597202360630,0.263242632150650,0.095896825194359,0.155099868774414,-0.006210389547050,0.014550001360476,-0.098840616643429,0.125525370240211,-0.058837052434683,-0.176870867609978,-0.249808743596077,0.022575637325644,-0.080951958894730));
res += mul(Get(s3,0,0), float4x4(0.211032614111900,0.332770705223083,-0.168907508254051,-0.201546326279640,-0.290680617094040,-0.004036526661366,-0.196910306811333,-0.120222508907318,0.305120140314102,-0.214546486735344,0.198816508054733,-0.043327778577805,-0.110797084867954,-0.220044165849686,-0.151924878358841,-0.228487685322762));
res += mul(Get(s3,0,dy), float4x4(0.160101532936096,-0.043921351432800,0.314601659774780,0.176433801651001,0.013099314644933,0.182586714625359,-0.245055556297302,-0.230883285403252,0.077620618045330,-0.085703872144222,0.182389169931412,0.110193289816380,0.007615019567311,0.091846063733101,-0.143098130822182,-0.189743280410767));
res += mul(Get(s3,dx,-dy), float4x4(-0.033296480774879,-0.049482714384794,0.086883984506130,0.022774301469326,-0.178144797682762,0.113929592072964,0.093415088951588,-0.156339362263680,0.017410691827536,-0.149034693837166,-0.000236429157667,-0.026597701013088,0.084231391549110,-0.138978064060211,-0.081187471747398,0.212437584996223));
res += mul(Get(s3,dx,0), float4x4(-0.337860763072968,-0.234408453106880,0.257930546998978,-0.102332040667534,0.333218991756439,0.162305638194084,0.020752634853125,-0.045830875635147,-0.278005033731461,-0.151876196265221,0.225889906287193,-0.139665961265564,-0.083206661045551,-0.073770038783550,0.140522599220276,0.134248435497284));
res += mul(Get(s3,dx,dy), float4x4(-0.009269154630601,0.217496767640114,-0.230897918343544,-0.071036331355572,0.136568695306778,0.086804084479809,-0.179377332329750,0.067559234797955,0.012804829515517,0.053186595439911,-0.096950404345989,-0.180389508605003,-0.007020867895335,0.079719327390194,-0.184744834899902,0.044652517884970));
res += mul(Get(s4,-dx,-dy), float4x4(-0.087696798145771,0.003627632744610,0.086275823414326,0.049794118851423,0.164599165320396,-0.077534362673759,0.235591202974319,-0.042138397693634,0.081162624061108,0.075273841619492,0.119313873350620,-0.036672502756119,-0.104032382369041,0.053492322564125,0.072279728949070,0.097672306001186));
res += mul(Get(s4,-dx,0), float4x4(0.135308220982552,0.113550916314125,0.040635488927364,0.159371241927147,0.154893517494202,-0.125899046659470,-0.012216297909617,-0.433496087789536,-0.071347236633301,-0.025018580257893,0.014594328589737,-0.027132298797369,-0.326938211917877,0.377756893634796,-0.000532478559762,0.253465205430984));
res += mul(Get(s4,-dx,dy), float4x4(0.032360211014748,0.060206208378077,0.010665098205209,0.045331537723541,-0.018514223396778,0.092883907258511,0.101004004478455,-0.130475446581841,-0.003887530881912,-0.000466129858978,-0.126795634627342,0.006461920216680,0.029062848538160,0.059089377522469,-0.021517179906368,-0.107761561870575));
res += mul(Get(s4,0,-dy), float4x4(-0.060784157365561,-0.059212144464254,-0.031250339001417,0.052262410521507,-0.162999615073204,-0.228731051087379,0.005573916248977,0.106606386601925,0.138818815350533,0.236306235194206,-0.584855675697327,-0.087291702628136,0.025338271632791,0.045112263411283,-0.030633974820375,0.038149829953909));
res += mul(Get(s4,0,0), float4x4(0.013980822637677,0.307769715785980,-0.216989725828171,-0.002297478727996,0.145394414663315,0.289462238550186,-0.328018963336945,-0.282213985919952,-0.082880824804306,-0.073257289826870,-0.232353299856186,-0.049299512058496,0.094926118850708,-0.004788178950548,-0.054636176675558,-0.114362515509129));
res += mul(Get(s4,0,dy), float4x4(0.085317105054855,0.010293729603291,0.154217109084129,0.075558185577393,-0.089817166328430,-0.035076200962067,0.155821174383163,0.072481915354729,0.218219444155693,-0.193041503429413,0.119827240705490,0.067966252565384,0.051647745072842,-0.086062490940094,-0.093064486980438,0.010801504366100));
res += mul(Get(s4,dx,-dy), float4x4(0.007085045333952,-0.079761937260628,-0.227934449911118,-0.089353188872337,0.060302067548037,-0.190253406763077,-0.120726987719536,0.014280861243606,-0.128475323319435,-0.122249059379101,0.125199735164642,-0.039176221936941,0.253635615110397,0.154746159911156,0.087233804166317,0.152746409177780));
res += mul(Get(s4,dx,0), float4x4(-0.191716775298119,0.182710602879524,-0.021475180983543,-0.178192347288132,-0.064062677323818,-0.032155573368073,0.173499628901482,-0.160159125924110,-0.174718096852303,-0.376319050788879,0.255199283361435,-0.050745964050293,0.036942720413208,0.168678387999535,-0.431037992238998,-0.020266737788916));
res += mul(Get(s4,dx,dy), float4x4(-0.031231075525284,0.079444915056229,0.000274032412563,-0.004546567797661,0.008223623968661,-0.118276827037334,0.006459417287260,-0.092123255133629,-0.024955814704299,-0.081324666738510,-0.158753260970116,-0.062747970223427,-0.037226222455502,-0.007722329813987,-0.116457231342793,-0.110240541398525));
res += mul(Get(s5,-dx,-dy), float4x4(-0.019277067855000,-0.064682252705097,-0.093587353825569,-0.055217631161213,-0.023077953606844,-0.090639352798462,-0.031205192208290,0.040161561220884,0.056976716965437,0.131125196814537,0.175471499562263,0.070482842624187,0.117531560361385,0.179852038621902,0.001591074629687,-0.059832192957401));
res += mul(Get(s5,-dx,0), float4x4(-0.414059847593307,-0.291292101144791,0.170531079173088,0.050606381148100,-0.106835402548313,0.015415122732520,-0.095013342797756,-0.326893627643585,-0.043386671692133,-0.197313234210014,-0.024882417172194,-0.223191559314728,0.036274313926697,0.334190249443054,-0.292227804660797,-0.202597737312317));
res += mul(Get(s5,-dx,dy), float4x4(0.080897137522697,0.017949270084500,-0.036656752228737,-0.041274733841419,-0.302967220544815,0.077465102076530,-0.132398396730423,0.011336538009346,-0.126250699162483,0.007127891760319,0.144589886069298,0.124102972447872,0.006997267715633,0.099656753242016,0.045267257839441,0.102596230804920));
res += mul(Get(s5,0,-dy), float4x4(-0.123659744858742,-0.056791663169861,-0.109879359602928,-0.011298811063170,-0.017886241897941,-0.184534132480621,-0.057035628706217,0.115910924971104,-0.319562315940857,0.090651765465736,-0.465215712785721,-0.140760093927383,-0.024783240631223,-0.293596893548965,-0.126523315906525,-0.046137448400259));
res += mul(Get(s5,0,0), float4x4(-0.344439178705215,-0.163175240159035,0.179656401276588,-0.279634296894073,0.066407494246960,0.126386791467667,0.001311525935307,0.205978900194168,0.040309980511665,-0.264889121055603,-0.093287862837315,0.296917498111725,0.236335784196854,-0.026272799819708,-0.025183580815792,0.032091826200485));
res += mul(Get(s5,0,dy), float4x4(-0.249470561742783,-0.018518952652812,-0.119204171001911,-0.174177438020706,-0.060279820114374,0.074878588318825,0.209318831562996,0.120803803205490,-0.071569070219994,0.073638863861561,0.097227297723293,0.082436636090279,-0.007418007124215,0.060301642864943,-0.074623800814152,0.108471892774105));
res += mul(Get(s5,dx,-dy), float4x4(-0.016265645623207,0.170129328966141,0.092918843030930,-0.070763818919659,-0.032067339867353,0.127568930387497,0.048263601958752,0.046252008527517,0.124015927314758,-0.049165625125170,-0.095451556146145,-0.059320356696844,0.089835941791534,-0.102910846471786,0.025312278419733,0.219516485929489));
res += mul(Get(s5,dx,0), float4x4(0.101184822618961,0.379317998886108,-0.247663989663124,-0.154044523835182,0.169433802366257,0.210885435342789,-0.152961939573288,0.249399915337563,-0.104799568653107,-0.068732731044292,-0.288655519485474,0.050191089510918,0.224639236927032,0.021904099732637,-0.579926371574402,0.350655138492584));
res += mul(Get(s5,dx,dy), float4x4(0.104933694005013,-0.100894600152969,0.156008854508400,-0.088200874626637,0.065052524209023,0.092839509248734,0.143873497843742,0.170044034719467,0.049930300563574,-0.135511562228203,0.218227878212929,0.049737334251404,-0.061361357569695,-0.071427546441555,0.205447807908058,0.083647586405277));
res = max(float4(0, 0, 0, 0), res) + float4(0.047879021614790,0.043839976191521,0.031401872634888,0.689108192920685) * min(float4(0, 0, 0, 0), res);
return res;
}