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
res += mul(Get(s0,-dx,-dy), float4x4(0.082977041602135,-0.040525503456593,0.176013037562370,-0.025575321167707,0.023872442543507,0.151573464274406,0.173280924558640,0.147131964564323,-0.036151342093945,0.046296458691359,0.158754527568817,-0.049576502293348,0.279255807399750,-0.011840284802020,0.151403740048409,-0.005732251796871));
res += mul(Get(s0,-dx,0), float4x4(0.019974483177066,0.051341563463211,0.075996503233910,0.041221462190151,-0.009423363953829,-0.105190761387348,-0.080084830522537,-0.063849851489067,-0.031319122761488,0.049723949283361,-0.019244816154242,0.050326582044363,-0.072411276400089,0.150989472866058,-0.188256904482841,-0.083107262849808));
res += mul(Get(s0,-dx,dy), float4x4(-0.118771702051163,0.021548621356487,-0.002654106821865,-0.046789158135653,0.078596636652946,0.177506819367409,-0.010708130896091,-0.003213754156604,-0.019279776141047,0.062726192176342,-0.010632617399096,0.100363120436668,-0.116430424153805,-0.052349440753460,-0.109817296266556,-0.088912084698677));
res += mul(Get(s0,0,-dy), float4x4(0.041578967124224,-0.174697637557983,-0.136939898133278,0.031072324141860,-0.079553931951523,0.126960068941116,0.060699868947268,-0.045150242745876,0.121338613331318,0.033672187477350,-0.072858817875385,-0.019925240427256,0.198747664690018,0.131805419921875,-0.083733707666397,-0.096184641122818));
res += mul(Get(s0,0,0), float4x4(0.057909537106752,-0.084885157644749,0.011865306645632,-0.176999583840370,0.140178784728050,0.121121369302273,-0.022667847573757,-0.128226310014725,0.144953027367592,0.124646052718163,0.265816837549210,0.235607400536537,0.068288542330265,0.005057288799435,-0.148516103625298,-0.001463730121031));
res += mul(Get(s0,0,dy), float4x4(0.048805072903633,0.067890971899033,0.040798962116241,0.114165209233761,-0.059123463928699,0.060825549066067,-0.104618869721889,-0.023174906149507,0.021543508395553,0.047776684165001,0.188515052199364,-0.089479833841324,0.049786910414696,0.009528430178761,-0.161664947867393,-0.028246851637959));
res += mul(Get(s0,dx,-dy), float4x4(0.028092315420508,-0.075645014643669,0.059911608695984,-0.094116985797882,0.044315572828054,-0.048025321215391,0.164552554488182,-0.018356332555413,0.162937790155411,-0.005414651706815,-0.005893197841942,-0.144054725766182,0.075442083179951,0.065459251403809,0.057305514812469,0.127400606870651));
res += mul(Get(s0,dx,0), float4x4(0.127161443233490,-0.121833972632885,-0.037656281143427,-0.017310731112957,-0.061944495886564,0.205692604184151,-0.322947442531586,0.003442700253800,0.089768402278423,0.108030900359154,-0.032428402453661,0.188143476843834,-0.059610616415739,-0.046401351690292,-0.019807826727629,-0.008107789792120));
res += mul(Get(s0,dx,dy), float4x4(-0.051483981311321,-0.078252293169498,-0.099140755832195,0.030456567183137,-0.014122256077826,0.141358718276024,0.045680794864893,-0.098068371415138,0.085695289075375,0.175310879945755,-0.083212584257126,-0.082972347736359,-0.133597820997238,-0.270994454622269,-0.065322019159794,0.179038360714912));
res += mul(Get(s1,-dx,-dy), float4x4(0.053096793591976,-0.236139550805092,-0.058460783213377,-0.110218085348606,0.190353840589523,0.119408950209618,-0.124842017889023,0.063960179686546,0.100759916007519,-0.054480478167534,-0.055470000952482,0.071843288838863,0.169975757598877,-0.014011295512319,-0.031412083655596,0.053411144763231));
res += mul(Get(s1,-dx,0), float4x4(0.084206312894821,-0.199606895446777,-0.040817484259605,-0.185945287346840,-0.105226136744022,-0.153140261769295,-0.069631040096283,-0.163301557302475,-0.032127276062965,0.034689310938120,0.076383821666241,0.071120768785477,0.074989721179008,-0.033134989440441,0.035197690129280,0.027151588350534));
res += mul(Get(s1,-dx,dy), float4x4(0.073620580136776,0.051202978938818,-0.124668598175049,0.037854790687561,0.000082679092884,-0.096969567239285,-0.058282997459173,-0.047966036945581,-0.032803568989038,-0.147330328822136,0.137609064579010,0.009116409346461,-0.056080874055624,0.084096446633339,-0.050498943775892,0.068505167961121));
res += mul(Get(s1,0,-dy), float4x4(0.058955732733011,-0.113236583769321,-0.059588626027107,0.119621917605400,-0.132368132472038,0.060695853084326,-0.024940395727754,-0.070615097880363,0.156622454524040,0.040503926575184,0.105942182242870,-0.016261706128716,0.142177939414978,0.182452619075775,-0.068628773093224,-0.004690683446825));
res += mul(Get(s1,0,0), float4x4(-0.121294625103474,-0.074445821344852,-0.132544279098511,-0.043916162103415,0.023947773501277,0.221917316317558,-0.014475046657026,-0.053701583296061,0.230559900403023,-0.125013023614883,0.035426698625088,-0.145955249667168,0.084399037063122,0.053482808172703,-0.105439826846123,-0.001316569861956));
res += mul(Get(s1,0,dy), float4x4(-0.001063323696144,-0.084497749805450,0.057056181132793,0.139504462480545,0.119040176272392,0.008658037520945,-0.230104535818100,-0.018082648515701,-0.089935004711151,0.009771800599992,0.109055511653423,0.031560432165861,-0.026753928512335,-0.100197941064835,-0.079349637031555,0.178362548351288));
res += mul(Get(s1,dx,-dy), float4x4(-0.075358785688877,0.119365870952606,0.013606274500489,-0.000906444503926,0.191126361489296,0.035015843808651,-0.140227317810059,0.022661913186312,-0.014229137450457,0.003447214839980,0.124885410070419,0.199365302920341,0.069615110754967,0.118363112211227,-0.141919806599617,0.006306422874331));
res += mul(Get(s1,dx,0), float4x4(-0.229304760694504,-0.038098841905594,-0.078880406916142,-0.053524866700172,-0.042869053781033,0.113015487790108,-0.073659509420395,0.027017096057534,0.047529086470604,-0.080454871058464,0.052887607365847,0.079990431666374,0.023421898484230,-0.070282742381096,-0.031543098390102,0.079650938510895));
res += mul(Get(s1,dx,dy), float4x4(-0.067062780261040,-0.030341386795044,0.001566922641359,-0.131790354847908,-0.111256562173367,0.155369758605957,-0.035805772989988,-0.119283393025398,0.106668367981911,0.162911415100098,0.213547959923744,-0.022641409188509,0.195159167051315,-0.220997005701065,-0.075356118381023,0.092748321592808));
res += mul(Get(s2,-dx,-dy), float4x4(-0.056018773466349,-0.118135325610638,0.151637867093086,0.209166675806046,0.020663978531957,-0.126966714859009,0.042805593460798,0.210140720009804,-0.017934942618012,0.176963150501251,0.059562031179667,0.004952347371727,-0.022443255409598,0.084662675857544,0.150747954845428,0.012326775118709));
res += mul(Get(s2,-dx,0), float4x4(0.092594973742962,0.084482677280903,0.044803537428379,0.014088023453951,-0.235808327794075,-0.084577620029449,-0.093270592391491,-0.070973649621010,-0.050375755876303,-0.051179852336645,0.151438429951668,0.028443515300751,0.088352113962173,-0.097722187638283,-0.185897231101990,-0.207637861371040));
res += mul(Get(s2,-dx,dy), float4x4(0.126586332917213,0.163188710808754,-0.224397137761116,0.062497917562723,-0.116344742476940,-0.004970225505531,-0.021215252578259,-0.035284083336592,0.053426899015903,0.042340207844973,0.203570798039436,-0.115433447062969,0.095574080944061,-0.070707745850086,-0.074770003557205,-0.009752040728927));
res += mul(Get(s2,0,-dy), float4x4(-0.093691296875477,0.082472898066044,0.082295939326286,0.004229717887938,-0.206982731819153,-0.005457735620439,-0.012904521077871,0.041749108582735,0.117865793406963,-0.057127434760332,0.234945237636566,0.033751435577869,-0.188492447137833,-0.073602840304375,-0.130728349089622,-0.120145328342915));
res += mul(Get(s2,0,0), float4x4(0.026977783069015,0.015984818339348,-0.090909294784069,-0.063075758516788,0.074868567287922,-0.114872798323631,-0.027340704575181,0.048819523304701,0.163812756538391,0.174916669726372,-0.113293096423149,-0.009323961101472,-0.009177011437714,-0.075088553130627,0.092892706394196,0.246326595544815));
res += mul(Get(s2,0,dy), float4x4(0.120527088642120,-0.182468235492706,-0.193876206874847,-0.031396724283695,-0.029784066602588,0.070649005472660,0.081114441156387,0.156059041619301,0.148828938603401,-0.069793514907360,-0.085173472762108,0.110814154148102,0.036817196756601,-0.066616497933865,0.186390057206154,0.004709525499493));
res += mul(Get(s2,dx,-dy), float4x4(0.166103675961494,-0.159990981221199,-0.006609945558012,0.057888265699148,0.351978868246078,0.051251824945211,-0.086421839892864,-0.015469539910555,0.112387388944626,0.105061583220959,0.209153026342392,0.094736985862255,-0.074193798005581,-0.204714000225067,0.033247604966164,0.017289383336902));
res += mul(Get(s2,dx,0), float4x4(-0.203891590237617,0.063962496817112,0.075553879141808,-0.124202229082584,0.090788230299950,0.068350426852703,-0.036042239516973,0.188347011804581,-0.008879011496902,-0.041982632130384,0.030988728627563,0.226919978857040,-0.090116500854492,-0.029985828325152,0.116979956626892,0.034612584859133));
res += mul(Get(s2,dx,dy), float4x4(-0.070269167423248,0.001398466061801,-0.008271746337414,0.112539052963257,0.148708939552307,-0.023032395169139,-0.049158688634634,-0.090335026383400,-0.019299473613501,0.094150222837925,-0.068169660866261,0.131216630339622,-0.003797460813075,0.034888796508312,0.127629652619362,0.014911716803908));
res += mul(Get(s3,-dx,-dy), float4x4(-0.085910595953465,-0.070143923163414,0.081639207899570,-0.204370394349098,0.014428061433136,-0.118778809905052,-0.085705630481243,-0.179962292313576,0.020921524614096,0.050357028841972,-0.044258449226618,-0.095029719173908,-0.114038221538067,0.045621518045664,0.044417463243008,0.015427127480507));
res += mul(Get(s3,-dx,0), float4x4(-0.090385742485523,-0.087490484118462,-0.056256007403135,0.215105563402176,0.045895930379629,0.153233498334885,0.069068521261215,-0.087631896138191,-0.197779238224030,-0.070938892662525,-0.226917326450348,-0.124325737357140,0.072621218860149,0.096918530762196,0.138707309961319,-0.155156284570694));
res += mul(Get(s3,-dx,dy), float4x4(-0.152851954102516,-0.100860476493835,0.110129788517952,0.015192346647382,-0.204335495829582,0.020187925547361,-0.110986724495888,-0.107965558767319,-0.030967712402344,-0.056518860161304,-0.006938244681805,-0.032427489757538,-0.160736054182053,-0.133260473608971,0.007560208439827,-0.166448578238487));
res += mul(Get(s3,0,-dy), float4x4(0.009584289975464,-0.004507107194513,0.036295667290688,-0.071735791862011,-0.090093433856964,0.128492593765259,-0.138921678066254,0.024546081200242,-0.015241337008774,-0.036991409957409,0.218401029706001,0.110885351896286,-0.149312838912010,-0.236058846116066,-0.038561996072531,0.105155311524868));
res += mul(Get(s3,0,0), float4x4(0.051483914256096,-0.102041602134705,-0.129229068756104,-0.033566407859325,-0.158732891082764,0.048680476844311,0.023486951366067,0.030398400500417,0.052382811903954,0.074971824884415,0.017621910199523,-0.008798570372164,0.030881399288774,-0.167273104190826,-0.124318137764931,0.031304799020290));
res += mul(Get(s3,0,dy), float4x4(-0.250665754079819,-0.154925733804703,-0.065076440572739,0.158401876688004,0.015908909961581,0.037729687988758,-0.108513787388802,-0.017740894109011,0.100992895662785,-0.086897298693657,-0.121841259300709,0.017326498404145,0.037324860692024,-0.121751554310322,-0.011418715119362,0.014423379674554));
res += mul(Get(s3,dx,-dy), float4x4(-0.152411237359047,0.146019786596298,0.155483156442642,0.075446419417858,-0.105602197349072,0.061447698622942,0.150513559579849,0.113603882491589,-0.227598845958710,-0.165286406874657,0.011511610820889,-0.080609850585461,-0.016289621591568,-0.196296170353889,-0.121061392128468,0.004624830093235));
res += mul(Get(s3,dx,0), float4x4(-0.059548672288656,-0.087869323790073,-0.143939971923828,0.061989970505238,0.107111334800720,-0.052525497972965,0.059862509369850,-0.008807925507426,-0.016238711774349,-0.055593851953745,0.056286253035069,-0.119492448866367,0.042749155312777,-0.021278547123075,-0.047229416668415,-0.024949954822659));
res += mul(Get(s3,dx,dy), float4x4(0.014861457049847,0.026840072125196,0.019000574946404,-0.014204647392035,-0.146740704774857,0.078900486230850,-0.043028421700001,0.056502498686314,0.036837033927441,-0.012407001107931,-0.162717312574387,0.038643252104521,0.092592202126980,-0.046204078942537,-0.059973843395710,0.021353894844651));
return max(float4(0,0,0,0), res);
}
