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
float4 res = float4(-0.004490681458265,-0.231925681233406,0.054223865270615,-0.079284198582172);
res += mul(Get(s0,-dx,-dy), float4x4(-0.014887960627675,0.145470470190048,-0.064093686640263,0.007579350844026,-0.023027658462524,-0.025456525385380,-0.178302511572838,-0.008497519418597,-0.113191343843937,-0.040734790265560,-0.052504543215036,0.020946089178324,0.099747940897942,0.074484907090664,0.334542542695999,0.020419700071216));
res += mul(Get(s0,-dx,0), float4x4(0.081047825515270,0.004936433862895,0.020510055124760,0.067798443138599,0.191924378275871,-0.024949312210083,0.146926805377007,0.064708992838860,0.136753693223000,0.063250452280045,-0.045716755092144,-0.003120898036286,-0.164372414350510,0.062623925507069,-0.160590991377831,-0.032423105090857));
res += mul(Get(s0,-dx,dy), float4x4(-0.054274812340736,-0.121792115271091,-0.009380934759974,-0.079689897596836,-0.160228937864304,0.052697230130434,0.081532843410969,-0.026690492406487,-0.092381291091442,0.139727309346199,0.053089939057827,-0.005716757848859,0.176238805055618,0.010458404198289,-0.027251932770014,-0.005758864339441));
res += mul(Get(s0,0,-dy), float4x4(0.045843832194805,0.105109021067619,0.076115228235722,0.012622719630599,0.130503535270691,-0.052332293242216,-0.191925317049026,-0.182222113013268,0.054135039448738,-0.103210598230362,0.031620446592569,0.068586371839046,-0.030511353164911,-0.105888940393925,0.399456024169922,0.132135748863220));
res += mul(Get(s0,0,0), float4x4(-0.114450708031654,-0.027755143120885,-0.018375677987933,-0.058752562850714,0.228547483682632,-0.008192988112569,0.305574327707291,-0.106355875730515,0.025078160688281,0.015172663144767,-0.045363590121269,0.006342923734337,-0.212663784623146,-0.210730582475662,-0.238441467285156,-0.085314907133579));
res += mul(Get(s0,0,dy), float4x4(-0.013388445600867,-0.045585997402668,-0.012064985930920,-0.016558781266212,-0.308655679225922,-0.058343306183815,0.033605016767979,-0.239772662520409,0.080969706177711,-0.050502993166447,0.040588881820440,0.057577036321163,0.206764370203018,-0.156598985195160,0.060692835599184,-0.073287107050419));
res += mul(Get(s0,dx,-dy), float4x4(-0.059263270348310,0.157235607504845,-0.040114514529705,-0.027986243367195,0.082860380411148,-0.035673793405294,-0.106512583792210,0.027658952400088,0.045801006257534,-0.084685035049915,0.041006423532963,0.001152934972197,0.009183220565319,0.084924019873142,-0.014840979129076,-0.192364051938057));
res += mul(Get(s0,dx,0), float4x4(0.094816058874130,0.044646311551332,-0.085822917521000,0.028410624712706,0.131149128079414,-0.035761438310146,-0.062569804489613,-0.157508924603462,-0.077690422534943,0.016240091994405,-0.037799384444952,-0.154512777924538,-0.139077693223953,0.127233564853668,-0.162311598658562,-0.105234235525131));
res += mul(Get(s0,dx,dy), float4x4(0.013112574815750,-0.077974900603294,0.049962785094976,0.167027220129967,-0.111408092081547,-0.156882673501968,0.016612693667412,-0.194502294063568,0.021452378481627,0.079345144331455,-0.018564382568002,-0.076864086091518,0.018257053568959,0.060055106878281,-0.001964074093848,-0.081762954592705));
res += mul(Get(s1,-dx,-dy), float4x4(-0.018988339230418,0.102295935153961,0.083678200840950,0.069975487887859,0.042241871356964,0.018288847059011,-0.048930238932371,0.087608389556408,0.108749724924564,-0.013198970817029,-0.068293794989586,-0.031418144702911,0.074221536517143,-0.286877572536469,-0.007992682047188,-0.064290583133698));
res += mul(Get(s1,-dx,0), float4x4(-0.041405197232962,-0.134965911507607,-0.080823563039303,-0.060880646109581,-0.100522600114346,-0.037867017090321,-0.036390397697687,0.011148402467370,-0.165448665618896,0.027722977101803,-0.040655672550201,0.026827489957213,0.029485234990716,-0.099519774317741,-0.014152335934341,-0.020515786483884));
res += mul(Get(s1,-dx,dy), float4x4(0.051015492528677,0.195527940988541,-0.021463999524713,-0.038723897188902,-0.041892841458321,-0.121158652007580,0.050012096762657,-0.023187944665551,-0.011595096439123,-0.311084806919098,0.025757450610399,0.104903027415276,0.026112301275134,0.057181905955076,0.054805483669043,0.119499839842319));
res += mul(Get(s1,0,-dy), float4x4(0.041711203753948,-0.029370095580816,-0.146290346980095,-0.125147491693497,-0.108038470149040,0.017376566305757,0.251108527183533,0.114394247531891,0.072602413594723,0.055568162351847,-0.312519699335098,-0.062546201050282,0.033856693655252,0.008420346304774,0.001745549263433,0.023275153711438));
res += mul(Get(s1,0,0), float4x4(0.196050807833672,-0.016826884821057,0.207565709948540,0.050500456243753,-0.107215605676174,-0.030271496623755,-0.089067645370960,-0.004916070029140,0.271873563528061,0.189256116747856,0.222245931625366,0.422787040472031,0.011229605413973,0.246706038713455,0.123123042285442,0.022735748440027));
res += mul(Get(s1,0,dy), float4x4(-0.181254819035530,-0.091180481016636,0.006620725151151,-0.062347300350666,0.245819911360741,0.044887620955706,-0.021336413919926,-0.020136989653111,-0.082124635577202,-0.016660947352648,0.089673727750778,-0.057389445602894,-0.261654376983643,-0.009596741758287,0.010624815709889,0.065700232982635));
res += mul(Get(s1,dx,-dy), float4x4(-0.069734394550323,0.069732487201691,0.119223035871983,-0.002445341087878,0.067754402756691,-0.023233886808157,-0.020669357851148,-0.127686560153961,-0.087372519075871,-0.139114096760750,-0.055690180510283,0.054109152406454,-0.035655703395605,-0.043659165501595,0.112457163631916,0.005926691927016));
res += mul(Get(s1,dx,0), float4x4(-0.082559831440449,-0.196744501590729,-0.126365095376968,-0.120518863201141,-0.045655056834221,0.017569651827216,-0.079302340745926,-0.116627223789692,-0.149374142289162,0.092517621815205,-0.022500313818455,0.049100548028946,-0.032957386225462,0.095836639404297,-0.238689288496971,-0.181940793991089));
res += mul(Get(s1,dx,dy), float4x4(0.164717629551888,0.129779785871506,-0.000375259318389,0.249908477067947,0.071995839476585,0.021596055477858,0.089849919080734,-0.145024999976158,-0.054481722414494,-0.049485486000776,0.029830357059836,0.095283359289169,0.152007445693016,0.039577730000019,0.018048644065857,-0.033410705626011));
res += mul(Get(s2,-dx,-dy), float4x4(-0.021529106423259,0.305647850036621,-0.250986605882645,0.072892837226391,-0.022810535505414,-0.104356318712234,-0.148382052779198,-0.003076925873756,0.033381942659616,0.042464144527912,0.009381542913616,0.104117147624493,0.068735517561436,0.127609565854073,-0.014723544009030,-0.025488179177046));
res += mul(Get(s2,-dx,0), float4x4(-0.001740977284499,0.036924131214619,0.126245245337486,0.122602097690105,0.101179599761963,-0.139332652091980,0.127285137772560,-0.015290898270905,-0.042537644505501,-0.295388460159302,-0.043933864682913,0.016416665166616,-0.023635881021619,0.214146301150322,0.094332382082939,-0.029594438150525));
res += mul(Get(s2,-dx,dy), float4x4(-0.093687929213047,-0.032073516398668,0.069349870085716,0.024421090260148,-0.108261533081532,-0.014626571908593,0.046017702668905,-0.030481336638331,0.033647056668997,0.110843017697334,0.097578108310699,-0.001891529071145,-0.043189387768507,0.025322755798697,-0.022092508152127,-0.014830432832241));
res += mul(Get(s2,0,-dy), float4x4(0.071986809372902,0.123496100306511,-0.286704629659653,-0.165870413184166,0.093069590628147,0.169175535440445,0.013598955236375,0.049901124089956,-0.007119703572243,0.088843852281570,-0.010230042040348,0.041762314736843,0.012846203520894,-0.248497992753983,0.128751620650291,-0.065660275518894));
res += mul(Get(s2,0,0), float4x4(0.097331419587135,-0.127653568983078,0.158805727958679,-0.101766541600227,-0.088060334324837,-0.026281099766493,-0.105037435889244,-0.082237839698792,0.095805823802948,-0.001378508284688,0.129366144537926,0.107409924268723,-0.105782575905323,-0.217007786035538,-0.172409370541573,-0.040139105170965));
res += mul(Get(s2,0,dy), float4x4(-0.169396385550499,0.252609431743622,0.154768332839012,-0.155775219202042,0.119586020708084,0.044256262481213,0.031128112226725,0.023181729018688,-0.170850560069084,0.059358540922403,-0.078491695225239,0.185102224349976,0.204263269901276,-0.074622198939323,0.010016793385148,-0.058744534850121));
res += mul(Get(s2,dx,-dy), float4x4(0.062689028680325,0.052670646458864,0.055722210556269,-0.120098248124123,-0.008078793063760,0.097666829824448,0.010251303203404,-0.036960221827030,-0.004688169341534,-0.190012305974960,0.060598555952311,0.068326123058796,0.006070973351598,0.045546110719442,-0.073254451155663,-0.117249988019466));
res += mul(Get(s2,dx,0), float4x4(-0.157044515013695,-0.437264502048492,-0.106770165264606,0.090267658233643,-0.027648119255900,0.027908820658922,-0.010647470131516,-0.027587475255132,-0.003668039804325,-0.106911465525627,-0.210016697645187,-0.073567122220993,-0.042871385812759,0.165831729769707,0.104650415480137,0.080959245562553));
res += mul(Get(s2,dx,dy), float4x4(0.079347975552082,-0.113178059458733,-0.081547051668167,0.023882076144218,-0.082543484866619,0.088393777608871,-0.053261257708073,-0.051578983664513,0.081314332783222,0.206114977598190,0.048041734844446,0.252468049526215,-0.082294970750809,-0.076844759285450,-0.066931925714016,0.198394924402237));
res += mul(Get(s3,-dx,-dy), float4x4(-0.082716740667820,-0.058756507933140,-0.056567091494799,0.127528786659241,-0.026540219783783,0.048573903739452,-0.228097647428513,-0.055777534842491,0.036746837198734,0.104230016469955,-0.226129725575447,0.014630905352533,-0.005889750551432,0.005574746057391,0.100988201797009,-0.000501342292409));
res += mul(Get(s3,-dx,0), float4x4(0.195720747113228,-0.110893659293652,0.113736875355244,-0.000696381612215,0.079236187040806,0.174842730164528,-0.003351952182129,0.069743379950523,0.078559987246990,0.035575341433287,0.086931593716145,0.034421242773533,-0.082416996359825,-0.124629542231560,-0.019708238542080,-0.037764877080917));
res += mul(Get(s3,-dx,dy), float4x4(-0.126614645123482,-0.068696357309818,-0.114373199641705,0.008897983469069,-0.085012204945087,-0.100423447787762,-0.006539318710566,-0.001462582265958,-0.126154527068138,0.076417744159698,0.082176186144352,0.036472953855991,0.020997783169150,-0.019492374733090,-0.022576916962862,0.022009417414665));
res += mul(Get(s3,0,-dy), float4x4(0.166990339756012,-0.037038493901491,-0.265570461750031,0.130276128649712,0.001501260208897,0.168394804000854,-0.157898455858231,-0.107315570116043,-0.066357366740704,0.012148844078183,0.195996537804604,0.015556123107672,0.016006678342819,0.036936871707439,-0.143713057041168,-0.065626375377178));
res += mul(Get(s3,0,0), float4x4(-0.093999437987804,0.001249846885912,0.223013073205948,0.031901974231005,0.122799709439278,0.145392552018166,0.176875814795494,0.032279465347528,-0.111953563988209,-0.135473012924194,-0.010638955980539,-0.116413749754429,0.176044628024101,-0.057644851505756,-0.020966673269868,0.054087132215500));
res += mul(Get(s3,0,dy), float4x4(-0.030251180753112,0.067622274160385,0.103744789958000,-0.127800360321999,-0.110671401023865,0.116255253553391,0.102714128792286,-0.013444134034216,0.062593214213848,-0.109892845153809,-0.061258077621460,0.014521196484566,-0.069031953811646,-0.064920037984848,0.010795543901622,0.063265524804592));
res += mul(Get(s3,dx,-dy), float4x4(0.074682831764221,-0.136862233281136,0.095631688833237,0.086189568042755,-0.031690064817667,0.084548413753510,-0.135170876979828,0.070997565984726,0.029348770156503,-0.038903899490833,0.049175057560205,-0.002149620791897,-0.047822061926126,0.136749505996704,-0.058589093387127,0.022231644019485));
res += mul(Get(s3,dx,0), float4x4(0.012930938974023,-0.061962127685547,-0.138268604874611,-0.136519417166710,0.047683913260698,-0.178409859538078,0.104936987161636,0.108885392546654,0.036178909242153,0.111102923750877,-0.051311191171408,-0.041187692433596,0.038603626191616,0.081399530172348,0.001767082023434,0.029290046542883));
res += mul(Get(s3,dx,dy), float4x4(0.144365459680557,0.003735935082659,-0.007687955163419,0.033904366195202,0.048262096941471,0.038316305726767,-0.033498309552670,0.004537734668702,0.048030290752649,0.052819620817900,-0.050436489284039,-0.009931366890669,-0.085718005895615,0.076028779149055,0.051713086664677,0.129676371812820));
res += mul(Get(s4,-dx,-dy), float4x4(-0.032246325165033,-0.217202052474022,-0.032886616885662,-0.072647102177143,0.062860667705536,0.154701083898544,-0.008602637797594,0.032351441681385,-0.004784419201314,0.115442387759686,-0.085496068000793,-0.106662601232529,0.035038571804762,0.263942152261734,0.060586165636778,0.002202352974564));
res += mul(Get(s4,-dx,0), float4x4(0.118810862302780,-0.197158321738243,0.170987561345100,-0.038839362561703,0.028563994914293,-0.142690837383270,-0.021012056618929,-0.159985616803169,0.037421803921461,-0.146711423993111,0.113153681159019,-0.098563000559807,-0.096322983503342,0.189834430813789,0.135278463363647,0.087705358862877));
res += mul(Get(s4,-dx,dy), float4x4(-0.108863055706024,-0.202237874269485,-0.112221829593182,-0.064875505864620,0.055663235485554,-0.106582246720791,0.038573607802391,-0.061164177954197,0.005826767068356,-0.134960964322090,0.006406225264072,-0.161497950553894,-0.007555758114904,-0.051024019718170,-0.114056259393692,-0.082151144742966));
res += mul(Get(s4,0,-dy), float4x4(-0.078737974166870,0.172138810157776,-0.366386502981186,-0.099616289138794,-0.109693430364132,-0.143602102994919,-0.176604568958282,-0.122906714677811,-0.012192846275866,0.166030272841454,-0.163309708237648,-0.188165903091431,-0.040221013128757,-0.191040635108948,0.044248092919588,-0.045584335923195));
res += mul(Get(s4,0,0), float4x4(0.221873819828033,0.288003891706467,0.159681186079979,0.346520960330963,0.144989192485809,0.104803830385208,0.168976947665215,0.313531219959259,0.079799287021160,0.094663448631763,0.055829208344221,-0.034386120736599,0.023716198280454,-0.092416919767857,-0.057608798146248,-0.069028563797474));
res += mul(Get(s4,0,dy), float4x4(-0.018353672698140,-0.026173224672675,0.072059512138367,-0.097712919116020,-0.077202096581459,0.030606547370553,-0.032517593353987,0.036272693425417,-0.097248442471027,0.130850419402122,-0.054080553352833,-0.134529486298561,-0.004442974459380,0.037297464907169,-0.005049366969615,-0.057441558688879));
res += mul(Get(s4,dx,-dy), float4x4(-0.016000622883439,-0.173791959881783,0.048743218183517,0.043938785791397,0.024841859936714,-0.054498605430126,0.095121741294861,0.048449862748384,-0.065989479422569,-0.173937425017357,0.012778352946043,-0.041550714522600,0.069391302764416,-0.002411880064756,-0.071744635701180,-0.095263905823231));
res += mul(Get(s4,dx,0), float4x4(-0.118021711707115,-0.041467867791653,0.102905519306660,-0.230496540665627,-0.101969942450523,0.034495346248150,-0.072074241936207,-0.038890752941370,0.037558529525995,-0.080910474061966,0.108737014234066,-0.021362911909819,-0.063073441386223,-0.032172475010157,-0.044914200901985,0.055016931146383));
res += mul(Get(s4,dx,dy), float4x4(0.085376650094986,0.147276654839516,-0.082281127572060,-0.055311650037766,0.013126264326274,0.189693361520767,-0.062351439148188,0.010757947340608,0.014357664622366,0.031124781817198,0.024042591452599,0.079450249671936,0.143404334783554,-0.180809944868088,0.067938812077045,0.265062123537064));
res += mul(Get(s5,-dx,-dy), float4x4(0.042721956968307,-0.073466897010803,0.007825727574527,-0.115231908857822,-0.081152290105820,-0.070321820676327,-0.066925130784512,-0.034444361925125,0.046566013246775,-0.134755119681358,0.027312347665429,0.037452537566423,0.068044319748878,-0.065111868083477,0.211004167795181,0.014670724980533));
res += mul(Get(s5,-dx,0), float4x4(0.291374474763870,-0.139288797974586,0.132619872689247,-0.273011326789856,0.146352335810661,-0.109104789793491,0.025820316746831,-0.036960940808058,-0.054991237819195,-0.265130102634430,0.112769864499569,-0.025532104074955,-0.245026439428329,-0.069819562137127,-0.162373751401901,-0.109680548310280));
res += mul(Get(s5,-dx,dy), float4x4(-0.137949407100677,-0.239336505532265,0.122430108487606,0.070996522903442,-0.035608060657978,0.012099562212825,-0.026425970718265,0.027059393003583,-0.091052375733852,0.009200594387949,-0.110094487667084,0.144760563969612,0.378886908292770,-0.221819803118706,0.061344806104898,-0.131476163864136));
res += mul(Get(s5,0,-dy), float4x4(-0.004488102626055,0.271150022745132,-0.127548158168793,-0.051109749823809,0.151466071605682,0.024334022775292,0.126925289630890,0.061933219432831,-0.062023054808378,0.062793679535389,-0.042016293853521,-0.009438532404602,-0.136793136596680,0.068740919232368,0.233312875032425,0.109317786991596));
res += mul(Get(s5,0,0), float4x4(-0.018216526135802,0.099783100187778,0.128883898258209,-0.106757231056690,-0.097427815198898,-0.075954049825668,0.064837604761124,-0.043951369822025,0.015926357358694,0.010430889204144,-0.077148318290710,0.055306732654572,-0.310091108083725,0.005834761541337,-0.292125940322876,0.247141569852829));
res += mul(Get(s5,0,dy), float4x4(-0.224534749984741,-0.141917794942856,0.016301101073623,-0.009068436920643,-0.019872261211276,0.047439947724342,-0.058063305914402,0.168874129652977,0.135861843824387,0.171270534396172,0.072103992104530,-0.084486968815327,0.374854087829590,-0.084601074457169,0.073046281933784,0.096564434468746));
res += mul(Get(s5,dx,-dy), float4x4(-0.140263915061951,-0.020705638453364,-0.194402471184731,0.121811874210835,-0.049900949001312,0.061372652649879,-0.145983457565308,-0.005731112789363,0.038206484168768,0.111335940659046,-0.069106280803680,-0.001883768942207,0.080681294202805,0.133285805583000,0.082621537148952,-0.191201552748680));
res += mul(Get(s5,dx,0), float4x4(0.397040158510208,0.010234203189611,0.141582280397415,-0.119603767991066,-0.059954512864351,0.021275321021676,-0.127089545130730,0.074198819696903,-0.035610131919384,0.103999964892864,0.140212640166283,0.035458408296108,-0.040778134018183,-0.108019337058067,-0.104139216244221,-0.042689260095358));
res += mul(Get(s5,dx,dy), float4x4(-0.155192375183105,0.144492909312248,-0.048485491424799,0.277780950069427,0.064450427889824,0.283341884613037,0.122462116181850,-0.006053498480469,0.003224187763408,-0.165953010320663,0.005456681828946,-0.065326862037182,0.149706915020943,-0.031252954155207,-0.084190629422665,-0.240530163049698));
res = max(float4(0, 0, 0, 0), res) + float4(0.102208487689495,0.003638812340796,0.077482961118221,0.092483542859554) * min(float4(0, 0, 0, 0), res);
return res;
}