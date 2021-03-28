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
float4 res = float4(-0.001274482812732,-0.000897747173440,-0.000339970458299,-0.000761578790843);
res += mul(Get(s0,-dx,-dy), float4x4(0.000934061943553,-0.000080692996562,-0.000083164850366,0.000205381147680,0.000163315271493,-0.000647659879178,-0.001436538645066,-0.000821010908112,-0.000588118855376,0.000328436668497,0.000514992570970,0.000382327591069,0.001599810551852,0.002281383844092,0.001415513455868,0.000751878018491));
res += mul(Get(s0,-dx,0), float4x4(-0.000671316403896,-0.001270591397770,0.000075539770478,0.000628028123174,0.001940750749782,0.002395840361714,0.002871224191040,0.002356095006689,-0.001267623156309,-0.001727482187562,-0.001671333448030,-0.000931785150897,-0.003423007437959,-0.003251081565395,-0.001245552906767,-0.001030044280924));
res += mul(Get(s0,-dx,dy), float4x4(0.000358093820978,0.000061039296270,-0.000452854088508,-0.000888188777026,0.000590904557612,0.000098589131085,-0.000471342325909,0.000342985294992,-0.000628578884061,-0.000026269777663,0.000168528786162,-0.000307477253955,0.002418678021058,0.001520061632618,-0.000190142920474,-0.000807165808510));
res += mul(Get(s0,0,-dy), float4x4(0.005616011098027,0.002480305032805,-0.002071933588013,-0.000420499767642,0.000605152454227,0.003249159548432,0.003556594485417,0.001978817395866,-0.003489419817924,-0.001190531416796,0.001020478899591,0.000538152176887,-0.006197440903634,-0.001279682153836,-0.002106343861669,-0.003362915711477));
res += mul(Get(s0,0,0), float4x4(0.002724950434640,0.008761771023273,0.004126724321395,-0.018089950084686,-0.004687675740570,-0.013416660949588,-0.010139392688870,-0.002529453486204,0.025348693132401,0.023484846577048,0.013593774288893,0.004388415254653,-0.054924622178078,-0.057662203907967,-0.042230188846588,-0.021732050925493));
res += mul(Get(s0,0,dy), float4x4(-0.001113364822231,-0.001235670992173,0.001330007333308,0.006215324625373,-0.002361866645515,-0.003695221384987,0.004952147137374,0.004395303316414,0.000508788740262,0.001687923679128,0.007619922515005,0.017575262114406,0.001875514746644,-0.001607905724086,-0.014201426878572,-0.031766951084137));
res += mul(Get(s0,dx,-dy), float4x4(0.000806789263152,0.009903570637107,0.001668504322879,-0.001603841781616,-0.001216796343215,0.000823574489914,0.002701355377212,0.002473790664226,0.000082542166638,-0.002386017236859,-0.001510233851150,-0.000049691730965,0.002890245988965,0.002886088797823,0.001155956066214,0.000033081014408));
res += mul(Get(s0,dx,0), float4x4(0.004824153147638,0.013784443028271,0.001352771651000,-0.030377987772226,0.025266051292419,0.020990651100874,-0.000474291358842,-0.008103558793664,0.010392920114100,0.009864968247712,0.006978178862482,0.004559086170048,-0.000049862122978,-0.001515692216344,0.000507659045979,0.002736135385931));
res += mul(Get(s0,dx,dy), float4x4(-0.001076914486475,-0.000867391354404,-0.002829323057085,-0.001360315014608,0.001477916608565,-0.005047770217061,-0.015458912588656,-0.004987674765289,0.000654709001537,0.003555038245395,0.005278859753162,0.005090096034110,0.000104557962914,0.001502100494690,0.002569820964709,0.002372787566856));
res += mul(Get(s1,-dx,-dy), float4x4(-0.000493516097777,0.000569625815842,0.000887250876985,0.000383256206987,-0.002425934188068,0.001264336518943,0.003449521260336,0.002947011031210,-0.000476895627799,-0.000648386951070,-0.000832679972518,-0.001246542320587,-0.010718066245317,-0.006518358830363,-0.000921073253267,0.003093557199463));
res += mul(Get(s1,-dx,0), float4x4(-0.000340186670655,-0.000025344992537,-0.000822940201033,-0.000507949036546,0.001917246263474,-0.001304240431637,-0.004698703531176,-0.005046452395618,0.002325028646737,-0.001188721391372,-0.003067828249186,0.002396750031039,-0.007697471883148,-0.011705618351698,-0.015135644003749,-0.017908422276378));
res += mul(Get(s1,-dx,dy), float4x4(0.000954215764068,-0.000627701287158,-0.001651301165111,0.001181245781481,-0.000194624808501,0.000931062968448,0.002233932260424,0.003005403792486,-0.001818903489038,0.000057567802287,0.001255587325431,0.001112719997764,-0.000048150963266,0.000324374675984,-0.000054654155974,-0.001787756220438));
res += mul(Get(s1,0,-dy), float4x4(0.002314884681255,-0.002999051939696,-0.003560323268175,-0.001642524730414,-0.000256532744970,0.004808627534658,0.008615707978606,0.007813148200512,0.006856574676931,0.001710635609925,-0.000068395820563,-0.000137976181577,-0.003609196748585,-0.000127156003146,0.000822151254397,-0.001953017897904));
res += mul(Get(s1,0,0), float4x4(-0.028402335941792,0.004617977887392,0.016725301742554,0.008751366287470,0.017255119979382,0.013591477647424,0.006124894600362,-0.003588043851778,0.021049167960882,0.005493714939803,-0.019043510779738,0.005611750762910,-0.005407208576798,-0.006903399713337,-0.005451376084238,-0.001984987873584));
res += mul(Get(s1,0,dy), float4x4(0.000113150628749,0.005518435500562,0.009862920269370,-0.008916125632823,-0.000937031989451,-0.001254811999388,0.001616564579308,0.010848768986762,-0.000835587678012,-0.003709267824888,-0.006689382251352,-0.001287826686166,0.001006217557006,0.000120269287436,-0.001470433431678,-0.003135700477287));
res += mul(Get(s1,dx,-dy), float4x4(0.001137063256465,-0.000587871181779,-0.001036755042151,-0.001068441080861,-0.005627085454762,-0.003293403889984,-0.001393603743054,-0.000294579920592,-0.000125192047562,0.000068777371780,-0.000733830442186,0.000027825455618,-0.002279961016029,-0.002038523787633,-0.001387185766362,-0.000438460527221));
res += mul(Get(s1,dx,0), float4x4(-0.014522632583976,-0.011147486045957,0.002655407879502,0.007846519351006,0.000078158795077,-0.000562940083910,-0.002516393549740,-0.005471850745380,0.003676221938804,-0.003074950538576,-0.005671052262187,-0.000163739037816,-0.002423518802971,-0.002251373138279,-0.002741428790614,-0.002705629914999));
res += mul(Get(s1,dx,dy), float4x4(0.000395221199142,0.000860075291712,0.007723795715719,0.008331243880093,0.000307081150822,-0.000689335982315,-0.001236087642610,-0.000208986908547,-0.000721024989616,-0.004683252424002,-0.005377335939556,0.000022519698177,0.000416832976043,0.000339577323757,-0.000146194593981,-0.002178108086810));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000211341743125,-0.000601477571763,-0.000071377427957,-0.000173471111339,0.002383791608736,0.004895252641290,0.003294184803963,0.000814897124656,-0.000492833496537,-0.001406513736583,-0.001940424204804,-0.002659395802766,-0.000494952138979,0.000924732652493,0.002084812382236,0.002151184715331));
res += mul(Get(s2,-dx,0), float4x4(0.003431696444750,0.002830589190125,-0.000939136836678,-0.000295363599434,-0.002260782988742,-0.003453336656094,-0.001916114008054,-0.000103190635855,0.005774799268693,0.005256580654532,0.001424383255653,0.003956900909543,-0.003239562502131,-0.001599496579729,-0.002054471522570,-0.002269843826070));
res += mul(Get(s2,-dx,dy), float4x4(0.000042747869884,0.001192451803945,0.000722054159269,0.001113219186664,0.000437703012722,0.000718078925274,0.000542868394405,-0.000370359397493,-0.000630035006907,0.003356649540365,0.002934265648946,-0.000283237808617,0.001531192916445,0.001225212821737,-0.000113592286652,-0.001643428346142));
res += mul(Get(s2,0,-dy), float4x4(0.004505625925958,0.001969549804926,0.001479770988226,0.001161810709164,-0.044615272432566,-0.014414976350963,0.007813518866897,0.003759224666283,0.004372851923108,0.014537650160491,0.005347981117666,0.001350159989670,-0.007937298156321,-0.002886232221499,-0.001078348956071,-0.000030928458727));
res += mul(Get(s2,0,0), float4x4(-0.033370390534401,0.020942490547895,0.018167072907090,-0.000440163043095,0.000334929820383,0.026825116947293,0.031290851533413,-0.016113115474582,0.024041349068284,-0.003382031107321,-0.047111924737692,-0.045380834490061,0.027407556772232,0.003787043737248,-0.018935721367598,-0.018134880810976));
res += mul(Get(s2,0,dy), float4x4(0.005277658812702,0.004993861541152,-0.000957243377343,-0.029781788587570,-0.001450394280255,-0.000050212074711,-0.002461725845933,-0.009489538148046,-0.001961766975001,-0.002140957629308,0.001824065344408,0.014675210230052,-0.004960427060723,-0.003429698757827,0.006517322268337,0.022402213886380));
res += mul(Get(s2,dx,-dy), float4x4(-0.002528371056542,0.000622331572231,0.003737968392670,0.003738248255104,-0.010968292132020,-0.006895143073052,0.000488268386107,0.002647736808285,0.004485619254410,-0.000185776094440,-0.000032712181564,0.001450437470339,0.008419089019299,0.005417106207460,0.000208529309020,-0.003022964112461));
res += mul(Get(s2,dx,0), float4x4(0.010747807100415,0.006583535112441,-0.006419101729989,-0.009451695717871,0.002857295097783,0.010007667355239,0.011042197234929,-0.001996411709115,-0.000396255636588,0.002860586857423,0.004465725738555,0.010246326215565,-0.010921703651547,-0.007940404117107,0.003229649038985,0.011005760170519));
res += mul(Get(s2,dx,dy), float4x4(0.003564378712326,0.001220624195412,-0.000884610170033,0.004770981147885,-0.000941554142628,-0.002520634327084,0.000398926960770,0.005353109445423,-0.000579900573939,-0.001647955970839,-0.003817532677203,-0.004768425133079,-0.003194801043719,-0.004018117208034,-0.002080051694065,-0.000987817416899));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001814493676648,-0.000716105103493,0.000077401200542,-0.000373891612981,0.000443022057880,-0.000041173625505,-0.000595138466451,-0.000273812998785,0.000615664932411,-0.001578054740094,-0.001902233692817,-0.000250989804044,-0.001159762963653,0.000452806474641,0.000293609831715,-0.000275073485682));
res += mul(Get(s3,-dx,0), float4x4(-0.000074902214692,-0.000160509327543,-0.001637087203562,-0.000595829391386,-0.002796776825562,-0.002992795780301,0.000090035857284,0.001092460122891,-0.000759805203415,0.001345836324617,0.005761408712715,-0.001999907894060,0.000545470160432,-0.000520145986229,-0.001851466251537,-0.001641836366616));
res += mul(Get(s3,-dx,dy), float4x4(0.003092588623986,0.006120735779405,0.001482626073994,-0.003564089303836,0.002222577575594,0.001764126238413,0.002780805574730,-0.000900267565157,-0.000303424953017,0.001369233126752,0.001313560060225,-0.004141557961702,0.000461289397208,0.000758144597057,0.001003111363389,0.000678351963870));
res += mul(Get(s3,0,-dy), float4x4(-0.000269564014161,0.001436891034245,-0.001186737907119,-0.002048748778179,-0.003894559107721,0.000392316957004,0.001780038350262,0.001137492596172,-0.005865593440831,0.000082344595285,0.001352018443868,0.000084359868197,0.010951071977615,-0.004343401640654,-0.005494886077940,-0.002845568116754));
res += mul(Get(s3,0,0), float4x4(-0.056477602571249,-0.008482223376632,0.027268569916487,0.005881526973099,0.032245136797428,0.005792319774628,-0.006796868052334,-0.004326019436121,0.002478740410879,-0.065555386245251,0.020250355824828,0.025369219481945,-0.008304418995976,-0.006465434096754,0.009466889314353,0.025159860029817));
res += mul(Get(s3,0,dy), float4x4(-0.003492572344840,0.006844178773463,0.016738545149565,-0.013814851641655,-0.010242729447782,-0.012412725016475,-0.012635557912290,0.008556066080928,-0.000732537067961,-0.005818642675877,-0.002614093711600,0.031111449003220,0.000474603119073,0.000483750511194,-0.001132355420850,-0.002135539194569));
res += mul(Get(s3,dx,-dy), float4x4(-0.001044975710101,-0.001250619301572,-0.001112877740525,0.001217195880599,-0.001943661249243,0.000281583168544,0.001243605278432,0.001228374079801,-0.001138129387982,-0.000124159967527,0.000376343552489,0.001104130875319,0.019440531730652,0.004806244280189,-0.004373115953058,-0.003837407799438));
res += mul(Get(s3,dx,0), float4x4(0.009459161199629,0.018213091418147,0.005053875502199,-0.005513954441994,-0.001806318177842,-0.007804356049746,-0.003419841639698,0.000191348852240,0.004062536638230,0.005483651533723,0.000076367148722,-0.006736142560840,-0.010550064966083,-0.023530069738626,-0.007553575560451,0.019842932000756));
res += mul(Get(s3,dx,dy), float4x4(0.000767468533013,-0.000585097295698,-0.004868842195719,-0.008368930779397,-0.002893992699683,-0.001455252524465,0.007327870465815,0.005488486494869,0.001755525358021,0.004817380569875,-0.000256560539128,-0.006667390465736,0.000180237781024,-0.002840899396688,-0.002986736595631,0.000155082947458));
res += mul(Get(s4,-dx,-dy), float4x4(-0.003260372439399,-0.001845843973570,-0.000212551545701,0.000559752224945,0.000709907326382,0.000279075553408,-0.000087697240815,-0.000445545272669,-0.002808292396367,0.001733209122904,0.001696344814263,-0.001017253147438,0.001564469421282,0.000836803053971,0.000386886473279,0.000446669902885));
res += mul(Get(s4,-dx,0), float4x4(-0.003905654419214,-0.004073195159435,-0.004155484959483,-0.004415631759912,0.001258386299014,0.001658207504079,0.001354708336294,0.000922693347093,-0.004782722797245,-0.000476778048323,-0.000826644361950,-0.000521675159689,0.001327764708549,0.001682645874098,0.002007595030591,0.002195525914431));
res += mul(Get(s4,-dx,dy), float4x4(-0.000376603857148,-0.001711535849608,-0.002153373556212,-0.002171704545617,-0.000198234265554,0.000213109960896,0.000419207528466,0.000336780183716,0.001819616067223,-0.000505149597302,0.001311615691520,0.004618295002729,0.000392583664507,0.000297435122775,0.000331287970766,0.000484721967950));
res += mul(Get(s4,0,-dy), float4x4(0.008883850648999,-0.000148387494846,-0.004982548765838,-0.004284141585231,0.002976393327117,0.001536448951811,-0.000001145603619,-0.000186789766303,0.013971614651382,-0.005682391580194,0.000337661826052,0.000800151086878,0.003368709934875,0.001352085149847,-0.002251339145005,-0.002848138567060));
res += mul(Get(s4,0,0), float4x4(0.015248420648277,0.023357827216387,0.027483038604259,0.021222531795502,0.004772560670972,0.004830546677113,0.004805007483810,0.004150941036642,0.020785145461559,0.029485447332263,-0.057488258928061,0.006538946181536,-0.015636680647731,-0.015057699754834,-0.008107945322990,0.000178046539077));
res += mul(Get(s4,0,dy), float4x4(-0.000282142165815,-0.000288670475129,0.000447084225016,0.004799504298717,-0.000776700442657,-0.000287064642180,0.000783396710176,0.003027696162462,0.000391289882828,0.007866047322750,0.004394484683871,-0.018519427627325,0.002955568023026,0.003079317742959,-0.003070960054174,-0.012158849276602));
res += mul(Get(s4,dx,-dy), float4x4(-0.005927048623562,-0.002590753370896,-0.000089616674813,0.000113067188067,-0.007463582325727,-0.001773644937202,0.000880487146787,0.001901109004393,-0.000020374851374,-0.000276965525700,-0.001903317752294,-0.002755684312433,0.008913479745388,0.003521571634337,-0.001026354962960,-0.002072055358440));
res += mul(Get(s4,dx,0), float4x4(-0.004739296156913,-0.005512768868357,-0.007748124189675,-0.008936907164752,-0.003510558512062,-0.010709588415921,-0.017183842137456,-0.012577202171087,-0.001980442553759,-0.002460050862283,-0.003337674075738,0.002673020353541,0.003379068803042,0.009317645803094,0.015556889586151,0.016438134014606));
res += mul(Get(s4,dx,dy), float4x4(-0.001793116913177,-0.002918469253927,-0.002951132366434,-0.002622542204335,-0.000914849690162,0.001530398847535,0.005743891466409,0.001410102006048,-0.000697301758919,-0.001912131556310,0.003014681627974,0.005554846022278,0.001942473929375,0.001492684474215,-0.001316921552643,-0.002883201930672));
res += mul(Get(s5,-dx,-dy), float4x4(0.003190461313352,-0.000481339695398,-0.002520981477574,-0.001881121541373,0.000062754334067,-0.000856811471749,-0.001309798331931,-0.000058012014051,-0.000473070365842,-0.000371428381186,-0.000306913047098,0.000438782502897,-0.001167288748547,-0.000111452849524,0.000758732028771,0.000501232338138));
res += mul(Get(s5,-dx,0), float4x4(0.002791781676933,0.005720224697143,0.006963928695768,0.006018968764693,-0.000850813346915,-0.000389792548958,0.000149841085658,0.000175412773388,-0.000806949625257,0.000282541615888,-0.002179716713727,-0.004439547657967,-0.004719404503703,-0.004539073444903,-0.003519302466884,-0.001922774710692));
res += mul(Get(s5,-dx,dy), float4x4(-0.001694035599940,-0.001771439448930,-0.001191274030134,0.000559468229767,-0.000681567064021,-0.001012143213302,-0.000037537603930,0.000692211906426,0.001797749311663,0.000706266262569,-0.000874349672813,-0.001378604094498,0.001084181130864,0.001537748263218,0.000084763720224,-0.002115894574672));
res += mul(Get(s5,0,-dy), float4x4(0.028140848502517,0.012303196825087,0.000315637793392,-0.003412554506212,0.003244188847020,0.005187422502786,0.002579540479928,0.002543712267652,0.014778771437705,-0.007209551986307,-0.004873337224126,-0.003041071118787,-0.007471970748156,-0.008332715369761,-0.005546036642045,-0.002275601960719));
res += mul(Get(s5,0,0), float4x4(0.006274311803281,0.021384334191680,0.037182074040174,0.043675936758518,0.001896900124848,-0.002224644878879,-0.004248967859894,0.002532050944865,-0.004584661684930,-0.025272121652961,0.004979816731066,0.049654934555292,0.018436830490828,0.022151900455356,0.017331467941403,0.004968663677573));
res += mul(Get(s5,0,dy), float4x4(0.000280672975350,-0.000751731335185,-0.003307064762339,-0.005720276851207,0.001477835001424,0.001161918509752,-0.001309763058089,-0.003514222567901,0.000621060607955,-0.000525893701706,-0.001425977796316,0.002324060536921,-0.005809737835079,-0.007672816514969,-0.004135905299336,0.006139593664557));
res += mul(Get(s5,dx,-dy), float4x4(-0.000507378135808,0.000309089577058,0.000362208287697,-0.000257292034803,-0.013016059063375,0.015620302408934,0.009977559559047,0.002519791712984,-0.007143256720155,-0.010581376031041,-0.001353478175588,0.003163351211697,-0.005672885570675,-0.008369155228138,-0.009417378343642,-0.006982118822634));
res += mul(Get(s5,dx,0), float4x4(0.001120242988691,-0.001020293449983,-0.003089496167377,-0.002345305401832,0.019776312634349,0.028108231723309,-0.014065033756196,-0.060451082885265,-0.009026456624269,-0.002753498265520,0.016340969130397,0.010570460930467,-0.010943804867566,-0.005472980905324,0.002662993036211,0.002324501285329));
res += mul(Get(s5,dx,dy), float4x4(-0.000091327572591,0.000152659034939,0.000636562821455,0.001299286261201,0.000290614116238,0.001483705942519,0.000397891271859,0.002038450445980,-0.000312294287141,0.000211384380236,0.002957731951028,0.002368053887039,-0.000196406341274,-0.000948727887589,-0.002146647544578,-0.005782386753708));
return res;
}