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
res += mul(Get(s0,-dx,-dy), float4x4(0.034800373017788,-0.127596512436867,0.061519257724285,-0.012465697713196,-0.010405107401311,0.129581391811371,0.048116013407707,-0.171005755662918,-0.106840156018734,-0.065100461244583,-0.040453843772411,-0.061376295983791,0.151138797402382,-0.142816185951233,-0.105538286268711,0.046156980097294));
res += mul(Get(s0,-dx,0), float4x4(-0.140910759568214,-0.223614722490311,-0.061365094035864,0.092578299343586,-0.142964407801628,-0.009224592708051,-0.090572826564312,0.032687433063984,0.014297856949270,0.001793889212422,0.164028555154800,0.074739895761013,-0.067946359515190,-0.034913703799248,-0.184467554092407,0.042682096362114));
res += mul(Get(s0,-dx,dy), float4x4(0.002973247319460,-0.020336130633950,0.104110956192017,-0.246848493814468,0.069362692534924,0.058121994137764,0.097881473600864,0.075137734413147,-0.136062741279602,-0.120432533323765,-0.045010697096586,-0.074713997542858,-0.112162433564663,0.260183483362198,0.019439667463303,-0.181020766496658));
res += mul(Get(s0,0,-dy), float4x4(0.028032956644893,0.065336912870407,0.016810299828649,0.129461392760277,0.123336896300316,0.155010923743248,-0.149454176425934,-0.098964348435402,0.024386113509536,0.061266947537661,0.115441396832466,0.009065455757082,0.000807119125966,0.186999350786209,-0.115624278783798,0.144670248031616));
res += mul(Get(s0,0,0), float4x4(0.009469180367887,0.200514748692513,0.049700595438480,0.022881764918566,-0.008006131276488,0.056446719914675,-0.037805993109941,0.124509297311306,-0.164689704775810,0.029977355152369,0.115619435906410,-0.045997574925423,-0.016683897003531,0.095006376504898,-0.075416296720505,0.046731546521187));
res += mul(Get(s0,0,dy), float4x4(0.054034858942032,-0.033537160605192,0.125408962368965,0.034475747495890,-0.090874083340168,0.043930206447840,-0.157512843608856,-0.139087140560150,-0.271236658096313,0.048423904925585,-0.059457428753376,-0.005120767280459,0.158390074968338,0.050400786101818,0.026499101892114,-0.018696960061789));
res += mul(Get(s0,dx,-dy), float4x4(0.122387990355492,-0.123453959822655,-0.018549470230937,-0.013685104437172,-0.089231766760349,-0.046814896166325,0.153106480836868,-0.037825457751751,-0.036481101065874,-0.015543449670076,0.034996036440134,0.238878369331360,-0.004636774770916,0.089589580893517,-0.162106707692146,0.003879870520905));
res += mul(Get(s0,dx,0), float4x4(0.042299665510654,-0.075550429522991,-0.039022497832775,0.016308765858412,0.050958119332790,-0.044307306408882,-0.014637886546552,-0.033983100205660,-0.108813054859638,-0.083200886845589,-0.001232893206179,-0.047592677175999,0.150622829794884,0.037214703857899,0.109646201133728,-0.018914267420769));
res += mul(Get(s0,dx,dy), float4x4(-0.015930501744151,0.043641977012157,0.010844249278307,-0.024100208655000,0.047695405781269,0.120099991559982,0.053477261215448,-0.013884363695979,0.173563599586487,-0.013882542960346,0.230329722166061,0.109828747808933,0.140186741948128,0.103175289928913,0.038804672658443,0.206575319170952));
res += mul(Get(s1,-dx,-dy), float4x4(0.184337362647057,0.093671128153801,0.128118500113487,-0.150161728262901,0.097399674355984,-0.084459938108921,-0.127847701311111,0.270276814699173,-0.074929594993591,0.078065410256386,-0.006999295670539,-0.056341096758842,0.191882029175758,0.063558705151081,-0.041280250996351,0.254322260618210));
res += mul(Get(s1,-dx,0), float4x4(-0.093131780624390,-0.128576889634132,-0.084722869098186,-0.090315684676170,-0.072843886911869,0.050626363605261,-0.110000587999821,0.010417745448649,0.104638464748859,0.003953386563808,0.062596507370472,0.131427526473999,0.093452155590057,0.043414134532213,0.045449674129486,0.187470659613609));
res += mul(Get(s1,-dx,dy), float4x4(-0.068057343363762,-0.021719276905060,0.054598506540060,0.036096561700106,0.169164508581161,-0.051258485764265,0.141289651393890,-0.061985213309526,-0.044810879975557,-0.111223362386227,-0.065685920417309,-0.000758463051170,-0.081702344119549,0.192111402750015,0.006916597485542,-0.115990065038204));
res += mul(Get(s1,0,-dy), float4x4(0.146153673529625,-0.017083905637264,-0.126645475625992,0.222646281123161,0.059373382478952,-0.076594002544880,-0.011916274204850,-0.024250373244286,-0.206836670637131,0.089720658957958,-0.040179327130318,-0.042004775255919,-0.051798190921545,-0.246293604373932,0.009882444515824,0.198546096682549));
res += mul(Get(s1,0,0), float4x4(-0.082217246294022,-0.073841810226440,-0.003951697144657,0.007958940230310,-0.027246635407209,-0.021994253620505,-0.102203011512756,-0.088259741663933,-0.087833344936371,-0.129205703735352,-0.075604505836964,-0.083559356629848,-0.152318149805069,-0.012428953312337,0.128028348088264,-0.121694095432758));
res += mul(Get(s1,0,dy), float4x4(-0.202303126454353,-0.098676495254040,0.093252427875996,0.116099663078785,0.060406718403101,-0.108743950724602,-0.082917362451553,-0.365015536546707,0.064115300774574,-0.232628330588341,0.159285798668861,-0.083888478577137,0.000199676782358,0.047635938972235,-0.126802012324333,0.223275423049927));
res += mul(Get(s1,dx,-dy), float4x4(0.047859847545624,0.134428188204765,-0.071926370263100,0.138889566063881,0.041414808481932,0.108221113681793,0.150184482336044,0.045285452157259,0.179860487580299,-0.118266761302948,-0.129926338791847,0.081672839820385,0.076790004968643,-0.074468068778515,0.219624504446983,-0.024905383586884));
res += mul(Get(s1,dx,0), float4x4(0.080236524343491,0.078854836523533,0.002562545705587,0.104043774306774,-0.113218270242214,0.262966156005859,0.152605682611465,0.079670123755932,0.012575897388160,0.062690839171410,0.175597205758095,0.100415110588074,-0.052600882947445,0.067004807293415,0.165756598114967,-0.061950080096722));
res += mul(Get(s1,dx,dy), float4x4(-0.047186508774757,-0.083621077239513,0.167977780103683,0.170973107218742,0.117027297616005,-0.233437955379486,0.037901211529970,-0.100576154887676,0.128331035375595,0.010911192744970,-0.075775697827339,0.062721274793148,0.127648726105690,-0.062187127768993,0.010268139652908,-0.286937057971954));
res += mul(Get(s2,-dx,-dy), float4x4(-0.082816444337368,0.024422761052847,0.044737502932549,-0.043994765728712,-0.062570244073868,0.073724575340748,0.049138817936182,0.096928566694260,0.126736581325531,0.100461468100548,0.016398943960667,0.043691769242287,-0.109450340270996,0.078436158597469,0.090234316885471,0.080541953444481));
res += mul(Get(s2,-dx,0), float4x4(0.021880958229303,-0.215033710002899,0.108510352671146,0.170695513486862,-0.193312585353851,-0.004521974362433,-0.058730673044920,-0.015519866719842,-0.016508286818862,-0.010405087843537,0.079975768923759,-0.076947234570980,-0.031809318810701,0.101364031434059,0.008649221621454,-0.083636626601219));
res += mul(Get(s2,-dx,dy), float4x4(-0.018359089270234,-0.101771123707294,-0.039272125810385,-0.039282098412514,-0.060692958533764,0.106206856667995,0.015911754220724,0.128276377916336,-0.075117915868759,-0.097585953772068,-0.133907720446587,-0.077757775783539,0.099290579557419,-0.227655813097954,0.125499457120895,0.194130793213844));
res += mul(Get(s2,0,-dy), float4x4(0.188137441873550,0.115540504455566,0.058049827814102,-0.038783762603998,0.120308928191662,-0.056812006980181,0.051597177982330,-0.007343621924520,-0.059656903147697,0.068748272955418,0.214054509997368,-0.046200200915337,0.055802233517170,0.233331933617592,0.041389759629965,0.045912593603134));
res += mul(Get(s2,0,0), float4x4(0.047076042741537,-0.192398384213448,0.073648065328598,-0.140478774905205,-0.062853313982487,-0.080985523760319,0.047689504921436,-0.075619153678417,0.057816375046968,0.129809215664864,-0.041225139051676,-0.016955832019448,0.084174297749996,0.084399133920670,0.079560287296772,0.064893513917923));
res += mul(Get(s2,0,dy), float4x4(0.094948917627335,0.160467162728310,0.038154609501362,-0.123441167175770,0.033281832933426,-0.097797296941280,-0.051468133926392,0.032396979629993,-0.048033587634563,-0.077792458236217,-0.059439662843943,-0.047681204974651,0.093182519078255,-0.048639595508575,-0.141675204038620,-0.091569982469082));
res += mul(Get(s2,dx,-dy), float4x4(-0.007104327436537,-0.045586869120598,-0.165598973631859,-0.066792212426662,-0.095440022647381,0.212920904159546,-0.023886738345027,0.122442863881588,0.165168076753616,0.012842302210629,0.050366893410683,-0.063252016901970,0.181093007326126,-0.141940861940384,0.118930526077747,-0.266934901475906));
res += mul(Get(s2,dx,0), float4x4(-0.043894689530134,0.061084594577551,-0.044982329010963,0.041534382849932,-0.266358494758606,-0.011219055391848,0.100760065019131,0.236375093460083,0.027659747749567,-0.023757744580507,0.007710296660662,0.049875043332577,0.159278094768524,0.013233952224255,0.194783002138138,-0.107529349625111));
res += mul(Get(s2,dx,dy), float4x4(0.061652477830648,-0.129985675215721,-0.225102931261063,-0.228648245334625,-0.088465243577957,-0.130075201392174,0.127202793955803,-0.152164801955223,-0.142369583249092,-0.089981108903885,-0.163874492049217,0.132822811603546,-0.029962582513690,-0.000862419430632,-0.104341641068459,0.012442330829799));
res += mul(Get(s3,-dx,-dy), float4x4(-0.063957348465919,0.031007187440991,-0.096116334199905,-0.173107862472534,-0.098098978400230,0.039832457900047,-0.139851972460747,0.058308228850365,0.116785489022732,-0.043877001851797,-0.084287032485008,0.014452937990427,-0.094310477375984,-0.015204539522529,-0.037649683654308,0.238936156034470));
res += mul(Get(s3,-dx,0), float4x4(-0.056190378963947,-0.060184925794601,0.055979233235121,-0.154330253601074,0.076179005205631,0.002968313405290,-0.033361770212650,-0.077426664531231,0.082920268177986,0.164169043302536,-0.004630024544895,-0.104574367403984,0.009193983860314,0.101220294833183,-0.166023761034012,0.150599449872971));
res += mul(Get(s3,-dx,dy), float4x4(0.098685950040817,0.052870120853186,-0.144229322671890,0.093968525528908,-0.006874340586364,0.056798018515110,0.087907999753952,0.035251338034868,0.175265341997147,-0.049016494303942,0.090000897645950,0.180656239390373,0.030921339988708,-0.095313042402267,-0.174250707030296,-0.126489400863647));
res += mul(Get(s3,0,-dy), float4x4(0.070655874907970,0.188100740313530,0.037888728082180,0.140265509486198,0.141772747039795,0.154692143201828,-0.187664031982422,-0.068339072167873,0.129360407590866,-0.023154731839895,-0.016661988571286,-0.136368528008461,0.117759421467781,-0.034060604870319,0.070207603275776,0.017503149807453));
res += mul(Get(s3,0,0), float4x4(-0.019260443747044,0.114988721907139,-0.032877024263144,0.101183786988258,-0.008877598680556,-0.013708643615246,-0.079901322722435,-0.096979193389416,0.007854165509343,0.011739141307771,0.025540651753545,-0.046863932162523,0.009356006979942,0.031211761757731,0.062053453177214,0.159581765532494));
res += mul(Get(s3,0,dy), float4x4(0.199850708246231,-0.095861248672009,0.094854161143303,-0.157965719699860,0.157576948404312,-0.080930814146996,0.042781803756952,-0.119740709662437,-0.128595396876335,-0.085952259600163,0.061345059424639,0.211347416043282,-0.175567448139191,-0.066728480160236,0.105890683829784,-0.138853520154953));
res += mul(Get(s3,dx,-dy), float4x4(-0.002539847278967,-0.002810563659295,-0.192884221673012,0.104053929448128,-0.284112244844437,0.151173904538155,-0.098122395575047,0.241940587759018,-0.043694984167814,0.129183143377304,0.091558597981930,0.130032256245613,-0.027883831411600,0.024022616446018,0.082521289587021,0.010410204529762));
res += mul(Get(s3,dx,0), float4x4(0.076403066515923,-0.048387110233307,0.012025682255626,0.029264826327562,0.032543882727623,0.129060938954353,0.178341478109360,0.005797906778753,-0.059891778975725,0.236696302890778,-0.172764152288437,-0.005915697198361,0.027489271014929,0.146254822611809,-0.087942488491535,0.049757663160563));
res += mul(Get(s3,dx,dy), float4x4(-0.014889034442604,-0.169792056083679,0.012231273576617,-0.039700314402580,-0.107719488441944,-0.059921834617853,0.072952471673489,-0.114072471857071,-0.032184928655624,-0.268681377172470,-0.088999994099140,0.070307753980160,-0.267959713935852,0.038512833416462,-0.007519467733800,0.081895031034946));
return max(float4(0,0,0,0), res);
}
