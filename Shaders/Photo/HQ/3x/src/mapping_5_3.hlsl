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
float4 res = float4(0.005600843578577,-0.425012677907944,0.038308039307594,0.055732652544975);
res += mul(Get(s0,-dx,-dy), float4x4(-0.045144595205784,-0.111462064087391,-0.028253037482500,-0.100715465843678,-0.066157795488834,0.013097725808620,0.153189629316330,-0.121674597263336,-0.026038218289614,0.085692636668682,0.030313992872834,0.110415466129780,0.061657674610615,0.104536339640617,-0.088294565677643,0.188556268811226));
res += mul(Get(s0,-dx,0), float4x4(0.176295027136803,0.032707013189793,-0.141574457287788,-0.070875152945518,-0.058377794921398,-0.079930134117603,0.134172499179840,-0.129098162055016,-0.013607612811029,-0.027398036792874,0.131391435861588,0.025611620396376,0.005535185802728,-0.021045036613941,0.037620283663273,-0.278043508529663));
res += mul(Get(s0,-dx,dy), float4x4(0.067017346620560,-0.035518627613783,0.067670471966267,-0.077064953744411,-0.166521638631821,-0.150965079665184,0.210891753435135,-0.051404513418674,0.134431466460228,0.092832431197166,0.052330624312162,0.195608422160149,-0.024163542315364,0.112226523458958,0.051451861858368,0.051152195781469));
res += mul(Get(s0,0,-dy), float4x4(-0.047619082033634,-0.370321840047836,-0.181506872177124,-0.028408972546458,0.042580012232065,0.013410216197371,-0.051990918815136,0.111076183617115,-0.009767912328243,-0.089026629924774,-0.042233418673277,-0.002111492445692,-0.143076732754707,0.264261394739151,-0.059506855905056,-0.057357408106327));
res += mul(Get(s0,0,0), float4x4(-0.103469543159008,-0.333710193634033,0.235338211059570,-0.007394878193736,0.142447948455811,-0.060117807239294,-0.389545887708664,0.159986466169357,-0.036423496901989,0.078107632696629,-0.297932207584381,0.080439858138561,-0.071059741079807,0.076332546770573,-0.113380134105682,-0.028863128274679));
res += mul(Get(s0,0,dy), float4x4(0.003924505785108,-0.068017236888409,0.135343238711357,0.049187310039997,0.227948531508446,0.021439060568810,-0.026333199813962,-0.174024760723114,0.040508672595024,-0.031354770064354,0.064988777041435,-0.026345154270530,-0.012806989252567,0.223754197359085,0.000473976891953,0.044978059828281));
res += mul(Get(s0,dx,-dy), float4x4(0.029147598892450,-0.135377451777458,-0.150559291243553,0.003220222657546,0.185559451580048,0.084682345390320,-0.026915311813354,-0.085803896188736,0.131686851382256,0.001170851057395,-0.046921398490667,-0.014434913173318,0.119625449180603,0.016075538471341,0.178593069314957,-0.065713323652744));
res += mul(Get(s0,dx,0), float4x4(-0.092871874570847,0.045285526663065,-0.065198481082916,-0.084707498550415,-0.265561461448669,0.067419774830341,0.095686420798302,-0.038254030048847,-0.353374183177948,-0.012431913055480,-0.119606181979179,-0.170678138732910,0.170133024454117,0.088392116129398,0.140263780951500,0.172015845775604));
res += mul(Get(s0,dx,dy), float4x4(-0.015541998669505,0.025498146191239,-0.037117987871170,-0.013764462433755,-0.059920210391283,0.203161358833313,0.351447433233261,0.141357585787773,0.146178543567657,0.070793405175209,0.177125811576843,0.059336327016354,0.146346554160118,0.108862943947315,-0.218471705913544,-0.037243895232677));
res += mul(Get(s1,-dx,-dy), float4x4(-0.019260795786977,0.081767790019512,-0.085065893828869,0.024293696507812,0.108357585966587,-0.001135395141318,-0.005150584504008,-0.072380788624287,-0.219662234187126,-0.026478238403797,-0.104873098433018,-0.005254260264337,-0.086767092347145,-0.008730154484510,-0.072465211153030,-0.008674352429807));
res += mul(Get(s1,-dx,0), float4x4(0.074123412370682,0.006492795888335,0.112433061003685,-0.123417943716049,-0.046599667519331,-0.149028390645981,0.026589794084430,-0.005505589302629,-0.108244016766548,0.131782218813896,-0.092666439712048,-0.212308913469315,0.217786356806755,0.105662919580936,-0.316924244165421,0.152754262089729));
res += mul(Get(s1,-dx,dy), float4x4(-0.000943347520661,0.214262202382088,0.005915089976043,0.012418222613633,-0.369790643453598,0.042813505977392,-0.116102337837219,-0.102121181786060,0.059363119304180,-0.040852788835764,0.080262273550034,-0.095682024955750,0.151809185743332,-0.171247288584709,-0.098919659852982,-0.224754080176353));
res += mul(Get(s1,0,-dy), float4x4(0.053908985108137,0.068915583193302,0.090081684291363,-0.053334634751081,0.121666632592678,-0.018729252740741,0.019795056432486,-0.006990270689130,-0.176080241799355,-0.127754911780357,0.204605311155319,-0.288049101829529,0.055490531027317,0.061771351844072,-0.167487144470215,-0.067811839282513));
res += mul(Get(s1,0,0), float4x4(-0.008999407291412,0.184145852923393,0.016661660745740,0.104671098291874,0.200789421796799,-0.014509183354676,-0.181608498096466,-0.132314696907997,0.029211958870292,0.287182092666626,-0.172082453966141,0.021422013640404,0.042653668671846,-0.152957469224930,-0.004517568275332,-0.161052644252777));
res += mul(Get(s1,0,dy), float4x4(0.142933741211891,-0.069159917533398,0.037340257316828,-0.078073486685753,0.055785104632378,0.158154368400574,0.073282301425934,0.230362102389336,-0.220099970698357,0.147859364748001,-0.114431798458099,0.210456684231758,-0.209679290652275,0.173170238733292,0.229305520653725,0.039413060992956));
res += mul(Get(s1,dx,-dy), float4x4(-0.265263438224792,0.199445381760597,0.044708780944347,0.019444793462753,-0.248321756720543,-0.076948739588261,-0.033194236457348,0.002740776631981,0.022205663844943,-0.025361444801092,-0.025935700163245,0.032837308943272,0.071984343230724,-0.002596074016765,0.030087774619460,0.053396049886942));
res += mul(Get(s1,dx,0), float4x4(0.140518590807915,0.129670262336731,-0.048130255192518,0.073877424001694,0.164830133318901,0.081256464123726,-0.024874530732632,-0.226548105478287,-0.033658441156149,0.292013078927994,0.130448400974274,0.039635609835386,-0.172791585326195,-0.047319158911705,0.132870301604271,0.025558656081557));
res += mul(Get(s1,dx,dy), float4x4(0.163057342171669,0.319134712219238,-0.141153529286385,0.022773195058107,-0.098179526627064,0.062231089919806,-0.070159532129765,0.120188906788826,-0.005296778865159,-0.057822097092867,-0.014078174717724,-0.056540023535490,-0.185757443308830,0.053849715739489,-0.099782966077328,0.121011748909950));
res += mul(Get(s2,-dx,-dy), float4x4(-0.035518672317266,-0.250459939241409,0.209620848298073,-0.140806660056114,0.061451349407434,0.123341009020805,-0.239601120352745,0.140410006046295,-0.220551148056984,0.218499079346657,0.102742262184620,-0.069509036839008,0.065650679171085,0.132730349898338,-0.279427021741867,0.089043796062469));
res += mul(Get(s2,-dx,0), float4x4(-0.011504290625453,-0.063948862254620,0.107371613383293,0.059494197368622,0.000290475523798,-0.037266328930855,0.080762639641762,-0.027633354067802,-0.179812148213387,0.210714176297188,-0.173018515110016,-0.090036258101463,0.067538157105446,-0.018592134118080,0.216071173548698,-0.074417263269424));
res += mul(Get(s2,-dx,dy), float4x4(-0.248469009995461,-0.022445676848292,0.079183042049408,0.045128069818020,0.052901148796082,-0.072815544903278,-0.041133102029562,-0.116110727190971,-0.056306477636099,-0.085442952811718,-0.121768109500408,0.048882864415646,0.011686588637531,0.031290404498577,0.134031623601913,-0.096232786774635));
res += mul(Get(s2,0,-dy), float4x4(0.266860604286194,0.015026591718197,-0.218835949897766,0.050023194402456,0.066236190497875,-0.013997032307088,0.300049364566803,0.083167634904385,0.094679638743401,0.099466264247894,-0.151217654347420,-0.060795221477747,0.216674089431763,-0.273864686489105,0.233579263091087,-0.362590134143829));
res += mul(Get(s2,0,0), float4x4(0.073609091341496,-0.246048614382744,-0.081864491105080,-0.226385593414307,-0.004019878804684,-0.112936697900295,-0.084292866289616,0.134084329009056,-0.114528201520443,0.305824428796768,-0.022725688293576,0.100369222462177,-0.375223636627197,0.242012113332748,-0.019591767340899,-0.144430592656136));
res += mul(Get(s2,0,dy), float4x4(0.321718007326126,0.097330369055271,0.023736827075481,-0.047309748828411,-0.010014018043876,-0.116739757359028,-0.232912808656693,-0.110144183039665,-0.021970866248012,-0.259899049997330,0.191399991512299,-0.068538941442966,-0.094909071922302,0.235850438475609,-0.119220115244389,0.200709477066994));
res += mul(Get(s2,dx,-dy), float4x4(-0.046259038150311,-0.102882243692875,-0.162301927804947,-0.104008883237839,-0.241290375590324,-0.000577519589569,-0.075180768966675,0.042673602700233,0.136329919099808,-0.163610070943832,0.024302447214723,-0.040948472917080,0.250322520732880,0.047141335904598,-0.019795890897512,0.042567741125822));
res += mul(Get(s2,dx,0), float4x4(-0.268863499164581,-0.026085190474987,0.033076651394367,0.089823067188263,-0.132795229554176,0.072122208774090,0.055851377546787,-0.052170582115650,0.081584565341473,-0.072551876306534,-0.123872376978397,0.097771272063255,-0.231317684054375,0.043081112205982,-0.317509144544601,0.057956997305155));
res += mul(Get(s2,dx,dy), float4x4(-0.038388662040234,-0.020623102784157,-0.106134645640850,-0.053379233926535,-0.160246118903160,0.045409735292196,-0.101328320801258,0.016982629895210,-0.028240693733096,-0.121269471943378,-0.127708837389946,0.003376770997420,0.072764880955219,-0.013458336703479,0.044454224407673,-0.105213217437267));
res += mul(Get(s3,-dx,-dy), float4x4(0.112861126661301,0.097604870796204,-0.087763063609600,-0.090029142796993,-0.044003143906593,0.028109822422266,-0.046069677919149,0.027468111366034,-0.002606684342027,0.011258270591497,-0.121458321809769,0.041317209601402,0.063381031155586,0.183731913566589,-0.323508888483047,0.075231842696667));
res += mul(Get(s3,-dx,0), float4x4(0.289192378520966,0.040123533457518,-0.033499002456665,0.019286887720227,-0.128449231386185,-0.234578713774681,-0.000759674469009,0.046716447919607,0.079396456480026,-0.042389471083879,-0.067722991108894,0.211135447025299,-0.270642638206482,-0.159711346030235,0.235349163413048,-0.222384721040726));
res += mul(Get(s3,-dx,dy), float4x4(-0.262780368328094,0.038375809788704,-0.023336227983236,-0.057663265615702,-0.029384810477495,-0.010604226961732,-0.030100645497441,-0.047524590045214,-0.121767640113831,0.067867107689381,-0.097647599875927,-0.055462602525949,0.166288301348686,-0.063718773424625,0.077711977064610,0.004062938969582));
res += mul(Get(s3,0,-dy), float4x4(0.136688873171806,0.112008862197399,-0.109092094004154,-0.201385661959648,0.132782191038132,0.000645010964945,0.038023319095373,0.015718990936875,0.072479255497456,-0.018283827230334,-0.019852498546243,-0.033848818391562,0.156707331538200,-0.015858953818679,0.099006526172161,-0.096866823732853));
res += mul(Get(s3,0,0), float4x4(-0.055455420166254,0.002826960990205,-0.049040276557207,-0.064997434616089,-0.049476709216833,-0.349276989698410,-0.091611981391907,-0.094095736742020,0.047874715179205,-0.110988333821297,0.087528012692928,-0.097310759127140,-0.026510195806623,-0.038451988250017,0.098433077335358,0.024592166766524));
res += mul(Get(s3,0,dy), float4x4(-0.262592792510986,-0.059072464704514,-0.211445823311806,-0.105335347354412,0.172442555427551,0.176312819123268,-0.066061079502106,0.106243744492531,0.118773683905602,0.033018961548805,0.172331020236015,-0.098185159265995,-0.122767634689808,-0.147599056363106,0.030246516689658,-0.147774517536163));
res += mul(Get(s3,dx,-dy), float4x4(0.005022632423788,0.113785579800606,0.336116939783096,-0.136518344283104,0.074389591813087,0.090262919664383,0.104088276624680,-0.030701588839293,0.178983032703400,-0.055106647312641,-0.087261930108070,-0.090943031013012,0.117241330444813,0.092958554625511,-0.074080578982830,-0.095475532114506));
res += mul(Get(s3,dx,0), float4x4(0.004693798255175,-0.097326867282391,-0.198294058442116,-0.077562682330608,-0.309037297964096,0.197458714246750,0.355458855628967,0.305100381374359,0.170806184411049,0.064335547387600,-0.105598002672195,-0.135750815272331,-0.032340239733458,0.046295493841171,-0.245551243424416,-0.097416415810585));
res += mul(Get(s3,dx,dy), float4x4(-0.328371345996857,-0.153365507721901,0.083404049277306,0.150673583149910,0.070606648921967,0.036988686770201,-0.246500954031944,-0.203578725457191,0.136044189333916,0.082394614815712,0.016256544739008,0.115110248327255,-0.220031723380089,-0.043319016695023,0.038402061909437,0.072661004960537));
res += mul(Get(s4,-dx,-dy), float4x4(-0.131913959980011,0.234771326184273,0.104543149471283,-0.243942752480507,-0.251502275466919,0.132230058312416,0.042786303907633,-0.177578613162041,-0.185695171356201,0.021439332515001,0.043394934386015,0.055426985025406,0.017964206635952,0.124012827873230,0.082112707197666,-0.224507436156273));
res += mul(Get(s4,-dx,0), float4x4(0.061721656471491,0.063744306564331,-0.056945428252220,0.038502257317305,0.166103392839432,0.094710186123848,-0.130362033843994,0.159478276968002,-0.130352050065994,0.064753644168377,-0.135847002267838,-0.094691999256611,-0.004421658813953,0.181142240762711,-0.165967121720314,0.251227915287018));
res += mul(Get(s4,-dx,dy), float4x4(0.041631620377302,0.105239830911160,0.093976370990276,0.096204921603203,0.132148027420044,-0.024892665445805,-0.124564640223980,-0.144109457731247,-0.090980209410191,0.058227822184563,0.088624835014343,-0.075471132993698,0.229436784982681,0.093044765293598,-0.013537731952965,-0.040210902690887));
res += mul(Get(s4,0,-dy), float4x4(0.073491692543030,0.157525166869164,0.112274162471294,0.033668402582407,0.304764330387115,0.077631205320358,-0.222139790654182,0.083447724580765,0.003051730105653,0.043579101562500,-0.107461892068386,-0.067482084035873,-0.085906229913235,-0.132293179631233,-0.097144156694412,0.140736967325211));
res += mul(Get(s4,0,0), float4x4(-0.042011637240648,-0.097625054419041,-0.218828305602074,-0.161480635404587,-0.009887415915728,-0.161592632532120,-0.064830198884010,-0.163449764251709,-0.293041229248047,0.115346767008305,-0.066764175891876,-0.030806921422482,0.166982784867287,-0.520446896553040,0.282146573066711,-0.273305237293243));
res += mul(Get(s4,0,dy), float4x4(-0.017905885353684,0.056385759264231,-0.007648453116417,-0.062207177281380,-0.024348983541131,0.052410468459129,0.138909459114075,-0.020221915096045,-0.056417189538479,-0.026066081598401,0.031297285109758,0.011067284271121,-0.112128727138042,0.001268864609301,0.148860573768616,0.180894985795021));
res += mul(Get(s4,dx,-dy), float4x4(0.166991040110588,0.132643833756447,0.055950853973627,-0.037969093769789,0.009235560894012,0.065070956945419,-0.306927621364594,-0.052103988826275,0.067638650536537,0.006833302322775,0.133182585239410,-0.040429625660181,-0.103445008397102,0.042325895279646,-0.040010549128056,0.013180747628212));
res += mul(Get(s4,dx,0), float4x4(-0.192553222179413,-0.179507225751877,0.174490928649902,0.147091209888458,-0.342438220977783,0.051613181829453,0.041382726281881,0.018470969051123,-0.057676166296005,-0.125619202852249,0.033654022961855,-0.090567618608475,-0.285983085632324,-0.073859132826328,-0.026765324175358,-0.014642750844359));
res += mul(Get(s4,dx,dy), float4x4(0.188948094844818,0.099472187459469,-0.073349982500076,-0.046790797263384,0.170037820935249,-0.067860357463360,0.093926444649696,0.016878230497241,0.118725053966045,0.025436792522669,-0.011679664254189,0.008206135593355,-0.114502042531967,0.065555237233639,-0.013476876541972,-0.037143908441067));
res += mul(Get(s5,-dx,-dy), float4x4(-0.020505171269178,-0.027485974133015,-0.115170657634735,-0.011431469582021,-0.000853287172504,-0.024230811744928,0.094308510422707,0.043536763638258,0.013693809509277,-0.019469842314720,-0.134199187159538,-0.039594579488039,0.030434368178248,-0.082254506647587,0.090311594307423,-0.003142722649500));
res += mul(Get(s5,-dx,0), float4x4(-0.133346095681190,0.004142981953919,-0.041198045015335,-0.083127513527870,0.171012073755264,0.006867168005556,-0.119372107088566,0.247176289558411,0.123196929693222,-0.045338474214077,0.050341591238976,0.134708851575851,0.003167634597048,-0.062383543699980,0.095048062503338,0.189310044050217));
res += mul(Get(s5,-dx,dy), float4x4(-0.091420426964760,0.019514052197337,-0.032976936548948,0.024012355133891,-0.026406900957227,-0.066929414868355,-0.108109310269356,0.123971723020077,0.112592749297619,-0.019539643079042,-0.081339187920094,-0.115553349256516,0.038733646273613,-0.017410105094314,-0.029065027832985,-0.052346084266901));
res += mul(Get(s5,0,-dy), float4x4(-0.200872346758842,-0.076882012188435,0.314920693635941,-0.170694753527641,-0.140078485012054,-0.067056767642498,-0.086276367306709,0.206773698329926,0.076373033225536,0.185571923851967,0.031131433323026,0.264294654130936,-0.137524574995041,-0.025367736816406,0.030386066064239,-0.147582381963730));
res += mul(Get(s5,0,0), float4x4(0.143677368760109,0.264684259891510,-0.302792429924011,0.022238079458475,0.122156605124474,-0.179223626852036,-0.021846426650882,-0.203653588891029,0.315650999546051,0.448976725339890,0.180906385183334,0.007191722281277,0.000956820440479,0.087625667452812,0.024343442171812,0.123152442276478));
res += mul(Get(s5,0,dy), float4x4(-0.169307589530945,-0.159688368439674,-0.062843114137650,-0.011714403517544,-0.400093436241150,-0.084225490689278,0.123751312494278,0.168083220720291,0.095108844339848,-0.047085657715797,0.065288610756397,0.013460299000144,0.139533549547195,0.024510517716408,-0.078514665365219,0.007447318173945));
res += mul(Get(s5,dx,-dy), float4x4(-0.374612092971802,-0.201748862862587,-0.161343351006508,0.077736489474773,-0.003688472788781,0.089359916746616,0.037264641374350,-0.096736490726471,0.095169670879841,-0.010453763417900,0.120430640876293,-0.005004764534533,-0.299681186676025,0.024581501260400,-0.140240654349327,-0.028869576752186));
res += mul(Get(s5,dx,0), float4x4(0.415618836879730,-0.299954146146774,-0.056481774896383,-0.171957805752754,-0.063627474009991,-0.002593526616693,0.130922198295593,0.007802551146597,-0.027337521314621,-0.014093175530434,0.086278080940247,0.163853526115417,0.298501431941986,0.055424731224775,-0.037898261100054,0.032098527997732));
res += mul(Get(s5,dx,dy), float4x4(-0.135915964841843,-0.074233561754227,0.103951618075371,0.114706628024578,0.126320153474808,0.138872340321541,-0.112750545144081,0.046325724571943,0.049082875251770,-0.077297292649746,0.033061604946852,0.041085291653872,-0.133440881967545,-0.214009389281273,-0.097382374107838,-0.157661303877831));
res = max(float4(0, 0, 0, 0), res) + float4(0.259015560150146,0.008440682664514,-0.128972515463829,-0.060987632721663) * min(float4(0, 0, 0, 0), res);
return res;
}