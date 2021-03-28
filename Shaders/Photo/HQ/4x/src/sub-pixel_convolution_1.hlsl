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
float4 res = float4(-0.000449585175375,0.000524667557329,0.000439451541752,-0.000419182732003);
res += mul(Get(s0,-dx,-dy), float4x4(-0.007841569371521,0.000256999279372,0.006024088710546,0.005070379003882,0.013590242713690,0.003618823830038,0.001543380785733,0.002350005786866,-0.002563935937360,-0.000289756979328,0.000214399420656,0.000480171525851,0.002116950694472,0.001638734247535,0.000952565693296,0.000365251617040));
res += mul(Get(s0,-dx,0), float4x4(0.001783900312148,0.012858806177974,0.007526852190495,-0.011530125513673,0.036363314837217,0.044930022209883,0.042428877204657,0.030076665803790,-0.000585991307162,-0.002065814798698,-0.001831595785916,-0.001640474190935,0.002706897677854,0.001221644692123,0.002014349913225,0.002589007141069));
res += mul(Get(s0,-dx,dy), float4x4(-0.000541207322385,-0.001521161990240,0.000705877668224,0.003394226310775,0.000692508998327,0.003017135430127,0.010230660438538,0.020601885393262,0.000065444459324,0.000042081170250,-0.000908750575036,-0.001277794945054,-0.000659646757413,-0.000075379124610,0.002057162811980,0.004089801106602));
res += mul(Get(s0,0,-dy), float4x4(0.012735001742840,0.027726773172617,-0.007427348755300,-0.003950231242925,0.010999708436430,-0.002438110532239,-0.004539586137980,-0.001610704464838,0.022008692845702,0.013474212959409,0.004848510492593,0.000240972192842,-0.013278333470225,-0.000363149243640,0.001715913531370,0.000057945850131));
res += mul(Get(s0,0,0), float4x4(0.019521934911609,0.031362932175398,-0.019416732713580,-0.051811102777719,0.020831378176808,0.034160196781158,0.035993929952383,0.026261845603585,0.008231438696384,0.014800976961851,0.020030019804835,0.020377613604069,-0.023565711453557,-0.042115006595850,-0.038723416626453,-0.027501804754138));
res += mul(Get(s0,0,dy), float4x4(-0.001273529604077,-0.002803319599479,-0.003430909011513,0.000178101618076,-0.002034306293353,-0.002349587390199,-0.001284392899834,0.006319658830762,0.000143901372212,-0.000819246168248,-0.001931641600095,0.002961583668366,0.000010734547686,0.007061940152198,0.008087614551187,-0.000808355747722));
res += mul(Get(s0,dx,-dy), float4x4(-0.003144023008645,-0.001633920357563,0.002616237848997,-0.000035163418943,-0.003002779558301,-0.001514442847110,-0.000128228479298,0.000189133614185,0.042095176875591,0.018485816195607,0.000416663708165,-0.005457469262183,-0.002472211839631,-0.001563962199725,-0.001893459819257,-0.002972054993734));
res += mul(Get(s0,dx,0), float4x4(-0.000735539186280,-0.004277529194951,0.001397220650688,0.003057777648792,-0.001246750820428,-0.002906613284722,-0.003684166586027,-0.002759776310995,0.010872495360672,0.035719078034163,0.054057169705629,0.059200994670391,-0.002967629348859,-0.002769772894681,-0.002459316281602,-0.002882363507524));
res += mul(Get(s0,dx,dy), float4x4(-0.002120429882780,-0.000490118283778,0.001123963389546,0.002271268982440,0.000737758120522,0.000365961546777,0.000223976079724,-0.000496198073961,0.004384773783386,0.000947005522903,-0.003072467865422,-0.002484837779775,-0.003748839022592,-0.005789451766759,-0.005475352518260,-0.003216122975573));
res += mul(Get(s1,-dx,-dy), float4x4(0.012639542110264,0.003232854418457,-0.003700138302520,-0.004401150159538,-0.015420681796968,-0.006698657292873,-0.002286623697728,-0.002792774932459,-0.002065301639959,-0.001821176847443,0.000117674673675,-0.000762069714256,-0.024570170789957,-0.011504522524774,-0.002433571731672,0.001860254909843));
res += mul(Get(s1,-dx,0), float4x4(-0.017757914960384,-0.010238892398775,0.004957491997629,0.017694506794214,0.032949645072222,0.012888466939330,-0.016324581578374,-0.025159582495689,-0.003152307122946,-0.007635223213583,0.004460533615202,0.007175688166171,-0.007212236523628,-0.017804041504860,-0.029548713937402,-0.034086659550667));
res += mul(Get(s1,-dx,dy), float4x4(0.004918928258121,0.005583701655269,-0.001485006301664,-0.012479126453400,-0.011516182683408,-0.007034674752504,0.012933338992298,0.029242325574160,-0.002974445465952,-0.003721946850419,0.005008671898395,0.009391315281391,0.000616954581346,0.000040252616600,-0.000033532534871,-0.001054487191141));
res += mul(Get(s1,0,-dy), float4x4(0.008343541063368,-0.004068979527801,-0.009923625737429,-0.005841255653650,0.001006862148643,0.019237341359258,0.020018395036459,0.010820888914168,-0.000631721748505,-0.001920996466652,-0.003369750687853,-0.000735348730814,-0.035621561110020,-0.023719074204564,-0.013210321776569,-0.005164642818272));
res += mul(Get(s1,0,0), float4x4(-0.003175708232448,0.002410782733932,0.009851899929345,0.014153337106109,-0.008245550096035,-0.025133749470115,-0.038315761834383,-0.025127414613962,-0.060708314180374,-0.000494643347338,0.032075967639685,0.002147475024685,-0.018187999725342,-0.030510652810335,-0.040680095553398,-0.044832881540060));
res += mul(Get(s1,0,dy), float4x4(0.003212367882952,0.003700018161908,-0.000606112473179,-0.005871861707419,0.003223580773920,0.007719911634922,0.009651296772063,0.001009876490571,-0.013666799291968,-0.004416995681822,0.038004912436008,0.001915850094520,-0.000144411722431,0.000638656027149,-0.000823874666821,-0.005258288700134));
res += mul(Get(s1,dx,-dy), float4x4(-0.003063319949433,-0.000853301084135,0.000042903637222,-0.000017041606043,0.007020568475127,0.005154447164387,0.004360019695014,0.002009419025853,-0.000126008322695,-0.001917926128954,-0.001896720263176,-0.002319776685908,0.002092011040077,0.002738038077950,0.002543770708144,0.001959037734196));
res += mul(Get(s1,dx,0), float4x4(0.000415942195104,-0.000392443645978,-0.002434410387650,-0.003130577038974,0.004672416485846,0.010015926323831,0.009676292538643,0.006666086148471,0.003544742008671,-0.003511317539960,0.000519538996741,0.002858713036403,0.003497524652630,0.002832223661244,0.003374578198418,0.003361915238202));
res += mul(Get(s1,dx,dy), float4x4(-0.000942555430811,-0.000247222371399,0.000307487614919,0.000968624779489,-0.001589110237546,-0.002150485524908,-0.000481292372569,0.001038193702698,0.002289595548064,0.001083953538910,-0.004321480635554,0.000741507799830,0.001929544378072,0.002766101155430,0.001958292676136,0.002328855218366));
res += mul(Get(s2,-dx,-dy), float4x4(-0.002002019900829,0.004988412838429,0.003328407881781,0.001317103160545,-0.024576460942626,-0.000622913416009,0.006149778608233,0.001533905742690,-0.005290626082569,-0.002479011192918,-0.001425171736628,-0.001017713104375,0.003249601693824,0.001716245897114,0.000280300242594,0.000099940829386));
res += mul(Get(s2,-dx,0), float4x4(0.022497849538922,0.027388593181968,-0.019172688946128,-0.024248791858554,0.037010245025158,0.035276979207993,-0.011127172969282,-0.040263935923576,-0.003670908976346,-0.004209768958390,-0.005391268990934,-0.007759383879602,0.007001212798059,0.006611428223550,0.006178830750287,0.004730794113129));
res += mul(Get(s2,-dx,dy), float4x4(-0.000827169802506,-0.001136959996074,-0.005836732685566,-0.010177891701460,-0.002405335195363,-0.001941173803061,-0.001647259225138,0.009541132487357,-0.000673158210702,-0.001842621946707,-0.002787990961224,-0.003026713384315,0.001257758587599,0.003353386186063,0.004889769945294,0.006079414859414));
res += mul(Get(s2,0,-dy), float4x4(-0.005512564443052,0.000348367873812,0.003374340012670,0.002646725391969,-0.007721118163317,-0.005708674434572,-0.005680515430868,-0.005348631180823,0.008769771084189,0.006294681224972,0.002050203736871,-0.000969688815530,-0.008631752803922,-0.001974644605070,0.000253639736911,-0.000464758981252));
res += mul(Get(s2,0,0), float4x4(-0.016018847003579,0.023161718621850,0.009858380071819,-0.015862205997109,-0.009000004269183,0.022870507091284,0.028842765837908,0.004801052622497,0.011699924245477,0.008685478940606,0.009122465737164,0.011961448937654,-0.021666325628757,-0.028277421370149,-0.029485195875168,-0.021790366619825));
res += mul(Get(s2,0,dy), float4x4(0.001126382383518,0.006551010068506,0.004272543825209,-0.020166687667370,-0.003867894411087,-0.000733213964850,-0.005786573048681,-0.016762461513281,0.000144473218825,0.003527071094140,0.006544963922352,0.009442303329706,-0.002171830274165,-0.005036009941250,-0.007857003249228,-0.011280859820545));
res += mul(Get(s2,dx,-dy), float4x4(0.000766535056755,-0.002056034514681,0.000653545837849,0.000874317658599,-0.002270728582516,0.002462160075083,0.002983090700582,0.001021086354740,-0.002568320836872,-0.002153126057237,-0.001497545395978,-0.001579923555255,0.002615285106003,0.003075098618865,0.002599045867100,0.001353695290163));
res += mul(Get(s2,dx,0), float4x4(0.002460479503497,0.001899059163406,-0.002528625074774,0.001636236440390,-0.000290291209240,-0.001431817421690,-0.000672847963870,-0.002698844065890,-0.003455937607214,-0.002679670928046,-0.002988677006215,-0.002729954896495,0.013161785900593,0.013605102896690,0.010609677992761,0.007892244495451));
res += mul(Get(s2,dx,dy), float4x4(-0.001613355707377,-0.001529443543404,0.000953362323344,0.000215201303945,0.000827116076834,-0.001139859785326,0.000212692728383,0.000723531527910,-0.001118332496844,-0.001605162513442,-0.001930813537911,-0.002699213335291,0.001226948341355,0.002490578219295,0.003858202835545,0.006445424631238));
res += mul(Get(s3,-dx,-dy), float4x4(0.001125837792642,0.000305522786221,-0.001586272148415,0.000747822457924,0.004943732637912,0.000228122735280,0.000750033650547,0.000168744503753,-0.005128843709826,-0.003541108220816,-0.000447293074103,-0.005460710264742,-0.010091857053339,-0.000253454636550,0.002580280648544,-0.002061515348032));
res += mul(Get(s3,-dx,0), float4x4(-0.012408629991114,0.030002694576979,0.009632637724280,-0.010699943639338,0.028060777112842,-0.009184055030346,-0.019781896844506,0.001611209358089,-0.021505082026124,-0.027695009484887,0.022936129942536,0.028715029358864,-0.034485943615437,0.006940596271306,0.031395580619574,0.005738494452089));
res += mul(Get(s3,-dx,dy), float4x4(0.003850199049339,0.007835574448109,-0.005956737790257,-0.033403132110834,-0.001439969637431,-0.009697253815830,-0.010774149559438,0.017557678744197,-0.002619250444695,-0.000211407110328,0.005769802723080,0.007271281909198,0.001364523661323,0.002390762791038,-0.003664947580546,-0.027781397104263));
res += mul(Get(s3,0,-dy), float4x4(-0.000387283042073,0.001433938508853,0.000324537744746,-0.000982756027952,0.003514471463859,0.000705640995875,-0.000809666235000,-0.001345964963548,-0.014548986218870,0.009459492750466,0.006670459173620,-0.000069124689617,0.013115023262799,0.003391487058252,-0.000109910688479,-0.002261416520923));
res += mul(Get(s3,0,0), float4x4(0.040395837277174,-0.011744283139706,-0.021067848429084,-0.001837348099798,0.022384054958820,-0.027470745146275,-0.018201213330030,0.006996782962233,0.006630504038185,0.041233226656914,-0.000851603981573,-0.044193778187037,-0.026086440309882,-0.049208685755730,-0.011985862627625,0.023586248978972));
res += mul(Get(s3,0,dy), float4x4(-0.000719319272321,-0.006353163626045,-0.011158485896885,0.026007719337940,-0.001276056515053,-0.016867831349373,-0.013922680169344,0.029352437704802,-0.005242839455605,-0.003177023259923,0.001398597727530,-0.009690192528069,0.002391991205513,0.004656551871449,0.016560364514589,0.014985320158303));
res += mul(Get(s3,dx,-dy), float4x4(0.003642177209258,0.004614948295057,-0.002141556702554,-0.002729533938691,-0.000605088076554,0.001306224847212,0.001063292380422,0.000436804111814,-0.004247143864632,0.003927667159587,0.006793841253966,0.002083683619276,-0.000032639483834,-0.002201319206506,-0.002141112228855,-0.001984207890928));
res += mul(Get(s3,dx,0), float4x4(0.000567024864722,0.000273631740129,-0.007336873561144,-0.006835962180048,0.003783757099882,0.003317795926705,-0.000141695883940,-0.001731563243084,0.000100271441624,-0.000376351934392,0.000988742569461,-0.001040974748321,0.002826466690749,0.004413751885295,0.003845384111628,0.002075735246763));
res += mul(Get(s3,dx,dy), float4x4(-0.000505700008944,0.000148899111082,-0.000769383856095,-0.002826278563589,-0.000450054067187,0.002476589288563,0.000692067435011,-0.000935087504331,0.000314685894409,0.001378513756208,0.001532532391138,0.000916750112083,0.004938139580190,0.006625688634813,-0.000384609826142,-0.002157568000257));
res += mul(Get(s4,-dx,-dy), float4x4(0.015834638848901,0.005924881435931,0.001168956281617,-0.000989937339909,-0.006421796511859,0.000964424514677,0.002854674356058,0.001065152348019,-0.010310370475054,-0.006650334689766,0.011968496255577,0.007932356558740,0.003572774119675,-0.001166174188256,-0.003913970664144,-0.004566910210997));
res += mul(Get(s4,-dx,0), float4x4(0.015247846953571,0.027374409139156,0.032201714813709,0.029026169329882,-0.014001951552927,-0.001531401765533,0.010779961012304,-0.003841093275696,0.004252370912582,0.003272183705121,0.000409958418459,-0.001860569813289,0.024815602228045,0.028006499633193,0.017836434766650,0.004889032337815));
res += mul(Get(s4,-dx,dy), float4x4(-0.000174826462171,-0.001156437094323,-0.001898206654005,0.001826096093282,0.006628578528762,0.000287614791887,-0.004247638396919,-0.004306215792894,-0.000497926783282,-0.002458493690938,-0.000773428997491,0.003309234743938,-0.009089652448893,-0.011505128815770,-0.005334066227078,0.012052993290126));
res += mul(Get(s4,0,-dy), float4x4(-0.019068622961640,-0.007851724512875,0.000020957226297,0.003611260792241,-0.018690042197704,0.000644367944915,0.012626073323190,0.010023976676166,-0.026909239590168,-0.028843082487583,0.020896652713418,0.024601170793176,0.006064626388252,-0.002897860947996,-0.006353144533932,-0.005345913581550));
res += mul(Get(s4,0,0), float4x4(-0.014699374325573,-0.023552073165774,-0.029052635654807,-0.029071908444166,0.036904040724039,0.021003838628531,-0.015196134336293,-0.033764589577913,0.007649434264749,0.007955563254654,0.004829351324588,0.000790075864643,-0.015245960094035,0.001350420294330,0.011766657233238,0.012809108942747));
res += mul(Get(s4,0,dy), float4x4(0.000684277212713,0.000464203447336,-0.001067076460458,-0.005985856521875,-0.007921687327325,-0.019344257190824,-0.006892097182572,0.025961343199015,-0.003160497406498,-0.003767644753680,-0.002751545049250,0.001831982634030,-0.000806183787063,-0.005540657322854,-0.014360439032316,-0.019440632313490));
res += mul(Get(s4,dx,-dy), float4x4(0.005365385208279,0.002912084106356,0.000211082704482,-0.001127540133893,0.000320653576637,0.000771255348809,0.000729134364519,0.000648615066893,0.002171898959205,-0.001323367701843,-0.002328924136236,0.000902295636479,-0.001959692453966,-0.001351309008896,-0.001548414235003,-0.001495022559538));
res += mul(Get(s4,dx,0), float4x4(0.002747221151367,0.005022617522627,0.007074262946844,0.006803637836128,-0.005607830826193,-0.001784361666068,0.003496286459267,0.001137509359978,-0.001181796193123,-0.000660557008814,-0.001429591095075,0.000131647844682,-0.000008008866644,0.001091262907721,-0.000380100740585,-0.003082602284849));
res += mul(Get(s4,dx,dy), float4x4(-0.000465909717605,-0.000627922767308,0.000238876658841,0.002067070221528,0.000545082031749,-0.000431662076153,0.001164684072137,-0.000042304240196,0.000747791316826,-0.000156562542543,0.000668708176818,0.000685261678882,-0.001272122259252,-0.001253220951185,-0.001090415637009,-0.000587151036598));
res += mul(Get(s5,-dx,-dy), float4x4(-0.001291967811994,-0.001420892425813,-0.000965635641478,-0.000428540457506,0.051631163805723,0.005493936128914,-0.008121150545776,-0.001795136486180,0.034547027200460,-0.007879779674113,-0.007443815469742,0.005171974655241,-0.008260734379292,-0.010388365946710,-0.008660005405545,-0.004838999826461));
res += mul(Get(s5,-dx,0), float4x4(-0.001088219694793,-0.000103864389530,-0.000655337003991,-0.000897643563803,-0.002423107856885,-0.044974882155657,-0.029555059969425,0.045330215245485,0.015770995989442,-0.007431822363287,-0.035795144736767,0.014862148091197,0.004524529445916,0.006009343545884,0.003374729771167,-0.002716052578762));
res += mul(Get(s5,-dx,dy), float4x4(-0.002653154311702,-0.004028931725770,-0.003370776306838,-0.002285405527800,-0.002597460523248,-0.001604227931239,0.005999827757478,0.013853958807886,-0.002470093546435,-0.000774235872086,-0.000324323977111,0.002769575221464,-0.003141996450722,-0.002204911084846,-0.000168026177562,0.001343674492091));
res += mul(Get(s5,0,-dy), float4x4(0.027864793315530,0.016395244747400,0.003834889736027,-0.001556653529406,-0.003031891305000,0.002168868435547,0.000096549425507,0.002795819891617,-0.022590000182390,-0.019799998030066,0.010287329554558,0.009783024899662,0.001282853190787,-0.010924218222499,-0.013646633364260,-0.008783692494035));
res += mul(Get(s5,0,0), float4x4(-0.020662633702159,-0.014519052579999,0.013522085733712,0.032119948416948,0.011940605007112,0.006347351241857,-0.022554418072104,-0.024883715435863,-0.000682445301209,-0.015638530254364,0.029690353199840,0.031334586441517,0.016774926334620,0.025837756693363,0.028168931603432,0.018384620547295));
res += mul(Get(s5,0,dy), float4x4(0.011995866894722,0.019650695845485,0.014007219113410,-0.002301681786776,0.002598023274913,0.007169798482209,0.002501308452338,-0.002826914191246,0.001597880851477,-0.003008593805134,-0.004360520280898,0.010440424084663,-0.005148676224053,-0.002325620735064,0.002311743330210,0.009311114437878));
res += mul(Get(s5,dx,-dy), float4x4(0.016647053882480,0.002513284794986,-0.010481196455657,-0.013383022509515,0.005491660907865,0.001584093901329,-0.001012795022689,0.000004705115316,-0.000516381871421,-0.006270688027143,-0.004077339079231,0.003351409221068,-0.007224814966321,-0.004703551996499,-0.001883433200419,-0.000770376354922));
res += mul(Get(s5,dx,0), float4x4(-0.036817554384470,-0.033239442855120,-0.000889911258128,0.019781056791544,0.000567049370147,-0.000283828121610,-0.000997584196739,0.002692647045478,-0.002274873666465,-0.003456787206233,-0.004510672297329,-0.001378633896820,-0.005900503601879,-0.007526637986302,-0.007279802113771,-0.006561344489455));
res += mul(Get(s5,dx,dy), float4x4(-0.001354502281174,0.000317846075632,-0.005092595238239,-0.016716944053769,-0.004315982572734,-0.004144454840571,0.000561494322028,0.001469726441428,0.001898300484754,0.001719629275613,0.000703576719388,-0.002093393355608,-0.001602996955626,-0.000366984284483,-0.001096182269976,-0.003273660782725));
return res;
}
