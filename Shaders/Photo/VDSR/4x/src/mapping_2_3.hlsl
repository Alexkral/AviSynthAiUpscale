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
res += mul(Get(s0,-dx,-dy), float4x4(0.037725895643234,0.019131608307362,0.006884217727929,0.187708839774132,-0.048797540366650,-0.027677174657583,-0.046629779040813,0.033762000501156,0.093955956399441,0.066505134105682,-0.024160107597709,0.027403183281422,0.252596110105515,0.091625712811947,-0.084320493042469,0.135559439659119));
res += mul(Get(s0,-dx,0), float4x4(0.114592723548412,-0.131523445248604,0.006856191903353,0.126385867595673,-0.249833554029465,0.251531451940536,-0.008163497783244,-0.094552814960480,-0.098465070128441,0.120291106402874,0.052043817937374,-0.004851307719946,-0.181624427437782,-0.030325196683407,0.148675531148911,0.174087226390839));
res += mul(Get(s0,-dx,dy), float4x4(0.029367879033089,-0.085053861141205,-0.224592939019203,-0.170877605676651,-0.086132667958736,-0.211133778095245,-0.021002439782023,-0.083508677780628,0.011027974076569,-0.030542716383934,0.047132730484009,-0.048313163220882,-0.039135951548815,-0.039727788418531,-0.131975829601288,-0.024443302303553));
res += mul(Get(s0,0,-dy), float4x4(-0.180769756436348,-0.149664953351021,0.010080010630190,-0.027674430981278,-0.008298274129629,-0.115876868367195,0.112628489732742,-0.068409003317356,-0.114260792732239,0.129394993185997,-0.082605935633183,-0.040621835738420,-0.020650761201978,-0.044301874935627,0.013811941258609,0.081416703760624));
res += mul(Get(s0,0,0), float4x4(-0.175023585557938,-0.029833599925041,-0.236057341098785,-0.206886738538742,0.070905849337578,0.000207587931072,0.057785905897617,0.065196081995964,0.018071331083775,0.018985532224178,0.134330421686172,0.039019409567118,0.145718976855278,-0.042092602699995,0.230833113193512,-0.023923948407173));
res += mul(Get(s0,0,dy), float4x4(-0.076893970370293,0.063482567667961,-0.115319237112999,0.201700806617737,0.018267067149282,0.192809164524078,-0.024726770818233,-0.064656689763069,-0.163456633687019,-0.174464181065559,0.028842503204942,0.039735190570354,-0.007343868259341,0.109417699277401,0.080083094537258,-0.077267579734325));
res += mul(Get(s0,dx,-dy), float4x4(0.001669387565926,0.062084600329399,0.015609639696777,-0.116561882197857,0.120211161673069,-0.048168312758207,0.069123074412346,-0.025246035307646,-0.140700042247772,0.121492050588131,0.061430133879185,-0.150092735886574,0.138350829482079,0.142404943704605,0.136234045028687,0.056324798613787));
res += mul(Get(s0,dx,0), float4x4(-0.064349725842476,-0.135054826736450,-0.163881435990334,-0.261444061994553,0.074365720152855,-0.019883094355464,-0.097550421953201,-0.015803324058652,-0.021094197407365,0.088824212551117,-0.151694133877754,0.149393901228905,-0.101911500096321,-0.161542668938637,-0.125602662563324,0.058172747492790));
res += mul(Get(s0,dx,dy), float4x4(-0.090149283409119,0.036059807986021,-0.063536629080772,0.081809908151627,-0.023275433108211,0.146274238824844,-0.100058123469353,-0.196306735277176,-0.092444822192192,0.164854794740677,0.046589691191912,0.027511905878782,0.082578003406525,-0.162340819835663,0.076008185744286,-0.109857738018036));
res += mul(Get(s1,-dx,-dy), float4x4(0.016989780589938,-0.022498471662402,0.173026487231255,0.091929361224174,-0.005572202615440,-0.031436212360859,0.040945690125227,-0.003597768256441,-0.084127575159073,-0.041256461292505,0.041866265237331,-0.080366261303425,-0.062765635550022,-0.038988769054413,0.182323500514030,-0.102578766644001));
res += mul(Get(s1,-dx,0), float4x4(0.154886633157730,0.021297816187143,-0.028443075716496,-0.178065523505211,-0.079556018114090,-0.110093377530575,-0.190452679991722,0.035835999995470,0.012193454429507,0.241848275065422,-0.137242868542671,-0.196594759821892,0.034200359135866,-0.082599334418774,0.166984766721725,0.086612872779369));
res += mul(Get(s1,-dx,dy), float4x4(0.102679796516895,-0.034266762435436,0.215392395853996,-0.126533940434456,-0.144265279173851,-0.166612848639488,-0.024274080991745,0.303928881883621,-0.019479164853692,0.198848322033882,0.141193598508835,0.092456467449665,-0.302909910678864,0.175619453191757,-0.015805887058377,0.162822455167770));
res += mul(Get(s1,0,-dy), float4x4(0.207623824477196,0.243249744176865,-0.200656145811081,-0.083814367651939,-0.124298430979252,0.106643557548523,0.045690100640059,-0.147253587841988,0.279872208833694,-0.047398708760738,0.023186938837171,-0.097751095890999,0.022595079615712,0.016938686370850,0.218135759234428,-0.043103471398354));
res += mul(Get(s1,0,0), float4x4(0.067504256963730,0.150651276111603,0.124693058431149,0.141958370804787,0.091401129961014,0.122591152787209,-0.028324693441391,-0.144712835550308,-0.087106078863144,0.084829412400723,-0.055087003856897,-0.069134131073952,0.058580242097378,0.052122782915831,0.035348765552044,-0.069967329502106));
res += mul(Get(s1,0,dy), float4x4(-0.123474203050137,0.014713796786964,-0.287354648113251,0.231012135744095,-0.044158041477203,-0.120561353862286,0.062969274818897,0.014021961949766,-0.215935498476028,-0.048070654273033,-0.008045851252973,0.128059267997742,-0.148733079433441,-0.138074234127998,-0.092526800930500,0.074283123016357));
res += mul(Get(s1,dx,-dy), float4x4(0.098597057163715,-0.024171274155378,-0.097715713083744,-0.106360733509064,0.082730256021023,0.044369678944349,-0.043118763715029,0.180318340659142,-0.000130517495563,0.065733462572098,0.024907603859901,0.022204272449017,-0.019729955121875,0.149154677987099,-0.116631001234055,-0.174615204334259));
res += mul(Get(s1,dx,0), float4x4(0.093547523021698,-0.049474924802780,-0.033375166356564,0.162194773554802,0.056014139205217,0.053523562848568,-0.179930493235588,0.231786027550697,0.090075194835663,-0.170487403869629,0.268524259328842,0.077208928763866,-0.012716538272798,0.296802520751953,0.004508749116212,0.045909069478512));
res += mul(Get(s1,dx,dy), float4x4(-0.239730551838875,0.063795968890190,0.015634873881936,0.074068576097488,-0.030294980853796,-0.017150802537799,-0.144208714365959,0.030949834734201,0.078131601214409,0.045752555131912,-0.037989061325788,0.135856807231903,-0.020032064989209,-0.021989071741700,0.021460397168994,0.026615388691425));
res += mul(Get(s2,-dx,-dy), float4x4(0.137706786394119,0.221405178308487,0.084807299077511,-0.080523245036602,-0.176146790385246,-0.171346008777618,-0.209260135889053,-0.087819643318653,0.071736253798008,0.180060535669327,-0.038251839578152,-0.086537487804890,0.083205305039883,0.126165688037872,0.001867397804745,0.074322745203972));
res += mul(Get(s2,-dx,0), float4x4(0.038110975176096,0.051140725612640,-0.086689099669456,-0.003408466000110,0.026016544550657,0.157949134707451,0.052253004163504,0.079850114881992,0.036942962557077,0.045085679739714,0.128762483596802,0.079724498093128,-0.116509787738323,0.046492539346218,-0.197053074836731,0.082227811217308));
res += mul(Get(s2,-dx,dy), float4x4(-0.079617999494076,-0.151042580604553,0.057931009680033,0.176576033234596,-0.018664550036192,-0.068364322185516,0.019340721890330,0.065203778445721,0.014394562691450,-0.147093310952187,-0.121973976492882,-0.068310916423798,-0.022609004750848,0.231989443302155,-0.050480525940657,0.049904678016901));
res += mul(Get(s2,0,-dy), float4x4(-0.070200696587563,0.007761034648865,0.087175495922565,-0.032126415520906,-0.097548142075539,-0.157900214195251,0.164778113365173,0.039432339370251,-0.070492208003998,-0.093930698931217,-0.399567484855652,0.045127898454666,0.137469932436943,-0.040640410035849,-0.068045049905777,-0.150075569748878));
res += mul(Get(s2,0,0), float4x4(0.039631873369217,0.046588420867920,0.256131052970886,0.009701495058835,-0.060436509549618,0.013132014311850,-0.128912344574928,0.086582876741886,0.274414122104645,0.116300314664841,0.346168249845505,-0.083914563059807,0.102995485067368,-0.059760145843029,-0.070260889828205,0.054526600986719));
res += mul(Get(s2,0,dy), float4x4(-0.016711711883545,-0.124731309711933,0.005911606363952,-0.111109256744385,-0.005141030997038,0.110069110989571,-0.102974079549313,-0.031539980322123,0.130344241857529,0.195931091904640,0.087244741618633,0.172515526413918,0.104641288518906,-0.001513007329777,0.010024205781519,0.007883214391768));
res += mul(Get(s2,dx,-dy), float4x4(0.023484079167247,0.075491584837437,0.208447784185410,0.179920464754105,-0.172401174902916,0.119693420827389,-0.087036550045013,0.097358591854572,-0.039674449712038,-0.054666984826326,-0.066360607743263,0.044525198638439,0.174079656600952,-0.115674063563347,-0.165463477373123,0.031183911487460));
res += mul(Get(s2,dx,0), float4x4(0.018541330471635,-0.080745637416840,0.128577709197998,-0.060403633862734,0.070130214095116,0.101741932332516,-0.084980830550194,0.082627639174461,-0.028899936005473,-0.139364242553711,-0.060056321322918,0.047728184610605,-0.067025601863861,-0.040794525295496,0.192131474614143,-0.028239104896784));
res += mul(Get(s2,dx,dy), float4x4(0.016270395368338,0.038336031138897,-0.016528738662601,0.057785440236330,0.000736618123483,0.117112323641777,0.058881454169750,-0.028813874348998,-0.087050788104534,0.096609920263290,-0.106529146432877,0.006896297913045,-0.147865116596222,0.091276466846466,0.112113989889622,0.003761141095310));
res += mul(Get(s3,-dx,-dy), float4x4(0.001361521193758,0.024050369858742,0.085506074130535,-0.016509952023625,-0.007763254921883,-0.217178404331207,0.002000365406275,-0.022209497168660,-0.101671785116196,0.146506875753403,0.213103443384171,-0.047291342169046,-0.174307674169540,-0.034797344356775,-0.059219099581242,0.068084977567196));
res += mul(Get(s3,-dx,0), float4x4(0.030436899513006,0.069035813212395,0.117180861532688,-0.016648847609758,-0.017456585541368,0.177778139710426,-0.014656851999462,-0.048842296004295,0.149053126573563,0.098816141486168,-0.026042241603136,0.234852924942970,0.085565574467182,0.266998142004013,0.052704367786646,-0.077698700129986));
res += mul(Get(s3,-dx,dy), float4x4(0.151987046003342,0.000819431152195,0.115169048309326,0.073483161628246,-0.071356683969498,0.135453477501869,0.053153187036514,0.036362711340189,0.121412590146065,0.040833525359631,-0.129253178834915,0.053483255207539,-0.091895870864391,0.155435308814049,0.107039280235767,-0.085800647735596));
res += mul(Get(s3,0,-dy), float4x4(-0.200669005513191,-0.026375323534012,0.097179152071476,0.060948755592108,0.047015916556120,-0.006125196814537,-0.110403008759022,-0.060429360717535,-0.008431443013251,-0.065893158316612,-0.013452528975904,-0.078680969774723,0.054363843053579,0.001725087291561,-0.170986473560333,-0.359046965837479));
res += mul(Get(s3,0,0), float4x4(-0.083115383982658,-0.111841343343258,-0.047189921140671,-0.071009010076523,0.286394506692886,-0.316554963588715,0.199806928634644,-0.219976007938385,-0.003243478713557,-0.086283147335052,0.053123742341995,0.010935566388071,0.138396322727203,0.049234047532082,-0.090648889541626,-0.297579109668732));
res += mul(Get(s3,0,dy), float4x4(0.131843566894531,0.011137745343149,0.120632298290730,-0.311536520719528,0.094506360590458,-0.171344891190529,-0.047480404376984,-0.192979812622070,-0.043998003005981,0.021412320435047,-0.083855204284191,0.033048637211323,0.071206189692020,-0.182815805077553,0.161159858107567,0.129826009273529));
res += mul(Get(s3,dx,-dy), float4x4(-0.133127212524414,0.047093886882067,0.031968541443348,0.033931225538254,0.097783707082272,0.045867182314396,-0.037274587899446,0.078689552843571,0.011758608743548,0.043484684079885,0.065322898328304,0.175210386514664,-0.092988073825836,-0.140603244304657,-0.239393934607506,-0.221144109964371));
res += mul(Get(s3,dx,0), float4x4(-0.127899900078773,-0.047898650169373,0.076026864349842,-0.122420467436314,-0.346012920141220,0.103092700242996,-0.027512105181813,-0.021697927266359,-0.013592991046607,-0.012797404080629,-0.070101499557495,0.033114850521088,0.125599071383476,0.041489310562611,-0.052849095314741,-0.020828703418374));
res += mul(Get(s3,dx,dy), float4x4(0.045007351785898,0.020011790096760,-0.086816512048244,0.034409731626511,-0.156669482588768,0.087196931242943,0.139689520001411,0.136927604675293,-0.044514287263155,-0.214705497026443,0.109894163906574,-0.084019824862480,-0.178954720497131,-0.045309618115425,0.113655552268028,-0.177914783358574));
return max(float4(0,0,0,0), res);
}
