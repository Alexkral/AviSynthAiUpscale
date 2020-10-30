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
res += mul(Get(s0,-dx,-dy), float4x4(-0.170638069510460,-0.133782386779785,0.240899980068207,0.036911219358444,-0.007947077974677,0.215065255761147,-0.058508139103651,0.144069314002991,-0.230800271034241,-0.252405583858490,0.075396984815598,0.084748059511185,-0.108876660466194,0.077145613729954,0.167921110987663,-0.167315453290939));
res += mul(Get(s0,-dx,0), float4x4(-0.166170433163643,0.095617540180683,-0.003861598670483,-0.107427686452866,-0.011957757174969,0.192133039236069,0.049478795379400,0.164024069905281,-0.246592313051224,-0.061928782612085,0.199573338031769,-0.100371412932873,0.080700881779194,-0.122940674424171,-0.186512276530266,0.013091230764985));
res += mul(Get(s0,-dx,dy), float4x4(0.413807809352875,0.239529222249985,-0.097051896154881,-0.103343762457371,0.107054427266121,0.005150876007974,0.117465943098068,0.186400383710861,-0.059128802269697,0.144344180822372,-0.023097196593881,0.368009150028229,0.412650018930435,-0.214262232184410,-0.165073394775391,0.329209297895432));
res += mul(Get(s0,0,-dy), float4x4(-0.222169578075409,0.098925903439522,-0.056133035570383,-0.061149094253778,-0.048041213303804,0.128245010972023,0.180429652333260,0.165073260664940,-0.031967047601938,-0.053066678345203,0.025994595140219,-0.079798474907875,-0.204297736287117,-0.052815884351730,-0.050812415778637,-0.164764717221260));
res += mul(Get(s0,0,0), float4x4(-0.013897113502026,0.356858074665070,-0.103284128010273,-0.048543654382229,-0.081898547708988,0.138261333107948,0.090027689933777,-0.078047886490822,-0.143700897693634,-0.201812341809273,-0.036315388977528,-0.075959235429764,0.222372457385063,0.051108330488205,0.066287569701672,0.129457771778107));
res += mul(Get(s0,0,dy), float4x4(0.295451611280441,-0.117412999272346,-0.143752068281174,-0.027498533949256,-0.111758403480053,-0.058326594531536,0.087781086564064,0.023384962230921,0.026905098930001,0.087722979485989,-0.124496184289455,0.035170868039131,0.039517585188150,-0.258386105298996,-0.189875960350037,0.206334948539734));
res += mul(Get(s0,dx,-dy), float4x4(-0.225469514727592,0.065841801464558,-0.169640660285950,-0.070019423961639,-0.054045464843512,0.006180247757584,0.234676048159599,-0.025116516277194,-0.067119918763638,-0.061006966978312,-0.187885656952858,0.209936395287514,-0.152881279587746,0.295935809612274,-0.033884339034557,0.123001895844936));
res += mul(Get(s0,dx,0), float4x4(-0.194679006934166,0.177038758993149,-0.221056848764420,0.082406342029572,0.075814843177795,0.023047471418977,-0.021280284970999,-0.077284134924412,0.028737472370267,0.077731922268867,0.100683927536011,0.074967458844185,0.005460986867547,0.099563330411911,0.059745483100414,-0.076981157064438));
res += mul(Get(s0,dx,dy), float4x4(-0.222970902919769,-0.028685826808214,-0.308663487434387,0.199851036071777,0.126986131072044,-0.014613445848227,0.022056095302105,-0.067802615463734,-0.081436894834042,-0.158944979310036,-0.064845055341721,-0.004324222449213,-0.251585990190506,-0.228103622794151,0.186953142285347,0.048114575445652));
res += mul(Get(s1,-dx,-dy), float4x4(0.026341596618295,-0.132346078753471,0.136210784316063,0.137137487530708,0.014247470535338,-0.051695689558983,-0.188967391848564,0.000966428371612,0.170202419161797,-0.076581351459026,-0.111390054225922,0.070940993726254,-0.149404466152191,0.083965234458447,-0.086392119526863,-0.144036382436752));
res += mul(Get(s1,-dx,0), float4x4(-0.225618854165077,0.253542870283127,-0.055389292538166,0.104638889431953,0.168013378977776,-0.145859226584435,-0.085471965372562,0.031559497117996,0.099221140146255,-0.078109614551067,-0.137908071279526,-0.052387654781342,0.123241879045963,0.092363514006138,-0.045513201504946,-0.086480215191841));
res += mul(Get(s1,-dx,dy), float4x4(0.015558918006718,-0.136467874050140,-0.038388755172491,-0.002483639400452,0.032033201307058,-0.233379930257797,0.051647208631039,0.072184979915619,0.095017269253731,-0.075242474675179,-0.115479677915573,-0.194062754511833,0.037567608058453,-0.137954190373421,-0.010126446373761,-0.130333498120308));
res += mul(Get(s1,0,-dy), float4x4(-0.000421720586019,0.040266331285238,0.297674655914307,-0.085613109171391,-0.025540102273226,-0.057550426572561,0.219582453370094,-0.071995042264462,0.092367105185986,0.017314771190286,-0.004375675227493,0.212737843394279,-0.088449507951736,0.307574808597565,-0.139477044343948,-0.064862385392189));
res += mul(Get(s1,0,0), float4x4(0.020785696804523,0.092100448906422,0.195224031805992,0.039375185966492,-0.028120562434196,-0.121319890022278,-0.033532876521349,-0.064161188900471,-0.061391301453114,-0.027845138683915,-0.018682517111301,0.074654251337051,0.051131598651409,0.107203900814056,-0.174886405467987,-0.049470283091068));
res += mul(Get(s1,0,dy), float4x4(0.117460638284683,-0.078423015773296,-0.014110445976257,0.204570382833481,-0.013812782242894,-0.168980136513710,0.044113911688328,0.024501040577888,0.106908924877644,-0.025227585807443,-0.070690751075745,-0.058560054749250,-0.133456319570541,-0.115362517535686,0.023626770824194,0.043714825063944));
res += mul(Get(s1,dx,-dy), float4x4(-0.025823857635260,0.098906621336937,0.313977420330048,-0.033815644681454,0.085730694234371,0.042946510016918,0.174283832311630,-0.119235821068287,-0.147792130708694,0.064207524061203,-0.095888018608093,0.144369989633560,-0.022662203758955,0.056009072810411,-0.003459764877334,-0.121684864163399));
res += mul(Get(s1,dx,0), float4x4(0.145979881286621,0.096441723406315,0.323904067277908,-0.058218698948622,0.080659911036491,-0.069983176887035,-0.115685172379017,0.010882607661188,-0.184352830052376,0.003398017492145,-0.119677968323231,0.055895917117596,0.054858744144440,0.110200949013233,0.008506553247571,0.012396485544741));
res += mul(Get(s1,dx,dy), float4x4(0.032731518149376,0.116854786872864,-0.137682199478149,0.000473673164379,0.018448548391461,-0.131249666213989,-0.186304777860641,-0.038116913288832,-0.030797583982348,0.128457903862000,0.032353289425373,0.037209462374449,0.137538403272629,-0.083126977086067,0.196451529860497,0.001678426633589));
res += mul(Get(s2,-dx,-dy), float4x4(-0.068204075098038,0.002357145538554,-0.002257790882140,0.121588975191116,0.039427842944860,-0.159996345639229,0.031669206917286,0.169586330652237,-0.082519404590130,-0.003120146458969,-0.089340694248676,0.047415878623724,0.089438326656818,-0.078577466309071,-0.012565395794809,0.137520447373390));
res += mul(Get(s2,-dx,0), float4x4(0.032932709902525,-0.077694647014141,0.076752513647079,0.121973387897015,-0.051186982542276,-0.081953346729279,0.178122237324715,-0.087560877203941,0.053109861910343,-0.103186190128326,-0.179620295763016,-0.071651712059975,0.094205424189568,-0.155442833900452,-0.035429310053587,-0.029817704111338));
res += mul(Get(s2,-dx,dy), float4x4(0.041996788233519,-0.085376761853695,0.042390786111355,0.030173236504197,-0.080894760787487,-0.085885606706142,-0.000937707256526,0.103336513042450,0.069694593548775,-0.143983870744705,0.128693521022797,-0.277117908000946,0.286766141653061,-0.259405732154846,0.032428875565529,-0.054612785577774));
res += mul(Get(s2,0,-dy), float4x4(0.074334993958473,0.086745418608189,-0.027442680671811,0.103205479681492,-0.070938877761364,-0.116226181387901,-0.104089610278606,0.204233616590500,0.007709261961281,0.233195662498474,0.003131190547720,0.130175292491913,0.122559942305088,0.354343682527542,-0.178871557116508,-0.027634000405669));
res += mul(Get(s2,0,0), float4x4(0.146523520350456,0.059992045164108,-0.074554376304150,0.060216996818781,0.029909091070294,0.002353135030717,-0.110419631004333,-0.094416916370392,0.122519984841347,-0.096616499125957,0.109846509993076,0.040627554059029,0.128840386867523,0.230708926916122,-0.044557534158230,0.038671992719173));
res += mul(Get(s2,0,dy), float4x4(0.148580193519592,0.122586034238338,-0.043201081454754,0.057877831161022,0.052611980587244,0.034763187170029,-0.020305218175054,-0.004343955777586,0.215680241584778,-0.009355599991977,0.303679138422012,-0.205890476703644,0.053875345736742,0.294783979654312,-0.054075635969639,-0.069480210542679));
res += mul(Get(s2,dx,-dy), float4x4(0.021221449598670,-0.120321869850159,-0.007251765578985,0.076938666403294,-0.132325947284698,-0.163798481225967,-0.137405365705490,0.102275148034096,-0.109977662563324,0.195046678185463,-0.054311480373144,0.090183809399605,0.050936903804541,-0.056816402822733,0.118231393396854,0.007052880711854));
res += mul(Get(s2,dx,0), float4x4(0.084136091172695,-0.060622502118349,-0.025788884609938,-0.035583496093750,-0.004954489413649,-0.077770411968231,0.003478290513158,-0.158671677112579,-0.059823829680681,-0.116657190024853,0.157936364412308,0.041544128209352,0.154990702867508,-0.067072905600071,-0.047800973057747,0.093656182289124));
res += mul(Get(s2,dx,dy), float4x4(0.098295353353024,0.052581686526537,0.112006723880768,-0.066079467535019,-0.106754042208195,0.162703514099121,0.026187449693680,-0.098900869488716,-0.119797438383102,0.110367201268673,0.104552254080772,-0.059215150773525,0.309417992830276,-0.025331012904644,0.045445159077644,0.088987909257412));
res += mul(Get(s3,-dx,-dy), float4x4(0.041671264916658,0.371753036975861,-0.132272154092789,0.031307030469179,-0.118442609906197,-0.358722478151321,-0.219013601541519,-0.156109273433685,-0.018521640449762,0.020690780133009,0.054519966244698,0.096753187477589,-0.136100754141808,0.002768866717815,0.023344947025180,-0.155133947730064));
res += mul(Get(s3,-dx,0), float4x4(0.104375064373016,-0.218241080641747,-0.060926776379347,0.180520698428154,-0.119448803365231,-0.022257758304477,-0.180448278784752,-0.190057396888733,0.021638616919518,0.017375892028213,0.006853580474854,0.061709400266409,0.016989134252071,-0.010083121247590,-0.050063952803612,-0.146920114755630));
res += mul(Get(s3,-dx,dy), float4x4(0.183232873678207,-0.084148660302162,-0.005515696480870,0.122862033545971,0.061299979686737,-0.090228885412216,0.237061411142349,-0.169033765792847,-0.065825477242470,-0.021411392837763,0.069394953548908,-0.057050433009863,-0.018637482076883,-0.049951229244471,0.034858357161283,-0.215397775173187));
res += mul(Get(s3,0,-dy), float4x4(-0.085708133876324,0.030997632071376,-0.149513214826584,0.149036645889282,-0.222225800156593,-0.171805769205093,-0.012405420653522,0.028714505955577,-0.003094861982390,-0.170201599597931,0.077855445444584,-0.066851310431957,-0.214447110891342,0.094843491911888,0.020223991945386,0.173707991838455));
res += mul(Get(s3,0,0), float4x4(-0.126277536153793,-0.097469627857208,-0.035986900329590,-0.040127798914909,-0.088849507272243,0.061908721923828,-0.187868952751160,-0.022083453834057,0.147818103432655,-0.029150359332561,0.022211972624063,-0.108982153236866,0.203896358609200,0.032178945839405,-0.029278479516506,0.122196048498154));
res += mul(Get(s3,0,dy), float4x4(-0.005422736518085,0.008143379352987,-0.105159379541874,0.063362598419189,-0.041957907378674,-0.110030174255371,-0.025966668501496,-0.154705718159676,-0.006208385806531,-0.010879151523113,0.110680855810642,-0.113070525228977,0.147307187318802,0.029670225456357,0.014595376327634,-0.090151369571686));
res += mul(Get(s3,dx,-dy), float4x4(0.010217280127108,0.148744881153107,-0.137822821736336,0.040091268718243,-0.099616378545761,0.050195503979921,0.207858100533485,-0.143126547336578,0.036335945129395,-0.061086189001799,0.184454888105392,-0.007076740264893,-0.163778185844421,-0.005737839266658,0.065112456679344,0.111977785825729));
res += mul(Get(s3,dx,0), float4x4(-0.046961147338152,-0.031726483255625,-0.176609262824059,0.213064298033714,-0.105534918606281,-0.001217005308717,-0.126071482896805,-0.080333650112152,0.179789960384369,0.105379141867161,-0.059039324522018,-0.101044952869415,-0.067455314099789,0.019992588087916,-0.087480433285236,0.003539870260283));
res += mul(Get(s3,dx,dy), float4x4(0.108396649360657,0.092701725661755,-0.243224725127220,0.045701988041401,-0.204852059483528,0.137199938297272,-0.094337560236454,0.340079128742218,0.125933066010475,0.043220009654760,-0.030084298923612,-0.158740624785423,-0.030668279156089,-0.081872411072254,-0.026537530124187,-0.099410511553288));
return max(float4(0,0,0,0), res);
}
