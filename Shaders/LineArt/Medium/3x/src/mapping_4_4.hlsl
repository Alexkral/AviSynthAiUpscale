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
float4 res = float4(-0.146769985556602,-0.133817076683044,-0.154835954308510,-0.127439484000206);
res += mul(Get(s0,-dx,-dy), float4x4(-0.010325144976377,-0.113969713449478,0.004024334251881,-0.128111749887466,0.020002583041787,0.159582167863846,-0.168746441602707,0.059420399367809,-0.109005987644196,-0.040696308016777,-0.028275061398745,-0.064507350325584,0.016238875687122,0.022626083344221,0.021130057051778,-0.005864741746336));
res += mul(Get(s0,-dx,0), float4x4(0.114533856511116,-0.157648578286171,0.368845760822296,0.096687823534012,-0.128152102231979,0.444812327623367,-0.272027313709259,-0.198029294610023,0.105645962059498,0.135567858815193,0.070460304617882,0.133455887436867,-0.072722502052784,0.096116080880165,0.023166641592979,-0.030185604467988));
res += mul(Get(s0,-dx,dy), float4x4(-0.065358698368073,-0.021577754989266,-0.063915513455868,-0.164958953857422,0.161538705229759,0.014612252824008,-0.085342481732368,0.077409438788891,0.134274721145630,-0.046332731842995,0.037022307515144,-0.169449985027313,0.023649100214243,0.036638014018536,0.047218684107065,0.182710185647011));
res += mul(Get(s0,0,-dy), float4x4(0.084285549819469,-0.183598443865776,-0.032330244779587,-0.046694006770849,0.036217674612999,0.109137944877148,0.157788202166557,-0.240417599678040,0.062307450920343,-0.131909430027008,0.057206798344851,0.002796298358589,0.047862835228443,0.047258418053389,-0.019223248586059,0.170780062675476));
res += mul(Get(s0,0,0), float4x4(-0.109157696366310,-0.239815101027489,0.165348634123802,-0.022591717541218,0.036309085786343,0.295863956212997,0.106903538107872,-0.298550486564636,0.276132673025131,-0.523182272911072,0.220192164182663,-0.202593505382538,0.117321893572807,0.060608562082052,0.214625284075737,0.152602523565292));
res += mul(Get(s0,0,dy), float4x4(0.200236231088638,-0.147573366761208,0.016345344483852,-0.302958458662033,0.029209602624178,0.289233982563019,0.007952268235385,-0.058784123510122,-0.081159457564354,-0.065074503421783,0.000107704545371,-0.167328804731369,-0.049885790795088,0.104204021394253,-0.005046629812568,0.146336302161217));
res += mul(Get(s0,dx,-dy), float4x4(-0.032980829477310,0.005135240964592,0.024182513356209,0.045091725885868,-0.045802839100361,-0.142594277858734,-0.117536596953869,-0.065131127834320,0.025488758459687,-0.019626848399639,0.016562135890126,0.009429791010916,-0.034460406750441,0.049493968486786,0.002323722932488,0.225938603281975));
res += mul(Get(s0,dx,0), float4x4(-0.041027329862118,0.172598913311958,-0.005961816292256,0.123254105448723,0.377485543489456,-0.239706158638000,-0.074597842991352,0.042967256158590,-0.064547210931778,-0.002950927475467,-0.003419492626563,0.025187129154801,0.094768807291985,-0.037174440920353,-0.066019371151924,-0.035658478736877));
res += mul(Get(s0,dx,dy), float4x4(-0.038919508457184,0.038547586649656,-0.064305894076824,-0.049184139817953,-0.323555737733841,0.040023513138294,-0.023292141035199,-0.018366320058703,0.131117895245552,-0.013864396139979,0.043212827295065,-0.136920228600502,-0.048560306429863,0.007337729912251,-0.083952330052853,0.201605886220932));
res += mul(Get(s1,-dx,-dy), float4x4(-0.045892313122749,-0.079094856977463,-0.050346393138170,0.188304543495178,0.005189207382500,-0.043157245963812,-0.362297803163528,-0.050272051244974,-0.013964659534395,0.036595232784748,-0.102739721536636,-0.024075124412775,-0.012654009275138,0.212369412183762,-0.040982000529766,0.002655213000253));
res += mul(Get(s1,-dx,0), float4x4(-0.007409863639623,-0.009238320402801,-0.033412072807550,-0.294995188713074,-0.067546561360359,-0.089013680815697,-0.502781569957733,0.228090450167656,0.104898773133755,-0.013730525039136,-0.095874436199665,-0.032549705356359,0.052864000201225,-0.112800218164921,-0.090865559875965,0.210991472005844));
res += mul(Get(s1,-dx,dy), float4x4(0.101743787527084,-0.004960786085576,0.015221077017486,-0.054673142731190,-0.014434089884162,-0.121096260845661,0.031173625960946,0.017512802034616,-0.051871184259653,0.047590419650078,-0.122215293347836,-0.125249162316322,0.124863691627979,-0.107539929449558,-0.164706587791443,-0.102985389530659));
res += mul(Get(s1,0,-dy), float4x4(0.035376802086830,-0.022581020370126,0.023019660264254,-0.278486162424088,0.015537733212113,-0.185913741588593,-0.320630639791489,0.258269339799881,0.097946465015411,-0.091834723949432,-0.024177571758628,-0.185288846492767,-0.030278775840998,-0.030794981867075,0.053483765572309,-0.131091132760048));
res += mul(Get(s1,0,0), float4x4(-0.080947242677212,0.101639986038208,0.061704155057669,-0.431620895862579,-0.007954257540405,-0.278576046228409,-0.268310636281967,-0.229063883423805,-0.197375893592834,-0.098929360508919,0.067760311067104,-0.070813745260239,0.024298463016748,0.141989633440971,-0.137142986059189,0.089552894234657));
res += mul(Get(s1,0,dy), float4x4(-0.035185080021620,0.111695557832718,0.129036307334900,0.035070549696684,-0.108617253601551,-0.079846650362015,-0.212596789002419,0.238712936639786,0.092458888888359,-0.129831910133362,-0.035049494355917,0.184920758008957,0.397467225790024,-0.201308980584145,-0.079695336520672,0.187783896923065));
res += mul(Get(s1,dx,-dy), float4x4(-0.038564193993807,0.014916146174073,-0.053237017244101,-0.186271518468857,-0.045343995094299,-0.088418945670128,0.170693486928940,0.252913475036621,-0.139691248536110,-0.118033945560455,0.116519585251808,-0.404768764972687,0.054723799228668,-0.165303900837898,0.031914725899696,-0.170574426651001));
res += mul(Get(s1,dx,0), float4x4(-0.276946783065796,-0.027745991945267,-0.024862404912710,-0.160092040896416,-0.052005194127560,0.067855812609196,0.205658614635468,-0.048401031643152,0.131174042820930,-0.314291656017303,0.020690092816949,-0.187971413135529,0.290526866912842,-0.023313680663705,0.009037978015840,0.045613560825586));
res += mul(Get(s1,dx,dy), float4x4(0.033734735101461,-0.016174450516701,-0.032615467905998,-0.210950627923012,0.054452776908875,0.098656371235847,0.062975510954857,0.071715563535690,-0.215910270810127,-0.005426784045994,0.091246806085110,0.121427953243256,0.120679222047329,0.028570666909218,0.089305117726326,0.061875525861979));
res += mul(Get(s2,-dx,-dy), float4x4(0.031103804707527,-0.093351326882839,-0.047812759876251,-0.104718163609505,0.026211755350232,-0.161959871649742,0.224107101559639,0.139158695936203,-0.068710230290890,0.148845970630646,-0.071135677397251,0.046705156564713,0.067844115197659,-0.272631049156189,0.254958927631378,-0.017087450250983));
res += mul(Get(s2,-dx,0), float4x4(-0.010243731550872,0.011249765753746,-0.138164281845093,-0.430833727121353,-0.027437644079328,0.006549858953804,0.219168543815613,-0.374222069978714,0.009153110906482,0.197539329528809,-0.184336200356483,-0.300850927829742,-0.062634371221066,-0.010241479612887,0.390382707118988,0.072468265891075));
res += mul(Get(s2,-dx,dy), float4x4(-0.112901315093040,0.077952206134796,-0.006175914779305,0.210734546184540,-0.157071784138680,0.228595450520515,0.103391431272030,0.130113661289215,0.059302095323801,-0.037861362099648,0.039577789604664,0.152066320180893,-0.053144760429859,0.001504384563304,-0.009641394019127,0.061978597193956));
res += mul(Get(s2,0,-dy), float4x4(-0.039624311029911,-0.022219544276595,0.173616707324982,-0.008992581628263,-0.065340101718903,0.026314005255699,-0.089893586933613,-0.028738569468260,-0.005617035087198,-0.074254520237446,0.170968338847160,-0.153075233101845,-0.067749306559563,0.107919916510582,0.139836445450783,0.071151293814182));
res += mul(Get(s2,0,0), float4x4(-0.065193876624107,0.140967994928360,0.381750613451004,-0.044500391930342,0.350056380033493,-0.159257307648659,-0.289797961711884,0.038830455392599,0.303612560033798,-0.174089685082436,0.098939739167690,0.106665395200253,0.190501093864441,0.208073496818542,0.263610899448395,-0.076366603374481));
res += mul(Get(s2,0,dy), float4x4(0.086914554238319,0.252308696508408,0.546496868133545,0.051795400679111,-0.016323817893863,-0.112193100154400,-0.057467669248581,0.112236730754375,-0.203871473670006,0.044343508780003,-0.058590508997440,0.295340895652771,0.086375050246716,-0.028333736583591,0.193894565105438,-0.078384138643742));
res += mul(Get(s2,dx,-dy), float4x4(0.037158630788326,-0.005414950195700,0.022996470332146,0.132263407111168,0.062484309077263,0.061807122081518,-0.141089588403702,-0.017997097223997,0.092013023793697,0.002148489467800,-0.057049755007029,-0.010011115111411,-0.048922020941973,0.236718490719795,-0.032340567559004,-0.159141689538956));
res += mul(Get(s2,dx,0), float4x4(0.261461883783340,-0.006907893344760,0.061370793730021,0.108297020196915,-0.176619604229927,0.236644431948662,-0.010007995180786,0.003866165876389,-0.268389910459518,0.158822432160378,0.016017150133848,0.004591456614435,0.027328914031386,0.138842478394508,-0.190922364592552,-0.003535601776093));
res += mul(Get(s2,dx,dy), float4x4(0.114998012781143,-0.059349972754717,-0.072737120091915,0.140765115618706,0.054322846233845,0.041385743767023,-0.000059893263824,-0.082637824118137,0.038986925035715,0.013416168279946,0.048398505896330,0.030259696766734,0.111665964126587,0.050401501357555,-0.030598482117057,-0.143157482147217));
res += mul(Get(s3,-dx,-dy), float4x4(0.089311279356480,0.014337238855660,-0.102640107274055,-0.040010318160057,0.006810774561018,-0.066628396511078,-0.105917885899544,-0.146408095955849,0.009575892239809,0.069665461778641,-0.264178812503815,0.090607807040215,0.025468254461884,0.032569408416748,-0.102869026362896,0.039754793047905));
res += mul(Get(s3,-dx,0), float4x4(0.055723246186972,-0.369138836860657,-0.326213598251343,-0.261178642511368,0.058238398283720,-0.283489942550659,0.127179458737373,-0.040093544870615,-0.017355194315314,0.042161922901869,-0.820679485797882,-0.046003609895706,0.019569927826524,-0.022159228101373,-0.114453904330730,-0.030798722058535));
res += mul(Get(s3,-dx,dy), float4x4(-0.076019354164600,-0.165416866540909,-0.142359763383865,-0.199419304728508,0.003642540657893,0.008269718848169,0.140555828809738,0.116856619715691,0.013117579743266,0.004545216448605,-0.007077527232468,0.060458824038506,-0.042068190872669,-0.060083132237196,-0.072351783514023,0.011603959836066));
res += mul(Get(s3,0,-dy), float4x4(-0.031773049384356,-0.134960800409317,0.022449636831880,0.316504389047623,0.023515513166785,0.075408287346363,-0.053210828453302,-0.069878242909908,0.000935870804824,-0.124641768634319,-0.110461369156837,0.109755694866180,-0.012222304940224,-0.084225699305534,0.122682966291904,-0.148999407887459));
res += mul(Get(s3,0,0), float4x4(-0.052792470902205,0.209438785910606,0.004583325702697,0.166810929775238,-0.276924997568130,0.222489893436432,-0.164551451802254,-0.023476874455810,-0.166276246309280,-0.422125011682510,0.015671700239182,-0.600932478904724,-0.127538457512856,-0.534595906734467,-0.099840842187405,-0.482031464576721));
res += mul(Get(s3,0,dy), float4x4(0.016219902783632,-0.169159188866615,-0.136775970458984,0.063158996403217,0.202022433280945,-0.067841589450836,-0.152458757162094,0.112134605646133,-0.132164984941483,0.192681744694710,0.126575127243996,0.242600739002228,-0.256461292505264,-0.350410014390945,-0.153548285365105,0.186420261859894));
res += mul(Get(s3,dx,-dy), float4x4(0.010807079263031,0.021802084520459,0.021013075485826,0.044318605214357,0.037523157894611,0.099819675087929,-0.022307831794024,-0.118480436503887,0.012043685652316,0.077256157994270,-0.003832755144686,-0.080093674361706,0.030660545453429,0.053483508527279,0.031410850584507,-0.020729770883918));
res += mul(Get(s3,dx,0), float4x4(0.105363115668297,0.025385474786162,0.060866013169289,-0.096946865320206,0.159440502524376,0.189883783459663,-0.017786633223295,-0.113354854285717,-0.193804845213890,0.106477178633213,0.033450715243816,-0.073504425585270,-0.055694054812193,0.219292536377907,0.080073237419128,-0.201387241482735));
res += mul(Get(s3,dx,dy), float4x4(-0.179772168397903,0.020878609269857,0.009798778221011,0.099635720252991,0.246283203363419,-0.086962476372719,0.031616769731045,-0.152506440877914,-0.007572994567454,0.041005060076714,-0.070790387690067,-0.011013604700565,-0.138186499476433,0.008038408122957,0.018601650372148,0.070205874741077));
res += mul(Get(s4,-dx,-dy), float4x4(0.043314535170794,-0.148864120244980,-0.119486533105373,-0.010695616714656,0.031492803245783,-0.027454979717731,-0.029343103989959,-0.108580604195595,-0.072639532387257,0.192762270569801,0.108329780399799,-0.136967524886131,-0.052341882139444,-0.033385150134563,-0.222093760967255,-0.334430754184723));
res += mul(Get(s4,-dx,0), float4x4(0.028295785188675,-0.087421923875809,0.083150416612625,0.256130218505859,-0.104767039418221,0.060352880507708,-0.197382137179375,0.170981302857399,-0.185552120208740,0.289282113313675,0.001398175372742,-0.013208854012191,0.026020791381598,-0.112461924552917,-0.164032831788063,0.124561034142971));
res += mul(Get(s4,-dx,dy), float4x4(-0.020999772474170,-0.020421802997589,-0.007683713454753,-0.066516451537609,-0.007912399247289,-0.049797192215919,-0.071581624448299,0.023143045604229,0.015466354787350,-0.024970125406981,0.121407337486744,-0.085000805556774,0.070440813899040,-0.049933705478907,0.065375827252865,-0.138961762189865));
res += mul(Get(s4,0,-dy), float4x4(-0.078654624521732,-0.125001206994057,0.003992760088295,-0.045865096151829,-0.037673939019442,0.055658821016550,-0.059850107878447,-0.011364206671715,0.065048523247242,0.167815208435059,-0.097236029803753,-0.100551120936871,0.083845168352127,-0.050145357847214,-0.047197829931974,-0.311469703912735));
res += mul(Get(s4,0,0), float4x4(-0.196304768323898,-0.182878494262695,-0.468510746955872,0.196913868188858,-0.195345625281334,0.362041980028152,-0.265542060136795,0.278394907712936,-0.193200364708900,0.570202708244324,-0.119046323001385,0.069353215396404,-0.068113759160042,-0.223655298352242,-0.098894871771336,-0.063946329057217));
res += mul(Get(s4,0,dy), float4x4(0.080283775925636,0.025650059804320,-0.067614108324051,-0.446360558271408,-0.001237180083990,0.126430094242096,0.059214126318693,0.179270163178444,0.163386255502701,0.098005175590515,-0.126124963164330,-0.095101907849312,-0.181010320782661,-0.238739028573036,-0.209680899977684,0.069735564291477));
res += mul(Get(s4,dx,-dy), float4x4(-0.055985182523727,-0.017586391419172,0.134506776928902,-0.136926397681236,-0.069060087203979,-0.107932664453983,0.020988505333662,-0.089547649025917,-0.109880298376083,-0.177722141146660,0.031378977000713,0.032055351883173,0.016639320179820,-0.048437926918268,0.082239545881748,-0.047534897923470));
res += mul(Get(s4,dx,0), float4x4(-0.786890208721161,-0.025782454758883,0.159434705972672,0.423867940902710,0.112706333398819,-0.060246173292398,0.019573224708438,0.031314548105001,0.235798135399818,-0.311093389987946,-0.095056936144829,0.065756283700466,0.030115945264697,-0.037901565432549,0.151035323739052,-0.386080384254456));
res += mul(Get(s4,dx,dy), float4x4(-0.094545945525169,-0.043862458318472,0.066869653761387,-0.010966438800097,-0.212339848279953,0.013513929210603,0.073161460459232,0.128248110413551,-0.080267615616322,-0.140192896127701,-0.085094504058361,-0.025586992502213,-0.153433486819267,0.044965673238039,0.055221021175385,0.161045625805855));
res += mul(Get(s5,-dx,-dy), float4x4(0.025878794491291,0.070534393191338,-0.072228454053402,-0.013986838050187,0.087799243628979,-0.057330727577209,0.110013909637928,-0.124840945005417,-0.002414955990389,0.022223491221666,-0.098066508769989,0.013793371617794,0.014928983524442,-0.062475729733706,-0.145338356494904,0.149086967110634));
res += mul(Get(s5,-dx,0), float4x4(0.020887807011604,0.147977143526077,-0.248681172728539,-0.173356026411057,-0.200715288519859,0.224457129836082,-0.023126777261496,0.081985354423523,0.103002533316612,0.057291295379400,-0.210420772433281,-0.364964812994003,0.112345598638058,-0.082821704447269,0.113466806709766,0.508875846862793));
res += mul(Get(s5,-dx,dy), float4x4(-0.059880357235670,0.040128897875547,-0.015065493993461,0.020491832867265,0.045611955225468,0.077240899205208,0.033964097499847,0.052391435950994,-0.056624364107847,-0.083289444446564,-0.008790969848633,0.007561898324639,-0.028467474505305,0.057893045246601,0.032510533928871,-0.166852399706841));
res += mul(Get(s5,0,-dy), float4x4(-0.012887185439467,-0.027920804917812,-0.374893009662628,0.138168677687645,-0.119026668369770,0.068662852048874,0.045564580708742,0.136405915021896,0.028616253286600,-0.068348325788975,-0.006193818058819,0.129070654511452,-0.101065345108509,0.014179137535393,0.167714834213257,-0.095081716775894));
res += mul(Get(s5,0,0), float4x4(-0.141227334737778,-0.013670573942363,0.092067226767540,-0.031278565526009,0.367452889680862,-0.606610834598541,0.065722152590752,-0.287560135126114,-0.038246467709541,0.033441606909037,0.167602866888046,-0.523709237575531,-0.253022551536560,-0.172226697206497,-0.069365561008453,0.322458028793335));
res += mul(Get(s5,0,dy), float4x4(-0.309567719697952,0.152146399021149,0.008199258707464,0.261804074048996,-0.134092003107071,-0.265248805284500,0.026684584096074,0.014393787831068,-0.121424898505211,0.121437676250935,-0.000818779109977,-0.274998605251312,0.180801957845688,-0.144466683268547,0.061442904174328,-0.222394645214081));
res += mul(Get(s5,dx,-dy), float4x4(-0.168533995747566,-0.015291130170226,0.092608563601971,0.016523696482182,-0.002332355361432,-0.066982187330723,-0.019769897684455,0.113023042678833,0.016019076108932,0.149298861622810,-0.003836821066216,0.229113683104515,0.032693382352591,0.011583356186748,0.011325740255415,0.034523811191320));
res += mul(Get(s5,dx,0), float4x4(-0.030188981443644,-0.037932902574539,0.006971134338528,-0.246354877948761,-0.121295206248760,-0.333833843469620,-0.154204726219177,-0.156619653105736,-0.026010673493147,-0.019953686743975,0.011498043313622,-0.055273737758398,-0.017068821936846,0.024708483368158,-0.000610962451901,0.281469404697418));
res += mul(Get(s5,dx,dy), float4x4(0.022469354793429,-0.022776635363698,-0.052268050611019,-0.003248378401622,0.033204786479473,-0.016805769875646,-0.080801300704479,0.073084078729153,-0.111749112606049,-0.003271735506132,0.014288713224232,0.044946502894163,-0.060306269675493,0.114914141595364,0.088430941104889,-0.114467523992062));
res = max(float4(0, 0, 0, 0), res) + float4(-0.018448900431395,-0.022889887914062,-0.011991801671684,-0.029601737856865) * min(float4(0, 0, 0, 0), res);
return res;
}
