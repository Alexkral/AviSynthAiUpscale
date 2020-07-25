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
res += mul(Get(s0,-dx,-dy), float4x4(-0.024040337651968,-0.031833779066801,-0.078995808959007,0.015042275190353,0.015778953209519,-0.038131959736347,-0.024361183866858,0.083912096917629,0.052033592015505,0.003291572211310,-0.029039606451988,-0.103010706603527,-0.122975811362267,-0.090418964624405,-0.047747507691383,0.166771888732910));
res += mul(Get(s0,-dx,0), float4x4(-0.001688691554591,-0.029114110395312,-0.008453793823719,0.033829525113106,0.013369904831052,-0.090287886559963,-0.010318639688194,0.024972667917609,0.042094968259335,-0.015324383042753,-0.041177470237017,-0.140509873628616,-0.038423918187618,-0.077577635645866,-0.014114588499069,0.115623451769352));
res += mul(Get(s0,-dx,dy), float4x4(-0.022921260446310,0.005988791119307,0.104335635900497,0.029907446354628,-0.073843777179718,-0.062348943203688,-0.030559012666345,-0.001559034339152,-0.009422559291124,0.052070911973715,-0.017990421503782,-0.066710047423840,-0.040760420262814,-0.046786881983280,0.032428268343210,0.093035362660885));
res += mul(Get(s0,0,-dy), float4x4(0.013750351965427,-0.020797133445740,-0.065471731126308,-0.043240003287792,0.018859529867768,-0.020149758085608,-0.058809027075768,0.039783570915461,0.007165247108787,-0.034123986959457,-0.055702488869429,0.110225901007652,0.124373435974121,-0.002630673116073,-0.011004501022398,0.119369603693485));
res += mul(Get(s0,0,0), float4x4(0.020830137655139,0.089242503046989,-0.061766196042299,-0.058259192854166,0.062759071588516,-0.034657586365938,-0.036172363907099,0.066555306315422,0.220260962843895,0.056525241583586,0.159919470548630,0.051884487271309,0.111874349415302,-0.122690394520760,0.116829618811607,-0.044732142239809));
res += mul(Get(s0,0,dy), float4x4(-0.046449635177851,0.039824120700359,-0.010180146433413,-0.041013024747372,-0.067968115210533,-0.059732500463724,0.013924826867878,0.073227442800999,0.048521220684052,0.033962573856115,0.017823321744800,0.013875011354685,0.041964977979660,-0.066168010234833,0.030442705377936,0.040052667260170));
res += mul(Get(s0,dx,-dy), float4x4(0.122689850628376,0.013121205382049,-0.128372758626938,0.080087982118130,0.047262396663427,-0.027959825471044,-0.031259395182133,-0.080262981355190,0.011241835542023,0.005981948226690,0.009838582016528,-0.041785143315792,-0.057376272976398,-0.091421514749527,0.079238705337048,-0.066261678934097));
res += mul(Get(s0,dx,0), float4x4(0.106311574578285,0.066905453801155,-0.057231996208429,0.054433241486549,0.118355564773083,-0.057140603661537,-0.016272302716970,0.029137603938580,0.007711472455412,0.110984519124031,0.140971034765244,0.004344653338194,-0.037263281643391,-0.168934285640717,0.070470407605171,-0.098488129675388));
res += mul(Get(s0,dx,dy), float4x4(-0.028263680636883,0.065672077238560,0.053164727985859,0.022418329492211,-0.009971199557185,0.007181638851762,-0.020364191383123,0.049621384590864,-0.045356985181570,0.054484765976667,-0.074649572372437,-0.007496766746044,0.034770935773849,-0.132255241274834,0.002758660120890,0.043759521096945));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008953354321420,-0.126426666975021,-0.048088114708662,0.051182776689529,-0.019227514043450,0.100806079804897,0.000350801507011,-0.010319021530449,0.130905419588089,0.011724391020834,-0.026992157101631,-0.145193949341774,0.051998164504766,-0.043024983257055,0.052982732653618,0.169218122959137));
res += mul(Get(s1,-dx,0), float4x4(0.131067991256714,-0.024029718711972,0.072440817952156,0.098546840250492,-0.022865563631058,-0.011142443865538,0.113783486187458,-0.048529874533415,0.029155472293496,0.074324630200863,0.005785367451608,-0.058375339955091,0.061409339308739,0.031882390379906,-0.092537939548492,0.120762333273888));
res += mul(Get(s1,-dx,dy), float4x4(0.046425633132458,0.018653385341167,0.050020851194859,0.086654163897038,-0.071966320276260,-0.070586860179901,0.108743019402027,-0.019071822986007,0.005926688667387,0.116749137639999,0.121939919888973,-0.111808046698570,0.027326378971338,-0.019016573205590,0.023151412606239,-0.005795396864414));
res += mul(Get(s1,0,-dy), float4x4(0.009096084162593,-0.014037794433534,-0.085587725043297,0.038693860173225,0.058798436075449,0.036755159497261,0.108016379177570,-0.038810249418020,0.056875094771385,-0.013269604183733,-0.075663059949875,-0.073296323418617,0.019699934870005,-0.003998903091997,0.021000027656555,0.006212999578565));
res += mul(Get(s1,0,0), float4x4(0.048779021948576,0.070744298398495,-0.037734512239695,0.144550248980522,0.076210357248783,0.015973681584001,-0.025631636381149,-0.097277343273163,-0.061427600681782,-0.105013072490692,0.044311560690403,-0.034879129379988,-0.043871466070414,-0.071595020592213,0.038926064968109,-0.107533060014248));
res += mul(Get(s1,0,dy), float4x4(0.074147954583168,0.172797545790672,-0.069923512637615,0.122584827244282,-0.059325356036425,-0.015424125827849,0.027387904003263,-0.032446108758450,-0.039426635950804,0.113942250609398,0.164804250001907,-0.026096913963556,-0.036170173436403,0.057272478938103,-0.024083640426397,-0.104240544140339));
res += mul(Get(s1,dx,-dy), float4x4(0.022604018449783,0.042735453695059,-0.086543522775173,0.049704875797033,-0.066385649144650,0.026769712567329,0.036760605871677,-0.089381985366344,-0.028063852339983,0.016535669565201,0.092253714799881,-0.039100419729948,-0.063202090561390,0.086140230298042,0.075070917606354,-0.021589299663901));
res += mul(Get(s1,dx,0), float4x4(0.045467354357243,0.015205173753202,-0.076306730508804,-0.132864236831665,0.073601007461548,0.020332977175713,-0.087776608765125,-0.108848147094250,-0.159929990768433,0.052743207663298,0.183469697833061,0.012255250476301,-0.035347975790501,-0.026951333507895,0.159223660826683,-0.007243278436363));
res += mul(Get(s1,dx,dy), float4x4(0.049164000898600,0.088223904371262,-0.102363653481007,-0.177748695015907,0.001670179306529,0.017900897189975,-0.028063569217920,-0.058271564543247,-0.101618066430092,0.099041618406773,0.190171480178833,-0.113756693899632,-0.058681096881628,0.113289304077625,-0.006326113361865,-0.083840370178223));
res += mul(Get(s2,-dx,-dy), float4x4(-0.052441205829382,-0.082172743976116,0.039926681667566,-0.010658524930477,0.068916514515877,0.101333148777485,0.018401311710477,-0.183610826730728,-0.022785110399127,-0.019833933562040,-0.066724218428135,0.104516714811325,0.068273931741714,0.010416954755783,0.046796057373285,0.007665862329304));
res += mul(Get(s2,-dx,0), float4x4(-0.107942961156368,-0.060397867113352,0.058987356722355,0.010222828947008,0.005938152316958,0.008332719095051,0.070380911231041,-0.068466365337372,0.030785227194428,-0.024759789928794,-0.000337128731189,0.007688169367611,0.061778921633959,0.087049633264542,-0.033212553709745,0.018613548949361));
res += mul(Get(s2,-dx,dy), float4x4(-0.018468176946044,0.020616821944714,-0.060373533517122,0.125078648328781,-0.125715866684914,-0.063145786523819,0.001885544275865,-0.085016719996929,-0.115152202546597,-0.120217576622963,0.073046751320362,-0.010614827275276,0.032328933477402,-0.028393356129527,-0.099089473485947,0.000608774484135));
res += mul(Get(s2,0,-dy), float4x4(0.021305883303285,-0.055614102631807,-0.034312676638365,0.017088947817683,0.006213670596480,0.007792476564646,-0.069291606545448,-0.139951840043068,-0.016813380643725,-0.026546405628324,-0.001355639542453,0.117777027189732,-0.000022101543436,-0.018838608637452,0.004932617302984,-0.073299616575241));
res += mul(Get(s2,0,0), float4x4(-0.040799252688885,-0.115872360765934,0.057629812508821,0.076193302869797,0.038867965340614,0.014089575037360,-0.132126376032829,-0.037708025425673,0.050073269754648,0.083636783063412,0.025555429980159,0.066174902021885,-0.010350482538342,0.021533031016588,0.116955660283566,0.021414512768388));
res += mul(Get(s2,0,dy), float4x4(-0.120031803846359,-0.004749479237944,0.053035855293274,0.115515753626823,-0.125054776668549,0.039155572652817,0.022158339619637,-0.053643137216568,-0.111335448920727,-0.089689232409000,0.021436536684632,0.063817247748375,0.133237197995186,0.008559046313167,-0.068468712270260,-0.001653283950873));
res += mul(Get(s2,dx,-dy), float4x4(0.033672958612442,-0.061610274016857,-0.039368957281113,0.012087658978999,-0.042793419212103,-0.066163904964924,-0.106609597802162,0.016671182587743,-0.037876382470131,0.051014050841331,0.092799380421638,-0.004880827385932,-0.012733493931592,-0.020088614895940,-0.066994614899158,-0.149390250444412));
res += mul(Get(s2,dx,0), float4x4(0.029939197003841,-0.122909657657146,-0.081664130091667,0.074751988053322,0.046550549566746,-0.029991965740919,-0.045408170670271,-0.046018309891224,0.058242339640856,0.184647828340530,-0.038622133433819,-0.019232548773289,-0.038067787885666,0.025643425062299,-0.070921644568443,-0.114081025123596));
res += mul(Get(s2,dx,dy), float4x4(0.007678311318159,-0.107817664742470,-0.031049469485879,0.098067104816437,-0.173398092389107,0.064982198178768,-0.053249381482601,0.019776020199060,-0.036602098494768,-0.037199929356575,-0.050394438207150,-0.014764170162380,0.050527896732092,-0.012304961681366,0.043167866766453,-0.103485040366650));
res += mul(Get(s3,-dx,-dy), float4x4(0.080038845539093,-0.047627586871386,0.048030335456133,-0.071853891015053,0.000546526862308,0.002180278766900,-0.021551545709372,0.047180321067572,-0.102972157299519,-0.005361187737435,0.127806916832924,-0.008660218678415,0.008679837919772,0.001423788024113,-0.060637965798378,-0.040157888084650));
res += mul(Get(s3,-dx,0), float4x4(0.064650364220142,-0.005746996495873,-0.051323261111975,0.012899638153613,0.050847243517637,0.039212547242641,0.077666692435741,0.070734106004238,-0.016596136614680,0.011273719370365,-0.041841592639685,-0.087602727115154,0.000806037394796,-0.080604471266270,0.122236855328083,-0.063221208751202));
res += mul(Get(s3,-dx,dy), float4x4(0.038542550057173,-0.014668657444417,-0.067231148481369,-0.046298012137413,0.044225256890059,0.034253355115652,-0.037005983293056,0.010187748819590,-0.145662397146225,0.010011045262218,-0.043264940381050,-0.067438215017319,-0.072175092995167,-0.082055151462555,-0.068494826555252,-0.010691846720874));
res += mul(Get(s3,0,-dy), float4x4(-0.040220078080893,0.007176813669503,0.126661449670792,-0.031924530863762,0.006347127258778,0.003833434311673,-0.025848956778646,-0.021472500637174,-0.118656508624554,-0.011826432310045,0.019387930631638,0.035975176841021,0.031704079359770,0.122950978577137,-0.043836370110512,-0.084394253790379));
res += mul(Get(s3,0,0), float4x4(-0.024710936471820,0.015694610774517,0.031476683914661,0.023013273254037,-0.082750380039215,-0.004378680139780,0.017834585160017,-0.070709362626076,0.081163667142391,-0.014097437262535,-0.044370934367180,0.029916686937213,-0.055996473878622,0.044422224164009,0.022442517802119,-0.108465790748596));
res += mul(Get(s3,0,dy), float4x4(-0.047079619020224,-0.028427675366402,0.008285325020552,0.006311269011348,-0.018381169065833,0.111490435898304,-0.052766300737858,-0.033917278051376,-0.060281466692686,-0.025986233726144,0.007950922474265,-0.022647822275758,-0.145943760871887,0.070614472031593,-0.056443765759468,-0.104686714708805));
res += mul(Get(s3,dx,-dy), float4x4(-0.082520164549351,-0.031117776408792,0.183101415634155,-0.002727053128183,-0.040500935167074,-0.043043479323387,-0.014580057002604,-0.050544604659081,-0.081615768373013,0.001938383793458,-0.062691606581211,0.110955126583576,-0.062411636114120,0.018807677552104,0.093327857553959,-0.038124158978462));
res += mul(Get(s3,dx,0), float4x4(-0.094881542026997,-0.062925204634666,0.092451743781567,-0.016879359260201,-0.050423491746187,-0.089650422334671,0.061704844236374,-0.045584321022034,0.171348750591278,0.007431874051690,-0.099291183054447,0.056788526475430,0.072202943265438,-0.059318546205759,0.113680846989155,0.046424213796854));
res += mul(Get(s3,dx,dy), float4x4(-0.001350675360300,-0.043084714561701,-0.006451591849327,-0.009979800321162,-0.006113352254033,0.028983337804675,0.140292316675186,-0.073874287307262,-0.072378337383270,-0.015688735991716,-0.009605051949620,-0.003877215553075,-0.013196638785303,-0.045458965003490,0.113268338143826,0.010492193512619));
return max(float4(0,0,0,0), res);
}
