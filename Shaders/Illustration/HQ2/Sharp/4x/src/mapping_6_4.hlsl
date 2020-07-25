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
res += mul(Get(s0,-dx,-dy), float4x4(-0.006231266073883,-0.167090818285942,-0.103961333632469,0.063792631030083,-0.038406975567341,-0.275459408760071,0.006652775686234,0.092389561235905,-0.161268770694733,0.030644036829472,-0.006128952372819,0.102890245616436,0.166818484663963,0.062441892921925,0.030604133382440,-0.130491405725479));
res += mul(Get(s0,-dx,0), float4x4(-0.103849671781063,-0.070427395403385,-0.097258701920509,0.117116160690784,-0.142463803291321,-0.185897991061211,0.067142680287361,-0.084083504974842,0.115070655941963,-0.083135485649109,0.053915701806545,0.014396422542632,0.082152850925922,0.209217667579651,0.029833473265171,0.081817559897900));
res += mul(Get(s0,-dx,dy), float4x4(-0.268842965364456,-0.042501918971539,-0.171105563640594,-0.216164708137512,0.156157821416855,0.190586864948273,0.052794370800257,0.011760777793825,-0.060897722840309,0.191362515091896,-0.049621719866991,-0.039009131491184,0.025992529466748,0.076568312942982,-0.020334549248219,0.079318054020405));
res += mul(Get(s0,0,-dy), float4x4(0.111057132482529,-0.166778296232224,-0.014754005707800,0.011247864924371,0.112543337047100,-0.081500738859177,-0.007552164141089,0.107976809144020,0.023653497919440,-0.012104528024793,-0.046817399561405,0.246302932500839,0.041992343962193,0.129247307777405,0.161033749580383,-0.011580346152186));
res += mul(Get(s0,0,0), float4x4(0.059853073209524,-0.103074222803116,-0.160274267196655,-0.065048411488533,0.120503120124340,-0.196668818593025,-0.010266478173435,0.089728944003582,0.141191437840462,-0.193798542022705,-0.076846040785313,0.139548301696777,0.096942469477654,0.134529098868370,0.108808107674122,0.004954052623361));
res += mul(Get(s0,0,dy), float4x4(0.175820499658585,0.045607663691044,0.021751370280981,-0.020123014226556,0.097192108631134,-0.119179122149944,-0.007929563522339,-0.064469039440155,-0.087672054767609,0.143589779734612,-0.049118559807539,-0.092186078429222,-0.192736551165581,0.053239017724991,0.043889306485653,0.009211342781782));
res += mul(Get(s0,dx,-dy), float4x4(0.099316306412220,-0.182249963283539,-0.074780888855457,0.119089223444462,0.089856907725334,0.039134282618761,0.254051566123962,0.067098602652550,0.072087228298187,-0.064428947865963,-0.028213912621140,0.042280822992325,0.007865164428949,0.229733064770699,0.092500403523445,0.262553244829178));
res += mul(Get(s0,dx,0), float4x4(-0.057001277804375,0.046531856060028,-0.040297444909811,-0.014910652302206,-0.234547972679138,-0.042756967246532,-0.008604261092842,-0.124973922967911,0.119203902781010,-0.089282169938087,0.155820935964584,-0.183422535657883,-0.094758354127407,0.040523029863834,0.003941286820918,0.170961275696754));
res += mul(Get(s0,dx,dy), float4x4(-0.017879555001855,-0.193487316370010,-0.088410586118698,-0.017375269904733,0.047199457883835,0.178807795047760,0.028503764420748,-0.029043169692159,-0.191608756780624,0.186212405562401,-0.029764305800200,-0.104644343256950,0.080653525888920,0.121725425124168,-0.030946459621191,0.089186541736126));
res += mul(Get(s1,-dx,-dy), float4x4(0.030022820457816,0.119905047118664,-0.024305144324899,0.027207911014557,-0.280180007219315,0.026751741766930,0.002923114923760,0.081339314579964,-0.080834574997425,-0.093505814671516,-0.023807587102056,0.000611352792475,0.126097321510315,0.027856186032295,0.031713567674160,0.217914223670959));
res += mul(Get(s1,-dx,0), float4x4(0.102594569325447,0.130514636635780,-0.024471810087562,0.031397204846144,-0.000018595594156,-0.007478156127036,-0.051098491996527,-0.143923193216324,0.073258757591248,0.259085863828659,-0.049215946346521,-0.003612933913246,-0.017696579918265,0.136777386069298,0.023683032020926,-0.067891918122768));
res += mul(Get(s1,-dx,dy), float4x4(-0.150134548544884,0.032640427350998,-0.257623106241226,-0.071594431996346,-0.008078452199697,0.106061108410358,0.018513146787882,-0.129747062921524,0.145821079611778,-0.068353906273842,-0.049313578754663,-0.023216769099236,0.009823070839047,0.029410442337394,-0.189690545201302,0.203084856271744));
res += mul(Get(s1,0,-dy), float4x4(0.099204815924168,0.048044133931398,0.076992943882942,0.120672821998596,-0.058332365006208,0.050369098782539,-0.024147491902113,-0.249195888638496,0.248373880982399,0.138783931732178,0.009541792795062,-0.197205200791359,-0.081259995698929,0.125891432166100,0.133587881922722,-0.083431407809258));
res += mul(Get(s1,0,0), float4x4(0.042741715908051,-0.194627195596695,-0.217763081192970,-0.190453767776489,0.126897498965263,0.046891883015633,0.015100501477718,-0.039609324187040,-0.011458847671747,0.029920648783445,-0.180024713277817,-0.130843862891197,-0.094935610890388,0.120814651250839,0.111494384706020,-0.108745612204075));
res += mul(Get(s1,0,dy), float4x4(0.014212100766599,0.171599552035332,0.164248138666153,-0.109412238001823,-0.178957134485245,-0.164962172508240,-0.021319126710296,0.038509618490934,-0.066180944442749,-0.350047916173935,0.016895899549127,0.145787224173546,-0.129916697740555,-0.050484608858824,0.127254322171211,0.070772357285023));
res += mul(Get(s1,dx,-dy), float4x4(-0.104257002472878,-0.064290963113308,0.004812730476260,-0.144895464181900,-0.078545324504375,-0.014368711970747,-0.112783089280128,0.028630599379539,-0.205944254994392,-0.040225338190794,0.189341351389885,-0.148438617587090,0.071252122521400,0.243906676769257,-0.232538521289825,-0.098953545093536));
res += mul(Get(s1,dx,0), float4x4(0.235705137252808,-0.053579244762659,-0.086170077323914,-0.152554392814636,-0.039962399750948,-0.065687038004398,-0.034478086978197,-0.034899540245533,0.108857393264771,-0.030900605022907,0.095282934606075,-0.174597382545471,-0.025551170110703,-0.022080004215240,-0.084789842367172,0.000658552860841));
res += mul(Get(s1,dx,dy), float4x4(0.084994480013847,0.007149271201342,-0.093703038990498,0.149896070361137,0.111409172415733,-0.017545461654663,0.002184489509091,0.068654932081699,-0.019805509597063,0.006748723797500,0.045543622225523,-0.138356328010559,0.050406850874424,-0.125640943646431,-0.236680373549461,-0.127104818820953));
res += mul(Get(s2,-dx,-dy), float4x4(0.029867365956306,0.007230406161398,0.086294755339622,0.110111549496651,0.150639310479164,-0.052573800086975,-0.126134619116783,-0.065021678805351,-0.092031590640545,-0.100793898105621,0.017279798164964,-0.147125080227852,0.106475099921227,-0.021696042269468,-0.016194684430957,0.113020390272141));
res += mul(Get(s2,-dx,0), float4x4(-0.158599078655243,-0.085522413253784,0.208037912845612,-0.009089225903153,-0.081275850534439,0.155134707689285,0.091477237641811,0.031803119927645,-0.055604614317417,0.042715251445770,-0.024856304749846,-0.021390374749899,0.054763689637184,0.091580532491207,-0.036433331668377,0.168008312582970));
res += mul(Get(s2,-dx,dy), float4x4(-0.015691425651312,-0.150770634412766,-0.164955541491508,-0.241065606474876,0.107804127037525,-0.052502226084471,-0.157004252076149,-0.174596309661865,0.048902846872807,0.086929932236671,-0.027818610891700,-0.105684436857700,-0.085972562432289,-0.030214028432965,-0.125706776976585,0.082504317164421));
res += mul(Get(s2,0,-dy), float4x4(-0.057947516441345,-0.075152665376663,0.031033163890243,-0.080951273441315,-0.120638266205788,0.021120134741068,-0.032322134822607,-0.154283896088600,0.002607230329886,-0.111363895237446,0.040458206087351,0.005795493256301,-0.107999794185162,0.093071036040783,0.015674183145165,0.051850419491529));
res += mul(Get(s2,0,0), float4x4(0.187125235795975,-0.034106064587831,-0.046130836009979,-0.192515775561333,0.132610470056534,-0.123516567051411,-0.030486125499010,0.236661985516548,0.135899499058723,0.053621463477612,-0.047074053436518,-0.034809343516827,-0.091511361300945,0.043371919542551,-0.201005220413208,0.022522397339344));
res += mul(Get(s2,0,dy), float4x4(-0.117846600711346,-0.072008751332760,0.213560760021210,-0.150414377450943,0.027932101860642,0.097087256610394,0.122074939310551,-0.146335706114769,-0.254293173551559,0.025355197489262,0.225387096405029,0.158071935176849,-0.026580017060041,0.079549357295036,-0.120913244783878,-0.152168855071068));
res += mul(Get(s2,dx,-dy), float4x4(-0.285142540931702,0.054926916956902,0.025042787194252,0.086286805570126,0.090145111083984,-0.000057067394664,0.143906399607658,0.188164249062538,-0.076592981815338,0.054365631192923,0.082112289965153,0.266332060098648,-0.162127077579498,-0.259424507617950,0.004041911568493,0.125929534435272));
res += mul(Get(s2,dx,0), float4x4(-0.055653102695942,0.009401814080775,-0.173257708549500,-0.155286252498627,0.024192888289690,-0.165731012821198,-0.058987371623516,-0.093675941228867,0.099557444453239,-0.082855157554150,0.105173811316490,0.130053892731667,0.234342008829117,0.034872222691774,0.061114314943552,0.191667795181274));
res += mul(Get(s2,dx,dy), float4x4(-0.041724484413862,-0.188411101698875,-0.182840168476105,-0.020400665700436,0.032591156661510,-0.147613301873207,0.099728681147099,0.086852267384529,-0.059905707836151,-0.055863834917545,0.027036670595407,0.016329951584339,-0.060202095657587,-0.141038119792938,-0.068044193089008,0.150520741939545));
res += mul(Get(s3,-dx,-dy), float4x4(0.110382616519928,-0.094032742083073,-0.066839173436165,-0.017523529008031,0.103790126740932,-0.006730052642524,0.052994590252638,-0.048626653850079,-0.160120084881783,0.031318213790655,0.037287726998329,0.135285183787346,-0.045056078583002,0.158691585063934,0.038910504430532,0.173660889267921));
res += mul(Get(s3,-dx,0), float4x4(-0.271532833576202,-0.104192763566971,0.048215243965387,0.019422791898251,-0.207886844873428,0.099491916596889,0.177593410015106,0.018037732690573,0.124371610581875,0.042820166796446,-0.078387878835201,0.123612113296986,-0.054461974650621,0.055712234228849,0.125990986824036,-0.013902977108955));
res += mul(Get(s3,-dx,dy), float4x4(-0.005921571049839,-0.088427521288395,0.070304699242115,-0.052930142730474,0.059743817895651,0.160124197602272,-0.036693893373013,-0.143731057643890,0.057627122849226,-0.056410048156977,-0.021059986203909,0.073429808020592,0.016848441213369,-0.184258610010147,0.093566447496414,0.214540854096413));
res += mul(Get(s3,0,-dy), float4x4(-0.042101472616196,0.098066218197346,0.069028377532959,0.039446238428354,0.008863992989063,-0.142979249358177,-0.256052762269974,0.168514907360077,0.029813131317496,0.009394460357726,0.039364207535982,0.033685535192490,0.003209049813449,-0.023356555029750,0.025272540748119,-0.164110422134399));
res += mul(Get(s3,0,0), float4x4(-0.041516181081533,0.094928726553917,-0.072372913360596,-0.105878502130508,0.107437387108803,0.064969137310982,-0.000888914917596,-0.100686706602573,-0.027275288477540,-0.150281965732574,-0.109727159142494,0.134142458438873,-0.005860713310540,-0.226826056838036,0.022680506110191,0.171229735016823));
res += mul(Get(s3,0,dy), float4x4(0.029443541541696,-0.053221970796585,-0.094590388238430,-0.002560247667134,-0.007374063134193,0.089643977582455,0.152356103062630,0.040092594921589,0.033735424280167,-0.129065856337547,-0.072266206145287,-0.029655123129487,-0.125267148017883,-0.102615445852280,0.017518484964967,-0.007602077908814));
res += mul(Get(s3,dx,-dy), float4x4(0.043171904981136,0.079054579138756,0.016829615458846,-0.066896937787533,0.128126382827759,0.161700487136841,-0.035329520702362,0.266044378280640,-0.034428648650646,0.033683992922306,0.181620657444000,-0.016579797491431,0.134689435362816,-0.025552742183208,0.076733231544495,0.074659653007984));
res += mul(Get(s3,dx,0), float4x4(0.134838446974754,0.178774908185005,-0.102954976260662,0.040893591940403,-0.155150249600410,-0.002751950873062,0.114440396428108,-0.147128731012344,0.163554564118385,-0.012930952943861,0.068297445774078,0.035560797899961,-0.080281093716621,-0.170408770442009,0.017552457749844,-0.181347683072090));
res += mul(Get(s3,dx,dy), float4x4(-0.117449916899204,-0.031486146152020,0.027583746239543,-0.153200015425682,0.087429858744144,-0.177649304270744,0.167010501027107,0.124264366924763,0.003433801932260,-0.074462935328484,0.062654666602612,-0.091355778276920,0.047819949686527,0.050681252032518,0.202412322163582,0.073392353951931));
return max(float4(0,0,0,0), res);
}
