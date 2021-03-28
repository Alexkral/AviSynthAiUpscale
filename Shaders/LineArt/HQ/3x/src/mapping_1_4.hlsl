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
float4 res = float4(-0.200959727168083,0.018253400921822,-0.171055182814598,0.121572591364384);
res += mul(Get(s0,-dx,-dy), float4x4(0.072797536849976,-0.085205040872097,0.046897459775209,-0.161001458764076,0.024832880124450,0.068169921636581,0.052254430949688,0.021861139684916,0.042396996170282,-0.037249565124512,0.017374917864799,-0.052754316478968,0.012166389264166,0.100980311632156,0.025426577776670,-0.017292918637395));
res += mul(Get(s0,-dx,0), float4x4(-0.017222104594111,0.083988830447197,0.048689536750317,0.256415367126465,0.017859866842628,0.131662145256996,-0.102567970752716,0.070507019758224,-0.028974432498217,-0.089591152966022,0.069854706525803,0.156615287065506,0.058644603937864,0.120192490518093,0.180000990629196,0.056897561997175));
res += mul(Get(s0,-dx,dy), float4x4(0.049674507230520,-0.104001320898533,-0.012928830459714,-0.070401810109615,-0.093000449240208,-0.120717316865921,-0.022064749151468,-0.033108875155449,-0.034778274595737,0.081272386014462,-0.095887400209904,-0.226212188601494,-0.019136939197779,-0.037903495132923,0.041820161044598,0.085513181984425));
res += mul(Get(s0,0,-dy), float4x4(-0.100646689534187,0.091891698539257,-0.132412791252136,-0.003618350951001,-0.103905208408833,-0.045193873345852,-0.126378908753395,-0.024217478930950,-0.030738931149244,0.064130052924156,-0.104877337813377,0.117080822587013,-0.028018759563565,-0.279885917901993,0.031684111803770,-0.024623190984130));
res += mul(Get(s0,0,0), float4x4(-0.150172367691994,0.096755057573318,-0.058575157076120,0.078967355191708,0.129260927438736,0.185976251959801,-0.044222831726074,0.057027105242014,0.113277025520802,0.107163660228252,-0.032767824828625,-0.060322958976030,0.017285335808992,0.073470070958138,-0.135753050446510,0.008775738067925));
res += mul(Get(s0,0,dy), float4x4(-0.157599046826363,0.178450524806976,-0.011572304181755,0.032709624618292,0.098055027425289,0.072206713259220,-0.007984555326402,0.053817976266146,-0.030455013737082,-0.145340219140053,0.068278126418591,0.043801587074995,0.042626783251762,-0.061368972063065,-0.049133535474539,-0.017033733427525));
res += mul(Get(s0,dx,-dy), float4x4(-0.071216866374016,-0.103304587304592,0.004422584082931,-0.034925930202007,-0.063065439462662,-0.227863892912865,-0.145186975598335,0.059231858700514,0.147051140666008,0.031247377395630,-0.045890226960182,-0.102499343454838,0.028638130053878,0.145893901586533,0.032174807041883,0.079822577536106));
res += mul(Get(s0,dx,0), float4x4(-0.064255245029926,-0.223438903689384,0.151796489953995,0.006396084092557,0.019836457446218,-0.233588844537735,-0.060519654303789,-0.195734411478043,0.076460294425488,-0.119620218873024,-0.040474433451891,0.039919663220644,0.032028004527092,-0.038368996232748,-0.064761780202389,-0.102914474904537));
res += mul(Get(s0,dx,dy), float4x4(-0.031358245760202,-0.067593477666378,-0.021890435367823,-0.025967458263040,0.188579127192497,-0.092153683304787,-0.038307357579470,0.035974312573671,-0.107548221945763,0.023996260017157,0.124509945511818,0.051621235907078,-0.200737997889519,-0.003940138034523,-0.072487287223339,0.003338642185554));
res += mul(Get(s1,-dx,-dy), float4x4(-0.345994323492050,-0.182884812355042,0.039106313139200,0.363032132387161,-0.099595911800861,-0.083743467926979,-0.013268428854644,-0.026678791269660,0.039830908179283,0.012837718240917,-0.065715052187443,0.007962082512677,0.047338534146547,-0.054934523999691,-0.040380168706179,0.125376537442207));
res += mul(Get(s1,-dx,0), float4x4(-0.036808423697948,0.224200323224068,-0.335780173540115,-0.141279816627502,0.038898710161448,0.097019188106060,0.065286770462990,0.037588059902191,-0.163487225770950,0.067838661372662,-0.245905727148056,0.025850122794509,0.000277191546047,-0.007769418880343,-0.041463281959295,-0.075760729610920));
res += mul(Get(s1,-dx,dy), float4x4(-0.093528166413307,-0.064719766378403,-0.037063434720039,-0.020617825910449,-0.031679272651672,0.016159711405635,0.038837347179651,0.020400993525982,0.093741521239281,-0.014851992018521,-0.163799405097961,-0.011377619579434,-0.003667492419481,0.035392809659243,0.093216508626938,0.010117126628757));
res += mul(Get(s1,0,-dy), float4x4(0.238994061946869,0.446196854114532,-0.213383719325066,0.012338742613792,-0.030102737247944,-0.028202472254634,0.028299193829298,0.030961265787482,0.234573870897293,0.085211135447025,0.077173262834549,0.084371775388718,-0.024571027606726,0.109059348702431,0.010377505794168,-0.219588875770569));
res += mul(Get(s1,0,0), float4x4(0.095555119216442,-0.439966171979904,0.251722693443298,-0.057074114680290,0.028662066906691,0.097217828035355,-0.105519637465477,-0.110993482172489,-0.055042218416929,-0.311237663030624,0.302810788154602,-0.124145314097404,0.119070716202259,-0.054910097271204,0.140090316534042,0.179059147834778));
res += mul(Get(s1,0,dy), float4x4(-0.147529080510139,-0.183221235871315,0.129359155893326,0.033835567533970,0.118377849459648,-0.020081821829081,0.042868021875620,0.003464538836852,-0.222705781459808,-0.023583490401506,-0.023388208821416,-0.059358626604080,-0.205504760146141,-0.072015941143036,-0.115767814218998,-0.030050592496991));
res += mul(Get(s1,dx,-dy), float4x4(0.170092597603798,-0.182258293032646,-0.011602653190494,-0.091772422194481,-0.017343984916806,0.030412137508392,-0.052298884838820,-0.018347762525082,-0.097717784345150,0.097809225320816,0.083689548075199,0.048890046775341,-0.253697544336319,-0.128680795431137,0.016149442642927,0.034677926450968));
res += mul(Get(s1,dx,0), float4x4(0.000999442883767,0.260326802730560,0.018533330410719,-0.060351509600878,0.052385162562132,-0.136800482869148,-0.076163947582245,0.017784500494599,-0.043229240924120,0.165651470422745,0.100637756288052,0.103930220007896,0.212198376655579,0.138795107603073,-0.045135200023651,-0.044874235987663));
res += mul(Get(s1,dx,dy), float4x4(0.150745093822479,0.164653941988945,0.032153438776731,0.027814762666821,0.038155972957611,-0.030030207708478,0.065913252532482,0.034456375986338,-0.049182970076799,0.109232880175114,-0.010236618109047,-0.138503715395927,-0.044453125447035,0.010146906599402,-0.102724038064480,0.027056800201535));
res += mul(Get(s2,-dx,-dy), float4x4(-0.028311731293797,0.021297002211213,-0.004117814358324,0.227990061044693,0.041372418403625,0.044067580252886,-0.006102420389652,0.096636906266212,0.037561845034361,0.002657779725268,0.033429820090532,0.003811283037066,0.027407670393586,0.134979322552681,0.197538569569588,-0.219236999750137));
res += mul(Get(s2,-dx,0), float4x4(-0.091140732169151,0.072238110005856,-0.056706797331572,-0.140021234750748,-0.133384019136429,-0.056152068078518,-0.060031700879335,-0.132276192307472,-0.118215873837471,0.025606704875827,-0.011423263698816,0.006333476398140,0.075835451483727,0.188174918293953,0.187256500124931,0.140492096543312));
res += mul(Get(s2,-dx,dy), float4x4(0.065014086663723,-0.080705799162388,0.057147134095430,-0.008277212269604,0.153397798538208,0.036915462464094,0.107385285198689,0.052891205996275,0.038250356912613,0.004022888839245,-0.078430205583572,0.017085222527385,0.000383117119782,-0.029112976044416,0.229781970381737,0.074825644493103));
res += mul(Get(s2,0,-dy), float4x4(0.204931557178497,-0.311715543270111,0.033504106104374,0.047317501157522,0.210376605391502,0.135526999831200,0.002496422268450,0.058877822011709,0.060007330030203,0.020089063793421,0.029573503881693,0.071207500994205,0.053306158632040,0.126291245222092,-0.070188157260418,-0.313452452421188));
res += mul(Get(s2,0,0), float4x4(0.159716904163361,-0.158531501889229,0.100348651409149,-0.187714770436287,-0.098063141107559,-0.235540479421616,0.087500579655170,-0.055059242993593,-0.125014588236809,-0.020130727440119,-0.030094636604190,-0.086726948618889,0.061930555850267,0.151147559285164,-0.071052372455597,-0.054193574935198));
res += mul(Get(s2,0,dy), float4x4(0.007041542790830,-0.242043197154999,0.050787746906281,0.154859304428101,0.003916969057173,-0.018311735242605,-0.122591435909271,0.045636840164661,0.073505915701389,0.020653784275055,0.078388258814812,0.012955230660737,0.162928998470306,0.161108940839767,-0.093052975833416,0.169933229684830));
res += mul(Get(s2,dx,-dy), float4x4(-0.072378084063530,0.175601661205292,0.084570392966270,0.049204424023628,0.015185156837106,-0.065459713339806,-0.108491398394108,0.033338647335768,-0.016520472243428,-0.028215046972036,-0.015254163183272,-0.104054234921932,0.021669734269381,-0.245293661952019,-0.039415489882231,-0.036820352077484));
res += mul(Get(s2,dx,0), float4x4(0.028289325535297,0.445585936307907,0.005735798738897,-0.150122344493866,-0.071237213909626,0.118484534323215,-0.041011780500412,-0.157820165157318,0.094381265342236,-0.086566090583801,0.008700626902282,0.077345594763756,0.089894384145737,-0.220745339989662,-0.063074022531509,-0.039944812655449));
res += mul(Get(s2,dx,dy), float4x4(-0.181341201066971,0.261640131473541,0.001525542698801,0.148204639554024,-0.120541371405125,0.064078994095325,0.067995399236679,0.049096178263426,-0.069561935961246,0.014307494275272,-0.010775011964142,-0.032348990440369,-0.111725308001041,-0.075212955474854,-0.115560635924339,0.174964115023613));
res += mul(Get(s3,-dx,-dy), float4x4(-0.099399626255035,-0.064769536256790,0.051899388432503,-0.122219905257225,0.070293426513672,0.119333542883396,-0.001521578407846,0.447881549596786,-0.045478492975235,-0.093738049268723,0.050100885331631,-0.315335631370544,0.084593594074249,-0.047511782497168,0.119426041841507,-0.015612469986081));
res += mul(Get(s3,-dx,0), float4x4(0.051106471568346,0.009784730151296,0.295685768127441,0.022022251039743,-0.096543580293655,-0.282190680503845,-0.148431971669197,-0.380081504583359,0.077569939196110,0.277499109506607,0.105073392391205,0.304574906826019,0.078198552131653,0.089467339217663,0.053861007094383,0.078236415982246));
res += mul(Get(s3,-dx,dy), float4x4(-0.180183827877045,0.024266486987472,0.139436051249504,-0.025173161178827,-0.001685836701654,0.174081772565842,0.072948202490807,-0.024150282144547,-0.062850415706635,-0.076618723571301,-0.102100804448128,0.216533020138741,0.058260001242161,0.002241387264803,0.019479539245367,0.018136195838451));
res += mul(Get(s3,0,-dy), float4x4(0.001250182860531,0.026750465855002,-0.052923630923033,-0.088487289845943,0.217522948980331,-0.160481661558151,0.092810019850731,0.457834273576736,-0.106823965907097,0.405868828296661,-0.008210318163037,0.057422604411840,-0.057431127876043,-0.057005397975445,-0.065514862537384,-0.017101967707276));
res += mul(Get(s3,0,0), float4x4(0.126562893390656,0.097668990492821,-0.205626562237740,0.062455624341965,-0.092897571623325,0.093505673110485,-0.001658409368247,-0.286001175642014,-0.127965688705444,0.141933917999268,-0.269577354192734,0.137034267187119,0.045723326504230,-0.045895289629698,-0.043844901025295,0.023622104898095));
res += mul(Get(s3,0,dy), float4x4(0.205363869667053,-0.027776705101132,-0.155517891049385,0.049578297883272,0.092888489365578,-0.306628853082657,0.048256430774927,-0.088969342410564,0.219797834753990,0.259031832218170,-0.034413710236549,-0.201650306582451,-0.167364329099655,-0.151920869946480,-0.012249023653567,-0.027387890964746));
res += mul(Get(s3,dx,-dy), float4x4(0.188486784696579,0.032574694603682,0.000473291845992,0.053122967481613,-0.218556314706802,0.181793585419655,-0.120654627680779,0.045449502766132,0.103677459061146,-0.048472329974174,0.006853728555143,-0.030117670074105,-0.073477394878864,0.025526275858283,0.008926068432629,-0.023321174085140));
res += mul(Get(s3,dx,0), float4x4(-0.332435905933380,-0.187249079346657,-0.048799805343151,-0.005016122013330,0.212760478258133,0.091828286647797,0.003154289443046,-0.203043088316917,0.010548532009125,-0.634595453739166,-0.029059309512377,0.082069426774979,0.075007632374763,0.022164098918438,-0.054075241088867,-0.027608498930931));
res += mul(Get(s3,dx,dy), float4x4(0.004546608775854,-0.026167599484324,0.037296958267689,-0.014302825555205,-0.017824715003371,0.026440698653460,-0.026648294180632,0.097765564918518,-0.161771655082703,-0.190326422452927,0.090203382074833,0.038156874477863,-0.019569236785173,0.011360043659806,-0.096266582608223,-0.019624009728432));
res += mul(Get(s4,-dx,-dy), float4x4(0.015211252495646,-0.001776800840162,-0.105847880244255,0.041054055094719,-0.276181966066360,-0.062496058642864,0.031493853777647,-0.045291144400835,-0.007271247915924,-0.040200401097536,-0.055386219173670,-0.002913726028055,-0.010883058421314,0.009308751672506,-0.083736404776573,0.223552852869034));
res += mul(Get(s4,-dx,0), float4x4(-0.163829758763313,-0.018286302685738,-0.162411242723465,-0.082233153283596,0.126203417778015,0.174183472990990,0.007560456637293,0.086789734661579,-0.030042584985495,0.085431575775146,-0.062454048544168,-0.064902506768703,-0.067323975265026,-0.025044020265341,-0.337745755910873,-0.087214164435863));
res += mul(Get(s4,-dx,dy), float4x4(-0.107832275331020,0.039440184831619,0.007745307870209,0.018981633707881,-0.113216377794743,-0.161836475133896,0.023813854902983,-0.055225893855095,0.072033509612083,-0.020923728123307,0.106997653841972,0.011818304657936,0.037444852292538,-0.092470392584801,-0.153882637619972,-0.122553259134293));
res += mul(Get(s4,0,-dy), float4x4(0.260928094387054,0.100702948868275,-0.048407588154078,0.085537247359753,0.012887502089143,-0.011945409700274,-0.049079522490501,-0.065850816667080,0.193688452243805,-0.079030193388462,0.079243831336498,0.019474623724818,0.249912396073341,0.301135063171387,-0.008423853665590,0.250749051570892));
res += mul(Get(s4,0,0), float4x4(-0.080929256975651,-0.227615997195244,0.095091380178928,-0.280479431152344,0.083496026694775,0.020901197567582,-0.072078771889210,-0.082108490169048,-0.162944540381432,-0.156334653496742,0.064780302345753,-0.094181507825851,-0.047675143927336,-0.477532178163528,0.152097225189209,-0.208769336342812));
res += mul(Get(s4,0,dy), float4x4(0.179106965661049,0.081221736967564,0.120271518826485,0.064823053777218,-0.006884182803333,0.121058367192745,-0.045191828161478,0.027937686070800,0.012329375371337,0.140715420246124,-0.089774236083031,0.019504195079207,-0.194317772984505,-0.032552104443312,0.058797404170036,-0.074565686285496));
res += mul(Get(s4,dx,-dy), float4x4(0.007027745246887,-0.057034078985453,-0.053608600050211,-0.155889943242073,0.056628078222275,-0.013030802831054,-0.078347764909267,0.025181565433741,0.031424365937710,0.039175953716040,0.067681223154068,0.096818879246712,0.126566305756569,0.021330615505576,0.031066952273250,-0.004482851363719));
res += mul(Get(s4,dx,0), float4x4(0.088067151606083,-0.028533935546875,0.157933324575424,0.374987214803696,0.125172272324562,-0.021108727902174,-0.066549830138683,0.048254352062941,-0.017537878826261,0.098707593977451,-0.047488242387772,-0.038956537842751,-0.143881186842918,0.246751651167870,-0.006054437719285,-0.043971952050924));
res += mul(Get(s4,dx,dy), float4x4(-0.200116023421288,0.119429893791676,0.038744598627090,-0.079852044582367,-0.103730544447899,0.000647153588943,0.185649782419205,0.033762346953154,-0.135310173034668,-0.111503787338734,-0.074653312563896,0.006981851067394,-0.120069645345211,0.018753223121166,0.040965240448713,-0.013561541214585));
res += mul(Get(s5,-dx,-dy), float4x4(-0.035228315740824,-0.098433822393417,-0.015697011724114,-0.008107390254736,-0.079309046268463,0.012408298440278,0.068017072975636,-0.033892024308443,-0.046581283211708,-0.082199424505234,0.086937882006168,-0.254727780818939,-0.008095859549940,0.064364731311798,0.022788368165493,0.081957690417767));
res += mul(Get(s5,-dx,0), float4x4(0.043227020651102,0.062344696372747,-0.021782131865621,0.006827713921666,-0.005570883397013,0.081179410219193,0.058340627700090,-0.029103865846992,0.067122593522072,0.027774324640632,0.059524666517973,0.137535303831100,-0.162190467119217,-0.075621470808983,0.180263414978981,0.006409170106053));
res += mul(Get(s5,-dx,dy), float4x4(0.096307359635830,-0.028692223131657,0.087047405540943,-0.082123659551144,-0.086658746004105,-0.015158142894506,0.000678516342305,0.113405957818031,-0.075257949531078,-0.029616508632898,-0.079085931181908,-0.086642041802406,0.077350288629532,0.068363659083843,0.158425465226173,-0.048704776912928));
res += mul(Get(s5,0,-dy), float4x4(0.001728694187477,0.047667417675257,-0.119496352970600,0.122272126376629,-0.068993665277958,0.049736820161343,0.076822534203529,0.043583322316408,-0.156051576137543,0.039892580360174,0.018753385171294,0.091742604970932,-0.009408571757376,-0.047581542283297,0.047434769570827,-0.079563729465008));
res += mul(Get(s5,0,0), float4x4(-0.141473323106766,-0.070416100323200,0.014720329083502,-0.136174649000168,-0.035596542060375,-0.055363427847624,-0.067579284310341,-0.025892190635204,0.078700862824917,0.216401338577271,-0.087213084101677,0.009193942882121,-0.016632890328765,0.101297892630100,-0.002501107519493,-0.005994813982397));
res += mul(Get(s5,0,dy), float4x4(-0.075168691575527,0.038112528622150,0.086942471563816,0.094146788120270,-0.028933806344867,-0.019779674708843,0.048402786254883,-0.068827174603939,0.030702669173479,0.000986106228083,-0.057187624275684,0.015435057692230,0.029734663665295,-0.156233802437782,0.013324515894055,0.116320267319679));
res += mul(Get(s5,dx,-dy), float4x4(0.058677706867456,0.071731396019459,0.058262743055820,-0.053929973393679,-0.077687084674835,-0.101848818361759,-0.031574256718159,-0.102458186447620,0.069031156599522,0.057224586606026,0.058192115277052,0.169661268591881,0.158333182334900,0.035349473357201,0.021084804087877,0.006196056492627));
res += mul(Get(s5,dx,0), float4x4(-0.002484142314643,0.010472467169166,-0.014751687645912,0.043579496443272,-0.023198166862130,-0.032323602586985,0.013774249702692,-0.023943953216076,-0.117106266319752,-0.232536047697067,-0.088446974754333,0.025479864329100,-0.038197014480829,-0.102397806942463,-0.154749467968941,-0.036152437329292));
res += mul(Get(s5,dx,dy), float4x4(0.001801711856388,0.033350471407175,-0.014685600064695,-0.005844180472195,0.273941218852997,-0.005027555394918,-0.037057105451822,0.131863087415695,0.078077070415020,0.075238205492496,0.020744632929564,-0.130300253629684,-0.133806377649307,0.042971316725016,-0.035709440708160,-0.014293495565653));
res = max(float4(0, 0, 0, 0), res) + float4(-0.023681296035647,0.289533078670502,-0.237206414341927,0.062930718064308) * min(float4(0, 0, 0, 0), res);
return res;
}