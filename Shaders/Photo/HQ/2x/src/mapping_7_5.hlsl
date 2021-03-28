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
float4 res = float4(-0.030312122777104,-0.109390974044800,-0.024037299677730,-0.052050217986107);
res += mul(Get(s0,-dx,-dy), float4x4(-0.021356059238315,0.055427692830563,-0.064117014408112,0.112249828875065,0.011691043153405,0.110811963677406,-0.049676630645990,0.042183205485344,0.084424957633018,0.043029814958572,0.121657893061638,0.017505068331957,0.002745423698798,-0.053445849567652,0.088986463844776,-0.049812320619822));
res += mul(Get(s0,-dx,0), float4x4(0.148527875542641,-0.007829301059246,0.092722751200199,-0.036750528961420,0.144566833972931,-0.047318700700998,0.157836243510246,-0.059209842234850,-0.145203247666359,-0.046773772686720,0.278895139694214,-0.187261521816254,0.078183591365814,-0.008259799331427,0.016353916376829,0.012953339144588));
res += mul(Get(s0,-dx,dy), float4x4(-0.116312459111214,0.044240932911634,0.051801823079586,-0.111925520002842,-0.155211389064789,0.032687697559595,0.014842077158391,-0.053533878177404,0.075035870075226,0.112008608877659,0.084348537027836,0.001824206323363,-0.028905808925629,-0.037851307541132,-0.099207587540150,-0.012504800222814));
res += mul(Get(s0,0,-dy), float4x4(0.085445649921894,-0.094081312417984,-0.079564079642296,0.171679884195328,0.047523707151413,-0.031279161572456,0.056239388883114,0.128891974687576,-0.059395823627710,-0.040735006332397,0.217116639018059,-0.167259633541107,0.023121964186430,-0.072970584034920,-0.086044050753117,-0.000735551933758));
res += mul(Get(s0,0,0), float4x4(-0.479967266321182,0.317274838685989,-0.251996189355850,0.108734145760536,-0.187903046607971,-0.027852643281221,-0.038396839052439,-0.114691756665707,-0.020385840907693,-0.126766681671143,0.087353743612766,-0.150232806801796,0.155474156141281,-0.036717467010021,-0.276761412620544,-0.032303731888533));
res += mul(Get(s0,0,dy), float4x4(-0.008916124701500,0.074327379465103,0.080289885401726,-0.021327467635274,0.041070867329836,-0.069264747202396,-0.010037131607533,0.020583115518093,0.109671756625175,-0.135547697544098,0.170106679201126,-0.036467026919127,0.008976962417364,-0.012271899729967,-0.114912204444408,0.073394380509853));
res += mul(Get(s0,dx,-dy), float4x4(0.014108033850789,0.056924425065517,0.079760141670704,0.018842972815037,-0.022203436121345,0.094179749488831,0.053121358156204,0.117102816700935,0.058526493608952,0.042428955435753,0.098042920231819,0.079421028494835,-0.054685100913048,-0.018314478918910,-0.049047272652388,-0.080568537116051));
res += mul(Get(s0,dx,0), float4x4(-0.027449462562799,-0.034052222967148,-0.076472565531731,0.008824012242258,0.045034408569336,0.000168558821315,-0.083026506006718,-0.037822663784027,0.000366989843315,-0.028405856341124,0.011569846421480,-0.115450531244278,-0.025237318128347,-0.047863159328699,-0.203381627798080,0.026404859498143));
res += mul(Get(s0,dx,dy), float4x4(-0.045156579464674,0.068405255675316,-0.080370046198368,-0.004729570820928,0.133293971419334,0.046080298721790,0.124952934682369,0.063582688570023,0.062925480306149,-0.034245833754539,-0.038537081331015,0.026234814897180,-0.074318706989288,0.030025510117412,-0.070947512984276,-0.126543685793877));
res += mul(Get(s1,-dx,-dy), float4x4(-0.065758511424065,0.033895358443260,0.192109674215317,0.056322023272514,0.092847518622875,-0.123556755483150,-0.037735283374786,0.000349571666447,-0.066828161478043,0.054494928568602,-0.145308032631874,0.074809275567532,0.021247984841466,0.035825181752443,-0.054611653089523,0.036070737987757));
res += mul(Get(s1,-dx,0), float4x4(-0.173324003815651,0.048093348741531,0.087272278964520,-0.045345254242420,-0.016174888238311,0.053206071257591,-0.121965862810612,0.009238395839930,-0.038293771445751,0.150934651494026,0.048628900200129,0.033446073532104,-0.001121973269619,-0.015115499496460,0.050198830664158,-0.022770678624511));
res += mul(Get(s1,-dx,dy), float4x4(-0.004086472094059,-0.045265670865774,-0.059304326772690,0.078095793724060,-0.112080760300159,-0.091692321002483,-0.000357167009497,0.043516259640455,-0.113039121031761,0.016183422878385,0.043802123516798,0.052088472992182,-0.057570826262236,-0.101774372160435,-0.021442055702209,-0.055947519838810));
res += mul(Get(s1,0,-dy), float4x4(-0.127054542303085,0.085481002926826,0.277460664510727,0.029804829508066,-0.088352337479591,0.036429975181818,0.039423000067472,-0.013294843956828,0.047553732991219,-0.035148672759533,0.006463934201747,-0.006058464292437,-0.018618308007717,-0.076311014592648,-0.089629545807838,0.045267965644598));
res += mul(Get(s1,0,0), float4x4(0.051600854843855,-0.076770022511482,0.079761512577534,0.023536875844002,-0.108713619410992,0.028239550068974,0.022190980613232,0.200545355677605,-0.154859155416489,-0.094484083354473,-0.080807305872440,-0.029549067839980,-0.196312487125397,0.213293954730034,-0.417435824871063,0.056004926562309));
res += mul(Get(s1,0,dy), float4x4(-0.026988895609975,0.061259333044291,-0.066248916089535,-0.023979924619198,-0.065134331583977,-0.012659007683396,0.018247641623020,-0.104398779571056,-0.151187866926193,0.087581142783165,0.039479367434978,-0.095289051532745,-0.116430401802063,0.042182449251413,-0.073821328580379,0.123950265347958));
res += mul(Get(s1,dx,-dy), float4x4(-0.000748226477299,0.096336029469967,0.046569935977459,0.054423224180937,-0.108220778405666,-0.049158662557602,0.104953527450562,-0.113631844520569,-0.017984041944146,-0.098106145858765,0.245584502816200,-0.123739197850227,-0.023328553885221,0.017560698091984,0.087347947061062,-0.081286922097206));
res += mul(Get(s1,dx,0), float4x4(-0.068663448095322,-0.030669083818793,0.146031633019447,0.081312179565430,-0.198740616440773,-0.000037677004002,-0.018105234950781,-0.036804631352425,-0.001470808754675,-0.016548825427890,0.234168022871017,-0.093265250325203,-0.000773201696575,0.005242895800620,-0.102253057062626,0.107456155121326));
res += mul(Get(s1,dx,dy), float4x4(-0.018962996080518,-0.043307684361935,0.065154530107975,-0.088041298091412,0.136684745550156,0.043579034507275,0.002982993377373,0.160356551408768,-0.078424438834190,0.050961755216122,-0.102329246699810,0.079595804214478,0.036551374942064,0.031417906284332,-0.159932464361191,0.033721406012774));
res += mul(Get(s2,-dx,-dy), float4x4(-0.047563090920448,0.100046917796135,0.033859532326460,0.043340686708689,0.065741568803787,-0.187016144394875,0.234035834670067,-0.042924646288157,0.007146563846618,-0.028325686231256,0.033791061490774,-0.012228156439960,0.010559712536633,0.067282773554325,-0.071696646511555,0.061922192573547));
res += mul(Get(s2,-dx,0), float4x4(0.108134441077709,0.036838326603174,-0.115836128592491,0.163223579525948,0.039037689566612,0.109407015144825,-0.115659266710281,0.073161683976650,-0.072244696319103,-0.011673889122903,-0.040392629802227,-0.017345180734992,0.069899238646030,0.068528100848198,0.076631329953671,0.038551598787308));
res += mul(Get(s2,-dx,dy), float4x4(-0.053600512444973,-0.047952260822058,-0.043982855975628,-0.000191999075469,0.109429642558098,0.018191482871771,-0.066997177898884,-0.019774541258812,-0.094342701137066,-0.011847792193294,-0.017110269516706,-0.114626027643681,-0.043686728924513,-0.014058493077755,-0.014778935350478,-0.099060349166393));
res += mul(Get(s2,0,-dy), float4x4(0.044777121394873,0.017189444974065,-0.031725518405437,0.018775910139084,0.080682568252087,0.018589869141579,0.164400786161423,-0.104838803410530,-0.041727848351002,-0.049464017152786,-0.021676560863853,-0.034502524882555,-0.082077883183956,0.105864904820919,-0.070731684565544,-0.049296673387289));
res += mul(Get(s2,0,0), float4x4(0.108751825988293,0.183199316263199,0.013796917162836,0.028224261477590,0.207707151770592,0.048361882567406,0.108805157244205,0.162356629967690,0.107375577092171,0.115257412195206,-0.220577582716942,0.169958874583244,-0.048680804669857,-0.247386619448662,0.049552001059055,0.041886277496815));
res += mul(Get(s2,0,dy), float4x4(-0.019713010638952,0.165142849087715,-0.148309156298637,0.056173600256443,0.096549034118652,0.035750258713961,0.172482773661613,-0.039628364145756,-0.096578955650330,0.034589994698763,0.153785422444344,-0.152981773018837,0.062403991818428,-0.150843322277069,0.005897819064558,-0.166720896959305));
res += mul(Get(s2,dx,-dy), float4x4(0.073915220797062,0.012414710596204,0.001479342696257,-0.050816990435123,0.080309294164181,0.021391006186604,0.177869513630867,-0.133424684405327,0.025052012875676,-0.064020879566669,-0.050146423280239,-0.095411054790020,0.073485098779202,0.011947729624808,-0.093594178557396,0.050660103559494));
res += mul(Get(s2,dx,0), float4x4(0.039507530629635,-0.034941103309393,-0.008333835750818,-0.131920143961906,0.142309173941612,0.040471538901329,0.093848042190075,-0.051620475947857,0.021329347044230,0.043143246322870,0.018044449388981,-0.040959302335978,0.041562095284462,-0.013426860794425,-0.097646765410900,0.027884161099792));
res += mul(Get(s2,dx,dy), float4x4(-0.078373000025749,-0.057449813932180,-0.105871535837650,0.054610531777143,0.116753444075584,0.026310740038753,0.025500018149614,0.124377071857452,-0.000078374163422,-0.042830523103476,0.061098106205463,-0.066630303859711,-0.066273458302021,-0.002477328060195,0.005217541009188,0.070734754204750));
res += mul(Get(s3,-dx,-dy), float4x4(-0.157003402709961,0.064674288034439,-0.010657545179129,-0.101407639682293,-0.091085851192474,-0.044788099825382,-0.029919212684035,0.003002193989232,-0.100252285599709,0.029019467532635,-0.234781265258789,0.029746534302831,-0.021308943629265,0.171782821416855,0.089841812849045,0.074204191565514));
res += mul(Get(s3,-dx,0), float4x4(-0.044359885156155,0.074448421597481,0.145171210169792,0.006318254861981,0.066681049764156,0.097532816231251,-0.123117245733738,0.165957659482956,0.211171805858612,-0.018421296030283,0.105465233325958,0.007788346149027,0.109306961297989,0.098305270075798,0.099103651940823,0.044505093246698));
res += mul(Get(s3,-dx,dy), float4x4(-0.022996706888080,-0.043825883418322,-0.092465996742249,0.017965281382203,0.021084405481815,-0.056941617280245,-0.006003809161484,-0.054064013063908,-0.118180796504021,-0.074184544384480,0.002855011262000,-0.102718584239483,0.030398791655898,0.090835489332676,0.089379802346230,0.050108548253775));
res += mul(Get(s3,0,-dy), float4x4(-0.119755782186985,0.095427870750427,-0.053069088608027,0.049834802746773,0.022302197292447,0.030814306810498,-0.035282351076603,-0.027520727366209,-0.053130447864532,-0.087694317102432,-0.132486566901207,-0.012659675441682,0.064392007887363,0.084684632718563,0.134505659341812,0.076902918517590));
res += mul(Get(s3,0,0), float4x4(-0.108904719352722,-0.094104766845703,-0.004197632893920,-0.255156069993973,-0.338534623384476,-0.277629941701889,0.085038855671883,-0.475387066602707,-0.163278609514236,-0.117402344942093,-0.133167251944542,-0.131111562252045,0.099117085337639,0.023508971557021,0.011018608696759,0.035672511905432));
res += mul(Get(s3,0,dy), float4x4(-0.050941161811352,0.034810934215784,-0.036667365580797,0.019547663629055,-0.040795788168907,-0.014032979495823,-0.018176199868321,0.116224288940430,0.110142327845097,0.101660788059235,-0.143268898129463,-0.004496352281421,0.112580865621567,0.180247783660889,0.110781639814377,-0.084143280982971));
res += mul(Get(s3,dx,-dy), float4x4(-0.073114253580570,0.028168909251690,-0.080941870808601,0.007369526661932,0.038928739726543,-0.017509348690510,0.093477666378021,0.017735525965691,-0.063299797475338,-0.048523932695389,-0.127751946449280,0.019278157502413,0.157754465937614,0.128454074263573,0.058580759912729,-0.123821772634983));
res += mul(Get(s3,dx,0), float4x4(0.091603219509125,0.007304114755243,-0.074920922517776,0.110208205878735,0.081397481262684,-0.191477581858635,-0.037456564605236,0.037194669246674,-0.024277577176690,-0.059203382581472,-0.194652229547501,0.013590245507658,-0.017898807302117,0.210291162133217,0.053850088268518,0.115124002099037));
res += mul(Get(s3,dx,dy), float4x4(-0.013062722980976,0.061478111892939,0.007337651681155,-0.021109795197845,-0.034064523875713,-0.014549686573446,-0.023218467831612,0.033768892288208,-0.010437891818583,0.082774072885513,0.051111519336700,0.003359171561897,0.003941607661545,0.125128984451294,0.037496794015169,0.032431863248348));
res += mul(Get(s4,-dx,-dy), float4x4(0.028478683903813,-0.013325603678823,0.042012564837933,0.025371989235282,-0.067899763584137,0.054703764617443,-0.184376150369644,-0.016572099179029,0.048486985266209,-0.028406422585249,0.021862842142582,0.008265003561974,-0.020132400095463,-0.074803248047829,-0.054523583501577,-0.017464162781835));
res += mul(Get(s4,-dx,0), float4x4(-0.092368431389332,0.087165042757988,0.074350588023663,0.108834207057953,-0.046825144439936,-0.040493883192539,0.049021381884813,-0.018552288413048,-0.089919567108154,0.101572088897228,-0.183325588703156,-0.006235197652131,-0.016229281201959,-0.133970975875854,0.013998483307660,-0.066847234964371));
res += mul(Get(s4,-dx,dy), float4x4(-0.003492039628327,0.022783545777202,-0.015633853152394,0.010833540931344,0.028608156368136,-0.042222905904055,0.012313722632825,-0.102907106280327,0.048172410577536,0.027427829802036,-0.006567549891770,-0.006307704839855,0.005081898067147,0.006979378405958,-0.008450680412352,0.103348180651665));
res += mul(Get(s4,0,-dy), float4x4(0.017275733873248,-0.084653921425343,0.010390964336693,0.194945722818375,0.069929227232933,-0.114431992173195,-0.193242490291595,0.037029780447483,-0.079434409737587,0.298932403326035,0.018314471468329,-0.095923177897930,0.022849649190903,-0.068673633038998,-0.156635299324989,0.025500377640128));
res += mul(Get(s4,0,0), float4x4(-0.007803166285157,0.083352498710155,0.291722834110260,-0.262571036815643,-0.115835443139076,0.167099371552467,-0.398213565349579,0.152079209685326,-0.057583458721638,-0.346612542867661,0.032833915203810,-0.394385784864426,-0.094264417886734,0.090664513409138,-0.056420624256134,-0.026110108941793));
res += mul(Get(s4,0,dy), float4x4(0.138394594192505,-0.217168062925339,0.167143389582634,-0.017694365233183,0.034357719123363,-0.014446308836341,-0.138255476951599,0.116632744669914,0.148071661591530,0.061932191252708,-0.127620309591293,0.283406019210815,0.100362285971642,-0.058549746870995,-0.050233047455549,0.188489332795143));
res += mul(Get(s4,dx,-dy), float4x4(0.073132053017616,0.025838438421488,0.040339715778828,-0.040857683867216,-0.084312826395035,0.054095774888992,-0.008135117590427,-0.037205487489700,0.120877541601658,0.012100011110306,-0.103411905467510,0.028660882264376,0.004982435144484,-0.079505898058414,-0.071666322648525,0.020219188183546));
res += mul(Get(s4,dx,0), float4x4(0.027335852384567,-0.037245135754347,0.016882458701730,0.058412060141563,0.009913066402078,0.034039795398712,-0.095803737640381,0.042782198637724,0.110626958310604,0.080498836934566,0.026898292824626,-0.021607136353850,-0.042750358581543,-0.105655148625374,-0.000706005957909,-0.068392723798752));
res += mul(Get(s4,dx,dy), float4x4(-0.072692543268204,0.133997082710266,0.019124558195472,0.059026017785072,-0.011550469323993,0.090824276208878,-0.020040586590767,0.078832335770130,-0.062823392450809,0.125824838876724,0.060131248086691,0.013332337141037,-0.011939884163439,-0.099747329950333,-0.071765758097172,-0.083119064569473));
res += mul(Get(s5,-dx,-dy), float4x4(-0.125999808311462,0.101542696356773,0.033278513699770,0.093707233667374,-0.005340125411749,0.074266217648983,-0.108183935284615,0.031185841187835,-0.016649562865496,-0.010710813105106,0.232363864779472,-0.024019623175263,-0.040707632899284,0.036881122738123,-0.116659834980965,0.027238309383392));
res += mul(Get(s5,-dx,0), float4x4(-0.082700014114380,0.025473073124886,-0.037446815520525,0.034226752817631,0.130399957299232,-0.032672375440598,0.028500525280833,0.010463340207934,0.182707518339157,0.018395341932774,0.058028943836689,0.157967716455460,0.005071195773780,-0.023182611912489,0.016492486000061,0.009276124648750));
res += mul(Get(s5,-dx,dy), float4x4(0.063632659614086,0.027554655447602,0.063388556241989,0.000979741220362,0.003859888995066,-0.041435912251472,-0.027648229151964,0.039977263659239,-0.051799915730953,-0.017151637002826,0.121966570615768,-0.035050794482231,0.036836735904217,0.087987355887890,0.029796887189150,0.101044066250324));
res += mul(Get(s5,0,-dy), float4x4(-0.062971249222755,-0.146114319562912,0.164479359984398,-0.440392583608627,0.142466023564339,-0.035830989480019,0.063494972884655,0.118174165487289,-0.034816995263100,0.116598509252071,0.106381863355637,-0.097686260938644,0.062421269714832,-0.049217600375414,-0.044325847178698,0.067156702280045));
res += mul(Get(s5,0,0), float4x4(0.026235846802592,0.083472959697247,0.148770317435265,-0.127572193741798,-0.141582548618317,0.031750604510307,0.060200951993465,-0.042842399328947,0.118459612131119,0.033340774476528,-0.001699920278043,0.270997315645218,-0.002094298833981,0.202251315116882,-0.074002198874950,0.002035249257460));
res += mul(Get(s5,0,dy), float4x4(0.045631319284439,0.013093474321067,-0.002378888893872,0.016288930550218,-0.009019251912832,-0.030217587947845,-0.024583829566836,-0.064174793660641,-0.015697274357080,0.091016821563244,0.055672947317362,-0.100381880998611,-0.151895448565483,-0.077840648591518,-0.086860761046410,-0.011346358805895));
res += mul(Get(s5,dx,-dy), float4x4(0.142831116914749,0.146850258111954,0.048682406544685,0.090766534209251,-0.015090851113200,0.030916828662157,-0.048623938113451,0.201286330819130,0.047012116760015,0.045783225446939,-0.038304474204779,0.015838587656617,-0.002398135373369,0.073347836732864,0.028111249208450,-0.099205218255520));
res += mul(Get(s5,dx,0), float4x4(0.053856991231441,0.041615888476372,-0.013612558133900,0.174650922417641,0.032640341669321,-0.157678067684174,-0.032758865505457,0.017656974494457,-0.004747335799038,0.052936397492886,0.032840497791767,0.044996876269579,-0.054395642131567,0.007059352006763,0.056555185467005,-0.009227294474840));
res += mul(Get(s5,dx,dy), float4x4(-0.034083545207977,-0.013058920390904,-0.013793123885989,-0.034263156354427,0.007762215565890,-0.003427401185036,0.004138063173741,-0.080489680171013,0.007810209412128,0.076162740588188,0.151770576834679,0.019822591915727,0.102469004690647,-0.062703348696232,-0.143382593989372,-0.003202052554116));
res = max(float4(0, 0, 0, 0), res) + float4(0.196582809090614,-0.107547618448734,0.002323508029804,0.359895080327988) * min(float4(0, 0, 0, 0), res);
return res;
}
