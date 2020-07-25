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
res += mul(Get(s0,-dx,-dy), float4x4(-0.158496528863907,-0.036961775273085,0.083564564585686,-0.034397721290588,0.033717673271894,0.183282658457756,0.051673386245966,-0.001335739507340,0.016247242689133,0.042443685233593,0.081988885998726,-0.114253953099251,0.247611522674561,-0.125246271491051,-0.073199845850468,-0.065087318420410));
res += mul(Get(s0,-dx,0), float4x4(-0.067063048481941,-0.059271126985550,0.108685053884983,0.067321397364140,-0.036766562610865,0.251980185508728,0.005831784103066,0.062631182372570,-0.043367754667997,0.002853689948097,-0.367658883333206,0.147825330495834,0.009430693462491,-0.083214618265629,0.079341478645802,-0.150391951203346));
res += mul(Get(s0,-dx,dy), float4x4(-0.121667914092541,0.039228640496731,-0.135212540626526,0.055299054831266,0.093975424766541,0.299989759922028,-0.063025139272213,-0.147406607866287,0.004826143849641,0.040771879255772,0.057237863540649,0.081785842776299,0.186187073588371,-0.185176670551300,-0.109853528439999,0.013050745241344));
res += mul(Get(s0,0,-dy), float4x4(0.122618533670902,-0.013739858753979,0.055719614028931,0.015511231496930,0.080863445997238,-0.211304351687431,0.004433468449861,0.029212983325124,-0.084331452846527,0.002550001256168,0.125581905245781,0.099339880049229,-0.024063622578979,-0.026264740154147,-0.045577045530081,-0.259473532438278));
res += mul(Get(s0,0,0), float4x4(-0.020483570173383,-0.153342306613922,0.158710330724716,0.178398251533508,0.003792489413172,0.091610930860043,-0.117262385785580,0.033820513635874,-0.038900002837181,0.035262007266283,0.092690669000149,-0.048982296139002,0.242881745100021,0.001768715796061,0.085988394916058,0.048758875578642));
res += mul(Get(s0,0,dy), float4x4(0.112449005246162,0.081591911613941,0.114809885621071,0.088815346360207,-0.137511610984802,0.062812931835651,-0.143315657973289,0.094067551195621,0.013089243322611,-0.100060157477856,0.206751793622971,0.029148718342185,0.236940607428551,-0.113408595323563,0.025185607373714,0.057310659438372));
res += mul(Get(s0,dx,-dy), float4x4(0.184542119503021,0.186554148793221,-0.006504052784294,0.050077699124813,0.036925766617060,0.024085948243737,-0.104811683297157,-0.252307087182999,-0.105573698878288,-0.097797453403473,0.087833836674690,0.200599953532219,-0.066318504512310,-0.022208578884602,0.044593136757612,-0.030495831742883));
res += mul(Get(s0,dx,0), float4x4(0.140466660261154,-0.090645805001259,-0.097387425601482,0.104762621223927,-0.077708959579468,0.127551794052124,0.138961732387543,0.048275973647833,0.006349037401378,-0.075384899973869,0.330720245838165,0.108381167054176,-0.080207251012325,0.030422748997808,0.346148729324341,0.141105860471725));
res += mul(Get(s0,dx,dy), float4x4(0.124492600560188,0.078565999865532,-0.098176755011082,0.098281517624855,-0.121195629239082,0.032861184328794,-0.155215531587601,0.226659566164017,0.050059150904417,-0.159210950136185,0.030204113572836,0.171117231249809,-0.063889913260937,0.075234718620777,0.051680404692888,0.105210170149803));
res += mul(Get(s1,-dx,-dy), float4x4(-0.203950777649879,0.020824808627367,-0.059396572411060,0.049789380282164,0.025310385972261,0.066426098346710,0.021344844251871,-0.040977943688631,-0.054322939366102,0.089324228465557,-0.096769198775291,0.040867663919926,-0.290607661008835,0.159962818026543,0.016844226047397,0.171163380146027));
res += mul(Get(s1,-dx,0), float4x4(-0.210074871778488,0.007297138217837,-0.073325924575329,0.131629869341850,0.050503648817539,0.090838119387627,0.058279022574425,-0.001144074136391,0.188203603029251,-0.068567335605621,-0.091475762426853,0.063799530267715,0.060864344239235,0.082136832177639,-0.066030874848366,-0.113235667347908));
res += mul(Get(s1,-dx,dy), float4x4(0.005797149613500,-0.124112002551556,0.008817500434816,-0.067321039736271,0.029052121564746,0.045473590493202,-0.052489258348942,-0.018234314396977,-0.079174727201462,0.117044217884541,-0.019737470895052,0.013514317572117,-0.001019261311740,0.010657662525773,0.029275249689817,0.103432975709438));
res += mul(Get(s1,0,-dy), float4x4(0.162826776504517,-0.027585910633206,0.024860411882401,-0.056286748498678,-0.010004738345742,0.018753994256258,-0.025997376069427,0.124845631420612,-0.062309589236975,-0.175439402461052,-0.053472518920898,-0.023665491491556,-0.167823433876038,0.093002758920193,0.158078446984291,-0.033254243433475));
res += mul(Get(s1,0,0), float4x4(-0.091796591877937,-0.020118610933423,0.096816629171371,-0.059631966054440,0.079706102609634,0.137686565518379,0.099400110542774,-0.135525465011597,-0.037951372563839,-0.064886346459389,0.119079291820526,0.208991929888725,-0.161888450384140,0.027507375925779,0.039687138050795,-0.241317182779312));
res += mul(Get(s1,0,dy), float4x4(0.145367056131363,0.037285376340151,0.231669932603836,-0.264882147312164,0.094544023275375,-0.049401693046093,0.006962011568248,0.035888958722353,-0.019205084070563,0.165898174047470,-0.073535449802876,0.109365262091160,0.138952717185020,0.045486163347960,-0.052181985229254,0.081122331321239));
res += mul(Get(s1,dx,-dy), float4x4(0.058114383369684,-0.116542443633080,-0.001062405644916,-0.169293627142906,0.010397464968264,0.029316375032067,-0.097677879035473,0.000552792858798,-0.051235038787127,-0.002411863533780,0.064656965434551,-0.181161522865295,-0.088814280927181,-0.078358218073845,0.043653573840857,0.003031748812646));
res += mul(Get(s1,dx,0), float4x4(-0.019734311848879,-0.070505484938622,-0.155683577060699,0.110783345997334,0.069058991968632,-0.115339562296867,-0.058158442378044,-0.089780904352665,-0.043929629027843,-0.074293732643127,-0.246284946799278,0.036250393837690,0.020131703466177,0.042987227439880,-0.064065515995026,-0.125253781676292));
res += mul(Get(s1,dx,dy), float4x4(0.020409829914570,0.105286739766598,-0.004966624081135,-0.073279850184917,0.036979250609875,-0.005395472981036,0.091770797967911,0.104768797755241,0.031152402982116,0.028974447399378,-0.088474452495575,-0.078173130750656,-0.042925104498863,-0.049270935356617,-0.058048579841852,0.047867566347122));
res += mul(Get(s2,-dx,-dy), float4x4(0.139162346720695,0.016775691881776,0.164497211575508,0.078676104545593,-0.089208081364632,0.315998494625092,0.028610918670893,-0.100784994661808,0.094755709171295,0.105054378509521,-0.063941001892090,0.098271436989307,-0.061462007462978,-0.036791391670704,-0.231727808713913,0.133889421820641));
res += mul(Get(s2,-dx,0), float4x4(0.042703155428171,0.332742542028427,0.071376278996468,0.103671364486217,-0.009785084053874,0.015709890052676,0.077333457767963,0.080629296600819,-0.057084344327450,0.123060576617718,0.193150863051414,-0.031519137322903,-0.025242269039154,-0.085562780499458,-0.005757111590356,0.125972494482994));
res += mul(Get(s2,-dx,dy), float4x4(-0.008497216738760,-0.091918632388115,0.001517270342447,0.206021264195442,-0.228244930505753,-0.165127873420715,0.122950285673141,-0.084775887429714,0.116162434220314,0.171749249100685,-0.174544557929039,0.124144203960896,-0.069881618022919,-0.145777359604836,0.053241781890392,0.031224915757775));
res += mul(Get(s2,0,-dy), float4x4(0.127736598253250,-0.061891663819551,0.049792028963566,0.010763923637569,-0.089120395481586,0.045440312474966,-0.089281029999256,0.113188907504082,-0.127129986882210,0.088802620768547,-0.129899382591248,0.049777772277594,-0.176140442490578,-0.054215680807829,-0.130777418613434,0.180454477667809));
res += mul(Get(s2,0,0), float4x4(0.057281471788883,-0.027638865634799,-0.172465458512306,0.114822298288345,0.171233847737312,-0.027380723506212,-0.002806959208101,0.261113286018372,-0.000491401820909,-0.164701417088509,0.132198140025139,0.076148733496666,-0.010166115127504,0.019239608198404,-0.054084718227386,-0.107342615723610));
res += mul(Get(s2,0,dy), float4x4(0.085122853517532,0.002377585507929,0.141810700297356,0.073676072061062,0.231728240847588,-0.023845262825489,0.179867804050446,0.011602506041527,-0.008586330339313,-0.045691229403019,0.096862815320492,0.022322900593281,-0.044825397431850,-0.095823369920254,-0.075459174811840,-0.163090080022812));
res += mul(Get(s2,dx,-dy), float4x4(0.004886648617685,0.192367658019066,0.000485730182845,-0.009205712005496,-0.132837474346161,-0.091408178210258,-0.122013635933399,0.006203922908753,0.009925071150064,-0.127731353044510,0.069439806044102,0.169891402125359,-0.195291981101036,-0.201118528842926,-0.014003810472786,0.195883497595787));
res += mul(Get(s2,dx,0), float4x4(0.091950707137585,-0.011375009082258,0.037590395659208,0.046971272677183,0.319654107093811,-0.116317994892597,0.022662814706564,-0.097580216825008,0.115101329982281,0.069662272930145,-0.138748288154602,0.264750093221664,-0.023929759860039,-0.020764362066984,-0.174888178706169,-0.019381321966648));
res += mul(Get(s2,dx,dy), float4x4(-0.001962597016245,-0.182185828685760,0.017900904640555,0.069472461938858,0.023775391280651,0.032128430902958,-0.135735675692558,0.123133480548859,0.050938889384270,-0.087831407785416,-0.057640835642815,-0.054515872150660,0.018823653459549,0.002147364895791,-0.089072495698929,-0.057799298316240));
res += mul(Get(s3,-dx,-dy), float4x4(0.078514471650124,0.266463071107864,-0.055167391896248,0.027211215347052,0.063089616596699,0.030726110562682,0.069740168750286,0.115669213235378,-0.083324931561947,0.051111143082380,0.090816453099251,0.085041671991348,-0.014139853417873,0.024421431124210,0.138713985681534,-0.216098651289940));
res += mul(Get(s3,-dx,0), float4x4(-0.029941802844405,0.112837597727776,-0.154179126024246,-0.013984909281135,0.383581846952438,0.193439930677414,-0.064214594662189,0.068939611315727,0.110000617802143,-0.007845858111978,-0.054024524986744,-0.008046815171838,0.093130409717560,0.040082529187202,-0.050628811120987,-0.013477982953191));
res += mul(Get(s3,-dx,dy), float4x4(0.076222941279411,-0.186358287930489,0.151771277189255,0.017585724592209,-0.116007044911385,-0.065688043832779,-0.045494131743908,0.030802410095930,0.035204049199820,0.093191176652908,-0.048144564032555,-0.182543918490410,-0.087312228977680,-0.055514808744192,0.066495023667812,0.118939504027367));
res += mul(Get(s3,0,-dy), float4x4(0.053862012922764,-0.055299572646618,0.076612018048763,0.031518373638391,-0.050384875386953,0.071771651506424,-0.132546707987785,0.125953391194344,0.025733919814229,0.009278905577958,-0.032710805535316,0.052214358001947,0.055930275470018,-0.051714912056923,-0.151845887303352,0.108866930007935));
res += mul(Get(s3,0,0), float4x4(0.111859425902367,-0.039003800600767,-0.134041070938110,0.234898552298546,0.073049686849117,-0.002962841652334,0.167182266712189,-0.027278140187263,-0.021915132179856,-0.015262459404767,0.126833841204643,0.100444190204144,0.067877113819122,0.115563377737999,0.163093149662018,0.169637471437454));
res += mul(Get(s3,0,dy), float4x4(-0.009432175196707,-0.025941362604499,0.025136884301901,-0.045365400612354,-0.005343808326870,0.153176456689835,0.100311644375324,0.245913341641426,-0.049161706119776,-0.267801523208618,0.038268595933914,-0.067186549305916,-0.012028286233544,-0.050283264368773,-0.125352099537849,0.082337312400341));
res += mul(Get(s3,dx,-dy), float4x4(-0.034976679831743,0.238951399922371,-0.160827264189720,-0.001939061796293,0.107516661286354,0.132035732269287,-0.030930276960135,-0.202829495072365,0.023278824985027,0.043134052306414,0.254846841096878,0.112885348498821,-0.088179685175419,-0.010621409863234,0.214643761515617,0.075102560222149));
res += mul(Get(s3,dx,0), float4x4(-0.129414036870003,-0.088655777275562,0.157053261995316,-0.055472619831562,-0.032377149909735,0.024893987923861,-0.056101556867361,-0.109313264489174,-0.029266409575939,0.020893998444080,-0.078382506966591,-0.045284774154425,-0.036932542920113,-0.063669279217720,-0.217632204294205,0.188224911689758));
res += mul(Get(s3,dx,dy), float4x4(0.062898248434067,0.155502751469612,-0.092437058687210,0.278738439083099,-0.181921854615211,0.040818151086569,-0.122262820601463,-0.015031823888421,0.145303785800934,-0.063471525907516,-0.101088628172874,-0.127267777919769,0.066603481769562,-0.029613658785820,0.021187171339989,-0.084204562008381));
return max(float4(0,0,0,0), res);
}