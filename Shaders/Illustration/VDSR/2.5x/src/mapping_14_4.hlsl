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
res += mul(Get(s0,-dx,-dy), float4x4(0.189970180392265,0.167187124490738,-0.054714504629374,0.057414434850216,0.170738384127617,-0.031097073107958,0.024690091609955,0.121540062129498,0.053209431469440,0.144490346312523,0.105202309787273,-0.010086129419506,0.114949390292168,0.067402005195618,0.015372758731246,0.014181535691023));
res += mul(Get(s0,-dx,0), float4x4(0.203393787145615,0.124505952000618,-0.001414334750734,0.093814566731453,0.074106641113758,-0.015345214866102,0.060813184827566,0.153010427951813,-0.058125223964453,0.285236746072769,0.045422676950693,0.050337154418230,0.154511928558350,-0.123452119529247,0.092096209526062,-0.138762757182121));
res += mul(Get(s0,-dx,dy), float4x4(0.078868530690670,0.164168640971184,0.012763293460011,0.074228204786777,0.112428329885006,0.044879280030727,-0.003908908925951,0.224529460072517,-0.028575146570802,0.243827328085899,0.067805111408234,-0.030575141310692,-0.062864825129509,0.003675723681226,-0.070498034358025,-0.056397210806608));
res += mul(Get(s0,0,-dy), float4x4(-0.002333125565201,0.187278583645821,0.001159883104265,0.009010826237500,0.076848164200783,0.142266184091568,-0.108479522168636,0.037731949239969,0.022809874266386,0.287291795015335,-0.014314401894808,0.084733068943024,0.082944765686989,-0.006839335430413,0.118166498839855,-0.037701699882746));
res += mul(Get(s0,0,0), float4x4(0.071623519062996,0.048973336815834,-0.014115490950644,0.110004700720310,-0.212849035859108,0.164317101240158,0.246040314435959,-0.140384078025818,0.067653581500053,0.043823003768921,-0.196441814303398,0.413044005632401,-0.169622153043747,-0.012075043283403,0.134142041206360,-0.146285593509674));
res += mul(Get(s0,0,dy), float4x4(-0.012689557857811,0.092868156731129,0.014405217021704,0.066157467663288,-0.104869358241558,0.329918771982193,0.071057334542274,-0.042173467576504,0.248703360557556,-0.040244702249765,0.063261359930038,0.292435646057129,-0.060155235230923,0.021945798769593,-0.018382720649242,0.016060169786215));
res += mul(Get(s0,dx,-dy), float4x4(0.029120892286301,0.153326854109764,0.020737575367093,-0.022687384858727,0.014540882781148,-0.059779096394777,0.047893501818180,0.076405189931393,0.111425220966339,0.179089531302452,0.047420196235180,-0.015449839644134,-0.010252255946398,0.262007236480713,-0.010000687092543,0.045172855257988));
res += mul(Get(s0,dx,0), float4x4(0.134947210550308,0.013127763755620,-0.095834791660309,0.199410364031792,-0.068192400038242,0.150820389389992,-0.061483830213547,0.127893015742302,0.032633874565363,-0.145322263240814,0.114793702960014,-0.059913594275713,-0.131075531244278,0.271392256021500,-0.098297290503979,0.125447720289230));
res += mul(Get(s0,dx,dy), float4x4(0.032334394752979,-0.007106485776603,-0.008470744825900,0.084082663059235,-0.046452105045319,0.255166918039322,0.023092139512300,0.175246000289917,0.129797637462616,-0.174396350979805,0.117326512932777,0.040599625557661,0.060061976313591,-0.047247495502234,-0.074001468718052,0.150779142975807));
res += mul(Get(s1,-dx,-dy), float4x4(-0.036439452320337,0.107961200177670,-0.114754311740398,0.090014092624187,-0.021336195990443,-0.034905452281237,-0.039386440068483,-0.045595362782478,0.107308469712734,-0.080247148871422,-0.006945675238967,0.092254608869553,-0.195082053542137,0.326993554830551,0.109086811542511,-0.125761717557907));
res += mul(Get(s1,-dx,0), float4x4(-0.022135999053717,0.021989207714796,-0.136757150292397,0.094030238687992,0.168154135346413,0.099020518362522,-0.022263482213020,-0.042726147919893,0.068934418261051,0.030883494764566,0.063480362296104,-0.071952968835831,-0.017159774899483,-0.097019769251347,-0.010594747029245,0.266667187213898));
res += mul(Get(s1,-dx,dy), float4x4(-0.059731680899858,0.046003080904484,-0.142573460936546,0.298724263906479,-0.047560483217239,0.405641168355942,0.086808703839779,-0.144752949476242,0.006203058641404,-0.066878840327263,-0.078256286680698,0.122652836143970,0.084043040871620,0.117711067199707,0.154464766383171,-0.197875306010246));
res += mul(Get(s1,0,-dy), float4x4(0.106049709022045,-0.227913662791252,-0.014533198438585,0.125573650002480,-0.058462709188461,-0.229251012206078,0.080197595059872,0.067464314401150,0.002702218247578,0.059957798570395,-0.100086748600006,0.078724950551987,-0.098788529634476,0.006274918094277,0.072533778846264,0.099841147661209));
res += mul(Get(s1,0,0), float4x4(0.024825481697917,-0.029409732669592,0.210746109485626,-0.219427809119225,0.143267259001732,-0.166192993521690,-0.089412420988083,0.214171707630157,-0.050234731286764,0.423288822174072,0.168099507689476,-0.206365585327148,0.382019102573395,-0.314392566680908,-0.256278187036514,0.527981221675873));
res += mul(Get(s1,0,dy), float4x4(-0.000216697357246,0.321091860532761,0.037665709853172,-0.165322452783585,0.104580998420715,0.136990383267403,0.050208698958158,0.039105407893658,-0.147128701210022,-0.077219784259796,0.113174811005592,-0.055121779441833,0.188977122306824,-0.064053870737553,0.143096208572388,-0.033405750989914));
res += mul(Get(s1,dx,-dy), float4x4(0.141025409102440,0.002515466883779,-0.101685084402561,0.330452203750610,-0.160716801881790,-0.121275983750820,0.049036052078009,-0.076250329613686,0.181906968355179,-0.084363222122192,-0.180297762155533,0.257277637720108,-0.094344250857830,0.187857478857040,0.032588589936495,-0.082356326282024));
res += mul(Get(s1,dx,0), float4x4(0.052995022386312,-0.007886892184615,0.271258443593979,-0.071519337594509,0.085470266640186,-0.083124831318855,-0.001242015743628,0.026297181844711,0.027372730895877,-0.067249223589897,0.121026314795017,0.064327560365200,0.106551267206669,0.098949790000916,0.041340872645378,-0.188065946102142));
res += mul(Get(s1,dx,dy), float4x4(-0.131923273205757,0.445184737443924,0.150196045637131,0.055751729756594,-0.056034114211798,0.100426137447357,0.015915099531412,-0.043609384447336,-0.039652764797211,-0.179070651531219,0.056242670863867,0.224214345216751,-0.113605201244354,0.183947026729584,0.093533344566822,-0.263980746269226));
res += mul(Get(s2,-dx,-dy), float4x4(0.036697678267956,0.322733789682388,-0.007531215902418,0.005805093329400,-0.004776404239237,0.008238441310823,0.020627783611417,-0.042324125766754,-0.037344172596931,0.345598459243774,0.041190698742867,0.014623661525548,0.202512949705124,0.090806216001511,0.017312979325652,-0.012064933776855));
res += mul(Get(s2,-dx,0), float4x4(-0.013488966971636,0.493112623691559,-0.115813598036766,0.042343012988567,0.117462225258350,0.298484921455383,-0.106932334601879,0.078030981123447,0.041798278689384,-0.004928328096867,0.092825755476952,0.097900167107582,0.112564951181412,0.029521163552999,0.165631040930748,0.046520389616489));
res += mul(Get(s2,-dx,dy), float4x4(0.067379713058472,0.096008002758026,0.013429778628051,0.140258997678757,0.054642427712679,0.147724449634552,-0.111501663923264,0.209484055638313,0.066790983080864,-0.036043692380190,0.271966874599457,-0.292427390813828,0.100824311375618,-0.077195242047310,0.072333678603172,0.197132781147957));
res += mul(Get(s2,0,-dy), float4x4(0.022345062345266,-0.003412758931518,0.283677935600281,-0.413122236728668,0.234778061509132,-0.088683232665062,-0.060896936804056,0.291448354721069,-0.080852508544922,0.434616625308990,0.015378923155367,0.089200191199780,0.169490784406662,0.282813996076584,-0.036549698561430,-0.064917244017124));
res += mul(Get(s2,0,0), float4x4(-0.199627175927162,0.252310395240784,0.332113116979599,-0.253713130950928,0.031863875687122,0.274035632610321,0.243180289864540,-0.025831459090114,0.109624013304710,-0.033470716327429,-0.146846979856491,0.303711593151093,-0.189822077751160,0.211570203304291,0.288762688636780,-0.296218395233154));
res += mul(Get(s2,0,dy), float4x4(-0.013731513172388,-0.056280959397554,0.069808036088943,0.076765231788158,-0.016487132757902,0.347633093595505,0.170247077941895,-0.077490508556366,0.290941953659058,-0.137370377779007,0.144689202308655,0.258480578660965,0.033212546259165,-0.131142482161522,-0.201175063848495,0.285124331712723));
res += mul(Get(s2,dx,-dy), float4x4(0.170043587684631,-0.024121606722474,0.149591267108917,0.180676892399788,-0.026095952838659,0.004005292896181,-0.086218960583210,-0.004628235474229,0.066121987998486,0.131522879004478,0.010289581492543,0.005210515577346,0.394494473934174,0.186100214719772,-0.163490921258926,0.191105887293816));
res += mul(Get(s2,dx,0), float4x4(-0.084570512175560,-0.165745183825493,0.049462262541056,0.288404732942581,0.148291960358620,0.041683156043291,-0.092006564140320,0.315824806690216,0.119756296277046,0.091913893818855,0.022823600098491,-0.007183671928942,-0.130263447761536,0.159790337085724,0.236123770475388,-0.173571944236755));
res += mul(Get(s2,dx,dy), float4x4(0.075263276696205,-0.005869775079191,0.030445624142885,0.090882025659084,0.057183124125004,0.088070981204510,0.020321849733591,0.146192193031311,0.082373447716236,0.081691302359104,0.138965889811516,-0.066753491759300,-0.009452507831156,-0.068288773298264,-0.118568874895573,0.223811820149422));
res += mul(Get(s3,-dx,-dy), float4x4(-0.004921285435557,-0.116418361663818,0.109118200838566,0.059399303048849,-0.127795487642288,-0.071975223720074,0.120389126241207,-0.092736661434174,-0.147889792919159,-0.119390428066254,-0.103648863732815,0.120979644358158,-0.009550520218909,0.016477048397064,-0.114138588309288,0.019846742972732));
res += mul(Get(s3,-dx,0), float4x4(0.016517028212547,-0.130955114960670,0.193899855017662,0.064635701477528,0.145717084407806,-0.138998016715050,-0.037731844931841,0.228198587894440,0.181733474135399,-0.091038845479488,-0.092943415045738,0.097135007381439,-0.013840562663972,0.070201858878136,-0.093103840947151,0.216760963201523));
res += mul(Get(s3,-dx,dy), float4x4(-0.228237748146057,0.037520255893469,0.211176231503487,-0.012402690947056,0.103798881173134,-0.013569032773376,0.139608785510063,-0.082927413284779,0.099860295653343,0.027621071785688,-0.061915066093206,0.083487085998058,-0.052180819213390,0.042103603482246,-0.037570372223854,0.063769511878490));
res += mul(Get(s3,0,-dy), float4x4(0.024681378155947,-0.006858654320240,-0.136569648981094,0.245912641286850,-0.181507408618927,0.047523878514767,0.161447376012802,-0.110856741666794,0.193959504365921,-0.061565820127726,-0.147637531161308,0.278632104396820,-0.004144713282585,-0.179717987775803,0.021806143224239,-0.036832563579082));
res += mul(Get(s3,0,0), float4x4(0.189255684614182,-0.110212214291096,-0.263019591569901,0.403492182493210,0.156160324811935,-0.100556291639805,-0.194431602954865,0.233926460146904,0.023302759975195,0.311579912900925,0.151158079504967,-0.248746961355209,0.121285215020180,-0.126733899116516,-0.180790007114410,0.009259815327823));
res += mul(Get(s3,0,dy), float4x4(0.151910886168480,-0.130485057830811,-0.090548872947693,0.530080139636993,0.146442681550980,0.040903259068727,-0.035349048674107,0.093099087476730,-0.156124576926231,0.233114555478096,0.093163117766380,-0.118884980678558,0.044258709996939,0.078867949545383,0.106055043637753,-0.049632344394922));
res += mul(Get(s3,dx,-dy), float4x4(-0.136831641197205,0.118225194513798,0.093910954892635,-0.022911000996828,-0.045475728809834,0.103330187499523,0.019361132755876,-0.046934142708778,0.221980631351471,0.086909964680672,-0.094384901225567,0.004836530890316,-0.105842106044292,-0.139223754405975,-0.026027956977487,0.074273854494095));
res += mul(Get(s3,dx,0), float4x4(-0.150981396436691,0.304993629455566,0.000501738570165,-0.201210424304008,0.022316947579384,0.326866298913956,-0.000157495698659,-0.001184999360703,0.053783178329468,0.071744590997696,0.078510627150536,-0.063249453902245,0.011046903207898,-0.098855152726173,-0.031051205471158,-0.121279299259186));
res += mul(Get(s3,dx,dy), float4x4(-0.100808821618557,0.129062741994858,0.063427507877350,-0.094496272504330,0.129459530115128,0.364683359861374,0.093545846641064,-0.021047847345471,-0.086607404053211,-0.093406051397324,-0.059028249233961,0.290873378515244,0.008350417017937,-0.006121796555817,0.067719712853432,-0.173300221562386));
return max(float4(0,0,0,0), res);
}
