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
res += mul(Get(s0,-dx,-dy), float4x4(-0.064981319010258,-0.094470649957657,-0.006976793520153,0.049602810293436,0.216719523072243,-0.061926610767841,-0.117618516087532,-0.001005866215564,0.069719120860100,0.001992139965296,0.051329106092453,0.071777105331421,-0.017236214131117,-0.033810026943684,0.049051925539970,0.104761824011803));
res += mul(Get(s0,-dx,0), float4x4(-0.073987655341625,-0.097152844071388,0.070442691445351,-0.067351788282394,0.114590801298618,-0.127846643328667,-0.060245476663113,-0.079910077154636,-0.076845750212669,-0.023862784728408,0.027487833052874,-0.009967193938792,-0.026036893948913,-0.077625311911106,-0.071518145501614,0.009837097488344));
res += mul(Get(s0,-dx,dy), float4x4(-0.043646931648254,-0.028471641242504,-0.058955043554306,-0.001004975754768,-0.122649617493153,-0.059332273900509,-0.107299603521824,-0.032104477286339,-0.043856896460056,0.021664472296834,-0.040696330368519,0.001913733663969,0.079782664775848,0.004617959726602,0.051050804555416,0.044104471802711));
res += mul(Get(s0,0,-dy), float4x4(-0.057072639465332,0.082990966737270,-0.019976612180471,0.287412256002426,0.136066958308220,-0.024908667430282,-0.039962857961655,-0.087474651634693,-0.126607239246368,0.029631782323122,-0.038958612829447,-0.095328830182552,-0.063704214990139,-0.038472916930914,-0.040560051798820,-0.077619381248951));
res += mul(Get(s0,0,0), float4x4(-0.052708134055138,0.002812101738527,-0.026154065504670,-0.047553755342960,-0.017032399773598,-0.106746762990952,-0.038494993001223,-0.099689558148384,-0.112005367875099,0.008993370458484,0.053875509649515,-0.208564445376396,-0.062074344605207,-0.031647443771362,-0.109050907194614,-0.155140042304993));
res += mul(Get(s0,0,dy), float4x4(0.009615430608392,0.071055039763451,-0.146240890026093,-0.042166616767645,-0.083705507218838,-0.037557963281870,-0.088869802653790,-0.034093301743269,0.113199159502983,0.051514413207769,-0.043740931898355,-0.073594816029072,0.010473397560418,0.017846327275038,-0.049971457570791,-0.123786121606827));
res += mul(Get(s0,dx,-dy), float4x4(-0.083437092602253,-0.095859251916409,0.057357847690582,0.179193288087845,0.141928344964981,0.043964333832264,-0.118170030415058,-0.049648098647594,-0.085561119019985,-0.006315501872450,0.036381572484970,0.131042078137398,0.032855354249477,0.032462209463120,0.016287289559841,-0.041278425604105));
res += mul(Get(s0,dx,0), float4x4(-0.079989589750767,-0.109984926879406,-0.027365565299988,0.036660671234131,0.116318821907043,0.017757723107934,-0.100524373352528,0.043346185237169,0.048422496765852,-0.010902758687735,-0.025225169956684,0.079556964337826,-0.087618403136730,-0.056412909179926,-0.047022987157106,0.182787060737610));
res += mul(Get(s0,dx,dy), float4x4(-0.090045519173145,-0.020684577524662,-0.093528285622597,0.127893105149269,0.227315634489059,0.103181146085262,-0.003860470373183,0.146520987153053,0.124562814831734,0.062266755849123,-0.011076389811933,0.009233729913831,-0.024902943521738,0.013135069981217,0.085321769118309,0.034762177616358));
res += mul(Get(s1,-dx,-dy), float4x4(0.001052224659361,0.015845140442252,0.030459299683571,-0.132605463266373,-0.033186167478561,0.003801518585533,0.080776900053024,-0.002152445958927,-0.064947880804539,0.001815994270146,-0.122943028807640,0.061612591147423,-0.065516889095306,0.040908940136433,0.044340856373310,0.053834199905396));
res += mul(Get(s1,-dx,0), float4x4(0.167032554745674,-0.037107471376657,-0.066538244485855,-0.023667072877288,0.016567546874285,0.100116781890392,-0.122072979807854,-0.083696253597736,-0.046960320323706,0.057221647351980,0.075662769377232,-0.023828247562051,-0.135401099920273,-0.036554608494043,0.015518728643656,0.080418661236763));
res += mul(Get(s1,-dx,dy), float4x4(-0.055911090224981,0.117792256176472,0.141722470521927,-0.012018226087093,0.046604361385107,0.080747433006763,0.227856561541557,-0.142761275172234,0.192230150103569,0.287687927484512,0.150770291686058,-0.055921003222466,-0.008618329651654,-0.011850638315082,-0.026181951165199,-0.072929076850414));
res += mul(Get(s1,0,-dy), float4x4(0.018137510865927,-0.024843808263540,-0.067046567797661,0.037518478929996,0.007381150498986,-0.137947112321854,0.035811945796013,-0.084276571869850,0.017759492620826,-0.035814754664898,0.064626947045326,-0.043510880321264,-0.078819409012794,0.058931883424520,-0.096194498240948,-0.067175582051277));
res += mul(Get(s1,0,0), float4x4(0.063966125249863,0.015151781961322,-0.012112377211452,-0.048217426985502,-0.157109394669533,-0.034442923963070,0.125691607594490,-0.041205611079931,-0.011123332194984,0.009055709466338,0.098282881081104,-0.084578841924667,-0.063472457230091,0.014663758687675,0.042772620916367,0.028219543397427));
res += mul(Get(s1,0,dy), float4x4(0.082055531442165,-0.004840410780162,0.077705331146717,0.242205038666725,0.013101958669722,-0.069141700863838,-0.088964670896530,-0.092388592660427,0.027903974056244,0.171255588531494,0.111290700733662,0.032993651926517,0.039747525006533,-0.050509400665760,0.074347846210003,-0.026196705177426));
res += mul(Get(s1,dx,-dy), float4x4(-0.128165319561958,-0.057849142700434,-0.041672419756651,-0.054149642586708,-0.113271124660969,-0.073765926063061,-0.127021491527557,-0.021939903497696,-0.016944747418165,-0.045167591422796,-0.109722882509232,0.123555295169353,-0.156970202922821,0.068060532212257,-0.023334819823503,0.126475572586060));
res += mul(Get(s1,dx,0), float4x4(-0.065629556775093,-0.077542454004288,-0.004815385676920,0.037032369524240,0.027031231671572,-0.008911482058465,0.179901853203773,-0.031283248215914,-0.082790613174438,-0.123119883239269,0.032254714518785,0.005616930313408,-0.070177726447582,0.037304520606995,0.015469958074391,0.051174510270357));
res += mul(Get(s1,dx,dy), float4x4(0.012218479998410,-0.067396692931652,0.006725090090185,0.156061694025993,0.008928697556257,-0.021441683173180,0.168502911925316,-0.088794551789761,0.054560758173466,-0.069129176437855,-0.049612730741501,0.010677671059966,0.015304603613913,-0.113129332661629,-0.136707752943039,-0.162155523896217));
res += mul(Get(s2,-dx,-dy), float4x4(0.070011220872402,-0.048272848129272,-0.113791264593601,0.033087108284235,-0.100223794579506,-0.121277101337910,-0.073822908103466,-0.033592037856579,0.029176754876971,0.011015051975846,0.167555510997772,0.143503487110138,0.004364388529211,-0.101656816899776,0.010060705244541,-0.172473773360252));
res += mul(Get(s2,-dx,0), float4x4(-0.080556742846966,-0.047106653451920,-0.096859253942966,-0.004332896787673,-0.054439712315798,-0.034093234688044,0.168141484260559,-0.114976912736893,-0.006425302010030,-0.034553736448288,-0.119136519730091,0.125355795025826,-0.044587414711714,0.060391332954168,-0.038709834218025,0.134975999593735));
res += mul(Get(s2,-dx,dy), float4x4(-0.079600065946579,-0.062147770076990,-0.090764485299587,0.077679544687271,-0.031368881464005,0.174345165491104,0.015031297691166,-0.106226377189159,0.066847488284111,0.044557906687260,-0.035927053540945,-0.040894690901041,0.011810988187790,0.096009261906147,0.163626208901405,0.009156982414424));
res += mul(Get(s2,0,-dy), float4x4(0.182988613843918,0.033702544867992,-0.012840046547353,-0.078400313854218,-0.079184867441654,-0.046108540147543,-0.034680448472500,-0.023829478770494,-0.030203634873033,-0.023083722218871,0.093060709536076,0.012124034576118,-0.055269483476877,-0.017481962218881,0.023417355492711,0.040507446974516));
res += mul(Get(s2,0,0), float4x4(0.112491086125374,-0.007172503508627,0.027780080214143,-0.081009633839130,-0.046702712774277,-0.083634264767170,-0.055468451231718,-0.090704046189785,-0.032526556402445,-0.039692241698503,-0.101585373282433,0.039468728005886,-0.060174632817507,0.073890402913094,0.030263425782323,0.106364138424397));
res += mul(Get(s2,0,dy), float4x4(-0.118706248700619,-0.066250853240490,-0.067406311631203,0.100050903856754,-0.134810909628868,-0.032692473381758,0.077424012124538,-0.055914986878633,0.018372317776084,0.144065752625465,0.100588969886303,-0.042209122329950,-0.060929864645004,0.141982868313789,0.044798880815506,0.097879178822041));
res += mul(Get(s2,dx,-dy), float4x4(0.045064684003592,0.078594230115414,-0.059998955577612,0.001435620593838,0.057038053870201,0.000345245993230,0.024115942418575,-0.061666179448366,-0.046650759875774,-0.015873977914453,0.014172641560435,-0.053971227258444,-0.248413726687431,-0.091125138103962,-0.027394812554121,0.040425073355436));
res += mul(Get(s2,dx,0), float4x4(0.044916257262230,0.047455430030823,-0.059237357228994,-0.020551472902298,0.032851964235306,-0.070408307015896,-0.071652680635452,0.043644770979881,-0.054638247936964,-0.046228401362896,-0.153308480978012,0.093173027038574,-0.142298698425293,-0.016272393986583,-0.019806817173958,-0.023290794342756));
res += mul(Get(s2,dx,dy), float4x4(-0.028698733076453,-0.057636748999357,-0.154780983924866,0.154665738344193,0.038016323000193,-0.053442057222128,0.037894584238529,0.007408577483147,-0.043379142880440,0.020419960841537,-0.026799125596881,0.095966517925262,0.056298863142729,0.079846598207951,0.044858064502478,-0.032497137784958));
res += mul(Get(s3,-dx,-dy), float4x4(-0.033886339515448,0.154054284095764,-0.078978046774864,-0.180427193641663,0.021965518593788,-0.007429551798850,-0.150103464722633,0.055118624120951,0.225987404584885,-0.014285412617028,0.055447444319725,-0.046791307628155,0.007929056882858,0.027323340997100,-0.034254819154739,-0.106907203793526));
res += mul(Get(s3,-dx,0), float4x4(0.091762587428093,0.082347229123116,0.204304486513138,0.034912258386612,0.009345384314656,-0.039428107440472,-0.030288225039840,0.042139366269112,0.040695901960135,-0.086968161165714,-0.008349059149623,-0.013185885734856,-0.036430872976780,-0.097654938697815,-0.101808004081249,0.003763895947486));
res += mul(Get(s3,-dx,dy), float4x4(0.019989423453808,0.134715735912323,-0.078722745180130,-0.135809779167175,0.129966601729393,-0.008810534141958,-0.170621827244759,-0.065057709813118,0.029418762773275,-0.069371297955513,-0.077900499105453,0.002925386419520,-0.047724898904562,-0.012527996674180,-0.108654424548149,-0.151893064379692));
res += mul(Get(s3,0,-dy), float4x4(0.021699151024222,-0.052118189632893,-0.087517194449902,0.120785199105740,0.056384060531855,-0.089547783136368,0.074720807373524,-0.050087366253138,-0.113101489841938,-0.009841243736446,-0.035598509013653,0.090690538287163,0.083282507956028,0.088051930069923,0.005392189137638,-0.009946510195732));
res += mul(Get(s3,0,0), float4x4(0.064676083624363,0.014835170470178,0.004338379483670,0.070799611508846,-0.011632443405688,-0.152101442217827,0.264309108257294,0.005055016372353,-0.103984892368317,0.031606644392014,-0.053752478212118,-0.024625109508634,0.066683448851109,0.043232508003712,-0.037693511694670,-0.006362073589116));
res += mul(Get(s3,0,dy), float4x4(0.081725172698498,-0.013468696735799,0.035677954554558,-0.001831712434068,-0.073852643370628,0.036118950694799,-0.036921329796314,-0.041723549365997,-0.034799139946699,0.082275882363319,-0.027546266093850,0.183891624212265,0.044658560305834,0.067133806645870,-0.113810241222382,0.039612762629986));
res += mul(Get(s3,dx,-dy), float4x4(-0.002612463664263,-0.086731292307377,-0.060387503355742,-0.015187924727798,-0.027944400906563,-0.040176805108786,0.033157154917717,-0.006094525102526,-0.050943564623594,-0.030904680490494,-0.061620764434338,0.419217705726624,-0.015543768182397,-0.051912542432547,-0.008256969973445,-0.074833430349827));
res += mul(Get(s3,dx,0), float4x4(-0.060235965996981,0.052404418587685,0.089143879711628,0.031023122370243,-0.038979928940535,-0.095969520509243,-0.021358232945204,-0.004763007164001,-0.034829419106245,0.087168864905834,-0.021078692749143,-0.097934626042843,-0.008074474520981,-0.020232623443007,-0.058519180864096,0.070369482040405));
res += mul(Get(s3,dx,dy), float4x4(0.157070457935333,0.159554257988930,0.080778189003468,-0.015934836119413,0.057970974594355,0.052948802709579,-0.102446980774403,-0.135552614927292,-0.004285749513656,0.398154586553574,0.092424914240837,-0.070482999086380,0.038761891424656,-0.056819245219231,-0.021723179146647,0.074091315269470));
return max(float4(0,0,0,0), res);
}
