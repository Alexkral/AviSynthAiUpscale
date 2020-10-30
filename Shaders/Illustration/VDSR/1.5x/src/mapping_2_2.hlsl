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
res += mul(Get(s0,-dx,-dy), float4x4(-0.026425372809172,-0.020744463428855,-0.011412533931434,0.004326404072344,-0.044280655682087,-0.218223497271538,0.248616009950638,0.021405225619674,-0.016859790310264,-0.006252227816731,-0.028064455837011,0.022272823378444,-0.047107473015785,0.006759538315237,0.042372886091471,0.013651240617037));
res += mul(Get(s0,-dx,0), float4x4(0.015170994214714,-0.074996493756771,0.027594422921538,0.013395249843597,-0.062508232891560,0.242621660232544,-0.246144413948059,-0.034191384911537,-0.054814770817757,-0.049867350608110,0.013813788071275,0.042995419353247,-0.045031860470772,-0.069915011525154,0.079783067107201,0.055434964597225));
res += mul(Get(s0,-dx,dy), float4x4(-0.035049792379141,0.019511034712195,-0.021844571456313,0.009125102311373,-0.025154713541269,-0.141605541110039,0.054149407893419,-0.017708213999867,-0.043239306658506,0.108959466218948,0.020231736823916,0.055936057120562,-0.130674928426743,-0.071572653949261,-0.027916755527258,0.002390414010733));
res += mul(Get(s0,0,-dy), float4x4(0.022189043462276,-0.010682355612516,0.038379300385714,0.002058329759166,0.081646040081978,-0.122862257063389,0.159392774105072,0.054448056966066,-0.008407609537244,0.007694750558585,-0.042033098638058,-0.038592506200075,0.066274717450142,0.132781341671944,0.012203300371766,0.035756152123213));
res += mul(Get(s0,0,0), float4x4(0.114441640675068,0.022556200623512,-0.015334768220782,0.010399432852864,-0.169760748744011,-0.039167154580355,0.016513142734766,-0.062026325613260,-0.021729527041316,0.042971618473530,-0.027594786137342,-0.034033983945847,0.100329451262951,0.028407532721758,0.024989245459437,0.099379688501358));
res += mul(Get(s0,0,dy), float4x4(0.061981901526451,-0.019515678286552,0.041175145655870,0.001861786236987,-0.255840986967087,0.389937937259674,0.073901727795601,-0.057890903204679,-0.009892230853438,0.072286874055862,0.050436470657587,-0.007514386903495,-0.044729892164469,0.007737537845969,0.012424250133336,0.022316159680486));
res += mul(Get(s0,dx,-dy), float4x4(0.001492043957114,-0.044419515877962,0.041384465992451,-0.001306459540501,-0.057955302298069,0.019278943538666,0.025188032537699,0.046958770602942,0.006131367757916,-0.109793484210968,-0.006496123503894,-0.025886274874210,-0.007068462204188,0.079885751008987,-0.000881330226548,-0.051396008580923));
res += mul(Get(s0,dx,0), float4x4(0.043015804141760,-0.002792459912598,-0.000904379587155,0.018173199146986,0.134237110614777,0.117040134966373,-0.196877524256706,-0.028347397223115,-0.023154724389315,-0.004728444851935,-0.016569934785366,-0.025117427110672,-0.009580675512552,-0.130066052079201,-0.055534701794386,-0.064837209880352));
res += mul(Get(s0,dx,dy), float4x4(0.006727391853929,0.048296298831701,0.051523886620998,0.010400438681245,0.301804393529892,-0.097394712269306,-0.013270754367113,-0.015742180868983,0.000622333958745,-0.013727938756347,0.055038418620825,-0.013201811350882,-0.022017924115062,-0.120994769036770,-0.084182940423489,-0.099646687507629));
res += mul(Get(s1,-dx,-dy), float4x4(-0.035920348018408,0.028677629306912,-0.008304720744491,0.013037466444075,0.023431543260813,0.033922500908375,0.004679033532739,-0.008684089407325,-0.032421480864286,-0.128496930003166,0.035247560590506,0.013440301641822,-0.011527865193784,0.033063177019358,-0.051193609833717,0.006653765216470));
res += mul(Get(s1,-dx,0), float4x4(-0.009586805477738,0.032181087881327,0.083461374044418,0.030033325776458,0.091012440621853,0.015589942224324,0.002679621567950,-0.004402758087963,-0.110641866922379,0.301117599010468,-0.277154684066772,-0.019302213564515,-0.037396915256977,0.024875555187464,-0.010937623679638,0.001755384262651));
res += mul(Get(s1,-dx,dy), float4x4(-0.016754768788815,0.057556308805943,-0.038867603987455,0.017684459686279,0.166551575064659,-0.046802859753370,-0.010254038497806,0.013275640085340,-0.070210114121437,-0.142442703247070,0.275584220886230,0.012065846472979,-0.036864068359137,0.076338961720467,-0.025702228769660,-0.002413244917989));
res += mul(Get(s1,0,-dy), float4x4(-0.025311207398772,0.048830315470695,-0.029922900721431,0.005479157436639,-0.021230785176158,-0.001276908558793,-0.035046488046646,0.026168303564191,-0.181227475404739,-0.171949699521065,0.344950228929520,-0.011601123958826,-0.043226268142462,0.021069008857012,-0.022405110299587,-0.000759622547776));
res += mul(Get(s1,0,0), float4x4(0.042011905461550,-0.001762383850291,0.056699048727751,0.030046859756112,0.010355594567955,-0.061482712626457,0.032679259777069,0.045496154576540,-0.317577838897705,0.692839980125427,-0.122254624962807,-0.076911106705666,-0.020059689879417,-0.000136459537316,-0.018985355272889,-0.000685407605488));
res += mul(Get(s1,0,dy), float4x4(0.021626023575664,0.020931156352162,-0.041892811655998,0.016154339537024,0.026626853272319,-0.018564905971289,-0.046972915530205,0.059879794716835,-0.058279138058424,0.064693242311478,0.078596428036690,-0.036847628653049,-0.023884238675237,-0.041066672652960,0.007780377753079,0.002039020415395));
res += mul(Get(s1,dx,-dy), float4x4(-0.025364954024553,0.006472971290350,-0.034664090722799,-0.002358787693083,-0.044628135859966,0.009776680730283,-0.052778996527195,-0.002021033316851,0.114147670567036,0.235581964254379,-0.125202104449272,0.030697936192155,0.014008076861501,-0.004636046476662,0.023666204884648,-0.012367920018733));
res += mul(Get(s1,dx,0), float4x4(0.009429147467017,0.067467696964741,0.033402722328901,0.014056270942092,-0.026315482333302,0.041761487722397,-0.041683856397867,0.007065400015563,0.373026072978973,-0.173810780048370,-0.078153580427170,-0.032297156751156,0.058089718222618,-0.005543706472963,0.018934920430183,-0.010240370407701));
res += mul(Get(s1,dx,dy), float4x4(0.000760162365623,-0.027510019019246,-0.032076228410006,-0.012099212035537,0.028339792042971,-0.052552804350853,-0.054935656487942,0.017108952626586,0.264926999807358,-0.058690994977951,0.064953289926052,-0.000174887914909,0.080787606537342,-0.034336719661951,0.018974475562572,0.000814771978185));
res += mul(Get(s2,-dx,-dy), float4x4(0.010570066981018,0.056367445737123,-0.042396910488605,0.004999452736229,-0.014508471824229,0.042587615549564,-0.044122606515884,0.005070787388831,-0.017442369833589,-0.018788933753967,0.040685180574656,0.027280237525702,0.009217986837029,0.049672741442919,-0.031696550548077,-0.006409010849893));
res += mul(Get(s2,-dx,0), float4x4(0.039866659790277,0.030951162800193,0.030868995934725,0.005611775442958,-0.025067165493965,-0.017216049134731,0.001706197042949,0.018223561346531,-0.024926422163844,0.016635620966554,-0.020394306629896,0.019703418016434,0.123563818633556,0.012406015768647,-0.023477455601096,0.024639669805765));
res += mul(Get(s2,-dx,dy), float4x4(0.021279199048877,0.059304162859917,0.008430934511125,-0.008861348032951,-0.038240563124418,-0.025778377428651,-0.001280932687223,0.018545130267739,-0.013712232001126,-0.009417821653187,-0.011772393248975,0.016188360750675,0.087831206619740,-0.049925539642572,0.038820616900921,0.007054798770696));
res += mul(Get(s2,0,-dy), float4x4(-0.029966762289405,-0.041912198066711,-0.009734705090523,-0.011351981200278,-0.017302582040429,0.091577306389809,-0.001083872048184,0.000780282076448,0.000611339288298,0.023816639557481,-0.003572561312467,0.024568170309067,-0.018494388088584,-0.033596847206354,0.005872061010450,0.022554140537977));
res += mul(Get(s2,0,0), float4x4(0.065700411796570,-0.025970946997404,-0.017397891730070,-0.004283555317670,-0.011185261420906,0.087837390601635,-0.021185025572777,-0.013794745318592,-0.007855074480176,-0.043949775397778,0.003489340888336,0.024167627096176,0.065459080040455,-0.002508377889171,0.007355817127973,0.060914199799299));
res += mul(Get(s2,0,dy), float4x4(-0.059426978230476,0.020695546641946,-0.008928944356740,-0.024296179413795,-0.010775816626847,0.037332579493523,-0.041753172874451,-0.018650121986866,-0.009719476103783,0.004566459450871,0.002544531133026,0.022846298292279,0.029524901881814,-0.020500870421529,0.006277648732066,0.040183674544096));
res += mul(Get(s2,dx,-dy), float4x4(0.072887331247330,0.029270835220814,-0.007103300653398,-0.005690719000995,-0.017791675403714,-0.021728279069066,-0.016432702541351,0.000706444843672,-0.001579060219228,-0.009050867520273,0.014056115411222,-0.010998212732375,-0.043882615864277,0.040744949132204,-0.058545213192701,0.005008349660784));
res += mul(Get(s2,dx,0), float4x4(0.152451232075691,-0.010992179624736,-0.022811448201537,0.021656269207597,-0.009974215179682,0.008159577846527,-0.016275769099593,-0.006793498527259,0.002154766116291,0.050934389233589,-0.033740408718586,-0.014239686541259,0.043991785496473,-0.028149919584394,-0.008698293007910,0.064863726496696));
res += mul(Get(s2,dx,dy), float4x4(0.068540357053280,0.020885372534394,0.028030775487423,-0.008897758089006,-0.019221341237426,0.018493056297302,0.023536816239357,-0.013329436071217,0.009933469817042,0.001217480399646,-0.028771953657269,-0.011050106957555,-0.008563136681914,-0.022360371425748,-0.029961682856083,0.030365489423275));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007273491006345,0.008009679615498,-0.048047196120024,-0.003290080931038,0.011258835904300,0.017092246562243,-0.004598553292453,0.013737168163061,-0.004442791454494,-0.002709118183702,-0.004558798857033,-0.003076179185882,0.024591600522399,0.049880165606737,0.035890918225050,0.023153288289905));
res += mul(Get(s3,-dx,0), float4x4(-0.000705574639142,0.014482899568975,-0.020826959982514,0.006561163812876,0.003840530989692,0.016128735616803,-0.019875686615705,0.002958374563605,0.003182034241036,-0.001788994530216,0.000650477421004,-0.008450457826257,0.015135057270527,0.041632257401943,0.021102141588926,0.012749273329973));
res += mul(Get(s3,-dx,dy), float4x4(0.017582019791007,-0.018613597378135,0.010142204351723,-0.002023392589763,-0.011496005579829,0.051702722907066,-0.017041480168700,-0.007123933639377,-0.003430344164371,0.000376098905690,0.005090374499559,0.004750076215714,-0.002064711414278,0.074284553527832,0.012733244337142,-0.006832750514150));
res += mul(Get(s3,0,-dy), float4x4(-0.005675874184817,0.056780982762575,-0.008595393970609,-0.001105858245865,-0.005009040236473,0.010482564568520,0.005125347524881,0.002641634084284,-0.005881866905838,-0.004309952724725,-0.001837869756855,-0.004489703103900,-0.033793825656176,-0.011753280647099,0.013445734977722,0.014013802632689));
res += mul(Get(s3,0,0), float4x4(-0.004912204109132,0.029645618051291,0.000168261802173,0.001933320425451,0.003681065281853,0.020295176655054,-0.013450090773404,0.000764643657021,0.002646225271747,0.009528629481792,0.005277283024043,-0.007049051113427,-0.023194383829832,0.044731508940458,-0.002453623339534,0.004416761454195));
res += mul(Get(s3,0,dy), float4x4(0.008324516005814,-0.014880669303238,0.015044449828565,0.004414286464453,0.012421010993421,0.010885692201555,-0.010733645409346,0.004391420166939,-0.005660786293447,0.005681667476892,0.001268814667128,-0.000824438640848,-0.032438486814499,-0.055766552686691,0.002728001913056,-0.005555376876146));
res += mul(Get(s3,dx,-dy), float4x4(0.019093785434961,0.019125528633595,-0.028849851340055,-0.006454402580857,-0.003994930535555,-0.023847145959735,0.008756345137954,0.005926010664552,-0.007157301064581,0.001993751153350,0.005107131320983,-0.000213995808735,0.015521892346442,-0.032235383987427,0.009114340879023,0.010456163436174));
res += mul(Get(s3,dx,0), float4x4(0.019473975524306,-0.018612220883369,-0.011902398429811,0.000876065867487,0.033800076693296,0.005815718322992,-0.005037127994001,0.001475832657889,-0.001827774220146,0.003104578237981,0.007030551787466,0.002629661699757,0.052485916763544,-0.010229207575321,-0.018033590167761,0.008025145158172));
res += mul(Get(s3,dx,dy), float4x4(0.003683158662170,-0.000405539001804,0.008272978477180,0.002285901457071,0.035983402282000,-0.006249847356230,-0.070208221673965,0.001436580554582,0.005045785568655,-0.000627913628705,0.004303462337703,-0.006617193575948,0.048644766211510,-0.023490563035011,-0.044096965342760,0.004774124827236));
return max(float4(0,0,0,0), res);
}
