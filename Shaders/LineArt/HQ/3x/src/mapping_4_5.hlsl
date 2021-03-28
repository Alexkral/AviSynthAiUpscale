sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.072399437427521,-0.444231778383255,0.046815920621157,0.173241585493088);
res += mul(Get(s0,-dx,-dy), float4x4(-0.099831536412239,-0.026771590113640,0.126527279615402,0.022783994674683,-0.040337212383747,-0.105610206723213,0.167850300669670,0.137623012065887,0.173327282071114,0.020816201344132,0.064623773097992,0.127240240573883,0.030206562951207,-0.066756553947926,-0.010658633895218,0.006988462992013));
res += mul(Get(s0,-dx,0), float4x4(0.244055822491646,0.091431155800819,0.090563602745533,0.025846257805824,-0.422086626291275,-0.341145426034927,-0.237477585673332,0.080153785645962,0.005883967038244,-0.126793310046196,-0.159956052899361,0.210581272840500,0.012886126525700,0.034869726747274,-0.142773419618607,0.055948682129383));
res += mul(Get(s0,-dx,dy), float4x4(-0.031522661447525,0.054349340498447,-0.030652523040771,-0.097512789070606,0.002622937783599,-0.107063271105289,-0.150909245014191,0.074619881808758,0.096730649471283,0.035642255097628,-0.315595746040344,0.189092800021172,-0.216018423438072,0.183683574199677,-0.033963497728109,0.094133391976357));
res += mul(Get(s0,0,-dy), float4x4(0.186960533261299,0.069656893610954,0.020334754139185,0.143909052014351,-0.082012087106705,0.031599551439285,0.033749468624592,0.111934520304203,-0.020105887204409,-0.034361638128757,-0.110622793436050,0.020683936774731,0.107235677540302,0.166482031345367,0.216871187090874,0.150326713919640));
res += mul(Get(s0,0,0), float4x4(0.107811465859413,-0.033373974263668,-0.154923051595688,0.079066947102547,-0.267003327608109,-0.025124464184046,0.080074451863766,0.078398935496807,0.130224019289017,-0.100968532264233,-0.458407402038574,0.184566855430603,-0.331809222698212,0.042263880372047,-0.228113874793053,0.133367225527763));
res += mul(Get(s0,0,dy), float4x4(-0.261490881443024,-0.068082362413406,-0.132262393832207,0.171635657548904,-0.289970755577087,-0.236270368099213,0.021004492416978,0.209544047713280,-0.007031089160591,-0.060677710920572,-0.261337876319885,0.044638760387897,-0.142093926668167,0.024246126413345,0.387574493885040,0.181372538208961));
res += mul(Get(s0,dx,-dy), float4x4(0.106358706951141,0.144437238574028,0.169780477881432,0.157851561903954,-0.093345806002617,-0.080244138836861,0.034169938415289,0.234788268804550,-0.045399520546198,-0.039799373596907,-0.222647890448570,-0.097370788455009,-0.061595849692822,0.237562373280525,0.186140060424805,0.164669305086136));
res += mul(Get(s0,dx,0), float4x4(0.068152822554111,-0.068821981549263,0.071627028286457,-0.081470347940922,-0.002419954864308,0.003958668559790,0.076522104442120,0.192878335714340,0.073929153382778,-0.104244351387024,-0.217747822403908,0.306030869483948,-0.336988598108292,0.068701393902302,0.066843673586845,0.009078383445740));
res += mul(Get(s0,dx,dy), float4x4(0.073434449732304,-0.094777792692184,0.206190317869186,0.013234155252576,-0.039931345731020,-0.231265604496002,0.138284415006638,0.001970154233277,0.017293572425842,0.136418670415878,-0.257836163043976,0.020149800926447,-0.165264889597893,0.024323374032974,0.067663289606571,0.184509724378586));
res += mul(Get(s1,-dx,-dy), float4x4(-0.081549517810345,0.086683906614780,-0.024310434237123,-0.028377100825310,0.201391518115997,0.157596156001091,0.131836950778961,0.032084852457047,0.181951686739922,-0.046861987560987,-0.060147590935230,0.041084654629230,-0.007607369218022,0.085502967238426,-0.072874292731285,0.109338425099850));
res += mul(Get(s1,-dx,0), float4x4(-0.031160296872258,0.244642853736877,0.113486669957638,-0.066340841352940,0.061376146972179,0.088736914098263,-0.079725921154022,-0.075364343822002,-0.234473511576653,-0.010299355722964,0.148135349154472,-0.085520744323730,-0.063525766134262,-0.063481815159321,-0.042857538908720,-0.040017258375883));
res += mul(Get(s1,-dx,dy), float4x4(-0.070097573101521,-0.024719137698412,-0.006516972091049,0.047411121428013,0.074813663959503,0.120900377631187,0.121185585856438,-0.069171935319901,0.004874445963651,0.095253489911556,-0.140015020966530,0.166658192873001,-0.153133019804955,0.032264485955238,0.260336756706238,0.092686891555786));
res += mul(Get(s1,0,-dy), float4x4(0.024378484115005,0.072112351655960,-0.108381666243076,-0.098094433546066,0.180037289857864,0.059811007231474,0.280306786298752,-0.051944714039564,-0.100501611828804,0.188446804881096,-0.007580351084471,-0.043013714253902,-0.076212175190449,-0.059447582811117,0.056964840739965,0.104186698794365));
res += mul(Get(s1,0,0), float4x4(-0.011583862826228,0.081396900117397,-0.058326516300440,-0.446443527936935,-0.096573501825333,-0.142580613493919,-0.356931626796722,-0.241751775145531,0.184284403920174,0.449081063270569,-0.246569484472275,-0.167300105094910,-0.178021207451820,-0.212912961840630,0.117670610547066,0.129885524511337));
res += mul(Get(s1,0,dy), float4x4(-0.099864006042480,0.032036978751421,0.150498092174530,-0.067789189517498,0.143408954143524,0.276870965957642,-0.269164919853210,-0.211169674992561,-0.065658807754517,-0.019681207835674,0.243610695004463,0.132721036672592,-0.020768243819475,-0.003678491106257,-0.010081424377859,0.090547293424606));
res += mul(Get(s1,dx,-dy), float4x4(0.039436906576157,0.072920806705952,0.014870072714984,-0.018423708155751,-0.109079934656620,0.073134467005730,0.154409378767014,0.079065062105656,0.211239218711853,0.198985308408737,-0.017245506867766,0.147490203380585,-0.023114491254091,-0.080634489655495,0.012720887549222,0.252787023782730));
res += mul(Get(s1,dx,0), float4x4(-0.099371768534184,0.051351189613342,0.050490576773882,-0.155195876955986,-0.140025541186333,0.047220896929502,-0.247550547122955,-0.065995208919048,-0.143257707357407,0.150189980864525,0.144941344857216,0.236312329769135,0.104874186217785,0.035906717181206,-0.030598316341639,0.104619309306145));
res += mul(Get(s1,dx,dy), float4x4(-0.025338316336274,0.015629334375262,0.043585397303104,-0.021080672740936,-0.181712254881859,0.329543292522430,-0.431593418121338,-0.181177064776421,-0.082890860736370,0.258156269788742,0.040459431707859,-0.145253330469131,0.148230120539665,0.001438694074750,-0.219317108392715,0.184347003698349));
res += mul(Get(s2,-dx,-dy), float4x4(-0.018447354435921,0.032773043960333,-0.026319826021791,-0.048109978437424,0.144935607910156,0.047252390533686,-0.172952115535736,-0.013880813494325,-0.199195399880409,0.118370309472084,-0.175357878208160,0.056564670056105,-0.353045284748077,-0.038547854870558,-0.304457873106003,-0.060812085866928));
res += mul(Get(s2,-dx,0), float4x4(-0.022131070494652,-0.077805116772652,-0.050265289843082,0.085591167211533,0.065528571605682,0.033286381512880,0.258821994066238,-0.229782104492188,-0.067643180489540,0.091228261590004,-0.147438332438469,-0.121110036969185,0.141470894217491,0.134650483727455,0.079798601567745,-0.030743448063731));
res += mul(Get(s2,-dx,dy), float4x4(-0.180691242218018,0.146854311227798,-0.053334765136242,-0.064867012202740,0.005504488013685,-0.008392862975597,-0.168303608894348,0.049620401114225,0.156738877296448,0.039628285914660,0.078278221189976,0.008577479980886,-0.168971687555313,-0.144706502556801,-0.014436422847211,-0.081853501498699));
res += mul(Get(s2,0,-dy), float4x4(0.057736959308386,-0.023976137861609,-0.057431966066360,-0.034405350685120,0.079517237842083,0.018187988549471,-0.113262385129929,0.057499695569277,0.014042065478861,-0.038713373243809,-0.083709277212620,-0.170019388198853,0.272385239601135,0.070786669850349,0.066169001162052,-0.168394550681114));
res += mul(Get(s2,0,0), float4x4(-0.099930934607983,0.239063620567322,0.017662074416876,0.062096305191517,-0.004265591502190,0.125405967235565,0.229048296809196,0.133437335491180,0.090879313647747,0.302506774663925,0.154226213693619,-0.033379562199116,0.041934255510569,-0.001641882350668,0.243408069014549,-0.128215387463570));
res += mul(Get(s2,0,dy), float4x4(-0.074876308441162,0.161022439599037,0.180102959275246,-0.107479929924011,0.085313558578491,0.136453628540039,-0.185452848672867,0.049078710377216,0.115580148994923,0.012937369756401,0.177872970700264,0.000871568277944,-0.010852906852961,0.040052946656942,0.006554231978953,-0.239046335220337));
res += mul(Get(s2,dx,-dy), float4x4(-0.195015862584114,-0.092237219214439,-0.083642236888409,-0.210718587040901,0.195477768778801,0.123949162662029,-0.096625059843063,-0.006805184297264,-0.188721135258675,0.010517588816583,0.024382730945945,-0.069177702069283,-0.025194775313139,0.074673779308796,-0.025943705812097,-0.262754142284393));
res += mul(Get(s2,dx,0), float4x4(-0.107003979384899,-0.167288526892662,-0.140340209007263,-0.316583633422852,-0.035375427454710,0.039870690554380,-0.034364219754934,-0.141547918319702,-0.075914628803730,0.001899280701764,-0.006039008963853,0.030799204483628,0.098200976848602,-0.029631869867444,0.011236758902669,-0.077801585197449));
res += mul(Get(s2,dx,dy), float4x4(0.010993064381182,-0.065461196005344,0.039380569010973,0.013967735692859,-0.017684986814857,0.050433356314898,-0.088980108499527,-0.045879554003477,-0.002546304604039,-0.005907046142966,0.034763298928738,-0.036576930433512,0.010010407306254,0.005271069705486,-0.190798759460449,-0.036295663565397));
res += mul(Get(s3,-dx,-dy), float4x4(0.001484937267378,-0.004315319936723,-0.128528222441673,-0.006369440350682,0.140132382512093,0.050062231719494,-0.091030448675156,-0.041935566812754,-0.046279050409794,-0.322977900505066,-0.017423849552870,-0.056195348501205,0.079582929611206,-0.044853318482637,0.043021731078625,-0.070834949612617));
res += mul(Get(s3,-dx,0), float4x4(0.212901040911674,-0.000872367527336,0.034945331513882,-0.161508649587631,-0.105320431292057,0.036282870918512,-0.235403686761856,0.064040049910545,0.091945983469486,-0.128377526998520,-0.253758490085602,-0.050709694623947,-0.265945672988892,-0.137550160288811,-0.072904832661152,0.188266709446907));
res += mul(Get(s3,-dx,dy), float4x4(0.070370703935623,0.123319342732430,-0.355511248111725,-0.129177823662758,0.001945429714397,-0.065321609377861,-0.054405737668276,-0.054297525435686,0.104229830205441,0.214805409312248,-0.117562435567379,-0.184162780642509,-0.173526048660278,-0.059992089867592,-0.220934614539146,0.036808151751757));
res += mul(Get(s3,0,-dy), float4x4(-0.055803604424000,-0.145761400461197,-0.054795905947685,0.019327014684677,0.148512706160545,0.082434669137001,0.242240741848946,-0.185323223471642,-0.052591994404793,-0.050850216299295,-0.116369262337685,0.320082277059555,0.127453744411469,0.170069992542267,0.167059794068336,0.080348789691925));
res += mul(Get(s3,0,0), float4x4(-0.184036105871201,0.162091389298439,0.007427874486893,-0.042124699801207,0.048998665064573,0.324736505746841,-0.505291521549225,-0.505749285221100,-0.068420484662056,0.021832022815943,0.288573414087296,0.018853455781937,-0.029180878773332,-0.432977676391602,-0.202149078249931,-0.380441337823868));
res += mul(Get(s3,0,dy), float4x4(-0.172629445791245,0.077328227460384,-0.306900084018707,-0.106184378266335,0.007605413906276,-0.121677413582802,0.080262497067451,-0.330492228269577,-0.023586278781295,-0.057915922254324,0.277517735958099,-0.108469434082508,0.157121911644936,0.414804399013519,0.182623580098152,-0.110230967402458));
res += mul(Get(s3,dx,-dy), float4x4(0.003028613049537,-0.027435149997473,-0.087229691445827,-0.027348235249519,0.040912616997957,-0.098478287458420,0.204561382532120,0.037883751094341,0.153461962938309,-0.074078604578972,0.148306310176849,0.123858861625195,-0.168054744601250,-0.085742652416229,0.014675229787827,-0.035422820597887));
res += mul(Get(s3,dx,0), float4x4(-0.039606232196093,-0.038340687751770,0.042049180716276,-0.167167291045189,0.093487478792667,0.099117174744606,0.031203698366880,0.064582765102386,0.009042155928910,0.121438637375832,-0.029726954177022,-0.013568094000220,-0.038852613419294,-0.034809779375792,0.009797097183764,-0.127055332064629));
res += mul(Get(s3,dx,dy), float4x4(-0.029131427407265,0.041561271995306,0.010540083982050,-0.020227557048202,-0.045546010136604,0.089794263243675,-0.049243759363890,-0.309555470943451,-0.120836898684502,-0.351231902837753,0.103370711207390,-0.014144148677588,0.044182561337948,-0.006775529123843,0.080025576055050,-0.163309976458549));
res += mul(Get(s4,-dx,-dy), float4x4(0.147856891155243,-0.061256464570761,0.085730016231537,0.036809105426073,0.456297785043716,0.135438650846481,0.063896045088768,-0.103465355932713,-0.105746865272522,-0.022858491167426,0.126009583473206,-0.027252921834588,-0.046255219727755,-0.011949961073697,0.004261714406312,0.013522578403354));
res += mul(Get(s4,-dx,0), float4x4(0.242164656519890,-0.064415618777275,0.041593253612518,0.052827704697847,0.234430044889450,0.292517304420471,0.110341221094131,0.090729460120201,-0.127480804920197,0.131571993231773,0.160158514976501,0.153664037585258,-0.002861273009330,0.071583382785320,0.010534386150539,0.124047584831715));
res += mul(Get(s4,-dx,dy), float4x4(-0.037829745560884,-0.007076725829393,0.185078337788582,0.033536855131388,0.037736181169748,0.088779769837856,0.285031735897064,-0.021681267768145,-0.118681222200394,-0.058209426701069,-0.142828494310379,0.072631560266018,0.024492163211107,0.147586017847061,-0.061992317438126,0.031800951808691));
res += mul(Get(s4,0,-dy), float4x4(-0.421102702617645,0.061436101794243,-0.342866808176041,-0.064929217100143,0.171267345547676,0.412901610136032,0.151861920952797,0.082481943070889,0.023814382031560,0.085781514644623,-0.089689753949642,-0.096147537231445,-0.133877992630005,0.074393130838871,0.005104068201035,-0.147290974855423));
res += mul(Get(s4,0,0), float4x4(-0.099093452095985,-0.088029868900776,-0.125495374202728,0.085594810545444,0.124671623110771,-0.020749852061272,0.394671410322189,-0.216747030615807,-0.136846438050270,0.220418214797974,0.175231039524078,0.302408933639526,0.063867598772049,0.280508011579514,0.186416372656822,0.181961506605148));
res += mul(Get(s4,0,dy), float4x4(-0.027883475646377,0.337735623121262,0.091277569532394,0.105106666684151,-0.032174721360207,0.260671943426132,-0.093430325388908,0.051186516880989,-0.058407571166754,-0.078478433191776,0.244908422231674,-0.143081501126289,-0.094121970236301,0.181163996458054,-0.119781903922558,0.241874173283577));
res += mul(Get(s4,dx,-dy), float4x4(0.081110268831253,0.076181642711163,0.056573677808046,0.156294777989388,-0.084534071385860,0.100109942257404,0.000333906034939,0.022913910448551,-0.118081949651241,-0.001359345507808,-0.003200125414878,0.019393282011151,-0.033620130270720,0.021104104816914,-0.015726644545794,-0.200290307402611));
res += mul(Get(s4,dx,0), float4x4(-0.075896561145782,-0.306400269269943,-0.238128542900085,0.089070171117783,-0.130798697471619,0.117928296327591,0.042448192834854,-0.319848984479904,-0.112162634730339,-0.012181327678263,0.139118447899818,-0.226608783006668,-0.072617836296558,0.001072881044820,-0.016340559348464,-0.259942829608917));
res += mul(Get(s4,dx,dy), float4x4(-0.017606535926461,-0.021285841241479,-0.136179447174072,0.186490863561630,-0.034342963248491,0.149657964706421,-0.149645239114761,0.001698245177977,-0.084247507154942,-0.222649410367012,0.017446985468268,-0.059967413544655,-0.002577517880127,0.007511418778449,-0.024974489584565,-0.058764997869730));
res += mul(Get(s5,-dx,-dy), float4x4(0.223857715725899,0.044786900281906,-0.020746424794197,-0.060644499957561,0.023381695151329,0.089410513639450,-0.062018290162086,-0.077116325497627,-0.030230525881052,0.013692086562514,0.044928144663572,-0.002073175972328,-0.027740122750401,-0.012822574935853,0.217288002371788,0.000421482080128));
res += mul(Get(s5,-dx,0), float4x4(0.102197185158730,-0.316109746694565,0.034412745386362,0.228897169232368,0.106786757707596,-0.032647471874952,-0.121066235005856,0.139503255486488,0.156612157821655,-0.055503457784653,0.180457726120949,-0.144323185086250,-0.219009652733803,-0.038307745009661,-0.018438788130879,0.132282361388206));
res += mul(Get(s5,-dx,dy), float4x4(0.050479177385569,0.056925199925900,-0.257533669471741,0.071203611791134,0.016719518229365,0.102834165096283,-0.022635962814093,-0.010993932373822,0.012141251005232,-0.033492967486382,0.225241079926491,-0.243906348943710,0.139240518212318,0.038271691650152,0.161302804946899,0.109345041215420));
res += mul(Get(s5,0,-dy), float4x4(0.047800064086914,0.186453253030777,-0.189009189605713,-0.160827323794365,-0.530526876449585,0.120553471148014,-0.086907699704170,-0.057748422026634,0.139334395527840,-0.048070106655359,-0.027061466127634,-0.005417267791927,0.121316842734814,0.087836980819702,0.017794029787183,0.019077830016613));
res += mul(Get(s5,0,0), float4x4(0.255123674869537,0.323749780654907,0.139070585370064,-0.245410084724426,0.144162803888321,-0.067653685808182,-0.031067233532667,-0.085474483668804,0.121660910546780,-0.025636333972216,0.133332461118698,0.095880307257175,-0.076590307056904,-0.179478734731674,-0.200588762760162,0.064063273370266));
res += mul(Get(s5,0,dy), float4x4(0.088146813213825,0.361710339784622,-0.042034160345793,-0.004005531314760,0.021065479144454,-0.067061617970467,0.141029700636864,-0.078523404896259,-0.004940176848322,0.042865496128798,-0.274029195308685,0.068048149347305,0.209230244159698,-0.062236078083515,0.124602876603603,0.067378923296928));
res += mul(Get(s5,dx,-dy), float4x4(0.145654693245888,0.237288028001785,0.099387429654598,0.013167679309845,0.126379087567329,0.008594476617873,-0.178475961089134,-0.134765729308128,0.008254231885076,-0.076606109738350,0.088862374424934,0.162464648485184,-0.044909175485373,0.081254325807095,-0.253050088882446,-0.038649436086416));
res += mul(Get(s5,dx,0), float4x4(-0.000093998241937,-0.022445632144809,0.040079973638058,-0.054238680750132,0.287731379270554,0.101323463022709,0.149248644709587,0.058273721486330,-0.048246148973703,-0.154458701610565,0.023091617971659,0.178060740232468,-0.110902473330498,0.140347838401794,0.074952811002731,0.140893682837486));
res += mul(Get(s5,dx,dy), float4x4(-0.261271238327026,0.216135933995247,-0.153785482048988,-0.176753774285316,0.022026972845197,-0.043205726891756,0.097770467400551,-0.009193794801831,0.045048765838146,-0.016992229968309,-0.330349415540695,-0.058538455516100,-0.095632217824459,0.039162557572126,-0.137395292520523,0.081140965223312));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.276738226413727,0.126504048705101,-0.151389047503471,0.128777444362640) * min(float4(0, 0, 0, 0), res);
return res;
}
