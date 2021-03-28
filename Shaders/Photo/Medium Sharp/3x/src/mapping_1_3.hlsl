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
float4 res = float4(0.186112597584724,0.010509693995118,-0.237691849470139,-0.017262730747461);
res += mul(Get(s0,-dx,-dy), float4x4(0.003931932151318,-0.096030674874783,0.003977036569268,-0.042726192623377,-0.023879265412688,0.000116171475383,0.028345258906484,0.067420415580273,-0.069103784859180,-0.068579211831093,0.024092253297567,-0.035510446876287,-0.069743834435940,-0.083283886313438,0.260625809431076,0.001096741179936));
res += mul(Get(s0,-dx,0), float4x4(-0.006476832553744,-0.129821449518204,-0.013708897866309,-0.007601116318256,-0.101925432682037,-0.022443519905210,-0.001770146191120,0.137204080820084,0.047160282731056,-0.094845250248909,0.057333014905453,-0.074998073279858,-0.039511729031801,-0.095303922891617,0.240174576640129,0.087571077048779));
res += mul(Get(s0,-dx,dy), float4x4(-0.023523790761828,-0.252148032188416,0.183951899409294,0.033514652401209,0.054760470986366,0.089444868266582,0.071772508323193,-0.110453076660633,0.009333703666925,-0.042941190302372,-0.136706531047821,-0.091946780681610,0.141245365142822,-0.002129972446710,-0.060368128120899,-0.003512423252687));
res += mul(Get(s0,0,-dy), float4x4(-0.095883503556252,-0.146233454346657,-0.104610756039619,0.013824978843331,-0.109508246183395,-0.031970735639334,-0.009812852367759,-0.084657214581966,0.084510549902916,-0.032299682497978,0.031406927853823,0.016674477607012,-0.159317150712013,0.228650972247124,-0.083135418593884,0.063940681517124));
res += mul(Get(s0,0,0), float4x4(-0.084170870482922,-0.080340154469013,-0.044848565012217,-0.000347261666320,0.293527126312256,0.145632520318031,-0.181340932846069,0.015253969468176,-0.132888272404671,0.215582683682442,-0.029019938781857,0.132593944668770,-0.279449731111526,0.165457800030708,-0.107349567115307,-0.188210740685463));
res += mul(Get(s0,0,dy), float4x4(-0.108445480465889,-0.095026865601540,-0.035101495683193,-0.106383562088013,-0.139791384339333,-0.067483641207218,0.215835139155388,-0.096761442720890,0.024729343131185,0.101778946816921,-0.169912144541740,0.054516822099686,0.017588401213288,0.061301432549953,-0.163515403866768,0.205121308565140));
res += mul(Get(s0,dx,-dy), float4x4(-0.009883997030556,-0.061933785676956,0.072414666414261,0.076024450361729,-0.042749583721161,-0.201640561223030,0.015507456846535,0.038752511143684,0.009269502945244,-0.089511491358280,-0.047001227736473,-0.013349774293602,0.072919882833958,-0.138115882873535,0.052999712526798,0.052779462188482));
res += mul(Get(s0,dx,0), float4x4(0.030884768813848,0.008422654122114,0.081863604485989,0.294904887676239,-0.258608847856522,0.383902162313461,-0.034268427640200,-0.223721772432327,0.047202009707689,0.277374953031540,-0.027612168341875,0.015415880829096,0.164008453488350,-0.094678036868572,-0.044629596173763,0.088905721902847));
res += mul(Get(s0,dx,dy), float4x4(-0.131182968616486,-0.208851009607315,-0.168660134077072,-0.233942285180092,0.090282686054707,-0.245534345507622,-0.020438486710191,0.228053137660027,-0.018507327884436,-0.213966786861420,-0.295934081077576,0.124113388359547,0.018233029171824,0.043427251279354,-0.019546343013644,-0.038121469318867));
res += mul(Get(s1,-dx,-dy), float4x4(-0.066161662340164,-0.028770359233022,-0.082383856177330,0.041617803275585,-0.128249004483223,-0.138643413782120,0.126079261302948,0.012093697674572,0.006303529720753,0.050093539059162,-0.019490687176585,0.018535818904638,-0.041464317589998,-0.117581784725189,0.056511256843805,-0.030188355594873));
res += mul(Get(s1,-dx,0), float4x4(-0.079762376844883,-0.175062417984009,0.273952960968018,-0.023634769022465,-0.469753921031952,-0.142955318093300,0.253020107746124,0.057063300162554,0.184161111712456,-0.074307188391685,-0.103379696607590,0.101021364331245,-0.030127210542560,0.056988544762135,0.014795254915953,0.025195207446814));
res += mul(Get(s1,-dx,dy), float4x4(0.115858852863312,-0.120178148150444,-0.105634488165379,0.049110572785139,-0.249732330441475,-0.141832813620567,0.056509483605623,-0.075019970536232,0.036890696734190,-0.085212513804436,-0.000820848450530,0.053625185042620,0.022929254919291,-0.188040614128113,-0.039376549422741,-0.075725890696049));
res += mul(Get(s1,0,-dy), float4x4(-0.037613924592733,-0.027772814035416,-0.158604130148888,0.045965511351824,-0.187450528144836,-0.247447550296783,0.116862118244171,0.001649235608056,-0.205025181174278,-0.187658071517944,0.116514153778553,-0.106972388923168,0.088846817612648,-0.058723226189613,-0.029889224097133,-0.043330304324627));
res += mul(Get(s1,0,0), float4x4(-0.034081928431988,0.008151320740581,0.192992940545082,0.003184700617567,0.793277323246002,-0.193614885210991,-0.533905029296875,0.495090812444687,-0.173186182975769,0.147856965661049,0.154247641563416,-0.224150657653809,0.019350428134203,-0.063737742602825,0.010557563975453,0.010316369123757));
res += mul(Get(s1,0,dy), float4x4(-0.363006234169006,0.224240094423294,0.011584520339966,-0.006881266366690,-0.344643324613571,0.086207397282124,0.249268382787704,0.228614628314972,0.237510427832603,0.171326234936714,-0.372692227363586,-0.048615030944347,0.110270880162716,0.051277901977301,0.054529123008251,-0.163190528750420));
res += mul(Get(s1,dx,-dy), float4x4(0.029926985502243,-0.024011820554733,-0.040740162134171,-0.017480598762631,0.030367787927389,-0.225851729512215,-0.108307480812073,0.102864086627960,0.003636422334239,-0.108894728124142,0.018384788185358,0.077034220099449,0.077668860554695,-0.091051593422890,0.066598847508430,-0.005482841283083));
res += mul(Get(s1,dx,0), float4x4(0.270086973905563,-0.149076730012894,-0.122193433344364,0.133283138275146,-0.159013330936432,0.683408796787262,-0.088011123239994,-0.387306272983551,0.002017995575443,-0.372587382793427,0.100744940340519,0.175779074430466,-0.019300432875752,0.077608674764633,-0.068118847906590,0.108297094702721));
res += mul(Get(s1,dx,dy), float4x4(0.056036379188299,0.090355195105076,0.001049205660820,-0.176003962755203,-0.074014507234097,0.022968390956521,0.093411296606064,-0.110269688069820,0.015237784013152,0.411940455436707,-0.042134571820498,-0.225058674812317,-0.028110492974520,0.023536190390587,-0.037964571267366,-0.087414853274822));
res += mul(Get(s2,-dx,-dy), float4x4(0.069395244121552,-0.078722685575485,0.119000189006329,-0.079460531473160,0.193724215030670,0.034457944333553,-0.159024178981781,0.193169921636581,-0.050997290760279,0.157016053795815,0.002410012064502,0.034446816891432,0.035984899848700,0.084057338535786,-0.164259582757950,0.022561511024833));
res += mul(Get(s2,-dx,0), float4x4(0.036531239748001,-0.102419614791870,0.150523528456688,0.173052102327347,0.128254398703575,-0.077916815876961,-0.184382647275925,0.139277860522270,-0.182315170764923,0.203678205609322,-0.048252914100885,-0.008141011931002,0.127591326832771,-0.082424134016037,-0.128089100122452,-0.228791311383247));
res += mul(Get(s2,-dx,dy), float4x4(-0.027442960068583,0.059286080300808,0.035996928811073,-0.046357370913029,-0.030461506918073,-0.174989238381386,0.127861186861992,0.191028788685799,-0.016362298280001,0.063597477972507,-0.089951314032078,-0.035740200430155,0.173952445387840,-0.049483764916658,-0.075995557010174,-0.012789934873581));
res += mul(Get(s2,0,-dy), float4x4(0.071772240102291,-0.032938968390226,0.034620873630047,-0.030376285314560,0.366348356008530,-0.014888306148350,-0.266150951385498,-0.004322435241193,-0.141309455037117,0.246789276599884,0.060442555695772,-0.092491999268532,0.159152284264565,0.118881225585938,0.256219357252121,-0.174883440136909));
res += mul(Get(s2,0,0), float4x4(0.016138980165124,-0.041714563965797,0.035705190151930,-0.006352424621582,0.093875832855701,-0.097650654613972,-0.090484306216240,0.185362160205841,-0.119874171912670,-0.042928338050842,0.148564189672470,-0.097233682870865,0.242125481367111,-0.252173840999603,0.395479977130890,-0.210136488080025));
res += mul(Get(s2,0,dy), float4x4(-0.093487344682217,-0.052146054804325,-0.232899531722069,-0.011023078113794,-0.219706252217293,-0.075891084969044,0.173267245292664,0.121463544666767,0.120019592344761,0.085407592356205,-0.239207088947296,-0.020509863272309,0.250915288925171,0.218359038233757,0.054278180003166,-0.203059405088425));
res += mul(Get(s2,dx,-dy), float4x4(0.123113974928856,-0.194085553288460,0.070222944021225,0.106277406215668,0.051494054496288,0.262811452150345,-0.290630459785461,-0.233292236924171,0.038556940853596,0.001609298400581,-0.081399798393250,0.058444410562515,0.095086164772511,0.055114544928074,0.072559937834740,0.205887734889984));
res += mul(Get(s2,dx,0), float4x4(0.087912097573280,0.200635060667992,0.157921433448792,-0.110169313848019,-0.073061861097813,0.491378486156464,-0.237667664885521,-0.431391686201096,0.200248748064041,0.134641036391258,0.221352204680443,-0.006876922678202,-0.082512930035591,-0.291535735130310,0.029305210337043,0.511736869812012));
res += mul(Get(s2,dx,dy), float4x4(-0.054342165589333,0.032517574727535,-0.021657774224877,-0.043159186840057,-0.122915342450142,0.052849560976028,-0.059492379426956,-0.268710523843765,0.222239002585411,0.118743091821671,0.070587955415249,-0.384185492992401,0.043158531188965,0.446967542171478,0.031423777341843,0.110093452036381));
res += mul(Get(s3,-dx,-dy), float4x4(0.024937253445387,-0.099989257752895,-0.021795000880957,0.064997866749763,-0.038638744503260,-0.122380949556828,0.054402779787779,-0.046695329248905,0.051819089800119,-0.054155949503183,-0.047079205513000,-0.137343794107437,-0.085778489708900,0.183082744479179,-0.025780148804188,0.040399882942438));
res += mul(Get(s3,-dx,0), float4x4(0.088988050818443,-0.123481087386608,-0.067452907562256,0.159127637743950,0.172287002205849,0.176743134856224,-0.094069398939610,-0.031144537031651,0.097750060260296,0.136942163109779,-0.068430490791798,-0.040097117424011,-0.248944357037544,0.286912262439728,-0.019090045243502,-0.309500247240067));
res += mul(Get(s3,-dx,dy), float4x4(-0.002403875580058,-0.046418476849794,0.015577044337988,-0.011315030977130,-0.094084277749062,0.042833883315325,0.059842921793461,-0.031387530267239,-0.023360233753920,0.114834062755108,-0.230905994772911,-0.027805119752884,0.248737409710884,-0.231258809566498,0.009200123138726,0.224963620305061));
res += mul(Get(s3,0,-dy), float4x4(-0.074665084481239,-0.001354522537440,-0.140255525708199,-0.044369686394930,0.250221163034439,-0.015799805521965,-0.088872633874416,-0.143396466970444,-0.074924610555172,-0.021389722824097,0.023652350530028,0.480858027935028,-0.080709502100945,-0.145262762904167,-0.082923449575901,0.009571620263159));
res += mul(Get(s3,0,0), float4x4(0.104775391519070,0.044038515537977,-0.073502324521542,-0.166972845792770,0.398808032274246,0.099171370267868,0.081114903092384,0.070094846189022,0.000636568467598,-0.354402095079422,0.261836111545563,0.212252214550972,0.363263964653015,-0.339102238416672,0.014986192807555,0.379736304283142));
res += mul(Get(s3,0,dy), float4x4(0.004132997710258,-0.014091475866735,-0.039478216320276,-0.002619849750772,-0.067248679697514,-0.081547029316425,0.089169301092625,0.001820375793613,0.125423997640610,0.017183220013976,0.070526793599129,0.065967626869678,-0.169518858194351,0.151439845561981,0.222763210535049,-0.112529382109642));
res += mul(Get(s3,dx,-dy), float4x4(0.118815056979656,-0.030252151191235,0.114040359854698,-0.086176134645939,-0.148414626717567,-0.048233486711979,-0.149016112089157,-0.143260419368744,0.028834002092481,0.218939602375031,0.089407905936241,-0.248637944459915,-0.062568306922913,-0.097621798515320,0.014011656865478,-0.014688950963318));
res += mul(Get(s3,dx,0), float4x4(-0.098094157874584,0.206788003444672,-0.061274483799934,-0.103536948561668,0.112197145819664,0.098630622029305,0.059977281838655,0.077168814837933,0.012023804709315,-0.173581644892693,-0.036484498530626,-0.201577082276344,-0.231006935238838,0.296126216650009,-0.024977106601000,-0.245436623692513));
res += mul(Get(s3,dx,dy), float4x4(0.096030287444592,0.116610035300255,0.121906168758869,0.077493913471699,-0.039020642638206,0.005336296278983,-0.045210968703032,0.039947148412466,-0.099493451416492,0.021517902612686,-0.071437314152718,-0.017970897257328,0.145799338817596,-0.084837853908539,0.019067354500294,-0.028844030573964));
res += mul(Get(s4,-dx,-dy), float4x4(-0.078736066818237,-0.057999115437269,-0.102445684373379,-0.017719907686114,0.017899079248309,0.154361188411713,-0.069176226854324,-0.021059863269329,-0.040748998522758,0.055366974323988,-0.036926969885826,0.045943312346935,-0.067329257726669,0.003537241136655,-0.024102451279759,-0.098732590675354));
res += mul(Get(s4,-dx,0), float4x4(-0.031155541539192,-0.079520344734192,0.052912879735231,0.081010043621063,-0.015184539370239,0.081598520278931,-0.165756955742836,-0.065748475492001,-0.107132799923420,0.062309134751558,-0.039027564227581,-0.056870572268963,0.000670971930958,-0.018929576501250,0.052545674145222,-0.036157958209515));
res += mul(Get(s4,-dx,dy), float4x4(-0.082649953663349,0.055700223892927,0.001602798234671,-0.013693338260055,-0.079608552157879,0.224027410149574,0.003185618203133,0.056059002876282,-0.052774190902710,0.113897435367107,-0.010403060354292,-0.061154711991549,-0.072859130799770,-0.161407738924026,0.084618709981441,-0.012281686067581));
res += mul(Get(s4,0,-dy), float4x4(0.010698636993766,0.190863177180290,0.071569532155991,-0.027263674885035,0.037588261067867,-0.040527958422899,-0.053307145833969,0.055078014731407,0.130617588758469,-0.058420576155186,-0.008682170882821,-0.048095434904099,-0.049977384507656,-0.026382895186543,-0.016533741727471,-0.069022402167320));
res += mul(Get(s4,0,0), float4x4(0.002306642010808,-0.169603750109673,-0.096027269959450,-0.255646795034409,-0.102443724870682,-0.109590031206608,0.015248349867761,0.007901744917035,0.018143730238080,-0.098622083663940,0.139639645814896,-0.027576960623264,-0.089292638003826,-0.280679136514664,-0.015448978170753,-0.011720177717507));
res += mul(Get(s4,0,dy), float4x4(-0.190442979335785,-0.269688665866852,-0.191159322857857,-0.094497568905354,-0.140642881393433,-0.246858909726143,-0.022513531148434,0.099672406911850,0.085873857140541,-0.188431575894356,0.101952902972698,-0.063090637326241,-0.094679236412048,0.151420906186104,-0.118508093059063,0.103877656161785));
res += mul(Get(s4,dx,-dy), float4x4(-0.007349591702223,-0.037398174405098,-0.008853699080646,0.061634883284569,0.114581942558289,0.069597765803337,0.076243102550507,-0.028179038316011,-0.048817157745361,0.066799461841583,0.082524172961712,-0.056190129369497,-0.040868278592825,-0.113062314689159,-0.058342501521111,0.126895815134048));
res += mul(Get(s4,dx,0), float4x4(0.034585297107697,-0.189961165189743,-0.127511247992516,0.143799006938934,0.110007137060165,-0.075067274272442,0.024296715855598,0.049670081585646,0.034318804740906,0.044170115143061,0.034146707504988,0.110005110502243,-0.005530522204936,0.323492735624313,-0.039960172027349,0.068879939615726));
res += mul(Get(s4,dx,dy), float4x4(-0.058410760015249,0.032747462391853,-0.070754103362560,0.093206070363522,0.121348336338997,-0.092850267887115,0.059064805507660,0.000650822999887,-0.053304173052311,-0.101388290524483,-0.115922883152962,0.107705257833004,0.024327166378498,0.032079339027405,0.056730091571808,0.101442702114582));
res += mul(Get(s5,-dx,-dy), float4x4(-0.082781329751015,-0.036482896655798,-0.063343383371830,-0.007614111062139,-0.040119279175997,-0.025018563494086,0.014947831630707,0.044172968715429,0.009253902360797,-0.129896610975266,-0.135884404182434,-0.047918837517500,0.011696280911565,0.118697024881840,-0.007427273783833,0.049026276916265));
res += mul(Get(s5,-dx,0), float4x4(-0.117444150149822,-0.041879817843437,0.046439580619335,0.063680566847324,0.062522470951080,0.018581239506602,-0.189003720879555,-0.065674580633640,0.002513533923775,0.006062153261155,-0.139880776405334,-0.036279223859310,-0.095767542719841,0.077171035110950,-0.099726490676403,-0.038733892142773));
res += mul(Get(s5,-dx,dy), float4x4(-0.192625150084496,-0.085729144513607,0.037048481404781,-0.002294547390193,-0.040849942713976,-0.099016278982162,0.069801367819309,0.034479252994061,0.025830836966634,-0.037910826504230,-0.099884845316410,0.008283685892820,-0.043629549443722,0.010432722046971,0.014646558091044,-0.024992758408189));
res += mul(Get(s5,0,-dy), float4x4(-0.087281093001366,-0.088962353765965,-0.197963967919350,0.140073567628860,0.042905706912279,-0.050982248038054,0.110223501920700,0.081028290092945,0.040178183466196,0.032606214284897,0.161287412047386,0.357579737901688,0.095273956656456,-0.019868697971106,-0.135739028453827,0.093040466308594));
res += mul(Get(s5,0,0), float4x4(0.151528894901276,0.019353209063411,-0.013310889713466,0.193829208612442,-0.244244322180748,-0.014550900086761,0.179119214415550,-0.248494431376457,0.122890695929527,0.012563292868435,-0.030559480190277,-0.012726924382150,-0.040138855576515,-0.004736979026347,-0.073855832219124,0.152326256036758));
res += mul(Get(s5,0,dy), float4x4(-0.202818810939789,-0.139954641461372,-0.026614863425493,0.108557179570198,0.117124557495117,0.111205719411373,-0.004204209428281,-0.141340792179108,0.036645859479904,-0.052101079374552,-0.059904098510742,0.037149421870708,-0.083097368478775,-0.028547262772918,-0.041854817420244,0.048762168735266));
res += mul(Get(s5,dx,-dy), float4x4(-0.187179237604141,0.134845614433289,0.048226073384285,-0.289063453674316,0.127819016575813,0.123946540057659,-0.155849710106850,0.010536698624492,0.101354986429214,-0.141777992248535,-0.019355047494173,-0.122578211128712,-0.011964941397309,0.090058356523514,0.160113587975502,-0.023058639839292));
res += mul(Get(s5,dx,0), float4x4(-0.125854656100273,0.399885058403015,-0.134561240673065,-0.957895815372467,0.079359255731106,-0.275329619646072,0.027657041326165,0.240342691540718,0.074838556349277,-0.004281659610569,-0.086910426616669,0.016570752486587,0.051714736968279,-0.069226436316967,0.075219996273518,-0.041648406535387));
res += mul(Get(s5,dx,dy), float4x4(-0.133038386702538,-0.046555019915104,-0.107662208378315,0.115133345127106,0.046419128775597,0.002404366387054,0.054932113736868,0.094897985458374,0.046130582690239,-0.048470627516508,0.011908967979252,-0.035085011273623,0.105536483228207,0.016328688710928,0.135793358087540,-0.041012961417437));
res = max(float4(0, 0, 0, 0), res) + float4(0.861540198326111,-0.124894410371780,0.668107986450195,-0.492993831634521) * min(float4(0, 0, 0, 0), res);
return res;
}