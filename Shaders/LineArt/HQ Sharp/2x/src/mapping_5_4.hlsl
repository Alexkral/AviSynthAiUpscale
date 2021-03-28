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
float4 res = float4(-0.014836217276752,-0.032374393194914,-0.038225840777159,0.041501168161631);
res += mul(Get(s0,-dx,-dy), float4x4(-0.116120077669621,-0.189370512962341,0.049747254699469,0.027004998177290,0.009471618570387,0.127325177192688,0.027450798079371,0.048266608268023,0.107215352356434,-0.199265241622925,0.165926039218903,-0.043690312653780,-0.028690002858639,0.044324662536383,-0.048415627330542,-0.024504460394382));
res += mul(Get(s0,-dx,0), float4x4(-0.007405739743263,-0.076788820326328,0.208460167050362,-0.036207742989063,-0.038448005914688,0.145841822028160,0.101781703531742,0.098170183598995,-0.086431421339512,-0.028115479275584,0.152046144008636,0.016638176515698,-0.026152310892940,0.162447735667229,0.082398369908333,-0.050990194082260));
res += mul(Get(s0,-dx,dy), float4x4(-0.293413609266281,0.024009944871068,0.171973392367363,0.105783738195896,0.221107795834541,-0.048087798058987,0.011523040942848,-0.072266511619091,-0.031387191265821,0.083969473838806,-0.017011567950249,-0.119334489107132,0.062437873333693,-0.045489065349102,-0.224350973963737,-0.004996548406780));
res += mul(Get(s0,0,-dy), float4x4(-0.078752741217613,-0.113593287765980,-0.114854976534843,-0.022892890498042,0.092095516622066,0.042511682957411,0.132685780525208,0.002540886634961,-0.039241019636393,-0.001871851971373,-0.166228562593460,0.037766076624393,0.078931212425232,0.154888644814491,-0.113410130143166,0.022418379783630));
res += mul(Get(s0,0,0), float4x4(0.157684013247490,0.004277264233679,-0.006230162456632,-0.056593500077724,-0.104119673371315,0.018494600430131,0.097001284360886,0.086005955934525,-0.005775937810540,0.008208375424147,-0.276196151971817,-0.000959337572567,-0.180850133299828,0.165122196078300,0.200120657682419,0.019527804106474));
res += mul(Get(s0,0,dy), float4x4(-0.338144809007645,0.015296596102417,-0.216715022921562,0.147649660706520,0.277754753828049,-0.035989187657833,-0.109816297888756,0.089423500001431,-0.051210753619671,0.039055429399014,-0.202692300081253,-0.101329036056995,0.168435350060463,-0.086150228977203,-0.280797630548477,-0.020161757245660));
res += mul(Get(s0,dx,-dy), float4x4(-0.158131539821625,0.028585189953446,-0.036381047219038,0.132163003087044,-0.073062293231487,-0.037428442388773,-0.114219173789024,0.141155689954758,0.046005621552467,0.098344497382641,-0.103598728775978,0.123470537364483,0.019299466162920,0.045132514089346,0.112473852932453,0.034012742340565));
res += mul(Get(s0,dx,0), float4x4(-0.014195655472577,0.041954405605793,0.087980218231678,-0.100666977465153,-0.037308696657419,-0.111712001264095,0.022935157641768,0.101036101579666,-0.063562035560608,0.041237197816372,-0.093966558575630,-0.065998539328575,0.026551943272352,0.068778872489929,0.322675555944443,0.324343562126160));
res += mul(Get(s0,dx,dy), float4x4(-0.303260535001755,0.053135037422180,-0.125026330351830,0.066265843808651,-0.093986436724663,0.043536007404327,-0.172569900751114,0.052120603621006,-0.003100477857515,-0.016528623178601,-0.095248788595200,-0.104068815708160,0.148539304733276,-0.039059367030859,0.076835446059704,-0.092461138963699));
res += mul(Get(s1,-dx,-dy), float4x4(0.147448644042015,-0.024073744192719,-0.140621095895767,0.098745040595531,-0.024555297568440,-0.440250605344772,0.178338378667831,-0.068354226648808,-0.161927983164787,0.062214866280556,0.075292900204659,0.055075291544199,-0.025269677862525,-0.111784636974335,-0.031795628368855,-0.064918018877506));
res += mul(Get(s1,-dx,0), float4x4(-0.046796120703220,0.030946755781770,-0.006326482165605,0.019385263323784,0.067007958889008,-0.054084051400423,0.147001028060913,0.006760066375136,-0.136526882648468,-0.026851762086153,0.069375194609165,-0.060574684292078,-0.041940364986658,-0.067436471581459,0.062493786215782,0.042194437235594));
res += mul(Get(s1,-dx,dy), float4x4(-0.015809802338481,-0.008430507034063,0.171664535999298,-0.008564886637032,-0.201751232147217,-0.020248195156455,0.076828956604004,-0.050694540143013,0.303460717201233,0.007227821275592,-0.093844421207905,-0.073034338653088,0.009425229392946,0.136745586991310,0.084812149405479,-0.028165278956294));
res += mul(Get(s1,0,-dy), float4x4(0.072448931634426,-0.023469682782888,-0.103897958993912,-0.031247721984982,-0.129352450370789,-0.498931169509888,-0.368936657905579,-0.118598401546478,-0.275542110204697,-0.103033974766731,0.102562494575977,-0.226298630237579,0.109182722866535,-0.167369216680527,-0.081719987094402,0.101155079901218));
res += mul(Get(s1,0,0), float4x4(-0.065487228333950,-0.004621909465641,-0.091390408575535,0.002740034833550,0.059335038065910,0.068347007036209,0.023258455097675,0.208049342036247,-0.055073548108339,-0.003312174230814,-0.046162959188223,0.149625763297081,-0.052465669810772,0.058645278215408,-0.079577907919884,0.109795145690441));
res += mul(Get(s1,0,dy), float4x4(0.173970267176628,-0.008102107793093,-0.167719021439552,0.015568218193948,-0.391743928194046,0.114625528454781,-0.024926947429776,0.004465675912797,0.176819905638695,-0.070182494819164,-0.052005846053362,-0.090938881039619,0.030514642596245,0.092426352202892,-0.038931246846914,-0.075590841472149));
res += mul(Get(s1,dx,-dy), float4x4(-0.087664082646370,0.016498979181051,-0.189893648028374,-0.022175185382366,-0.052959106862545,0.040461357682943,-0.141513735055923,0.131615042686462,-0.097696952521801,0.028743907809258,-0.097914583981037,-0.043966490775347,0.051835961639881,0.081220410764217,-0.077125191688538,-0.055538542568684));
res += mul(Get(s1,dx,0), float4x4(0.153196513652802,-0.109422832727432,-0.115156233310699,-0.209801957011223,0.200210928916931,-0.147843971848488,-0.084711611270905,-0.126129180192947,0.027006948366761,0.095128946006298,0.066093400120735,-0.103883333504200,-0.038444139063358,0.024104952812195,0.016038229689002,-0.107538528740406));
res += mul(Get(s1,dx,dy), float4x4(-0.059985321015120,0.094029575586319,-0.136872723698616,0.159554019570351,-0.213882878422737,-0.002667802851647,-0.253819137811661,-0.113035760819912,-0.015551753342152,-0.085370942950249,0.027966698631644,0.082937672734261,-0.038447640836239,-0.044952709227800,0.147489354014397,0.135874912142754));
res += mul(Get(s2,-dx,-dy), float4x4(0.053726904094219,-0.037035647779703,-0.009827251546085,-0.023896524682641,0.172274351119995,0.175152808427811,-0.054464444518089,0.089138559997082,0.058071643114090,0.090064145624638,-0.048519745469093,0.109651423990726,-0.005590212531388,-0.048974797129631,0.244792833924294,-0.198897451162338));
res += mul(Get(s2,-dx,0), float4x4(-0.100761279463768,0.005855408497155,0.030042046681046,0.095703147351742,-0.117583759129047,-0.215159222483635,-0.110008336603642,0.168857380747795,-0.105283491313457,0.026677493005991,-0.082486338913441,0.140080019831657,0.120317183434963,0.306360721588135,-0.285453826189041,0.160952329635620));
res += mul(Get(s2,-dx,dy), float4x4(-0.104594215750694,0.045819729566574,0.031784199178219,-0.072873525321484,-0.022576419636607,0.069958008825779,-0.105691194534302,0.094128139317036,0.018774855881929,0.023477096110582,-0.085903897881508,-0.077024616301060,-0.161130815744400,-0.141685500741005,-0.043461564928293,-0.083650089800358));
res += mul(Get(s2,0,-dy), float4x4(0.155144810676575,-0.233493685722351,-0.132950127124786,0.157107934355736,0.093308903276920,0.144302114844322,0.135394513607025,-0.077892154455185,-0.037410199642181,-0.095128066837788,0.031263854354620,-0.076342411339283,-0.275544226169586,0.008478713221848,0.190324902534485,-0.211846068501472));
res += mul(Get(s2,0,0), float4x4(-0.145430937409401,0.223055213689804,-0.268601596355438,-0.012691697105765,-0.025358295068145,0.052085317671299,0.105610102415085,-0.123309269547462,-0.028485748916864,-0.059179931879044,-0.263291388750076,0.310805439949036,0.212657511234283,0.103207774460316,0.139883860945702,0.090162694454193));
res += mul(Get(s2,0,dy), float4x4(0.068840913474560,-0.018334235996008,-0.227822035551071,-0.040692474693060,0.116329222917557,0.031147737056017,0.046676941215992,0.006441144272685,-0.088798932731152,-0.061431296169758,0.058847781270742,0.064341135323048,-0.308698594570160,-0.163404628634453,0.006093511823565,-0.183972030878067));
res += mul(Get(s2,dx,-dy), float4x4(0.080998010933399,-0.191565871238708,0.053240135312080,-0.157686039805412,-0.050065256655216,0.021779177710414,-0.039858318865299,-0.024173650890589,-0.058250404894352,-0.109574757516384,-0.099133238196373,-0.120543487370014,-0.070515856146812,-0.016164544969797,-0.120841667056084,-0.009830187074840));
res += mul(Get(s2,dx,0), float4x4(0.032893598079681,-0.076042190194130,-0.036578882485628,0.073974356055260,0.067878626286983,-0.104108490049839,-0.048010073602200,0.076232649385929,0.072291061282158,-0.084615506231785,-0.141739383339882,0.013347753323615,0.072461731731892,0.085403069853783,-0.143864884972572,0.058810513466597));
res += mul(Get(s2,dx,dy), float4x4(-0.335980266332626,0.087094098329544,0.080883331596851,-0.036273900419474,0.031541362404823,0.078004188835621,-0.187107414007187,0.038581758737564,-0.055576834827662,0.067785158753395,0.036133658140898,-0.091267541050911,-0.128390610218048,-0.005463315639645,-0.084107100963593,-0.100338220596313));
res += mul(Get(s3,-dx,-dy), float4x4(-0.075561895966530,0.039180420339108,0.087126143276691,0.057282965630293,-0.109749183058739,0.168712332844734,0.142536222934723,-0.079571254551411,-0.033440083265305,-0.005742922890931,0.206486806273460,-0.030591642484069,-0.000547357078176,-0.050342321395874,-0.087746292352676,-0.027875214815140));
res += mul(Get(s3,-dx,0), float4x4(-0.059771433472633,-0.025180749595165,-0.076290152966976,-0.055346593260765,0.025088660418987,0.051169358193874,0.025415819138288,-0.018624531105161,0.125789627432823,-0.067012302577496,-0.068368777632713,-0.004626644309610,-0.012669605202973,-0.160588353872299,0.048456486314535,-0.137809336185455));
res += mul(Get(s3,-dx,dy), float4x4(-0.071196563541889,-0.011683042161167,0.023952638730407,0.028311939910054,0.148938611149788,0.000734971719794,-0.023109398782253,-0.021096525713801,-0.115305557847023,0.093311257660389,-0.098544903099537,0.210148528218269,-0.059810660779476,0.018187709152699,-0.024369128048420,-0.187287449836731));
res += mul(Get(s3,0,-dy), float4x4(-0.007385435514152,0.267200887203217,-0.034242011606693,-0.081211663782597,-0.082464627921581,-0.181165009737015,0.067060180008411,0.034546736627817,-0.085704490542412,0.059294261038303,-0.206652253866196,-0.035759285092354,0.047078896313906,-0.036636136472225,-0.034391500055790,-0.023604260757565));
res += mul(Get(s3,0,0), float4x4(-0.032728508114815,0.090211816132069,-0.009182170964777,0.003818322205916,0.098827935755253,-0.128190472722054,-0.022271273657680,0.108990184962749,0.002117923693731,-0.044755522161722,0.285658955574036,-0.088999323546886,-0.186331316828728,0.068155251443386,-0.005680073052645,-0.143942952156067));
res += mul(Get(s3,0,dy), float4x4(0.157836943864822,0.165386781096458,0.107116743922234,0.072568766772747,-0.210928663611412,0.104817867279053,0.014759502373636,-0.021569300442934,0.047376830130816,0.056821517646313,-0.194010242819786,0.184781029820442,-0.034656740725040,-0.024761026725173,-0.045219752937555,0.096957542002201));
res += mul(Get(s3,dx,-dy), float4x4(-0.030071808025241,-0.152233734726906,0.011865970678627,-0.124888099730015,0.015292012132704,-0.048663619905710,-0.176616534590721,0.006880279630423,0.144818678498268,0.027926797047257,-0.091276302933693,0.056673545390368,0.052071306854486,-0.003433315781876,-0.016972104087472,-0.098269030451775));
res += mul(Get(s3,dx,0), float4x4(-0.068288229405880,-0.029259109869599,0.041401013731956,-0.000500038091559,0.080642640590668,0.079624339938164,-0.199629157781601,0.069665499031544,-0.019469359889627,0.087225802242756,0.083726197481155,-0.157163903117180,-0.042272794991732,-0.002534270752221,-0.162700206041336,-0.022928822785616));
res += mul(Get(s3,dx,dy), float4x4(0.119635589420795,0.040271107107401,-0.153053984045982,0.199664413928986,-0.076497644186020,0.063100866973400,-0.216990068554878,0.112180158495903,0.083465456962585,0.030784301459789,-0.251037329435349,-0.059906743466854,0.001579378498718,-0.009399857372046,0.002142704324797,-0.016847316175699));
res += mul(Get(s4,-dx,-dy), float4x4(0.068673305213451,-0.091626197099686,0.067020677030087,0.063730299472809,0.049116671085358,-0.070026725530624,0.057174209505320,-0.007877997122705,0.085783794522285,0.058428939431906,0.030993966385722,0.060455698519945,0.043467763811350,-0.091747507452965,0.134375512599945,-0.000680552679114));
res += mul(Get(s4,-dx,0), float4x4(-0.014578106813133,-0.157961577177048,0.022050641477108,-0.026622498407960,-0.114272721111774,0.007176960818470,0.144134566187859,-0.074642784893513,-0.076931856572628,-0.056746713817120,0.118555307388306,0.093990057706833,-0.112459190189838,0.025133155286312,0.036251910030842,0.181637123227119));
res += mul(Get(s4,-dx,dy), float4x4(0.011350683867931,-0.000634339055978,0.104148723185062,0.007818487472832,0.123272284865379,-0.065496645867825,-0.087654411792755,-0.109161786735058,0.030601872131228,0.022695077583194,-0.012963503599167,0.022344697266817,-0.017221175134182,0.080721676349640,-0.056124836206436,-0.020878439769149));
res += mul(Get(s4,0,-dy), float4x4(0.015067597851157,-0.331547230482101,-0.004417234100401,0.088932625949383,0.032744344323874,-0.286224991083145,-0.100274041295052,0.058942779898643,0.130049228668213,0.189664930105209,0.014506673440337,0.016999306157231,0.033366184681654,-0.001011972315609,-0.009907266125083,-0.140506148338318));
res += mul(Get(s4,0,0), float4x4(0.140617311000824,-0.193125694990158,-0.061533488333225,0.100250959396362,-0.015503331087530,0.207524240016937,0.069023229181767,-0.165607154369354,-0.031688377261162,-0.235158577561378,-0.010956420563161,-0.005416733212769,-0.241605728864670,0.060666237026453,-0.181550726294518,-0.152122557163239));
res += mul(Get(s4,0,dy), float4x4(-0.061398562043905,-0.065516933798790,-0.233358129858971,-0.095449894666672,-0.101555660367012,-0.014814411289990,-0.039441201835871,-0.162320405244827,0.110290028154850,0.020476046949625,-0.089747063815594,0.008646201342344,-0.027262702584267,0.015506311319768,-0.094898879528046,-0.050933770835400));
res += mul(Get(s4,dx,-dy), float4x4(0.069297276437283,-0.217534467577934,-0.003221928607672,-0.059119358658791,0.006888965610415,-0.030876180157065,0.077561855316162,0.038567081093788,0.060904998332262,-0.061233334243298,-0.065359830856323,0.058841425925493,0.016085026785731,0.035535112023354,0.056540381163359,0.031342167407274));
res += mul(Get(s4,dx,0), float4x4(0.102931469678879,-0.067871838808060,0.141350477933884,-0.101452276110649,0.059994455426931,0.002041782019660,-0.067442819476128,-0.200456827878952,-0.144720405340195,0.046995155513287,0.010398029349744,-0.145805031061172,-0.025995627045631,-0.045394204556942,-0.093339510262012,0.134253978729248));
res += mul(Get(s4,dx,dy), float4x4(0.009289671666920,0.052496749907732,0.070117227733135,-0.046958617866039,-0.095718666911125,-0.041654791682959,-0.250017553567886,-0.163776904344559,-0.072541095316410,0.032490234822035,-0.009793553501368,0.112944252789021,0.037030462175608,-0.004555604420602,-0.013112702406943,0.030009234324098));
res += mul(Get(s5,-dx,-dy), float4x4(-0.031077491119504,0.006340004038066,-0.038671109825373,0.013071263208985,0.043928872793913,0.011548117734492,0.096122592687607,0.009540492668748,0.004226160235703,0.122352369129658,-0.134434625506401,-0.025040013715625,0.065146669745445,-0.297132164239883,0.117323510348797,0.015754776075482));
res += mul(Get(s5,-dx,0), float4x4(0.006395300384611,0.024391919374466,0.021418811753392,0.011337491683662,0.078170835971832,0.036481540650129,0.050224877893925,0.058111611753702,0.002822509268299,0.208148315548897,0.068441025912762,-0.054337818175554,-0.098826877772808,-0.059172019362450,0.213296994566917,-0.039352446794510));
res += mul(Get(s5,-dx,dy), float4x4(-0.016960080713034,0.031442482024431,0.099802158772945,-0.107626199722290,-0.127024978399277,-0.002137411618605,-0.013103901408613,0.129510492086411,0.154852449893951,-0.027660781517625,0.083156973123550,-0.109240829944611,-0.249031782150269,0.062313701957464,0.098689354956150,-0.059372898191214));
res += mul(Get(s5,0,-dy), float4x4(-0.043763797730207,-0.113044843077660,-0.043283540755510,-0.108110234141350,-0.015629194676876,0.143381416797638,-0.018452681601048,0.143983468413353,-0.088944792747498,0.104602143168449,0.068042919039726,0.153826609253883,-0.041721776127815,-0.044516421854496,0.088034160435200,0.064885266125202));
res += mul(Get(s5,0,0), float4x4(-0.018241720274091,0.136827781796455,0.022417649626732,-0.224081605672836,0.086275227367878,0.092699699103832,0.143473431468010,-0.321327716112137,-0.068288788199425,0.008468178100884,0.184948146343231,0.051169723272324,0.035494387149811,-0.316870898008347,-0.036493789404631,0.001826030784287));
res += mul(Get(s5,0,dy), float4x4(-0.124000646173954,0.039254475384951,-0.052419628947973,0.018009854480624,0.112823121249676,-0.034986644983292,-0.043508965522051,0.094031795859337,0.144688203930855,0.046861346811056,0.135908499360085,-0.022396104410291,-0.413446456193924,-0.030225925147533,0.070932157337666,0.123727425932884));
res += mul(Get(s5,dx,-dy), float4x4(0.074279189109802,-0.137682721018791,-0.020270673558116,-0.135784253478050,-0.048287920653820,0.088386267423630,-0.175651431083679,0.003207199741155,-0.043991204351187,0.010210450738668,0.054404400289059,-0.168981403112411,0.118752032518387,0.005978572648019,-0.002174744149670,-0.014608356170356));
res += mul(Get(s5,dx,0), float4x4(-0.015360176563263,0.025608299300075,0.060189537703991,0.050526242703199,-0.008859006687999,-0.049100566655397,-0.042267620563507,0.120901964604855,-0.022390970960259,0.032297778874636,0.118573382496834,0.090451523661613,-0.114977069199085,0.007001680321991,-0.141313761472702,-0.064465425908566));
res += mul(Get(s5,dx,dy), float4x4(0.036383621394634,-0.007931166328490,0.055555876344442,-0.127824351191521,0.132026284933090,-0.058464221656322,-0.033788517117500,0.058480937033892,0.072003766894341,0.009852275252342,0.123735956847668,-0.048720493912697,-0.092640757560730,-0.104651592671871,-0.207655951380730,0.032794017344713));
res = max(float4(0, 0, 0, 0), res) + float4(-0.128987506031990,-0.231579631567001,0.144457101821899,0.699850916862488) * min(float4(0, 0, 0, 0), res);
return res;
}