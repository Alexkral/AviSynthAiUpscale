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
float4 res = float4(0.185031786561012,0.145012274384499,0.110403642058372,-0.058953549712896);
res += mul(Get(s0,-dx,-dy), float4x4(0.038574751466513,0.235552713274956,-0.386075615882874,-0.127272725105286,0.001270823646337,-0.010441472753882,0.072169423103333,-0.013493635691702,-0.238165304064751,0.053326100111008,0.108227908611298,0.144980788230896,-0.055731914937496,0.043390393257141,0.024707276374102,0.022229509428144));
res += mul(Get(s0,-dx,0), float4x4(-0.013759511522949,0.032655920833349,-0.348647028207779,0.177744284272194,-0.041238851845264,0.268761515617371,0.286714851856232,0.161703437566757,0.033577177673578,-0.258716076612473,-0.248048961162567,0.229461416602135,0.293938964605331,0.034621130675077,0.200321510434151,-0.145600795745850));
res += mul(Get(s0,-dx,dy), float4x4(0.024581730365753,-0.007456323597580,-0.196849599480629,0.258623063564301,0.053467370569706,0.315076440572739,0.258904039859772,0.068580090999603,0.116416953504086,-0.190953671932220,-0.042274333536625,-0.188887044787407,0.044882401823997,0.213248208165169,-0.086383245885372,0.147907286882401));
res += mul(Get(s0,0,-dy), float4x4(0.159325659275055,0.309511542320251,-0.538893043994904,0.147103071212769,-0.183243185281754,0.051224488765001,0.063921034336090,-0.099174298346043,0.089945614337921,0.026290701702237,0.224385097622871,0.385380506515503,-0.203137382864952,0.050384528934956,-0.045335359871387,0.087196476757526));
res += mul(Get(s0,0,0), float4x4(0.051718246191740,-0.185823261737823,-0.248474836349487,0.225368678569794,0.017390241846442,-0.183234483003616,0.091786831617355,-0.029791733250022,0.038194555789232,-0.149642020463943,0.159468725323677,0.089718766510487,-0.325436860322952,-0.078410647809505,-0.144815921783447,0.025751395151019));
res += mul(Get(s0,0,dy), float4x4(0.034854780882597,-0.144088715314865,-0.340791225433350,0.068229928612709,-0.085096828639507,0.373516857624054,0.157775521278381,-0.057631723582745,0.106390677392483,-0.147381499409676,-0.047528840601444,-0.012323040515184,-0.026729080826044,0.184093773365021,0.018628463149071,0.038377556949854));
res += mul(Get(s0,dx,-dy), float4x4(-0.163068085908890,0.144067987799644,-0.537657618522644,0.228711605072021,-0.011295597068965,0.263214528560638,0.175970196723938,-0.037996072322130,0.180479869246483,0.048043195158243,-0.117013856768608,0.197692200541496,-0.017988098785281,0.169771865010262,0.093074746429920,-0.075979351997375));
res += mul(Get(s0,dx,0), float4x4(-0.117043659090996,-0.245324730873108,-0.477280229330063,0.128467366099358,0.013695162720978,0.049964275211096,0.063819333910942,0.120405159890652,-0.214179784059525,-0.066666528582573,0.053255155682564,-0.255507618188858,0.059447005391121,0.077098600566387,0.021262573078275,0.015827029943466));
res += mul(Get(s0,dx,dy), float4x4(-0.116634272038937,0.020897505804896,-0.501044869422913,-0.062418948858976,0.070818722248077,0.218105405569077,0.090084798634052,-0.068829216063023,-0.050439745187759,-0.012519164942205,0.254405319690704,0.026756241917610,-0.029433952644467,-0.031819067895412,0.068236634135246,0.024826137349010));
res += mul(Get(s1,-dx,-dy), float4x4(-0.052257258445024,-0.122446522116661,0.103700667619705,0.105756483972073,0.046979915350676,0.116563886404037,-0.260939359664917,-0.107442051172256,-0.102036260068417,0.139749914407730,-0.043362803757191,-0.053044166415930,-0.057907544076443,-0.069485247135162,0.000327830930473,-0.075200408697128));
res += mul(Get(s1,-dx,0), float4x4(-0.131211996078491,-0.020726971328259,-0.015310016460717,-0.029080737382174,-0.096735328435898,-0.059928562492132,-0.031354218721390,0.200016140937805,-0.011474859900773,0.021003345027566,-0.181735098361969,0.296276509761810,0.027246493846178,0.030246293172240,-0.167678669095039,0.293762803077698));
res += mul(Get(s1,-dx,dy), float4x4(-0.045126374810934,0.051166132092476,-0.212718904018402,-0.038305982947350,-0.149859994649887,-0.051943045109510,-0.020118301734328,0.118619807064533,0.022991361096501,-0.071440272033215,0.098567098379135,0.096634894609451,0.120917953550816,-0.251705259084702,0.073615238070488,0.135553434491158));
res += mul(Get(s1,0,-dy), float4x4(-0.064247652888298,-0.058689370751381,-0.079958029091358,-0.036860231310129,-0.065392218530178,0.185327947139740,-0.074149549007416,0.205797016620636,-0.080580703914165,-0.048754733055830,0.275123834609985,0.079361110925674,-0.116596125066280,0.166454493999481,-0.016392186284065,0.063786707818508));
res += mul(Get(s1,0,0), float4x4(0.175947800278664,0.408422350883484,0.138440981507301,-0.152232751250267,0.049157842993736,-0.517737865447998,-0.327032744884491,-0.040215816348791,-0.193883627653122,-0.084458537399769,-0.085569880902767,-0.065825358033180,-0.102594479918480,0.000982848927379,-0.063393339514732,-0.083475001156330));
res += mul(Get(s1,0,dy), float4x4(-0.074296414852142,-0.250964581966400,0.078270561993122,0.197977080941200,-0.042586054652929,0.005694827530533,-0.260563284158707,-0.115811653435230,-0.122453354299068,-0.040192741900682,-0.113186717033386,-0.059898331761360,0.162834435701370,-0.054407723248005,0.213203027844429,-0.102747753262520));
res += mul(Get(s1,dx,-dy), float4x4(0.120115734636784,-0.020844593644142,0.004683604929596,-0.085786797106266,-0.005084075499326,0.180319711565971,-0.099886372685432,0.124753832817078,0.138737142086029,-0.055788379162550,0.017918776720762,0.201028659939766,0.076199494302273,0.039797358214855,-0.023554679006338,0.154700934886932));
res += mul(Get(s1,dx,0), float4x4(0.235265776515007,-0.050387904047966,-0.053834155201912,0.152233168482780,-0.434703558683395,0.060024131089449,0.020513758063316,-0.115049347281456,-0.102615267038345,-0.077892012894154,-0.101076282560825,-0.030751409009099,0.102046564221382,0.105796307325363,-0.138581648468971,-0.078336156904697));
res += mul(Get(s1,dx,dy), float4x4(0.033355798572302,-0.105691611766815,0.150419861078262,-0.139943704009056,-0.214358359575272,0.295537531375885,0.078894086182117,-0.054098431020975,0.003172295168042,-0.105653606355190,-0.046705052256584,-0.043189745396376,-0.008226214908063,-0.155055955052376,0.027532232925296,-0.045699268579483));
res += mul(Get(s2,-dx,-dy), float4x4(0.034683287143707,0.015856301411986,-0.069565288722515,-0.060999199748039,-0.112831190228462,0.023597963154316,0.135566249489784,-0.034884717315435,-0.089463457465172,0.037742562592030,0.054109122604132,-0.237985357642174,-0.069303013384342,-0.206823199987411,-0.152245238423347,-0.149980738759041));
res += mul(Get(s2,-dx,0), float4x4(0.036809701472521,-0.026113897562027,-0.091313794255257,0.068048335611820,0.064134441316128,-0.103375151753426,0.018787713721395,-0.072859354317188,-0.027022542431951,-0.354701519012451,-0.003427164163440,0.056380972266197,0.057325813919306,0.005674422718585,0.168466389179230,0.140676453709602));
res += mul(Get(s2,-dx,dy), float4x4(-0.076616533100605,0.005592933855951,0.132636114954948,-0.137223199009895,-0.136934921145439,0.055513113737106,-0.110116206109524,-0.054002337157726,-0.012584201060236,-0.165523946285248,0.115526400506496,-0.020367382094264,0.016440128907561,0.139758273959160,0.064043432474136,-0.122020997107029));
res += mul(Get(s2,0,-dy), float4x4(-0.204827472567558,0.054121661931276,0.003383123781532,-0.053508587181568,0.079621307551861,0.043197121471167,0.115786015987396,-0.082810685038567,-0.109938845038414,-0.110181421041489,0.029066776856780,0.331656485795975,-0.090298175811768,-0.225490197539330,-0.192618370056152,0.066110193729401));
res += mul(Get(s2,0,0), float4x4(-0.249476477503777,0.107474103569984,0.143782183527946,0.017682027071714,-0.105925865471363,0.187881633639336,0.115973100066185,-0.069696314632893,0.132398352026939,-0.564205527305603,-0.109574764966965,0.096654385328293,-0.079917043447495,-0.037450652569532,-0.075826667249203,0.312509208917618));
res += mul(Get(s2,0,dy), float4x4(0.133520200848579,-0.130624964833260,0.176057696342468,-0.014826364815235,-0.081562355160713,-0.279522716999054,-0.014885300770402,0.234170377254486,-0.063885398209095,-0.119103588163853,-0.089260861277580,-0.102063171565533,0.055106580257416,0.060858722776175,-0.069548554718494,-0.146090716123581));
res += mul(Get(s2,dx,-dy), float4x4(0.129992276430130,0.068149194121361,-0.086841270327568,-0.092831708490849,-0.007275274023414,0.202116921544075,-0.222115948796272,0.062260922044516,0.310032099485397,-0.016465222463012,0.044671583920717,-0.055245418101549,-0.123339414596558,-0.073495142161846,0.182928502559662,-0.072364240884781));
res += mul(Get(s2,dx,0), float4x4(0.051895000040531,0.093408271670341,0.231652721762657,-0.067557297646999,0.115870214998722,-0.047295730561018,0.168884202837944,0.230688825249672,-0.045126169919968,-0.169793352484703,0.054135613143444,-0.236879199743271,0.056624274700880,0.106526657938957,0.097511202096939,-0.030883377417922));
res += mul(Get(s2,dx,dy), float4x4(0.029901014640927,-0.010772135108709,0.086599312722683,0.030641421675682,-0.078204765915871,-0.005439444445074,-0.062228009104729,-0.042810689657927,0.051479410380125,-0.086834944784641,-0.082410186529160,-0.008924306370318,0.106129124760628,0.107927329838276,0.088539615273476,0.247588902711868));
res += mul(Get(s3,-dx,-dy), float4x4(-0.028171848505735,-0.042839881032705,0.181357130408287,0.156057670712471,-0.033491972833872,-0.035794064402580,0.008092782460153,-0.300325930118561,0.010675474070013,0.033891495317221,-0.129848465323448,-0.028217388316989,-0.087837651371956,-0.010565541684628,-0.045064970850945,-0.017199069261551));
res += mul(Get(s3,-dx,0), float4x4(0.005948699079454,-0.153190478682518,-0.139065235853195,-0.131761059165001,0.056506302207708,-0.079952314496040,0.120561376214027,0.358365505933762,0.102462865412235,0.056848548352718,0.069422997534275,-0.124983593821526,0.029180781915784,0.043667171150446,-0.104981295764446,-0.093082554638386));
res += mul(Get(s3,-dx,dy), float4x4(0.072476558387280,0.092536762356758,-0.113084293901920,-0.081377401947975,-0.068146951496601,0.036438070237637,0.310769915580750,0.010649653151631,-0.002266413299367,0.151338323950768,0.152457341551781,0.060012515634298,-0.014247496612370,-0.056338328868151,0.093566134572029,-0.075023546814919));
res += mul(Get(s3,0,-dy), float4x4(0.110835120081902,-0.090688370168209,0.135553717613220,0.005687432829291,-0.057983852922916,0.072742082178593,0.239024817943573,-0.048615943640471,0.058738257735968,0.137444898486137,-0.310003072023392,-0.190682470798492,0.056331992149353,0.079558558762074,-0.033235784620047,-0.096910484135151));
res += mul(Get(s3,0,0), float4x4(0.100906059145927,0.173404365777969,0.213016346096992,-0.107735022902489,0.480079472064972,-0.185028791427612,0.144219666719437,0.304885417222977,-0.104946650564671,0.131060153245926,-0.143917784094810,0.098197475075722,-0.039857015013695,-0.039064019918442,-0.053959734737873,-0.247703194618225));
res += mul(Get(s3,0,dy), float4x4(-0.024774063378572,0.033212296664715,-0.047978870570660,-0.013100934214890,0.015297665260732,0.179884612560272,0.276651889085770,-0.275736570358276,0.023650901392102,0.184821918606758,-0.059558615088463,0.036834660917521,-0.033348705619574,-0.038632743060589,-0.129894748330116,0.041702009737492));
res += mul(Get(s3,dx,-dy), float4x4(0.203999191522598,0.021152347326279,-0.084116473793983,0.005896830931306,-0.379620164632797,-0.087699227035046,0.141882941126823,-0.006266936659813,-0.050227440893650,0.149278864264488,-0.247716054320335,0.018851695582271,0.041706044226885,0.116042532026768,0.031729742884636,0.004762543365359));
res += mul(Get(s3,dx,0), float4x4(0.118319265544415,-0.057227961719036,-0.088578149676323,0.233408406376839,0.260449737310410,-0.059391882270575,0.027338190004230,0.068503573536873,0.098389238119125,0.058730810880661,-0.184476658701897,0.149380430579185,-0.270658999681473,0.109548263251781,0.318443506956100,0.168541550636292));
res += mul(Get(s3,dx,dy), float4x4(0.054948642849922,0.000651561247651,-0.049473572522402,0.049670070409775,0.033912166953087,0.152126178145409,-0.083765991032124,-0.058178342878819,0.155856132507324,0.062528587877750,-0.277365326881409,0.063315846025944,0.016468239948153,0.000143758079503,-0.056654240936041,0.076317906379700));
res += mul(Get(s4,-dx,-dy), float4x4(-0.035868324339390,-0.200565010309219,0.200162082910538,0.017174210399389,-0.159576222300529,0.175622805953026,-0.147732332348824,0.055396519601345,0.045637611299753,-0.125033989548683,0.101699389517307,0.077504970133305,-0.084308154881001,-0.054275881499052,-0.035958677530289,-0.099214836955070));
res += mul(Get(s4,-dx,0), float4x4(0.015505705960095,-0.201499074697495,0.023154269903898,-0.153672322630882,-0.119597710669041,-0.008260698057711,0.051163900643587,-0.138630419969559,-0.131251692771912,-0.024573195725679,-0.105126090347767,-0.003454029094428,0.018421072512865,0.204452306032181,-0.017351638525724,0.000864800822455));
res += mul(Get(s4,-dx,dy), float4x4(0.030867746099830,-0.146310955286026,0.013975503854454,-0.051760304719210,-0.108614176511765,-0.019985537976027,-0.008792923763394,0.126036971807480,-0.064816705882549,0.004281594883651,-0.052494239062071,0.118021458387375,0.070446409285069,0.016852272674441,0.008756500668824,0.082219377160072));
res += mul(Get(s4,0,-dy), float4x4(-0.254302561283112,-0.491872876882553,-0.110501356422901,-0.074699595570564,0.033639337867498,0.005775015335530,0.141560256481171,-0.012815088964999,0.032941050827503,-0.021082572638988,-0.257357865571976,-0.100969322025776,-0.042527705430984,-0.062809824943542,-0.079036369919777,0.044517431408167));
res += mul(Get(s4,0,0), float4x4(-0.206564843654633,-0.360593914985657,-0.025229182094336,-0.016546001657844,0.035396620631218,-0.041833098977804,0.169607177376747,0.126088351011276,0.075233682990074,-0.137176230549812,0.039369374513626,-0.352912664413452,-0.098543703556061,0.194217577576637,0.048555798828602,0.011873084120452));
res += mul(Get(s4,0,dy), float4x4(0.055039923638105,-0.320230305194855,0.142647057771683,0.055971011519432,0.036430262029171,-0.171125888824463,-0.052036501467228,-0.054764140397310,0.029513230547309,0.004063505213708,-0.010257070884109,0.108659736812115,0.156489536166191,-0.032586295157671,0.282584249973297,-0.098912768065929));
res += mul(Get(s4,dx,-dy), float4x4(-0.701396465301514,0.007009542547166,-0.041412983089685,-0.130188912153244,-0.323839336633682,0.039062768220901,-0.175946623086929,-0.029212662950158,-0.092749431729317,-0.025169758126140,0.075207389891148,0.007307311054319,0.014065342023969,0.197578355669975,0.074386626482010,-0.098392821848392));
res += mul(Get(s4,dx,0), float4x4(0.090560995042324,-0.137756362557411,0.077494546771049,0.051377877593040,-0.135782629251480,-0.023703236132860,0.032064709812403,0.025566734373569,0.242884591221809,-0.128295063972473,-0.173010334372520,0.124627113342285,-0.021165799349546,0.095771066844463,-0.024693675339222,0.069095611572266));
res += mul(Get(s4,dx,dy), float4x4(-0.013760823756456,-0.100796669721603,0.015412367880344,-0.033647682517767,0.008893722668290,-0.230314195156097,0.046911768615246,-0.013045561499894,-0.089540719985962,-0.010614700615406,-0.163060694932938,-0.223475649952888,0.257031381130219,-0.070096321403980,0.076738752424717,0.078003309667110));
res += mul(Get(s5,-dx,-dy), float4x4(0.049773260951042,-0.105712011456490,-0.036925721913576,-0.004770990461111,-0.083697788417339,0.040745150297880,0.088400803506374,0.068402133882046,0.005629512481391,0.023168124258518,0.190714955329895,0.016070058569312,0.038147442042828,0.051473170518875,0.016802778467536,0.083082295954227));
res += mul(Get(s5,-dx,0), float4x4(0.010098951868713,0.045677922666073,0.024500835686922,-0.007346605416387,0.111698225140572,0.013802842237055,-0.081550739705563,-0.107350170612335,-0.071518182754517,0.022121874615550,0.182832062244415,0.011836281046271,0.045559015125036,0.008589440956712,0.112414851784706,-0.131277427077293));
res += mul(Get(s5,-dx,dy), float4x4(0.012541810981929,-0.101574197411537,0.010611050762236,0.125042170286179,-0.083087503910065,0.029145266860723,-0.118526212871075,0.017244050279260,0.017605084925890,-0.075707778334618,0.084344238042831,0.036587044596672,0.139062017202377,-0.023224126547575,-0.038121186196804,-0.092694401741028));
res += mul(Get(s5,0,-dy), float4x4(-0.028981247916818,-0.151687130331993,-0.028530005365610,0.049385230988264,-0.033146969974041,0.013745954260230,-0.085930638015270,-0.151857152581215,-0.384787976741791,-0.088639833033085,-0.035873327404261,-0.068320699036121,0.050867222249508,0.044867835938931,-0.108419157564640,-0.034504026174545));
res += mul(Get(s5,0,0), float4x4(-0.012126757763326,0.037195309996605,-0.288044989109039,-0.061551250517368,-0.111489571630955,0.053861554712057,0.100587651133537,-0.044099405407906,-1.101798295974731,-0.079477176070213,0.076668925583363,-0.123567320406437,-0.077567219734192,0.308068513870239,0.106908164918423,-0.055808231234550));
res += mul(Get(s5,0,dy), float4x4(-0.064725808799267,-0.030597720295191,-0.054727502167225,0.039882130920887,-0.033719159662724,-0.126670017838478,-0.031352818012238,0.375354737043381,0.106313988566399,0.020715905353427,0.057982049882412,-0.010873470455408,0.162845566868782,0.062998697161674,0.043741237372160,0.017168372869492));
res += mul(Get(s5,dx,-dy), float4x4(-0.077151499688625,-0.102109953761101,0.173334643244743,-0.076297424733639,-0.213418573141098,-0.073982246220112,-0.368341118097305,0.039694245904684,-0.205318495631218,0.063584610819817,0.072727970778942,-0.090097539126873,-0.123887889087200,-0.060631267726421,0.181262120604515,0.126101791858673));
res += mul(Get(s5,dx,0), float4x4(-0.131812989711761,0.047944229096174,0.113504104316235,0.084174461662769,0.138749659061432,-0.132599458098412,-0.090119652450085,0.129382789134979,-0.168954074382782,0.032785270363092,-0.113299973309040,0.048381295055151,-0.102694988250732,0.023860607296228,0.062779814004898,-0.134534150362015));
res += mul(Get(s5,dx,dy), float4x4(-0.219665393233299,0.055018752813339,0.019816894084215,0.061054702848196,-0.368143528699875,-0.075078934431076,0.172801226377487,-0.021285185590386,-0.003404320683330,-0.010717406868935,-0.016532512381673,-0.042111579328775,0.042315751314163,-0.022507261484861,-0.130483359098434,-0.003933296073228));
res = max(float4(0, 0, 0, 0), res) + float4(-0.062117088586092,0.021231269463897,0.119900099933147,-0.309140056371689) * min(float4(0, 0, 0, 0), res);
return res;
}
