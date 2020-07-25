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
res += mul(Get(s0,-dx,-dy), float4x4(0.076001398265362,0.147880464792252,0.032157424837351,-0.061413094401360,0.034363023936749,0.130622535943985,0.073925018310547,0.030672350898385,-0.137556910514832,0.025761483237147,0.113025069236755,-0.160587444901466,-0.019423555582762,0.008673092350364,0.307708799839020,-0.008677389472723));
res += mul(Get(s0,-dx,0), float4x4(0.022258747369051,0.016348285600543,0.071915708482265,-0.054461192339659,-0.056113369762897,-0.047964595258236,-0.064436689019203,-0.003767447313294,0.127746060490608,-0.113452732563019,-0.081329926848412,0.087477028369904,0.102458715438843,-0.085611633956432,-0.056769337505102,0.049783352762461));
res += mul(Get(s0,-dx,dy), float4x4(0.088864512741566,-0.068332105875015,0.046960953623056,-0.041554745286703,-0.128023087978363,0.054283071309328,0.145210266113281,0.017423674464226,-0.094412103295326,0.186156123876572,-0.039261646568775,-0.108015336096287,0.046659756451845,-0.132470458745956,-0.149576887488365,-0.004400395322591));
res += mul(Get(s0,0,-dy), float4x4(0.056861829012632,0.107271008193493,-0.085476391017437,-0.004461916629225,0.013177708722651,0.009710206650198,-0.111449271440506,0.052044749259949,-0.011136910878122,0.071342058479786,-0.090054363012314,0.116132721304893,0.018014971166849,0.003216553712264,0.078915596008301,-0.071574546396732));
res += mul(Get(s0,0,0), float4x4(0.012720282189548,-0.073717765510082,0.103172264993191,0.062107350677252,-0.132153838872910,0.042885255068541,0.087999887764454,-0.179111912846565,-0.081456363201141,0.033690650016069,0.003792042378336,0.012362737208605,0.050354026257992,-0.138517409563065,0.042644333094358,0.067522682249546));
res += mul(Get(s0,0,dy), float4x4(0.201053261756897,0.156537696719170,-0.113427013158798,-0.125748664140701,0.163408279418945,0.098230950534344,-0.093445554375648,0.047158822417259,-0.037553444504738,-0.096468426287174,-0.011823509819806,-0.030256113037467,-0.067992120981216,-0.104720577597618,-0.037669043987989,-0.047323834151030));
res += mul(Get(s0,dx,-dy), float4x4(-0.031352944672108,-0.038180485367775,-0.007544820662588,0.056363817304373,0.042199410498142,-0.007338195107877,0.026326598599553,-0.153196945786476,0.062764346599579,-0.231853693723679,-0.087845727801323,-0.005085962358862,0.132771775126457,-0.031689703464508,0.057547684758902,-0.066297836601734));
res += mul(Get(s0,dx,0), float4x4(-0.058914288878441,0.002444165060297,-0.056179597973824,0.077017962932587,-0.076767794787884,0.115685708820820,-0.068335987627506,-0.008421938866377,-0.042427625507116,0.072307378053665,0.096835717558861,-0.137000486254692,-0.033058218657970,0.142967253923416,-0.007010329980403,0.123246654868126));
res += mul(Get(s0,dx,dy), float4x4(0.064560770988464,-0.032802846282721,-0.136962860822678,0.109686978161335,0.033889651298523,-0.104793056845665,0.084167204797268,0.131060093641281,0.079172186553478,0.060605991631746,0.189816430211067,0.072545826435089,-0.009674658067524,0.001904064905830,0.054387949407101,-0.147147282958031));
res += mul(Get(s1,-dx,-dy), float4x4(0.038515500724316,-0.051500525325537,0.049382783472538,-0.152034237980843,-0.125436693429947,0.006806990597397,0.046381399035454,0.076290532946587,0.111358866095543,0.102031752467155,-0.254477858543396,0.081630855798721,-0.025771288201213,0.006784301716834,0.112815603613853,0.018169045448303));
res += mul(Get(s1,-dx,0), float4x4(0.035085920244455,-0.128251075744629,0.048362247645855,-0.074051529169083,-0.063011318445206,0.130952179431915,0.120531283318996,0.014761515893042,-0.088007055222988,0.093053348362446,0.023787992075086,0.129393994808197,0.019369471818209,-0.031454928219318,0.099706649780273,-0.053894266486168));
res += mul(Get(s1,-dx,dy), float4x4(0.153184652328491,-0.069787919521332,0.056925695389509,0.061846110969782,-0.038701049983501,0.219179064035416,-0.170946449041367,0.088686466217041,0.061255529522896,-0.003051067236811,0.001257772557437,-0.050818271934986,0.163243740797043,-0.094595044851303,-0.228879421949387,-0.013276936486363));
res += mul(Get(s1,0,-dy), float4x4(0.183721065521240,-0.036550108343363,-0.066447831690311,0.034267552196980,0.027630049735308,0.011731622740626,0.242026701569557,-0.017766492441297,0.058301340788603,0.189824208617210,0.004456982482225,0.019347116351128,0.041201993823051,-0.051859345287085,0.066140189766884,0.041276436299086));
res += mul(Get(s1,0,0), float4x4(0.038105126470327,-0.031060904264450,-0.035121437162161,0.117497034370899,-0.015494167804718,-0.095201097428799,-0.141151145100594,0.054624363780022,0.206587523221970,-0.031454931944609,0.035036832094193,-0.109348438680172,0.111164025962353,-0.089398831129074,-0.132013231515884,-0.098793596029282));
res += mul(Get(s1,0,dy), float4x4(-0.014458866789937,-0.028430666774511,-0.021253202110529,-0.018152372911572,-0.014088273979723,0.028494564816356,0.129015833139420,-0.045530300587416,-0.085794217884541,0.036435876041651,-0.064556092023849,-0.073133364319801,-0.054389033466578,0.000874085933901,0.060691062361002,-0.114897161722183));
res += mul(Get(s1,dx,-dy), float4x4(-0.042103283107281,0.122334003448486,0.144250765442848,0.007975485175848,-0.081032775342464,-0.184802249073982,-0.139513194561005,0.256960868835449,-0.033478684723377,-0.073479853570461,-0.044236253947020,-0.096329174935818,-0.095971293747425,-0.031540084630251,0.032663956284523,0.141029968857765));
res += mul(Get(s1,dx,0), float4x4(-0.117448963224888,-0.004614118486643,-0.086464487016201,-0.086371652781963,0.198846176266670,0.062025800347328,-0.002288343850523,0.223201945424080,-0.034175273030996,-0.095451951026917,-0.112272188067436,0.078785508871078,-0.055613368749619,0.112334117293358,0.092457160353661,-0.071187920868397));
res += mul(Get(s1,dx,dy), float4x4(-0.302606761455536,0.033827330917120,-0.031267680227757,-0.011081793345511,-0.153116434812546,-0.077474005520344,0.037291478365660,0.079355321824551,0.089548870921135,0.072255969047546,0.112202212214470,0.147147521376610,0.109025150537491,0.026554720476270,-0.182294219732285,-0.190997287631035));
res += mul(Get(s2,-dx,-dy), float4x4(-0.102431796491146,0.026594076305628,-0.031557399779558,0.011040623299778,0.016177322715521,-0.102591007947922,0.059034816920757,0.089322075247765,0.150730326771736,0.115680985152721,0.003519942518324,-0.241139441728592,0.038106158375740,0.019189877435565,0.065229892730713,-0.047160379588604));
res += mul(Get(s2,-dx,0), float4x4(-0.022752702236176,0.107285849750042,-0.058170560747385,0.083848237991333,0.105457946658134,-0.074403136968613,-0.000888934358954,0.101101040840149,-0.124688014388084,0.131321862339973,0.046243358403444,0.049840539693832,0.062760241329670,0.000655572512187,-0.134703636169434,-0.036754842847586));
res += mul(Get(s2,-dx,dy), float4x4(0.009336299262941,-0.084410242736340,0.024175124242902,0.015566579066217,0.033344652503729,0.071583360433578,0.119607731699944,-0.031879510730505,-0.088344857096672,-0.125076696276665,0.119753025472164,0.110482551157475,-0.122111201286316,0.004479509778321,-0.177604869008064,-0.058159258216619));
res += mul(Get(s2,0,-dy), float4x4(0.147595196962357,-0.034627366811037,0.088171556591988,-0.041157964617014,-0.151020392775536,-0.042666438966990,-0.017523525282741,0.136370271444321,0.107565134763718,-0.103196889162064,-0.027794910594821,-0.040430411696434,-0.062341153621674,-0.066359460353851,-0.253839880228043,-0.027606744319201));
res += mul(Get(s2,0,0), float4x4(0.102935820817947,-0.076795153319836,-0.006657275371253,0.022448133677244,0.136682301759720,-0.018151335418224,0.034090392291546,-0.013519345782697,0.057955458760262,-0.145449712872505,0.047054037451744,-0.040202662348747,-0.057741161435843,0.092144794762135,-0.089900776743889,0.110565133392811));
res += mul(Get(s2,0,dy), float4x4(0.066781431436539,-0.166510432958603,-0.023335883393884,-0.069756209850311,-0.043721690773964,0.043556965887547,-0.000510694400873,0.031819939613342,0.018922768533230,0.006202759221196,0.035627268254757,-0.231886729598045,0.076461091637611,0.236484989523888,-0.131437063217163,0.001706567942165));
res += mul(Get(s2,dx,-dy), float4x4(0.109851665794849,-0.046102389693260,-0.018073029816151,0.067044205963612,0.017097985371947,0.053126744925976,0.049707867205143,-0.112647987902164,0.003823124337941,-0.003082463052124,-0.071583934128284,-0.052259642630816,0.115907236933708,0.016486378386617,0.126759305596352,-0.038966964930296));
res += mul(Get(s2,dx,0), float4x4(-0.048281751573086,-0.026145759969950,-0.014417908154428,-0.026826445013285,-0.084268435835838,0.122161760926247,0.086711958050728,0.064170703291893,-0.032550781965256,-0.246763512492180,-0.104599401354790,0.056779280304909,0.127824038267136,0.079243376851082,0.035579238086939,0.170164197683334));
res += mul(Get(s2,dx,dy), float4x4(0.031034514307976,0.011887219734490,0.216781362891197,-0.052408549934626,-0.046002745628357,-0.062388952821493,0.077055983245373,-0.105017229914665,-0.042395118623972,-0.065656006336212,0.076545871794224,-0.012935260310769,0.012651397846639,-0.143159195780754,0.011193596757948,0.185947731137276));
res += mul(Get(s3,-dx,-dy), float4x4(0.039710864424706,-0.093239970505238,-0.050707500427961,-0.242608979344368,0.085592970252037,0.064082272350788,0.045962210744619,-0.084056928753853,0.014103815890849,0.041184291243553,-0.068240389227867,0.001310569001362,-0.104903228580952,0.026771359145641,0.014828681945801,0.105194620788097));
res += mul(Get(s3,-dx,0), float4x4(0.221521481871605,0.068006731569767,-0.167949840426445,-0.101319976150990,-0.016939863562584,-0.074544087052345,-0.028369272127748,0.047538653016090,-0.037951778620481,0.051187504082918,0.063432611525059,0.001095177838579,0.074394039809704,-0.028278969228268,-0.114689230918884,0.007687046192586));
res += mul(Get(s3,-dx,dy), float4x4(-0.086999706923962,-0.037384800612926,0.036643836647272,-0.160146936774254,0.010579050518572,-0.043551817536354,-0.167998149991035,-0.097697913646698,0.130251139402390,0.035775575786829,0.014830471016467,0.066924706101418,0.028931807726622,-0.156797125935555,0.021285781636834,-0.250101149082184));
res += mul(Get(s3,0,-dy), float4x4(-0.108475774526596,-0.069053709506989,0.154213383793831,0.050190534442663,-0.103124246001244,-0.003576732706279,-0.094348303973675,-0.148278519511223,-0.076765388250351,-0.054024666547775,-0.077444456517696,-0.140272185206413,-0.010510531254113,-0.083502538502216,0.057843979448080,0.172169685363770));
res += mul(Get(s3,0,0), float4x4(-0.139013558626175,-0.088088117539883,-0.069833569228649,0.061759117990732,-0.071029834449291,0.024506298825145,0.098456323146820,0.219972819089890,0.054918970912695,0.201376080513000,-0.086371369659901,-0.025369539856911,0.017715632915497,0.015781629830599,-0.140207916498184,-0.064648061990738));
res += mul(Get(s3,0,dy), float4x4(-0.015858037397265,-0.104172341525555,-0.101264506578445,0.051045846194029,-0.017784159630537,-0.035221584141254,-0.073264107108116,0.141394853591919,0.046521637588739,0.162555590271950,-0.255598455667496,0.130244493484497,0.066030345857143,0.081248939037323,0.013847192749381,0.007511611562222));
res += mul(Get(s3,dx,-dy), float4x4(-0.071637742221355,0.042686279863119,-0.165720999240875,0.154628947377205,-0.023746678605676,-0.062364909797907,-0.149999007582664,0.218706801533699,-0.026482101529837,-0.046939421445131,0.079225972294807,0.061394743621349,0.026898741722107,0.084784120321274,-0.064910039305687,-0.083232261240482));
res += mul(Get(s3,dx,0), float4x4(-0.008796141482890,-0.220892593264580,0.034382864832878,0.017353197559714,-0.126665711402893,-0.115081466734409,-0.007532823365182,-0.059384856373072,-0.137535095214844,0.077936559915543,0.008245002478361,-0.191045850515366,-0.187648996710777,-0.009068310260773,-0.085139758884907,0.018301341682673));
res += mul(Get(s3,dx,dy), float4x4(0.123353295028210,-0.112946741282940,-0.036835793405771,0.031530339270830,-0.186481237411499,0.110610567033291,0.162378162145615,0.026544962078333,-0.185228213667870,-0.112474739551544,-0.139429613947868,0.082722395658493,-0.104444615542889,-0.029354840517044,0.035624086856842,0.093115285038948));
res = max(float4(0,0,0,0), res);
return res;
}
