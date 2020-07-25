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
res += mul(Get(s0,-dx,-dy), float4x4(-0.036821961402893,0.073092550039291,-0.071310922503471,-0.062241148203611,0.035623230040073,-0.003147909650579,-0.077286697924137,0.061589170247316,-0.076069682836533,0.121044471859932,0.108766682446003,0.010274353437126,0.103676028549671,0.025103554129601,-0.030771514400840,-0.024620054289699));
res += mul(Get(s0,-dx,0), float4x4(0.015373683534563,-0.138071671128273,0.033816542476416,0.018049774691463,-0.087466925382614,-0.126833066344261,-0.013772465288639,-0.055587179958820,0.114211432635784,0.015184667892754,0.122610233724117,-0.024549381807446,0.134008616209030,-0.105904422700405,0.021183487027884,-0.079558074474335));
res += mul(Get(s0,-dx,dy), float4x4(-0.061060458421707,0.045051362365484,-0.020720900967717,-0.036759998649359,0.113902062177658,0.040680583566427,-0.000824064249173,-0.076749250292778,-0.012546195648611,0.142368420958519,0.183456495404243,0.181568562984467,-0.080372743308544,-0.062569163739681,0.054370790719986,-0.052517775446177));
res += mul(Get(s0,0,-dy), float4x4(-0.151812180876732,-0.136660099029541,0.062694527208805,0.029250983148813,0.089394278824329,-0.034659884870052,0.061028670519590,-0.057039085775614,-0.021619170904160,0.056515257805586,-0.059277862310410,-0.028179794549942,-0.036601211875677,0.066586889326572,0.022523650899529,0.012510541826487));
res += mul(Get(s0,0,0), float4x4(-0.166048184037209,-0.053791623562574,0.081492684781551,0.064577139914036,0.035701159387827,0.155127033591270,0.033642780035734,0.096126221120358,-0.034530278295279,0.105890311300755,0.041355814784765,-0.070327915251255,-0.050665199756622,-0.049471609294415,-0.022436670958996,-0.047910161316395));
res += mul(Get(s0,0,dy), float4x4(-0.065687045454979,-0.021791299805045,0.188540741801262,0.026377372443676,-0.059037920087576,0.090775951743126,-0.188944011926651,-0.063693977892399,-0.079040117561817,-0.065021790564060,0.096005566418171,0.021438995376229,0.053662646561861,0.172676190733910,-0.048204313963652,0.087003640830517));
res += mul(Get(s0,dx,-dy), float4x4(-0.008799704723060,-0.096177548170090,-0.070660404860973,0.129389896988869,0.087379068136215,0.029772382229567,0.083789624273777,0.059219464659691,-0.118427045643330,-0.164813801646233,0.155240491032600,-0.121179692447186,-0.150627911090851,-0.067223690450191,-0.062035724520683,-0.107505075633526));
res += mul(Get(s0,dx,0), float4x4(-0.031222017481923,0.071659930050373,-0.069201596081257,-0.002294138073921,0.049992032349110,0.038040377199650,-0.130180329084396,0.003870896063745,-0.067093938589096,0.104743972420692,-0.123226165771484,-0.065372772514820,0.081447727978230,0.102802246809006,0.009011074900627,-0.123968772590160));
res += mul(Get(s0,dx,dy), float4x4(0.003632950829342,0.035265840590000,0.180468499660492,-0.103893429040909,0.093048393726349,0.040922798216343,0.000154702720465,0.010929564014077,-0.146345898509026,0.075175449252129,-0.065501838922501,0.156377971172333,0.048736374825239,-0.160519644618034,0.056744188070297,0.009549871087074));
res += mul(Get(s1,-dx,-dy), float4x4(-0.176156952977180,-0.194011300802231,-0.053715966641903,-0.023141907528043,0.142247855663300,0.113281756639481,-0.083590902388096,0.099080860614777,0.023302447050810,0.031658869236708,-0.020915020257235,0.007014261558652,0.051684401929379,-0.023278489708900,-0.240279376506805,0.027401875704527));
res += mul(Get(s1,-dx,0), float4x4(-0.086150415241718,0.027923133224249,-0.009718650951982,-0.060378622263670,0.009659946896136,-0.070812225341797,-0.012088668532670,-0.128104865550995,-0.019802199676633,0.044009946286678,-0.179303795099258,-0.060067862272263,0.153343215584755,0.054244231432676,-0.031347494572401,0.080258190631866));
res += mul(Get(s1,-dx,dy), float4x4(-0.066368587315083,-0.053250432014465,0.022928990423679,-0.095497414469719,0.077207207679749,0.015083594247699,-0.102131001651287,0.065268479287624,0.076201975345612,-0.020850472152233,-0.046912219375372,-0.055035822093487,-0.041223429143429,0.032219536602497,-0.147832959890366,-0.077798657119274));
res += mul(Get(s1,0,-dy), float4x4(0.045989889651537,0.060283228754997,-0.072069250047207,0.219952315092087,0.000783338327892,-0.034489881247282,-0.132453471422195,0.073216110467911,0.035512510687113,-0.068962574005127,-0.013785379938781,-0.098710194230080,-0.048466548323631,-0.000535409897566,-0.026463191956282,-0.093193642795086));
res += mul(Get(s1,0,0), float4x4(0.096846207976341,0.062297128140926,-0.045396272093058,-0.125904038548470,-0.079974263906479,0.220381721854210,-0.101892009377480,0.051271416246891,-0.006296923384070,0.169409558176994,0.010607864707708,-0.034706842154264,-0.102791965007782,0.075226470828056,-0.040733732283115,-0.024765521287918));
res += mul(Get(s1,0,dy), float4x4(-0.083552256226540,-0.050909355282784,0.155859693884850,-0.142524108290672,-0.063271313905716,0.196713283658028,-0.019041851162910,0.190922021865845,-0.127604693174362,-0.106698460876942,0.060135766863823,0.028172833845019,-0.106380209326744,0.146640196442604,-0.039770212024450,-0.054525282233953));
res += mul(Get(s1,dx,-dy), float4x4(-0.041753452271223,-0.035422589629889,0.011188173666596,0.087036915123463,0.033184539526701,0.102068603038788,0.107333995401859,0.180077463388443,0.042367920279503,0.118267953395844,0.039887320250273,-0.006988394539803,-0.034658465534449,-0.117288880050182,0.075549110770226,-0.042237929999828));
res += mul(Get(s1,dx,0), float4x4(-0.268823444843292,0.030588787049055,-0.145785436034203,-0.168045058846474,0.106719575822353,-0.111842870712280,-0.028640551492572,-0.219868496060371,-0.008153547532856,0.004778933245689,-0.098709397017956,0.177725508809090,0.076895594596863,0.065139919519424,0.175470396876335,-0.097776733338833));
res += mul(Get(s1,dx,dy), float4x4(-0.143023014068604,-0.072263874113560,-0.176164016127586,-0.187700212001801,0.067975237965584,-0.104713216423988,-0.017813535407186,0.063812755048275,0.175918921828270,-0.073194094002247,-0.121027417480946,-0.109357751905918,-0.092291899025440,-0.081240870058537,0.162894621491432,0.069606035947800));
res += mul(Get(s2,-dx,-dy), float4x4(0.101301103830338,0.208934754133224,0.170110836625099,-0.125850394368172,0.030924884602427,0.063357152044773,0.128464877605438,0.066781677305698,-0.019348198547959,-0.044178552925587,-0.139838337898254,-0.112398870289326,-0.033295251429081,0.070244491100311,-0.012514575384557,0.065652512013912));
res += mul(Get(s2,-dx,0), float4x4(0.013308832421899,-0.123417630791664,-0.086585313081741,0.045418310910463,0.003952924162149,-0.103193931281567,0.039354756474495,0.146601095795631,0.102815590798855,0.017443900927901,-0.102470897138119,-0.052143465727568,-0.046461191028357,-0.118370644748211,0.078606002032757,-0.001112053985707));
res += mul(Get(s2,-dx,dy), float4x4(0.265002608299255,-0.013264494016767,-0.009564455598593,-0.082295805215836,0.027342062443495,-0.000627157045528,-0.109663151204586,-0.167534902691841,0.092955313622952,-0.106165044009686,-0.005838588345796,-0.045533012598753,-0.007214765064418,-0.077488429844379,0.032873079180717,0.030864041298628));
res += mul(Get(s2,0,-dy), float4x4(-0.128289729356766,0.000468412559712,0.316962033510208,-0.076181635260582,-0.118828833103180,-0.087393261492252,0.087657086551189,-0.027919452637434,-0.114800229668617,0.054221648722887,0.035943545401096,-0.200695931911469,0.101297922432423,0.078524790704250,-0.099888868629932,-0.005352507811040));
res += mul(Get(s2,0,0), float4x4(-0.017010770738125,-0.173494964838028,0.017276635393500,-0.067761681973934,-0.029329257085919,0.028592454269528,0.055224090814590,0.003624384989962,-0.108097098767757,0.100489839911461,-0.175492867827415,-0.075187288224697,-0.059176519513130,0.073589451611042,0.002845041221008,-0.002324192784727));
res += mul(Get(s2,0,dy), float4x4(-0.124393403530121,0.049317665398121,-0.168011873960495,0.084223628044128,-0.044744238257408,-0.002273390535265,-0.051915179938078,-0.091205269098282,-0.098270699381828,-0.008288494311273,0.011720460839570,-0.027908543124795,0.042692687362432,0.092803947627544,0.088192194700241,0.033880256116390));
res += mul(Get(s2,dx,-dy), float4x4(0.009660004638135,0.112386018037796,0.001442811684683,-0.061827097088099,-0.001932555460371,0.045969154685736,-0.058461964130402,0.176341727375984,0.010177799500525,-0.019984254613519,-0.106212727725506,0.007780332118273,-0.024021362885833,0.153051108121872,0.049455471336842,-0.006459865719080));
res += mul(Get(s2,dx,0), float4x4(-0.052186958491802,0.085708916187286,-0.110811226069927,0.091020412743092,-0.005710723344237,0.067465834319592,0.070794038474560,-0.013673713430762,-0.113910734653473,0.191679149866104,0.019907332956791,-0.120700307190418,0.082598067820072,-0.078442789614201,-0.137982726097107,0.058246448636055));
res += mul(Get(s2,dx,dy), float4x4(-0.061618376523256,0.237584024667740,0.076307587325573,-0.108166202902794,0.068214960396290,0.137950301170349,-0.110097140073776,0.157762378454208,0.001719358377159,-0.081684798002243,0.009410127997398,0.025848815217614,-0.120622001588345,-0.083306714892387,-0.070991687476635,-0.090048104524612));
res += mul(Get(s3,-dx,-dy), float4x4(-0.047869283705950,-0.057706281542778,0.211516246199608,0.013429788872600,-0.026991397142410,-0.105905562639236,0.018290631473064,-0.033429831266403,0.000790210673586,0.137088522315025,0.124335490167141,-0.035093784332275,0.003017766401172,-0.125520706176758,0.090669050812721,0.070615366101265));
res += mul(Get(s3,-dx,0), float4x4(-0.049314286559820,0.048059515655041,0.033440899103880,-0.025916947051883,0.052924871444702,-0.178212881088257,0.137100055813789,-0.093842521309853,0.009661981835961,0.053239814937115,-0.056857831776142,0.066428147256374,0.030455045402050,0.072138234972954,0.129203289747238,-0.069665029644966));
res += mul(Get(s3,-dx,dy), float4x4(-0.093976892530918,0.019191045314074,-0.105814263224602,0.055514793843031,-0.142098307609558,0.095963582396507,0.143125101923943,-0.125341370701790,0.153405383229256,0.020005650818348,0.131496518850327,0.003289335174486,0.020754752680659,-0.024131201207638,0.010391352698207,-0.061383157968521));
res += mul(Get(s3,0,-dy), float4x4(0.242109030485153,0.008553172461689,-0.037691764533520,0.081254608929157,-0.028895765542984,0.033943369984627,0.017393061891198,-0.053159281611443,0.018355093896389,0.034523971378803,0.035496275871992,-0.103969722986221,-0.087582908570766,0.116093061864376,-0.042974393814802,-0.052506148815155));
res += mul(Get(s3,0,0), float4x4(0.066831938922405,-0.072461895644665,-0.067386172711849,0.024251472204924,0.096898496150970,-0.109364762902260,-0.100571677088737,-0.143975198268890,-0.020271731540561,-0.079845532774925,-0.003996313549578,-0.042746614664793,-0.102442204952240,0.060834039002657,0.043710641562939,0.011172512546182));
res += mul(Get(s3,0,dy), float4x4(0.280270904302597,-0.041333168745041,-0.043714355677366,-0.112995803356171,0.042002685368061,-0.049313686788082,0.018145440146327,0.106584034860134,-0.013958214782178,-0.049856707453728,-0.018488172441721,-0.000606169574894,-0.073745213449001,-0.040694840252399,0.104060836136341,0.064682468771935));
res += mul(Get(s3,dx,-dy), float4x4(-0.000368821230950,-0.146848157048225,0.065671578049660,0.048215672373772,0.014652934856713,-0.041870366781950,0.001537218922749,-0.048635423183441,-0.027512131258845,0.022155873477459,-0.046796437352896,0.055486850440502,-0.183615595102310,-0.027740003541112,-0.093619734048843,-0.114961132407188));
res += mul(Get(s3,dx,0), float4x4(-0.049733541905880,-0.182771429419518,0.038608931005001,-0.099635101854801,-0.063525371253490,-0.055512987077236,0.011499433778226,-0.046209793537855,-0.061739429831505,-0.068129979074001,-0.164884448051453,0.155470967292786,0.040992610156536,0.025319986045361,0.078125886619091,-0.035054080188274));
res += mul(Get(s3,dx,dy), float4x4(-0.100450426340103,0.028054118156433,-0.125610694289207,-0.096410572528839,-0.093303628265858,-0.076622597873211,-0.101253449916840,0.099603995680809,0.071539521217346,0.091550573706627,-0.089811399579048,0.015324003994465,0.057899381965399,0.069797202944756,0.021715465933084,0.229049593210220));
return max(float4(0,0,0,0), res);
}
