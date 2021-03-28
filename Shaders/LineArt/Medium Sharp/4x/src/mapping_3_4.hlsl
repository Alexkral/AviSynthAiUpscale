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
float4 res = float4(-0.019804568961263,-0.142304450273514,-0.054441928863525,0.314861536026001);
res += mul(Get(s0,-dx,-dy), float4x4(-0.038618344813585,0.028155280277133,0.072099052369595,-0.026549538597465,-0.200212955474854,-0.214414745569229,0.194416835904121,-0.005959937348962,-0.095729589462280,-0.033242970705032,-0.061448872089386,-0.141331627964973,0.014528135769069,-0.089284732937813,0.043121594935656,-0.196259468793869));
res += mul(Get(s0,-dx,0), float4x4(0.104820355772972,0.506255805492401,-0.068694315850735,-0.186795204877853,-0.137449681758881,0.153643950819969,-0.465450912714005,0.293682932853699,-0.175270572304726,-0.293198645114899,-0.415233552455902,-0.126178205013275,0.084770806133747,-0.110774584114552,-0.259292930364609,0.089671924710274));
res += mul(Get(s0,-dx,dy), float4x4(0.002668271539733,-0.085581474006176,0.019312471151352,0.197385698556900,0.040762968361378,-0.255907744169235,0.117917723953724,-0.120256401598454,-0.251606136560440,-0.044093113392591,-0.241855204105377,-0.234091982245445,0.016861625015736,-0.064093261957169,0.006231437902898,-0.132660269737244));
res += mul(Get(s0,0,-dy), float4x4(-0.029527254402637,-0.000306289497530,-0.138358414173126,0.039975840598345,0.021511118859053,-0.053564779460430,0.400206357240677,0.025602964684367,-0.093410916626453,-0.268025666475296,0.061729595065117,-0.517727255821228,0.078491412103176,-0.247957065701485,0.314769983291626,-0.287753403186798));
res += mul(Get(s0,0,0), float4x4(0.097193025052547,-0.311579644680023,0.052686285227537,0.031701695173979,-0.049923237413168,0.244673639535904,0.234550431370735,-0.014603447169065,0.045591302216053,-0.079512111842632,-0.169356971979141,-0.545533478260040,-0.436593264341354,-0.055027060210705,-0.408644676208496,0.357224106788635));
res += mul(Get(s0,0,dy), float4x4(-0.138541832566261,-0.163182973861694,0.056551653891802,0.048777565360069,-0.003168673254550,-0.065110921859741,0.011303246952593,0.031219551339746,-0.063235759735107,-0.288631319999695,-0.187232255935669,-0.543858408927917,-0.063820265233517,0.025668986141682,0.015007732436061,-0.179506585001945));
res += mul(Get(s0,dx,-dy), float4x4(-0.017858296632767,0.209942758083344,-0.418828189373016,0.048487737774849,-0.067122459411621,0.089226230978966,-0.303682744503021,0.179601803421974,-0.003426278010011,-0.142520576715469,-0.006273573730141,-0.198876351118088,0.119853705167770,0.121053017675877,-0.141836419701576,0.358724087476730));
res += mul(Get(s0,dx,0), float4x4(-0.006290307734162,-0.154055833816528,-0.223836570978165,0.025147596374154,-0.113181337714195,-0.123849324882030,-0.051521837711334,0.162750586867332,-0.081351593136787,-0.023950021713972,-0.275998860597610,-0.131567299365997,-0.109148308634758,0.040545955300331,0.384704381227493,0.019484404474497));
res += mul(Get(s0,dx,dy), float4x4(0.177615851163864,0.147552743554115,-0.029680402949452,-0.053219825029373,0.012508282437921,0.094227768480778,0.027422025799751,0.099754519760609,-0.138197466731071,-0.237624764442444,-0.140951663255692,-0.045794937759638,0.052836377173662,0.096125021576881,0.149896517395973,-0.193398743867874));
res += mul(Get(s1,-dx,-dy), float4x4(-0.182441085577011,0.397185772657394,0.080272488296032,-0.083360061049461,-0.106895424425602,-0.076804995536804,-0.050058130174875,-0.212216064333916,0.207534760236740,0.057214789092541,0.092467553913593,0.137079805135727,0.032794281840324,0.012217522598803,0.155070722103119,-0.249004200100899));
res += mul(Get(s1,-dx,0), float4x4(-0.192458882927895,0.403664350509644,-0.061759382486343,-0.174989417195320,0.061960630118847,0.319586336612701,0.169221684336662,-0.232722058892250,0.045980941504240,-0.159722596406937,-0.058662924915552,0.093617871403694,0.173197954893112,0.058612089604139,0.324541002511978,-0.064903363585472));
res += mul(Get(s1,-dx,dy), float4x4(-0.012290060520172,0.286084085702896,0.150519266724586,-0.024225352331996,0.116101615130901,0.077486336231232,0.058372098952532,0.142699152231216,-0.108817771077156,0.193141043186188,-0.092747062444687,-0.125000894069672,0.002235524123535,-0.164342403411865,-0.036627799272537,0.482021301984787));
res += mul(Get(s1,0,-dy), float4x4(0.014421649277210,0.455365508794785,-0.369374185800552,-0.099264867603779,-0.144906356930733,0.124894596636295,-0.198297232389450,0.069993242621422,0.139049500226974,-0.125952571630478,0.099992766976357,-0.168820202350616,0.056924402713776,-0.116814985871315,-0.107144460082054,-0.058271124958992));
res += mul(Get(s1,0,0), float4x4(-0.039225429296494,-0.325745850801468,-0.217621579766273,-0.039741877466440,-0.124123230576515,0.526468694210052,-0.577650904655457,-0.089647457003593,-0.192897066473961,-0.053675070405006,0.105871334671974,-0.578151524066925,-0.093579187989235,-0.035916909575462,-0.324002772569656,0.009031295776367));
res += mul(Get(s1,0,dy), float4x4(-0.018463434651494,0.050101622939110,0.136618494987488,-0.154040753841400,-0.040493078529835,-0.137172535061836,0.430994808673859,-0.171055793762207,-0.107609279453754,0.198457896709442,-0.346605449914932,0.023892929777503,-0.095032759010792,-0.227231547236443,0.092643566429615,-0.284898132085800));
res += mul(Get(s1,dx,-dy), float4x4(0.076475404202938,0.362760096788406,-0.047142554074526,-0.134392261505127,-0.046060252934694,-0.085356406867504,-0.064253352582455,-0.195166900753975,0.138871580362320,-0.073117181658745,0.106915041804314,-0.253563523292542,0.024830479174852,-0.300897598266602,0.122832112014294,0.101394735276699));
res += mul(Get(s1,dx,0), float4x4(-0.154211953282356,0.348971337080002,-0.234056726098061,0.130263358354568,0.332134217023849,0.012373096309602,-0.359206587076187,0.127233058214188,-0.031195143237710,-0.266414374113083,-0.028759773820639,0.313923239707947,0.108824692666531,0.379810184240341,-0.095597498118877,-0.380192786455154));
res += mul(Get(s1,dx,dy), float4x4(0.014715727418661,0.205899387598038,-0.015494911931455,-0.231555446982384,-0.141963765025139,-0.110333882272243,0.196564376354218,-0.088971510529518,-0.084592044353485,0.012205007486045,-0.129762917757034,0.304491311311722,0.033308509737253,-0.097878210246563,0.122878089547157,0.042118981480598));
res += mul(Get(s2,-dx,-dy), float4x4(-0.042377397418022,-0.106991596519947,-0.040248118340969,-0.081573292613029,-0.036049872636795,-0.017388453707099,0.098552517592907,-0.107387572526932,-0.032083835452795,-0.036925736814737,0.052437517791986,0.003889246378094,0.200438886880875,0.081081919372082,0.025100553408265,-0.129779100418091));
res += mul(Get(s2,-dx,0), float4x4(-0.153650313615799,0.122790522873402,-0.047481168061495,-0.107435017824173,0.036619272083044,0.269329607486725,0.077720217406750,-0.603003084659576,0.063235841691494,0.118598707020283,0.215272724628448,0.010526456870139,0.209572196006775,-0.257828116416931,-0.196173027157784,-0.038560241460800));
res += mul(Get(s2,-dx,dy), float4x4(0.018334018066525,-0.072423361241817,-0.024732150137424,0.099858775734901,0.047030262649059,-0.008315629325807,-0.110404670238495,0.038574919104576,-0.034142557531595,-0.116563037037849,0.007568101864308,-0.308677285909653,-0.103585459291935,-0.031487330794334,0.117811203002930,0.039724405854940));
res += mul(Get(s2,0,-dy), float4x4(0.262593984603882,-0.085536867380142,0.400461167097092,-0.237165153026581,-0.041862964630127,-0.013130498118699,0.060870144516230,-0.048936408013105,0.065925128757954,0.088517986238003,-0.022287288680673,0.207998096942902,-0.064507782459259,0.323262274265289,-0.045616466552019,-0.150207981467247));
res += mul(Get(s2,0,0), float4x4(0.104442209005356,0.392016083002090,0.245629504323006,-0.267242312431335,-0.224857002496719,0.157600909471512,-0.205323636531830,0.499893963336945,0.133894085884094,0.306634455919266,0.182176411151886,-0.295262098312378,0.159950211644173,-0.213710188865662,-0.266584336757660,-0.217782631516457));
res += mul(Get(s2,0,dy), float4x4(-0.069681815803051,0.042177870869637,0.019642814993858,0.222209960222244,0.099460698664188,0.288356840610504,-0.073531694710255,0.292040973901749,-0.220336079597473,0.124258518218994,0.165250122547150,0.169704258441925,0.063772849738598,-0.101768180727959,-0.074966043233871,0.045457776635885));
res += mul(Get(s2,dx,-dy), float4x4(0.053918547928333,-0.231858745217323,0.344668358564377,-0.312024921178818,-0.047445382922888,0.136469021439552,-0.048586204648018,0.148683294653893,-0.123970761895180,-0.080981545150280,0.175576508045197,0.084535002708435,0.006297545507550,0.303392857313156,-0.140202686190605,-0.046627711504698));
res += mul(Get(s2,dx,0), float4x4(-0.010997327044606,-0.039280794560909,-0.097871772944927,-0.407123118638992,-0.101624973118305,-0.091176547110081,0.158195912837982,0.087691999971867,0.095783449709415,0.206129401922226,0.182571411132813,0.091572582721710,0.150258898735046,0.180169969797134,0.234578758478165,-0.531884610652924));
res += mul(Get(s2,dx,dy), float4x4(-0.104253776371479,0.061697561293840,0.043817628175020,-0.091312840580940,0.047901619225740,-0.101643435657024,-0.044666815549135,-0.167560800909996,-0.035973343998194,0.134765371680260,0.061096694320440,-0.219571650028229,0.014410343952477,-0.298052400350571,-0.028147103264928,-0.106603898108006));
res += mul(Get(s3,-dx,-dy), float4x4(-0.168394327163696,-0.035711631178856,0.117931254208088,0.320436358451843,-0.005957164335996,-0.030756616964936,-0.026310827583075,0.130055665969849,-0.010257010348141,0.214256182312965,-0.017609303817153,-0.015080734156072,0.084088213741779,-0.226550847291946,0.162096455693245,-0.139382109045982));
res += mul(Get(s3,-dx,0), float4x4(0.026884555816650,-0.103441208600998,0.114816457033157,0.282512992620468,-0.014077887870371,0.019369879737496,-0.111591763794422,0.020221835002303,-0.090576291084290,-0.116043910384178,-0.295019030570984,0.158452793955803,0.129673659801483,0.071584701538086,0.096079781651497,-0.072891011834145));
res += mul(Get(s3,-dx,dy), float4x4(0.033048804849386,0.050296843051910,-0.011408809572458,0.245429873466492,-0.013274811208248,-0.018167236819863,0.033158730715513,-0.102091886103153,0.012717488221824,0.025163976475596,-0.138318210840225,-0.267670512199402,-0.080802269279957,-0.200908109545708,0.105974577367306,0.090657375752926));
res += mul(Get(s3,0,-dy), float4x4(0.040960483253002,-0.204466104507446,0.069025672972202,0.378760874271393,-0.104551583528519,0.785928428173065,-0.338184356689453,0.057767782360315,-0.204716399312019,0.119241423904896,0.019635051488876,0.098756864666939,0.234320789575577,-0.641994357109070,0.348667711019516,-0.049187101423740));
res += mul(Get(s3,0,0), float4x4(0.064954966306686,-0.210914701223373,0.387409538030624,0.284279435873032,0.320360809564590,-0.224479466676712,-0.103792712092400,-0.113688454031944,0.466479212045670,-0.289357036352158,-0.232525914907455,0.066380001604557,-0.023062605410814,0.099530346691608,0.234903842210770,-0.042066238820553));
res += mul(Get(s3,0,dy), float4x4(-0.109339885413647,0.074803799390793,0.038385596126318,0.289053052663803,-0.185710594058037,0.211092889308929,-0.013333600945771,-0.049720354378223,0.078516028821468,0.045031230896711,-0.368721067905426,-0.279018342494965,0.018607784062624,0.169910117983818,0.260106176137924,-0.012087573297322));
res += mul(Get(s3,dx,-dy), float4x4(-0.103533938527107,-0.220375552773476,0.148668572306633,0.095670074224472,0.071863181889057,-0.065965458750725,0.055628340691328,-0.071209438145161,-0.164117023348808,0.063620500266552,-0.017056595534086,0.169484242796898,0.083863511681557,-0.319926738739014,0.048612192273140,0.193464979529381));
res += mul(Get(s3,dx,0), float4x4(0.081766813993454,0.060280550271273,0.187907844781876,0.415706038475037,0.185086935758591,-0.135759070515633,0.131546184420586,0.051380302757025,0.155997112393379,-0.085542313754559,0.413061320781708,-0.057617425918579,0.036276020109653,0.010902167297900,0.124323107302189,-0.283949434757233));
res += mul(Get(s3,dx,dy), float4x4(0.017244242131710,-0.114747270941734,-0.006766384467483,0.350850999355316,0.015030126087368,-0.014117108657956,0.085416063666344,-0.009853019379079,0.084717378020287,0.118348054587841,-0.032282873988152,0.118855848908424,0.051408864557743,-0.064218007028103,-0.112793594598770,0.002544920891523));
res += mul(Get(s4,-dx,-dy), float4x4(0.093297988176346,-0.105876147747040,0.044610083103180,-0.003040511626750,-0.020819740369916,0.067170374095440,0.050148651003838,-0.038826495409012,-0.148400649428368,0.009281932376325,-0.175210550427437,-0.040898911654949,0.149260193109512,-0.272650122642517,0.037377417087555,-0.303104341030121));
res += mul(Get(s4,-dx,0), float4x4(0.151262119412422,-0.227021470665932,0.052097726613283,0.037505980581045,-0.269389241933823,0.259337991476059,-0.053931970149279,-0.045706152915955,-0.089045822620392,-0.011885680258274,-0.144035413861275,0.003888217266649,0.359316289424896,-0.103250935673714,0.240647345781326,-0.064854800701141));
res += mul(Get(s4,-dx,dy), float4x4(0.220235124230385,-0.086671866476536,-0.017740575596690,0.139790177345276,-0.128616347908974,0.171964839100838,0.025600163266063,-0.003567441599444,-0.212289601564407,-0.001842470024712,-0.032640654593706,-0.250668644905090,0.112645752727985,0.002595256548375,0.070428103208542,0.022510830312967));
res += mul(Get(s4,0,-dy), float4x4(-0.002729411702603,-0.415796965360641,0.359225839376450,-0.066166266798973,-0.153070271015167,-0.039077538996935,0.079384796321392,0.170245110988617,-0.114469558000565,0.209467589855194,-0.181602224707603,0.274411231279373,0.080134622752666,-0.126729533076286,0.061821728944778,-0.000939342193305));
res += mul(Get(s4,0,0), float4x4(-0.106729671359062,-0.128332287073135,-0.187278494238853,0.057743925601244,-0.330520302057266,0.387058049440384,-0.248006626963615,0.034448321908712,0.443902403116226,-0.401776641607285,0.081982493400574,-0.267153143882751,0.042100504040718,-0.247573614120483,0.152524054050446,-0.158720836043358));
res += mul(Get(s4,0,dy), float4x4(0.134143546223640,-0.025548527017236,0.098157353699207,0.198531851172447,-0.163360252976418,0.069258131086826,0.036880042403936,-0.027550451457500,-0.045727033168077,-0.003550753463060,-0.145549654960632,-0.168645784258842,-0.031364005059004,0.002102783648297,-0.012860889546573,-0.241070762276649));
res += mul(Get(s4,dx,-dy), float4x4(-0.111154139041901,-0.021658644080162,0.167394086718559,0.092189148068428,0.026722457259893,0.108604729175568,0.045405134558678,0.047473959624767,0.086007945239544,0.041933085769415,0.196157574653625,-0.111972078680992,-0.028943814337254,0.025931576266885,-0.021875752136111,0.075564339756966));
res += mul(Get(s4,dx,0), float4x4(0.120899900794029,-0.161811843514442,0.043014485388994,0.120844468474388,-0.044074550271034,0.091625072062016,0.048775102943182,-0.121235840022564,0.103176027536392,0.123183332383633,-0.050815250724554,-0.257612377405167,-0.033556211739779,0.073250591754913,0.168653815984726,-0.258207052946091));
res += mul(Get(s4,dx,dy), float4x4(-0.026413349434733,0.064268536865711,0.061530485749245,-0.075023695826530,0.018101263791323,0.017276369035244,-0.115926377475262,-0.097403436899185,0.040635626763105,-0.090565554797649,0.012537932023406,-0.184479355812073,0.058512598276138,-0.006951097398996,0.020960485562682,-0.112259946763515));
res += mul(Get(s5,-dx,-dy), float4x4(-0.048557288944721,-0.060326043516397,0.089773200452328,0.044939633458853,-0.053516402840614,0.175710633397102,-0.114973843097687,0.076916649937630,0.217628732323647,0.103231102228165,0.243288174271584,0.052529834210873,-0.012158362194896,0.237711399793625,-0.114962711930275,-0.199246779084206));
res += mul(Get(s5,-dx,0), float4x4(-0.104547098278999,0.189325660467148,0.080688588321209,-0.221117600798607,-0.192851945757866,-0.094103686511517,-0.453987747430801,-0.031708378344774,0.315517157316208,-0.418702542781830,0.295040279626846,0.093487314879894,0.140919551253319,-0.138446673750877,0.137697458267212,-0.587572276592255));
res += mul(Get(s5,-dx,dy), float4x4(-0.077905192971230,0.158493041992188,0.015469494275749,-0.206389784812927,0.073236137628555,-0.189218387007713,0.131402149796486,-0.325331449508667,0.048310019075871,-0.020093679428101,-0.227603346109390,0.202077358961105,0.007928971201181,0.185202240943909,-0.225292816758156,-0.171939656138420));
res += mul(Get(s5,0,-dy), float4x4(-0.037861652672291,-0.167290478944778,0.318063169717789,-0.153989240527153,0.156864047050476,-0.139187678694725,-0.119195207953453,0.020197603851557,-0.114754736423492,0.250068128108978,-0.095305018126965,-0.050102934241295,-0.205270394682884,-0.058905735611916,-0.553887605667114,-0.364501863718033));
res += mul(Get(s5,0,0), float4x4(-0.172889381647110,0.374611020088196,-0.557134568691254,-0.094198100268841,0.153692051768303,-0.120961740612984,-0.323646038770676,-0.222958475351334,-0.471445322036743,0.066061004996300,-0.176668882369995,0.072150163352489,-0.253263682126999,-0.031163673847914,-0.107895739376545,-0.416938722133636));
res += mul(Get(s5,0,dy), float4x4(-0.222659766674042,0.081862598657608,-0.263362169265747,0.061581458896399,0.395000457763672,-0.245948970317841,-0.771384179592133,0.111805833876133,-0.023297267034650,-0.038334347307682,0.133565798401833,0.101653464138508,0.050757583230734,0.158414244651794,-0.210341379046440,-0.288491219282150));
res += mul(Get(s5,dx,-dy), float4x4(-0.049456514418125,-0.086241617798805,0.057383798062801,0.065833240747452,0.233977392315865,0.070474155247211,-0.108976453542709,-0.168967872858047,0.024169666692615,0.081926070153713,0.023602232336998,0.142144411802292,-0.104828000068665,0.005671457853168,0.064994528889656,-0.175593107938766));
res += mul(Get(s5,dx,0), float4x4(-0.020466035231948,0.178751692175865,0.095324091613293,-0.036589503288269,-0.438072055578232,-0.247642099857330,-0.251069873571396,-0.024256469681859,-0.229140087962151,-0.152271106839180,0.161020383238792,0.132973089814186,0.050577595829964,0.104370184242725,-0.025593021884561,-0.423156499862671));
res += mul(Get(s5,dx,dy), float4x4(-0.019704474136233,-0.044927172362804,0.072691202163696,0.097582042217255,0.238340258598328,-0.304787486791611,-0.333450317382813,-0.004773899447173,-0.066847264766693,-0.081764362752438,0.004617542494088,0.199553176760674,-0.019236385822296,-0.126508593559265,-0.053762737661600,-0.276147782802582));
res = max(float4(0, 0, 0, 0), res) + float4(0.522984683513641,-0.114968523383141,-0.217077657580376,-0.083618737757206) * min(float4(0, 0, 0, 0), res);
return res;
}