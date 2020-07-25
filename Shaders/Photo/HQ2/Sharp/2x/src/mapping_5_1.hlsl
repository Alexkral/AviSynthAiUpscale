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
res += mul(Get(s0,-dx,-dy), float4x4(0.038786448538303,-0.055676039308310,0.053504001349211,0.125228971242905,-0.014828248880804,-0.059975195676088,0.106244027614594,-0.049560945481062,0.082147642970085,-0.226743489503860,0.001760407234542,-0.177229583263397,0.070389866828918,0.043455474078655,-0.081839300692081,0.054630234837532));
res += mul(Get(s0,-dx,0), float4x4(-0.014725041575730,0.023128448054194,0.042099893093109,-0.017493052408099,0.003636381123215,0.167135253548622,0.109185628592968,-0.146680802106857,-0.007903744466603,-0.038600418716669,-0.030927397310734,0.105898968875408,-0.155051082372665,-0.029438396915793,-0.012748024426401,0.003834436647594));
res += mul(Get(s0,-dx,dy), float4x4(0.005706011783332,0.067985422909260,-0.121381126344204,0.065377868711948,0.115513235330582,0.003077231347561,0.137292429804802,0.031468328088522,0.062946863472462,-0.136686563491821,0.103581704199314,0.121009305119514,-0.181581512093544,-0.105018354952335,-0.091358542442322,0.022372471168637));
res += mul(Get(s0,0,-dy), float4x4(0.215609744191170,0.166369691491127,-0.086177550256252,-0.133335217833519,-0.026100968942046,0.024362189695239,-0.133861944079399,0.132005423307419,-0.157730981707573,-0.071919277310371,-0.141134500503540,0.088407047092915,0.078197710216045,0.045921411365271,0.127987012267113,-0.101103857159615));
res += mul(Get(s0,0,0), float4x4(-0.010026948526502,0.003225619439036,-0.094196461141109,-0.222387790679932,0.088700763881207,-0.116677641868591,0.035525266081095,0.107333958148956,0.031111676245928,0.086438611149788,-0.046871844679117,0.148262143135071,0.165334910154343,0.016864450648427,-0.055619627237320,-0.155293360352516));
res += mul(Get(s0,0,dy), float4x4(-0.175071790814400,0.132619157433510,0.056050959974527,-0.178514420986176,0.077440671622753,-0.009734952822328,-0.000931379909161,-0.038909375667572,-0.020601285621524,0.003919111099094,0.101948671042919,0.022302407771349,0.159324482083321,-0.142416939139366,-0.040639843791723,0.116738311946392));
res += mul(Get(s0,dx,-dy), float4x4(0.043142322450876,-0.038824614137411,0.064653851091862,0.036565426737070,-0.057155467569828,-0.153179332613945,0.070522606372833,0.152753517031670,0.086741477251053,0.110119052231312,0.083278566598892,0.122059881687164,0.013089071959257,0.034392744302750,0.072728209197521,0.049458224326372));
res += mul(Get(s0,dx,0), float4x4(0.028690701350570,-0.125621706247330,0.201041892170906,0.042039312422276,0.041746757924557,-0.047735068947077,-0.066093198955059,-0.027885122224689,0.180006891489029,-0.042782023549080,0.181434527039528,0.113897837698460,-0.030766278505325,0.061984777450562,0.081677854061127,-0.020399006083608));
res += mul(Get(s0,dx,dy), float4x4(-0.052373673766851,-0.065929643809795,0.176723673939705,-0.081183746457100,0.103452526032925,0.008578452281654,0.131415098905563,0.120358012616634,0.090492539107800,0.007550624664873,-0.167925149202347,-0.031479299068451,0.079386048018932,0.052101116627455,0.006829492747784,0.073850393295288));
res += mul(Get(s1,-dx,-dy), float4x4(0.061621252447367,0.060957144945860,-0.093987651169300,0.093890786170959,0.123274043202400,-0.050016481429338,0.092645876109600,-0.017364325001836,0.043944958597422,-0.063236735761166,0.023056840524077,0.028020700439811,0.139017224311829,0.107573956251144,-0.110194191336632,-0.227955758571625));
res += mul(Get(s1,-dx,0), float4x4(-0.144065514206886,0.001034719869494,-0.044477384537458,0.059024728834629,0.003676703432575,-0.041066858917475,-0.096352957189083,-0.013789535500109,0.046773724257946,0.172523483633995,0.075119830667973,-0.017997847869992,0.101430095732212,-0.113229475915432,-0.003294961294159,0.138398602604866));
res += mul(Get(s1,-dx,dy), float4x4(-0.074967525899410,0.106745444238186,0.245651170611382,0.034924693405628,0.122775778174400,0.017665142193437,0.113399244844913,-0.072792232036591,0.056478504091501,0.142553776502609,0.014358843676746,-0.096317067742348,-0.031222362071276,-0.112272411584854,0.032965820282698,0.098818607628345));
res += mul(Get(s1,0,-dy), float4x4(-0.040785405784845,0.027552971616387,0.147157803177834,0.011291316710413,-0.160606741905212,-0.063135460019112,-0.011810297146440,-0.033038720488548,-0.040634281933308,-0.000065016647568,-0.177294895052910,0.088984735310078,0.072974130511284,0.058863401412964,0.007990454323590,-0.016166409477592));
res += mul(Get(s1,0,0), float4x4(-0.018802829086781,-0.061835713684559,-0.028138814494014,0.009949012659490,0.006847703829408,-0.080187119543552,-0.010660069063306,-0.008904982358217,-0.109877437353134,-0.013069925829768,-0.072894416749477,-0.035802792757750,0.006501805037260,-0.162666529417038,0.088949955999851,0.079351104795933));
res += mul(Get(s1,0,dy), float4x4(-0.176769435405731,0.077185168862343,0.034323789179325,-0.076817497611046,-0.058424666523933,-0.227319329977036,0.048341084271669,-0.059463396668434,-0.081195354461670,0.059425950050354,0.004221382550895,0.192656770348549,0.017869632691145,0.060368504375219,-0.010378536768258,-0.137849792838097));
res += mul(Get(s1,dx,-dy), float4x4(-0.068804495036602,-0.046764276921749,0.107335083186626,0.116164147853851,-0.055709518492222,-0.123577840626240,0.071740955114365,0.118173420429230,0.066926203668118,-0.053473733365536,-0.057133689522743,0.065813265740871,-0.043427724391222,-0.058315530419350,0.086185567080975,0.137675598263741));
res += mul(Get(s1,dx,0), float4x4(-0.156597420573235,0.083906814455986,-0.194039866328239,-0.054605290293694,-0.135719940066338,0.022442264482379,-0.115915216505527,-0.077376142144203,0.012247586622834,0.023153070360422,-0.092943891882896,-0.166468545794487,-0.048859182745218,-0.042077403515577,0.136175721883774,0.105395272374153));
res += mul(Get(s1,dx,dy), float4x4(0.111090250313282,-0.133692994713783,0.005098705645651,-0.093172341585159,-0.018374649807811,0.106938637793064,-0.009722271002829,-0.059322282671928,-0.001270582433790,-0.068516597151756,0.190026864409447,-0.008903712034225,-0.196088790893555,-0.145432740449905,-0.058151382952929,-0.141216874122620));
res += mul(Get(s2,-dx,-dy), float4x4(-0.028031961992383,-0.041948586702347,-0.142328202724457,-0.079646557569504,-0.052833434194326,0.075646027922630,-0.032841004431248,0.200408458709717,0.034750618040562,-0.162561312317848,0.048952896147966,-0.052635509520769,0.097604289650917,0.250890582799911,0.019239310175180,-0.025770831853151));
res += mul(Get(s2,-dx,0), float4x4(0.019586896523833,-0.082224376499653,-0.110653355717659,-0.014945034869015,0.013973452150822,-0.022375101223588,0.064905278384686,0.076260738074780,0.002359789330512,0.041205741465092,-0.073957838118076,-0.054944530129433,0.123903624713421,0.020510831847787,0.062842078506947,0.068584673106670));
res += mul(Get(s2,-dx,dy), float4x4(-0.113188281655312,0.148568719625473,-0.017826704308391,0.089503608644009,0.102879986166954,-0.131716102361679,-0.120010860264301,-0.103802934288979,0.051880538463593,0.191188350319862,-0.018574738875031,-0.042972333729267,0.075212664902210,-0.004987795837224,-0.029487488791347,-0.167510166764259));
res += mul(Get(s2,0,-dy), float4x4(-0.098563350737095,0.051787164062262,0.111216194927692,0.003495709504932,0.101950526237488,0.026987912133336,0.043883640319109,-0.032415743917227,0.190186321735382,-0.042957376688719,0.140902176499367,0.023212386295199,0.153981417417526,0.027637403458357,0.133886173367500,0.062092550098896));
res += mul(Get(s2,0,0), float4x4(0.104251079261303,0.026811955496669,0.134122550487518,0.092865258455276,-0.029279688373208,-0.016258040443063,0.053175907582045,-0.169398173689842,0.090074978768826,0.075494788587093,0.040686421096325,0.030829822644591,-0.155251100659370,-0.070968985557556,-0.010967568494380,0.025789231061935));
res += mul(Get(s2,0,dy), float4x4(0.015603965148330,0.002995932009071,-0.024975720793009,0.232519105076790,-0.007948906160891,-0.083247348666191,-0.124670915305614,0.201334014534950,-0.233496606349945,-0.117806069552898,-0.033811021596193,0.034729283303022,0.228135541081429,0.064127430319786,0.026104493066669,0.065485723316669));
res += mul(Get(s2,dx,-dy), float4x4(0.053764667361975,-0.002578787738457,0.062838777899742,0.113250494003296,-0.092179745435715,-0.121287144720554,-0.066832698881626,0.114367596805096,-0.107906490564346,0.110388599336147,-0.066662251949310,-0.042558699846268,-0.074811682105064,-0.099514588713646,0.130157247185707,0.057175733149052));
res += mul(Get(s2,dx,0), float4x4(-0.050701364874840,0.177090480923653,0.175103336572647,0.063632525503635,0.168891191482544,0.152643114328384,0.095764607191086,-0.105199791491032,-0.198104381561279,0.092248454689980,-0.004583277273923,0.022403720766306,-0.119732014834881,0.066612586379051,-0.088726811110973,-0.030052023008466));
res += mul(Get(s2,dx,dy), float4x4(0.014954941347241,0.020482143387198,-0.054347194731236,0.014496675692499,0.011824358254671,0.038546979427338,0.213089093565941,0.136278137564659,-0.086457841098309,-0.049995124340057,0.011894027702510,-0.119855768978596,0.231551349163055,-0.048496488481760,-0.121588684618473,-0.003066047793254));
res += mul(Get(s3,-dx,-dy), float4x4(0.025865482166409,-0.045942980796099,-0.019320378080010,-0.114523030817509,-0.113479010760784,0.181642010807991,-0.007170217111707,0.090324088931084,-0.039805937558413,-0.063776001334190,-0.012163377366960,-0.101482309401035,0.090282134711742,-0.050255030393600,-0.010791229084134,0.072980247437954));
res += mul(Get(s3,-dx,0), float4x4(0.009699366986752,0.049142800271511,0.002323557622731,0.133830919861794,-0.122125804424286,-0.017463658004999,-0.038894593715668,0.174627915024757,0.002163857920095,-0.146035417914391,-0.117278121411800,-0.078624852001667,-0.177549481391907,0.025156395509839,0.057709414511919,-0.019767059013247));
res += mul(Get(s3,-dx,dy), float4x4(-0.101417958736420,0.006669293157756,0.079551003873348,0.047508966177702,0.134814977645874,-0.153306558728218,-0.079167753458023,-0.095423169434071,0.007066996768117,0.072123005986214,0.048029374331236,0.052384242415428,-0.090826772153378,0.005629618652165,0.217605471611023,0.039394568651915));
res += mul(Get(s3,0,-dy), float4x4(-0.204210221767426,0.031863231211901,0.073067650198936,-0.045311048626900,0.046256143599749,0.116413414478302,0.103042609989643,-0.059808135032654,-0.031953681260347,-0.090958550572395,0.170770436525345,-0.234224110841751,-0.108273260295391,-0.092068895697594,0.035887189209461,0.001246016938239));
res += mul(Get(s3,0,0), float4x4(0.299216717481613,0.092913880944252,0.128238305449486,-0.087953560054302,0.012098846957088,-0.052609268575907,-0.079896979033947,0.081230677664280,0.051813233643770,-0.169506013393402,-0.042077466845512,-0.011472455225885,0.083155408501625,-0.042418595403433,0.002408463042229,0.071317031979561));
res += mul(Get(s3,0,dy), float4x4(0.096732117235661,-0.115352466702461,-0.005783753003925,-0.072637073695660,0.059366468340158,-0.069133713841438,-0.107304014265537,0.162137508392334,0.002123203594238,0.063444972038269,-0.113159209489822,0.092572204768658,-0.049767266958952,-0.073692992329597,-0.049390487372875,0.008421858772635));
res += mul(Get(s3,dx,-dy), float4x4(-0.092800229787827,-0.108877249062061,-0.003400151152164,0.239569768309593,0.076733060181141,0.169978514313698,0.081026300787926,-0.034591410309076,-0.044195570051670,0.003204893786460,0.040742397308350,0.096433557569981,-0.164808169007301,0.218599006533623,-0.045769069343805,0.091536104679108));
res += mul(Get(s3,dx,0), float4x4(0.237706303596497,-0.113913305103779,0.051703877747059,0.010918039828539,0.057610161602497,-0.044568344950676,-0.044866431504488,-0.102837152779102,0.038772795349360,0.050105392932892,0.089523978531361,-0.171245023608208,0.056666325777769,-0.046103224158287,0.024686018005013,-0.273753017187119));
res += mul(Get(s3,dx,dy), float4x4(-0.026589412242174,-0.143805548548698,0.035714324563742,-0.015289224684238,-0.067879974842072,-0.040355637669563,0.000966658815742,0.004931000992656,0.046029634773731,-0.123978562653065,-0.019257487729192,0.026562009006739,-0.055330436676741,-0.193688556551933,0.011657194234431,0.047949746251106));
res = max(float4(0,0,0,0), res);
return res;
}
