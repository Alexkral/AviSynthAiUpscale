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
float4 res = float4(0.048008717596531,-0.100334636867046,0.072843745350838,0.022541994228959);
res += mul(Get(s0,-dx,-dy), float4x4(-0.002309991745278,0.064527094364166,0.146172881126404,-0.103046149015427,-0.105507791042328,-0.019906705245376,-0.026002503931522,-0.090443216264248,-0.086732164025307,0.152020245790482,-0.332550257444382,-0.103760652244091,-0.020774915814400,-0.001835286617279,-0.030923232436180,0.039535120129585));
res += mul(Get(s0,-dx,0), float4x4(0.100383698940277,-0.146679356694221,0.053733859211206,-0.051461901515722,-0.090961657464504,-0.042113568633795,-0.039327215403318,-0.127808019518852,-0.200240790843964,-0.036349210888147,-0.129536300897598,-0.151695743203163,0.059176705777645,0.158241927623749,0.227607697248459,0.152088478207588));
res += mul(Get(s0,-dx,dy), float4x4(0.170124754309654,-0.024058757349849,-0.084681428968906,0.128436565399170,0.064443022012711,-0.129521548748016,-0.087893731892109,0.002294751349837,-0.041889611631632,-0.075026892125607,-0.040531802922487,-0.076040782034397,-0.051934767514467,0.140178069472313,0.209222599864006,-0.068588592112064));
res += mul(Get(s0,0,-dy), float4x4(0.090660050511360,0.171335935592651,0.219497397542000,-0.077607326209545,-0.105955809354782,0.125420331954956,-0.006201468408108,0.005131756421179,-0.059526771306992,-0.093645773828030,-0.386833429336548,0.198768958449364,0.124632157385349,0.042887065559626,0.103123806416988,-0.144452720880508));
res += mul(Get(s0,0,0), float4x4(0.116856321692467,0.015405917540193,0.095983169972897,0.127180203795433,-0.133273825049400,0.103706158697605,-0.024321358650923,0.016903625801206,-0.124905698001385,0.053113717585802,-0.089341171085835,0.230327129364014,0.188698321580887,-0.212183699011803,0.002330590505153,0.101834386587143));
res += mul(Get(s0,0,dy), float4x4(0.028745459392667,0.278934955596924,-0.010043111629784,-0.023311335593462,0.033863257616758,-0.067309305071831,-0.193637862801552,0.078426636755466,-0.031962174922228,-0.003188725793734,-0.087854720652103,0.036398533731699,-0.121701337397099,-0.159839525818825,0.156279131770134,-0.112730704247952));
res += mul(Get(s0,dx,-dy), float4x4(-0.034277651458979,0.028427934274077,-0.030596990138292,-0.028373068198562,0.046198673546314,0.057022992521524,-0.068274371325970,-0.016565758734941,-0.107448421418667,-0.193270564079285,-0.070161394774914,-0.175147175788879,0.020199777558446,0.118696495890617,0.186609491705894,0.040102455765009));
res += mul(Get(s0,dx,0), float4x4(0.047411631792784,-0.024075124412775,0.063973829150200,-0.030298177152872,0.232720002532005,-0.088321842253208,-0.329875975847244,0.336702585220337,-0.141786724328995,0.131240710616112,-0.058334164321423,-0.239966228604317,-0.032187961041927,-0.142152786254883,0.038156099617481,0.169909119606018));
res += mul(Get(s0,dx,dy), float4x4(0.046509217470884,-0.121147245168686,0.280290752649307,0.056707113981247,0.207589685916901,0.085450217127800,-0.368324369192123,0.123791784048080,0.015778778120875,-0.119656756520271,-0.216494679450989,-0.091269142925739,0.066773138940334,-0.123095683753490,-0.097353734076023,-0.006302381400019));
res += mul(Get(s1,-dx,-dy), float4x4(-0.001879610354081,0.018405215814710,-0.051716305315495,-0.078824833035469,0.063705347478390,-0.006476478651166,0.166536241769791,-0.119786672294140,0.080724395811558,-0.202245235443115,-0.145912557840347,0.089005224406719,-0.079602517187595,-0.005695311818272,-0.226617053151131,-0.020256882533431));
res += mul(Get(s1,-dx,0), float4x4(-0.108611308038235,-0.014215034432709,0.077145926654339,-0.129468739032745,0.084649540483952,-0.088101565837860,-0.205497741699219,-0.090730428695679,-0.005213164258748,0.043136674910784,0.263859391212463,0.135664746165276,-0.002839781111106,0.002729960950091,0.072922714054585,-0.070561155676842));
res += mul(Get(s1,-dx,dy), float4x4(-0.108153857290745,-0.067377850413322,0.102004379034042,-0.023265819996595,0.083871014416218,-0.013495665043592,0.016944540664554,0.052161093801260,-0.020438354462385,0.038934968411922,-0.141462922096252,-0.006206952966750,-0.096365906298161,-0.070362083613873,-0.037233900278807,-0.120252467691898));
res += mul(Get(s1,0,-dy), float4x4(-0.059552162885666,0.077107854187489,0.003369789803401,-0.062483794987202,0.007490679156035,0.103261210024357,0.153174802660942,-0.115114912390709,-0.020507946610451,0.021625911816955,0.144493803381920,-0.008485355414450,-0.048359569162130,-0.088063113391399,-0.357200443744659,-0.044026553630829));
res += mul(Get(s1,0,0), float4x4(-0.219306886196136,-0.089157193899155,-0.216954469680786,-0.007784622255713,-0.070526182651520,0.165070772171021,-0.087864443659782,0.003571460489184,0.380858898162842,0.070725299417973,-0.014822301454842,0.103503882884979,-0.097245052456856,0.053748466074467,-0.007290049921721,0.197114378213882));
res += mul(Get(s1,0,dy), float4x4(-0.101768828928471,-0.073874227702618,0.257488608360291,-0.080754637718201,0.059905257076025,0.176157683134079,0.025580618530512,-0.008309476077557,0.052834507077932,-0.303951710462570,-0.200761646032333,-0.054277535527945,0.072641015052795,-0.201177626848221,-0.316768050193787,-0.016977665945888));
res += mul(Get(s1,dx,-dy), float4x4(0.116276472806931,0.023752011358738,0.010011039674282,0.153938636183739,-0.039998423308134,-0.047521337866783,-0.318790912628174,-0.157775953412056,-0.106329031288624,0.040919236838818,-0.064058721065521,-0.074188113212585,-0.105383276939392,-0.101231835782528,-0.224986001849174,0.007685740943998));
res += mul(Get(s1,dx,0), float4x4(-0.077557750046253,0.021965747699142,-0.182640403509140,0.042544845491648,-0.061774522066116,0.026131764054298,0.099466413259506,-0.058410696685314,-0.185483857989311,-0.100245043635368,-0.140426561236382,-0.213029026985168,-0.157593041658401,-0.008784705772996,-0.158243566751480,0.079404175281525));
res += mul(Get(s1,dx,dy), float4x4(-0.140697330236435,-0.057942543178797,0.026397589594126,-0.054310142993927,-0.042484790086746,-0.046539660543203,-0.066159777343273,-0.053388040512800,0.113537393510342,-0.137348815798759,0.088417053222656,-0.140883356332779,0.033055461943150,0.071406260132790,-0.305713146924973,-0.064053043723106));
res += mul(Get(s2,-dx,-dy), float4x4(0.062791109085083,-0.009903218597174,-0.000286256108666,0.041437685489655,0.077266894280910,0.093539103865623,0.170062348246574,0.170252770185471,0.025338705629110,0.067198067903519,-0.131198868155479,0.162542164325714,-0.059345465153456,0.005898026749492,-0.081898264586926,-0.035958737134933));
res += mul(Get(s2,-dx,0), float4x4(-0.075289547443390,0.156249701976776,0.030881030485034,0.096181213855743,0.165787979960442,-0.007111751940101,0.041273750364780,0.231412991881371,-0.107644766569138,0.228006944060326,0.055468291044235,0.210988000035286,-0.106785297393799,-0.012801420874894,-0.095002718269825,-0.036843199282885));
res += mul(Get(s2,-dx,dy), float4x4(-0.064962565898895,0.080173015594482,-0.212201908230782,-0.058189075440168,0.000706968305167,0.185893490910530,0.234926655888557,-0.012522337958217,0.064628250896931,0.017634006217122,-0.018876401707530,0.010038791224360,-0.025816095992923,0.034335281699896,0.018209343776107,0.066329248249531));
res += mul(Get(s2,0,-dy), float4x4(0.016332764178514,0.056792236864567,0.214454025030136,-0.152030706405640,0.158065989613533,0.043330453336239,-0.024736247956753,0.056439422070980,0.063466049730778,0.109572112560272,0.174328669905663,0.037173923105001,0.018994411453605,0.227416560053825,0.140974357724190,0.064865708351135));
res += mul(Get(s2,0,0), float4x4(0.064881004393101,-0.041294790804386,0.037264186888933,-0.153034657239914,0.259701669216156,-0.010918688960373,0.035237491130829,0.164416089653969,0.086744502186775,-0.108537793159485,-0.424881219863892,-0.024344347417355,0.086107298731804,-0.178721711039543,-0.193485990166664,0.136958912014961));
res += mul(Get(s2,0,dy), float4x4(0.135587170720100,0.144724398851395,-0.440431803464890,0.039602074772120,0.065654091536999,0.143901526927948,-0.052550710737705,-0.028441887348890,0.120556086301804,-0.132890775799751,0.092139624059200,-0.000935932272114,-0.007146355230361,0.038747377693653,-0.202356144785881,-0.020198535174131));
res += mul(Get(s2,dx,-dy), float4x4(-0.119562543928623,0.108631096780300,0.059809762984514,0.024604480713606,0.205945059657097,0.044926218688488,-0.028423536568880,0.117700338363647,0.099704861640930,0.069131121039391,0.006015467457473,-0.061724312603474,-0.209379971027374,0.108351416885853,0.022161854431033,0.023991160094738));
res += mul(Get(s2,dx,0), float4x4(-0.091804563999176,-0.096134923398495,0.032235644757748,0.007643020246178,0.060266535729170,0.005537641700357,-0.133006766438484,0.202697709202766,-0.227829918265343,-0.171208098530769,-0.194790199398994,-0.260789185762405,-0.006548454053700,-0.300528258085251,-0.146989062428474,-0.061876416206360));
res += mul(Get(s2,dx,dy), float4x4(0.184727519750595,0.093741938471794,-0.115284040570259,0.107466891407967,0.106894657015800,-0.044831048697233,0.057020526379347,0.088890075683594,0.067008577287197,-0.262339621782303,0.090453170239925,0.005367235746235,-0.007900875061750,-0.246399238705635,0.090600028634071,0.015401194803417));
res += mul(Get(s3,-dx,-dy), float4x4(-0.020459139719605,-0.044454090297222,-0.021824473515153,-0.089676059782505,0.065686024725437,-0.038600016385317,0.000583111890592,-0.062957964837551,0.055603552609682,-0.016530627384782,-0.075077719986439,-0.007949630729854,-0.026978349313140,-0.029564306139946,-0.052845582365990,0.112874738872051));
res += mul(Get(s3,-dx,0), float4x4(-0.076442711055279,-0.062017660588026,-0.161245718598366,-0.054551668465137,0.072394169867039,0.138661354780197,0.211156070232391,0.012616311199963,-0.061584651470184,0.004148418549448,-0.002871155273169,0.003789172507823,-0.115936808288097,-0.000770626880694,0.046782933175564,-0.160149306058884));
res += mul(Get(s3,-dx,dy), float4x4(-0.017270833253860,-0.063760593533516,-0.021835427731276,-0.012138106860220,0.018985595554113,0.022164614871144,0.072517246007919,-0.039894249290228,0.001962003530934,0.028953384608030,0.061490673571825,-0.010475959628820,-0.045844025909901,0.016827533021569,0.040332444012165,-0.044483169913292));
res += mul(Get(s3,0,-dy), float4x4(0.051083728671074,0.135275512933731,-0.021447064355016,0.205877840518951,0.081356197595596,-0.041043195873499,-0.021137915551662,-0.141289487481117,0.037130482494831,0.032821603119373,0.024174697697163,-0.061179440468550,-0.103923909366131,-0.107533641159534,-0.117244355380535,0.019420560449362));
res += mul(Get(s3,0,0), float4x4(0.093892879784107,0.207584410905838,0.376791566610336,-0.212094932794571,0.039407946169376,0.142621070146561,0.220456331968307,-0.123802900314331,-0.033481556922197,0.134968578815460,-0.295028388500214,0.073145769536495,-0.174949854612350,0.099065370857716,-0.406065523624420,0.253600090742111));
res += mul(Get(s3,0,dy), float4x4(0.014119667932391,-0.017432074993849,-0.059486735612154,0.024737713858485,0.001242141239345,0.076797559857368,0.085435658693314,-0.065074928104877,0.091000191867352,0.031264211982489,-0.462491631507874,0.328250646591187,-0.014559476636350,-0.052415087819099,0.229234322905540,-0.053715087473392));
res += mul(Get(s3,dx,-dy), float4x4(0.058997698128223,0.106367282569408,0.041878666728735,-0.031917139887810,-0.085762523114681,0.066059783101082,0.108895376324654,0.012718209065497,-0.017860736697912,0.016390260308981,-0.045454394072294,0.022533036768436,0.174573525786400,-0.116205677390099,-0.032999508082867,-0.057476755231619));
res += mul(Get(s3,dx,0), float4x4(0.078860215842724,-0.207191050052643,0.074836790561676,0.170918449759483,-0.157661750912666,0.056056775152683,0.193012863397598,0.068751193583012,-0.022718144580722,0.049811251461506,0.097568936645985,-0.003602270735428,0.058851916342974,0.148066744208336,0.027587126940489,0.180637925863266));
res += mul(Get(s3,dx,dy), float4x4(-0.039381802082062,-0.167753070592880,-0.053623843938112,0.025635873898864,-0.022065972909331,-0.032936908304691,-0.077105544507504,-0.125041410326958,0.031280677765608,-0.234648883342743,0.082035921514034,0.031786624342203,0.002500545233488,-0.001785216154531,-0.030544573441148,0.026082897558808));
res += mul(Get(s4,-dx,-dy), float4x4(-0.043358046561480,0.005552206188440,-0.071151293814182,0.058533821254969,-0.004556885454804,-0.028105383738875,0.032607935369015,-0.069647982716560,0.049775343388319,-0.061991453170776,-0.099396966397762,-0.077443629503250,-0.010663473978639,-0.003209006972611,-0.028290187940001,0.023734735324979));
res += mul(Get(s4,-dx,0), float4x4(-0.179429545998573,0.018478348851204,0.031807582825422,0.188428774476051,0.038984507322311,-0.044449295848608,0.094906255602837,-0.182874456048012,-0.035172808915377,-0.067931756377220,-0.023786753416061,-0.217381224036217,-0.106802694499493,0.007905161939561,-0.060408435761929,-0.219237998127937));
res += mul(Get(s4,-dx,dy), float4x4(-0.038085963577032,0.051683112978935,0.031098503619432,0.043367344886065,0.100861370563507,-0.048573434352875,-0.150969699025154,0.089316524565220,0.009008869528770,-0.081874392926693,-0.070403829216957,-0.039576876908541,0.059540539979935,0.102451652288437,0.163316741585732,-0.009922266937792));
res += mul(Get(s4,0,-dy), float4x4(0.091338224709034,-0.012478501535952,-0.034826971590519,-0.168339595198631,-0.091978013515472,-0.112652100622654,-0.189411476254463,0.142011746764183,-0.066278003156185,-0.029963215813041,0.016663150861859,-0.073511362075806,-0.112705953419209,-0.224794104695320,-0.239579647779465,0.082879602909088));
res += mul(Get(s4,0,0), float4x4(-0.232994139194489,-0.190529987215996,0.097274549305439,-0.060230925679207,-0.100336849689484,0.069945521652699,0.056996718049049,0.000880552688614,-0.245003759860992,0.108572438359261,-0.226703286170959,0.094185806810856,0.000142130884342,0.329159080982208,-0.036463774740696,-0.047207679599524));
res += mul(Get(s4,0,dy), float4x4(-0.169008895754814,-0.299750626087189,0.078183420002460,-0.062277182936668,0.146096751093864,0.368685543537140,0.041194029152393,0.085002459585667,0.002267659176141,-0.095654077827930,0.089506931602955,-0.035143248736858,-0.083415664732456,-0.089930489659309,0.334359854459763,-0.128026023507118));
res += mul(Get(s4,dx,-dy), float4x4(0.009077034890652,0.089444428682327,0.018808057531714,-0.002581985434517,-0.057436700910330,-0.082808434963226,-0.077512733638287,-0.071376629173756,-0.027565483003855,0.056601736694574,0.148357450962067,0.036397419869900,0.091663889586926,-0.148535311222076,-0.136333420872688,-0.030872838571668));
res += mul(Get(s4,dx,0), float4x4(0.094307422637939,-0.248348936438560,0.084192901849747,-0.047964047640562,0.043487213551998,0.159490883350372,0.055729050189257,-0.036446593701839,0.400550246238708,-0.122889310121536,-0.058581601828337,0.232877075672150,0.052428614348173,0.096561007201672,-0.026644269004464,0.146835535764694));
res += mul(Get(s4,dx,dy), float4x4(-0.012569147162139,-0.097303576767445,-0.113282218575478,-0.053629949688911,-0.071782179176807,0.222232162952423,0.092026963829994,0.035369675606489,-0.020101698115468,-0.295099705457687,0.157755032181740,0.107390873134136,-0.085499361157417,-0.328571230173111,-0.036699037998915,-0.042167108505964));
res += mul(Get(s5,-dx,-dy), float4x4(0.090004622936249,-0.050933368504047,0.299848407506943,-0.071040272712708,0.054755419492722,0.031840339303017,0.108229383826256,-0.013107988983393,0.043323423713446,0.119679301977158,0.065963760018349,0.100958183407784,0.108749508857727,0.082323670387268,0.042624697089195,0.148484766483307));
res += mul(Get(s5,-dx,0), float4x4(0.184985965490341,0.075332097709179,0.149276629090309,-0.104228183627129,-0.079208977520466,-0.128501757979393,-0.161890029907227,-0.123378567397594,0.064831390976906,-0.048651039600372,-0.110704950988293,0.120484031736851,-0.058663375675678,0.079327024519444,0.071707740426064,-0.014615647494793));
res += mul(Get(s5,-dx,dy), float4x4(-0.029688321053982,0.167033553123474,-0.098015114665031,-0.065729543566704,0.007958855479956,-0.178969070315361,-0.117657274007797,-0.046240054070950,0.075610786676407,-0.147172689437866,0.105665877461433,0.047589756548405,0.053037151694298,0.128467157483101,0.004129515960813,-0.011953393928707));
res += mul(Get(s5,0,-dy), float4x4(0.044962372630835,0.227626025676727,0.045116025954485,-0.070061445236206,0.102945774793625,0.004077374469489,-0.114542670547962,0.176324710249901,0.100453794002533,0.010262489318848,0.095975458621979,0.141965702176094,0.005352716427296,-0.124786354601383,0.068880461156368,0.095208093523979));
res += mul(Get(s5,0,0), float4x4(0.180458530783653,0.252808511257172,0.191069886088371,0.132223084568977,-0.067631103098392,0.277936846017838,-0.098514884710312,0.318852961063385,0.206284418702126,-0.410755902528763,0.146308645606041,-0.019452406093478,-0.159744575619698,0.133454382419586,0.034355293959379,-0.242793604731560));
res += mul(Get(s5,0,dy), float4x4(-0.077977605164051,0.016585621982813,0.020157709717751,-0.149019166827202,0.099070198833942,-0.108159422874451,-0.035108380019665,0.245097160339355,0.055846050381660,-0.226588517427444,-0.146908283233643,0.046399742364883,0.092982530593872,0.149174109101295,-0.097359791398048,0.086403355002403));
res += mul(Get(s5,dx,-dy), float4x4(-0.073313899338245,-0.001222487888299,0.013291430659592,-0.037801787257195,-0.041235283017159,-0.039774905890226,0.053273644298315,0.053268585354090,0.102253474295139,-0.022809917107224,0.127901852130890,0.130498692393303,-0.026909181848168,-0.133295953273773,-0.049943871796131,0.027268456295133));
res += mul(Get(s5,dx,0), float4x4(-0.089027166366577,0.124555170536041,0.030604962259531,-0.172983199357986,-0.223929047584534,0.128159001469612,0.048104848712683,-0.002774204825982,-0.086915276944637,-0.016425659880042,0.009669908322394,-0.020283544436097,-0.151273488998413,-0.133543729782104,-0.128450930118561,0.041133578866720));
res += mul(Get(s5,dx,dy), float4x4(-0.096263252198696,0.057487759739161,0.076172366738319,-0.148815765976906,0.033255990594625,-0.121182695031166,0.059072021394968,0.124775342643261,0.002117194002494,-0.028113260865211,0.002002660417929,-0.026153821498156,0.107232503592968,-0.071254536509514,0.078975774347782,0.059598829597235));
res = max(float4(0, 0, 0, 0), res) + float4(0.105297714471817,-0.320678472518921,-0.053015913814306,-0.596480965614319) * min(float4(0, 0, 0, 0), res);
return res;
}
