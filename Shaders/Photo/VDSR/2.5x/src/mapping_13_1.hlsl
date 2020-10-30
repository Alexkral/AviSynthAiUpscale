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
res += mul(Get(s0,-dx,-dy), float4x4(0.023962028324604,-0.012036470696330,-0.128011748194695,-0.047347169369459,0.073153257369995,-0.118420660495758,0.024596285074949,-0.116221278905869,0.006292949430645,0.026261769235134,0.002564738504589,0.138596266508102,0.108479492366314,-0.063335128128529,0.131727457046509,-0.058736957609653));
res += mul(Get(s0,-dx,0), float4x4(0.020348137244582,-0.015104677528143,0.244200035929680,0.080856688320637,0.005766993854195,0.037106130272150,0.022435033693910,0.045822005718946,-0.027406016364694,0.012412280775607,0.136193320155144,0.045607846230268,-0.011880251578987,-0.125070393085480,-0.030542712658644,-0.128917858004570));
res += mul(Get(s0,-dx,dy), float4x4(0.012429362162948,-0.027480276301503,-0.083323121070862,-0.021335272118449,0.170138210058212,-0.003132978221402,0.007237619720399,-0.032389197498560,0.015595895238221,0.013427416794002,-0.068402260541916,-0.047852840274572,-0.030887275934219,-0.054448869079351,0.063790664076805,0.102731361985207));
res += mul(Get(s0,0,-dy), float4x4(-0.095379635691643,0.068618126213551,0.033545207232237,0.105075113475323,-0.002925641601905,0.005106755532324,-0.011001292616129,-0.096081227064133,0.061142962425947,0.006728433538228,0.009848280809820,-0.138073489069939,-0.004995560273528,-0.038153562694788,0.011207331903279,0.078702047467232));
res += mul(Get(s0,0,0), float4x4(-0.018030950799584,-0.059756856411695,0.245548918843269,0.020306963473558,-0.041289929300547,-0.010271112434566,0.008236069232225,0.071662493050098,0.020824085921049,0.105645954608917,0.059357836842537,-0.051506120711565,-0.026683881878853,-0.017089052125812,-0.085423924028873,0.078248463571072));
res += mul(Get(s0,0,dy), float4x4(-0.059312481433153,-0.080121286213398,-0.019276721403003,-0.020945606753230,0.070070676505566,0.081236019730568,0.025131048634648,0.026633288711309,0.072536796331406,-0.041480697691441,-0.059011511504650,0.061405878514051,-0.026975488290191,-0.064151152968407,0.012605664320290,0.162849813699722));
res += mul(Get(s0,dx,-dy), float4x4(-0.080325484275818,-0.008746481500566,-0.131282672286034,-0.084389053285122,-0.143075868487358,-0.001870063715614,-0.040692552924156,-0.077531769871712,0.083348073065281,-0.075220845639706,-0.098151326179504,-0.006768289953470,0.002876267535612,-0.042267628014088,-0.049699027091265,0.024887252599001));
res += mul(Get(s0,dx,0), float4x4(-0.075362689793110,0.152318194508553,0.093747019767761,-0.082312814891338,-0.045391615480185,-0.026293048635125,-0.040771134197712,0.088159255683422,-0.018992220982909,0.025332383811474,-0.012518423609436,0.009662533178926,-0.031530812382698,0.025598095729947,-0.051190417259932,-0.026632759720087));
res += mul(Get(s0,dx,dy), float4x4(0.051390800625086,0.051069084554911,-0.082727476954460,-0.011700936593115,-0.040312472730875,-0.010376819409430,-0.144395753741264,-0.022499868646264,0.062103241682053,-0.051793098449707,-0.274878799915314,0.112753733992577,0.047090370208025,0.058158569037914,0.009511761367321,0.038359407335520));
res += mul(Get(s1,-dx,-dy), float4x4(-0.064239412546158,-0.043971821665764,-0.028211003169417,-0.082301348447800,-0.001105641946197,0.033441338688135,-0.092564821243286,0.035410605370998,0.055543318390846,-0.055059045553207,0.057604681700468,0.113424763083458,-0.108740746974945,0.076915763318539,0.059635497629642,0.222773030400276));
res += mul(Get(s1,-dx,0), float4x4(-0.002678944962099,0.032127600163221,0.016771484166384,-0.006725141312927,0.010348933748901,-0.034861464053392,0.138760879635811,-0.046223718672991,-0.018684454262257,0.001564611447975,0.133186399936676,0.063409410417080,-0.110387250781059,0.121462963521481,0.058417662978172,0.059792689979076));
res += mul(Get(s1,-dx,dy), float4x4(0.028367668390274,-0.005123004782945,-0.027242470532656,0.115798532962799,0.104321338236332,-0.119577541947365,0.169921740889549,-0.001512801740319,0.035051692277193,0.020549671724439,0.045036092400551,0.024487983435392,-0.090438440442085,-0.050836861133575,0.062203083187342,-0.043761834502220));
res += mul(Get(s1,0,-dy), float4x4(0.117044597864151,-0.140621200203896,0.060218919068575,0.003464692737907,0.074599042534828,-0.079952731728554,0.100925043225288,0.010350743308663,0.026143454015255,0.316876113414764,-0.105098932981491,0.074197188019753,0.006271863356233,-0.076085001230240,0.005710750352591,0.042208712548018));
res += mul(Get(s1,0,0), float4x4(-0.099036820232868,0.122157849371433,0.109095208346844,0.008004291914403,0.175805687904358,0.013866527937353,0.047603558748960,0.055353693664074,-0.009617809206247,0.280040472745895,0.207641527056694,0.002466707024723,0.060985274612904,0.027894087135792,-0.037254806607962,0.042521089315414));
res += mul(Get(s1,0,dy), float4x4(0.027830386534333,0.048797681927681,-0.058890260756016,-0.025571474805474,-0.093743473291397,-0.044864930212498,-0.050155170261860,-0.051147792488337,0.010488638654351,-0.036831483244896,0.018707135692239,0.016459401696920,0.130062356591225,0.016105830669403,-0.039383154362440,-0.010216112248600));
res += mul(Get(s1,dx,-dy), float4x4(-0.103762529790401,-0.086269296705723,-0.013038396835327,0.146781697869301,0.191744953393936,-0.123986385762691,-0.017295682802796,0.047234874218702,0.094219185411930,0.022989282384515,-0.071379877626896,0.051811847835779,0.018810233101249,0.129115179181099,0.036884829401970,-0.115375302731991));
res += mul(Get(s1,dx,0), float4x4(0.080369524657726,-0.048569127917290,0.057205490767956,0.034699108451605,-0.132926359772682,-0.021135708317161,-0.047286290675402,0.048797413706779,0.088807404041290,0.030160641297698,0.178291112184525,-0.010066318325698,-0.042284637689590,0.061704549938440,-0.021111831068993,-0.183780208230019));
res += mul(Get(s1,dx,dy), float4x4(0.076360270380974,-0.021061286330223,-0.093594513833523,-0.076832197606564,-0.096681550145149,-0.044598989188671,-0.084431320428848,-0.030740907415748,0.027309214696288,0.067663080990314,0.024821229279041,-0.029100496321917,-0.024371640756726,0.019865106791258,-0.110768288373947,-0.028273973613977));
res += mul(Get(s2,-dx,-dy), float4x4(-0.104611903429031,0.013580452650785,0.050746127963066,-0.027839263901114,0.081318423151970,0.004771600477397,-0.077599488198757,-0.087817952036858,-0.017382888123393,-0.028293507173657,0.024924870580435,0.050640717148781,0.102394439280033,0.036003250628710,0.003739678766578,-0.038777410984039));
res += mul(Get(s2,-dx,0), float4x4(-0.089147128164768,-0.004024746362120,-0.028268558904529,0.003801446873695,0.087045021355152,0.007597465533763,-0.064980097115040,-0.038432400673628,-0.068982407450676,0.035102576017380,0.040155347436666,0.003149534808472,0.018549550324678,-0.093460112810135,-0.011836277320981,0.027304220944643));
res += mul(Get(s2,-dx,dy), float4x4(-0.087864160537720,-0.042991135269403,0.026297830045223,-0.072070546448231,0.131370216608047,-0.120239153504372,-0.030876701697707,0.011753335595131,0.001921641873196,0.032200153917074,-0.048424661159515,0.023302923887968,0.035168323665857,0.029135689139366,-0.101869747042656,-0.046718511730433));
res += mul(Get(s2,0,-dy), float4x4(0.033770889043808,-0.147833406925201,-0.025148723274469,-0.094142064452171,-0.055491879582405,0.001303013996221,0.124809384346008,0.056921239942312,-0.004005783703178,0.027075152844191,0.101803757250309,-0.099413126707077,0.029598370194435,0.088971674442291,0.075488872826099,0.000636656419374));
res += mul(Get(s2,0,0), float4x4(0.045608915388584,0.013585270382464,0.039306327700615,0.038533177226782,-0.150186866521835,0.083450570702553,0.201021179556847,0.011654116213322,-0.066779814660549,0.001991596538574,0.102264814078808,-0.054974686354399,0.069884628057480,0.092730030417442,-0.027774622663856,0.035306531935930));
res += mul(Get(s2,0,dy), float4x4(0.037243001163006,0.051840431988239,-0.069399811327457,-0.016732271760702,-0.084492728114128,-0.121263228356838,0.045836318284273,0.002084583742544,0.042624987661839,0.037906866520643,0.108226411044598,0.104174800217152,-0.050350978970528,0.166294306516647,-0.032165620476007,-0.093585871160030));
res += mul(Get(s2,dx,-dy), float4x4(-0.132965534925461,-0.048342395573854,-0.018215343356133,0.027313668280840,-0.052634075284004,-0.150757879018784,-0.155216485261917,0.287687748670578,-0.111945100128651,0.213234901428223,-0.056444466114044,-0.026997031643987,-0.091932803392410,-0.009532801806927,-0.047072347253561,0.000795493891928));
res += mul(Get(s2,dx,0), float4x4(-0.012090829201043,0.084097750484943,-0.064491778612137,0.021663235500455,0.047345627099276,-0.082525812089443,-0.219484150409698,0.013287144713104,-0.030824745073915,0.081351570785046,-0.048713289201260,-0.023586535826325,-0.144389241933823,-0.031964294612408,-0.043485436588526,0.087117299437523));
res += mul(Get(s2,dx,dy), float4x4(-0.054938025772572,0.005979692563415,-0.000886732945219,-0.038329049944878,-0.090835571289063,-0.074134193360806,-0.285366803407669,-0.031129160895944,-0.051540616899729,0.058249268680811,-0.069234363734722,0.161671578884125,-0.026872361078858,-0.115569360554218,-0.015808016061783,-0.010811011306942));
res += mul(Get(s3,-dx,-dy), float4x4(0.138129457831383,0.065053649246693,-0.022164231166244,-0.024422558024526,-0.026353741064668,-0.090529456734657,0.017736354842782,-0.017828978598118,-0.069291137158871,0.061584342271090,0.013298349454999,0.216492906212807,0.177968189120293,-0.084138147532940,0.148648917675018,-0.010642850771546));
res += mul(Get(s3,-dx,0), float4x4(0.036547869443893,-0.061477269977331,0.022989407181740,-0.041086822748184,-0.044196683913469,-0.038875356316566,-0.157999038696289,0.073337227106094,-0.017094448208809,0.024036403745413,0.041397742927074,0.021420856937766,0.137925922870636,-0.160666704177856,0.013434452936053,-0.001403147238307));
res += mul(Get(s3,-dx,dy), float4x4(0.109202124178410,-0.068487711250782,-0.013606052845716,-0.044996723532677,-0.020988930016756,-0.039728585630655,-0.045256990939379,-0.022191368043423,-0.127237632870674,-0.070143058896065,0.062417000532150,-0.039423257112503,0.129216536879539,-0.215656951069832,-0.024278294295073,-0.022943753749132));
res += mul(Get(s3,0,-dy), float4x4(0.054520115256310,-0.014835547655821,-0.019294293597341,-0.003810626920313,-0.081538841128349,0.069564670324326,0.132200285792351,-0.120431855320930,-0.000959835655522,-0.090723745524883,0.030220862478018,0.024316420778632,0.107377290725708,-0.021975155919790,-0.012875294312835,0.008892957121134));
res += mul(Get(s3,0,0), float4x4(-0.058878045529127,-0.040827322751284,-0.044771995395422,0.066475301980972,-0.072683282196522,0.022320017218590,0.286494344472885,0.045859277248383,0.031096834689379,0.029877074062824,0.021390818059444,-0.047833811491728,-0.045836471021175,0.057815402746201,0.005635954439640,0.012999923899770));
res += mul(Get(s3,0,dy), float4x4(-0.022567240521312,-0.101034931838512,-0.089194156229496,0.085214860737324,-0.023326938971877,0.029867304489017,0.165492102503777,0.040494617074728,0.004533372819424,0.036662627011538,0.047917433083057,-0.097772665321827,0.085005410015583,-0.114815033972263,0.024182813242078,0.098990418016911));
res += mul(Get(s3,dx,-dy), float4x4(-0.032989207655191,0.209841117262840,-0.083325862884521,-0.052107095718384,-0.026010310277343,0.013781380839646,-0.016047284007072,-0.184665039181709,0.175947934389114,-0.157388895750046,0.019745441153646,-0.012643796391785,0.068096473813057,-0.031190248206258,-0.077806629240513,-0.001103532384150));
res += mul(Get(s3,dx,0), float4x4(-0.027803961187601,0.154182836413383,-0.117621548473835,-0.011392537504435,0.143952205777168,-0.092749081552029,-0.089970394968987,-0.002953913528472,0.076755523681641,-0.029611334204674,-0.106808967888355,-0.061167400330305,0.037275381386280,0.079078167676926,0.065241165459156,-0.012331809848547));
res += mul(Get(s3,dx,dy), float4x4(-0.165045067667961,0.075463235378265,0.031464383006096,-0.066135495901108,0.066467635333538,0.040222715586424,-0.020029054954648,-0.070409618318081,0.066517338156700,0.034647341817617,-0.050762742757797,-0.119411319494247,-0.017241729423404,0.001044095959514,0.032133173197508,-0.021503353491426));
return max(float4(0,0,0,0), res);
}
