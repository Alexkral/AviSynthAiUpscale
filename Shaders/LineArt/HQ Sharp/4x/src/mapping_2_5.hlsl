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
float4 res = float4(-0.116761796176434,-0.355412900447845,0.148975640535355,-0.041236381977797);
res += mul(Get(s0,-dx,-dy), float4x4(0.017555518075824,-0.017075795680285,-0.040782708674669,0.001783976098523,0.141807690262794,-0.055351454764605,0.015630554407835,-0.026538306847215,-0.023667765781283,0.015153848566115,-0.004958633333445,-0.000006906724593,-0.042902857065201,-0.046164147555828,-0.055175680667162,0.168887227773666));
res += mul(Get(s0,-dx,0), float4x4(0.015086974017322,0.140860572457314,0.108748205006123,-0.104610957205296,-0.116079404950142,0.109258845448494,0.114666074514389,-0.169054597616196,0.169511541724205,-0.038004316389561,0.033603582531214,0.040094848722219,0.223147511482239,-0.083576291799545,0.166523754596710,0.051728047430515));
res += mul(Get(s0,-dx,dy), float4x4(0.073552258312702,-0.071024268865585,0.127600207924843,0.042046595364809,0.011061026714742,0.115437090396881,-0.155347883701324,0.095507018268108,-0.188690066337585,-0.044293917715549,0.007795494981110,0.160182818770409,-0.029302591457963,0.066140562295914,0.117790758609772,-0.052542760968208));
res += mul(Get(s0,0,-dy), float4x4(-0.189372852444649,-0.124369338154793,-0.129824519157410,-0.006527092773467,-0.123830959200859,-0.089727334678173,0.026404874399304,0.107815712690353,-0.116298563778400,-0.031411509960890,-0.079491659998894,0.174413084983826,0.227180376648903,-0.236393958330154,-0.075989760458469,0.179977610707283));
res += mul(Get(s0,0,0), float4x4(0.041381444782019,-0.079222224652767,-0.062315765768290,0.171347409486771,0.114504501223564,-0.142685160040855,-0.686586678028107,-0.001329802209511,0.265995174646378,-0.090387925505638,0.009639563970268,-0.151985049247742,-0.256062477827072,-0.226416826248169,-0.058335226029158,0.082832396030426));
res += mul(Get(s0,0,dy), float4x4(-0.083808407187462,-0.152417689561844,-0.142662450671196,0.089843340218067,-0.216983199119568,-0.422439306974411,-0.001228222623467,-0.051179889589548,0.033259984105825,0.164481565356255,0.093258872628212,-0.138101339340210,0.027149548754096,0.164319351315498,-0.128534495830536,-0.069749288260937));
res += mul(Get(s0,dx,-dy), float4x4(0.009837460704148,-0.012519465759397,-0.134929910302162,0.089513808488846,-0.081690803170204,-0.043020933866501,0.035212125629187,-0.086697474122047,0.083619393408298,-0.051591642200947,0.025884103029966,-0.072002187371254,-0.056078713387251,0.130337029695511,-0.176448136568069,-0.089050181210041));
res += mul(Get(s0,dx,0), float4x4(-0.199265912175179,-0.047806922346354,-0.089905813336372,0.192369177937508,0.157282099127769,-0.058740757405758,0.142991632223129,0.045224547386169,-0.128103435039520,0.214793384075165,-0.144886881113052,-0.209121227264404,-0.058383200317621,-0.193438768386841,0.373399883508682,-0.167732745409012));
res += mul(Get(s0,dx,dy), float4x4(0.062131766229868,-0.000293880089885,0.097216039896011,-0.067357838153839,-0.018291750922799,-0.071881771087646,-0.025230402126908,-0.029986955225468,-0.045837126672268,0.281954169273376,0.195643782615662,-0.246829926967621,-0.023603243753314,0.179392054677010,0.069032713770866,-0.084656439721584));
res += mul(Get(s1,-dx,-dy), float4x4(-0.405279010534286,0.006037936545908,-0.274827659130096,0.027215719223022,-0.089617677032948,-0.031576234847307,0.096163921058178,-0.428498417139053,-0.132375821471214,-0.027896834537387,0.106365270912647,0.232517257332802,0.168643355369568,0.054000008851290,0.024187674745917,0.307603448629379));
res += mul(Get(s1,-dx,0), float4x4(-0.032413613051176,-0.108553588390350,-0.328096300363541,-0.135434597730637,0.091026544570923,0.073187485337257,0.043793834745884,-0.037025164812803,-0.047418680042028,-0.019275840371847,0.110567711293697,0.187224924564362,-0.001703183166683,-0.028945261612535,0.270097255706787,-0.265824705362320));
res += mul(Get(s1,-dx,dy), float4x4(-0.066009968519211,0.134929627180099,-0.007632676512003,-0.012954989448190,0.002804588526487,-0.110491320490837,0.086236454546452,-0.035126488655806,-0.170752167701721,0.171980485320091,0.016445733606815,-0.137127906084061,0.163250342011452,0.200309172272682,0.209390178322792,-0.142834782600403));
res += mul(Get(s1,0,-dy), float4x4(-0.209743246436119,0.168521627783775,-0.229567825794220,-0.437220931053162,-0.037399295717478,0.001445745816454,-0.005984623916447,-0.161701723933220,-0.194990307092667,-0.197636052966118,0.084350809454918,-0.060880433768034,0.160324826836586,-0.008574088104069,-0.042440649122000,-0.013757769018412));
res += mul(Get(s1,0,0), float4x4(-0.209257900714874,0.112606741487980,-0.210619613528252,0.123836413025856,0.079361692070961,0.024826508015394,0.018631959334016,-0.109897270798683,-0.175833180546761,0.035756908357143,0.115612514317036,-0.216052994132042,-0.268311291933060,-0.137404620647430,-0.770091831684113,0.150057971477509));
res += mul(Get(s1,0,dy), float4x4(0.125218167901039,0.246637597680092,0.007489370182157,-0.181451827287674,0.023160705342889,-0.196199551224709,-0.011213765479624,-0.062609851360321,0.086375057697296,0.705449640750885,-0.089043609797955,-0.343768268823624,0.131414726376534,0.032747808843851,-0.070961259305477,0.002933980431408));
res += mul(Get(s1,dx,-dy), float4x4(-0.087167114019394,-0.005167194642127,-0.062302421778440,-0.077169075608253,0.090718068182468,-0.024571381509304,-0.051145464181900,0.013307667337358,0.296777248382568,-0.149021580815315,-0.031696483492851,-0.156464219093323,0.067463867366314,-0.059597115963697,0.024715092033148,-0.053695604205132));
res += mul(Get(s1,dx,0), float4x4(-0.041546270251274,0.061783351004124,-0.018763603642583,-0.037606816738844,-0.034906849265099,-0.183575510978699,-0.097702011466026,-0.050878245383501,-0.083646804094315,0.113842137157917,-0.121820516884327,-0.076156474649906,0.051863159984350,0.016738781705499,0.028218202292919,-0.301595896482468));
res += mul(Get(s1,dx,dy), float4x4(0.038915891200304,-0.013899261131883,0.000378087774152,-0.163997784256935,-0.031744495034218,-0.008531993255019,0.077440150082111,0.297828912734985,0.210207909345627,0.129498958587646,-0.008304134011269,-0.204243913292885,-0.041895639151335,0.059780467301607,-0.024302789941430,0.062198713421822));
res += mul(Get(s2,-dx,-dy), float4x4(-0.288689851760864,-0.068546667695045,-0.100660227239132,-0.197913825511932,0.358572989702225,0.154488429427147,-0.434414446353912,0.452025860548019,-0.098037421703339,-0.018337782472372,-0.048948477953672,0.023200167343020,-0.028356801718473,0.041959494352341,0.089777790009975,-0.163286656141281));
res += mul(Get(s2,-dx,0), float4x4(0.503460884094238,-0.105423480272293,-0.002652945229784,-0.014884617179632,-0.127613708376884,-0.118714280426502,0.131587415933609,0.097709074616432,-0.067474558949471,-0.068448528647423,-0.140891402959824,0.098740264773369,0.036355581134558,-0.088905207812786,-0.100230492651463,0.018514031544328));
res += mul(Get(s2,-dx,dy), float4x4(-0.025174135342240,-0.173201054334641,0.048091769218445,0.126571252942085,-0.004287380725145,-0.054084140807390,-0.010831786319613,0.055952172726393,0.094291545450687,0.017782384529710,0.066988699138165,-0.251319080591202,-0.009712299332023,0.025395208969712,-0.104952320456505,0.147395476698875));
res += mul(Get(s2,0,-dy), float4x4(-0.139336645603180,0.071444623172283,-0.307914644479752,0.085991583764553,0.159239783883095,0.011707693338394,-0.538027286529541,-0.074028283357620,-0.094933561980724,0.251574367284775,-0.057373374700546,0.016219329088926,-0.327730864286423,0.018971854820848,-0.036614868789911,-0.318513661623001));
res += mul(Get(s2,0,0), float4x4(-0.356604009866714,-0.170016810297966,0.291089445352554,-0.115226298570633,-0.039651528000832,-0.187610849738121,-0.211973935365677,-0.136893510818481,-0.175781920552254,-0.066979996860027,0.301514565944672,-0.181615307927132,0.095773600041866,-0.046065911650658,0.109013125300407,0.255261659622192));
res += mul(Get(s2,0,dy), float4x4(0.149882778525352,0.313616871833801,0.018881928175688,-0.016169250011444,0.019838977605104,-0.117530785501003,-0.019149959087372,0.179632902145386,0.073826827108860,-0.009110066108406,0.151592388749123,-0.238943293690681,-0.547097802162170,-0.143392369151115,0.242209181189537,-0.023928042501211));
res += mul(Get(s2,dx,-dy), float4x4(-0.128123134374619,0.098190359771252,-0.058783579617739,0.116928659379482,-0.006404069717973,0.058191012591124,-0.182707130908966,-0.029062146320939,0.130480214953423,-0.012392930686474,-0.101167164742947,-0.052617862820625,0.033687718212605,0.095659241080284,0.075367890298367,-0.256371796131134));
res += mul(Get(s2,dx,0), float4x4(-0.368008524179459,0.167475640773773,-0.084614850580692,-0.220526546239853,0.100322633981705,0.076853558421135,0.016065739095211,0.099890723824501,-0.285599231719971,-0.007356508169323,0.143845096230507,-0.261495977640152,0.019790444523096,-0.100827731192112,0.551340103149414,-0.135996460914612));
res += mul(Get(s2,dx,dy), float4x4(0.136682465672493,0.269019484519958,0.010100434534252,-0.127843618392944,-0.120825387537479,-0.044665839523077,0.002293802099302,0.134630277752876,0.180869281291962,0.046693716198206,-0.035814136266708,0.008611283265054,-0.089033588767052,-0.324202567338943,0.094080962240696,-0.011299618519843));
res += mul(Get(s3,-dx,-dy), float4x4(0.114771038293839,0.133870542049408,0.043812107294798,-0.066605255007744,-0.054888933897018,-0.040161386132240,-0.063233748078346,-0.010692872107029,0.105345413088799,-0.042937811464071,-0.137350767850876,0.091252952814102,0.158770650625229,-0.145410344004631,-0.113410219550133,0.122465714812279));
res += mul(Get(s3,-dx,0), float4x4(-0.158989906311035,-0.082224547863007,0.085027851164341,0.066052131354809,-0.184237882494926,0.093571782112122,0.152186989784241,-0.220083415508270,-0.426910996437073,0.044051375240088,-0.078211948275566,0.028725693002343,-0.118576228618622,-0.208638861775398,-0.065877139568329,0.093423672020435));
res += mul(Get(s3,-dx,dy), float4x4(-0.048370916396379,0.006692410446703,-0.095510713756084,0.023083897307515,0.048461772501469,0.025142036378384,0.002425988204777,0.125460922718048,-0.090046219527721,0.021185191348195,0.131908610463142,-0.010580847039819,0.101255804300308,0.124144718050957,-0.014950764365494,0.036426965147257));
res += mul(Get(s3,0,-dy), float4x4(0.165500521659851,0.003260748228058,0.013294944539666,-0.027775933966041,-0.071745902299881,0.087778344750404,0.019814902916551,-0.051937941461802,0.138047575950623,-0.015458337031305,-0.081981167197227,-0.252791851758957,-0.271204531192780,0.081376202404499,-0.207758456468582,0.176894828677177));
res += mul(Get(s3,0,0), float4x4(0.257016211748123,-0.020504135638475,0.058311045169830,-0.271659225225449,0.052691273391247,0.080927908420563,-0.071507334709167,0.032505612820387,-0.015739193186164,0.231685981154442,-0.273311257362366,-0.138220652937889,0.051988091319799,0.337186515331268,-0.019071578979492,0.091471500694752));
res += mul(Get(s3,0,dy), float4x4(0.164065852761269,0.088170036673546,-0.093955531716347,0.068143464624882,-0.129434928297997,0.038742009550333,0.179461300373077,0.188638091087341,0.043004374951124,0.060973227024078,-0.041279215365648,0.010699987411499,-0.156630858778954,-0.095534592866898,0.024764344096184,0.059297349303961));
res += mul(Get(s3,dx,-dy), float4x4(-0.015301718376577,0.068836607038975,0.029205752536654,-0.358721643686295,-0.061193749308586,0.051478728652000,-0.030560057610273,0.204557329416275,0.009107681922615,-0.036690119653940,-0.036041691899300,-0.318516761064529,0.013876451179385,-0.030959127470851,-0.199304178357124,-0.136509522795677));
res += mul(Get(s3,dx,0), float4x4(0.099050067365170,0.103049427270889,-0.057425454258919,-0.112194024026394,-0.169003903865814,-0.038573998957872,-0.032008700072765,0.057487346231937,0.153713539242744,-0.160411134362221,0.041315998882055,-0.200632035732269,0.133047774434090,0.010835341177881,0.139461547136307,-0.088145576417446));
res += mul(Get(s3,dx,dy), float4x4(0.219277217984200,0.048481207340956,0.010159349068999,0.199822276830673,0.081561140716076,-0.050196602940559,-0.045854378491640,-0.144596979022026,0.007583419792354,-0.037140101194382,0.088637441396713,0.055976800620556,0.071366205811501,0.094562046229839,-0.063910081982613,-0.096545286476612));
res += mul(Get(s4,-dx,-dy), float4x4(-0.064511030912399,0.043802585452795,0.070213638246059,0.071573562920094,-0.038153003901243,0.038681872189045,-0.003866392886266,-0.186476558446884,0.047785755246878,0.093553058803082,-0.068286910653114,-0.236257880926132,-0.014943448826671,0.054645072668791,-0.009219116531312,-0.076904907822609));
res += mul(Get(s4,-dx,0), float4x4(-0.279390752315521,0.035897485911846,0.146330311894417,0.137410506606102,0.029272099956870,-0.031877826899290,-0.031063707545400,-0.127096593379974,-0.341941475868225,0.054744031280279,0.259649038314819,0.119472995400429,0.208941861987114,-0.040873583406210,-0.020853059366345,0.160491436719894));
res += mul(Get(s4,-dx,dy), float4x4(-0.167673811316490,-0.168356224894524,-0.038553886115551,-0.135010525584221,-0.061646528542042,-0.059578590095043,-0.036046955734491,-0.201115891337395,-0.116623446345329,-0.125898808240891,0.068007402122021,-0.140957280993462,-0.148024439811707,-0.055164344608784,0.083297841250896,0.080451697111130));
res += mul(Get(s4,0,-dy), float4x4(0.055516030639410,-0.143624454736710,0.012984196655452,-0.023123713210225,-0.054367352277040,0.012658198364079,-0.114541471004486,0.058025673031807,0.145902886986732,-0.051120962947607,-0.045516207814217,0.000424373312853,-0.112481690943241,-0.045092906802893,0.001226865220815,-0.067127890884876));
res += mul(Get(s4,0,0), float4x4(0.406366318464279,0.153863668441772,-0.072240643203259,-0.014020293019712,-0.190424725413322,0.009526553563774,0.312737584114075,0.202835336327553,-0.197098091244698,0.116641394793987,0.562085211277008,-0.233306303620338,-0.180710211396217,-0.180166244506836,0.102211266756058,0.066816486418247));
res += mul(Get(s4,0,dy), float4x4(-0.000914118310902,0.016423612833023,-0.104456596076488,0.302237480878830,0.109760776162148,0.058168679475784,0.022120881825686,-0.123027928173542,0.189929679036140,-0.302831798791885,-0.124964475631714,0.221672222018242,0.184683755040169,-0.081452429294586,-0.073212087154388,-0.348319411277771));
res += mul(Get(s4,dx,-dy), float4x4(-0.080511689186096,-0.096423313021660,0.016336428001523,-0.302484601736069,-0.198315635323524,-0.219197735190392,0.155183479189873,0.074004717171192,-0.002420664532110,0.046988040208817,0.066776879131794,-0.045344121754169,0.158239856362343,0.105380244553089,0.001180197228678,0.062745176255703));
res += mul(Get(s4,dx,0), float4x4(-0.009952036663890,-0.013557766564190,-0.004501676652580,-0.091997891664505,-0.371653676033020,0.063583917915821,0.368870884180069,0.050082594156265,-0.061109039932489,-0.019762117415667,-0.067927107214928,0.011399053968489,-0.298242628574371,-0.091574482619762,0.124566435813904,0.164238810539246));
res += mul(Get(s4,dx,dy), float4x4(-0.065061599016190,0.104107819497585,-0.018758138641715,-0.153705298900604,-0.226068273186684,0.126762047410011,0.082325465977192,-0.117926441133022,0.060548711568117,-0.085591152310371,0.072075434029102,0.042160041630268,0.156509175896645,0.028843121603131,-0.509494960308075,0.100247293710709));
res += mul(Get(s5,-dx,-dy), float4x4(0.184383258223534,-0.008906212635338,-0.007122998125851,-0.176083490252495,-0.173699900507927,0.008767683058977,0.007985720410943,-0.025735296308994,-0.233705848455429,0.050682421773672,-0.049001019448042,-0.202003389596939,0.005691097583622,-0.059725958853960,0.044378381222486,-0.143365025520325));
res += mul(Get(s5,-dx,0), float4x4(-0.069884300231934,0.027213640511036,-0.004456826020032,0.171158447861671,-0.162181004881859,0.085359320044518,-0.041111484169960,0.416086405515671,0.126755759119987,-0.029645796865225,0.012603513896465,0.242152124643326,-0.083925828337669,0.087732858955860,-0.012807558290660,0.032989609986544));
res += mul(Get(s5,-dx,dy), float4x4(0.415771722793579,0.106100633740425,0.013877315446734,-0.016612412407994,-0.326270252466202,0.033064961433411,0.008363498374820,0.315909773111343,-0.171810999512672,-0.166780933737755,-0.009397233836353,0.113539285957813,0.014451396651566,0.125441506505013,-0.125238716602325,0.077263340353966));
res += mul(Get(s5,0,-dy), float4x4(0.202949240803719,-0.022961519658566,-0.085062019526958,0.327462106943130,0.072000719606876,-0.034990109503269,0.026091583073139,0.377404302358627,0.241547957062721,0.175334036350250,-0.138363912701607,-0.273043125867844,0.348625928163528,0.083907201886177,-0.210633590817451,0.018511241301894));
res += mul(Get(s5,0,0), float4x4(-0.287734985351563,0.079409159719944,-0.248437464237213,0.163662612438202,0.288329660892487,-0.002666036365554,-0.186116829514503,0.082951746881008,-0.364098042249680,-0.034415356814861,0.251460522413254,-0.072106778621674,-0.172686174511909,-0.147430598735809,-0.113752171397209,-0.203813076019287));
res += mul(Get(s5,0,dy), float4x4(0.052192233502865,0.196498140692711,0.109345361590385,-0.103230074048042,0.176789432764053,0.080499358475208,0.075837939977646,0.156671583652496,0.223543435335159,0.027159115299582,0.034583047032356,-0.178506299853325,0.151701435446739,-0.202902883291245,0.017245057970285,-0.119209326803684));
res += mul(Get(s5,dx,-dy), float4x4(-0.050019670277834,0.129050672054291,-0.036926526576281,0.008266556076705,0.111092850565910,0.129295617341995,-0.115038059651852,-0.300554245710373,0.097379036247730,-0.010116795077920,-0.013076812960207,0.192515149712563,0.085342973470688,0.049720667302608,-0.036196880042553,-0.152510553598404));
res += mul(Get(s5,dx,0), float4x4(-0.041537288576365,0.111412450671196,-0.085507467389107,0.127422720193863,0.179462939500809,0.144179910421371,-0.119083836674690,0.241373822093010,-0.204583197832108,0.060471639037132,-0.065769232809544,-0.072364747524261,-0.059775035828352,0.080311097204685,-0.053926743566990,0.136094972491264));
res += mul(Get(s5,dx,dy), float4x4(0.135886922478676,0.135432541370392,-0.089050434529781,0.089044250547886,-0.094308346509933,0.120097242295742,0.033266577869654,0.235132545232773,0.110167898237705,0.023335231468081,-0.045353271067142,0.151716634631157,-0.073012284934521,0.005783922038972,0.086683645844460,0.093325175344944));
res = max(float4(0, 0, 0, 0), res) + float4(0.010226033627987,0.032463841140270,0.094230301678181,0.073977492749691) * min(float4(0, 0, 0, 0), res);
return res;
}
