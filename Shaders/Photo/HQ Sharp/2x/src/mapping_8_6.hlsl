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
float4 res = float4(-0.161084249615669,-0.180865749716759,-0.164462670683861,-0.203460544347763);
res += mul(Get(s0,-dx,-dy), float4x4(-0.096221506595612,0.103404380381107,-0.138029709458351,0.056769795715809,0.008568105287850,-0.046937465667725,0.003971921280026,-0.024908863008022,0.021751645952463,0.072136305272579,0.076920740306377,-0.051009383052588,0.088936120271683,-0.060447681695223,-0.067799046635628,0.056317407637835));
res += mul(Get(s0,-dx,0), float4x4(0.128617331385612,-0.054874934256077,-0.078388281166553,-0.105532251298428,-0.134895563125610,-0.048791099339724,0.070303291082382,-0.092848576605320,0.004945633467287,0.072721935808659,0.048614762723446,0.069356299936771,-0.152759686112404,-0.037465684115887,-0.078779220581055,0.076248176395893));
res += mul(Get(s0,-dx,dy), float4x4(-0.128998667001724,-0.032830137759447,-0.061095267534256,0.113182656466961,-0.111344516277313,0.009715475142002,0.054358925670385,-0.019059618934989,0.058057799935341,0.035407137125731,-0.042014718055725,-0.100833110511303,-0.006754389032722,-0.017414685338736,0.061800204217434,0.060753032565117));
res += mul(Get(s0,0,-dy), float4x4(0.021471172571182,-0.108772508800030,0.081451475620270,0.217866256833076,-0.014224940910935,-0.038556233048439,-0.041943065822124,-0.016991430893540,-0.112014710903168,-0.048279166221619,0.093373864889145,0.055084496736526,-0.045494887977839,-0.013580429367721,0.006695682182908,0.126561209559441));
res += mul(Get(s0,0,0), float4x4(0.074114076793194,-0.003894683439285,-0.010598706081510,-0.284625828266144,-0.119700521230698,-0.023363141342998,-0.158079713582993,-0.020220018923283,0.009812138043344,0.220334038138390,0.070727393031120,0.028339179232717,-0.292439818382263,0.196781575679779,0.079153858125210,0.018344704061747));
res += mul(Get(s0,0,dy), float4x4(0.040284667164087,-0.026489695534110,-0.029412858188152,-0.070133358240128,0.082341268658638,-0.137545391917229,-0.069217473268509,0.118047565221786,-0.025151755660772,-0.026903733611107,0.106603100895882,-0.192057698965073,0.066329151391983,-0.035768348723650,0.028068965300918,0.093337953090668));
res += mul(Get(s0,dx,-dy), float4x4(-0.019102806225419,0.001946516800672,-0.004142691846937,0.097180940210819,-0.119408257305622,0.055798005312681,-0.005347694735974,-0.129417449235916,-0.089056387543678,0.005226674955338,-0.086497992277145,-0.005786513444036,-0.057892914861441,-0.056423872709274,-0.047904588282108,0.029867637902498));
res += mul(Get(s0,dx,0), float4x4(0.053071159869432,-0.002370279049501,-0.071244366466999,-0.068770788609982,-0.069383732974529,-0.133306324481964,0.090376898646355,-0.056496765464544,0.025908999145031,-0.125899210572243,-0.047795139253139,-0.064663007855415,-0.105712801218033,-0.108166500926018,-0.102730646729469,0.111904397606850));
res += mul(Get(s0,dx,dy), float4x4(0.004174225032330,-0.033766940236092,0.029080722481012,-0.027887973934412,-0.085172906517982,0.012720508500934,0.035093739628792,-0.036972612142563,-0.026796178892255,0.054231386631727,0.168723106384277,-0.151077061891556,-0.022011222317815,-0.048900917172432,0.038406640291214,0.039470668882132));
res += mul(Get(s1,-dx,-dy), float4x4(-0.117312647402287,-0.023232974112034,-0.070049025118351,0.055511392652988,-0.132448494434357,-0.034564211964607,-0.012543608434498,-0.102077417075634,-0.079603224992752,0.164193138480186,-0.011820977553725,0.092611804604530,0.014646253548563,-0.017540488392115,-0.040145508944988,0.133587092161179));
res += mul(Get(s1,-dx,0), float4x4(-0.111083865165710,-0.003977082204074,-0.032720986753702,-0.106224797666073,-0.027206314727664,0.067089088261127,0.091350853443146,0.073393344879150,-0.014529524371028,-0.026429824531078,-0.025069981813431,-0.183603689074516,0.035577636212111,-0.012582135386765,0.025118980556726,-0.092369131743908));
res += mul(Get(s1,-dx,dy), float4x4(0.157667398452759,-0.087614797055721,0.017125494778156,-0.169794574379921,0.028871115297079,0.045940954238176,-0.089878655970097,0.061611782759428,-0.132328763604164,0.025680249556899,0.028347503393888,-0.012934015132487,0.092888034880161,-0.057934913784266,0.039749767631292,0.006255586631596));
res += mul(Get(s1,0,-dy), float4x4(-0.027269316837192,-0.101050667464733,0.010119915939867,0.121256209909916,-0.046344988048077,0.055166363716125,0.121322162449360,-0.013059765100479,-0.016678694635630,-0.053934272378683,-0.066379919648170,0.118804737925529,0.160664394497871,-0.041222136467695,0.007563014049083,0.133110478520393));
res += mul(Get(s1,0,0), float4x4(-0.037100058048964,-0.196721017360687,-0.058579534292221,-0.178111016750336,-0.033638466149569,-0.072500593960285,0.038225814700127,0.141918659210205,-0.020323248580098,0.141946300864220,0.066927187144756,-0.142545759677887,0.114670544862747,-0.169118717312813,-0.026397733017802,-0.150614723563194));
res += mul(Get(s1,0,dy), float4x4(0.128323882818222,0.020820878446102,0.011912818066776,-0.195268839597702,0.101968899369240,-0.046130895614624,-0.019722534343600,0.122829109430313,0.045184001326561,0.041766606271267,0.033109769225121,-0.189583048224449,0.045527096837759,-0.025154005736113,-0.121610827744007,0.121537245810032));
res += mul(Get(s1,dx,-dy), float4x4(0.010502611286938,0.071996293962002,-0.009983357973397,0.033862996846437,-0.245685920119286,-0.032235048711300,0.013718718662858,0.022617677226663,0.026069724932313,0.023630931973457,0.041810903698206,-0.006384528242052,0.090048827230930,-0.002655265154317,0.025582738220692,0.072245523333549));
res += mul(Get(s1,dx,0), float4x4(-0.008165137842298,0.060228791087866,0.063095681369305,0.040869560092688,-0.012691752985120,-0.013133340515196,-0.034213494509459,0.212981089949608,-0.089388385415077,0.017800092697144,0.021121848374605,0.054971911013126,-0.012860583141446,0.087548606097698,0.041741356253624,-0.056438181549311));
res += mul(Get(s1,dx,dy), float4x4(0.034133259207010,0.059212949126959,0.004615605808794,-0.034041613340378,0.041038207709789,-0.006268880795687,0.070798404514790,-0.028205843642354,0.003690478857607,0.062108490616083,0.101382069289684,-0.029619390144944,-0.059260182082653,-0.003598286537454,0.065133824944496,-0.076699279248714));
res += mul(Get(s2,-dx,-dy), float4x4(0.042354200035334,-0.032435882836580,0.006712712813169,0.053515892475843,0.047928761690855,0.011793240904808,-0.050197362899780,-0.090348169207573,0.075332403182983,-0.000632120529190,-0.013375490903854,-0.104351945221424,0.090532757341862,0.136408373713493,-0.078038811683655,0.071334227919579));
res += mul(Get(s2,-dx,0), float4x4(-0.039059810340405,0.009877467527986,-0.025314871221781,0.024255618453026,-0.083510123193264,-0.014559070579708,-0.036904767155647,0.108922496438026,0.005395384971052,-0.094049364328384,-0.015011677518487,-0.001369869336486,0.113337501883507,-0.003386108204722,-0.022136256098747,0.032990667968988));
res += mul(Get(s2,-dx,dy), float4x4(0.025821499526501,0.029329771175981,-0.133016347885132,-0.071112588047981,0.026851164177060,-0.054865267127752,-0.032802339643240,-0.102485850453377,-0.052734997123480,0.028620256111026,0.028674807399511,0.017092520371079,-0.031535610556602,0.056451227515936,-0.088331960141659,-0.076530724763870));
res += mul(Get(s2,0,-dy), float4x4(-0.014145961031318,0.022174652665854,-0.014572047628462,-0.022886071354151,-0.093965515494347,0.144017010927200,0.014216571114957,0.152940168976784,-0.025272432714701,0.138946294784546,-0.063619002699852,-0.069019414484501,0.125892147421837,0.053976021707058,-0.118565380573273,-0.011297111399472));
res += mul(Get(s2,0,0), float4x4(-0.105210788547993,-0.069066688418388,-0.058537650853395,0.003940484952182,0.157290160655975,-0.143048435449600,-0.157405629754066,-0.086484409868717,0.062142793089151,0.313610851764679,0.195928931236267,0.166292458772659,0.009929055348039,0.095738194882870,-0.180586293339729,0.093142338097095));
res += mul(Get(s2,0,dy), float4x4(0.102958403527737,-0.044397708028555,0.011447872035205,-0.086173295974731,-0.078783124685287,-0.028190273791552,0.128444388508797,0.110257096588612,0.084164895117283,-0.041897501796484,0.020780673250556,0.066563799977303,-0.035798441618681,0.034866761416197,-0.043702498078346,0.149312481284142));
res += mul(Get(s2,dx,-dy), float4x4(0.097886756062508,-0.036646541208029,-0.129731267690659,0.014103840105236,0.031603604555130,-0.083742946386337,-0.139704659581184,0.110231474041939,0.080584488809109,-0.071043804287910,0.033009272068739,0.010361490771174,0.072689101099968,0.055308293551207,0.006607357878238,0.025162419304252));
res += mul(Get(s2,dx,0), float4x4(-0.022205598652363,-0.043739486485720,-0.015095500275493,0.010492138564587,0.146319910883904,0.108282223343849,0.255994945764542,-0.029592085629702,0.065570265054703,0.009286736138165,-0.002350382274017,-0.072233937680721,0.065006405115128,0.121365763247013,-0.152405753731728,0.078917451202869));
res += mul(Get(s2,dx,dy), float4x4(-0.039579756557941,0.006209180690348,0.043148994445801,0.012735268101096,-0.074092805385590,0.027117723599076,0.071805663406849,0.095100671052933,0.106993697583675,-0.013828536495566,-0.048639331012964,-0.084035143256187,0.078853592276573,0.052016917616129,-0.149751707911491,0.058060579001904));
res += mul(Get(s3,-dx,-dy), float4x4(0.098686166107655,0.028505729511380,-0.115020014345646,0.025626491755247,-0.038644369691610,0.025212502107024,-0.006245668046176,-0.036568250507116,-0.245926827192307,0.112504586577415,-0.102364428341389,0.170222297310829,-0.011367820203304,-0.109737396240234,0.094618722796440,-0.064912423491478));
res += mul(Get(s3,-dx,0), float4x4(0.120656877756119,0.039680231362581,-0.096935182809830,-0.136272773146629,-0.029790688306093,0.088458836078644,-0.058057583868504,0.104060843586922,0.142205223441124,-0.072791382670403,-0.070218697190285,-0.015341854654253,0.022012157365680,0.075360208749771,-0.060094807296991,-0.043657053261995));
res += mul(Get(s3,-dx,dy), float4x4(0.098940186202526,-0.129215955734253,-0.044232022017241,0.054941941052675,-0.045232754200697,-0.115385904908180,-0.002132453722879,-0.092149376869202,-0.056826654821634,0.029159381985664,0.070429019629955,-0.016940573230386,0.033531125634909,0.006222040392458,-0.088148780167103,0.006259717512876));
res += mul(Get(s3,0,-dy), float4x4(0.163739174604416,-0.126602426171303,0.046603597700596,0.056964591145515,-0.048938926309347,-0.020047584548593,-0.090434201061726,-0.015507050789893,-0.082080043852329,-0.112938679754734,0.216564446687698,0.296512961387634,-0.154740154743195,0.065426222980022,-0.049915492534637,-0.054741524159908));
res += mul(Get(s3,0,0), float4x4(0.048762328922749,0.346297472715378,-0.118564046919346,-0.069824472069740,0.066936448216438,-0.008371975272894,-0.102813936769962,-0.201109230518341,0.131079092621803,-0.069434002041817,0.159404367208481,-0.187111899256706,0.275568693876266,-0.378713339567184,0.076867684721947,0.298480778932571));
res += mul(Get(s3,0,dy), float4x4(-0.164677157998085,0.083526760339737,-0.023060807958245,0.268707782030106,-0.045721050351858,-0.023392798379064,0.055795267224312,0.105762079358101,-0.057834118604660,-0.137972339987755,-0.012794425711036,-0.002511222613975,-0.086780436336994,0.011404617689550,0.049330342561007,-0.108218893408775));
res += mul(Get(s3,dx,-dy), float4x4(-0.073291607201099,0.055800072848797,-0.047381415963173,-0.019978513941169,0.030956352129579,-0.002816784195602,-0.034265480935574,0.010185049846768,-0.031364176422358,0.086485318839550,-0.077990315854549,0.131503477692604,-0.074352994561195,0.026488611474633,0.004403528757393,-0.026131819933653));
res += mul(Get(s3,dx,0), float4x4(0.021295893937349,-0.136279210448265,-0.184545710682869,0.018147259950638,-0.066203378140926,-0.026217738166451,-0.007998012937605,0.052554227411747,-0.051002170890570,-0.068105190992355,-0.038651466369629,-0.004195987712592,0.097077496349812,-0.020883623510599,0.006042231339961,0.068592607975006));
res += mul(Get(s3,dx,dy), float4x4(0.067787349224091,0.031689941883087,-0.129259079694748,0.015130815096200,-0.031050790101290,0.021059393882751,0.098220035433769,-0.021435828879476,0.071643829345703,-0.048244498670101,0.084234736859798,-0.078532122075558,0.018147746101022,-0.052586279809475,-0.099103465676308,0.020913710817695));
res += mul(Get(s4,-dx,-dy), float4x4(-0.023522950708866,0.016824543476105,0.060442365705967,0.011108458042145,-0.081922002136707,0.014523908495903,-0.063074886798859,-0.016990587115288,-0.092954330146313,0.006115994416177,-0.049304258078337,-0.059738427400589,0.023733966052532,-0.057713307440281,-0.028056627139449,-0.119016788899899));
res += mul(Get(s4,-dx,0), float4x4(0.060809787362814,-0.029767777770758,-0.032810393720865,0.026217605918646,0.021261911839247,-0.075708657503128,0.032691352069378,0.046440958976746,-0.044407602399588,0.002472050720826,-0.076026409864426,-0.101012676954269,0.032645497471094,0.084574975073338,-0.104553431272507,0.032446280121803));
res += mul(Get(s4,-dx,dy), float4x4(-0.156537383794785,0.037312816828489,-0.117011308670044,0.031167443841696,0.001768067362718,-0.007841263897717,0.028034770861268,0.019797740504146,-0.004189792089164,-0.058384444564581,-0.005678110290319,0.052626855671406,-0.027977813035250,-0.037388801574707,-0.029949882999063,-0.036791753023863));
res += mul(Get(s4,0,-dy), float4x4(-0.177997440099716,0.074992842972279,-0.030771266669035,-0.092837907373905,-0.014820767566562,-0.106623567640781,-0.039891079068184,-0.008627600036561,0.007656663190573,-0.043685879558325,0.019754663109779,-0.123842678964138,-0.155801236629486,0.058912344276905,0.001089317956939,-0.088348843157291));
res += mul(Get(s4,0,0), float4x4(0.191525027155876,-0.257011055946350,-0.024572990834713,0.105245180428028,0.062955662608147,-0.037349157035351,0.064736895263195,-0.072625674307346,-0.066500566899776,-0.015331818722188,-0.049697656184435,0.123990193009377,0.198966652154922,-0.068903267383575,0.015851957723498,0.031258188188076));
res += mul(Get(s4,0,dy), float4x4(-0.103063181042671,0.104510575532913,0.043876804411411,-0.083516009151936,-0.116722010076046,-0.022959660738707,-0.118335418403149,0.011517205275595,-0.107268720865250,-0.010725772008300,0.003271040273830,0.331543356180191,0.141359165310860,-0.167445212602615,-0.040988653898239,-0.073691032826900));
res += mul(Get(s4,dx,-dy), float4x4(-0.034674029797316,0.158985033631325,0.196221351623535,0.013398940674961,-0.042148232460022,-0.026998220011592,0.013698211871088,-0.014047215692699,-0.056307431310415,0.058196727186441,0.079079478979111,-0.019988616928458,0.007783646695316,0.047582712024450,0.028841270133853,-0.014961627312005));
res += mul(Get(s4,dx,0), float4x4(0.011403627693653,0.001189002417959,-0.130126744508743,-0.040349308401346,-0.024296684190631,0.100798234343529,0.030858373269439,-0.037139676511288,-0.055348746478558,-0.089203163981438,-0.060784317553043,0.244434714317322,0.026132386177778,-0.094973437488079,-0.047414693981409,0.018962260335684));
res += mul(Get(s4,dx,dy), float4x4(0.062615074217319,-0.087881714105606,-0.119733139872551,-0.017223021015525,-0.005028262734413,-0.098249524831772,-0.107514493167400,0.069719284772873,-0.097165577113628,0.030976822599769,0.026717625558376,0.136528372764587,0.152904152870178,0.064645901322365,0.032121200114489,-0.164967417716980));
res += mul(Get(s5,-dx,-dy), float4x4(-0.074254184961319,-0.060482207685709,-0.044780075550079,0.073458366096020,-0.169041156768799,0.040757946670055,0.239989250898361,-0.076665803790092,0.093708328902721,-0.091161973774433,0.145882114768028,0.070080921053886,0.018380794674158,-0.038532417267561,-0.042511176317930,0.226852491497993));
res += mul(Get(s5,-dx,0), float4x4(0.027328195050359,0.109879449009895,0.159055784344673,0.017434151843190,-0.113057494163513,0.149146616458893,-0.044979177415371,-0.034759923815727,0.002332883188501,0.067289836704731,0.137505695223808,-0.027524704113603,0.147843927145004,0.027343997731805,0.009693139232695,-0.274472326040268));
res += mul(Get(s5,-dx,dy), float4x4(-0.035537734627724,0.012042632326484,0.026075776666403,0.014484251849353,-0.019316930323839,-0.078858979046345,-0.066162705421448,-0.102571047842503,-0.017526719719172,0.035073805600405,-0.167461141943932,0.032914154231548,-0.133356228470802,0.169044762849808,0.056924711912870,0.261551260948181));
res += mul(Get(s5,0,-dy), float4x4(-0.004029979463667,0.005962464958429,0.081767648458481,-0.169231086969376,-0.036817714571953,0.066462099552155,0.197546169161797,0.038085825741291,0.021079277619720,0.077154897153378,0.154425516724586,-0.004934011027217,0.052123434841633,-0.151300340890884,-0.080646067857742,-0.064849197864532));
res += mul(Get(s5,0,0), float4x4(0.018409028649330,0.120679870247841,-0.000173157182871,0.041570819914341,0.052068673074245,0.059723839163780,0.174929291009903,-0.209943383932114,-0.020512541756034,0.068306230008602,-0.192972496151924,0.074920795857906,-0.008230607956648,-0.044305499643087,-0.011741191148758,0.078576065599918));
res += mul(Get(s5,0,dy), float4x4(-0.063806541264057,0.070724777877331,0.041625633835793,0.136093378067017,-0.125480890274048,0.053434010595083,0.119802951812744,0.012367817573249,-0.033814009279013,-0.051451195031404,-0.051416069269180,-0.024886086583138,0.153955638408661,-0.035654027014971,-0.012925313785672,-0.107913240790367));
res += mul(Get(s5,dx,-dy), float4x4(-0.112024404108524,-0.035226806998253,0.019687749445438,0.089680336415768,-0.018062379211187,-0.046820640563965,0.014055175706744,-0.081578433513641,-0.015223049558699,0.033346895128489,-0.023872170597315,-0.019444765523076,-0.016570884734392,-0.029893551021814,0.069370649755001,-0.148151248693466));
res += mul(Get(s5,dx,0), float4x4(-0.017340382561088,0.007607631385326,-0.066213905811310,-0.055022418498993,-0.045722793787718,0.018334163352847,0.185707688331604,-0.014413298107684,-0.011861298233271,0.038503620773554,0.052082546055317,-0.027117023244500,0.015353375114501,0.011567444540560,-0.071650512516499,0.128192096948624));
res += mul(Get(s5,dx,dy), float4x4(-0.004597932100296,0.037100665271282,0.115615330636501,-0.066067025065422,-0.038789778947830,0.102000012993813,0.203094571828842,-0.080960854887962,-0.021182164549828,0.004786565899849,-0.003958773799241,0.023558480665088,0.154312849044800,0.012245577760041,0.062197756022215,-0.125779718160629));
res = max(float4(0, 0, 0, 0), res) + float4(-0.245840892195702,0.045042973011732,-0.053261071443558,0.102299116551876) * min(float4(0, 0, 0, 0), res);
return res;
}
