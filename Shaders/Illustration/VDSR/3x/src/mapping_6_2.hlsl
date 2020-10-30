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
res += mul(Get(s0,-dx,-dy), float4x4(-0.138120144605637,-0.027429822832346,-0.011015661060810,-0.246653646230698,0.001138090388849,0.364425063133240,0.086559846997261,0.129231974482536,0.067747823894024,0.005615681409836,0.025623552501202,-0.129348576068878,0.000068830544478,-0.137479588389397,-0.014915009029210,-0.023193771019578));
res += mul(Get(s0,-dx,0), float4x4(-0.139590308070183,-0.085722453892231,-0.112011723220348,-0.196343854069710,-0.081767678260803,0.121979556977749,-0.027514142915606,-0.003571551060304,0.132780522108078,-0.144599914550781,-0.003077698638663,-0.018785173073411,-0.010264812968671,-0.044110599905252,-0.061729967594147,0.066724695265293));
res += mul(Get(s0,-dx,dy), float4x4(-0.024667983874679,0.058571569621563,-0.169672489166260,-0.110344797372818,-0.120631851255894,0.088786847889423,-0.098253294825554,0.056562948971987,0.137318611145020,0.074572756886482,0.146331101655960,-0.195120587944984,-0.154866933822632,0.038639217615128,-0.112706698477268,0.366574406623840));
res += mul(Get(s0,0,-dy), float4x4(-0.025014443323016,-0.126475989818573,0.262233972549438,-0.035651840269566,0.138408735394478,0.085514441132545,0.117144554853439,0.104636467993259,-0.107239611446857,-0.036325734108686,0.037488549947739,-0.015143271535635,-0.063304476439953,0.047547310590744,-0.072433292865753,0.010264326818287));
res += mul(Get(s0,0,0), float4x4(-0.016346091404557,-0.119168259203434,0.314993858337402,-0.061324469745159,0.159424602985382,0.170061454176903,0.092459879815578,-0.006692929659039,0.053240090608597,-0.168520361185074,-0.059819504618645,-0.028967756778002,0.039299555122852,-0.031623948365450,-0.078427575528622,0.000667962012812));
res += mul(Get(s0,0,dy), float4x4(0.130453690886497,-0.167344748973846,-0.052731700241566,-0.131818085908890,0.293016403913498,-0.182931080460548,0.222965359687805,0.043129879981279,0.085748091340065,0.039352267980576,0.013012279756367,-0.277725815773010,-0.068099662661552,0.016920356079936,-0.129197180271149,-0.027117326855659));
res += mul(Get(s0,dx,-dy), float4x4(-0.032157238572836,0.185144498944283,-0.057417728006840,-0.011712035164237,-0.070056535303593,0.092105500400066,-0.001071610487998,0.091719955205917,-0.107083357870579,-0.008308141492307,0.105594031512737,0.207596629858017,-0.191606685519218,-0.069125376641750,-0.115090504288673,-0.046991858631372));
res += mul(Get(s0,dx,0), float4x4(-0.141557171940804,0.044156722724438,0.065972484648228,-0.054262280464172,0.081521868705750,-0.156010821461678,-0.122014328837395,0.132857397198677,-0.031013762578368,-0.123186498880386,-0.014895953238010,0.068793736398220,-0.101954743266106,-0.055963397026062,-0.082495450973511,0.330904841423035));
res += mul(Get(s0,dx,dy), float4x4(-0.081907346844673,0.078268468379974,-0.139856383204460,-0.037022050470114,-0.057897944003344,-0.133497357368469,-0.017944261431694,0.062294960021973,0.235830888152122,-0.026969067752361,-0.148746669292450,0.050304315984249,-0.094665579497814,0.041713573038578,-0.038319971412420,0.039414916187525));
res += mul(Get(s1,-dx,-dy), float4x4(-0.091344557702541,0.017597652971745,-0.017774023115635,-0.057803004980087,-0.003941840026528,-0.070943221449852,-0.074263654649258,0.172695472836494,0.071543335914612,-0.180061578750610,0.178055003285408,-0.123798355460167,-0.081309311091900,0.090281262993813,0.055636625736952,-0.129286617040634));
res += mul(Get(s1,-dx,0), float4x4(-0.065495200455189,-0.082462333142757,0.010389612056315,-0.218536898493767,-0.108471579849720,-0.222207337617874,-0.067605264484882,0.157744973897934,0.068163514137268,-0.139385506510735,-0.147497370839119,-0.185284972190857,0.107002094388008,0.054099034518003,-0.264813661575317,-0.209286183118820));
res += mul(Get(s1,-dx,dy), float4x4(-0.118821486830711,-0.202241316437721,0.015357527881861,-0.207278415560722,-0.156438514590263,-0.063617631793022,-0.111702747642994,0.014758785255253,-0.053758900612593,0.063818685710430,-0.050028029829264,-0.201472610235214,-0.042818050831556,-0.065343230962753,0.049946948885918,-0.019772080704570));
res += mul(Get(s1,0,-dy), float4x4(-0.050049509853125,0.050865676254034,-0.120243616402149,-0.026978261768818,0.045222684741020,0.033603124320507,-0.028092645108700,-0.016451936215162,-0.050358269363642,0.241537213325500,-0.063824482262135,-0.090758189558983,-0.156551003456116,-0.101515211164951,0.242409288883209,-0.145351752638817));
res += mul(Get(s1,0,0), float4x4(-0.033557385206223,-0.042387116700411,-0.079488486051559,-0.115592405200005,-0.062488794326782,-0.072019129991531,-0.078986786305904,-0.074237518012524,-0.019051458686590,-0.011348523199558,-0.082762107253075,-0.171929359436035,0.159704267978668,-0.060464859008789,0.111794777214527,-0.181463629007339));
res += mul(Get(s1,0,dy), float4x4(0.002914478536695,-0.146607950329781,0.005946477875113,-0.207443267107010,-0.035103719681501,0.343572467565536,-0.189686343073845,0.156865462660789,-0.008402100764215,0.212448030710220,0.168139532208443,-0.199072077870369,0.098435722291470,0.125362366437912,0.095071949064732,-0.043004147708416));
res += mul(Get(s1,dx,-dy), float4x4(-0.086008086800575,0.073035493493080,-0.031068164855242,-0.092281892895699,-0.006208195816725,-0.093658067286015,0.028966136276722,0.046109303832054,-0.133008971810341,0.014078545384109,-0.097410306334496,0.006318456958979,0.102081462740898,0.186062231659889,-0.114431835711002,0.224610239267349));
res += mul(Get(s1,dx,0), float4x4(-0.136706411838531,-0.081431008875370,0.164677888154984,-0.107125118374825,-0.039316747337580,-0.104331508278847,0.104096844792366,0.130720511078835,0.379843056201935,0.007053597364575,-0.130767509341240,-0.039314478635788,0.080947048962116,0.000795103318524,-0.123531460762024,0.299737393856049));
res += mul(Get(s1,dx,dy), float4x4(-0.270677745342255,-0.035564657300711,0.002664471976459,-0.165100648999214,-0.187469154596329,0.328711777925491,-0.154914513230324,-0.044061459600925,0.003589586820453,0.011607927270234,-0.116056419909000,0.022412518039346,-0.011533179320395,0.112342342734337,-0.209387078881264,0.231795161962509));
res += mul(Get(s2,-dx,-dy), float4x4(-0.047602526843548,0.072467021644115,0.029532736167312,-0.059707723557949,-0.103768609464169,0.044870659708977,-0.129732728004456,-0.045571889728308,0.070220261812210,0.258030980825424,-0.112394072115421,-0.040194191038609,-0.023731051012874,0.005642847623676,-0.084459871053696,0.159624248743057));
res += mul(Get(s2,-dx,0), float4x4(0.038499336689711,-0.003030876163393,-0.067881450057030,0.171432152390480,-0.216663703322411,-0.002069245791063,0.114172838628292,-0.133402913808823,-0.182544603943825,0.280372768640518,0.096690490841866,-0.130685403943062,-0.021526150405407,-0.166665360331535,-0.011737399734557,-0.015255273319781));
res += mul(Get(s2,-dx,dy), float4x4(-0.016122894361615,0.045767992734909,-0.325133144855499,0.141366139054298,-0.141541570425034,0.068597547709942,0.125207483768463,-0.076537080109119,-0.123167760670185,-0.063714548945427,-0.070648714900017,-0.136680617928505,0.071390286087990,-0.057800117880106,-0.011731708422303,0.066559985280037));
res += mul(Get(s2,0,-dy), float4x4(0.000390516826883,-0.011469758115709,0.061419121921062,0.024333337321877,0.083388075232506,0.062263473868370,0.014409112744033,0.000450513151009,0.288864463567734,-0.052184600383043,0.103137135505676,-0.013351693749428,-0.040086291730404,-0.041879545897245,-0.086778938770294,-0.050946488976479));
res += mul(Get(s2,0,0), float4x4(-0.033097315579653,-0.041479878127575,0.002272924641147,0.174494236707687,-0.144261017441750,-0.063188299536705,0.125599265098572,0.008122269995511,-0.060126032680273,-0.003672437276691,-0.086333483457565,-0.033086553215981,-0.080720469355583,-0.194561243057251,-0.099101580679417,-0.195606872439384));
res += mul(Get(s2,0,dy), float4x4(0.178649559617043,0.031038569286466,-0.078415147960186,0.115960329771042,-0.051480453461409,-0.011411089450121,-0.029529949650168,-0.130128234624863,-0.152072697877884,-0.049357838928699,0.132688030600548,-0.029605913907290,-0.006939205806702,0.024014947935939,-0.139900803565979,-0.007927218452096));
res += mul(Get(s2,dx,-dy), float4x4(0.174306198954582,-0.018407385796309,0.006666090805084,-0.105342671275139,0.130266174674034,-0.017169220373034,0.003643305739388,0.068244002759457,0.166580319404602,-0.054420169442892,0.013460515066981,-0.158702999353409,-0.052570901811123,0.174746870994568,0.038268744945526,0.044708151370287));
res += mul(Get(s2,dx,0), float4x4(-0.135714620351791,-0.101753696799278,0.024611974135041,0.054183788597584,-0.083447702229023,0.049998898059130,-0.058549776673317,0.072211682796478,-0.166490599513054,-0.072531178593636,0.384761005640030,-0.072647288441658,-0.203554749488831,-0.182365313172340,-0.058664210140705,-0.128954708576202));
res += mul(Get(s2,dx,dy), float4x4(0.273676395416260,-0.070980191230774,-0.119546674191952,0.025269597768784,0.158141061663628,-0.075765877962112,-0.139403581619263,-0.114118114113808,0.025593085214496,-0.131820380687714,0.290667802095413,0.093050226569176,-0.173518538475037,-0.094126269221306,-0.009481524117291,-0.077841885387897));
res += mul(Get(s3,-dx,-dy), float4x4(0.113211184740067,-0.266930103302002,0.066334471106529,-0.075522109866142,-0.026304662227631,0.098655678331852,-0.114705428481102,0.001144259702414,0.031748004257679,-0.004115850199014,0.038122251629829,-0.061929624527693,0.051618851721287,0.139820441603661,-0.254796534776688,0.017425158992410));
res += mul(Get(s3,-dx,0), float4x4(0.120062239468098,-0.264345020055771,0.028326954692602,-0.102693319320679,0.062840908765793,0.316734969615936,-0.042468953877687,-0.085710756480694,-0.077442698180676,-0.224248483777046,-0.157565906643867,0.152050524950027,0.002447631908581,-0.004717160016298,-0.073758639395237,0.048504110425711));
res += mul(Get(s3,-dx,dy), float4x4(-0.018965013325214,-0.032027985900640,0.027235325425863,-0.243926599621773,0.026399318128824,0.054426059126854,0.096189089119434,-0.138314679265022,0.061274562031031,0.038908969610929,0.039213243871927,-0.148843333125114,0.074562497437000,-0.026734191924334,-0.084509424865246,0.186844721436501));
res += mul(Get(s3,0,-dy), float4x4(0.117576964199543,0.171478882431984,-0.093330666422844,-0.179075539112091,0.122202672064304,-0.179657116532326,-0.028309803456068,0.167325377464294,-0.039720427244902,-0.021070158109069,0.095985874533653,-0.142807111144066,-0.195596888661385,-0.083482153713703,-0.189923495054245,0.083612613379955));
res += mul(Get(s3,0,0), float4x4(0.244334846735001,0.002719674259424,-0.010696578770876,-0.008915206417441,-0.042590517550707,0.266575455665588,0.045924965292215,0.026645835489035,-0.004305343143642,-0.102081693708897,0.063600070774555,-0.021105663850904,-0.083218477666378,0.048188406974077,-0.079189926385880,-0.100882157683372));
res += mul(Get(s3,0,dy), float4x4(0.240607157349586,-0.166109591722488,0.021900946274400,-0.153167307376862,-0.107523627579212,-0.088245883584023,0.028404960408807,-0.152889594435692,0.029876504093409,-0.141751185059547,0.090286999940872,-0.128083273768425,0.074450135231018,0.122491635382175,-0.009939438663423,-0.094075605273247));
res += mul(Get(s3,dx,-dy), float4x4(-0.267405301332474,0.068965405225754,-0.166718810796738,-0.076811701059341,-0.108005777001381,-0.005049045663327,0.025361578911543,0.219758495688438,-0.010465290397406,-0.023710595443845,0.055625516921282,-0.064453832805157,-0.238244190812111,-0.082048349082470,-0.016662606969476,0.223515152931213));
res += mul(Get(s3,dx,0), float4x4(-0.247725784778595,0.067687265574932,0.042183686047792,0.103991553187370,-0.152583017945290,0.049452371895313,-0.045447885990143,0.062125213444233,-0.002976033370942,-0.047194771468639,-0.075910732150078,-0.010630981065333,-0.078355051577091,-0.024650797247887,-0.115805462002754,0.003808879526332));
res += mul(Get(s3,dx,dy), float4x4(-0.037712689489126,-0.187529295682907,-0.074682667851448,-0.028504440560937,0.068656198680401,0.090002782642841,0.003844856517389,0.014392615295947,0.037150938063860,-0.196282878518105,0.035226471722126,-0.164801701903343,-0.080006442964077,0.079618230462074,0.048396356403828,0.084112294018269));
return max(float4(0,0,0,0), res);
}
