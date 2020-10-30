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
res += mul(Get(s0,-dx,-dy), float4x4(-0.022987250238657,0.134185478091240,0.125838890671730,-0.202672734856606,-0.095608815550804,0.083960309624672,0.011830463074148,-0.112638317048550,0.018700757995248,0.090417385101318,-0.138078421354294,-0.166978761553764,0.017420127987862,0.056760568171740,-0.045509006828070,0.020301185548306));
res += mul(Get(s0,-dx,0), float4x4(0.076248683035374,0.028735024854541,0.110170915722847,-0.025717003270984,-0.120204232633114,0.021728273481131,0.095315992832184,-0.122710660099983,-0.009482700377703,-0.007789680268615,-0.149763211607933,0.020735533908010,0.055239170789719,-0.042960073798895,0.004749451763928,-0.038678005337715));
res += mul(Get(s0,-dx,dy), float4x4(-0.040877427905798,-0.083747662603855,-0.036255788058043,0.095314159989357,0.043061599135399,-0.068601712584496,0.101981237530708,0.009639900177717,-0.098015487194061,0.052803792059422,0.023323120549321,0.039199270308018,0.079959191381931,-0.017737036570907,-0.044316116720438,-0.019471559673548));
res += mul(Get(s0,0,-dy), float4x4(0.054163567721844,0.156719848513603,0.001242658006959,0.064006514847279,0.015638250857592,0.018968857824802,0.002696902258322,0.003587824292481,0.000730905157980,0.048070169985294,-0.176906079053879,-0.115943774580956,0.198881357908249,0.029308957979083,-0.078813202679157,-0.052501209080219));
res += mul(Get(s0,0,0), float4x4(-0.023028932511806,0.105599135160446,-0.025640474632382,0.008635855279863,0.078444816172123,-0.006978120189160,-0.090320564806461,0.149546071887016,-0.043211083859205,0.063749432563782,-0.139771446585655,0.061859622597694,0.296109378337860,0.011541668325663,0.000807098404039,0.134981080889702));
res += mul(Get(s0,0,dy), float4x4(-0.038757082074881,-0.029531816020608,-0.079859398305416,0.101219184696674,0.060336556285620,-0.123549699783325,0.043901663273573,-0.004714039620012,-0.092909030616283,0.143697813153267,0.004354877397418,0.008795741014183,-0.098581627011299,-0.025655977427959,-0.065388679504395,0.068289995193481));
res += mul(Get(s0,dx,-dy), float4x4(-0.009500958956778,0.158371821045876,0.015712162479758,-0.069831259548664,0.027538530528545,-0.112290076911449,0.022975768893957,0.012548002414405,-0.024599464610219,0.165595486760139,-0.074015505611897,-0.151152729988098,0.101237535476685,0.071606837213039,-0.025220258161426,-0.070973463356495));
res += mul(Get(s0,dx,0), float4x4(-0.010417442768812,0.127219691872597,0.017529614269733,-0.000615012191702,0.050877202302217,0.021341670304537,0.029566677287221,0.002467958489433,0.075633794069290,0.120129212737083,0.012949245981872,-0.038201142102480,0.046292860060930,-0.101756945252419,-0.058439984917641,-0.098172239959240));
res += mul(Get(s0,dx,dy), float4x4(-0.006729103159159,0.057764705270529,-0.047256868332624,-0.016692643985152,0.000615241646301,0.025972232222557,0.009713004343212,-0.066138774156570,-0.001174283097498,-0.172825306653976,0.062273044139147,0.016334308311343,0.031561851501465,-0.004282515030354,-0.079315476119518,0.043054040521383));
res += mul(Get(s1,-dx,-dy), float4x4(0.022152042016387,-0.144220083951950,0.016758278012276,0.043197471648455,0.036929082125425,-0.093798354268074,0.135331258177757,-0.138581603765488,0.070751033723354,-0.029516577720642,-0.127533584833145,-0.078740417957306,-0.127809062600136,0.088355109095573,0.218764662742615,-0.137632101774216));
res += mul(Get(s1,-dx,0), float4x4(-0.006785218603909,0.058509565889835,-0.090486697852612,0.110416658222675,0.083812050521374,0.102817155420780,0.012799943797290,0.018612796440721,0.045546054840088,0.087820313870907,0.016639024019241,0.019044933840632,-0.026297880336642,-0.023311492055655,-0.115010343492031,-0.129543408751488));
res += mul(Get(s1,-dx,dy), float4x4(0.001512299757451,-0.039759930223227,0.008184257894754,0.158837497234344,-0.035638723522425,0.029455885291100,0.012914212420583,-0.001996521372348,-0.005619068630040,0.087919197976589,0.016141278669238,0.002521842019632,-0.083398334681988,0.143755197525024,0.007730463519692,0.047244060784578));
res += mul(Get(s1,0,-dy), float4x4(0.251211941242218,-0.015056522563100,-0.011209324002266,-0.032692622393370,-0.041514862328768,0.082508914172649,0.165664747357368,-0.016391454264522,0.062456276267767,-0.000835338956676,-0.108178302645683,-0.118405483663082,-0.046053528785706,-0.119068041443825,0.090217202901840,0.113511070609093));
res += mul(Get(s1,0,0), float4x4(-0.010379001498222,-0.068546921014786,0.012215514667332,-0.050125878304243,0.018496785312891,0.055927298963070,0.088371276855469,0.079968273639679,-0.077306285500526,0.069237798452377,0.002866791328415,-0.095316186547279,0.000281162618194,-0.053082574158907,0.102643810212612,0.040150955319405));
res += mul(Get(s1,0,dy), float4x4(-0.026031140238047,-0.102154664695263,0.004677057731897,0.128289043903351,0.102275006473064,-0.106306634843349,0.052267044782639,0.050786815583706,-0.116578832268715,-0.005805855151266,-0.052132859826088,0.107080787420273,-0.017519010230899,0.055964671075344,0.053695667535067,0.094628967344761));
res += mul(Get(s1,dx,-dy), float4x4(0.082635857164860,0.059168159961700,-0.019806372001767,-0.118811354041100,0.067992255091667,0.138775482773781,-0.080180853605270,-0.140795528888702,0.035558331757784,0.031568668782711,0.001597442198545,-0.066432610154152,-0.011609422974288,-0.055402662605047,0.025292340666056,-0.003254478098825));
res += mul(Get(s1,dx,0), float4x4(-0.034296989440918,0.057121742516756,0.035873319953680,-0.091772131621838,0.056364215910435,0.080352984368801,-0.025488657876849,0.014402102679014,-0.096951395273209,-0.019113397225738,0.092626675963402,-0.031001809984446,0.072162143886089,-0.054383918642998,-0.045922171324492,-0.046735957264900));
res += mul(Get(s1,dx,dy), float4x4(0.026294162496924,-0.084585122764111,0.111430287361145,0.072237968444824,0.026044668629766,-0.251041501760483,-0.025930082425475,0.021064294502139,-0.053580429404974,0.017938908189535,-0.003191513475031,-0.038488287478685,0.073818676173687,0.022399730980396,0.058718696236610,-0.048021491616964));
res += mul(Get(s2,-dx,-dy), float4x4(-0.052140284329653,-0.037626534700394,-0.034359365701675,0.004303988069296,-0.040685474872589,0.078531473875046,-0.047801382839680,-0.113799586892128,-0.115965500473976,-0.054729990661144,-0.134902000427246,-0.030863253399730,-0.061440851539373,0.047425720840693,0.103243961930275,0.059781283140182));
res += mul(Get(s2,-dx,0), float4x4(-0.003654859960079,0.046566266566515,-0.101421132683754,0.048185992985964,0.009276940487325,0.024174960330129,0.205155387520790,0.122405201196671,-0.024415712803602,0.008228079415858,0.047909200191498,-0.156673982739449,0.083828605711460,-0.078382417559624,0.015436585992575,-0.023179419338703));
res += mul(Get(s2,-dx,dy), float4x4(-0.022241231054068,0.079782523214817,-0.063196897506714,0.045659784227610,0.049460552632809,0.059017132967710,-0.045531984418631,-0.002513868268579,-0.013566370122135,0.043280370533466,0.045200116932392,0.014265707693994,-0.017168741673231,-0.049857243895531,0.052710622549057,-0.093490064144135));
res += mul(Get(s2,0,-dy), float4x4(-0.066453427076340,0.124376021325588,0.093255817890167,0.071769900619984,0.042381882667542,-0.016773758456111,-0.057791545987129,-0.091091498732567,0.001599577837624,-0.082504577934742,-0.165036454796791,-0.021689644083381,0.040025871247053,0.049594782292843,-0.057474400848150,0.131071299314499));
res += mul(Get(s2,0,0), float4x4(-0.117087386548519,0.073010861873627,0.091927871108055,-0.002843450056389,0.034354422241449,-0.027337938547134,0.074259661138058,0.080645434558392,0.222402736544609,-0.081352889537811,-0.094637237489223,0.041118100285530,-0.119624704122543,-0.039205972105265,-0.145674228668213,0.113189928233624));
res += mul(Get(s2,0,dy), float4x4(0.004211654420942,-0.049245752394199,0.037533327937126,0.084533587098122,-0.101686894893646,0.010939506813884,0.060596179217100,0.067840680480003,-0.034064773470163,0.033688396215439,-0.013307859189808,0.083966866135597,0.030243111774325,-0.110039167106152,0.059438977390528,0.091760210692883));
res += mul(Get(s2,dx,-dy), float4x4(-0.005071477964520,0.162814155220985,-0.119824320077896,-0.011759896762669,-0.006357284728438,-0.024016482755542,0.024144865572453,-0.035622399300337,-0.094477929174900,-0.135163560509682,-0.162843570113182,-0.126387387514114,0.002934855641797,0.025085611268878,-0.028045859187841,-0.061026107519865));
res += mul(Get(s2,dx,0), float4x4(0.004112686961889,0.020841293036938,-0.070066146552563,-0.000488375197165,0.096030168235302,0.020022347569466,0.016219772398472,-0.092640243470669,0.073291957378387,-0.144653722643852,-0.060378938913345,0.026815038174391,-0.096532315015793,-0.111006662249565,-0.092488579452038,-0.145827561616898));
res += mul(Get(s2,dx,dy), float4x4(-0.052484113723040,-0.212726429104805,-0.021174710243940,0.070709876716137,0.001747483853251,-0.109231382608414,0.037466842681170,0.109825700521469,-0.118397690355778,0.076146826148033,-0.044990893453360,0.015708439052105,-0.043591577559710,-0.199034437537193,0.091468125581741,0.016359115019441));
res += mul(Get(s3,-dx,-dy), float4x4(-0.023591274395585,0.105052337050438,-0.013570262119174,-0.058720648288727,-0.056236810982227,-0.051138065755367,-0.001271434826776,-0.066393055021763,-0.071032300591469,-0.024176454171538,-0.026697564870119,-0.068559437990189,0.033328838646412,0.083024546504021,-0.027946950867772,-0.095157183706760));
res += mul(Get(s3,-dx,0), float4x4(0.005894014146179,0.143083140254021,0.040663108229637,0.007321623619646,-0.052045181393623,0.003436957485974,0.060268878936768,0.029187010601163,-0.022295596078038,0.025544686242938,0.034035641700029,-0.046440888196230,-0.037489581853151,-0.030002517625690,0.038325060158968,-0.028720593079925));
res += mul(Get(s3,-dx,dy), float4x4(0.010441324673593,0.189075171947479,0.041235923767090,-0.032092362642288,-0.076418898999691,-0.024405742064118,0.060200732201338,-0.093257069587708,-0.073310874402523,-0.002689730841666,-0.002205668017268,0.076750673353672,0.116901881992817,-0.006929174531251,-0.043852198868990,0.029287520796061));
res += mul(Get(s3,0,-dy), float4x4(-0.008087682537735,0.085052624344826,0.036719027906656,0.016989450901747,-0.043936539441347,-0.088050469756126,0.096727199852467,-0.016651505604386,0.041110571473837,0.006801451090723,-0.095972120761871,0.026114044710994,0.097046948969364,-0.097255945205688,0.072834447026253,-0.085349783301353));
res += mul(Get(s3,0,0), float4x4(0.010932030156255,0.136646986007690,-0.071072809398174,0.270075619220734,0.015417784452438,0.074409618973732,0.315850704908371,0.172549769282341,0.010919535532594,-0.117949776351452,-0.035167299211025,-0.032174661755562,-0.133728459477425,-0.094762183725834,0.103157937526703,0.054507546126842));
res += mul(Get(s3,0,dy), float4x4(0.053767789155245,0.101808600127697,0.005112279206514,0.158414468169212,0.066389948129654,0.046158391982317,-0.017435980960727,-0.000848018971737,-0.057308975607157,0.016472769901156,0.017565686255693,0.023358192294836,0.094261832535267,-0.094942964613438,0.031406410038471,-0.053900904953480));
res += mul(Get(s3,dx,-dy), float4x4(-0.040436219424009,0.005433605983853,-0.094383746385574,0.096401281654835,-0.079636961221695,-0.036989703774452,0.080225914716721,-0.032686132937670,-0.104662150144577,0.003256128402427,-0.118707187473774,-0.041412245482206,0.117923147976398,-0.081331126391888,-0.006939078215510,-0.153823226690292));
res += mul(Get(s3,dx,0), float4x4(0.037761822342873,0.016408869996667,-0.091566182672977,0.094775244593620,-0.026064800098538,0.036471206694841,0.088783487677574,0.042779594659805,-0.075727909803391,0.027654435485601,0.038977880030870,0.029841415584087,0.006078623235226,-0.220390543341637,0.036891099065542,0.178026795387268));
res += mul(Get(s3,dx,dy), float4x4(-0.007618707604706,0.017128298059106,0.006935448851436,0.038036435842514,-0.037175547331572,-0.060156483203173,-0.063875742256641,0.046424422413111,-0.089975297451019,-0.005803616717458,-0.075828082859516,0.087210990488529,0.015818256884813,-0.189537271857262,-0.042872022837400,-0.041992988437414));
return max(float4(0,0,0,0), res);
}
