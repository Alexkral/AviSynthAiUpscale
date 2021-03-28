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
float4 res = float4(-0.007741454057395,-0.186434701085091,-0.667016386985779,-0.047175839543343);
res += mul(Get(s0,-dx,-dy), float4x4(-0.121907629072666,0.000002317063036,0.082113161683083,0.028339374810457,0.032592918723822,0.064001575112343,-0.060151100158691,-0.139735043048859,-0.170628756284714,-0.075954571366310,0.061361532658339,0.084747441112995,0.020541409030557,-0.029556782916188,0.012065296992660,0.006815275177360));
res += mul(Get(s0,-dx,0), float4x4(-0.097044833004475,0.094973601400852,0.025829851627350,0.091731287539005,-0.073414243757725,0.006756708957255,0.039886783808470,0.058314688503742,-0.033751081675291,-0.118557050824165,-0.066347092390060,0.024118555709720,0.051626484841108,-0.012337760999799,0.034221224486828,-0.022978300228715));
res += mul(Get(s0,-dx,dy), float4x4(-0.026017518714070,-0.019701411947608,0.127248585224152,-0.089012056589127,0.012762456201017,-0.030630564317107,0.038241542875767,-0.131873354315758,-0.182369157671928,0.133402317762375,0.042902458459139,-0.045582022517920,-0.114860795438290,-0.028445921838284,0.026161273941398,-0.143196195363998));
res += mul(Get(s0,0,-dy), float4x4(0.060981243848801,-0.033890992403030,0.135715663433075,-0.048357412219048,0.003061267780140,0.102740794420242,-0.076650120317936,-0.043448228389025,-0.099590465426445,0.011695684865117,0.387372106313705,0.105150401592255,0.001748088747263,-0.126951307058334,0.055498205125332,-0.015786895528436));
res += mul(Get(s0,0,0), float4x4(-0.196824029088020,0.012192739173770,0.162593424320221,-0.049128413200378,-0.077331751585007,-0.004386469256133,0.050566323101521,0.092705205082893,0.095736242830753,0.164765626192093,-0.324689805507660,0.129729121923447,0.066502049565315,-0.011973793618381,-0.092421114444733,-0.003767271991819));
res += mul(Get(s0,0,dy), float4x4(-0.114474542438984,0.037448659539223,-0.117201551795006,0.106990851461887,-0.030108673498034,-0.025878775864840,-0.034610424190760,-0.021576143801212,0.130696728825569,-0.168396368622780,0.050255618989468,-0.212588980793953,-0.074017852544785,0.334350675344467,0.154843091964722,0.114891678094864));
res += mul(Get(s0,dx,-dy), float4x4(-0.046617478132248,-0.018506994470954,-0.062852665781975,-0.100679516792297,-0.059796858578920,-0.191123396158218,-0.055037569254637,0.124422125518322,0.074555478990078,-0.058375425636768,-0.109996467828751,0.153031930327415,-0.027009349316359,-0.070661962032318,0.039595231413841,0.017591051757336));
res += mul(Get(s0,dx,0), float4x4(0.085345879197121,-0.038677386939526,-0.099383324384689,0.107827395200729,-0.009734877385199,-0.030067995190620,0.150052696466446,-0.172296866774559,0.098496891558170,-0.005653758067638,0.010270302183926,-0.233740344643593,0.035277623683214,-0.027092190459371,-0.083060346543789,0.044625349342823));
res += mul(Get(s0,dx,dy), float4x4(0.085866115987301,-0.179255455732346,0.048875041306019,-0.143732383847237,-0.019380737096071,-0.032275851815939,0.074016794562340,-0.005152341909707,0.130684062838554,0.127663269639015,-0.102811530232430,-0.012711753137410,-0.120893582701683,0.067115232348442,-0.063130743801594,0.062051590532064));
res += mul(Get(s1,-dx,-dy), float4x4(-0.388959974050522,0.030494220554829,0.348325431346893,-0.223971977829933,0.009659291245043,0.004128563217819,0.126162573695183,0.009251892566681,0.032664727419615,-0.010177059099078,-0.014242081902921,0.033701248466969,0.043530981987715,0.031637538224459,-0.035968869924545,0.008888297714293));
res += mul(Get(s1,-dx,0), float4x4(0.027344336733222,0.394053041934967,-0.127120465040207,0.295824795961380,0.071842908859253,0.035232450813055,-0.012282988987863,-0.054329507052898,-0.022679844871163,0.130044490098953,0.025726443156600,0.067267075181007,0.006539869122207,0.052022617310286,-0.005552379414439,-0.089955404400826));
res += mul(Get(s1,-dx,dy), float4x4(0.190050587058067,-0.109585046768188,0.036739651113749,0.054652124643326,-0.010043668560684,0.044389355927706,-0.154887646436691,-0.053862702101469,0.031551863998175,0.101980127394199,-0.009476837702096,-0.051633149385452,-0.034146483987570,-0.163171783089638,-0.005486997310072,-0.056807756423950));
res += mul(Get(s1,0,-dy), float4x4(-0.029628215357661,0.570009350776672,-0.274788618087769,0.652259588241577,0.176069691777229,0.023840194568038,-0.020568551495671,0.084425516426563,0.007596643641591,0.112180002033710,0.031494025141001,-0.167984262108803,0.028495674952865,0.175886988639832,-0.197490945458412,0.165627822279930));
res += mul(Get(s1,0,0), float4x4(0.263119220733643,-0.585916638374329,-0.306458085775375,-0.202376872301102,0.034599766135216,-0.109271667897701,0.100447408854961,-0.117848865687847,-0.007988193072379,-0.028357643634081,-0.116678684949875,-0.026101661846042,-0.069288991391659,-0.220579400658607,0.254278302192688,-0.332173436880112));
res += mul(Get(s1,0,dy), float4x4(-0.002232834231108,-0.205223679542542,0.016631746664643,-0.189224258065224,-0.174511820077896,-0.033079121261835,-0.001544701168314,0.120755180716515,0.048823077231646,-0.026503613218665,-0.001715375808999,-0.020430564880371,0.057923223823309,0.202832773327827,-0.070803016424179,0.297711670398712));
res += mul(Get(s1,dx,-dy), float4x4(0.348509460687637,-0.140073359012604,0.143449842929840,0.065970160067081,0.082081466913223,-0.040582325309515,-0.043475054204464,-0.067212499678135,0.049195084720850,0.054310597479343,-0.058388419449329,-0.098627947270870,-0.199170261621475,-0.038743678480387,0.371336042881012,-0.216982826590538));
res += mul(Get(s1,dx,0), float4x4(-0.149626389145851,0.274976372718811,0.001994932303205,0.125835746526718,-0.171108856797218,-0.012100884690881,0.088694140315056,-0.007125619333237,0.193981111049652,0.041531853377819,-0.049035463482141,-0.180102884769440,0.019108902662992,0.121580019593239,-0.294567346572876,0.355087667703629));
res += mul(Get(s1,dx,dy), float4x4(-0.074616722762585,-0.052891869097948,-0.018651472404599,-0.180271700024605,0.129547312855721,0.036529667675495,-0.143694460391998,0.103889547288418,-0.030419444665313,0.025151755660772,-0.016372753307223,0.157873645424843,0.126146286725998,-0.153711467981339,-0.015339206904173,-0.056613769382238));
res += mul(Get(s2,-dx,-dy), float4x4(-0.094591669738293,0.044858016073704,0.003349440637976,-0.270301252603531,0.111895985901356,-0.048722535371780,0.074564091861248,0.111708603799343,0.208952575922012,-0.025060722604394,0.019631886854768,-0.045678209513426,-0.002441010670736,0.044366303831339,0.034959856420755,0.030762424692512));
res += mul(Get(s2,-dx,0), float4x4(-0.175053060054779,0.022095253691077,-0.060602638870478,-0.040787540376186,-0.187988013029099,0.107469275593758,0.351311475038528,0.029415957629681,-0.238911673426628,-0.230859711766243,-0.240260556340218,-0.014475665986538,0.013503146357834,0.017692899331450,-0.053401865065098,-0.060447413474321));
res += mul(Get(s2,-dx,dy), float4x4(-0.104070372879505,0.035695925354958,0.033484306186438,0.219775289297104,0.037115838378668,0.071662701666355,0.178435042500496,0.100833304226398,-0.011438633315265,-0.102305054664612,-0.013487908989191,-0.221775978803635,0.155393764376640,-0.055903274565935,-0.089638091623783,0.066654182970524));
res += mul(Get(s2,0,-dy), float4x4(-0.087415143847466,-0.061622820794582,-0.007107601035386,-0.055099055171013,-0.069738171994686,-0.012152785435319,0.061219092458487,-0.022559961304069,-0.324893653392792,-0.041366383433342,0.634440600872040,-0.224722698330879,0.075262077152729,0.089913956820965,-0.048089411109686,-0.000997294089757));
res += mul(Get(s2,0,0), float4x4(0.019853992387652,-0.155603647232056,0.185276925563812,0.086881130933762,0.171979740262032,0.056018821895123,0.148187607526779,-0.092191919684410,-0.153379932045937,0.211857020854950,0.325793653726578,0.288918405771255,-0.005072915926576,0.049802802503109,-0.064017415046692,-0.162803992629051));
res += mul(Get(s2,0,dy), float4x4(0.293615281581879,-0.056415982544422,-0.028042128309608,-0.142495244741440,-0.385829836130142,0.146011769771576,-0.090761274099350,-0.144055381417274,0.057945437729359,0.001257721451111,-0.286515414714813,0.364847272634506,-0.198855221271515,-0.074142903089523,-0.068907521665096,-0.001821560435928));
res += mul(Get(s2,dx,-dy), float4x4(-0.041347935795784,-0.073225036263466,-0.047949668020010,0.006401112303138,-0.103784605860710,-0.007963602431118,0.069275006651878,0.023268634453416,-0.039712432771921,0.085789844393730,-0.199120610952377,0.008942819200456,0.065218016505241,-0.044558510184288,-0.081725701689720,-0.119303658604622));
res += mul(Get(s2,dx,0), float4x4(0.257272094488144,-0.046731401234865,-0.041560947895050,-0.081979751586914,-0.030483070760965,-0.022737538442016,0.247996106743813,-0.055346176028252,0.237220525741577,-0.151398465037346,-0.260822355747223,-0.074183046817780,-0.116444155573845,-0.077277213335037,0.021453170105815,-0.140945285558701));
res += mul(Get(s2,dx,dy), float4x4(-0.138719305396080,-0.037354100495577,0.084433190524578,0.022064212709665,0.009275611490011,0.050654839724302,0.148973003029823,0.068399585783482,0.147279590368271,-0.178347781300545,-0.220107838511467,0.077035173773766,-0.015862697735429,-0.072576195001602,-0.004799447488040,0.048880226910114));
res += mul(Get(s3,-dx,-dy), float4x4(0.089306794106960,0.043001007288694,0.024843160063028,0.130122110247612,-0.168183952569962,0.224215254187584,-0.340277463197708,0.143932670354843,-0.058789838105440,-0.115328960120678,0.238986328244209,-0.281264930963516,-0.094995535910130,-0.035322584211826,-0.074293643236160,-0.151027351617813));
res += mul(Get(s3,-dx,0), float4x4(0.008787651546299,0.192464083433151,0.034508284181356,0.017111001536250,0.084069073200226,-0.167876422405243,0.208922207355499,-0.168903604149818,-0.263993442058563,0.273673385381699,-0.155405342578888,0.299846202135086,0.141035482287407,0.012956217862666,0.073957562446594,0.048918198794127));
res += mul(Get(s3,-dx,dy), float4x4(0.106332309544086,0.025513248518109,0.035384465008974,-0.009215422905982,-0.013107953593135,0.222726017236710,0.065255716443062,0.001433184603229,0.090044423937798,0.087590567767620,0.019852807745337,-0.075047865509987,-0.105406366288662,-0.091753266751766,-0.018471153452992,-0.003628579899669));
res += mul(Get(s3,0,-dy), float4x4(0.021286526694894,0.050737552344799,0.127185180783272,-0.054430391639471,0.130906268954277,0.117379285395145,-0.239276289939880,0.255286812782288,-0.318157166242599,-0.110371567308903,0.330859452486038,-0.509803593158722,-0.102225899696350,-0.102890700101852,-0.040134511888027,0.052337184548378));
res += mul(Get(s3,0,0), float4x4(-0.003726385766640,0.078888371586800,0.091003932058811,0.067348696291447,0.020749608054757,-0.190624475479126,0.071148864924908,-0.352203518152237,-0.037649672478437,0.217033639550209,-0.095981813967228,0.397864997386932,0.038983795791864,0.102873302996159,0.153860062360764,-0.066859312355518));
res += mul(Get(s3,0,dy), float4x4(0.062286686152220,-0.167524084448814,0.148136630654335,0.028230113908648,-0.132312610745430,0.103323914110661,0.012907658703625,0.096529722213745,0.372648209333420,-0.096375733613968,-0.110988497734070,0.124407634139061,-0.030162004753947,0.142469882965088,0.208834022283554,0.033675462007523));
res += mul(Get(s3,dx,-dy), float4x4(-0.006894109770656,0.026885593309999,0.077371172606945,-0.023353554308414,0.124076731503010,0.079341761767864,-0.138867363333702,0.293726325035095,-0.019170511513948,0.016454005613923,-0.165309116244316,0.250146716833115,-0.033852081745863,-0.004348462913185,-0.335621476173401,-0.035614863038063));
res += mul(Get(s3,dx,0), float4x4(-0.041371427476406,-0.033164456486702,0.017809320241213,0.039517797529697,0.132791742682457,-0.189141675829887,0.006954240147024,-0.266907483339310,0.214122653007507,-0.435781598091125,-0.115068189799786,-0.219854891300201,0.073124960064888,-0.083710819482803,-0.102105937898159,-0.041755709797144));
res += mul(Get(s3,dx,dy), float4x4(-0.092618890106678,0.033160392194986,0.004038260318339,-0.128728255629539,-0.053263980895281,0.061675924807787,0.091226115822792,0.098988763988018,0.074763000011444,0.021025180816650,0.086252778768539,0.038456726819277,0.002019965322688,-0.006873640231788,-0.186931625008583,-0.054213900119066));
res += mul(Get(s4,-dx,-dy), float4x4(-0.036659575998783,-0.007490477059036,0.032250139862299,0.004607658367604,0.019892226904631,0.123460292816162,0.269631236791611,-0.162110656499863,0.229887604713440,0.103963457047939,0.131776213645935,0.185084953904152,-0.372694849967957,0.069641806185246,0.086260773241520,-0.021343102678657));
res += mul(Get(s4,-dx,0), float4x4(-0.116433776915073,0.029167326167226,0.109299823641777,-0.121663324534893,-0.033983163535595,0.132950246334076,0.078252203762531,0.013826145790517,0.032980509102345,0.222414448857307,-0.028376093134284,-0.159982264041901,0.202831342816353,-0.041196674108505,0.039577014744282,0.108405128121376));
res += mul(Get(s4,-dx,dy), float4x4(0.030275076627731,-0.079802326858044,0.015271652489901,-0.028344133868814,-0.027624752372503,-0.112280979752541,0.001616410329007,-0.009340580552816,-0.027144834399223,-0.026068935170770,0.031646020710468,-0.082814857363701,0.094673350453377,-0.015500577166677,-0.111394472420216,-0.135134994983673));
res += mul(Get(s4,0,-dy), float4x4(0.024415967985988,0.065875589847565,-0.062873139977455,-0.076882340013981,0.085960507392883,0.080393619835377,0.283418178558350,0.042969983071089,-0.052594929933548,-0.018636012449861,-0.005677402950823,-0.074652463197708,0.091764852404594,-0.009424232877791,-0.341626942157745,0.110687576234341));
res += mul(Get(s4,0,0), float4x4(-0.012470315210521,-0.158594235777855,0.175621330738068,-0.242884382605553,0.028551256284118,0.194163233041763,0.001358580077067,0.030305214226246,-0.079979725182056,0.110691241919994,0.159381762146950,-0.199710160493851,0.424162685871124,-0.045521639287472,0.041499868035316,-0.229235768318176));
res += mul(Get(s4,0,dy), float4x4(-0.011971726082265,-0.004728891886771,-0.023743545636535,0.140999153256416,-0.003609700361267,0.023193376138806,0.037327889353037,0.014937913045287,-0.093196123838425,0.017197322100401,-0.047115668654442,-0.022362312301993,-0.082935750484467,-0.021287275478244,-0.111820869147778,0.147569984197617));
res += mul(Get(s4,dx,-dy), float4x4(0.054192874580622,0.051414463669062,0.011002485640347,-0.065656952559948,-0.091385513544083,0.066589154303074,0.255390912294388,0.003871187334880,-0.097096413373947,-0.073687896132469,0.008300633169711,0.072719760239124,-0.091356165707111,0.045616991817951,0.006140882149339,-0.034984424710274));
res += mul(Get(s4,dx,0), float4x4(-0.000535882601980,0.018748654052615,-0.042089365422726,0.091191187500954,-0.147904321551323,0.062051147222519,0.099397607147694,0.031608726829290,-0.042736995965242,-0.002861085813493,0.048005398362875,-0.142169415950775,0.089551597833633,0.042489543557167,-0.033041216433048,0.016117002815008));
res += mul(Get(s4,dx,dy), float4x4(0.024088235571980,0.024173736572266,-0.005564988590777,-0.076396010816097,0.085717663168907,0.091971576213837,-0.047324374318123,0.159835204482079,0.042917855083942,0.018228489905596,-0.043877594172955,-0.053691573441029,-0.096921414136887,0.063964672386646,0.009703111834824,0.018600415438414));
res += mul(Get(s5,-dx,-dy), float4x4(-0.060746178030968,0.035597480833530,0.020997049286962,0.017666429281235,0.113278172910213,0.005896925926208,0.056770075112581,-0.079402923583984,-0.098281189799309,-0.194650024175644,0.386465430259705,-0.267068117856979,0.062202595174313,-0.106678031384945,-0.080101765692234,-0.262401670217514));
res += mul(Get(s5,-dx,0), float4x4(0.032496009021997,0.041408795863390,-0.070275247097015,-0.166758999228477,0.046539474278688,-0.051128212362528,-0.151787653565407,0.177404984831810,-0.263323426246643,0.374415278434753,0.080572299659252,0.147787407040596,-0.147112756967545,-0.418275713920593,-0.269322752952576,-0.030156688764691));
res += mul(Get(s5,-dx,dy), float4x4(0.046368625015020,-0.133152082562447,-0.005657305940986,-0.195196181535721,-0.362387269735336,-0.094225473701954,-0.038661416620016,-0.099902853369713,0.137205228209496,-0.188407808542252,-0.118334524333477,0.148126140236855,-0.110813148319721,0.015584247186780,-0.076236434280872,-0.077096618711948));
res += mul(Get(s5,0,-dy), float4x4(-0.009445745497942,0.024981945753098,-0.077115908265114,0.005959144793451,-0.015458142384887,0.014170366339386,0.136693313717842,0.005225932225585,-0.320624440908432,-0.112027622759342,0.506749808788300,-0.513196766376495,-0.166368320584297,0.238564312458038,0.391702473163605,-0.110495880246162));
res += mul(Get(s5,0,0), float4x4(-0.089399389922619,0.006355797406286,0.111295886337757,-0.059102766215801,-0.185831263661385,0.274455338716507,0.183403566479683,0.072128824889660,0.238754555583000,0.508357405662537,-0.158552452921867,0.554590821266174,-0.042547538876534,0.357859104871750,-0.000918319041375,0.388806909322739));
res += mul(Get(s5,0,dy), float4x4(0.147641822695732,-0.052975658327341,-0.026682674884796,0.013524394482374,0.063796877861023,0.072288148105145,-0.034911125898361,-0.044076982885599,0.200762152671814,-0.223020464181900,0.132926300168037,-0.068735204637051,-0.035376667976379,0.138161167502403,-0.032146755605936,0.066720910370350));
res += mul(Get(s5,dx,-dy), float4x4(0.178862914443016,0.070290260016918,-0.039525460451841,-0.004948129877448,0.101543918251991,0.075214564800262,0.025035312399268,-0.014567664824426,0.217634975910187,-0.077727101743221,-0.119564667344093,0.044002868235111,0.171175152063370,-0.007277132943273,-0.111181326210499,0.031729631125927));
res += mul(Get(s5,dx,0), float4x4(-0.041265051811934,-0.050808008760214,0.050355557352304,0.078246399760246,0.095344990491867,-0.173540234565735,-0.255937755107880,0.084585115313530,0.214916855096817,-0.546319544315338,-0.110447540879250,-0.038135465234518,0.243211343884468,-0.276850491762161,0.153668180108070,-0.178860336542130));
res += mul(Get(s5,dx,dy), float4x4(-0.073994725942612,-0.006521446164697,-0.031821355223656,-0.049831978976727,0.201670095324516,-0.176587641239166,0.138650432229042,-0.140434071421623,-0.070232160389423,-0.330691337585449,-0.166425317525864,-0.034939408302307,-0.137347608804703,-0.125283896923065,-0.035820301622152,0.154754832386971));
res = max(float4(0, 0, 0, 0), res) + float4(-0.467213690280914,0.854047060012817,-0.025301715359092,0.137249380350113) * min(float4(0, 0, 0, 0), res);
return res;
}