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
res += mul(Get(s0,-dx,-dy), float4x4(-0.076985761523247,-0.017838152125478,-0.002893146127462,-0.112409405410290,0.073058791458607,-0.152441412210464,-0.043625570833683,0.071218699216843,-0.114978358149529,-0.011905193328857,-0.099119231104851,-0.013285999186337,0.019822835922241,0.005065844859928,-0.112942755222321,-0.162261813879013));
res += mul(Get(s0,-dx,0), float4x4(-0.104006469249725,-0.043364822864532,-0.028298027813435,0.094049923121929,0.014092929661274,0.128734081983566,-0.037507742643356,-0.181884571909904,0.017564695328474,0.045763112604618,-0.007202772423625,0.014630963094532,-0.085287451744080,0.032174915075302,0.175871565937996,-0.028733225539327));
res += mul(Get(s0,-dx,dy), float4x4(0.085544019937515,-0.036130942404270,0.009295772761106,-0.090838491916656,0.035115346312523,0.045904982835054,-0.072932384908199,0.060418251901865,0.035984281450510,-0.164861530065536,0.037909921258688,-0.078483015298843,-0.067131206393242,0.157593384385109,0.002385822357610,-0.027446573600173));
res += mul(Get(s0,0,-dy), float4x4(0.038784865289927,-0.024820532649755,0.131203010678291,0.024094101041555,0.052421260625124,-0.052555516362190,-0.042126018553972,-0.002487488090992,0.080712221562862,-0.024079078808427,-0.047361709177494,0.019256224855781,-0.036404322832823,0.025947071611881,0.038458291441202,-0.157984852790833));
res += mul(Get(s0,0,0), float4x4(-0.060947563499212,-0.062891878187656,0.186916023492813,0.069940619170666,-0.182869121432304,0.024171050637960,0.029398463666439,0.011871660128236,0.167910918593407,0.020507905632257,0.043968204408884,0.020068887621164,-0.038907453417778,-0.000453499786090,0.016627814620733,-0.256082326173782));
res += mul(Get(s0,0,dy), float4x4(0.071989037096500,0.047817729413509,-0.021573249250650,-0.003107665339485,-0.021793430671096,0.046781633049250,-0.035652592778206,-0.045648053288460,-0.025348082184792,-0.031645603477955,-0.081643313169479,-0.002547019626945,-0.118625834584236,0.019623573869467,-0.014551091007888,0.025335237383842));
res += mul(Get(s0,dx,-dy), float4x4(0.072164639830589,-0.041281104087830,0.013432300649583,0.059515066444874,0.075902484357357,-0.011637993156910,0.000546077731997,-0.035271964967251,-0.003591022454202,0.071854889392853,-0.016647638753057,-0.127637058496475,-0.022085214033723,-0.085858203470707,-0.040968280285597,0.153293058276176));
res += mul(Get(s0,dx,0), float4x4(0.106328003108501,0.113761112093925,0.064157642424107,-0.012233435176313,0.014559821225703,-0.013074413873255,-0.109514944255352,-0.073217771947384,0.076695241034031,0.041917994618416,0.032300110906363,-0.004469731356949,0.029778789728880,-0.176797345280647,-0.053809452801943,0.121597923338413));
res += mul(Get(s0,dx,dy), float4x4(0.052293319255114,0.034241408109665,0.080638065934181,-0.110908001661301,-0.092186272144318,-0.017403924837708,0.034439686685801,0.100793197751045,0.014267202466726,0.048322614282370,0.078783862292767,-0.082393355667591,0.032586235553026,0.047071669250727,0.020450755953789,-0.002983437851071));
res += mul(Get(s1,-dx,-dy), float4x4(-0.031169034540653,0.049489989876747,-0.005183596629649,0.014027171768248,-0.121032960712910,0.100497886538506,0.002636830322444,0.077025279402733,0.052347451448441,0.104970201849937,-0.024988172575831,-0.137329667806625,-0.057279471307993,0.065416075289249,0.110030293464661,-0.048276811838150));
res += mul(Get(s1,-dx,0), float4x4(-0.078857436776161,-0.041636180132627,-0.141287386417389,0.017489425837994,-0.120004564523697,0.103051841259003,0.003947295714170,-0.081260971724987,0.017883073538542,0.183556780219078,-0.181367069482803,-0.106649570167065,0.116080716252327,0.084129877388477,-0.015304745174944,-0.040455296635628));
res += mul(Get(s1,-dx,dy), float4x4(0.073898516595364,-0.113240011036396,-0.023910157382488,0.104923970997334,-0.010960060171783,0.134204357862473,0.088030479848385,-0.021898282691836,-0.028707604855299,0.071393385529518,-0.024031827226281,-0.072800271213055,0.123028397560120,-0.018582938238978,0.055383455008268,0.009702782146633));
res += mul(Get(s1,0,-dy), float4x4(0.014309664256871,0.169811502099037,-0.102972641587257,-0.025955863296986,-0.071326464414597,-0.015117872506380,0.039317097514868,0.031248876824975,0.091663010418415,-0.047406390309334,-0.061161559075117,-0.068267472088337,0.199148744344711,-0.073754295706749,0.103739403188229,-0.075707085430622));
res += mul(Get(s1,0,0), float4x4(0.077848695218563,-0.084326878190041,0.034168649464846,0.009274771437049,-0.041933551430702,-0.112292043864727,0.001152960350737,0.061848718672991,0.097433388233185,-0.064081579446793,-0.032915472984314,-0.043007120490074,0.003598533105105,0.018397221341729,-0.104855231940746,0.007121283560991));
res += mul(Get(s1,0,dy), float4x4(-0.082118868827820,0.071703374385834,-0.161375969648361,-0.030755018815398,0.094816789031029,0.019085917621851,-0.049917262047529,0.073531039059162,-0.072303496301174,0.009096597321332,0.020490238443017,-0.120833598077297,0.183761596679688,0.011500725522637,0.033400114625692,-0.009170304983854));
res += mul(Get(s1,dx,-dy), float4x4(-0.097264885902405,-0.010338361375034,-0.020895507186651,0.053951736539602,-0.071869038045406,0.048250745981932,-0.112938381731510,-0.037371627986431,0.027347916737199,-0.148638620972633,0.191898658871651,0.125940099358559,0.042735159397125,0.069189772009850,-0.042025111615658,0.012305063195527));
res += mul(Get(s1,dx,0), float4x4(-0.030893299728632,-0.015848191455007,-0.027237692847848,-0.027815243229270,0.218117564916611,0.026558306068182,0.029983252286911,0.061853040009737,-0.018205484375358,-0.134082809090614,0.045356713235378,0.189530849456787,-0.046009518206120,0.008337959647179,-0.092896185815334,0.083569608628750));
res += mul(Get(s1,dx,dy), float4x4(-0.094303645193577,-0.153377667069435,0.081036686897278,-0.020047821104527,0.011520178988576,-0.002988185267895,-0.112301953136921,0.088979534804821,0.049202706664801,-0.079399332404137,-0.172121107578278,0.024250194430351,-0.087749280035496,0.097572714090347,0.013704806566238,0.058777134865522));
res += mul(Get(s2,-dx,-dy), float4x4(-0.144048035144806,-0.113572254776955,-0.074082590639591,0.088287524878979,0.079748257994652,-0.073680453002453,-0.006671179085970,-0.137259215116501,-0.039954233914614,0.078150123357773,-0.102537818253040,-0.120498009026051,-0.065166868269444,-0.020908070728183,0.078568845987320,0.025554019957781));
res += mul(Get(s2,-dx,0), float4x4(-0.083581604063511,0.005480701569468,-0.022641144692898,-0.007310367655009,-0.025564979761839,-0.045464016497135,0.003436467610300,0.008059193380177,-0.123635143041611,-0.071057602763176,0.064065515995026,-0.126805514097214,0.005159322172403,0.010438044555485,0.085473895072937,0.023882670328021));
res += mul(Get(s2,-dx,dy), float4x4(0.018708176910877,-0.090060740709305,-0.167477637529373,-0.026629908010364,-0.014024875126779,0.041361704468727,0.022153409197927,-0.041331313550472,-0.004161895252764,0.049120929092169,-0.017757441848516,-0.075928315520287,0.192773923277855,-0.131084412336349,0.107884451746941,-0.058025218546391));
res += mul(Get(s2,0,-dy), float4x4(0.048215437680483,0.049921125173569,-0.082453630864620,-0.014483466744423,0.053059894591570,-0.058038495481014,-0.104459784924984,-0.109247803688049,-0.033588316291571,-0.021569130942225,0.015379304066300,0.122569292783737,-0.061872158199549,0.088742032647133,0.058828555047512,0.098611138761044));
res += mul(Get(s2,0,0), float4x4(0.018389074131846,-0.113507322967052,-0.043773412704468,0.053689144551754,-0.053726617246866,-0.043561782687902,-0.057493530213833,0.042653448879719,-0.082203164696693,0.059698157012463,0.030452208593488,-0.065284907817841,-0.022757893428206,0.046384215354919,-0.119002930819988,-0.028969990089536));
res += mul(Get(s2,0,dy), float4x4(0.035302847623825,-0.069672815501690,-0.031049888581038,0.058756068348885,-0.023173434659839,0.089468777179718,0.003920908551663,-0.029252085834742,0.097678214311600,-0.070820264518261,0.059621505439281,0.002261636313051,0.036969751119614,0.004631130956113,-0.096125870943069,0.048196822404861));
res += mul(Get(s2,dx,-dy), float4x4(0.027174986898899,-0.045613821595907,0.019179137423635,-0.016443436965346,-0.094831481575966,-0.113730594515800,-0.011175625026226,0.090445473790169,-0.073454193770885,0.121737681329250,-0.017506597563624,0.081074245274067,-0.065997488796711,0.131862148642540,-0.012038350105286,-0.057991001754999));
res += mul(Get(s2,dx,0), float4x4(0.025170229375362,0.076847396790981,-0.011983185075223,-0.022298280149698,-0.079622313380241,-0.137540847063065,0.060161501169205,0.057663917541504,0.032997075468302,0.008929644711316,0.001345112570561,0.048782393336296,-0.144610151648521,0.117762520909309,0.136555433273315,-0.079698070883751));
res += mul(Get(s2,dx,dy), float4x4(0.063577204942703,0.031383521854877,-0.001742027583532,-0.042678728699684,-0.103781938552856,-0.122412502765656,-0.135689064860344,0.067811928689480,-0.014707791619003,0.061171088367701,0.001909612561576,0.000827749085147,-0.012053587473929,0.037736583501101,-0.084337897598743,-0.041429229080677));
res += mul(Get(s3,-dx,-dy), float4x4(0.020449614152312,0.029684018343687,-0.002722084755078,-0.037835288792849,-0.117652155458927,-0.003096975851804,-0.018887061625719,-0.104399047791958,-0.123463921248913,-0.123461455106735,-0.047222461551428,0.055025123059750,0.043029457330704,-0.034504178911448,0.073162831366062,-0.243194833397865));
res += mul(Get(s3,-dx,0), float4x4(0.047591008245945,0.016738558188081,-0.006693564355373,0.034590195864439,-0.022532498463988,0.128493800759315,0.036353044211864,-0.032157775014639,-0.132528334856033,-0.070623412728310,-0.025648647919297,0.058619074523449,0.080391943454742,0.204160943627357,-0.022788027301431,-0.016117008402944));
res += mul(Get(s3,-dx,dy), float4x4(-0.022433442994952,0.029614774510264,-0.046633556485176,0.068104811012745,-0.015120833180845,0.096863500773907,-0.090986929833889,0.042810615152121,0.016449788585305,-0.001394167542458,-0.086447246372700,0.051301337778568,-0.108769528567791,0.121757544577122,-0.027122026309371,0.039524104446173));
res += mul(Get(s3,0,-dy), float4x4(-0.029519261792302,0.006658578291535,0.022361570969224,-0.027333969250321,-0.021337851881981,0.075533196330070,0.145442247390747,0.026739157736301,-0.050552930682898,-0.013740845955908,-0.065482288599014,0.070390664041042,-0.042409058660269,0.021446418017149,-0.079368934035301,-0.094306044280529));
res += mul(Get(s3,0,0), float4x4(-0.123591922223568,-0.063885152339935,0.049880273640156,0.001510001136921,0.031118966639042,0.037050925195217,-0.019812719896436,0.058716695755720,-0.005783896427602,-0.034212999045849,-0.020187690854073,0.060578450560570,-0.067994602024555,0.066956013441086,0.052264288067818,-0.069325096905231));
res += mul(Get(s3,0,dy), float4x4(-0.000991323380731,-0.102829307317734,-0.035991560667753,-0.187933519482613,-0.134573385119438,-0.098816879093647,0.060694985091686,0.098920077085495,-0.087545961141586,0.165861994028091,0.005168301984668,0.134492933750153,0.022726619616151,0.063254073262215,0.013423324562609,0.000204117255635));
res += mul(Get(s3,dx,-dy), float4x4(-0.055846035480499,-0.117972306907177,0.053593423217535,0.029932942241430,-0.008999318815768,0.088177591562271,-0.138477638363838,-0.026387501507998,0.031101938337088,-0.087150588631630,-0.048044897615910,-0.012131304480135,0.062590606510639,-0.278016805648804,-0.099176310002804,0.111984580755234));
res += mul(Get(s3,dx,0), float4x4(-0.105134151875973,-0.031270205974579,0.030752157792449,0.051786210387945,0.051005609333515,-0.071711242198944,-0.037889633327723,0.062173716723919,0.000517463253345,-0.074126720428467,0.010498622432351,-0.042311105877161,-0.075269594788551,-0.009009509347379,0.006258524022996,0.284324079751968));
res += mul(Get(s3,dx,dy), float4x4(-0.031231034547091,-0.057861957699060,0.143347531557083,0.033832401037216,0.113681949675083,0.000884187000338,0.005454578902572,0.119047991931438,-0.026690067723393,-0.067658267915249,-0.113393373787403,0.026357285678387,-0.086279831826687,-0.136447668075562,-0.013923430815339,0.097999118268490));
res = max(float4(0,0,0,0), res);
return res;
}
