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
res += mul(Get(s0,-dx,-dy), float4x4(-0.023201776668429,-0.005718349944800,0.025923375040293,-0.014219637028873,-0.078441694378853,0.012679092586040,0.096156939864159,0.048012632876635,0.012309003621340,0.014746288768947,0.036060992628336,0.009481933899224,-0.015031582675874,0.033538728952408,0.053304463624954,-0.113740310072899));
res += mul(Get(s0,-dx,0), float4x4(-0.014116613194346,0.007833596318960,-0.020844157785177,0.106624275445938,0.021291814744473,0.151828944683075,-0.073088958859444,-0.070336453616619,-0.190958440303802,0.076693706214428,0.071716375648975,0.035557392984629,0.278453499078751,0.084831014275551,0.077549211680889,-0.040715698152781));
res += mul(Get(s0,-dx,dy), float4x4(-0.182127356529236,0.030272468924522,-0.085035949945450,0.008155600167811,-0.120971478521824,0.109147861599922,-0.005647565238178,-0.052763327956200,-0.167807012796402,-0.065962851047516,0.026441792026162,-0.047025799751282,-0.030883921310306,-0.185685440897942,0.067249193787575,-0.136401504278183));
res += mul(Get(s0,0,-dy), float4x4(0.109449319541454,-0.068372629582882,-0.029847934842110,0.059059143066406,-0.040294025093317,0.157954365015030,-0.101770445704460,0.024857833981514,-0.089878916740417,-0.006533436477184,0.055562745779753,0.162486597895622,0.082205303013325,-0.084729358553886,-0.041269972920418,0.056785084307194));
res += mul(Get(s0,0,0), float4x4(0.036312799900770,0.049311857670546,0.048097953200340,-0.012264408171177,-0.005714550148696,0.027703871950507,-0.078054405748844,-0.048706173896790,0.008389679715037,-0.047425732016563,0.050996284931898,-0.012490297667682,-0.005273476708680,-0.014048413373530,0.004854444414377,0.161731779575348));
res += mul(Get(s0,0,dy), float4x4(-0.147142112255096,-0.085618570446968,-0.012125644832850,-0.154548093676567,-0.034217800945044,0.079620733857155,-0.121364325284958,-0.106870636343956,0.012123860418797,-0.067789360880852,0.195431634783745,-0.101008042693138,-0.144358426332474,0.031718339771032,0.030577315017581,0.062810309231281));
res += mul(Get(s0,dx,-dy), float4x4(0.166008263826370,-0.160874888300896,0.117752380669117,-0.123215720057487,0.015973404049873,-0.047107364982367,-0.078375473618507,-0.045188244432211,-0.076233141124249,0.053720526397228,0.053684923797846,-0.122495375573635,0.157719463109970,0.103178635239601,0.016375811770558,-0.027844369411469));
res += mul(Get(s0,dx,0), float4x4(-0.012453920207918,0.020314542576671,-0.070721685886383,-0.064397037029266,-0.059303894639015,-0.016631085425615,0.030810017138720,-0.059043973684311,0.099714003503323,0.004012804944068,-0.134747147560120,-0.013749741017818,-0.089525550603867,-0.049644526094198,0.167775362730026,0.112956106662750));
res += mul(Get(s0,dx,dy), float4x4(-0.123711161315441,0.017594767734408,0.023186674341559,-0.037892013788223,-0.021543648093939,-0.153781980276108,-0.020170731469989,0.054995868355036,0.075583785772324,0.037640575319529,0.023171827197075,-0.064455419778824,0.005467500071973,-0.054593939334154,-0.135001555085182,0.025553056970239));
res += mul(Get(s1,-dx,-dy), float4x4(0.160973802208900,-0.023316111415625,0.071692273020744,-0.186026349663734,-0.039577711373568,0.171658724546432,0.041228123009205,-0.027191964909434,-0.141295671463013,0.068424701690674,-0.042748857289553,-0.018688382580876,-0.008963370695710,-0.051422148942947,0.006290284451097,-0.083151027560234));
res += mul(Get(s1,-dx,0), float4x4(0.053843736648560,0.058741599321365,0.099383667111397,-0.012204485014081,-0.025294149294496,-0.103596396744251,-0.102839604020119,0.016072036698461,-0.084752812981606,0.036582920700312,-0.065185286104679,-0.229227125644684,0.024490766227245,-0.010158525779843,0.084867201745510,-0.005070005077869));
res += mul(Get(s1,-dx,dy), float4x4(0.031095378100872,0.009162792935967,-0.049626003950834,0.006666131783277,0.037629492580891,-0.064934812486172,-0.082967408001423,-0.082616589963436,-0.108654364943504,0.023034621030092,-0.066927261650562,-0.025793848559260,-0.105361998081207,0.007576275151223,0.183895871043205,-0.101784549653530));
res += mul(Get(s1,0,-dy), float4x4(-0.011973155662417,0.093713521957397,0.040976699441671,0.047038089483976,-0.001638179644942,-0.092421241104603,-0.114581800997257,-0.094030834734440,-0.223446249961853,0.066720560193062,-0.029685998335481,0.012267572805285,0.101957209408283,0.160616472363472,-0.047180261462927,0.087671019136906));
res += mul(Get(s1,0,0), float4x4(0.020619343966246,-0.064548097550869,-0.007726463489234,-0.013893265277147,-0.079519644379616,0.109011299908161,-0.128350049257278,-0.008053758181632,0.178487256169319,0.014686201699078,0.095860771834850,0.003162131644785,0.094376951456070,0.052501160651445,0.066203646361828,0.064833439886570));
res += mul(Get(s1,0,dy), float4x4(0.158534228801727,0.034622453153133,-0.086870864033699,0.098360218107700,0.120807334780693,-0.036704469472170,-0.083604209125042,0.068630360066891,-0.061582099646330,0.017050445079803,-0.002143393503502,-0.053892049938440,-0.010059590451419,0.041107509285212,-0.070259019732475,0.003967959899455));
res += mul(Get(s1,dx,-dy), float4x4(-0.038429599255323,0.032193116843700,0.007782991509885,-0.111495748162270,-0.083160385489464,0.091408848762512,-0.081416189670563,0.067056365311146,0.072167411446571,-0.056833811104298,0.033676370978355,-0.107152380049229,0.034696932882071,0.006897736340761,-0.107794359326363,-0.016304338350892));
res += mul(Get(s1,dx,0), float4x4(-0.018317369744182,-0.137168064713478,0.139606684446335,0.205574780702591,-0.032605621963739,-0.102257758378983,-0.041980318725109,0.161836266517639,0.004749553278089,0.007416557054967,0.130047082901001,-0.036180745810270,-0.129821389913559,0.084803618490696,-0.058397892862558,0.125448599457741));
res += mul(Get(s1,dx,dy), float4x4(-0.038050230592489,0.025822823867202,-0.033512219786644,0.113031148910522,-0.004391256719828,-0.164945363998413,-0.140419319272041,-0.044619809836149,-0.081883139908314,-0.093643419444561,0.056785516440868,0.187464460730553,0.035801947116852,0.059024441987276,-0.004037345293909,0.033034514635801));
res += mul(Get(s2,-dx,-dy), float4x4(-0.014962716028094,0.032266985625029,-0.170917287468910,-0.003948223777115,-0.081946089863777,0.006385215558112,0.150688752532005,-0.142460122704506,-0.199194297194481,-0.130977451801300,-0.003624734003097,-0.189207956194878,-0.128751024603844,-0.054971452802420,0.068369664251804,-0.037607878446579));
res += mul(Get(s2,-dx,0), float4x4(0.126985475420952,-0.005514870397747,-0.134623110294342,0.008154727518559,-0.085476122796535,-0.056831106543541,-0.012791765853763,-0.065102435648441,-0.068903930485249,-0.040013801306486,0.016453530639410,0.071570813655853,0.146097421646118,0.009512808173895,-0.091612525284290,0.096427232027054));
res += mul(Get(s2,-dx,dy), float4x4(-0.088451936841011,0.028132792562246,-0.005811987444758,0.126099258661270,0.071823075413704,0.103680193424225,0.112206175923347,0.080976255238056,-0.107147037982941,-0.001389500685036,-0.090458579361439,-0.059275716543198,0.106636151671410,-0.096982009708881,0.021985156461596,0.032917506992817));
res += mul(Get(s2,0,-dy), float4x4(0.173260599374771,-0.129582405090332,0.043175939470530,0.036198262125254,-0.006217319983989,0.073485583066940,-0.060219157487154,-0.077048882842064,-0.063685797154903,-0.054183103144169,-0.050399150699377,0.014146062545478,0.007302956655622,0.020640803501010,0.088274613022804,0.036316756159067));
res += mul(Get(s2,0,0), float4x4(0.001641455921344,0.022178698331118,0.065876364707947,0.023389283567667,-0.044354591518641,0.101893991231918,0.025357358157635,0.015975477173924,-0.071977004408836,0.165491417050362,-0.140765100717545,0.063338860869408,0.131124317646027,0.093811102211475,0.078064113855362,0.220509231090546));
res += mul(Get(s2,0,dy), float4x4(0.038569107651711,0.102910324931145,0.035701792687178,0.052929382771254,-0.006963361054659,-0.095410875976086,0.005373375955969,-0.026896277442575,-0.042935639619827,0.103144794702530,-0.067392267286777,-0.112645067274570,0.018655484542251,-0.093348033726215,-0.136247351765633,0.042251132428646));
res += mul(Get(s2,dx,-dy), float4x4(0.108852192759514,-0.012653503566980,-0.017495993524790,-0.015858899801970,0.101290836930275,0.011703842319548,0.052875284105539,-0.015731208026409,-0.042711749672890,0.136913359165192,-0.093254588544369,0.086833432316780,-0.086310371756554,-0.017390944063663,0.059240750968456,0.090567946434021));
res += mul(Get(s2,dx,0), float4x4(0.078186482191086,0.041646752506495,0.047968655824661,-0.089878678321838,-0.036837279796600,-0.124453693628311,-0.106213726103306,0.016832262277603,0.041742134839296,0.067823886871338,-0.036977801471949,0.041955001652241,0.092961788177490,-0.123368211090565,-0.015796478837729,-0.010170399211347));
res += mul(Get(s2,dx,dy), float4x4(-0.082362443208694,0.021391777321696,0.212417632341385,0.026599973440170,-0.014587721787393,-0.004028043244034,0.048115406185389,-0.050493180751801,0.094788275659084,0.058566130697727,0.010613157413900,-0.006664397194982,0.184484809637070,0.052358016371727,0.114513151347637,0.146976441144943));
res += mul(Get(s3,-dx,-dy), float4x4(-0.068680502474308,0.086305752396584,0.068865329027176,-0.008185988292098,-0.044881489127874,0.001132972072810,0.057266101241112,0.019927296787500,-0.094429478049278,0.011113999411464,-0.038708932697773,0.017029540613294,-0.149122878909111,0.012425731867552,-0.021779851987958,-0.079436108469963));
res += mul(Get(s3,-dx,0), float4x4(-0.093089051544666,0.093472130596638,-0.031825870275497,-0.082966350018978,0.070831194519997,0.047081999480724,-0.062337104231119,-0.082473546266556,0.067041300237179,0.074690878391266,-0.081263989210129,-0.148499220609665,0.140246257185936,0.033488404005766,0.043184470385313,-0.013036258518696));
res += mul(Get(s3,-dx,dy), float4x4(0.083699353039265,-0.118157617747784,0.018624726682901,-0.001206559129059,-0.109735198318958,-0.022793006151915,0.088468804955482,-0.013316597789526,0.035924501717091,0.171136274933815,-0.037200987339020,-0.064184144139290,-0.025745477527380,0.059093397110701,0.016620367765427,0.005832382477820));
res += mul(Get(s3,0,-dy), float4x4(-0.003804804524407,-0.056826494634151,0.035827439278364,-0.146833330392838,0.035932619124651,-0.244830951094627,-0.090200170874596,0.060891270637512,-0.038020219653845,-0.072361052036285,-0.136254832148552,-0.057383645325899,0.077476374804974,0.034634742885828,-0.201046630740166,0.144540250301361));
res += mul(Get(s3,0,0), float4x4(-0.120571449398994,0.007006506901234,-0.207165449857712,0.103331416845322,0.073070250451565,-0.005591476336122,0.074152193963528,-0.068671919405460,-0.123796828091145,0.191389545798302,-0.015834625810385,-0.108418531715870,-0.062264889478683,-0.080442182719707,-0.064883574843407,0.034163594245911));
res += mul(Get(s3,0,dy), float4x4(0.094823680818081,-0.010616222396493,-0.052572347223759,-0.098392575979233,-0.077708072960377,0.095358923077583,0.056370403617620,-0.110573731362820,0.109279148280621,0.018607461825013,-0.018321735784411,0.097661204636097,0.050164051353931,-0.044344976544380,-0.034839570522308,-0.051729973405600));
res += mul(Get(s3,dx,-dy), float4x4(-0.007843726314604,0.005555722862482,-0.036634933203459,0.022250941023231,0.034890651702881,0.105178020894527,0.040793173015118,-0.088190063834190,0.012668275274336,-0.067940451204777,-0.069628611207008,0.086227521300316,0.070328600704670,-0.056797515600920,-0.046134173870087,0.069740049540997));
res += mul(Get(s3,dx,0), float4x4(-0.067724309861660,-0.195562362670898,-0.093881934881210,0.079745203256607,-0.142531305551529,-0.003535012248904,-0.090290151536465,0.050417520105839,0.138532161712646,-0.055832646787167,0.053290262818336,-0.131801202893257,0.083569213747978,-0.047330211848021,-0.113188490271568,0.077532246708870));
res += mul(Get(s3,dx,dy), float4x4(-0.052517209202051,0.076027408242226,-0.184377685189247,0.051176335662603,0.042876467108727,0.044079694896936,-0.013471486978233,-0.039128448814154,-0.006336031015962,0.024093069136143,-0.089281566441059,0.024220878258348,0.044180221855640,0.031383894383907,-0.003370943013579,0.017101436853409));
return max(float4(0,0,0,0), res);
}