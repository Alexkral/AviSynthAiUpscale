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
float4 res = float4(0.002027232199907,-0.424850493669510,0.050279200077057,0.054240997880697);
res += mul(Get(s0,-dx,-dy), float4x4(0.011185301467776,0.045383993536234,-0.191832393407822,-0.021883839741349,0.032978709787130,-0.025744015350938,0.009852853603661,-0.071427360177040,-0.015066316351295,0.147450789809227,0.016740946099162,-0.095495752990246,0.050512306392193,-0.022273860871792,0.032827667891979,0.045660570263863));
res += mul(Get(s0,-dx,0), float4x4(-0.001778376637958,0.021893121302128,-0.032328665256500,-0.143383488059044,0.022337336093187,0.039180777966976,0.134131118655205,-0.033185094594955,-0.043958388268948,0.080852605402470,0.033555205911398,0.071713164448738,0.077686749398708,-0.259239584207535,0.077626243233681,0.024785596877337));
res += mul(Get(s0,-dx,dy), float4x4(0.067529521882534,-0.186547085642815,-0.077955253422260,-0.141881316900253,-0.032042026519775,0.040866658091545,0.078625433146954,-0.103797972202301,0.098021484911442,0.019969791173935,0.028760252520442,0.158547788858414,-0.137543454766273,-0.014268444851041,0.104113198816776,0.238555744290352));
res += mul(Get(s0,0,-dy), float4x4(0.066126197576523,0.128002837300301,-0.073430590331554,0.114869497716427,-0.051579233258963,0.065733328461647,0.006719989236444,-0.230757981538773,-0.041288055479527,-0.066575266420841,-0.137011691927910,0.090571664273739,0.057722695171833,-0.019433481618762,-0.034418631345034,0.159241408109665));
res += mul(Get(s0,0,0), float4x4(0.110993631184101,-0.025696350261569,-0.055769190192223,0.023004563525319,0.024635778740048,0.020446369424462,-0.016221776604652,0.278082519769669,-0.011748026125133,-0.083763375878334,-0.184505313634872,0.067153736948967,-0.007322349585593,-0.090278834104538,-0.187163919210434,-0.148276269435883));
res += mul(Get(s0,0,dy), float4x4(0.060628987848759,-0.186087995767593,0.027116337791085,0.094734810292721,0.152685031294823,0.113782897591591,0.028743060305715,0.047738999128342,0.060941159725189,-0.052293494343758,-0.054566837847233,-0.006575295235962,-0.129776552319527,0.029856789857149,-0.275548756122589,0.043820049613714));
res += mul(Get(s0,dx,-dy), float4x4(0.011741053313017,-0.115441165864468,0.008986270055175,0.010622847825289,-0.045141685754061,-0.029105870053172,-0.078767776489258,-0.085879579186440,-0.163157090544701,0.003154261270538,-0.052834812551737,0.031289346516132,-0.008109143935144,0.193171098828316,0.047992344945669,0.002474827226251));
res += mul(Get(s0,dx,0), float4x4(-0.000734776200261,-0.041383970528841,-0.011452803388238,0.037239704281092,0.099235728383064,0.058337673544884,-0.053592525422573,0.049293585121632,0.124419420957565,0.141787573695183,0.061178583651781,0.225207865238190,0.022038659080863,-0.022603372111917,0.060838740319014,-0.193475723266602));
res += mul(Get(s0,dx,dy), float4x4(-0.037658125162125,-0.004670159891248,-0.020492954179645,-0.024395648390055,-0.002627000212669,0.100107043981552,0.045102093368769,0.058310698717833,0.065426081418991,-0.012989711016417,-0.049125559628010,0.053836673498154,-0.023612208664417,-0.037806395441294,0.140302315354347,0.305708676576614));
res += mul(Get(s1,-dx,-dy), float4x4(0.004710439592600,0.001910749124363,0.214065179228783,-0.024257477372885,-0.044437177479267,0.029354019090533,-0.114269793033600,-0.171274289488792,-0.161268919706345,-0.006401849444956,-0.362431347370148,-0.132776096463203,0.001499773119576,0.165972694754601,-0.001358666690066,-0.133916750550270));
res += mul(Get(s1,-dx,0), float4x4(-0.030856154859066,-0.033986698836088,-0.233609989285469,0.237885981798172,0.011107822880149,0.056161619722843,-0.106331937015057,-0.029193038120866,0.081879079341888,0.157250002026558,-0.250444322824478,0.114858135581017,-0.103398002684116,0.018859406933188,-0.025881966575980,-0.093975603580475));
res += mul(Get(s1,-dx,dy), float4x4(-0.040645118802786,-0.016844742000103,0.008979616686702,-0.000865669338964,-0.005011416040361,0.054005619138479,-0.129519581794739,-0.015581702813506,0.034965630620718,0.044205386191607,-0.138508513569832,0.161095753312111,0.192310705780983,0.030472202226520,-0.038935277611017,-0.093815587460995));
res += mul(Get(s1,0,-dy), float4x4(-0.413055509328842,-0.404758989810944,-0.278860241174698,-0.113223545253277,-0.048088159412146,-0.111452847719193,-0.117142707109451,-0.019413089379668,0.083477675914764,0.095688924193382,0.212183579802513,-0.071689732372761,0.009457233361900,0.219177648425102,0.058253657072783,-0.005471288692206));
res += mul(Get(s1,0,0), float4x4(0.511370837688446,-0.080990165472031,0.248004734516144,0.278918862342834,-0.014988105744123,-0.071637563407421,-0.309124052524567,0.156469911336899,-0.305986762046814,-0.068370707333088,0.038826987147331,0.141736850142479,-0.010755727067590,-0.052693579345942,0.063659757375717,-0.053738325834274));
res += mul(Get(s1,0,dy), float4x4(0.077166259288788,0.010709162801504,0.216195538640022,0.130702823400497,-0.063799619674683,-0.070684269070625,-0.206963360309601,0.165343642234802,0.249379709362984,0.040906261652708,0.045088607817888,-0.003607566235587,-0.081870928406715,-0.006178958341479,-0.070437051355839,0.061057295650244));
res += mul(Get(s1,dx,-dy), float4x4(-0.109568394720554,0.126643955707550,-0.077410787343979,0.023573389276862,-0.224085614085197,-0.092859745025635,-0.100544124841690,-0.172287493944168,0.071870319545269,0.019746826961637,0.282889515161514,0.142469719052315,0.026637775823474,0.022187180817127,0.001699982094578,-0.076710827648640));
res += mul(Get(s1,dx,0), float4x4(-0.108781456947327,0.054960291832685,-0.101058728992939,-0.036882359534502,0.156214728951454,0.051035720854998,0.457046568393707,-0.127323120832443,-0.105368621647358,0.083867803215981,0.175899565219879,0.126722291111946,-0.044806048274040,0.013131010346115,0.105842076241970,-0.057551063597202));
res += mul(Get(s1,dx,dy), float4x4(0.286572009325027,0.105759523808956,0.022400466725230,-0.127623885869980,-0.063484527170658,-0.133163601160049,-0.281534135341644,0.052278239279985,-0.083565607666969,-0.024576187133789,0.013403759337962,-0.122371904551983,0.045870222151279,-0.226942345499992,0.072349593043327,0.075478963553905));
res += mul(Get(s2,-dx,-dy), float4x4(0.089748263359070,-0.051266644150019,0.044825453311205,-0.085334330797195,0.002115156268701,-0.133905082941055,0.032867025583982,-0.020188862457871,-0.057138483971357,0.057392418384552,0.173071324825287,-0.242106527090073,-0.006446828134358,0.374681383371353,0.084779515862465,-0.213762313127518));
res += mul(Get(s2,-dx,0), float4x4(0.024486953392625,-0.177510336041451,0.232721179723740,0.175922393798828,0.053107853978872,-0.035437699407339,-0.020792119204998,0.049465216696262,0.040597271174192,-0.284372299909592,0.099186867475510,0.149750888347626,-0.104550316929817,-0.308667391538620,-0.124067448079586,-0.030996279790998));
res += mul(Get(s2,-dx,dy), float4x4(-0.073889702558517,-0.060214363038540,0.083391360938549,0.018943294882774,-0.054071258753538,0.061265170574188,0.083118006587029,-0.317985862493515,0.105482116341591,-0.031211549416184,0.008769042789936,0.154573783278465,0.122294068336487,-0.232236653566360,-0.019350949674845,-0.141974821686745));
res += mul(Get(s2,0,-dy), float4x4(0.119768857955933,-0.153191417455673,-0.007242422550917,-0.059136535972357,-0.016071669757366,-0.149969115853310,-0.235567837953568,-0.090314261615276,0.014989106915891,0.403873801231384,-0.011659196577966,-0.024875557050109,-0.131841182708740,0.569065868854523,0.016578957438469,0.085017241537571));
res += mul(Get(s2,0,0), float4x4(-0.175680816173553,0.064697928726673,-0.102035894989967,0.106347389519215,0.326037526130676,-0.117328867316246,0.198455721139908,-0.032751463353634,-0.402334749698639,0.098948560655117,-0.005565062165260,-0.127091377973557,-0.081973537802696,-0.089387007057667,0.025121504440904,-0.140272140502930));
res += mul(Get(s2,0,dy), float4x4(0.065565377473831,-0.091920569539070,0.080789864063263,-0.030896509066224,0.163199946284294,0.063904054462910,0.152062624692917,-0.153315007686615,0.199328392744064,-0.191681891679764,0.074656531214714,-0.209756746888161,0.429244786500931,-0.096745043992996,0.097469575703144,-0.068058356642723));
res += mul(Get(s2,dx,-dy), float4x4(0.009859956800938,0.058215484023094,-0.203321516513824,0.075678862631321,0.018947832286358,0.111731737852097,-0.010245950892568,0.013660796917975,-0.004431229084730,-0.009069003164768,-0.145403340458870,0.132741734385490,-0.058597318828106,0.008837600238621,-0.095058314502239,0.200141891837120));
res += mul(Get(s2,dx,0), float4x4(0.000733308785129,0.183165624737740,-0.293805211782455,0.112494021654129,-0.013718526810408,0.094175741076469,0.214566007256508,0.073781691491604,-0.053989622741938,-0.078733056783676,-0.051350418478251,0.145272731781006,-0.019767474383116,0.023609120398760,-0.047447402030230,0.228637740015984));
res += mul(Get(s2,dx,dy), float4x4(0.014956588856876,0.223252102732658,-0.059845488518476,-0.005132441874593,-0.022448869422078,0.001821208163165,0.054268050938845,-0.050778478384018,0.041299961507320,0.048522010445595,-0.093824423849583,0.062005143612623,-0.056308064609766,-0.211113229393959,-0.030136074870825,0.066701650619507));
res += mul(Get(s3,-dx,-dy), float4x4(-0.049522913992405,0.064473420381546,0.364218711853027,0.083115793764591,-0.111762829124928,-0.122947514057159,-0.232427775859833,-0.019476503133774,0.099640220403671,0.132550194859505,0.096296980977058,-0.290500551462173,-0.088489621877670,-0.092042431235313,0.127170011401176,-0.092926122248173));
res += mul(Get(s3,-dx,0), float4x4(-0.020925926044583,-0.023152921348810,0.137069419026375,0.124771006405354,0.287943512201309,0.146714150905609,0.207084268331528,-0.055885944515467,-0.273472338914871,-0.114587858319283,-0.155488193035126,0.020217740908265,-0.101370811462402,-0.041785780340433,-0.104575544595718,-0.227307423949242));
res += mul(Get(s3,-dx,dy), float4x4(0.048208639025688,-0.054159253835678,0.177078738808632,0.021603344008327,-0.242746546864510,-0.203250512480736,-0.175407797098160,0.083039768040180,0.324968159198761,0.088329955935478,0.055717609822750,-0.056483108550310,-0.203238472342491,-0.129714503884315,-0.068197280168533,0.094817295670509));
res += mul(Get(s3,0,-dy), float4x4(-0.155337378382683,0.191661164164543,-0.057365115731955,-0.070008374750614,-0.036476075649261,0.017858058214188,-0.097836583852768,-0.165978506207466,-0.125576391816139,-0.116524904966354,0.081496678292751,0.131949037313461,-0.092557676136494,-0.054562523961067,-0.048413049429655,0.362121969461441));
res += mul(Get(s3,0,0), float4x4(-0.305740803480148,-0.071307681500912,-0.382803887128830,-0.109067007899284,0.367143720388412,-0.002221163129434,0.102713629603386,-0.033281750977039,-0.245541095733643,-0.040398642420769,-0.394635796546936,-0.066383086144924,0.148729532957077,0.119578644633293,-0.140423431992531,0.044730152934790));
res += mul(Get(s3,0,dy), float4x4(0.544515669345856,-0.039657086133957,0.015376405790448,0.145925819873810,-0.050192166119814,-0.113068342208862,-0.079459466040134,0.165722802281380,0.254651099443436,-0.054440427571535,0.053199201822281,0.013936916366220,-0.163248226046562,-0.104099631309509,-0.021309355273843,0.200400322675705));
res += mul(Get(s3,dx,-dy), float4x4(-0.043813940137625,-0.070909090340137,-0.078107863664627,-0.004405185580254,-0.026365529745817,-0.110914550721645,-0.287674039602280,-0.112238250672817,-0.107782542705536,-0.009542077779770,-0.085395231842995,-0.020089441910386,-0.108942024409771,0.026630580425262,0.132363393902779,0.007113660220057));
res += mul(Get(s3,dx,0), float4x4(-0.073468148708344,0.119033589959145,-0.185636252164841,0.076844543218613,0.297802686691284,0.138360753655434,0.310998708009720,0.069850981235504,0.235886201262474,0.104280591011047,0.274763077497482,0.152986928820610,-0.067620463669300,0.088110491633415,-0.052538882941008,-0.150475248694420));
res += mul(Get(s3,dx,dy), float4x4(0.101957134902477,0.006595919840038,0.025335930287838,-0.050779189914465,-0.250619947910309,0.060225360095501,-0.099324390292168,-0.066357813775539,-0.153716191649437,-0.008211228996515,-0.031044127419591,0.065377183258533,-0.048187628388405,-0.017981868237257,-0.006798679009080,0.043206412345171));
res += mul(Get(s4,-dx,-dy), float4x4(0.205987334251404,-0.081652320921421,0.132298931479454,0.182066529989243,0.101673133671284,0.019091686233878,0.100297965109348,0.002227497752756,0.017250824719667,-0.175579220056534,-0.120961137115955,-0.277076452970505,-0.009511757642031,-0.113616026937962,0.044802080839872,-0.190552935004234));
res += mul(Get(s4,-dx,0), float4x4(0.016426116228104,-0.186316147446632,0.246360927820206,0.018589818850160,-0.048407480120659,0.040359858423471,0.082302309572697,0.265384823083878,0.054473038762808,-0.103949569165707,-0.146912381052971,-0.035065468400717,-0.092502705752850,-0.033359583467245,-0.217317774891853,-0.150950610637665));
res += mul(Get(s4,-dx,dy), float4x4(-0.264357179403305,-0.155251234769821,0.023599699139595,0.029264641925693,-0.053161997348070,-0.020321162417531,-0.038083098828793,-0.015284514054656,-0.071171760559082,-0.044380158185959,0.066387243568897,-0.150012791156769,0.066006347537041,-0.089279532432556,-0.095169685781002,-0.122607417404652));
res += mul(Get(s4,0,-dy), float4x4(0.298717707395554,-0.210195213556290,0.079282052814960,0.244178637862206,-0.106884002685547,0.012879969552159,0.104942031204700,0.037464454770088,0.237927421927452,-0.276749759912491,0.263084232807159,-0.300263881683350,0.041278887540102,-0.292413294315338,-0.056393925100565,-0.086896985769272));
res += mul(Get(s4,0,0), float4x4(0.261495530605316,-0.149832352995872,0.401920855045319,0.031151464208961,-0.000656660238747,0.029113205149770,-0.095800444483757,0.025535594671965,0.230374038219452,0.219903796911240,0.554580152034760,0.355682075023651,0.237680688500404,-0.000009829606824,0.181656464934349,0.113115541636944));
res += mul(Get(s4,0,dy), float4x4(-0.483166605234146,0.078373774886131,-0.018242232501507,0.056947708129883,0.026319777593017,-0.002760130912066,-0.086533300578594,-0.087974935770035,-0.551411151885986,-0.120759345591068,-0.049369119107723,-0.261196851730347,-0.134398177266121,-0.017545051872730,-0.110406152904034,0.103907704353333));
res += mul(Get(s4,dx,-dy), float4x4(0.214109763503075,-0.057397883385420,0.172196626663208,0.139559850096703,-0.078650183975697,0.093592338263988,0.021722277626395,-0.116749987006187,0.017867457121611,0.129199013113976,0.036406885832548,-0.013899205252528,-0.012176099233329,0.329136461019516,0.065898068249226,-0.051134251058102));
res += mul(Get(s4,dx,0), float4x4(0.190997898578644,-0.079328373074532,0.464221775531769,0.006037641782314,0.023720486089587,0.055029846727848,0.074260674417019,-0.114259324967861,0.077531434595585,-0.121413305401802,-0.065973877906799,0.004996437113732,-0.002458863426000,0.230383113026619,0.037353955209255,0.063332460820675));
res += mul(Get(s4,dx,dy), float4x4(-0.408189892768860,-0.060807533562183,-0.036109477281570,0.073887571692467,-0.092853218317032,-0.060830786824226,0.094398319721222,-0.013809534721076,-0.072009094059467,0.060935966670513,-0.241427272558212,0.015616022050381,-0.016633944585919,0.116606459021568,0.005799164064229,0.026842962950468));
res += mul(Get(s5,-dx,-dy), float4x4(-0.048059694468975,0.043939188122749,0.055640254169703,0.040800482034683,-0.079322732985020,0.121514946222305,0.112269401550293,-0.013193844817579,0.071008764207363,0.050103727728128,0.007691484875977,-0.059139627963305,0.013082775287330,0.118295542895794,0.151006877422333,0.048706948757172));
res += mul(Get(s5,-dx,0), float4x4(0.057104852050543,0.075947321951389,0.064115904271603,0.029991356655955,-0.024878900498152,0.140524029731750,0.136310935020447,0.027934217825532,-0.103121317923069,-0.155857682228088,-0.041365701705217,0.119159750640392,0.019624404609203,0.191110789775848,0.172440722584724,0.154740527272224));
res += mul(Get(s5,-dx,dy), float4x4(-0.035687487572432,0.020516265183687,0.065885804593563,-0.187318831682205,-0.116889268159866,0.012743262574077,0.081987529993057,-0.090237572789192,0.064734213054180,0.034008998423815,0.017830878496170,-0.126622200012207,0.033310696482658,0.204418361186981,0.166630789637566,0.121254079043865));
res += mul(Get(s5,0,-dy), float4x4(-0.013902193866670,0.039221670478582,0.138978421688080,-0.045736581087112,-0.017128074541688,0.048552501946688,0.016840798780322,0.044318672269583,0.143787875771523,0.183312758803368,-0.010767113417387,0.019052350893617,-0.162902504205704,0.068226158618927,-0.134798496961594,0.017324725165963));
res += mul(Get(s5,0,0), float4x4(0.028453528881073,0.045013647526503,0.011087267659605,0.135309934616089,-0.008331953547895,0.094536222517490,0.088676229119301,0.016644671559334,-0.382896870374680,-0.126176625490189,-0.310066461563110,0.032797798514366,-0.168999984860420,0.020331582054496,-0.336693882942200,-0.088536046445370));
res += mul(Get(s5,0,dy), float4x4(0.068016350269318,-0.170398205518723,-0.177558377385139,0.016637362539768,-0.036760140210390,-0.021596645936370,0.002754553221166,0.147296786308289,0.324886679649353,0.257348209619522,0.140656858682632,0.202808275818825,0.380289554595947,-0.009012297727168,0.052090410143137,-0.058417636901140));
res += mul(Get(s5,dx,-dy), float4x4(-0.022437352687120,0.028016304597259,0.033415369689465,-0.117441728711128,-0.015350030735135,0.154386654496193,-0.067746169865131,-0.026173746213317,-0.011871817521751,-0.250617295503616,-0.132082849740982,0.165475875139236,0.018081068992615,-0.248441264033318,0.159471929073334,-0.143585965037346));
res += mul(Get(s5,dx,0), float4x4(0.005254453513771,-0.010210648179054,0.019540688022971,-0.062474168837070,-0.043694715946913,0.073608331382275,-0.108207523822784,0.195660218596458,0.148860186338425,0.104544326663017,0.197829708456993,0.109134100377560,-0.128064662218094,-0.094606548547745,-0.009917262941599,0.104792505502701));
res += mul(Get(s5,dx,dy), float4x4(0.015327252447605,0.048572145402431,-0.091309472918510,-0.069066032767296,0.095621891319752,0.001646384247579,0.067067675292492,-0.073505930602551,-0.184131801128387,-0.062275253236294,-0.033028077334166,-0.114739149808884,0.097959071397781,-0.043305158615112,0.162406802177429,-0.139755666255951));
res = max(float4(0, 0, 0, 0), res) + float4(-0.129357159137726,0.065854616463184,0.029076822102070,0.115126796066761) * min(float4(0, 0, 0, 0), res);
return res;
}
