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
res += mul(Get(s0,-dx,-dy), float4x4(-0.174622684717178,-0.230836063623428,-0.039567202329636,-0.047869820147753,0.072919011116028,0.146968096494675,0.314604967832565,-0.029623972252011,0.085936129093170,-0.250643312931061,-0.168798789381981,0.253941774368286,-0.019876595586538,-0.092113986611366,0.058589152991772,0.179369136691093));
res += mul(Get(s0,-dx,0), float4x4(-0.053917754441500,0.004353295080364,-0.134095981717110,0.100526615977287,-0.056804001331329,0.011079641990364,-0.103883139789104,-0.142246633768082,0.048657935112715,0.028397794812918,0.057859212160110,0.057639438658953,-0.028566196560860,-0.076080136001110,-0.014724504202604,0.280940204858780));
res += mul(Get(s0,-dx,dy), float4x4(-0.056711897253990,0.083254098892212,-0.036052633076906,0.059833802282810,-0.077452525496483,0.086915269494057,-0.133803755044937,0.074643604457378,-0.064786754548550,0.130859240889549,0.025723982602358,0.049059625715017,-0.140966638922691,0.003480921732262,-0.030004298314452,0.077333055436611));
res += mul(Get(s0,0,-dy), float4x4(0.112504608929157,0.066219106316566,-0.019389512017369,0.060924157500267,0.118903733789921,0.050392847508192,-0.062723092734814,0.004101168364286,0.093616068363190,0.000845594156999,0.115733452141285,0.148771330714226,-0.219185814261436,-0.067284226417542,0.123540766537189,-0.124180376529694));
res += mul(Get(s0,0,0), float4x4(-0.144804298877716,0.225519225001335,-0.138560697436333,-0.196883380413055,-0.015078772790730,0.108720846474171,-0.168229237198830,-0.041828967630863,-0.140919297933578,-0.125826820731163,0.065447337925434,0.061470035463572,-0.055560912936926,0.125134140253067,0.172156527638435,-0.090155772864819));
res += mul(Get(s0,0,dy), float4x4(0.006250439677387,0.088659569621086,0.155153274536133,0.008540809154510,0.156871333718300,-0.106093272566795,0.061578691005707,0.110090270638466,0.200493887066841,0.105116136372089,0.025600703433156,-0.055994335561991,-0.154140442609787,0.204171597957611,0.002240299014375,-0.099975869059563));
res += mul(Get(s0,dx,-dy), float4x4(-0.063257001340389,-0.053060028702021,-0.210327848792076,0.060831222683191,0.046830743551254,0.147301852703094,-0.066503241658211,0.006222669966519,-0.131160899996758,0.143718823790550,0.114270664751530,0.000462473661173,-0.190599754452705,-0.215845376253128,-0.321816623210907,-0.124747268855572));
res += mul(Get(s0,dx,0), float4x4(0.120993182063103,0.012066590599716,0.021007608622313,0.003044053446501,-0.051872309297323,0.068994075059891,-0.064387254416943,0.018553277477622,-0.015848480165005,-0.115307763218880,-0.146429196000099,-0.107294239103794,0.007256476674229,-0.003773465752602,0.150269344449043,-0.051712445914745));
res += mul(Get(s0,dx,dy), float4x4(0.031356092542410,0.013037227094173,0.152747064828873,-0.101904071867466,-0.112466081976891,-0.156725794076920,-0.145274758338928,0.092495247721672,0.090861946344376,0.004203877877444,-0.082192726433277,-0.199033483862877,0.185459747910500,0.124570727348328,0.055818550288677,-0.118094474077225));
res += mul(Get(s1,-dx,-dy), float4x4(-0.107700988650322,0.001518156728707,0.132641047239304,0.136451855301857,0.096670426428318,-0.007716465275735,0.137521937489510,0.026988869532943,0.107045061886311,0.190527722239494,0.062526360154152,0.056549753993750,-0.122694849967957,-0.222298353910446,0.030066916719079,-0.117387533187866));
res += mul(Get(s1,-dx,0), float4x4(-0.086329795420170,-0.000440757721663,0.131853714585304,-0.145390510559082,-0.097704112529755,-0.149924218654633,0.241864562034607,0.027344008907676,0.133674830198288,0.042942997068167,0.050442170351744,0.052746620029211,0.135081276297569,0.123056635260582,0.148318111896515,-0.064014628529549));
res += mul(Get(s1,-dx,dy), float4x4(-0.051540322601795,0.028388334438205,-0.043664146214724,0.028386199846864,-0.026886608451605,-0.035191528499126,0.214575931429863,0.028073430061340,0.043257758021355,-0.033177562057972,-0.108801551163197,-0.046525325626135,-0.051863718777895,0.037502739578485,0.071583792567253,0.006223476026207));
res += mul(Get(s1,0,-dy), float4x4(0.046557482331991,-0.085378214716911,-0.152990654110909,-0.020789755508304,-0.242703214287758,0.079655081033707,-0.123464658856392,-0.062907546758652,-0.143098860979080,-0.084341898560524,0.065202109515667,-0.116954877972603,0.087015993893147,-0.211060002446175,-0.219750374555588,-0.015905488282442));
res += mul(Get(s1,0,0), float4x4(-0.122271746397018,0.202179312705994,0.084638506174088,0.028349760919809,0.076980464160442,0.075603358447552,0.087691240012646,0.040548186749220,0.076392531394958,0.075741358101368,-0.123616404831409,0.028324814513326,-0.028962478041649,-0.008071398362517,-0.257772326469421,-0.098654396831989));
res += mul(Get(s1,0,dy), float4x4(-0.099834203720093,0.055709976702929,-0.053627897053957,-0.056349232792854,0.052430342882872,0.084703929722309,0.195398777723312,0.089328177273273,0.207217633724213,0.126209408044815,-0.131295010447502,-0.058499310165644,-0.258338481187820,-0.010288204066455,0.120754681527615,-0.051011271774769));
res += mul(Get(s1,dx,-dy), float4x4(0.141043484210968,0.014238953590393,-0.055955797433853,-0.042753696441650,0.221175283193588,0.099883683025837,-0.136388406157494,-0.018439531326294,-0.175300076603889,0.188028752803802,-0.019486606121063,0.014909597113729,0.214725837111473,-0.196611016988754,0.029223030433059,0.081979230046272));
res += mul(Get(s1,dx,0), float4x4(-0.087088376283646,-0.038879703730345,-0.191206738352776,-0.057373236864805,0.039450734853745,-0.002279616659507,-0.136650830507278,0.111749514937401,0.038906924426556,0.044721659272909,-0.118262358009815,0.032719410955906,0.021225947886705,0.040995310992002,-0.060105256736279,-0.095409937202930));
res += mul(Get(s1,dx,dy), float4x4(-0.106506437063217,-0.094014570116997,0.095109350979328,0.016996162012219,-0.019252710044384,0.030317943543196,0.112564653158188,0.311858206987381,-0.144408792257309,-0.195819392800331,0.153917744755745,0.115510948002338,-0.056633383035660,-0.161320924758911,-0.036595270037651,0.055019479244947));
res += mul(Get(s2,-dx,-dy), float4x4(0.208906084299088,-0.028986323624849,-0.141099885106087,-0.125949487090111,0.064234778285027,-0.050566244870424,-0.007041892968118,-0.141675889492035,0.082617022097111,-0.202016547322273,0.092210769653320,0.019637832418084,0.021355953067541,-0.241471961140633,0.173774749040604,0.219495743513107));
res += mul(Get(s2,-dx,0), float4x4(-0.031886000186205,0.004588223528117,-0.008439554832876,0.035561978816986,-0.214259281754494,-0.160846740007401,0.076193876564503,0.129483640193939,0.011836305260658,-0.029447123408318,0.221021503210068,-0.124937921762466,-0.132942825555801,0.019024537876248,-0.147782966494560,0.027840586379170));
res += mul(Get(s2,-dx,dy), float4x4(0.144318893551826,0.158474400639534,0.061185058206320,-0.041271641850471,-0.015641752630472,-0.073145754635334,0.004780597519130,0.171246320009232,-0.030168693512678,-0.132474616169930,0.058208819478750,0.089519321918488,0.016282221302390,-0.063533730804920,-0.149167373776436,-0.095103085041046));
res += mul(Get(s2,0,-dy), float4x4(-0.003837859956548,0.111679889261723,0.100061506032944,0.045802343636751,-0.171533182263374,0.023599497973919,-0.232247427105904,0.052981097251177,-0.025999139994383,0.243574142456055,0.062356162816286,0.118130385875702,-0.003210703143850,-0.207765311002731,0.009224425069988,0.093987129628658));
res += mul(Get(s2,0,0), float4x4(-0.000515641295351,0.197599083185196,-0.062570229172707,0.227799549698830,0.026770761236548,0.114918231964111,0.066469900310040,-0.068313531577587,0.111384183168411,-0.045113679021597,-0.246091231703758,0.068181134760380,0.121331453323364,-0.031245721504092,-0.004803061950952,-0.002875685226172));
res += mul(Get(s2,0,dy), float4x4(0.077451810240746,0.062601581215858,0.174624115228653,0.125351548194885,0.061878338456154,-0.107052534818649,-0.130355089902878,0.065699495375156,-0.027950869873166,-0.095820583403111,0.174998462200165,0.018406691029668,-0.150327280163765,0.043848589062691,-0.004960347898304,-0.027472272515297));
res += mul(Get(s2,dx,-dy), float4x4(-0.013077531941235,0.153909340500832,-0.054313804954290,0.106216266751289,0.279670208692551,0.002411745954305,-0.103350833058357,-0.040217209607363,0.035801757127047,0.022270526736975,0.009137474000454,0.121285460889339,0.152565926313400,0.090446121990681,-0.102303348481655,-0.022440891712904));
res += mul(Get(s2,dx,0), float4x4(0.109779000282288,0.025382680818439,0.135611206293106,0.091282501816750,-0.007870567962527,-0.139420524239540,0.024007286876440,-0.088174462318420,0.236342966556549,-0.197342753410339,0.107738286256790,-0.067323267459869,-0.114614024758339,-0.099313654005527,0.118835367262363,-0.040613684803247));
res += mul(Get(s2,dx,dy), float4x4(0.034365504980087,0.145626321434975,0.056597463786602,-0.063327006995678,0.203801989555359,0.089557945728302,-0.090627573430538,0.142414703965187,-0.087847642600536,0.073996834456921,0.114531733095646,-0.077383965253830,0.035869058221579,0.076405137777328,0.179362714290619,0.008944123983383));
res += mul(Get(s3,-dx,-dy), float4x4(-0.051606003195047,0.029992319643497,-0.087470941245556,0.058417771011591,-0.075464107096195,0.021307442337275,-0.010891802608967,0.062195442616940,-0.124637141823769,-0.055360347032547,0.007128755562007,-0.086408063769341,-0.220942750573158,0.197969704866409,-0.038816861808300,0.047071471810341));
res += mul(Get(s3,-dx,0), float4x4(0.040086835622787,-0.084813743829727,0.179923355579376,-0.010369431227446,-0.171103939414024,-0.099107123911381,0.182888701558113,0.187287285923958,-0.064666323363781,0.104720681905746,-0.203138425946236,0.062692023813725,-0.084956452250481,0.032074104994535,0.037001941353083,-0.067046247422695));
res += mul(Get(s3,-dx,dy), float4x4(0.020350510254502,-0.081572256982327,0.046740479767323,0.271690458059311,0.110562294721603,0.043440137058496,0.016428638249636,0.165309995412827,0.007990693673491,0.169354394078255,-0.161354571580887,0.182932585477829,-0.120435662567616,-0.044838510453701,0.038201153278351,-0.020841106772423));
res += mul(Get(s3,0,-dy), float4x4(0.018710814416409,-0.015140438452363,0.223832920193672,0.070071287453175,0.065465554594994,0.268223434686661,0.033349528908730,-0.040026381611824,0.025552196428180,0.075062073767185,0.185900390148163,0.018236611038446,0.334252834320068,0.009159724228084,-0.085432209074497,0.199475422501564));
res += mul(Get(s3,0,0), float4x4(0.047257367521524,0.062705717980862,0.219344228506088,0.054493330419064,-0.131605461239815,0.066966518759727,0.228334724903107,0.092703558504581,-0.088394559919834,-0.116549678146839,-0.009393256157637,0.110208734869957,-0.200982749462128,-0.066497571766376,0.033680457621813,-0.017017038539052));
res += mul(Get(s3,0,dy), float4x4(-0.023671554401517,0.067732490599155,0.226411536335945,-0.177780017256737,0.032498568296432,-0.072430931031704,0.093329802155495,-0.132282063364983,0.100246049463749,0.209656581282616,-0.031228430569172,0.137089550495148,-0.067948013544083,0.191508829593658,0.047795772552490,0.040680758655071));
res += mul(Get(s3,dx,-dy), float4x4(0.025941681116819,0.035747632384300,-0.036709543317556,-0.037401761859655,-0.102911494672298,-0.152556881308556,0.007885000668466,0.074590541422367,0.175876945257187,-0.118425451219082,-0.039845652878284,-0.005213436670601,0.175329372286797,-0.094842150807381,-0.129768684506416,-0.002807214157656));
res += mul(Get(s3,dx,0), float4x4(0.051605854183435,0.041835960000753,-0.041195683181286,-0.172817155718803,-0.069147586822510,-0.170863360166550,0.045015178620815,-0.051525462418795,-0.071328289806843,-0.114581763744354,0.200961589813232,0.049508020281792,0.341496646404266,-0.203725934028625,0.113601446151733,-0.130433499813080));
res += mul(Get(s3,dx,dy), float4x4(-0.084499403834343,0.080922722816467,-0.142366021871567,-0.134749129414558,0.052184302359819,-0.075292967259884,0.107402056455612,-0.272296875715256,0.226848945021629,0.107115440070629,-0.305620074272156,-0.199893608689308,0.067416526377201,0.244058310985565,-0.018946370109916,0.091816402971745));
return max(float4(0,0,0,0), res);
}
