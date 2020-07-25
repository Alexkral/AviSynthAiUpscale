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
res += mul(Get(s0,-dx,-dy), float4x4(-0.009061622433364,0.140904068946838,0.090524561703205,0.031370796263218,-0.022632142528892,0.036209024488926,-0.195689737796783,0.084492705762386,-0.049256723374128,0.088797777891159,0.062148682773113,-0.060767989605665,0.250692844390869,0.039101630449295,-0.169504314661026,0.117193609476089));
res += mul(Get(s0,-dx,0), float4x4(-0.121865548193455,-0.138636201620102,-0.127050042152405,-0.141977220773697,-0.031615462154150,0.113230094313622,-0.101464904844761,0.063805565237999,0.109236463904381,0.304781645536423,0.014769764617085,-0.057688217610121,0.075255922973156,0.108664855360985,0.044063024222851,-0.014170595444739));
res += mul(Get(s0,-dx,dy), float4x4(-0.007835499942303,-0.015620520338416,0.007824071682990,0.004209433216602,0.027686132118106,-0.022657070308924,-0.169757455587387,-0.014318658038974,-0.063877642154694,-0.187313616275787,0.091347172856331,-0.218701273202896,0.220715984702110,0.098533488810062,-0.088895186781883,-0.183317691087723));
res += mul(Get(s0,0,-dy), float4x4(0.004672042559832,-0.092694729566574,0.042526755481958,-0.060712214559317,0.095387347042561,-0.056802384555340,0.101847454905510,-0.156381428241730,0.055237095803022,-0.063817456364632,-0.040723066776991,0.122251816093922,0.091125071048737,0.118632517755032,0.218683406710625,-0.013664734549820));
res += mul(Get(s0,0,0), float4x4(-0.028079858049750,0.157485738396645,-0.030152805149555,0.089986525475979,0.084356360137463,-0.173845946788788,-0.074424229562283,-0.110018059611320,-0.152642250061035,-0.076255731284618,0.024113349616528,-0.133241280913353,-0.095577336847782,-0.014966917224228,-0.094484038650990,-0.149049624800682));
res += mul(Get(s0,0,dy), float4x4(-0.087282076478004,-0.062902212142944,0.038729880005121,-0.190888449549675,-0.051018022000790,0.048562087118626,-0.113460421562195,-0.030852388590574,0.211589843034744,0.194684803485870,-0.007887898012996,0.133950352668762,-0.013093655928969,0.101250641047955,0.094051614403725,0.004172434099019));
res += mul(Get(s0,dx,-dy), float4x4(0.043241344392300,-0.046263430267572,0.063716024160385,-0.011504065245390,-0.074469767510891,-0.012507553212345,0.024286257103086,0.115525096654892,-0.021867964416742,-0.107961215078831,-0.140367776155472,0.035453431308270,-0.054912757128477,-0.048642851412296,0.022359456866980,0.047799922525883));
res += mul(Get(s0,dx,0), float4x4(-0.091258563101292,-0.048001639544964,-0.125983774662018,-0.130179315805435,-0.005827171728015,-0.100318923592567,0.157441541552544,-0.124449357390404,0.153841972351074,-0.187742352485657,0.234840109944344,-0.089618504047394,0.118503741919994,0.048574861139059,0.158537030220032,0.107578746974468));
res += mul(Get(s0,dx,dy), float4x4(-0.181103184819221,-0.041167270392179,0.230064630508423,-0.066239126026630,0.035774540156126,0.120535045862198,0.105541191995144,-0.043832577764988,-0.085427150130272,0.109933927655220,-0.001002557808533,0.040472548455000,0.001493448391557,-0.001510731643066,-0.117811270058155,-0.144696131348610));
res += mul(Get(s1,-dx,-dy), float4x4(0.064014650881290,0.034691084176302,0.194536179304123,0.064423479139805,-0.044965285807848,0.046376299113035,-0.090616397559643,-0.055790022015572,0.180929422378540,-0.129410132765770,0.017695568501949,0.012262590229511,-0.045958958566189,-0.101406604051590,-0.028650039806962,0.101845301687717));
res += mul(Get(s1,-dx,0), float4x4(-0.093625821173191,0.026075473055243,0.048781320452690,0.151406466960907,-0.029138123616576,0.021033424884081,-0.175397023558617,-0.066499531269073,-0.111736729741096,-0.057304132729769,-0.099675998091698,0.104044474661350,0.105496883392334,0.099893271923065,0.245598420500755,-0.211975648999214));
res += mul(Get(s1,-dx,dy), float4x4(-0.049614083021879,0.101421549916267,0.147296622395515,-0.045894268900156,0.074872441589832,-0.235970482230186,0.019595330581069,0.020132036879659,0.082746528089046,-0.009378484450281,-0.145421370863914,0.182880893349648,-0.096528455615044,0.098816148936749,-0.053696457296610,-0.187321171164513));
res += mul(Get(s1,0,-dy), float4x4(-0.016960313543677,-0.230698794126511,0.115938924252987,0.084093578159809,0.023395054042339,-0.081212200224400,0.096608139574528,-0.235099866986275,-0.221324220299721,0.030304236337543,-0.052669752389193,-0.018754879012704,-0.156314998865128,0.028107492253184,-0.186592057347298,-0.102787703275681));
res += mul(Get(s1,0,0), float4x4(-0.007342538330704,-0.122013367712498,-0.080684475600719,0.001638829708099,-0.100196920335293,-0.133582666516304,-0.162671998143196,-0.151824206113815,0.132583960890770,0.136906728148460,0.036091122776270,-0.069767080247402,0.044790439307690,-0.137836635112762,-0.026638843119144,-0.119534395635128));
res += mul(Get(s1,0,dy), float4x4(-0.035011451691389,0.084288097918034,-0.070944733917713,-0.020908685401082,0.046568132936954,-0.024686045944691,0.110046416521072,-0.135958239436150,-0.068443730473518,-0.084018133580685,-0.172311469912529,0.158759549260139,0.033890634775162,0.153294533491135,-0.041116014122963,-0.091475643217564));
res += mul(Get(s1,dx,-dy), float4x4(-0.044426109641790,0.014613363891840,0.103336900472641,-0.054553970694542,-0.020214933902025,0.006123620551080,-0.030050648376346,-0.182922631502151,-0.052363675087690,0.091022305190563,-0.019184298813343,0.051752600818872,-0.081282310187817,0.103992059826851,0.026175713166595,-0.184038504958153));
res += mul(Get(s1,dx,0), float4x4(-0.041754357516766,-0.090255804359913,0.051925458014011,-0.098088145256042,-0.083264954388142,0.321076452732086,-0.093198604881763,-0.002809062134475,0.057333581149578,0.046964403241873,-0.257651031017303,-0.061426926404238,0.058875732123852,0.024726452305913,-0.048119775950909,-0.131619378924370));
res += mul(Get(s1,dx,dy), float4x4(-0.080781750380993,0.029200278222561,-0.007497906219214,-0.031060190871358,0.055208273231983,-0.060267768800259,-0.056635934859514,0.051688250154257,0.150071278214455,0.130476713180542,-0.068144030869007,0.237863034009933,0.196339458227158,-0.070121526718140,-0.016824448481202,-0.081406340003014));
res += mul(Get(s2,-dx,-dy), float4x4(0.082303047180176,-0.134331271052361,0.029092552140355,0.074053280055523,-0.093971945345402,0.324880689382553,0.077493757009506,-0.213738903403282,-0.159183964133263,0.024573145434260,0.187481209635735,0.063137672841549,-0.000762253650464,0.021192641928792,0.034306127578020,0.002932278672233));
res += mul(Get(s2,-dx,0), float4x4(0.065301969647408,0.012248039245605,0.124443665146828,0.030751703307033,-0.116512857377529,0.134414538741112,-0.042305268347263,0.132499828934669,-0.067064739763737,-0.152857169508934,0.188664704561234,0.209760770201683,-0.136819750070572,0.047964412719011,-0.042350389063358,-0.028695860877633));
res += mul(Get(s2,-dx,dy), float4x4(-0.225206241011620,-0.175440758466721,-0.017788486555219,-0.143002599477768,-0.071613229811192,-0.103550210595131,0.058032933622599,0.044471904635429,-0.134342730045319,0.012593230232596,0.004127728752792,-0.069970384240150,-0.078260667622089,-0.063778281211853,-0.321041673421860,0.071037240326405));
res += mul(Get(s2,0,-dy), float4x4(0.013257940299809,-0.128426909446716,-0.009111200459301,0.109761931002140,-0.004970888607204,0.066328629851341,0.166111856698990,-0.156667634844780,0.124124661087990,0.012757084332407,-0.072301767766476,-0.025031909346581,0.075677216053009,0.051430806517601,-0.204615518450737,0.054793704301119));
res += mul(Get(s2,0,0), float4x4(0.203279942274094,-0.048048865050077,0.007995991967618,0.292452514171600,0.301165521144867,0.014159541577101,-0.224790886044502,-0.125647231936455,-0.217199549078941,0.084525339305401,-0.061684299260378,0.038531623780727,-0.049879331141710,0.143991351127625,-0.185934841632843,-0.122719593346119));
res += mul(Get(s2,0,dy), float4x4(0.030888030305505,0.072131335735321,-0.123775288462639,-0.044648502022028,0.107418201863766,0.007399907335639,-0.034566313028336,0.105204991996288,0.076776601374149,0.382218033075333,-0.019934173673391,-0.100220009684563,-0.118170179426670,-0.055998746305704,0.018970543518662,-0.027799315750599));
res += mul(Get(s2,dx,-dy), float4x4(-0.075641207396984,-0.051327656954527,0.041561849415302,-0.063232116401196,-0.179973870515823,0.064278915524483,0.010940048843622,0.203750640153885,-0.270728975534439,-0.085478805005550,0.314035028219223,-0.010116448625922,0.063331142067909,-0.019095024093986,-0.065370380878448,-0.101542666554451));
res += mul(Get(s2,dx,0), float4x4(0.012833464890718,-0.006567311473191,-0.041420541703701,0.157656639814377,0.180442333221436,-0.055712725967169,-0.122200235724449,-0.071304842829704,0.062535658478737,-0.058465920388699,-0.083180852234364,0.051211215555668,0.208491116762161,-0.001174288918264,-0.072349146008492,-0.116916090250015));
res += mul(Get(s2,dx,dy), float4x4(0.033314894884825,0.203346386551857,-0.093785792589188,0.053765919059515,-0.113028235733509,-0.108042664825916,0.215363875031471,0.213289126753807,-0.048246916383505,0.133655056357384,-0.208524942398071,-0.120194151997566,-0.081883385777473,-0.020466685295105,0.083318948745728,0.064797088503838));
res += mul(Get(s3,-dx,-dy), float4x4(-0.214035615324974,-0.003577935276553,0.170473620295525,-0.089441165328026,0.005042749457061,-0.123125992715359,0.193384528160095,0.012823429889977,0.001213399227709,0.115701347589493,-0.106734670698643,-0.012806451879442,-0.096392579376698,-0.082059107720852,0.220541059970856,0.048322115093470));
res += mul(Get(s3,-dx,0), float4x4(-0.115091994404793,0.127546086907387,0.003976754844189,0.067869953811169,-0.056043051183224,0.254188746213913,0.120397977530956,-0.149508938193321,-0.073191106319427,-0.102925285696983,0.220855593681335,-0.071156390011311,0.081844456493855,0.152152687311172,0.068820796906948,0.108664326369762));
res += mul(Get(s3,-dx,dy), float4x4(-0.041312310844660,-0.043228890746832,0.041169300675392,0.105407103896141,0.045808352530003,-0.005922089796513,-0.152490794658661,-0.084546618163586,-0.279841840267181,0.094116508960724,-0.075979754328728,-0.044063910841942,-0.104951329529285,0.079524815082550,-0.149670302867889,-0.067959882318974));
res += mul(Get(s3,0,-dy), float4x4(-0.204271689057350,0.009506268426776,0.000934383599088,0.151922792196274,0.019723679870367,-0.046647291630507,-0.032180652022362,-0.004852651152760,0.120628774166107,-0.121851399540901,-0.021152267232537,-0.082028985023499,0.174822941422462,-0.145829275250435,-0.215350612998009,-0.071699671447277));
res += mul(Get(s3,0,0), float4x4(-0.069837041199207,-0.140727505087852,-0.197744965553284,-0.161541804671288,0.071423321962357,-0.157981142401695,-0.007717306260020,-0.040025759488344,-0.146941021084785,-0.057994138449430,-0.103018298745155,-0.049633178859949,0.161794498562813,0.066887803375721,-0.141755148768425,0.191365674138069));
res += mul(Get(s3,0,dy), float4x4(0.202174752950668,-0.127971380949020,-0.067749939858913,-0.035274676978588,0.035665284842253,-0.134510323405266,-0.051831502467394,0.069917678833008,-0.268602192401886,0.018697820603848,0.120525836944580,0.147233769297600,0.145433694124222,-0.170893788337708,0.082534879446030,0.039903379976749));
res += mul(Get(s3,dx,-dy), float4x4(0.224839523434639,0.253648936748505,-0.076249405741692,-0.033707190304995,0.015831168740988,-0.099601529538631,0.084574028849602,0.077936813235283,-0.004257374443114,0.105622209608555,-0.220068022608757,-0.225082963705063,0.103726238012314,0.031015267595649,0.122090071439743,-0.005969906691462));
res += mul(Get(s3,dx,0), float4x4(-0.006233854219317,-0.045462734997272,0.171749740839005,0.075932003557682,-0.124855719506741,0.040336031466722,-0.073303647339344,0.043822854757309,-0.172530934214592,0.079355709254742,0.011061847209930,-0.015174703672528,0.311331719160080,0.230504900217056,-0.068900249898434,0.044773917645216));
res += mul(Get(s3,dx,dy), float4x4(-0.188714474439621,0.060928132385015,-0.029511248692870,-0.083932913839817,0.081259749829769,-0.188698664307594,0.024285806342959,0.065209165215492,-0.051293093711138,-0.198133170604706,-0.033408593386412,0.142085582017899,-0.078599326312542,-0.108928389847279,-0.082403220236301,-0.043163869529963));
return max(float4(0,0,0,0), res);
}
