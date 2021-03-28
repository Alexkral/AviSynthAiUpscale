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
float4 res = float4(0.084862358868122,0.035247702151537,0.062124263495207,-0.050380982458591);
res += mul(Get(s0,-dx,-dy), float4x4(-0.146736666560173,-0.083537958562374,-0.011332465335727,0.007631979417056,-0.014213237911463,-0.013513050042093,0.104139372706413,-0.215640157461166,0.153160989284515,0.020950326696038,-0.064680412411690,-0.004221637733281,-0.155699566006660,0.099102966487408,0.038014438003302,0.013619380071759));
res += mul(Get(s0,-dx,0), float4x4(0.027736756950617,0.012082787230611,-0.038224272429943,0.021512439474463,-0.065894722938538,0.004463470540941,-0.027074083685875,-0.164590016007423,-0.047778047621250,-0.074325554072857,-0.067012429237366,-0.147514596581459,-0.080899216234684,0.051584132015705,0.158929660916328,0.029930315911770));
res += mul(Get(s0,-dx,dy), float4x4(0.022831777110696,0.056505616754293,0.041867844760418,-0.018812347203493,0.089632898569107,-0.023167286068201,0.099362365901470,-0.045070368796587,-0.025483801960945,-0.035199023783207,-0.085937805473804,0.012291783466935,-0.108851782977581,0.131652355194092,0.013795758597553,-0.045556999742985));
res += mul(Get(s0,0,-dy), float4x4(-0.097073405981064,-0.062359921634197,-0.119996696710587,-0.038729269057512,0.053776945918798,-0.062628701329231,-0.149558067321777,0.051985062658787,0.154329806566238,0.014226697385311,-0.127143710851669,-0.044240433722734,0.029757892712951,0.073924832046032,0.139356955885887,0.190069407224655));
res += mul(Get(s0,0,0), float4x4(0.012561806477606,-0.055243354290724,-0.061501394957304,0.025896983221173,-0.029130877926946,-0.065622895956039,-0.094928272068501,0.076971434056759,-0.049477227032185,-0.198907524347305,-0.060925666242838,0.134528562426567,0.029404889792204,-0.041759323328733,0.039468180388212,0.164825335144997));
res += mul(Get(s0,0,dy), float4x4(-0.033201314508915,-0.021078523248434,-0.040828481316566,0.014219785109162,-0.039156362414360,-0.002115464303643,0.027897996827960,0.073698416352272,-0.128909513354301,-0.101742096245289,-0.041367646306753,0.043775636702776,0.059117477387190,0.061904542148113,0.121835157275200,0.043032724410295));
res += mul(Get(s0,dx,-dy), float4x4(0.024536231532693,0.004772963467985,-0.001046402263455,-0.076798439025879,-0.104654215276241,-0.076740331947803,-0.007189139258116,-0.204687714576721,-0.092884674668312,0.019909353926778,-0.140857219696045,-0.076604671776295,-0.057661887258291,-0.038791581988335,-0.056087482720613,-0.009622906334698));
res += mul(Get(s0,dx,0), float4x4(0.000361705548130,0.000611264200415,-0.050820805132389,-0.064214996993542,-0.224984243512154,-0.047031659632921,0.101625844836235,-0.101901493966579,-0.048383269459009,0.127445697784424,-0.155932798981667,0.000243724949542,-0.084496393799782,0.001236132928170,0.071489475667477,-0.006547882221639));
res += mul(Get(s0,dx,dy), float4x4(0.065551303327084,-0.066858194768429,-0.006899173837155,-0.060686975717545,-0.099198311567307,-0.141149550676346,-0.015821846202016,-0.070563904941082,-0.204978480935097,0.151790663599968,-0.040097311139107,0.001367747318000,-0.240750074386597,-0.062996879220009,0.051055945456028,-0.156022414565086));
res += mul(Get(s1,-dx,-dy), float4x4(0.077077992260456,-0.026111889630556,0.035386972129345,-0.089192986488342,0.091954477131367,0.061500463634729,-0.045761507004499,-0.001224808162078,0.013403287157416,-0.031578406691551,-0.093634746968746,-0.119112007319927,-0.136136174201965,-0.002281596884131,-0.098742268979549,-0.096013993024826));
res += mul(Get(s1,-dx,0), float4x4(0.185775056481361,-0.080219209194183,-0.004116376861930,-0.112683914601803,0.069109939038754,0.011881160549819,0.052133131772280,-0.143667370080948,0.275385588407516,-0.050373442471027,0.157939106225967,-0.049855411052704,-0.047288622707129,0.035595577210188,0.139135226607323,-0.093573585152626));
res += mul(Get(s1,-dx,dy), float4x4(-0.095126457512379,-0.069224469363689,0.089267574250698,0.064731441438198,0.227061942219734,-0.045221079140902,-0.036873407661915,-0.072637207806110,-0.080688238143921,-0.012351525016129,0.072332255542278,0.041000362485647,-0.166673555970192,0.120000161230564,0.003196152858436,-0.009625377133489));
res += mul(Get(s1,0,-dy), float4x4(-0.059572353959084,-0.175404310226440,-0.128122553229332,0.006148311309516,-0.135603547096252,0.003205042099580,-0.139402806758881,-0.154968544840813,-0.078788384795189,-0.072206899523735,0.112637378275394,-0.054995022714138,-0.127725467085838,-0.011869634501636,-0.138385102152824,-0.037711966782808));
res += mul(Get(s1,0,0), float4x4(0.221212491393089,0.479742318391800,-0.027413997799158,-0.169114977121353,-0.211530745029449,0.028341153636575,-0.016590462997556,-0.005381114780903,0.091754667460918,-0.015648778527975,-0.121605150401592,-0.038153655827045,0.028426241129637,-0.043016515672207,-0.211958006024361,-0.027194986119866));
res += mul(Get(s1,0,dy), float4x4(0.152906596660614,-0.056163582950830,0.080989599227905,0.058145940303802,-0.147557348012924,-0.051152374595404,-0.017835523933172,0.103423513472080,-0.076953843235970,-0.023182928562164,0.079532906413078,-0.055768214166164,-0.184803873300552,0.002239906927571,-0.096704177558422,0.113040439784527));
res += mul(Get(s1,dx,-dy), float4x4(-0.000088276159659,0.005864073056728,-0.065926156938076,-0.080702833831310,-0.088952690362930,0.043106254190207,-0.015461615286767,-0.104023963212967,-0.020491264760494,-0.042243402451277,-0.019395133480430,-0.083798050880432,-0.095270097255707,-0.026383135467768,-0.046977810561657,-0.086272977292538));
res += mul(Get(s1,dx,0), float4x4(-0.094176590442657,-0.072381123900414,-0.010175809264183,0.083571724593639,0.013122444041073,0.086842127144337,-0.045683495700359,0.041286759078503,0.041912831366062,-0.030247230082750,0.005519576370716,0.028114018961787,-0.063310422003269,-0.073663800954819,-0.139032557606697,0.001013235887513));
res += mul(Get(s1,dx,dy), float4x4(-0.078418798744678,-0.012897014617920,-0.028129139915109,0.100836217403412,0.011829841881990,0.005276684649289,0.017889114096761,0.004225200507790,0.035185299813747,-0.059517554938793,0.032154545187950,-0.002405420411378,-0.051670208573341,-0.014762890525162,-0.100699663162231,-0.053296085447073));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039212729781866,-0.138342499732971,0.134250164031982,-0.166075810790062,-0.005949476268142,-0.001475329510868,0.013048012740910,-0.005321511067450,0.010449251160026,0.020106632262468,0.080686323344707,-0.097213886678219,0.055474087595940,-0.076156869530678,-0.053803689777851,0.015362417325377));
res += mul(Get(s2,-dx,0), float4x4(-0.115634165704250,-0.121559940278530,0.081793554127216,-0.199316769838333,-0.005737973842770,-0.006621431559324,-0.014465950429440,-0.004648134112358,0.020696887746453,0.071695923805237,0.098878927528858,0.014646164141595,0.253270715475082,0.033353511244059,-0.141453087329865,0.058705221861601));
res += mul(Get(s2,-dx,dy), float4x4(-0.006448964588344,0.040613226592541,-0.067223660647869,-0.014365500770509,0.036450091749430,0.024483211338520,0.022998793050647,0.019904252141714,0.150263831019402,-0.097848646342754,0.010465141385794,-0.105117730796337,-0.243018522858620,0.018728112801909,-0.045785691589117,0.085748799145222));
res += mul(Get(s2,0,-dy), float4x4(0.054561760276556,0.062661521136761,0.002678187331185,0.207336798310280,-0.013817617669702,-0.043278928846121,0.024844191968441,-0.031503651291132,0.016170686110854,0.029895100742579,-0.047396842390299,-0.190820008516312,-0.133847624063492,-0.050654884427786,0.086244009435177,-0.047354433685541));
res += mul(Get(s2,0,0), float4x4(0.000357636628905,-0.159700632095337,0.058174062520266,0.054616533219814,0.005340850446373,0.003999623004347,-0.020615540444851,-0.008571329526603,-0.088857203722000,-0.203182786703110,-0.008521717973053,0.081389077007771,0.041838899254799,0.563394665718079,-0.036373227834702,-0.288486838340759));
res += mul(Get(s2,0,dy), float4x4(0.192761689424515,0.098417058587074,0.074370861053467,0.026415463536978,0.015101873315871,0.036579526960850,0.020389651879668,0.009842644445598,0.040606416761875,-0.143391057848930,-0.103478416800499,-0.036539394408464,0.106531091034412,-0.105401642620564,0.001560780685395,-0.073884621262550));
res += mul(Get(s2,dx,-dy), float4x4(-0.010830401442945,-0.030188729986548,-0.059399250894785,0.107536710798740,0.012782560661435,-0.052051089704037,0.005323032382876,-0.041047874838114,-0.140014261007309,0.028629191219807,-0.062793932855129,0.034039370715618,0.166858389973640,-0.128990069031715,-0.076622255146503,0.079034544527531));
res += mul(Get(s2,dx,0), float4x4(0.016955170780420,-0.094995558261871,0.083789244294167,-0.085408270359039,0.017953185364604,0.019387738779187,-0.021724371239543,-0.008320646360517,-0.144058525562286,-0.050196759402752,0.055386394262314,0.053630854934454,-0.146259918808937,-0.155709579586983,0.143100604414940,0.065422542393208));
res += mul(Get(s2,dx,dy), float4x4(0.013553835451603,-0.013391579501331,0.060994490981102,-0.018241690471768,-0.002151631750166,0.027143405750394,0.013415449298918,-0.014154653996229,0.049941353499889,-0.058344792574644,0.135589167475700,-0.022822465747595,-0.017932245507836,-0.003906430676579,0.002731850836426,0.106611751019955));
res += mul(Get(s3,-dx,-dy), float4x4(0.011906204745173,-0.009346633218229,0.048411499708891,-0.051735714077950,-0.030131453648210,0.031434737145901,-0.149892434477806,-0.020059796050191,0.061857335269451,0.065048381686211,-0.099467515945435,-0.056586723774672,0.003906784113497,-0.061175167560577,-0.006374658085406,-0.016284495592117));
res += mul(Get(s3,-dx,0), float4x4(0.026063924655318,0.028254283592105,0.023967415094376,-0.040005467832088,0.179141193628311,0.114205673336983,0.037060994654894,0.032564446330070,-0.030430564656854,0.063582263886929,0.035587985068560,-0.056720778346062,-0.190538585186005,-0.004205159842968,0.026124944910407,0.163915187120438));
res += mul(Get(s3,-dx,dy), float4x4(0.074816755950451,0.001843590871431,0.086125411093235,-0.001049166079611,-0.053588964045048,-0.014173631556332,0.005616617389023,0.067666679620743,0.083429820835590,0.084089078009129,-0.072405144572258,-0.026689710095525,-0.012402639724314,0.006096799857914,0.065814368426800,-0.018835429102182));
res += mul(Get(s3,0,-dy), float4x4(-0.085542790591717,-0.008389950729907,-0.043703075498343,0.002586748218164,0.020480161532760,-0.055449951440096,0.072845861315727,-0.030955763533711,0.034577742218971,0.085860252380371,-0.005438704509288,-0.050343908369541,0.016644671559334,-0.008708725683391,-0.058507464826107,-0.051153738051653));
res += mul(Get(s3,0,0), float4x4(0.014164544641972,-0.047588963061571,-0.081899389624596,0.070211179554462,-0.022636292502284,0.043675579130650,0.136720776557922,0.061713479459286,-0.011004893109202,-0.090217173099518,-0.058233551681042,0.006641045678407,-0.092919923365116,-0.015866179019213,0.026384305208921,0.106844149529934));
res += mul(Get(s3,0,dy), float4x4(0.051441352814436,0.087269358336926,0.014728184789419,0.002147129504010,-0.041722066700459,0.014208224602044,-0.025465518236160,0.022227527573705,-0.106079541146755,-0.024984359741211,0.021127264946699,0.082063905894756,-0.022027198225260,0.081115916371346,-0.016034098342061,0.141025811433792));
res += mul(Get(s3,dx,-dy), float4x4(-0.034196659922600,-0.043090030550957,0.054545227438211,0.135061219334602,-0.239911258220673,-0.055105086416006,0.137225583195686,-0.173181205987930,0.036187935620546,-0.011219210922718,-0.031257439404726,-0.037207853049040,-0.256995826959610,-0.079778887331486,-0.022458683699369,0.046781789511442));
res += mul(Get(s3,dx,0), float4x4(0.058515004813671,-0.070674978196621,-0.152088090777397,0.174025848507881,-0.027834925800562,-0.018745154142380,0.038615308701992,-0.051506601274014,-0.053029779344797,0.023794881999493,0.130229756236076,-0.034844879060984,-0.222943201661110,-0.150578111410141,-0.118970975279808,0.069977909326553));
res += mul(Get(s3,dx,dy), float4x4(0.078197449445724,-0.002317057456821,-0.082647658884525,0.045367948710918,-0.033757261931896,-0.103349760174751,0.142570048570633,-0.137543350458145,-0.025387447327375,-0.058891415596008,-0.019474903121591,0.072926096618176,-0.015260465443134,-0.050301499664783,0.002690384397283,0.083767637610435));
res += mul(Get(s4,-dx,-dy), float4x4(0.088032051920891,0.006519911345094,0.027727747336030,-0.028401289135218,0.073997601866722,0.021740812808275,-0.016304444521666,0.044225465506315,-0.046262778341770,-0.000388744170777,0.055828385055065,-0.049018394201994,0.001017355127260,-0.007872732356191,-0.006697150878608,-0.009133456274867));
res += mul(Get(s4,-dx,0), float4x4(-0.080404363572598,-0.043291632086039,0.022605128586292,0.224280446767807,0.011382357217371,-0.022324308753014,-0.029748262837529,-0.014179043471813,-0.005575999617577,0.006232719868422,-0.081431142985821,0.023349009454250,0.003026879625395,0.004236520733684,-0.006529284175485,-0.009033357724547));
res += mul(Get(s4,-dx,dy), float4x4(-0.060284037142992,-0.074646756052971,0.026776751503348,-0.056573100388050,-0.006885341368616,0.015510057099164,0.014193550683558,-0.036813329905272,0.043554939329624,-0.068091794848442,0.047250349074602,0.023265592753887,0.012777653522789,0.009259081445634,0.003718445776030,-0.014030180871487));
res += mul(Get(s4,0,-dy), float4x4(-0.001529948553070,0.066047258675098,0.026143871247768,-0.041635178029537,0.025814050808549,0.143443778157234,0.000213277176954,-0.069649614393711,0.093356736004353,-0.058378048241138,-0.044467356055975,0.057204090058804,0.001402483670972,-0.003977238666266,-0.006857100874186,-0.010449540801346));
res += mul(Get(s4,0,0), float4x4(0.022428365424275,-0.015569662675261,-0.035059884190559,0.063888654112816,-0.080697700381279,0.054707702249289,0.070422381162643,0.067517511546612,0.144372910261154,-0.046006340533495,-0.068578206002712,0.159516900777817,0.009936966001987,0.002856791252270,-0.003859812160954,-0.008863931521773));
res += mul(Get(s4,0,dy), float4x4(-0.097136519849300,-0.008126690052450,0.024339137598872,-0.014047022908926,-0.002680754521862,-0.042027521878481,0.025773325935006,0.086427755653858,-0.028419341892004,-0.004150023218244,-0.078907832503319,0.150234878063202,0.013795936480165,0.012069085612893,0.002142731565982,-0.012588072568178));
res += mul(Get(s4,dx,-dy), float4x4(-0.031573265790939,0.022068524733186,-0.091203689575195,0.014054100029171,-0.048083543777466,0.008010400459170,-0.043980497866869,-0.043264675885439,-0.027176640927792,-0.025055052712560,0.010694132186472,0.078072883188725,-0.002611981006339,-0.005292476620525,-0.004690793808550,-0.008687953464687));
res += mul(Get(s4,dx,0), float4x4(0.030267363414168,-0.058297604322433,-0.012706059031188,-0.019286684691906,-0.081897780299187,-0.079052545130253,-0.067833907902241,0.020419077947736,-0.053956396877766,-0.214789956808090,-0.035911209881306,-0.034789219498634,0.015730051323771,0.003401834517717,0.001837427960709,-0.009669758379459));
res += mul(Get(s4,dx,dy), float4x4(0.012958222068846,-0.081398494541645,-0.017499724403024,-0.004162252880633,-0.132505819201469,-0.063315168023109,-0.010724226944149,0.038489088416100,0.003191194962710,-0.050568141043186,0.028148811310530,0.060284059494734,0.017216127365828,0.013316144235432,0.004443140700459,-0.010068996809423));
res += mul(Get(s5,-dx,-dy), float4x4(-0.184701085090637,-0.109520003199577,0.081356741487980,-0.029507726430893,0.048861566931009,-0.045206718146801,-0.027629496529698,0.169770002365112,0.051576621830463,-0.192189246416092,0.050748217850924,-0.030508622527122,0.111152045428753,-0.018890252336860,0.027216156944633,-0.078736238181591));
res += mul(Get(s5,-dx,0), float4x4(-0.116072542965412,-0.090396612882614,0.057331040501595,0.058177676051855,-0.055738005787134,-0.053474791347980,-0.055168982595205,0.039651338011026,0.066777519881725,-0.228347972035408,-0.178068816661835,-0.121996760368347,-0.081294201314449,0.114307977259159,0.033984631299973,-0.076137393712997));
res += mul(Get(s5,-dx,dy), float4x4(0.000584221910685,0.030752608552575,0.013531078584492,-0.004657047800720,0.087679788470268,0.015439914539456,0.013858593069017,0.064612247049809,0.123783290386200,-0.080534778535366,0.023637412115932,-0.172422036528587,-0.004733976908028,-0.039189197123051,0.018963422626257,0.042263157665730));
res += mul(Get(s5,0,-dy), float4x4(0.050043232738972,0.059795688837767,-0.010812477208674,-0.032569248229265,-0.101894639432430,-0.031634371727705,0.001491751871072,-0.006413368508220,0.132728904485703,-0.151807829737663,-0.068574480712414,0.000602358952165,0.041106238961220,0.068368300795555,-0.218916222453117,0.153954416513443));
res += mul(Get(s5,0,0), float4x4(-0.043032083660364,-0.093572676181793,0.018820818513632,0.061789497733116,0.119351990520954,0.076666086912155,-0.009428746998310,0.120425477623940,-0.072615496814251,-0.446584999561310,-0.160966128110886,0.048304971307516,-0.242960542440414,-0.264211803674698,0.124763466417789,0.173378512263298));
res += mul(Get(s5,0,dy), float4x4(-0.073151282966137,0.021687569096684,0.201786667108536,-0.000367744214600,0.033710066229105,0.127026796340942,0.091706700623035,-0.122261226177216,-0.058855112642050,0.102808512747288,0.020037569105625,-0.107520401477814,0.085892163217068,0.075501933693886,-0.011025790125132,0.045522596687078));
res += mul(Get(s5,dx,-dy), float4x4(-0.065445095300674,-0.031377442181110,0.091992340981960,-0.090833447873592,0.022827785462141,-0.044691838324070,-0.367208033800125,-0.030323237180710,0.076566122472286,-0.016711920499802,-0.058082047849894,0.006746033672243,-0.036934487521648,0.014728588983417,0.123435199260712,0.078183621168137));
res += mul(Get(s5,dx,0), float4x4(-0.104389399290085,-0.016060264781117,-0.096769288182259,0.248459130525589,0.169498726725578,0.173074677586555,0.203914180397987,0.025911657139659,0.004621667787433,-0.095757946372032,-0.191514119505882,0.049470618367195,-0.025443634018302,0.100680805742741,-0.004356438294053,-0.061859473586082));
res += mul(Get(s5,dx,dy), float4x4(-0.049856845289469,0.029403030872345,-0.008251975290477,-0.106575936079025,-0.053315103054047,0.030564343556762,-0.146071076393127,-0.004949903115630,-0.048436481505632,0.054929573088884,0.006891220808029,0.049331899732351,-0.077953882515430,0.070479512214661,0.010725500993431,-0.142068982124329));
res = max(float4(0, 0, 0, 0), res) + float4(0.213768631219864,-0.027534753084183,0.331798672676086,-0.000628443842288) * min(float4(0, 0, 0, 0), res);
return res;
}