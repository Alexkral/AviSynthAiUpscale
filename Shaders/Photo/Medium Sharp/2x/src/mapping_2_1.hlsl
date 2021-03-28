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
float4 res = float4(-0.042899254709482,0.144105732440948,0.150421157479286,0.097854085266590);
res += mul(Get(s0,-dx,-dy), float4x4(-0.059930458664894,-0.039102237671614,-0.010163625702262,0.138253301382065,0.059631466865540,-0.045130569487810,-0.056318067014217,-0.093040153384209,-0.015861665830016,0.073297411203384,0.000140196571010,0.043910983949900,0.060020603239536,-0.033209972083569,-0.182943031191826,-0.184944972395897));
res += mul(Get(s0,-dx,0), float4x4(0.071133553981781,-0.059724956750870,0.048836976289749,0.082545250654221,-0.015458061359823,0.063404276967049,-0.031737275421619,0.119234807789326,-0.054392118006945,-0.051774650812149,0.047003004699945,-0.010983416810632,0.063649445772171,-0.069612838327885,-0.024745982140303,0.070862412452698));
res += mul(Get(s0,-dx,dy), float4x4(0.104081846773624,-0.052035316824913,0.146678864955902,0.057492841035128,0.065599218010902,-0.104419156908989,-0.081179544329643,-0.058252926915884,0.066719591617584,0.062769427895546,-0.045376963913441,-0.032691325992346,-0.036639899015427,-0.028897436335683,0.150222405791283,0.208122849464417));
res += mul(Get(s0,0,-dy), float4x4(-0.020207067951560,0.091917812824249,0.004747235216200,0.050209969282150,-0.311950564384460,0.000818388594780,0.003727237693965,0.205263659358025,-0.240742966532707,-0.056087866425514,0.024167088791728,-0.000397875322960,0.128441974520683,-0.030972583219409,0.002404184779152,0.006065559573472));
res += mul(Get(s0,0,0), float4x4(-0.041054390370846,-0.178235575556755,-0.137341201305389,0.029150754213333,0.305349200963974,-0.053867340087891,-0.057911545038223,0.046785317361355,0.188391298055649,0.059413284063339,0.032685570418835,0.109506957232952,0.106569960713387,-0.001873617293313,-0.029570875689387,0.178379133343697));
res += mul(Get(s0,0,dy), float4x4(-0.019952062517405,0.158413246273994,0.028637107461691,-0.061772380024195,0.045397073030472,0.102680392563343,-0.132629334926605,0.007070741150528,0.032941333949566,-0.113547481596470,0.013662522658706,-0.042887005954981,-0.170455873012543,-0.120114549994469,-0.070162549614906,0.041159141808748));
res += mul(Get(s0,dx,-dy), float4x4(0.142533555626869,0.089220464229584,-0.140437692403793,0.197587981820107,0.053248323500156,-0.151423811912537,0.006196457426995,-0.098676666617393,-0.018817225471139,-0.078019902110100,-0.198100104928017,-0.024931972846389,0.119212269783020,-0.122542940080166,-0.012904087081552,-0.012963368557394));
res += mul(Get(s0,dx,0), float4x4(-0.017151435837150,0.019766084849834,-0.064205244183540,0.122659035027027,0.028503511101007,0.054623004049063,-0.078058443963528,-0.034196391701698,-0.083957239985466,-0.064999788999557,-0.049808576703072,-0.113927416503429,-0.109331749379635,-0.059610430151224,-0.082482852041721,-0.063907004892826));
res += mul(Get(s0,dx,dy), float4x4(-0.043908078223467,0.118239656090736,0.039634969085455,-0.022714504972100,0.030519252642989,-0.064858295023441,0.013601820915937,-0.085566513240337,-0.031617134809494,0.012281918898225,0.078392356634140,-0.059086993336678,-0.150524616241455,0.047729860991240,0.273428261280060,-0.233448445796967));
res += mul(Get(s1,-dx,-dy), float4x4(0.079224616289139,-0.039418697357178,-0.150273129343987,-0.153628289699554,-0.029013412073255,-0.052135922014713,0.017773997038603,0.038826774805784,0.034868232905865,-0.035107024013996,0.033988770097494,-0.012692539021373,0.028440818190575,0.018646534532309,-0.024695998057723,0.101726502180099));
res += mul(Get(s1,-dx,0), float4x4(-0.031001377850771,-0.525992035865784,-0.400829225778580,-0.227484181523323,0.017644921317697,-0.172199800610542,-0.055319089442492,-0.052489716559649,-0.018711017444730,0.070343710482121,-0.018362825736403,0.098830647766590,-0.108817443251610,0.050513215363026,-0.007876133546233,0.033291835337877));
res += mul(Get(s1,-dx,dy), float4x4(0.063758708536625,0.023319529369473,0.020514423027635,-0.099735885858536,-0.036955509334803,-0.107692204415798,-0.000696224044077,-0.033769778907299,0.011428741738200,0.035539597272873,0.090641804039478,0.080669045448303,-0.019965680316091,0.003254977986217,0.001100805704482,0.019578192383051));
res += mul(Get(s1,0,-dy), float4x4(0.405307799577713,0.163378238677979,0.202484637498856,-0.117966331541538,-0.192524924874306,0.013277790509164,0.045989539474249,0.125206321477890,0.122383661568165,0.347519934177399,0.089243687689304,0.120104849338531,-0.043093990534544,-0.044850643724203,0.000372796028387,-0.174668043851852));
res += mul(Get(s1,0,0), float4x4(-0.016731379553676,-0.431674659252167,-0.122460044920444,0.023642413318157,-0.039885915815830,-0.179412573575974,-0.103542946279049,-0.179216161370277,0.026288585737348,-0.000251321413089,0.023696249350905,0.021462751552463,-0.054657921195030,-0.017069358378649,-0.072984501719475,0.039333421736956));
res += mul(Get(s1,0,dy), float4x4(-0.057938057929277,-0.005717958323658,-0.172649368643761,-0.039613902568817,0.007645572535694,-0.041799250990152,-0.187847003340721,-0.096542567014694,-0.033834904432297,0.042313251644373,0.035688530653715,0.086523272097111,0.134357616305351,-0.046066612005234,0.022092172876000,-0.099692359566689));
res += mul(Get(s1,dx,-dy), float4x4(-0.148881569504738,-0.025012282654643,-0.113604977726936,-0.075430177152157,0.070435024797916,-0.009255441837013,0.148220449686050,0.128755316138268,-0.108153276145458,0.195023804903030,0.089765146374702,0.125372201204300,0.008699360303581,-0.161056950688362,0.014826078899205,-0.114468500018120));
res += mul(Get(s1,dx,0), float4x4(-0.026143033057451,-0.069397933781147,0.029797952622175,0.026161197572947,0.152840614318848,0.115137860178947,0.048142008483410,0.089236915111542,-0.032765839248896,0.049753919243813,0.211333066225052,0.183120980858803,-0.038951184600592,-0.115201406180859,0.004456211347133,-0.254946708679199));
res += mul(Get(s1,dx,dy), float4x4(0.009035635739565,-0.052572768181562,-0.018934823572636,-0.050724416971207,-0.124118424952030,-0.024859545752406,-0.072717070579529,-0.092701546847820,-0.029743259772658,0.007865945808589,0.110479526221752,-0.014188837260008,-0.020419575273991,-0.117046475410461,-0.050432525575161,-0.049473088234663));
res += mul(Get(s2,-dx,-dy), float4x4(-0.047703728079796,0.028722465038300,0.076310381293297,-0.018189582973719,-0.083892256021500,0.111180879175663,-0.041555333882570,-0.022020772099495,-0.176198512315750,-0.062285382300615,0.098870970308781,-0.010347774252295,-0.022764425724745,-0.089484095573425,0.042668648064137,0.038571946322918));
res += mul(Get(s2,-dx,0), float4x4(0.026330621913075,0.050301827490330,0.086610734462738,-0.038185317069292,0.025660071521997,0.091475933790207,0.102289132773876,-0.010740648955107,0.058281365782022,-0.106762625277042,-0.260516792535782,-0.165988430380821,-0.055609781295061,-0.165029853582382,0.053839843720198,-0.005558040458709));
res += mul(Get(s2,-dx,dy), float4x4(0.126708969473839,0.022779572755098,-0.135085836052895,-0.022657588124275,-0.003731225850061,-0.051627080887556,0.009905698709190,0.149303048849106,0.173059210181236,0.106837965548038,0.015676323324442,-0.083855614066124,0.043373979628086,0.013095440343022,0.090154007077217,-0.103903740644455));
res += mul(Get(s2,0,-dy), float4x4(0.017163913697004,0.096460461616516,0.064932480454445,-0.049355328083038,-0.224909394979477,-0.071516327559948,0.008276874199510,-0.091544091701508,0.221970126032829,-0.052113037556410,-0.133471027016640,-0.133825913071632,0.033852327615023,0.033937472850084,-0.035782847553492,0.222463846206665));
res += mul(Get(s2,0,0), float4x4(0.016480142250657,0.107105150818825,-0.011283796280622,0.135986506938934,-0.045234650373459,0.495057791471481,0.245719075202942,-0.245678067207336,0.052278708666563,-0.255120545625687,0.131455361843109,-0.250874578952789,-0.001198789570481,0.094470404088497,0.107016101479530,-0.175966322422028));
res += mul(Get(s2,0,dy), float4x4(0.136181980371475,0.050251767039299,0.096829034388065,0.007617035415024,0.124973796308041,0.000684609636664,-0.016904879361391,0.226654052734375,-0.085923381149769,-0.102226980030537,-0.104445084929466,-0.006712252274156,-0.004906475078315,-0.025511408224702,0.033534999936819,0.146906346082687));
res += mul(Get(s2,dx,-dy), float4x4(0.040948927402496,0.128678828477859,-0.095285370945930,-0.004728504456580,0.004436398856342,-0.009172208607197,-0.164751395583153,-0.041506189852953,0.099679037928581,-0.080519005656242,-0.306197583675385,-0.051176775246859,0.044032011181116,-0.039093267172575,-0.094107024371624,-0.196952238678932));
res += mul(Get(s2,dx,0), float4x4(-0.053623419255018,-0.127663582563400,-0.103047706186771,0.064766615629196,0.107052616775036,0.000768345955294,-0.139243349432945,0.278439551591873,-0.213708937168121,-0.083190448582172,0.046268880367279,-0.145879417657852,0.041810918599367,0.093730695545673,-0.355680316686630,0.131828069686890));
res += mul(Get(s2,dx,dy), float4x4(-0.018025968223810,0.265238881111145,0.044573549181223,-0.106279887259007,0.026980308815837,-0.143023565411568,0.038453012704849,0.027913002297282,0.072292640805244,0.099175453186035,0.093959480524063,-0.166682392358780,0.042325355112553,0.068817168474197,0.151110708713531,0.010599657893181));
res += mul(Get(s3,-dx,-dy), float4x4(0.024060059338808,-0.092738859355450,0.005551242269576,0.116111628711224,-0.000380481069442,0.090248331427574,0.130602493882179,0.116519197821617,0.094783827662468,-0.104928456246853,-0.028789428994060,-0.054940242320299,-0.041040726006031,-0.063342005014420,0.078066520392895,-0.033268779516220));
res += mul(Get(s3,-dx,0), float4x4(-0.079613804817200,-0.107928432524204,0.211611896753311,0.085775226354599,0.045063469558954,0.169341608881950,0.068692319095135,0.190744280815125,0.103577330708504,-0.068813219666481,0.076176762580872,-0.108804747462273,0.023137865588069,-0.048168815672398,-0.081285193562508,0.037330526858568));
res += mul(Get(s3,-dx,dy), float4x4(0.143767505884171,-0.045575223863125,0.076932199299335,0.047481268644333,-0.040336061269045,0.115365460515022,-0.054434772580862,-0.041567906737328,0.065260559320450,-0.040426351130009,0.131395518779755,-0.016893504187465,-0.032691251486540,0.013606621883810,-0.037084054201841,0.027910485863686));
res += mul(Get(s3,0,-dy), float4x4(-0.145027995109558,-0.105598561465740,0.169010788202286,-0.015213453210890,-0.017729265615344,0.073117546737194,-0.048312854021788,0.127950578927994,0.140317231416702,0.153149262070656,-0.120792120695114,-0.115891411900520,-0.090910278260708,0.028274532407522,-0.079782404005527,-0.050741676241159));
res += mul(Get(s3,0,0), float4x4(0.119179069995880,0.077689595520496,0.127657309174538,-0.188706442713737,-0.162872895598412,-0.046601824462414,-0.002689988585189,0.113894402980804,-0.087492711842060,-0.347001701593399,-0.106751658022404,-0.170771315693855,0.050007384270430,-0.198062613606453,-0.364519178867340,0.134785547852516));
res += mul(Get(s3,0,dy), float4x4(-0.069094672799110,-0.074646838009357,0.037229709327221,0.078925505280495,0.150355026125908,0.016865553334355,-0.002171087311581,-0.086198136210442,-0.105644844472408,0.147507667541504,0.067652963101864,-0.083440363407135,-0.029356727376580,0.137022212147713,0.042089119553566,0.008326194249094));
res += mul(Get(s3,dx,-dy), float4x4(0.173859745264053,-0.105270422995090,-0.011124332435429,0.125159785151482,0.075801953673363,0.069044917821884,-0.013295732438564,-0.000319107435644,-0.074590601027012,-0.000551213102881,0.092537038028240,0.099498532712460,0.114242374897003,-0.120313689112663,-0.338435143232346,0.084100298583508));
res += mul(Get(s3,dx,0), float4x4(0.008161018602550,-0.195067316293716,-0.050260528922081,0.271170198917389,0.095100238919258,0.078791230916977,0.055291473865509,0.059780418872833,-0.048345614224672,0.096130885183811,-0.012106413953006,0.011059994809330,0.046599708497524,-0.441121906042099,-0.198320403695107,0.149376988410950));
res += mul(Get(s3,dx,dy), float4x4(-0.021277176216245,-0.121009305119514,0.176757290959358,-0.124491252005100,-0.034230735152960,0.044988367706537,-0.059854295104742,0.133492290973663,0.058721523731947,0.141544356942177,-0.059330504387617,0.037376675754786,-0.037439551204443,-0.017442941665649,0.013788890093565,0.051128819584846));
res += mul(Get(s4,-dx,-dy), float4x4(-0.106332696974277,0.117599055171013,0.122719749808311,0.015895716845989,0.080340832471848,-0.086548477411270,0.224644258618355,0.086884595453739,-0.131649285554886,-0.011073753237724,-0.340215981006622,-0.048354342579842,0.056381523609161,-0.021140933036804,-0.045702807605267,-0.064564198255539));
res += mul(Get(s4,-dx,0), float4x4(0.011677897535264,0.039521720260382,-0.046108759939671,-0.090606577694416,0.098405778408051,0.235283583402634,0.337484151124954,-0.068296514451504,-0.048935566097498,-0.141675725579262,-0.583373010158539,-0.003521984443069,-0.195633381605148,-0.035718839615583,0.001157261431217,-0.051460485905409));
res += mul(Get(s4,-dx,dy), float4x4(0.019696366041899,0.079205557703972,-0.017444662749767,0.015566370449960,-0.085986465215683,0.033912323415279,-0.033144664019346,0.049453280866146,-0.069147542119026,-0.037231463938951,-0.246817529201508,-0.008724030107260,0.004341327119619,-0.036449115723372,-0.035002689808607,-0.310587495565414));
res += mul(Get(s4,0,-dy), float4x4(0.035679161548615,0.051950607448816,-0.041021630167961,-0.086668357253075,-0.005123317241669,0.127336502075195,0.152006387710571,-0.040165882557631,-0.078762777149677,-0.058556135743856,-0.640884995460510,-0.044284161180258,-0.053081285208464,0.013149805366993,-0.031687911599874,-0.207949489355087));
res += mul(Get(s4,0,0), float4x4(0.059153657406569,-0.265603333711624,0.086557552218437,0.124455936253071,0.030752606689930,0.087326087057590,0.150930866599083,-0.033938478678465,-0.014340583235025,0.025974905118346,-0.384690165519714,-0.005900835152715,-0.529533088207245,-0.238348111510277,-0.402086943387985,-0.143291667103767));
res += mul(Get(s4,0,dy), float4x4(-0.070798814296722,-0.122803084552288,-0.018529554829001,-0.012417852878571,-0.064789444208145,-0.000438340182882,0.091899551451206,-0.013260412961245,0.033867329359055,0.014505423605442,-0.246917277574539,0.006472389679402,-0.012503062374890,0.008579170331359,-0.196986153721809,-0.367334842681885));
res += mul(Get(s4,dx,-dy), float4x4(-0.034043908119202,0.010244967415929,0.109818466007710,0.027418239042163,0.111665539443493,-0.133462160825729,-0.091889329254627,0.001230827881955,-0.116399295628071,0.022989306598902,-0.354036569595337,0.001317747170106,-0.068855702877045,-0.033606898039579,-0.022565389052033,0.001633022213355));
res += mul(Get(s4,dx,0), float4x4(0.060129694640636,0.232100754976273,-0.140883401036263,-0.077018857002258,-0.176553606987000,-0.216482460498810,0.110961042344570,0.043824598193169,-0.091621197760105,0.040584035217762,-0.341427683830261,-0.076275810599327,-0.009525096043944,0.027204081416130,0.104385651648045,-0.147909089922905));
res += mul(Get(s4,dx,dy), float4x4(-0.015758985653520,0.114229112863541,-0.169341444969177,0.042936347424984,-0.098494395613670,-0.048663042485714,0.093302160501480,-0.109652094542980,-0.047110274434090,0.120005451142788,-0.099848657846451,0.035291571170092,-0.026185931637883,-0.079590104520321,0.029049025848508,-0.084394410252571));
res += mul(Get(s5,-dx,-dy), float4x4(0.298113226890564,0.122419469058514,0.250046253204346,0.154650390148163,0.289175480604172,-0.053639277815819,0.251139700412750,-0.166942641139030,-0.259388685226440,-0.077737338840961,-0.037373073399067,0.142198741436005,-0.027056353166699,-0.154581323266029,0.093361802399158,-0.002947825938463));
res += mul(Get(s5,-dx,0), float4x4(0.063433423638344,-0.063631720840931,0.164561346173286,0.006826988887042,0.138054043054581,-0.057417552918196,-0.021008607000113,0.007842934690416,0.026970461010933,-0.061043441295624,0.004910807125270,-0.009020184166729,-0.047578055411577,0.030418066307902,-0.000982693163678,0.029001127928495));
res += mul(Get(s5,-dx,dy), float4x4(0.032976798713207,-0.030681012198329,0.236914008855820,-0.140480697154999,-0.124431550502777,0.039785616099834,0.066480696201324,-0.014431210234761,0.145308420062065,-0.012625360861421,-0.102060794830322,0.078203864395618,-0.118246860802174,-0.050626587122679,0.084503918886185,-0.125411346554756));
res += mul(Get(s5,0,-dy), float4x4(0.200542971491814,0.071892410516739,0.152177274227142,0.043705329298973,0.037557441741228,0.115695036947727,0.167740702629089,0.105830669403076,-0.071537323296070,-0.018303124234080,-0.088730052113533,-0.104731254279613,0.024687057361007,-0.111541397869587,0.052909929305315,-0.015332776121795));
res += mul(Get(s5,0,0), float4x4(-0.017473272979259,-0.045295514166355,0.067326352000237,-0.102736979722977,-0.088059902191162,-0.156275719404221,-0.041542962193489,0.272818118333817,0.291076779365540,0.360466092824936,0.262800186872482,0.013596028089523,-0.085011422634125,-0.305573970079422,-0.138376697897911,0.102208144962788));
res += mul(Get(s5,0,dy), float4x4(0.162571012973785,-0.128259807825089,0.169144555926323,-0.201420933008194,0.035516049712896,-0.042995791882277,0.181530117988586,-0.180544734001160,-0.006940709426999,-0.156640857458115,-0.054689809679985,0.168950125575066,-0.006879660300910,0.055993471294641,0.031620290130377,-0.117483861744404));
res += mul(Get(s5,dx,-dy), float4x4(0.112097591161728,-0.039490003138781,0.049780257046223,-0.118607833981514,-0.233910232782364,0.055155504494905,0.104701891541481,-0.040123365819454,0.402043759822845,-0.101302430033684,-0.162381574511528,-0.087909735739231,0.033687710762024,0.004178279545158,0.022166509181261,-0.092605032026768));
res += mul(Get(s5,dx,0), float4x4(0.012053381651640,-0.066168695688248,0.045496292412281,-0.221247747540474,-0.025142043828964,0.078889712691307,0.147117853164673,-0.213921114802361,0.054652705788612,-0.293129920959473,-0.089960366487503,0.074493139982224,0.115039587020874,-0.074698142707348,0.010676032863557,-0.055392682552338));
res += mul(Get(s5,dx,dy), float4x4(0.100645035505295,-0.061221048235893,0.087764509022236,0.027505388483405,0.081277854740620,0.088946647942066,0.009678739123046,0.080291129648685,-0.168400168418884,-0.214175939559937,0.118732325732708,-0.176316872239113,-0.002054962795228,-0.006311191245914,0.071488551795483,-0.133745238184929));
res = max(float4(0, 0, 0, 0), res) + float4(-0.262871742248535,0.202717751264572,-0.031028632074594,0.728603422641754) * min(float4(0, 0, 0, 0), res);
return res;
}