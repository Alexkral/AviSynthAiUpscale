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
float3 res = float3(0.000559547625016,0.001081973430701,0.000323714397382);
res += mul(Get(s0,-dx,-dy), float4x3(-0.005319814663380,0.012808615341783,0.002614864148200,-0.004877144470811,-0.002361631253734,0.004522126168013,-0.025056725367904,-0.006893934682012,-0.003663843031973,-0.007597026415169,-0.014058372937143,0.002180390991271));
res += mul(Get(s0,-dx,0), float4x3(0.007799448911101,0.010902278125286,-0.013365878723562,0.016615362837911,0.016100920736790,0.004006986040622,-0.025272982195020,-0.040515240281820,-0.042748231440783,-0.001298238756135,0.008940916508436,0.021168405190110));
res += mul(Get(s0,-dx,dy), float4x3(-0.001785131520592,-0.002554100705311,-0.002275957725942,-0.001318026101217,0.000146096906974,0.005400139838457,-0.002037602942437,-0.002488683676347,-0.009014714509249,0.003061111317948,0.000094118411653,-0.000423575547757));
res += mul(Get(s0,0,-dy), float4x3(-0.043403223156929,0.013249788433313,0.025015342980623,-0.041552450507879,-0.031912758946419,-0.014292705804110,-0.023314410820603,-0.003316441550851,0.002331326948479,-0.051042549312115,0.031074211001396,0.026965437456965));
res += mul(Get(s0,0,0), float4x3(0.004666888155043,0.024653375148773,-0.005893175490201,0.010369302704930,0.001197380130179,-0.027944559231400,-0.013192196376622,-0.034590143710375,-0.041714467108250,0.019633200019598,0.021905085071921,-0.053352572023869));
res += mul(Get(s0,0,dy), float4x3(-0.007192987482995,-0.005110586527735,0.002423730678856,-0.006262249313295,-0.006237836554646,0.000568533781916,-0.001411882927641,0.001131480094045,0.000468086946057,-0.002755598165095,-0.001722633256577,-0.000327301386278));
res += mul(Get(s0,dx,-dy), float4x3(-0.002524754032493,0.000557733292226,0.004757435992360,-0.012052494101226,-0.004336783662438,0.000527515192516,-0.002431171713397,-0.000549727526959,-0.000612658623140,0.010090590454638,0.007044012192637,0.003965775948018));
res += mul(Get(s0,dx,0), float4x3(-0.000097430427559,0.001040872070007,-0.002111328998581,-0.002458966569975,-0.005322254728526,-0.009691255167127,0.001405562041327,-0.001074910513125,-0.004221318755299,-0.002976752119139,-0.002925914013758,0.003477022983134));
res += mul(Get(s0,dx,dy), float4x3(-0.000971811939962,-0.001643163152039,-0.002542591420934,0.000848568277434,-0.001248934771866,-0.003728024661541,-0.001244624843821,0.000067519074946,0.002222509123385,0.002567498246208,-0.000318476726534,-0.003897031769156));
res += mul(Get(s1,-dx,-dy), float4x3(0.022370634600520,0.011309849098325,0.005669259466231,-0.001908877980895,-0.010781830176711,-0.008640737272799,0.008382881060243,-0.009234833531082,0.000187907251529,0.018526015803218,-0.017077196389437,-0.014821313321590));
res += mul(Get(s1,-dx,0), float4x3(0.011724223382771,0.022993950173259,0.031010152772069,-0.040414545685053,0.018989153206348,0.032040644437075,-0.011371605098248,0.013485162518919,0.033843159675598,-0.022070925682783,-0.011320878751576,0.028526118025184));
res += mul(Get(s1,-dx,dy), float4x3(0.007463554386050,0.007572031579912,0.007365624886006,0.017674427479506,0.019174743443727,-0.024914242327213,-0.002817990956828,-0.002438618801534,-0.005919808056206,0.006033527199179,0.004618186503649,-0.003291558707133));
res += mul(Get(s1,0,-dy), float4x3(-0.004880897235125,-0.005193104501814,-0.004359763581306,0.030613886192441,-0.004388698376715,-0.017519097775221,0.031755879521370,0.008276409469545,-0.002653074683622,0.015445579774678,-0.001344477292150,-0.014826461672783));
res += mul(Get(s1,0,0), float4x3(-0.016894785687327,-0.015135589055717,-0.009186087176204,0.004637080244720,-0.025803044438362,0.007171590346843,-0.034803099930286,-0.050935853272676,0.006829158868641,-0.008781602606177,-0.011712260544300,0.004739183466882));
res += mul(Get(s1,0,dy), float4x3(0.000749146041926,-0.002079295460135,-0.008437698706985,-0.000740388873965,-0.001479069818743,0.009299343451858,-0.002688560402021,0.002778844442219,0.004142022691667,0.004730985965580,0.005550104193389,0.000423572113505));
res += mul(Get(s1,dx,-dy), float4x3(0.005741347558796,0.002763527678326,0.000912528659683,0.000379833451007,0.004496308509260,-0.001440923078917,-0.002792079700157,-0.008926111273468,-0.007423530332744,0.001748586073518,-0.001091385143809,-0.001801280421205));
res += mul(Get(s1,dx,0), float4x3(0.006215112283826,0.005833930801600,0.006434245500714,-0.002561144763604,0.001446842099540,-0.002056990284473,0.000620495411567,-0.001296902890317,-0.002087593078613,0.002784168580547,0.002377767115831,0.000055263248214));
res += mul(Get(s1,dx,dy), float4x3(0.000828059273772,0.003380391979590,0.005731862038374,-0.001619473798200,-0.000385166553315,0.000162854063092,0.003936659079045,0.002444455632940,0.001197984442115,-0.002134252572432,-0.000973119051196,0.001475091325119));
res += mul(Get(s2,-dx,-dy), float4x3(-0.015769021585584,-0.002550642704591,-0.003652651095763,-0.001034205546603,0.000607094611041,0.000906932633370,0.008287958800793,-0.007495322264731,-0.004235666710883,-0.014716655947268,0.006301484536380,0.003348841564730));
res += mul(Get(s2,-dx,0), float4x3(0.040207054466009,0.025415461510420,-0.016731865704060,-0.000306834350340,-0.003611184190959,-0.005854249466211,-0.017746763303876,-0.003786311019212,0.015800980851054,0.028538852930069,0.013997699134052,-0.028549266979098));
res += mul(Get(s2,-dx,dy), float4x3(0.001241145655513,0.000819168519229,0.013807130046189,-0.000199561167392,-0.002796183340251,-0.003034729044884,0.007404491771013,0.005720847751945,-0.003493859199807,-0.001911130850203,-0.003336246823892,0.004104764200747));
res += mul(Get(s2,0,-dy), float4x3(0.003682896494865,-0.003214479656890,-0.000742571428418,-0.003146690782160,0.009418526664376,0.008802704513073,-0.012495353817940,-0.002023244975135,0.000765395816416,0.029889738187194,0.000095376133686,-0.004369980655611));
res += mul(Get(s2,0,0), float4x3(0.001640786882490,0.049296829849482,0.034179273992777,0.028518958017230,-0.017208535224199,-0.020464379340410,0.022166511043906,0.020578388124704,-0.024899464100599,-0.015957344323397,-0.049542061984539,0.002527046250179));
res += mul(Get(s2,0,dy), float4x3(0.004421507474035,-0.007877703756094,-0.026773005723953,-0.030310347676277,-0.021771658211946,0.040414787828922,0.012551528401673,-0.001965066883713,-0.015412688255310,0.002722498262301,0.008043146692216,0.015694649890065));
res += mul(Get(s2,dx,-dy), float4x3(-0.003274449845776,0.005988623015583,0.007096952758729,0.001565696089529,0.003461439162493,0.001729118055664,-0.000404255959438,0.001633492182009,0.001868990017101,0.004950186237693,-0.000810603611171,-0.001542985555716));
res += mul(Get(s2,dx,0), float4x3(-0.003868747269735,-0.006047356873751,-0.007585641462356,-0.000524959526956,-0.000564001966268,-0.002544626360759,-0.003769166767597,0.004236774984747,0.005480160471052,0.003484349232167,0.007538980338722,0.007085389457643));
res += mul(Get(s2,dx,dy), float4x3(0.001244689105079,0.001743877306581,-0.000220072513912,-0.002127255778760,0.000422306649853,-0.000117477873573,0.001576640526764,-0.005423354450613,-0.005542919039726,-0.007378532551229,-0.006653077434748,-0.000589129398577));
res += mul(Get(s3,-dx,-dy), float4x3(0.010748667642474,-0.001431016135029,-0.004687992855906,0.002251667669043,0.000977551215328,0.000804807292297,-0.006993847899139,0.007336835842580,-0.001423748093657,-0.005716818384826,0.002791781676933,0.004902954213321));
res += mul(Get(s3,-dx,0), float4x3(0.002646529115736,0.019650671631098,0.025050591677427,0.004309707786888,0.004093470517546,0.003343991935253,-0.006605840753764,0.044574018567801,-0.025176424533129,-0.003680625697598,-0.014737374149263,-0.013124601915479));
res += mul(Get(s3,-dx,dy), float4x3(-0.002719949465245,-0.006940958090127,-0.007043540943414,-0.000504766649101,0.000362785300240,0.002486467128620,-0.001114472164772,0.013343134894967,-0.034038014709949,0.002915087155998,0.004771354608238,0.004202555865049));
res += mul(Get(s3,0,-dy), float4x3(0.014997169375420,0.006942091509700,0.003314419416711,-0.007898908108473,-0.001002706354484,0.000629532209132,0.008766665123403,0.004519047215581,0.000658039585687,-0.010425965301692,0.011257414706051,0.011969962157309));
res += mul(Get(s3,0,0), float4x3(0.024585139006376,0.027001526206732,0.024692809209228,-0.007181527093053,-0.013606839813292,-0.014300604350865,0.010403050109744,-0.013605091720819,-0.012430354021490,0.009279652498662,-0.016356581822038,-0.025864321738482));
res += mul(Get(s3,0,dy), float4x3(0.000585525936913,0.003671541810036,0.013240733183920,0.000782170391176,0.001003342913464,-0.000358253455488,0.000095603907539,0.001123284921050,-0.000351411465090,0.004092773422599,0.010287547484040,0.017765207216144));
res += mul(Get(s3,dx,-dy), float4x3(-0.003006986342371,-0.004264895804226,-0.003397312713787,0.025579318404198,0.009290276095271,0.000493072031531,-0.001863162848167,-0.004772737622261,-0.002286424161866,0.002028885995969,0.000739046605304,0.000626854191069));
res += mul(Get(s3,dx,0), float4x3(-0.004022036679089,-0.002983799902722,-0.001652635866776,0.014688198454678,0.032385881990194,0.037365350872278,0.001515645068139,0.004403297789395,0.000676378316712,-0.001511279726401,-0.000337213248713,0.001832320820540));
res += mul(Get(s3,dx,dy), float4x3(-0.000713369867299,-0.001190887531266,-0.003026813268661,0.000675251649227,-0.001907422090881,0.000352072849637,-0.001784990075976,0.001490224734880,0.001051190076396,0.000303472450469,0.000316397636198,-0.000457595248008));
res += mul(Get(s4,-dx,-dy), float4x3(0.001968065975234,-0.002782072406262,-0.002357611199841,-0.006704254541546,-0.000408557796618,0.004182394593954,0.008643171750009,-0.007024005986750,0.001050078775734,-0.011675938963890,0.019917532801628,0.018623393028975));
res += mul(Get(s4,-dx,0), float4x3(-0.007523562759161,0.005868526641279,0.010868143290281,0.010165240615606,-0.020031135529280,-0.019460422918200,0.007994649000466,-0.017875550314784,-0.003021791111678,0.041119553148746,-0.003762637963519,-0.043259341269732));
res += mul(Get(s4,-dx,dy), float4x3(0.006761027500033,0.003806209424511,-0.007675446569920,-0.006391534581780,0.003826264292002,0.020809859037399,-0.001069516176358,0.000975588860456,0.002910159062594,-0.022964682430029,-0.017169110476971,0.018920846283436));
res += mul(Get(s4,0,-dy), float4x3(0.003678376087919,-0.006155766546726,-0.007510705385357,0.007308761123568,0.009000032208860,0.008099883794785,-0.026271449401975,-0.011659594252706,0.008119680918753,0.008777910843492,-0.004015853162855,-0.009050260297954));
res += mul(Get(s4,0,0), float4x3(-0.022485176101327,0.014936600811779,0.017173254862428,-0.011379331350327,0.000157462447532,0.006594385951757,-0.028993844985962,-0.007731338031590,0.043072465807199,-0.009198251180351,-0.005091027356684,0.012765795923769));
res += mul(Get(s4,0,dy), float4x3(0.024287767708302,0.019359165802598,-0.032168410718441,-0.003630376886576,-0.008061487227678,-0.014018963091075,0.001110954908654,0.006720362231135,0.010661072097719,-0.003630903316662,0.008183242753148,0.008783531375229));
res += mul(Get(s4,dx,-dy), float4x3(0.000370229856344,-0.002680836478248,-0.001698506996036,-0.005186466500163,-0.005085978657007,-0.002936900127679,0.004233460873365,0.002099724486470,0.003903961041942,0.001710544456728,-0.000708173436578,-0.002085769083351));
res += mul(Get(s4,dx,0), float4x3(0.003557836636901,-0.000465689139673,0.000100854485936,0.004473723005503,0.003529938170686,0.000586479378399,0.003038010094315,-0.003416503779590,0.006260788533837,-0.004849565681070,0.001052158419043,-0.000504498311784));
res += mul(Get(s4,dx,dy), float4x3(-0.002064162399620,-0.001530513050966,0.003195368917659,0.002867618110031,0.006356058176607,0.004830102436244,-0.002025183290243,0.000770257902332,0.005632290616632,0.005749545525759,0.001081320457160,-0.007739638909698));
res += mul(Get(s5,-dx,-dy), float4x3(-0.010210481472313,-0.002476861700416,0.000075036507042,0.003885217709467,0.003485995810479,0.001515896990895,-0.000790813763160,-0.001263356651179,-0.001558352727443,-0.008556499145925,-0.015278141014278,-0.009960912168026));
res += mul(Get(s5,-dx,0), float4x3(-0.027948185801506,-0.031918652355671,-0.022250333800912,0.003721382701769,-0.013766103424132,0.002741350326687,-0.010041709057987,0.007021416909993,-0.002047558547929,0.001217716257088,0.004810745362192,0.000983229256235));
res += mul(Get(s5,-dx,dy), float4x3(-0.000438093877165,-0.004020854830742,-0.013897739350796,-0.001675296691246,-0.009959816001356,0.010102882049978,-0.010171715170145,0.016634924337268,-0.004431407898664,-0.002164874691516,-0.001782162929885,-0.001102941925637));
res += mul(Get(s5,0,-dy), float4x3(0.003363538533449,-0.002081736689433,-0.002943196101114,0.007020405028015,0.003610809799284,0.001543069491163,-0.003493442665786,-0.000128001120174,0.001470161951147,-0.001253595226444,-0.017491396516562,-0.012871146202087));
res += mul(Get(s5,0,0), float4x3(0.020461026579142,0.021846387535334,0.016855729743838,0.058379486203194,-0.020907992497087,-0.022185178473592,-0.039856996387243,-0.000382737431210,0.017265766859055,0.024594619870186,0.032335370779037,0.023286756128073));
res += mul(Get(s5,0,dy), float4x3(0.000409820378991,0.002915550954640,0.009925020858645,0.008546601980925,-0.026078939437866,-0.001912749721669,-0.031730826944113,0.014214178547263,0.044982414692640,-0.001582503900863,0.002914722310379,0.012771513313055));
res += mul(Get(s5,dx,-dy), float4x3(-0.001858432311565,0.002533212769777,0.002934048883617,-0.002899676794186,0.000399028387619,0.001329067512415,-0.001902941963635,0.000452073611086,0.001115305116400,-0.002986285369843,-0.000183719515917,0.000770999060478));
res += mul(Get(s5,dx,0), float4x3(-0.009321580640972,-0.011982532218099,-0.008594884537160,-0.001393781276420,0.000467557692900,-0.004080509301275,-0.003320755204186,-0.001033615670167,-0.004197177477181,-0.006952796131372,-0.007242630701512,-0.005682888906449));
res += mul(Get(s5,dx,dy), float4x3(0.002137953881174,0.000970057211816,-0.003677631961182,-0.001833337242715,-0.000825452036224,-0.001860679942183,-0.001186397159472,0.000261062290519,-0.002778665395454,0.000137576178531,-0.001421860186383,-0.003915188368410));
return float4(res, 0);
}
