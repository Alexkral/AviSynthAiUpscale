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
res += mul(Get(s0,-dx,-dy), float4x4(0.022261427715421,0.012754369527102,-0.012026331387460,-0.044817067682743,0.020199693739414,0.021077966317534,-0.010190408676863,-0.016807148233056,0.000209566220292,0.078285053372383,-0.004897062666714,-0.006881164852530,-0.017330750823021,-0.011832412332296,0.001904802629724,0.000609295617323));
res += mul(Get(s0,-dx,0), float4x4(0.163731560111046,-0.019964041188359,-0.019795801490545,-0.023437974974513,-0.001642965828069,0.049155440181494,-0.058796606957912,-0.001301076030359,0.001103929942474,-0.012836352922022,0.028798310086131,0.003656507935375,-0.021139876917005,0.027926933020353,0.022219324484468,-0.001992585370317));
res += mul(Get(s0,-dx,dy), float4x4(0.045656964182854,-0.022885825484991,-0.017834944650531,0.045057602226734,0.015388291329145,0.013200373388827,-0.073431827127934,-0.003090170444921,-0.002147169318050,-0.012019818648696,-0.030038071796298,0.016021465882659,-0.023860063403845,0.033805318176746,-0.029700079932809,-0.023065570741892));
res += mul(Get(s0,0,-dy), float4x4(0.011366772465408,0.020787259563804,-0.027984607964754,-0.062132205814123,0.002049427013844,0.026578748598695,0.010569871403277,-0.000223603390623,-0.010203666985035,0.095200836658478,0.010308178141713,-0.015887375921011,-0.012097192928195,0.057306572794914,-0.013965390622616,0.007832836359739));
res += mul(Get(s0,0,0), float4x4(0.165505692362785,-0.013992760330439,0.036505859345198,-0.022763472050428,-0.053829696029425,0.050205416977406,0.043484602123499,-0.011518376879394,0.008832802064717,0.015658151358366,0.017992027103901,0.008426369167864,-0.008532953448594,0.114283278584480,-0.065364956855774,0.017551187425852));
res += mul(Get(s0,0,dy), float4x4(0.010129628702998,0.002096706070006,0.047615129500628,0.059007178992033,-0.017042927443981,0.030563456937671,-0.038367442786694,0.003083229064941,-0.020647782832384,-0.001935516251251,-0.036030586808920,0.028112815693021,-0.009419254027307,0.051164112985134,-0.036506257951260,0.004343731328845));
res += mul(Get(s0,dx,-dy), float4x4(0.027853544801474,-0.033348470926285,-0.029159570112824,-0.065466947853565,0.016797563061118,0.004030592273921,0.030351025983691,-0.014994611963630,0.075248531997204,0.013406408019364,-0.024262363091111,0.002008500741795,-0.024693742394447,0.046751689165831,-0.016637900844216,0.010040259920061));
res += mul(Get(s0,dx,0), float4x4(0.052831362932920,-0.064841940999031,-0.005519363097847,-0.020823713392019,-0.014437234960496,0.032387543469667,0.047427702695131,-0.008680832572281,0.046839386224747,-0.006961872335523,0.014633688144386,0.027806857600808,-0.022197954356670,0.024278905242682,0.022077087312937,0.031255822628736));
res += mul(Get(s0,dx,dy), float4x4(-0.003753578057513,-0.007576935458928,0.010813915170729,0.028218863531947,0.010811719112098,0.034675203263760,0.035733699798584,0.010293198749423,0.018264055252075,-0.010732255876064,0.002620473504066,0.057205285876989,-0.030170265585184,-0.025728307664394,0.023922488093376,0.014252194203436));
res += mul(Get(s1,-dx,-dy), float4x4(-0.064317032694817,0.095467425882816,0.019881337881088,-0.051326043903828,-0.013584737665951,-0.002006491879001,-0.016321217641234,-0.057397160679102,-0.026691352948546,0.033748127520084,-0.148711577057838,-0.037689767777920,-0.102701410651207,0.124842256307602,0.109326839447021,0.020586259663105));
res += mul(Get(s1,-dx,0), float4x4(-0.126687675714493,-0.002008012263104,-0.016449291259050,-0.048330817371607,-0.031448714435101,-0.014379447326064,-0.002176417270675,0.016997145488858,-0.251727700233459,0.075317010283470,0.254845023155212,0.003023264696822,-0.133773446083069,-0.036438126116991,-0.013982919044793,-0.047100041061640));
res += mul(Get(s1,-dx,dy), float4x4(-0.001536531606689,-0.022379051893950,0.082299500703812,-0.009321622550488,0.013374864123762,-0.046628139913082,0.000187195983017,-0.079196996986866,-0.012167614884675,-0.047124590724707,0.058198839426041,-0.041661527007818,-0.057588066905737,-0.073337659239769,-0.026346011087298,0.007210515439510));
res += mul(Get(s1,0,-dy), float4x4(0.018531549721956,-0.017927784472704,-0.001554676797241,-0.059966433793306,0.033698625862598,-0.044173225760460,-0.033472422510386,-0.026364151388407,-0.018724076449871,0.165907472372055,0.524006724357605,-0.021999062970281,-0.020476358011365,0.118006616830826,0.177946761250496,0.004076739307493));
res += mul(Get(s1,0,0), float4x4(-0.068136960268021,-0.092803351581097,-0.174254104495049,-0.040978565812111,-0.002645166823640,-0.012015770189464,0.033249288797379,0.108315311372280,-0.037717152386904,-0.085496149957180,-0.554628014564514,-0.081697702407837,0.055203143507242,-0.169806957244873,-0.242137372493744,-0.087518110871315));
res += mul(Get(s1,0,dy), float4x4(-0.022860666736960,0.010020706802607,0.054158005863428,0.107522927224636,-0.015797074884176,-0.021324530243874,0.002786883153021,0.030568918213248,-0.029937792569399,-0.113856971263885,-0.009650706313550,0.049398455768824,-0.049185819923878,-0.069800704717636,0.062264010310173,0.037345536053181));
res += mul(Get(s1,dx,-dy), float4x4(0.046784255653620,-0.040726631879807,-0.007107608020306,-0.076607279479504,0.049214061349630,-0.036167848855257,0.010571964085102,-0.031161785125732,0.054045621305704,0.025432556867599,-0.162524402141571,-0.038416240364313,0.049273177981377,-0.007142696529627,0.016082752496004,0.001703679910861));
res += mul(Get(s1,dx,0), float4x4(0.007507060188800,-0.015333879739046,-0.008404055610299,-0.041058395057917,0.012153182178736,0.010299636051059,0.038866911083460,0.088188603520393,0.188803657889366,-0.142698600888252,0.222981065511703,-0.114048011600971,0.169354259967804,-0.161741077899933,0.060686491429806,-0.054777845740318));
res += mul(Get(s1,dx,dy), float4x4(0.006014536600560,0.073377244174480,0.082704767584801,0.132076203823090,0.013244502246380,-0.000845851493068,0.012356307357550,-0.049054261296988,0.037160191684961,-0.037190452218056,0.013366493396461,0.074459932744503,-0.019459960982203,-0.008482985198498,-0.016823176294565,0.097735501825809));
res += mul(Get(s2,-dx,-dy), float4x4(-0.086446136236191,0.047240588814020,0.039286162704229,-0.032709296792746,-0.027459597215056,-0.003783136606216,-0.031151525676250,-0.005140054505318,-0.018385890871286,0.089558936655521,0.049866557121277,-0.001927519333549,-0.017822688445449,0.011211449280381,0.022166283801198,-0.002266332507133));
res += mul(Get(s2,-dx,0), float4x4(-0.072533041238785,-0.013991855084896,-0.005370602943003,-0.045371241867542,-0.016456950455904,0.007733359932899,-0.072604484856129,-0.003674788866192,0.022169759497046,-0.006591911427677,-0.102241687476635,-0.038223430514336,-0.020807698369026,0.053066477179527,-0.003842953359708,0.018538206815720));
res += mul(Get(s2,-dx,dy), float4x4(0.013608426786959,-0.042625673115253,-0.043682061135769,-0.061549860984087,0.033361233770847,0.001069507212378,-0.053722713142633,0.004364314023405,-0.009217520244420,-0.016258632764220,-0.057050138711929,0.021394070237875,-0.001562136574648,0.033235851675272,0.054787412285805,0.029840277507901));
res += mul(Get(s2,0,-dy), float4x4(-0.020806714892387,-0.042255155742168,0.013809200376272,-0.023302974179387,-0.005596780218184,0.005431155674160,-0.030305678024888,-0.000564833870158,-0.049903091043234,0.062443163245916,0.104398816823959,-0.020522419363260,-0.006358628626913,0.018881602212787,0.086670644581318,-0.011461501009762));
res += mul(Get(s2,0,0), float4x4(-0.037817228585482,-0.043626651167870,-0.057545319199562,-0.010404147207737,-0.027046868577600,0.002423586091027,-0.015153948217630,0.008159740827978,0.159341603517532,0.003561188234016,0.015873318538070,-0.075246155261993,-0.002922934480011,-0.025222100317478,0.088583216071129,0.029281828552485));
res += mul(Get(s2,0,dy), float4x4(-0.046218849718571,-0.039715308696032,-0.006088804919273,0.068993948400021,0.032903391867876,0.009629863314331,-0.015900436788797,0.007027404848486,-0.005109040997922,0.006535350810736,0.013731595128775,0.073850452899933,0.015243152156472,-0.014800248667598,0.056625206023455,0.076928518712521));
res += mul(Get(s2,dx,-dy), float4x4(0.018250336870551,-0.061382479965687,0.110168524086475,-0.033676933497190,0.003029245184734,-0.012831072323024,0.017773501574993,-0.010932111181319,-0.006237442139536,-0.020057851448655,0.010004030540586,-0.037400644272566,-0.085448034107685,0.040997147560120,-0.040759734809399,-0.001260732882656));
res += mul(Get(s2,dx,0), float4x4(0.070074662566185,-0.023287924006581,0.063650108873844,-0.006839581765234,-0.023135164752603,-0.002369896741584,-0.020281335338950,0.003211979288608,0.159222140908241,-0.014456961303949,0.031746029853821,-0.041674785315990,-0.061139587312937,-0.002695283154026,-0.054259020835161,0.007778659462929));
res += mul(Get(s2,dx,dy), float4x4(-0.001653619576246,0.011006759479642,0.052859693765640,0.011492326855659,0.019657112658024,0.007451409008354,-0.004852971527725,0.008228907361627,0.014642507769167,0.004847220610827,-0.022915637120605,0.034522075206041,-0.057728208601475,-0.018733039498329,-0.038243021816015,0.068620704114437));
res += mul(Get(s3,-dx,-dy), float4x4(0.010292243212461,0.036387614905834,-0.155771464109421,0.023505764082074,0.014880665577948,0.007627796847373,-0.043703466653824,0.005212821066380,0.086568720638752,-0.022441713139415,0.039212875068188,-0.050107996910810,0.027484489604831,-0.010599073953927,-0.005908510647714,-0.015677373856306));
res += mul(Get(s3,-dx,0), float4x4(-0.065947204828262,0.014350392855704,0.023267537355423,0.022249968722463,-0.082941874861717,0.008381403051317,0.045979540795088,0.002842219546437,0.079679921269417,-0.032788392156363,-0.118264444172382,-0.010663304477930,0.002625495428219,0.041608426719904,-0.102751389145851,0.018520846962929));
res += mul(Get(s3,-dx,dy), float4x4(-0.007333952467889,0.008656839840114,-0.018208662047982,0.045179311186075,-0.031218238174915,0.009476261213422,-0.040976438671350,0.026795877143741,0.034560311585665,0.014171821996570,-0.027584455907345,0.028602803125978,0.012072939425707,-0.019135693088174,-0.120191283524036,-0.003408086718991));
res += mul(Get(s3,0,-dy), float4x4(0.011544382199645,0.034650336951017,-0.134894177317619,0.020898062735796,0.007512932643294,0.026622811332345,-0.046032249927521,0.001631126273423,0.020870881155133,-0.025642815977335,0.060107365250587,-0.044315364211798,0.011747526936233,0.016074733808637,0.062253776937723,-0.004543604794890));
res += mul(Get(s3,0,0), float4x4(-0.013197526335716,0.007941775023937,0.140734881162643,0.008832499384880,-0.011292942799628,-0.005247892346233,0.099383108317852,-0.003897205460817,0.032078590244055,0.017382811754942,0.182097047567368,0.018770745024085,-0.008012415841222,0.089508466422558,-0.069224797189236,0.012626508250833));
res += mul(Get(s3,0,dy), float4x4(-0.007291323039681,-0.004493283573538,0.012540443800390,0.058264300227165,0.004417346790433,-0.005611611064523,-0.050846934318542,0.031767774373293,0.000332607189193,0.050802569836378,0.071042418479919,0.040268346667290,0.009183395653963,-0.048716045916080,-0.106223218142986,0.007558431476355));
res += mul(Get(s3,dx,-dy), float4x4(-0.025412812829018,0.016847541555762,-0.052951656281948,0.023958694189787,-0.003289430402219,0.018404075875878,0.002169301267713,-0.000207669931115,-0.031764145940542,0.014733257703483,-0.010605949908495,-0.028869194909930,-0.002312888391316,0.013424552045763,0.018350586295128,0.005020539741963));
res += mul(Get(s3,dx,0), float4x4(0.031056175008416,0.008146246895194,0.130523338913918,0.018690468743443,0.046947225928307,0.013204894028604,0.073579847812653,0.002825441537425,-0.024081867188215,0.022705486044288,-0.040184162557125,-0.000898943457287,0.008947622962296,0.014313195832074,0.012314236722887,0.011723181232810));
res += mul(Get(s3,dx,dy), float4x4(0.016748115420341,0.005600516218692,0.031844343990088,0.031016467139125,0.043715544044971,-0.004042983520776,0.036230694502592,0.013758909888566,-0.019631093367934,-0.010387239046395,-0.119997970759869,0.015328168869019,0.027408484369516,-0.071298897266388,-0.001936330925673,0.013381713069975));
return max(float4(0,0,0,0), res);
}