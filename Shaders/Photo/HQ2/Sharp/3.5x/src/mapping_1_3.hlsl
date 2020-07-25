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
res += mul(Get(s0,-dx,-dy), float4x4(0.133154571056366,0.071349635720253,-0.064140751957893,-0.077351428568363,-0.078527241945267,0.001775885117240,-0.144494116306305,-0.007055588066578,0.113509066402912,-0.036982644349337,0.052892465144396,-0.136780068278313,-0.068827956914902,-0.095211155712605,0.096039354801178,-0.013295153155923));
res += mul(Get(s0,-dx,0), float4x4(-0.013968542218208,0.013859512284398,0.020326530560851,-0.045439701527357,-0.061147861182690,-0.076447971165180,-0.040970694273710,0.006463642232120,0.066446296870708,0.030729247257113,-0.077760480344296,-0.003244146937504,-0.032022073864937,-0.062049120664597,0.028181793168187,0.102025516331196));
res += mul(Get(s0,-dx,dy), float4x4(-0.109745986759663,-0.030637113377452,0.116403803229332,0.064265839755535,0.022975336760283,-0.088481873273849,-0.025113085284829,0.126502707600594,-0.154065757989883,-0.016763662919402,-0.017067875713110,-0.082620307803154,0.010290489532053,-0.026468517258763,0.001326064113528,-0.015963863581419));
res += mul(Get(s0,0,-dy), float4x4(-0.117393448948860,0.179650396108627,-0.090696848928928,0.004548121243715,0.107439845800400,0.003159514628351,-0.060427315533161,0.017299626022577,0.126052126288414,-0.049508601427078,0.013019898906350,-0.059694524854422,0.015298984944820,-0.105332143604755,-0.102177493274212,-0.020528098568320));
res += mul(Get(s0,0,0), float4x4(-0.104475863277912,0.044414024800062,-0.088928498327732,0.068270102143288,0.076583571732044,0.151156350970268,-0.038862910121679,-0.014091060496867,0.006363634020090,-0.044949147850275,-0.064565606415272,0.023580938577652,-0.018956964835525,-0.001711311051622,0.043419416993856,-0.091844744980335));
res += mul(Get(s0,0,dy), float4x4(0.049719978123903,-0.025795774534345,-0.059064574539661,-0.006309741176665,0.110288597643375,-0.037934243679047,-0.107145361602306,0.001119303982705,-0.052392136305571,-0.122124686837196,-0.025644732639194,-0.101979531347752,-0.013400245457888,0.029868222773075,-0.106685742735863,0.138927310705185));
res += mul(Get(s0,dx,-dy), float4x4(0.000455934874481,0.067751124501228,0.015370123088360,0.202322795987129,-0.070169426500797,-0.116274081170559,0.022980321198702,0.062227696180344,0.084260120987892,-0.061601109802723,0.011536148376763,-0.090276852250099,0.002954350784421,-0.084518678486347,0.139582991600037,-0.021884610876441));
res += mul(Get(s0,dx,0), float4x4(0.239724159240723,0.043690077960491,-0.024746298789978,-0.159559383988380,0.068267293274403,-0.034058786928654,-0.218601718544960,-0.065794520080090,-0.117391288280487,-0.126711994409561,-0.100111231207848,-0.137491628527641,0.040187451988459,0.097744636237621,0.046195201575756,0.113543137907982));
res += mul(Get(s0,dx,dy), float4x4(0.096294686198235,0.037271458655596,-0.095686458051205,-0.047755964100361,0.093962006270885,-0.059796236455441,-0.007148642558604,0.033529661595821,-0.005145181901753,-0.059851903468370,0.040391843765974,-0.200059399008751,0.112500824034214,-0.139170572161674,0.023236475884914,0.031761750578880));
res += mul(Get(s1,-dx,-dy), float4x4(0.053612668067217,-0.034359212964773,-0.034727044403553,-0.022995339706540,-0.071254640817642,0.170467153191566,0.083071529865265,0.030360389500856,-0.065878450870514,-0.107926197350025,0.006637860555202,-0.128510206937790,0.043002862483263,-0.016260277479887,-0.044865954667330,-0.150485649704933));
res += mul(Get(s1,-dx,0), float4x4(-0.021262578666210,-0.130250290036201,-0.191353082656860,0.095443464815617,0.024680096656084,0.193041190505028,-0.024341294541955,0.069994054734707,-0.034412048757076,-0.166806653141975,0.066576674580574,-0.110323682427406,-0.025544611737132,0.002327820984647,0.006663618143648,-0.038941241800785));
res += mul(Get(s1,-dx,dy), float4x4(0.055758073925972,-0.030370457097888,-0.104969605803490,0.086730733513832,-0.025956531986594,-0.042422976344824,0.159600347280502,-0.022735737264156,-0.015949448570609,0.208500057458878,0.085718579590321,-0.015027836896479,-0.255165159702301,-0.047270372509956,0.157032683491707,0.096465043723583));
res += mul(Get(s1,0,-dy), float4x4(-0.019915273413062,-0.116167880594730,0.032794732600451,-0.009727338328958,-0.034649617969990,-0.007991264574230,-0.110943168401718,0.064231477677822,-0.155985563993454,-0.025336381047964,0.069380007684231,-0.141912147402763,-0.072301365435123,0.044273097068071,0.052338782697916,-0.019356539472938));
res += mul(Get(s1,0,0), float4x4(-0.153399124741554,-0.050435014069080,0.211559042334557,0.113973714411259,0.135052800178528,-0.042092725634575,-0.032828658819199,0.094448238611221,-0.032000590115786,0.028789626434445,-0.040779735893011,0.195748299360275,0.127419292926788,-0.085954979062080,-0.054304558783770,-0.009061057120562));
res += mul(Get(s1,0,dy), float4x4(-0.202319025993347,-0.064992085099220,0.064535528421402,0.156989932060242,0.134164482355118,0.010202716104686,0.003646700643003,0.015467621386051,0.066921412944794,0.099087640643120,-0.005268376786262,0.062796361744404,0.035094242542982,-0.074572898447514,-0.070149749517441,-0.089802399277687));
res += mul(Get(s1,dx,-dy), float4x4(-0.148128822445869,-0.103979147970676,0.026460396125913,-0.005759157240391,0.196892991662025,-0.080737873911858,-0.176825076341629,0.013696861453354,-0.052830014377832,-0.148065835237503,0.029108110815287,-0.181530669331551,0.005910270847380,0.041927568614483,0.102074570953846,-0.052323725074530));
res += mul(Get(s1,dx,0), float4x4(-0.019425231963396,-0.181199714541435,-0.048266518861055,-0.022383000701666,0.033871829509735,-0.164512902498245,0.046738069504499,-0.110630840063095,0.045117180794477,0.033449478447437,-0.109983742237091,-0.101879745721817,0.111652836203575,0.133141919970512,0.211650133132935,-0.121695429086685));
res += mul(Get(s1,dx,dy), float4x4(-0.049450185149908,0.049528278410435,0.010303027927876,0.036002524197102,0.039322633296251,-0.000683043443132,0.002559113549069,-0.102943874895573,0.095675565302372,0.039934534579515,-0.091535232961178,-0.010515123605728,0.061006963253021,-0.051829040050507,-0.008685147389770,0.030269606038928));
res += mul(Get(s2,-dx,-dy), float4x4(0.002460420597345,-0.043202929198742,-0.041846059262753,-0.039705708622932,-0.028609499335289,-0.134314030408859,-0.046589046716690,-0.030338348820806,-0.022347290068865,-0.078123517334461,0.028595689684153,-0.032377790659666,-0.079652152955532,0.069556593894958,-0.013537315651774,0.045779578387737));
res += mul(Get(s2,-dx,0), float4x4(-0.069217905402184,0.037149075418711,-0.124052710831165,0.068060062825680,0.029797375202179,0.002026768866926,-0.006338562350720,-0.015584319829941,-0.027850767597556,0.007360287476331,-0.145004615187645,-0.073672965168953,-0.046096552163363,-0.112087197601795,-0.034338828176260,-0.086958289146423));
res += mul(Get(s2,-dx,dy), float4x4(-0.013942730613053,0.095579855144024,0.085392147302628,0.107215456664562,-0.116089873015881,0.100697182118893,-0.031071471050382,0.053177475929260,0.023417342454195,-0.052455451339483,-0.168553099036217,0.023765321820974,0.020710892975330,-0.051139608025551,0.114989265799522,-0.022368695586920));
res += mul(Get(s2,0,-dy), float4x4(-0.024949334561825,0.086602546274662,0.025013141334057,0.094419732689857,0.019689282402396,-0.050682775676250,0.085661977529526,0.075200341641903,0.081617154181004,-0.035102259367704,-0.006814040243626,0.041894789785147,-0.017245976254344,-0.054458923637867,-0.072789944708347,0.088561013340950));
res += mul(Get(s2,0,0), float4x4(0.078746736049652,0.024454841390252,0.102245502173901,-0.003834944451228,0.077842690050602,-0.059611130505800,0.032681100070477,-0.127861931920052,0.013141684234142,-0.071321979165077,0.060869038105011,-0.018034316599369,-0.139592260122299,0.045811899006367,0.011787079274654,0.004295448772609));
res += mul(Get(s2,0,dy), float4x4(0.041195098310709,-0.055106617510319,-0.079698540270329,-0.045309457927942,-0.028779238462448,-0.089333437383175,-0.097957313060760,0.013047504238784,0.090913109481335,-0.018828006461263,0.017912544310093,0.070075280964375,-0.133727565407753,0.041451975703239,0.036492925137281,-0.038770958781242));
res += mul(Get(s2,dx,-dy), float4x4(0.051808353513479,0.056939534842968,0.020643511787057,-0.107451595366001,0.116164736449718,-0.035102806985378,-0.064575731754303,0.013403114862740,0.135876208543777,0.312927782535553,-0.135586649179459,-0.133194237947464,0.093406327068806,0.010770159773529,0.069395460188389,-0.074449710547924));
res += mul(Get(s2,dx,0), float4x4(0.020191544666886,-0.006040829233825,-0.057382896542549,0.010121146216989,-0.004621666856110,-0.034935895353556,-0.101492226123810,-0.018766919150949,0.078550130128860,0.299006044864655,-0.136433452367783,-0.094312287867069,-0.057948730885983,-0.029756948351860,-0.074972838163376,-0.021174537017941));
res += mul(Get(s2,dx,dy), float4x4(-0.025598173961043,0.121513664722443,0.111930228769779,0.083619780838490,-0.051297601312399,-0.007292386610061,0.030037656426430,0.070211842656136,0.084160253405571,0.101028159260750,0.076003409922123,-0.269478350877762,0.182637944817543,-0.081073418259621,0.031363431364298,0.052859794348478));
res += mul(Get(s3,-dx,-dy), float4x4(-0.208331346511841,0.000680058554281,0.240866586565971,-0.133044004440308,-0.155543804168701,-0.175599828362465,0.029371906071901,0.060391999781132,0.002975130686536,-0.083393715322018,-0.098446108400822,0.015361675992608,-0.082396715879440,0.045889873057604,0.018732517957687,-0.071740798652172));
res += mul(Get(s3,-dx,0), float4x4(0.036628276109695,0.098944351077080,-0.131043463945389,-0.005994912236929,-0.042160619050264,-0.114660434424877,-0.073027543723583,0.041919071227312,-0.031516335904598,0.102893993258476,0.021607024595141,0.088092327117920,-0.152579456567764,0.059383139014244,-0.067584089934826,-0.011099295690656));
res += mul(Get(s3,-dx,dy), float4x4(0.006598602514714,0.038255527615547,0.037542596459389,0.068635776638985,0.053846597671509,-0.025750901550055,0.144968658685684,0.060304861515760,0.013155713677406,0.152261421084404,0.136970773339272,0.132607802748680,0.001491714268923,0.059173982590437,-0.000627753383014,0.023177346214652));
res += mul(Get(s3,0,-dy), float4x4(-0.061843335628510,0.015837365761399,-0.020392196252942,-0.124690458178520,0.087924316525459,0.063775673508644,0.031920768320560,-0.101192817091942,-0.170890957117081,-0.032546710222960,-0.105035096406937,-0.099790625274181,0.018996801227331,0.059523675590754,0.008197018876672,0.277135342359543));
res += mul(Get(s3,0,0), float4x4(0.033303286880255,0.056349288672209,-0.071827687323093,0.058622702956200,0.098186530172825,-0.035437997430563,-0.021869974210858,0.053367394953966,0.134011909365654,0.104660667479038,-0.021271992474794,0.056445565074682,0.091738604009151,-0.027437716722488,0.082060128450394,0.107627958059311));
res += mul(Get(s3,0,dy), float4x4(-0.067053519189358,0.051553819328547,-0.073756955564022,0.059913374483585,0.106137126684189,0.006135528907180,0.046224299818277,-0.052554313093424,0.047938819974661,0.083678051829338,0.088170021772385,-0.001110062119551,-0.083297267556190,0.033264063298702,0.058219157159328,0.203631967306137));
res += mul(Get(s3,dx,-dy), float4x4(0.075090996921062,-0.141660138964653,0.043460819870234,-0.077392898499966,-0.111462637782097,-0.071109004318714,-0.002817113418132,-0.049322340637445,0.176902234554291,-0.124164372682571,-0.168546155095100,0.080223038792610,0.069511979818344,-0.197683081030846,-0.030731555074453,0.036370143294334));
res += mul(Get(s3,dx,0), float4x4(0.002126035979018,0.000334383628797,0.203302517533302,-0.132107034325600,0.128471627831459,-0.182665750384331,0.094255119562149,-0.136663392186165,0.124764978885651,-0.002926074666902,0.054854188114405,0.097212798893452,0.006169772706926,-0.102543190121651,0.142141625285149,0.018582886084914));
res += mul(Get(s3,dx,dy), float4x4(-0.140128344297409,-0.037260428071022,-0.070013530552387,0.038002967834473,-0.068678431212902,0.014003765769303,-0.021483493968844,0.096438527107239,0.001004743506201,0.022911462932825,0.066074565052986,0.071990162134171,-0.067787893116474,0.105434104800224,-0.004459716845304,0.053811226040125));
res = max(float4(0,0,0,0), res);
return res;
}
