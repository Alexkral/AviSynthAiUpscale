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
float4 res = float4(0.074412465095520,-0.006652879528701,0.018627474084496,0.052976537495852);
res += mul(Get(s0,-dx,-dy), float4x4(0.118158854544163,-0.024462215602398,0.268453687429428,0.054371956735849,0.009167633019388,0.015938052907586,0.118161164224148,0.066889926791191,-0.009693275205791,-0.056951530277729,-0.037472240626812,0.063020482659340,-0.106272183358669,0.007958600297570,-0.043521068990231,0.111893631517887));
res += mul(Get(s0,-dx,0), float4x4(0.086050935089588,0.138703003525734,0.205375745892525,-0.010186168365180,-0.066890209913254,-0.031037017703056,0.122501760721207,-0.257323861122131,-0.017326686531305,-0.216620698571205,-0.139170944690704,0.020570971071720,0.062089022248983,0.197923645377159,-0.096379011869431,-0.062686659395695));
res += mul(Get(s0,-dx,dy), float4x4(-0.043177809566259,-0.159486085176468,-0.004154731985182,0.040004026144743,0.040262568742037,0.112790532410145,0.240371346473694,0.043613452464342,0.092938505113125,-0.001913247047924,0.016390664502978,-0.087173640727997,-0.036225203424692,-0.023954981938004,0.139951258897781,0.078699074685574));
res += mul(Get(s0,0,-dy), float4x4(-0.095405369997025,-0.277223736047745,-0.107686921954155,0.394598633050919,0.064408697187901,-0.045198332518339,0.084253989160061,0.119338028132915,0.007267705164850,-0.028287462890148,-0.258636921644211,0.143769025802612,0.123129352927208,0.172350049018860,-0.267408728599548,0.122075960040092));
res += mul(Get(s0,0,0), float4x4(-0.054618708789349,0.122829802334309,0.319967150688171,0.052998680621386,-0.193230107426643,-0.119581811130047,0.035477489233017,-0.081372804939747,0.135597258806229,-0.162437051534653,0.069489650428295,0.013041616417468,0.019594065845013,0.001685497234575,-0.071598529815674,-0.081549987196922));
res += mul(Get(s0,0,dy), float4x4(-0.043755196034908,-0.183051213622093,-0.138966172933578,-0.055626854300499,0.082422882318497,0.317633807659149,0.027052434161305,-0.058967657387257,0.094747729599476,-0.106750331819057,-0.198122188448906,0.046412043273449,0.015755442902446,-0.129790246486664,0.283217221498489,0.033226050436497));
res += mul(Get(s0,dx,-dy), float4x4(-0.003673382336274,0.095207244157791,0.048522289842367,0.004499316681176,0.020583435893059,-0.086000882089138,0.025066670030355,0.000474047730677,0.139530166983604,-0.209978640079498,-0.092613965272903,0.308541715145111,-0.036862526088953,-0.052544265985489,-0.077620021998882,0.068161658942699));
res += mul(Get(s0,dx,0), float4x4(-0.061190806329250,-0.014711279422045,-0.017701141536236,-0.225571036338806,-0.001771921757609,-0.123732462525368,0.011789672076702,0.101913668215275,0.025105964392424,-0.117913700640202,0.262100756168365,0.062132902443409,0.045410402119160,-0.135463431477547,0.255232989788055,0.044918201863766));
res += mul(Get(s0,dx,dy), float4x4(0.070116542279720,-0.096097141504288,-0.007465860806406,0.016002418473363,0.077282384037971,-0.007230528164655,0.034589320421219,-0.144159853458405,-0.056053854525089,-0.168897241353989,-0.012614876963198,-0.004778556525707,-0.049710497260094,0.121968567371368,0.030039779841900,0.024125076830387));
res += mul(Get(s1,-dx,-dy), float4x4(0.010669450275600,0.253316789865494,-0.005021872464567,-0.009043708443642,0.026953754946589,-0.116222508251667,0.169587507843971,0.140970990061760,0.022199193015695,0.095636531710625,-0.079034499824047,-0.193910703063011,0.087652824819088,-0.023757232353091,0.200209960341454,-0.189134493470192));
res += mul(Get(s1,-dx,0), float4x4(-0.009277424775064,-0.018224788829684,-0.083496317267418,-0.047138206660748,0.021468760445714,-0.413332700729370,-0.315364062786102,0.041473038494587,-0.078358776867390,0.124874331057072,-0.076937660574913,-0.001020329771563,0.022570019587874,-0.040685556828976,-0.105676054954529,-0.375927090644836));
res += mul(Get(s1,-dx,dy), float4x4(0.014762667939067,0.123108625411987,-0.075077354907990,0.086013138294220,0.007653465960175,0.143220052123070,-0.154819831252098,0.040557518601418,0.095175445079803,-0.198249429464340,-0.047407854348421,-0.037052001804113,-0.025734854862094,0.076749436557293,0.179405510425568,-0.078468166291714));
res += mul(Get(s1,0,-dy), float4x4(-0.082226805388927,0.054602891206741,0.001107977586798,-0.032733209431171,-0.418148994445801,-0.271116197109222,-0.248535841703415,0.551347613334656,0.038472641259432,0.119314171373844,-0.092100448906422,0.060692962259054,0.173248499631882,0.142600968480110,-0.022507838904858,-0.083120718598366));
res += mul(Get(s1,0,0), float4x4(-0.109204255044460,0.180552542209625,-0.075273051857948,0.131293341517448,0.326753407716751,0.311263293027878,0.207431390881538,-0.422086477279663,-0.055418133735657,-0.317936509847641,-0.379785567522049,0.534111917018890,-0.071662537753582,-0.074606694281101,0.308543443679810,-0.835558652877808));
res += mul(Get(s1,0,dy), float4x4(0.012217323295772,0.214106097817421,-0.037264868617058,0.073188953101635,-0.027575226500630,0.101446673274040,0.071885511279106,-0.099536798894405,0.195904195308685,-0.048797018826008,-0.122042730450630,-0.163506150245667,-0.092577941715717,0.259067207574844,-0.257791340351105,-0.066760726273060));
res += mul(Get(s1,dx,-dy), float4x4(-0.083094730973244,0.154919102787971,-0.110146969556808,0.021611083298922,-0.184475928544998,0.059103652834892,-0.054917559027672,0.330836266279221,-0.078422032296658,-0.043679431080818,0.194541916251183,-0.044786706566811,-0.081028975546360,0.109677165746689,0.111769251525402,-0.076825745403767));
res += mul(Get(s1,dx,0), float4x4(0.038422185927629,0.303072303533554,0.002438639057800,0.078030727803707,0.195850536227226,0.159851104021072,0.068066105246544,-0.195857122540474,-0.018207013607025,0.095998764038086,0.012086835689843,0.151630908250809,-0.186032831668854,0.088224552571774,0.163081020116806,-0.018171003088355));
res += mul(Get(s1,dx,dy), float4x4(-0.066881380975246,0.292893856763840,-0.057230826467276,0.108623184263706,0.027874058112502,-0.080935403704643,0.071567893028259,0.020425379276276,0.003703119698912,-0.015265292488039,-0.017670933157206,-0.028941646218300,-0.043615315109491,0.059265982359648,0.033540707081556,-0.197693437337875));
res += mul(Get(s2,-dx,-dy), float4x4(0.091559052467346,-0.139198735356331,-0.044928703457117,-0.369596451520920,-0.088446989655495,0.049422491341829,0.157826274633408,0.067906692624092,-0.114985398948193,0.042466901242733,-0.037919893860817,0.131979286670685,0.042867403477430,-0.136680647730827,0.048658408224583,-0.015296935103834));
res += mul(Get(s2,-dx,0), float4x4(-0.014245012775064,-0.166038453578949,0.039217695593834,-0.196440830826759,-0.071164160966873,0.144253283739090,-0.004068235401064,0.062143098562956,0.029493393376470,-0.106156773865223,-0.108287364244461,0.163379460573196,0.083391100168228,-0.051784154027700,-0.114263564348221,-0.035303078591824));
res += mul(Get(s2,-dx,dy), float4x4(-0.070503212511539,-0.139101371169090,-0.167649641633034,0.191626057028770,0.055524732917547,0.114250451326370,0.015159113332629,0.001891254098155,-0.027892861515284,-0.192070201039314,-0.056153111159801,0.019985236227512,0.052857123315334,-0.012704316526651,0.053599797189236,-0.046089336276054));
res += mul(Get(s2,0,-dy), float4x4(-0.063380680978298,-0.213254898786545,-0.032724361866713,-0.367340654134750,-0.298483490943909,-0.149891197681427,-0.020815636962652,-0.106191679835320,-0.221933603286743,-0.270866304636002,0.212900832295418,0.372503131628036,0.087833493947983,0.042556148022413,-0.167186841368675,0.140478461980820));
res += mul(Get(s2,0,0), float4x4(-0.116059415042400,-0.097630985081196,0.047466184943914,-0.185860559344292,0.185212016105652,0.300657957792282,0.124250128865242,-0.343755334615707,-0.005020422860980,-0.125302299857140,0.148640975356102,-0.213275834918022,0.315696895122528,-0.109559193253517,-0.176279544830322,-0.372974783182144));
res += mul(Get(s2,0,dy), float4x4(0.009925852529705,0.054859243333340,-0.070591114461422,0.145810559391975,-0.112254232168198,0.127115696668625,0.001418531872332,-0.025384340435266,0.044963654130697,-0.051731314510107,-0.034288838505745,0.063944771885872,-0.059779755771160,-0.042497381567955,-0.221213385462761,0.093273729085922));
res += mul(Get(s2,dx,-dy), float4x4(0.001232538488694,-0.173477083444595,0.031934302300215,-0.136713564395905,-0.046339765191078,0.170984625816345,-0.051268368959427,0.002047382527962,-0.195280820131302,0.267057418823242,-0.084665417671204,0.113673426210880,-0.118212260305882,-0.093030951917171,-0.113959774374962,-0.070869222283363));
res += mul(Get(s2,dx,0), float4x4(-0.026398766785860,-0.004368053283542,-0.094186745584011,-0.125082671642303,-0.105141967535019,-0.170216023921967,-0.210525736212730,-0.050087351351976,0.081371165812016,0.134899750351906,-0.121542565524578,-0.061023924499750,0.226110845804214,0.041402742266655,-0.127333164215088,-0.144904211163521));
res += mul(Get(s2,dx,dy), float4x4(-0.072363652288914,-0.164593011140823,-0.115906178951263,0.021591220051050,-0.038872260600328,-0.127775952219963,-0.034870136529207,0.080156177282333,0.066345199942589,0.081228658556938,0.132145896553993,-0.035357885062695,0.088124498724937,-0.064591392874718,-0.029810732230544,-0.004152883775532));
res += mul(Get(s3,-dx,-dy), float4x4(-0.021086415275931,-0.135283827781677,-0.128257945179939,0.017939738929272,0.148974046111107,-0.022809358313680,-0.237734556198120,-0.374542087316513,-0.105679690837860,-0.325122833251953,0.016582213342190,0.255626440048218,0.010146427899599,-0.057972054928541,-0.245634093880653,0.029745033010840));
res += mul(Get(s3,-dx,0), float4x4(0.107063539326191,-0.300027877092361,0.052290998399258,0.081353642046452,-0.354979664087296,-0.043208573013544,-0.614686429500580,0.080008722841740,-0.140624701976776,0.253883689641953,-0.008973015472293,-0.097907483577728,-0.001714773592539,-0.202921286225319,-0.363739252090454,0.084447525441647));
res += mul(Get(s3,-dx,dy), float4x4(0.008300893940032,0.022265696898103,-0.064671956002712,-0.011382605880499,-0.059837266802788,-0.035860698670149,-0.046531513333321,-0.108899712562561,0.026963038370013,0.065157137811184,0.093729838728905,-0.075003772974014,-0.021515676751733,-0.005749007686973,-0.012013139203191,0.126096129417419));
res += mul(Get(s3,0,-dy), float4x4(-0.153353512287140,-0.135114163160324,0.227575242519379,-0.201484590768814,0.109879992902279,-0.037346452474594,0.158753424882889,-0.016473494470119,0.006389629561454,-0.114673241972923,-0.015967618674040,-0.122730948030949,-0.194229781627655,0.061191901564598,0.090874522924423,0.107328757643700));
res += mul(Get(s3,0,0), float4x4(0.066019065678120,0.098796099424362,0.041135754436255,-0.095491603016853,-0.116170167922974,0.126740172505379,0.184558242559433,0.057926043868065,0.099329300224781,0.267027825117111,0.045244287699461,-0.087455667555332,0.548083126544952,0.020533278584480,0.009246865287423,-1.007499456405640));
res += mul(Get(s3,0,dy), float4x4(0.114704862236977,0.175483733415604,-0.154011055827141,0.060295879840851,0.013206307776272,0.250094234943390,0.023532148450613,-0.038397401571274,-0.095361679792404,0.087377160787582,-0.206987082958221,0.082259654998779,-0.193123206496239,0.071058854460716,0.202521219849586,-0.106944695115089));
res += mul(Get(s3,dx,-dy), float4x4(0.033722281455994,0.106276385486126,-0.029278876259923,0.020768864080310,-0.077850125730038,0.038408193737268,-0.041011687368155,-0.092733547091484,0.218975171446800,0.108657933771610,-0.005727029405534,-0.204488337039948,0.024834802374244,0.016523933038116,-0.071764416992664,0.021278787404299));
res += mul(Get(s3,dx,0), float4x4(-0.038010742515326,0.063422694802284,0.094664104282856,0.067097567021847,-0.168546810746193,0.151323512196541,-0.041799012571573,0.167558610439301,-0.181126147508621,-0.127026587724686,-0.051006961613894,0.138630539178848,0.526690721511841,0.214698269963264,0.046530358493328,-0.246335357427597));
res += mul(Get(s3,dx,dy), float4x4(0.051122561097145,0.039466418325901,0.137964650988579,-0.062036462128162,-0.081495881080627,-0.027725337073207,-0.001968557946384,-0.015721390023828,-0.014033263549209,-0.098639316856861,0.151085272431374,0.029234930872917,-0.114457719027996,-0.264942049980164,0.033762048929930,0.051826667040586));
res += mul(Get(s4,-dx,-dy), float4x4(0.115662485361099,0.169125780463219,0.089079461991787,-0.088839471340179,0.029244476929307,-0.072049841284752,-0.000236304811551,0.164494067430496,-0.046768561005592,-0.050087489187717,-0.076073788106441,0.067630425095558,-0.002682901220396,0.057287022471428,-0.015916593372822,0.090647242963314));
res += mul(Get(s4,-dx,0), float4x4(-0.089839570224285,-0.021241353824735,-0.011201963759959,-0.066786609590054,0.061619427055120,0.028726231306791,-0.004890304524451,-0.037225957959890,0.053367413580418,0.175319850444794,0.166106179356575,0.019881978631020,-0.112863451242447,-0.002199480542913,0.209899172186852,-0.000466803146992));
res += mul(Get(s4,-dx,dy), float4x4(-0.033255957067013,-0.027465380728245,0.008161024190485,0.053270407021046,-0.018517171964049,-0.030481064692140,-0.007195735350251,-0.044081490486860,0.007657498586923,-0.186266168951988,-0.028380744159222,-0.009443281218410,-0.049449898302555,0.056285474449396,-0.059242825955153,-0.005083807278425));
res += mul(Get(s4,0,-dy), float4x4(-0.045754600316286,0.090742558240891,-0.326922088861465,0.067838579416275,-0.118942104279995,0.016984641551971,0.053541269153357,0.260107785463333,0.091682702302933,0.234440550208092,-0.010615332983434,-0.141398936510086,0.368614614009857,0.138383388519287,0.249721109867096,-0.211889803409576));
res += mul(Get(s4,0,0), float4x4(0.027103012427688,0.135484084486961,-0.279196858406067,-0.213891893625259,0.026392884552479,-0.080163389444351,0.038260150700808,-0.039146874099970,-0.422540754079819,-0.261142194271088,-0.202774628996849,-0.174582079052925,-0.254726052284241,-0.089133650064468,-0.206569299101830,-0.040682744234800));
res += mul(Get(s4,0,dy), float4x4(0.117323786020279,0.062202099710703,0.162595838308334,-0.135393917560577,0.077244900166988,0.036947473883629,-0.090178743004799,-0.084200508892536,0.183406502008438,-0.000441011623479,0.050752479583025,-0.008280436508358,-0.104163855314255,0.070370495319366,-0.033492885529995,0.033722277730703));
res += mul(Get(s4,dx,-dy), float4x4(-0.104190580546856,-0.141742751002312,-0.088336750864983,-0.012128418311477,-0.146408304572105,0.150807738304138,-0.073021307587624,0.100771598517895,0.178327038884163,0.141791850328445,0.090246863663197,-0.040379375219345,-0.030877592042089,-0.013299033045769,-0.061552487313747,-0.013535846024752));
res += mul(Get(s4,dx,0), float4x4(-0.053996235132217,-0.162474185228348,0.052011288702488,0.102449499070644,0.030638359487057,-0.153657704591751,0.033804900944233,-0.152630627155304,-0.270619153976440,-0.156016111373901,-0.021954532712698,-0.006337823346257,-0.154270827770233,-0.028055552393198,0.049174651503563,-0.090717777609825));
res += mul(Get(s4,dx,dy), float4x4(0.030007189139724,-0.023281918838620,-0.046902019530535,0.014062492176890,0.078650392591953,0.058280963450670,0.017844650894403,-0.097050830721855,0.169537499547005,0.154026493430138,0.043278701603413,0.041811898350716,0.011436290107667,-0.096243165433407,0.057358697056770,-0.052445232868195));
res += mul(Get(s5,-dx,-dy), float4x4(-0.107969880104065,-0.059950605034828,0.067743346095085,-0.085451729595661,0.007117642089725,-0.072082027792931,0.074931681156158,-0.004845114890486,-0.075245611369610,-0.034461580216885,0.001736674108543,-0.018689662218094,-0.088717244565487,0.273412257432938,-0.413093864917755,0.134939163923264));
res += mul(Get(s5,-dx,0), float4x4(0.008065056987107,-0.004426453262568,0.060033570975065,-0.030374722555280,-0.065260961651802,0.058699183166027,0.049340277910233,0.072561509907246,-0.089325636625290,-0.029936797916889,0.303299784660339,0.076100274920464,0.002280097687617,-0.073629580438137,0.086560741066933,-0.068853870034218));
res += mul(Get(s5,-dx,dy), float4x4(-0.021278813481331,-0.164896950125694,0.074645094573498,-0.027564560994506,0.024314112961292,-0.051863510161638,0.133136808872223,0.056928575038910,-0.073887415230274,-0.064850732684135,0.093327827751637,0.026987629011273,0.083452388644218,-0.032991170883179,0.121600240468979,-0.118833035230637));
res += mul(Get(s5,0,-dy), float4x4(0.105507567524910,0.134534955024719,-0.076902449131012,0.125233292579651,0.053435094654560,0.180328741669655,-0.148324534296989,0.020639296621084,-0.012717915698886,-0.111525595188141,-0.187121450901031,0.432210981845856,0.224360361695290,0.013119007460773,-0.001750026829541,0.167845085263252));
res += mul(Get(s5,0,0), float4x4(0.060905408114195,-0.003329145489261,0.079683519899845,0.032401207834482,-0.033896628767252,-0.333105206489563,0.023704526945949,0.330229610204697,0.104592040181160,-0.076332852244377,-0.101407818496227,0.068044774234295,-0.312040746212006,-0.269589662551880,-0.222311362624168,0.187458604574203));
res += mul(Get(s5,0,dy), float4x4(-0.068589463829994,-0.047501239925623,-0.107595428824425,-0.016833378002048,0.018766375258565,-0.045789420604706,0.001909405924380,-0.222608193755150,0.036426395177841,-0.031635504215956,-0.051740143448114,0.008189166896045,0.099300861358643,-0.004869835451245,-0.046304054558277,-0.166510134935379));
res += mul(Get(s5,dx,-dy), float4x4(-0.013150103390217,-0.094608835875988,0.173774063587189,-0.048501718789339,0.038837313652039,0.224963650107384,0.133002161979675,-0.199285939335823,-0.172155126929283,0.058559659868479,0.008423715829849,0.067734263837337,0.047806557267904,-0.103756085038185,-0.126611292362213,0.083672329783440));
res += mul(Get(s5,dx,0), float4x4(-0.058251570910215,0.113180644810200,0.138970658183098,-0.060558952391148,-0.232603460550308,0.194204792380333,0.044036202132702,-0.262895524501801,0.066090874373913,0.029895884916186,0.033917415887117,-0.021057613193989,-0.138422101736069,-0.139072015881538,0.162960648536682,0.033559016883373));
res += mul(Get(s5,dx,dy), float4x4(0.136732831597328,0.120345778763294,0.085581161081791,-0.164145573973656,0.140418231487274,0.002731642685831,-0.111501172184944,0.031271707266569,-0.113894768059254,-0.037669587880373,0.145275637507439,-0.084139525890350,0.041205931454897,0.197056114673615,-0.019272683188319,-0.022299243137240));
res = max(float4(0, 0, 0, 0), res) + float4(-0.141750946640968,-0.262659162282944,0.098114416003227,-0.032900493592024) * min(float4(0, 0, 0, 0), res);
return res;
}