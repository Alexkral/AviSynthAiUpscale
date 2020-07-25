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
res += mul(Get(s0,-dx,-dy), float4x4(-0.187865406274796,0.126504734158516,0.066339761018753,-0.186315864324570,-0.128389611840248,0.070158593356609,-0.071802385151386,-0.007658278103918,-0.056972652673721,0.053175523877144,-0.037928562611341,-0.022778604179621,-0.075021460652351,-0.154410988092422,-0.116824671626091,0.120038658380508));
res += mul(Get(s0,-dx,0), float4x4(0.017770450562239,0.087626367807388,0.137264788150787,0.220617413520813,0.167570024728775,-0.050966233015060,0.081966288387775,0.070148304104805,-0.058134660124779,0.079941324889660,0.313808530569077,0.055896997451782,0.050436791032553,0.121745355427265,0.041348777711391,-0.331491976976395));
res += mul(Get(s0,-dx,dy), float4x4(0.092906974256039,0.071241974830627,0.082182615995407,-0.003405108349398,0.113097168505192,0.089377015829086,-0.052253507077694,-0.117127604782581,-0.044735532253981,-0.186478763818741,0.081129938364029,0.063837580382824,-0.049001097679138,0.027982080355287,0.065941035747528,0.096203729510307));
res += mul(Get(s0,0,-dy), float4x4(-0.058846555650234,0.084381483495235,0.270074903964996,-0.120970278978348,0.006326554343104,-0.166512861847878,-0.004780787508935,0.091760158538818,0.058906741440296,-0.208365082740784,0.038385286927223,0.121151283383369,-0.039215333759785,-0.006996287498623,0.083464615046978,0.046842940151691));
res += mul(Get(s0,0,0), float4x4(-0.081425435841084,0.126813411712646,0.029101373627782,-0.063373483717442,-0.011240711435676,-0.140315875411034,-0.047621462494135,-0.248650044202805,-0.130261719226837,0.197410270571709,-0.135090380907059,-0.166721388697624,-0.011582124978304,0.079635173082352,-0.256792247295380,-0.070788264274597));
res += mul(Get(s0,0,dy), float4x4(0.064642928540707,0.060839425772429,0.069779746234417,0.026234608143568,-0.045896187424660,0.133518531918526,0.157151713967323,-0.101610653102398,-0.053235091269016,0.105969913303852,-0.015256211161613,0.021499890834093,-0.010642459616065,0.008695350028574,0.071300052106380,0.034840371459723));
res += mul(Get(s0,dx,-dy), float4x4(-0.227534651756287,-0.017522605136037,-0.113260515034199,0.020425058901310,0.041342791169882,-0.056940656155348,-0.047844637185335,0.088645808398724,-0.016062673181295,0.080377697944641,0.001705675269477,0.007533208001405,0.076106138527393,0.094580732285976,0.003187038470060,0.112248353660107));
res += mul(Get(s0,dx,0), float4x4(-0.069070570170879,0.194057047367096,-0.007735373452306,0.040761306881905,0.128497138619423,-0.021417098119855,0.235418796539307,0.106539368629456,0.032676056027412,-0.066553771495819,-0.050903838127851,0.083717718720436,-0.082794070243835,0.120056197047234,-0.171507373452187,-0.061431378126144));
res += mul(Get(s0,dx,dy), float4x4(-0.163176730275154,-0.026316413655877,0.049529653042555,0.158887103199959,-0.048892796039581,-0.053703565150499,0.084079653024673,0.003791894065216,-0.028430759906769,-0.059978991746902,0.056880038231611,0.056251663714647,-0.056168492883444,0.090463578701019,0.071634620428085,0.313106179237366));
res += mul(Get(s1,-dx,-dy), float4x4(0.025881841778755,-0.048053976148367,-0.036311708390713,0.002034571254626,-0.009868510067463,-0.175111174583435,-0.047777939587831,-0.030952667817473,-0.049254622310400,-0.022974679246545,-0.016544880345464,0.040052216500044,0.066026352345943,0.095412425696850,-0.007979140616953,-0.151988670229912));
res += mul(Get(s1,-dx,0), float4x4(-0.068194143474102,0.081739485263824,-0.172935694456100,0.096999146044254,-0.083466157317162,0.108696989715099,-0.158258974552155,0.088469639420509,-0.133791789412498,0.022788463160396,0.015831669792533,0.006563804578036,-0.049374278634787,-0.035487163811922,0.146861448884010,-0.002851988188922));
res += mul(Get(s1,-dx,dy), float4x4(-0.164082080125809,0.037107251584530,0.082351088523865,-0.005805937573314,-0.080661177635193,-0.049839038401842,-0.031006576493382,0.173539638519287,-0.049122523516417,0.138675540685654,0.002543768379837,-0.068169131875038,-0.123689919710159,0.006378939375281,0.086274832487106,-0.146861881017685));
res += mul(Get(s1,0,-dy), float4x4(-0.030294530093670,-0.028359936550260,-0.065837569534779,-0.115932010114193,0.024524440988898,0.106720037758350,-0.051898997277021,0.182498812675476,0.246921360492706,0.074606887996197,0.106865763664246,0.091862499713898,-0.145299866795540,-0.048375155776739,-0.171412944793701,-0.057285632938147));
res += mul(Get(s1,0,0), float4x4(-0.012542589567602,0.088172085583210,-0.058781534433365,-0.011410995386541,0.250156015157700,-0.032099165022373,-0.080988183617592,0.237715810537338,0.125210419297218,-0.038668479770422,0.127238780260086,0.023554088547826,0.046119686216116,0.174688115715981,0.097618483006954,0.126972585916519));
res += mul(Get(s1,0,dy), float4x4(0.072436265647411,-0.248280927538872,0.185367837548256,-0.108552068471909,0.096786350011826,0.052513360977173,0.154317826032639,0.060654770582914,0.004344824235886,0.021027496084571,0.011066522449255,-0.008141222409904,-0.102575227618217,0.046846356242895,0.042796943336725,-0.095041796565056));
res += mul(Get(s1,dx,-dy), float4x4(-0.103235781192780,-0.005659466143698,-0.113614514470100,0.044419251382351,-0.154040828347206,-0.149453416466713,-0.036340180784464,0.014345747418702,-0.058289799839258,-0.165089726448059,-0.133942812681198,0.119609087705612,0.135057419538498,0.159894585609436,-0.096086129546165,-0.000963054888416));
res += mul(Get(s1,dx,0), float4x4(0.117858588695526,0.086120851337910,-0.152339950203896,-0.183948427438736,0.132575646042824,0.125542774796486,0.048484884202480,-0.173795044422150,0.083635084331036,0.145107775926590,0.038896698504686,0.133535489439964,-0.034532446414232,0.043093629181385,-0.017949568107724,-0.085909873247147));
res += mul(Get(s1,dx,dy), float4x4(-0.085457630455494,0.151140302419662,-0.019483124837279,-0.111787199974060,0.004924569278955,-0.085195384919643,0.096475556492805,-0.073916740715504,0.003648695768788,0.010555132292211,-0.117338716983795,0.136980310082436,0.176736414432526,0.002068237168714,-0.101141735911369,-0.042764298617840));
res += mul(Get(s2,-dx,-dy), float4x4(0.117079071700573,0.015989262610674,0.138227969408035,0.005471141077578,-0.024492319673300,-0.166597411036491,-0.003438934916630,-0.028287639841437,0.040069852024317,0.091090135276318,0.068420171737671,-0.172859147191048,-0.042108926922083,-0.327634602785110,-0.042630139738321,-0.012500419281423));
res += mul(Get(s2,-dx,0), float4x4(0.090947233140469,-0.083353728055954,0.046385560184717,0.195990324020386,-0.065235361456871,0.157378003001213,0.131527021527290,0.083425477147102,0.038962114602327,0.081005237996578,0.030801691114902,0.009227734990418,0.201695188879967,-0.023955211043358,-0.071318529546261,0.106308735907078));
res += mul(Get(s2,-dx,dy), float4x4(-0.082762338221073,-0.102439835667610,0.009777471423149,-0.111741282045841,-0.155233263969421,0.238507166504860,0.034853056073189,0.143071264028549,0.008342719636858,0.074692919850349,0.006896546110511,-0.054384212940931,-0.090546280145645,-0.020366413518786,0.096170626580715,0.032697875052691));
res += mul(Get(s2,0,-dy), float4x4(0.072734355926514,0.217498764395714,-0.094088174402714,0.059204142540693,-0.195729985833168,0.082603015005589,-0.168551474809647,0.075227566063404,0.104887686669827,-0.206304669380188,0.055364873260260,-0.007402519229800,-0.153564900159836,-0.092538371682167,-0.168926522135735,0.054953292012215));
res += mul(Get(s2,0,0), float4x4(-0.130146622657776,0.037691302597523,0.032507706433535,0.058996610343456,0.025084163993597,-0.049690283834934,0.137742176651955,0.082234054803848,0.149063378572464,0.082626163959503,-0.061255820095539,0.035944297909737,-0.104784078896046,-0.062998950481415,0.134032562375069,-0.026379708200693));
res += mul(Get(s2,0,dy), float4x4(-0.001838232274167,0.014479647390544,0.182103991508484,0.107837423682213,0.058114714920521,-0.144296422600746,0.093239523470402,0.100953347980976,0.025894312188029,-0.078694000840187,0.096552528440952,-0.042535599321127,0.076533392071724,0.074321582913399,0.064467012882233,-0.130640134215355));
res += mul(Get(s2,dx,-dy), float4x4(-0.054121002554893,-0.024163637310266,0.154260486364365,-0.156857401132584,0.241523355245590,-0.029166128486395,-0.030228983610868,0.062108825892210,-0.043934229761362,0.049480166286230,0.008500432595611,-0.107219815254211,-0.155076503753662,0.122477523982525,-0.067653827369213,-0.087400294840336));
res += mul(Get(s2,dx,0), float4x4(-0.036608960479498,0.110749825835228,-0.064215846359730,-0.097167514264584,-0.166127771139145,0.191723600029945,0.179062992334366,-0.119879744946957,-0.081615097820759,0.015225936658680,-0.026806337758899,0.061264127492905,-0.084320127964020,-0.031822156161070,-0.037277851253748,-0.071779757738113));
res += mul(Get(s2,dx,dy), float4x4(-0.058100320398808,0.196096628904343,0.001292825909331,-0.096878357231617,-0.144044622778893,-0.017383089289069,-0.183633580803871,-0.079629428684711,0.101330876350403,-0.036368384957314,-0.074423216283321,0.092196077108383,-0.000368593318854,-0.094726532697678,0.179595947265625,-0.114206179976463));
res += mul(Get(s3,-dx,-dy), float4x4(-0.097091451287270,-0.129225730895996,-0.101794250309467,0.263392865657806,0.077912889420986,0.122913800179958,0.135145142674446,0.194753438234329,0.014478511177003,-0.037155825644732,0.020052237436175,-0.085696935653687,0.127816870808601,-0.095457650721073,-0.032139740884304,-0.172196730971336));
res += mul(Get(s3,-dx,0), float4x4(-0.021685706451535,-0.080750331282616,0.156938403844833,-0.073377311229706,-0.032543942332268,-0.174611389636993,0.236930415034294,0.060857504606247,0.059937257319689,0.152041509747505,0.014322316274047,0.069123923778534,-0.095278151333332,0.108503185212612,0.122806422412395,0.020675580948591));
res += mul(Get(s3,-dx,dy), float4x4(0.183586329221725,-0.039414301514626,0.034172676503658,0.167898654937744,0.072983659803867,0.049506630748510,-0.008170933462679,0.060717895627022,-0.139357000589371,-0.038463737815619,-0.082057043910027,0.019483704119921,-0.109649747610092,-0.036395251750946,-0.026794238016009,0.077234804630280));
res += mul(Get(s3,0,-dy), float4x4(0.122198723256588,0.115254156291485,0.113594509661198,0.098350010812283,0.041205670684576,0.186579495668411,0.060217656195164,-0.048962131142616,0.105402573943138,0.008203860372305,-0.115629002451897,0.159358695149422,-0.298764258623123,0.112079396843910,0.085584372282028,0.144815981388092));
res += mul(Get(s3,0,0), float4x4(-0.065741918981075,0.165699437260628,0.241942360997200,-0.089928567409515,0.017400279641151,-0.086429603397846,-0.041530523449183,0.126986041665077,-0.153766423463821,0.039319433271885,0.034761514514685,0.190540254116058,-0.213930040597916,0.046622723340988,-0.214761868119240,0.016375083476305));
res += mul(Get(s3,0,dy), float4x4(-0.026127524673939,0.190991759300232,-0.073771990835667,0.015699991956353,-0.092689089477062,-0.071219183504581,0.026125438511372,-0.177310839295387,-0.013939584605396,0.021298265084624,0.035574264824390,0.102023668587208,-0.041766319423914,-0.090463444590569,-0.244647413492203,-0.003977151587605));
res += mul(Get(s3,dx,-dy), float4x4(-0.057622529566288,-0.084605447947979,0.062898553907871,-0.083188541233540,-0.158562511205673,0.232742249965668,-0.014448854140937,0.072884291410446,0.077720984816551,-0.105751074850559,0.046409405767918,0.109581872820854,-0.131340637803078,-0.056343317031860,-0.054782569408417,-0.093661107122898));
res += mul(Get(s3,dx,0), float4x4(0.060236018151045,0.036650471389294,0.119889520108700,-0.025326905772090,-0.122041493654251,0.049494195729494,-0.138535633683205,-0.166651010513306,-0.176589474081993,0.065769620239735,0.108394235372543,0.200030848383904,-0.061887037009001,-0.122721321880817,-0.009589086286724,0.094189360737801));
res += mul(Get(s3,dx,dy), float4x4(0.033712055534124,0.170160740613937,-0.040644783526659,-0.088984370231628,0.069927193224430,-0.131523445248604,-0.089398294687271,0.057981893420219,0.316976100206375,-0.047287657856941,-0.087019480764866,0.025521317496896,0.068707495927811,-0.011396315880120,0.143729493021965,-0.016129417344928));
return max(float4(0,0,0,0), res);
}
