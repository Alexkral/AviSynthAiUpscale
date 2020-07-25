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
res += mul(Get(s0,-dx,-dy), float4x4(-0.158613935112953,-0.061182226985693,0.069725967943668,-0.157288402318954,0.022317038848996,0.087981455028057,-0.008227730169892,-0.138264074921608,0.125441879034042,0.010500339791179,0.010738735087216,-0.074686013162136,-0.050238523632288,-0.095815010368824,-0.110503584146500,-0.018371710553765));
res += mul(Get(s0,-dx,0), float4x4(-0.034330200403929,0.016228351742029,-0.092973731458187,0.097936622798443,-0.072507239878178,-0.003833690425381,-0.029476262629032,-0.045302137732506,0.067958496510983,0.035085041075945,-0.045022580772638,0.018619446083903,-0.032808452844620,0.011115970090032,-0.063623636960983,-0.043804816901684));
res += mul(Get(s0,-dx,dy), float4x4(0.148780524730682,-0.041202291846275,0.087724797427654,0.172820478677750,-0.080777205526829,0.047269798815250,0.062187757343054,0.116052135825157,-0.157290071249008,-0.033886034041643,-0.073216237127781,0.033808525651693,-0.028199257329106,-0.068331010639668,0.006906258873641,-0.046340409666300));
res += mul(Get(s0,0,-dy), float4x4(-0.054430790245533,-0.153135165572166,0.248595222830772,-0.141056433320045,0.082165963947773,0.025823645293713,0.186115667223930,0.086131811141968,0.007009569555521,-0.022535841912031,-0.124899737536907,0.176937416195869,0.056778892874718,0.031107189133763,-0.055520065128803,-0.067218147218227));
res += mul(Get(s0,0,0), float4x4(0.122361637651920,-0.049643121659756,-0.062010839581490,0.203014075756073,-0.041137751191854,-0.066660396754742,0.022580148652196,0.086125724017620,0.024641452357173,-0.011121075600386,-0.182942584156990,-0.002850634744391,-0.095679894089699,0.198648557066917,-0.151179119944572,0.149966657161713));
res += mul(Get(s0,0,dy), float4x4(0.054989702999592,-0.006603091023862,-0.122142478823662,0.075217679142952,-0.022166984155774,-0.125219911336899,0.061129413545132,0.288901448249817,0.010436086915433,-0.017529433593154,0.001418032567017,-0.172520324587822,0.125914379954338,-0.079848989844322,0.175925448536873,0.019595287740231));
res += mul(Get(s0,dx,-dy), float4x4(-0.024424700066447,-0.003779250895604,0.018011825159192,0.104685947299004,-0.004735146649182,0.198217779397964,-0.056190893054008,0.023590870201588,-0.032497640699148,-0.083763949573040,0.065030798316002,-0.042354259639978,-0.041913278400898,-0.105725027620792,0.017804579809308,0.046734269708395));
res += mul(Get(s0,dx,0), float4x4(-0.011028935201466,-0.150323539972305,-0.038912739604712,-0.037422198802233,0.164386436343193,0.041766662150621,0.101808123290539,0.049031708389521,0.011218708939850,-0.059418734163046,-0.028293905779719,0.066761448979378,-0.021593019366264,0.106912523508072,-0.103493392467499,-0.002486497862265));
res += mul(Get(s0,dx,dy), float4x4(-0.064468912780285,-0.093861170113087,0.086489528417587,-0.007118763867766,-0.018300175666809,0.064538232982159,-0.082665532827377,-0.028072549030185,-0.023366568610072,0.083367243409157,-0.033688217401505,0.004684825427830,-0.071537293493748,-0.006429372821003,0.032147582620382,-0.038418181240559));
res += mul(Get(s1,-dx,-dy), float4x4(-0.005089927464724,0.001308737322688,-0.078063517808914,0.038663066923618,-0.057885680347681,0.034643344581127,-0.011260295286775,0.078578643500805,0.086155593395233,0.106918320059776,0.040846586227417,0.230401247739792,0.118542216718197,-0.032721001654863,-0.041074436157942,0.105313509702682));
res += mul(Get(s1,-dx,0), float4x4(-0.060567408800125,-0.065134309232235,0.100386530160904,-0.009328395128250,0.166055366396904,0.023284703493118,-0.080982588231564,-0.186407342553139,0.109759427607059,-0.017030859366059,-0.129647344350815,0.109225109219551,-0.026284603402019,-0.066355146467686,-0.106802262365818,0.094816833734512));
res += mul(Get(s1,-dx,dy), float4x4(-0.144492968916893,-0.076619297266006,0.127189293503761,0.109228126704693,-0.129886314272881,0.081636220216751,-0.143312573432922,-0.097091674804688,0.091764271259308,-0.030349534004927,0.083696939051151,0.034883130341768,-0.079978927969933,0.150298908352852,-0.131605625152588,-0.086792290210724));
res += mul(Get(s1,0,-dy), float4x4(-0.089131571352482,-0.058904413133860,0.143187820911407,-0.076834879815578,0.037797830998898,0.040061026811600,-0.015101629309356,0.085728630423546,0.006671864073724,0.043971870094538,-0.064847767353058,0.022014455869794,-0.044159386307001,-0.094690650701523,0.127625718712807,-0.120896242558956));
res += mul(Get(s1,0,0), float4x4(-0.147492974996567,0.084098570048809,-0.079528704285622,-0.097991406917572,-0.096880868077278,0.047494679689407,0.121600247919559,0.088902391493320,-0.067762590944767,0.128079995512962,-0.177118629217148,-0.078860677778721,-0.012799079529941,-0.037190057337284,0.027610898017883,-0.009641712531447));
res += mul(Get(s1,0,dy), float4x4(-0.107342481613159,-0.016917292028666,0.021798409521580,-0.117008909583092,0.122121773660183,0.058237407356501,0.090077817440033,-0.158847957849503,0.206379428505898,-0.050441037863493,0.003924173768610,-0.191890910267830,0.068876534700394,0.131516918540001,-0.090929277241230,0.053851120173931));
res += mul(Get(s1,dx,-dy), float4x4(-0.198714911937714,-0.142192184925079,0.006849809084088,0.030474888160825,-0.216880664229393,-0.087970443069935,-0.168358683586121,-0.099773935973644,0.162826329469681,-0.055300127714872,-0.002777775283903,-0.018501376733184,-0.109584584832191,-0.026196999475360,-0.139212444424629,-0.147187843918800));
res += mul(Get(s1,dx,0), float4x4(-0.012323413975537,0.030261550098658,0.043799880892038,0.151687666773796,0.071167781949043,0.020683366805315,-0.010632632300258,0.041699815541506,-0.018474036827683,-0.116582989692688,-0.108789786696434,0.013711349107325,-0.109981633722782,0.036375507712364,-0.035342093557119,-0.167364001274109));
res += mul(Get(s1,dx,dy), float4x4(-0.159817248582840,0.175038084387779,-0.077150136232376,0.168900132179260,0.158099368214607,-0.093826442956924,-0.005563023965806,-0.114312067627907,0.134225502610207,0.028148166835308,-0.071994334459305,0.029521912336349,-0.000085271836724,0.003554183524102,0.010385876521468,-0.225132212042809));
res += mul(Get(s2,-dx,-dy), float4x4(-0.093284085392952,-0.144973814487457,-0.015688410028815,-0.096038624644279,-0.006443745922297,-0.140831187367439,0.072689048945904,0.012601786293089,-0.010315034538507,-0.055519066751003,-0.050210401415825,-0.024281250312924,-0.102015435695648,-0.109026052057743,-0.039090868085623,0.050726283341646));
res += mul(Get(s2,-dx,0), float4x4(-0.013760131783783,0.022683873772621,-0.018594691529870,0.029255555942655,-0.086433410644531,0.054361484944820,-0.096766181290150,0.096995137631893,-0.062709264457226,-0.095212221145630,-0.049925770610571,0.054334767162800,0.020751243457198,-0.075088232755661,0.006103789899498,-0.057880103588104));
res += mul(Get(s2,-dx,dy), float4x4(-0.024405905976892,0.035175494849682,-0.127521723508835,0.048375166952610,-0.075661823153496,0.083021275699139,0.072319343686104,-0.062628135085106,-0.053487360477448,-0.023078672587872,-0.100736789405346,-0.153379693627357,0.029256662353873,0.044797386974096,-0.050659764558077,-0.067376732826233));
res += mul(Get(s2,0,-dy), float4x4(0.008416376076639,0.045506499707699,0.054234325885773,0.243276551365852,0.014585567638278,-0.266511797904968,0.125806957483292,-0.212433561682701,-0.059022456407547,-0.025807423517108,-0.069038279354572,0.196374624967575,0.146243304014206,0.093373410403728,-0.281284481287003,0.158094421029091));
res += mul(Get(s2,0,0), float4x4(0.135589122772217,0.094844967126846,-0.129649162292480,0.015685234218836,0.128333926200867,-0.016786040738225,0.095828361809254,0.000099031043646,0.072988674044609,0.094176307320595,0.083772465586662,0.020080253481865,0.117874249815941,0.084392920136452,0.010993381962180,0.101552195847034));
res += mul(Get(s2,0,dy), float4x4(-0.171362459659576,-0.048234820365906,0.005722967907786,0.034850258380175,-0.073611870408058,-0.008891415782273,0.111626885831356,0.068023316562176,-0.004624650347978,-0.104787252843380,-0.037357054650784,0.141376644372940,0.067358374595642,-0.060528196394444,-0.151578485965729,-0.038613099604845));
res += mul(Get(s2,dx,-dy), float4x4(0.067436531186104,-0.047415543347597,0.036380924284458,0.153727754950523,0.053929399698973,-0.011251617223024,-0.115830354392529,-0.057704344391823,0.160037457942963,0.090831257402897,0.015643471851945,0.027298664674163,-0.163335815072060,-0.118744924664497,-0.049061276018620,-0.011044215410948));
res += mul(Get(s2,dx,0), float4x4(-0.096952468156815,-0.091290406882763,0.017066201195121,-0.055822025984526,-0.068637818098068,0.026282893493772,-0.120964668691158,-0.050530932843685,-0.048632558435202,-0.140202894806862,0.019465237855911,-0.155008673667908,0.089800566434860,0.069839119911194,-0.069843865931034,0.055997841060162));
res += mul(Get(s2,dx,dy), float4x4(-0.037748273462057,0.087144576013088,-0.007662622723728,0.008850805461407,0.141899660229683,0.004452933557332,0.143539056181908,0.054940305650234,-0.097747281193733,-0.091536641120911,-0.006192708853632,0.047055739909410,-0.097374923527241,0.004536147229373,-0.252948522567749,-0.049835417419672));
res += mul(Get(s3,-dx,-dy), float4x4(-0.094579443335533,0.109862275421619,0.094172134995461,0.035420995205641,0.079613298177719,0.175754502415657,-0.067819222807884,0.080502562224865,-0.035505544394255,-0.036869931966066,0.073975391685963,-0.045233067125082,-0.081763938069344,-0.137752354145050,-0.055980432778597,0.090435139834881));
res += mul(Get(s3,-dx,0), float4x4(-0.010197394527495,-0.072997264564037,0.078838095068932,-0.059874117374420,-0.050865981727839,0.050255022943020,0.033175267279148,0.005207653157413,0.056666545569897,0.030532119795680,-0.070879802107811,0.071552187204361,-0.073857218027115,-0.080348111689091,0.061591587960720,0.109337799251080));
res += mul(Get(s3,-dx,dy), float4x4(0.166463270783424,0.019462320953608,0.125469475984573,0.050144538283348,-0.026283379644156,0.057935699820518,-0.086623810231686,0.301937282085419,0.024944139644504,-0.009235382080078,0.055692568421364,-0.102748394012451,0.017634745687246,0.092444501817226,-0.023274807259440,0.125667572021484));
res += mul(Get(s3,0,-dy), float4x4(-0.011012189090252,0.000316837802529,-0.138559609651566,-0.038042090833187,-0.057080954313278,-0.091429926455021,-0.102828890085220,-0.153128847479820,-0.041867945343256,0.013756844215095,-0.025229010730982,-0.240328401327133,-0.009519464336336,-0.169705897569656,0.024168228730559,0.029056292027235));
res += mul(Get(s3,0,0), float4x4(-0.026582906022668,-0.023583581671119,0.172080978751183,-0.043671771883965,0.021134590730071,0.004832610953599,-0.066878303885460,0.000949297507759,0.037859015166759,-0.020759942010045,-0.054518815129995,0.160582944750786,0.024353139102459,0.117397382855415,-0.012183066457510,-0.125912517309189));
res += mul(Get(s3,0,dy), float4x4(-0.100589446723461,-0.016190797090530,-0.005080911796540,-0.045284874737263,-0.106786526739597,0.072531439363956,-0.012535746209323,0.017157707363367,-0.069525599479675,0.029661325737834,0.153813317418098,-0.279259681701660,0.009265251457691,0.077857159078121,-0.024138184264302,0.008913568221033));
res += mul(Get(s3,dx,-dy), float4x4(0.072866246104240,0.045082919299603,-0.146692126989365,-0.106047637760639,-0.070355497300625,-0.020144326612353,0.082702197134495,-0.125690385699272,-0.021185969933867,-0.077301189303398,0.041702531278133,-0.006329841446131,-0.025785097852349,-0.035755544900894,-0.022655325010419,0.194052562117577));
res += mul(Get(s3,dx,0), float4x4(0.133010491728783,-0.114430762827396,0.030643722042441,0.050779901444912,0.060575142502785,-0.197627261281013,0.187667548656464,0.010201708413661,-0.292683303356171,-0.042762227356434,-0.188241824507713,0.056754417717457,-0.014249605126679,-0.067853830754757,-0.130178272724152,0.122082740068436));
res += mul(Get(s3,dx,dy), float4x4(0.041175257414579,0.024811914190650,-0.001655763713643,0.114763922989368,-0.085685707628727,-0.005748601164669,0.123498335480690,0.159470513463020,-0.058173682540655,-0.227513000369072,0.050842840224504,0.013203068636358,-0.034723483026028,-0.143129155039787,-0.114034682512283,0.055914178490639));
return max(float4(0,0,0,0), res);
}
