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
float4 res = float4(-0.182734012603760,0.048186108469963,-0.059294611215591,-0.101425610482693);
res += mul(Get(s0,-dx,-dy), float4x4(0.135246619582176,0.093922398984432,0.068748101592064,0.102156385779381,-0.179895132780075,0.062302745878696,0.029769720509648,-0.057815589010715,0.024442939087749,-0.027859201654792,-0.058949518948793,0.070216923952103,-0.007354474160820,0.105084322392941,-0.046466410160065,-0.024678615853190));
res += mul(Get(s0,-dx,0), float4x4(0.182233795523643,0.221134364604950,0.123750053346157,0.064128428697586,0.131703630089760,-0.063517965376377,0.063839510083199,0.111198931932449,-0.091097854077816,-0.028561875224113,-0.026241246610880,-0.066864579916000,-0.083351641893387,-0.025373002514243,-0.012232397682965,0.009284692816436));
res += mul(Get(s0,-dx,dy), float4x4(-0.005493853241205,-0.248924970626831,-0.082892924547195,0.043022621423006,-0.153263792395592,0.065302759408951,-0.139413654804230,0.121951714158058,-0.005591282621026,0.026223227381706,0.005503795575351,0.098496548831463,0.125824704766273,0.099642060697079,0.020716717466712,0.044135306030512));
res += mul(Get(s0,0,-dy), float4x4(0.173411592841148,-0.027710201218724,0.173880577087402,0.135265558958054,0.013247425667942,0.066958792507648,0.035394564270973,-0.118719756603241,-0.296441137790680,-0.063104741275311,0.088456794619560,0.313376694917679,0.110160648822784,0.063928253948689,0.032840162515640,-0.020330533385277));
res += mul(Get(s0,0,0), float4x4(0.114233471453190,0.259534150362015,-0.091768912971020,0.014174371957779,0.286884158849716,0.040875982493162,0.085490658879280,0.051846161484718,-0.119152754545212,-0.337725937366486,0.118183523416519,0.169252261519432,0.126753136515617,-0.035249743610620,0.094261661171913,0.060895822942257));
res += mul(Get(s0,0,dy), float4x4(-0.115175850689411,-0.266109943389893,-0.083611242473125,-0.122682437300682,-0.027306787669659,-0.162767291069031,-0.112862005829811,0.015203828923404,0.185462862253189,0.126356020569801,0.105479456484318,-0.113623082637787,-0.030800044536591,-0.050514344125986,0.028488220646977,0.239023089408875));
res += mul(Get(s0,dx,-dy), float4x4(-0.160820901393890,0.081389397382736,0.043478783220053,-0.058370478451252,0.072597466409206,0.113485112786293,0.063562281429768,-0.098701663315296,-0.126467451453209,0.009268316440284,0.025368172675371,0.042874611914158,-0.023284057155252,0.042965404689312,0.101744756102562,0.051642224192619));
res += mul(Get(s0,dx,0), float4x4(-0.055967774242163,-0.212420955300331,0.083300277590752,0.093649551272392,0.238438233733177,-0.039217960089445,-0.025567019358277,-0.053880065679550,0.113855190575123,-0.010183621197939,0.037258971482515,-0.009609312750399,0.051343180239201,-0.017427388578653,0.061888936907053,0.118263304233551));
res += mul(Get(s0,dx,dy), float4x4(-0.005127865821123,-0.047994643449783,0.037303555756807,0.108138784766197,-0.065460458397865,-0.038378916680813,-0.055912345647812,0.009291118010879,0.066305004060268,0.162326991558075,0.036967899650335,0.056867945939302,-0.046757467091084,-0.192345008254051,0.071941472589970,-0.039738133549690));
res += mul(Get(s1,-dx,-dy), float4x4(0.031665869057178,-0.151547759771347,0.011295069940388,0.108728446066380,-0.052165724337101,-0.114639759063721,0.007471553981304,-0.089258886873722,-0.031663395464420,-0.029726013541222,0.057896569371223,0.141169205307961,0.014025695621967,-0.091508604586124,-0.141677111387253,-0.069860033690929));
res += mul(Get(s1,-dx,0), float4x4(-0.094224445521832,-0.011600865051150,-0.001104055671021,0.039875093847513,-0.131685987114906,-0.132668167352676,0.033522576093674,0.114143475890160,0.170114383101463,0.003380465321243,0.124783173203468,-0.062223426997662,-0.012338006868958,0.102832414209843,-0.192183136940002,-0.064119748771191));
res += mul(Get(s1,-dx,dy), float4x4(-0.116016186773777,-0.043374203145504,-0.136710420250893,0.032530564814806,0.128378555178642,0.138267248868942,0.078624412417412,0.019509743899107,-0.030968675389886,0.023597940802574,0.101804949343204,0.061347432434559,0.056951031088829,-0.016728457063437,0.052502427250147,0.132635846734047));
res += mul(Get(s1,0,-dy), float4x4(0.126700595021248,-0.028492840006948,0.207753837108612,0.447191596031189,-0.250686228275299,-0.061491344124079,-0.037173114717007,-0.006792884785682,0.063362061977386,0.158374547958374,-0.115401387214661,-0.281705945730209,-0.183928877115250,0.111781015992165,-0.126700535416603,-0.209539368748665));
res += mul(Get(s1,0,0), float4x4(-0.165418922901154,0.020347055047750,-0.037994332611561,-0.528928518295288,-0.234502822160721,0.055189229547977,0.136958226561546,-0.361713767051697,-0.186565041542053,0.255410969257355,-0.460883289575577,0.023818377405405,-0.032705463469028,-0.072043493390083,0.138370633125305,0.301818728446960));
res += mul(Get(s1,0,dy), float4x4(-0.193690225481987,0.089356936514378,0.051804870367050,0.142122834920883,0.050805546343327,0.111018180847168,0.044106848537922,0.154577970504761,0.246301338076591,0.040006689727306,0.254851430654526,-0.002412168309093,0.134030535817146,0.068216651678085,0.137955144047737,0.155615165829659));
res += mul(Get(s1,dx,-dy), float4x4(0.129165172576904,-0.005096766632050,0.007799520622939,0.009554774500430,0.030858052894473,-0.166744917631149,0.125088125467300,-0.113490261137486,-0.143906891345978,-0.073362745344639,-0.096188858151436,-0.031568862497807,0.036233920603991,-0.145208165049553,-0.060284148901701,-0.040668506175280));
res += mul(Get(s1,dx,0), float4x4(-0.401291817426682,-0.161059409379959,0.048919819295406,0.094745770096779,0.134457230567932,-0.016105849295855,0.079669386148453,0.072285741567612,-0.322628468275070,0.016056990250945,-0.233631834387779,-0.105732493102551,-0.024081105366349,0.022173743695021,-0.094532340764999,0.126392826437950));
res += mul(Get(s1,dx,dy), float4x4(0.078327722847462,0.091772563755512,-0.072427451610565,-0.013138354755938,-0.034743972122669,0.006608807016164,0.040387257933617,-0.083424568176270,-0.057405933737755,0.073302164673805,0.058059424161911,0.047192309051752,-0.020502554252744,0.057028830051422,-0.007605546154082,-0.053497873246670));
res += mul(Get(s2,-dx,-dy), float4x4(0.040405638515949,-0.028924364596605,0.050687693059444,-0.052302267402411,0.125246673822403,-0.222721263766289,-0.010306181386113,0.071269132196903,0.212537482380867,-0.012651253491640,-0.114537477493286,0.100923337042332,0.078400418162346,-0.158565387129784,-0.003636439330876,0.365551292896271));
res += mul(Get(s2,-dx,0), float4x4(0.020103497430682,0.046754214912653,0.146770969033241,-0.031734108924866,-0.131475344300270,-0.005271610803902,-0.047727204859257,-0.066600933670998,-0.028722589835525,0.065899126231670,-0.187333703041077,0.053693667054176,-0.172028988599777,-0.107470713555813,0.047506984323263,0.036716707050800));
res += mul(Get(s2,-dx,dy), float4x4(-0.108483038842678,0.025199647992849,-0.040872350335121,0.022233292460442,-0.103025674819946,-0.199881523847580,0.011374806053936,-0.105246633291245,0.060646574944258,-0.061250515282154,-0.123573035001755,0.121435694396496,0.066328346729279,0.412030845880508,0.038081351667643,-0.147630557417870));
res += mul(Get(s2,0,-dy), float4x4(0.320244103670120,-0.213659599423409,0.177409663796425,0.168428421020508,0.208627685904503,0.301515489816666,0.054086919873953,-0.152499541640282,-0.002417460549623,-0.015099641866982,0.104537300765514,0.165010064840317,-0.104958541691303,-0.016227943822742,-0.004583041183650,-0.040612820535898));
res += mul(Get(s2,0,0), float4x4(-0.212869599461555,0.104828149080276,-0.173784598708153,-0.304721534252167,0.097147226333618,-0.160582080483437,0.130811452865601,-0.003816491691396,0.231226414442062,0.122353173792362,0.060292206704617,-0.019998332485557,-0.472586721181870,-0.411209464073181,0.029152505099773,-0.042945288121700));
res += mul(Get(s2,0,dy), float4x4(-0.076295785605907,0.146432816982269,-0.159010574221611,-0.485574185848236,-0.023898383602500,0.134277507662773,0.014314107596874,0.026137398555875,0.013433622196317,-0.313967555761337,-0.027768775820732,-0.204444199800491,0.130644977092743,0.313013911247253,0.003035377711058,-0.328031450510025));
res += mul(Get(s2,dx,-dy), float4x4(0.215414658188820,0.110523529350758,0.046355415135622,0.024121547117829,-0.048571951687336,-0.027858909219503,-0.046289555728436,-0.045737329870462,-0.157672569155693,-0.150055482983589,-0.013704785145819,0.075847953557968,-0.103944294154644,0.073390305042267,-0.020391795784235,0.179843619465828));
res += mul(Get(s2,dx,0), float4x4(-0.115663513541222,0.088236652314663,0.001103179762140,-0.182130500674248,0.031524281948805,-0.045597191900015,-0.037033569067717,0.125610560178757,-0.090239204466343,0.099780671298504,-0.012207658961415,-0.050674818456173,-0.176739588379860,0.030825495719910,0.024902047589421,-0.101276755332947));
res += mul(Get(s2,dx,dy), float4x4(-0.001008975203149,-0.023620398715138,-0.120473966002464,-0.110864028334618,0.077051021158695,0.004688908811659,-0.004980836063623,0.052934776991606,0.044942893087864,-0.187071517109871,-0.040555715560913,0.022483900189400,0.057335693389177,0.293624073266983,0.057239491492510,-0.247130900621414));
res += mul(Get(s3,-dx,-dy), float4x4(-0.420940130949020,-0.278599947690964,-0.010994646698236,0.277552485466003,0.137350216507912,-0.213907882571220,0.026979725807905,-0.093509331345558,-0.065793961286545,-0.100006319582462,0.013501153327525,-0.041719339787960,-0.040408510714769,0.073092259466648,0.023772908374667,-0.106409005820751));
res += mul(Get(s3,-dx,0), float4x4(0.171530455350876,-0.179910048842430,-0.137347891926765,-0.256863296031952,0.068464972078800,-0.021818693727255,0.035488914698362,0.022898217663169,-0.072765417397022,0.075167253613472,-0.052123378962278,0.034980464726686,-0.042146261781454,-0.414221912622452,-0.021690241992474,-0.192658215761185));
res += mul(Get(s3,-dx,dy), float4x4(0.019701503217220,-0.154688075184822,-0.084979988634586,-0.357354968786240,0.170359119772911,0.140388995409012,-0.137667432427406,-0.122437544167042,0.007032220251858,0.086389079689980,0.004468566272408,-0.059437509626150,-0.062742121517658,0.159599199891090,0.044490326195955,0.182080104947090));
res += mul(Get(s3,0,-dy), float4x4(-0.147325441241264,-0.038447000086308,0.054081626236439,0.020185865461826,-0.183633789420128,0.117089994251728,0.000120154480101,-0.030273459851742,-0.109653703868389,-0.157017737627029,0.146467730402946,-0.086226776242256,0.036421924829483,0.106819264590740,-0.093999445438385,0.015170043334365));
res += mul(Get(s3,0,0), float4x4(0.134293705224991,-0.033859282732010,0.026584820821881,-0.050839960575104,0.152942717075348,0.209401756525040,-0.054311316460371,0.410643309354782,0.153809338808060,-0.050471890717745,0.297432810068130,0.149399295449257,-0.061144646257162,-0.291620373725891,0.055546652525663,-0.182018548250198));
res += mul(Get(s3,0,dy), float4x4(-0.061440095305443,0.215891525149345,-0.005308459047228,-0.016584217548370,-0.213917061686516,-0.286315441131592,-0.133626684546471,-0.178748488426208,0.015120060183108,-0.087223514914513,-0.019020160660148,-0.163742765784264,0.035319611430168,0.151552930474281,0.056620869785547,0.294063448905945));
res += mul(Get(s3,dx,-dy), float4x4(-0.026612514629960,-0.039075534790754,0.030631132423878,0.087077021598816,-0.058930583298206,-0.077641174197197,0.004379786085337,0.033704776316881,0.049383763223886,-0.327682703733444,0.008300809189677,0.132761701941490,0.031550396233797,-0.013361293822527,0.008574350737035,-0.223632976412773));
res += mul(Get(s3,dx,0), float4x4(0.049226321280003,0.104182250797749,0.020925678312778,0.075158663094044,0.145400822162628,0.056374188512564,0.046170368790627,0.058358620852232,-0.114867761731148,0.114974118769169,-0.237844944000244,-0.341444492340088,0.036828584969044,0.026857476681471,0.006922626867890,0.115951180458069));
res += mul(Get(s3,dx,dy), float4x4(0.022153124213219,-0.095552608370781,-0.015581487677991,-0.058501977473497,0.024042271077633,-0.071257814764977,-0.077785134315491,-0.098336599767208,-0.122128963470459,-0.119153805077076,0.012916648760438,-0.055087044835091,-0.080667652189732,0.072245791554451,0.065012805163860,0.057496510446072));
res += mul(Get(s4,-dx,-dy), float4x4(-0.009002608247101,-0.077360436320305,0.044331680983305,0.036303080618382,0.036369316279888,0.007134411949664,0.163548827171326,0.002792515559122,-0.036827098578215,-0.017984932288527,-0.042652234435081,0.108500175178051,-0.018109638243914,-0.162348419427872,0.001912677777000,0.252400606870651));
res += mul(Get(s4,-dx,0), float4x4(0.127668544650078,0.012599429115653,-0.060624152421951,0.001550501445308,0.118154272437096,0.037177395075560,0.076922118663788,-0.068112283945084,-0.122942604124546,0.047094725072384,-0.130299195647240,-0.082950085401535,-0.045248512178659,-0.044328764081001,-0.021548660472035,-0.371978223323822));
res += mul(Get(s4,-dx,dy), float4x4(0.151980236172676,-0.216238334774971,-0.146254569292068,0.000146883496200,-0.111062176525593,0.050245653837919,-0.134204015135765,-0.024954982101917,0.106720723211765,0.050369326025248,0.061293721199036,0.061456114053726,0.119321338832378,0.111873552203178,-0.031370859593153,-0.012366769835353));
res += mul(Get(s4,0,-dy), float4x4(-0.278393805027008,-0.002530887955800,-0.006506009493023,0.106611631810665,-0.005422207992524,0.192102223634720,0.067145526409149,0.096096090972424,0.125198110938072,-0.021161168813705,-0.075040206313133,0.131766602396965,-0.072723053395748,0.096039682626724,0.037634354084730,0.226916939020157));
res += mul(Get(s4,0,0), float4x4(0.324497640132904,0.325021445751190,0.110916979610920,-0.033806126564741,-0.378765374422073,-0.159888431429863,-0.001340694958344,-0.135722994804382,-0.247018083930016,-0.003872429020703,0.318699151277542,0.220361158251762,-0.129520758986473,-0.002950241556391,-0.006882178597152,-0.241976335644722));
res += mul(Get(s4,0,dy), float4x4(-0.039183918386698,-0.264800667762756,-0.209494948387146,-0.444512784481049,0.196197852492332,0.157997310161591,0.211931198835373,0.060244768857956,0.223888546228409,0.194473341107368,0.202670484781265,0.048701040446758,0.001294145244174,0.035279538482428,0.064611703157425,0.146883144974709));
res += mul(Get(s4,dx,-dy), float4x4(-0.194891199469566,0.097033061087132,0.032892286777496,0.119310215115547,0.073230080306530,-0.054272182285786,0.093806631863117,0.089542433619499,0.056006796658039,0.083525270223618,0.048808269202709,0.075143009424210,-0.031097171828151,-0.113597944378853,-0.018871570006013,-0.009163965471089));
res += mul(Get(s4,dx,0), float4x4(-0.043789163231850,-0.139493033289909,0.153679132461548,0.026263633742929,-0.043344769626856,-0.186037197709084,-0.011585182510316,-0.147752657532692,-0.058363787829876,-0.117924831807613,0.038984209299088,-0.081506960093975,0.063261799514294,-0.054222907871008,-0.065789438784122,-0.012576605193317));
res += mul(Get(s4,dx,dy), float4x4(0.090922325849533,-0.107218436896801,0.055562604218721,-0.068083085119724,-0.003840690478683,0.074339874088764,0.087899141013622,-0.201572120189667,0.010295811109245,-0.060294199734926,0.055087909102440,0.125554382801056,0.135677531361580,0.335344642400742,-0.073956668376923,-0.016775850206614));
res += mul(Get(s5,-dx,-dy), float4x4(0.051540352404118,-0.121694825589657,0.044464096426964,0.156668886542320,-0.076578743755817,0.157659992575645,0.010917559266090,0.175850883126259,-0.204406186938286,-0.048610627651215,-0.053215321153402,0.112250179052353,-0.227438360452652,0.042773045599461,-0.180242761969566,-0.050080783665180));
res += mul(Get(s5,-dx,0), float4x4(-0.210471212863922,0.044211026281118,0.024647584185004,-0.024297751486301,-0.013101216405630,0.196855917572975,0.045515239238739,-0.075853109359741,0.112878300249577,0.003397519234568,-0.013738698326051,0.045075003057718,0.145637646317482,-0.001419794978574,-0.449782758951187,-0.068083919584751));
res += mul(Get(s5,-dx,dy), float4x4(0.282154470682144,0.064864650368690,-0.066781148314476,-0.090026937425137,0.034981649369001,-0.002196253975853,-0.006702915299684,0.069407500326633,0.079950802028179,-0.056397873908281,0.032969746738672,0.000210130921914,-0.028708470985293,0.075224168598652,0.073376215994358,0.054564990103245));
res += mul(Get(s5,0,-dy), float4x4(0.009830350987613,-0.113710187375546,0.064939759671688,0.186150908470154,-0.294409543275833,0.140337288379669,-0.084417074918747,-0.015587809495628,-0.100396856665611,0.072918243706226,-0.317374646663666,-0.296403467655182,-0.493562072515488,-0.020833749324083,-0.262634903192520,-0.139893367886543));
res += mul(Get(s5,0,0), float4x4(0.180932581424713,-0.001999642699957,-0.062798842787743,-0.025094274431467,0.115035593509674,0.139086917042732,-0.118681959807873,-0.335078090429306,0.084144048392773,-0.248622149229050,-0.018517248332500,0.277670294046402,0.098600991070271,-0.103952080011368,0.219959616661072,0.437300026416779));
res += mul(Get(s5,0,dy), float4x4(-0.119329527020454,-0.093660973012447,-0.087291404604912,-0.147732853889465,0.080985568463802,0.006724531296641,-0.029211567714810,0.195687353610992,-0.052431475371122,0.005939061753452,0.053313523530960,-0.047036591917276,0.040127109736204,0.030659772455692,-0.116251096129417,-0.243534222245216));
res += mul(Get(s5,dx,-dy), float4x4(-0.015900459140539,0.073603384196758,-0.035231392830610,0.087896943092346,0.015780599787831,-0.000478866742924,-0.124691687524319,-0.010821842588484,-0.052737932652235,-0.094319075345993,-0.081794932484627,0.032797433435917,-0.094342127442360,-0.173379123210907,0.018071200698614,0.044149942696095));
res += mul(Get(s5,dx,0), float4x4(0.020036382600665,0.057023912668228,-0.099177569150925,0.242728710174561,-0.053318183869123,0.021077694371343,-0.092476725578308,0.003938709851354,-0.011027667671442,0.002882827306166,-0.039407525211573,-0.043758153915405,0.074196055531502,0.157884806394577,0.034749299287796,0.018455578014255));
res += mul(Get(s5,dx,dy), float4x4(-0.068051740527153,-0.017271613702178,-0.040532402694225,-0.058617070317268,0.064988717436790,0.022005928680301,-0.025852600112557,0.084153130650520,0.068147398531437,-0.059640940278769,-0.036481618881226,0.012654851190746,-0.079599328339100,0.107197739183903,0.011685051023960,-0.286498486995697));
res = max(float4(0, 0, 0, 0), res) + float4(0.102335028350353,0.261481225490570,0.913301229476929,0.062210068106651) * min(float4(0, 0, 0, 0), res);
return res;
}