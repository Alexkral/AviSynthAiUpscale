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
float4 res = float4(-0.247428163886070,-0.423205256462097,-0.265087336301804,-0.201776146888733);
res += mul(Get(s0,-dx,-dy), float4x4(-0.091343618929386,-0.085452020168304,-0.053839832544327,0.022026930004358,-0.125686734914780,0.013329232111573,0.026188140735030,0.065702468156815,0.043071392923594,-0.000939402845688,-0.011069521307945,0.011467747390270,-0.116345867514610,-0.029326485469937,0.009842806495726,-0.031037563458085));
res += mul(Get(s0,-dx,0), float4x4(-0.212301567196846,-0.000281260319753,0.058833725750446,0.048469122499228,-0.021603552624583,0.045577228069305,0.029739122837782,0.008898610249162,-0.102856338024139,0.044796559959650,-0.092281036078930,-0.002262098947540,-0.057153776288033,0.030653744935989,-0.011548615992069,0.049207258969545));
res += mul(Get(s0,-dx,dy), float4x4(-0.007683900650591,0.011041582562029,0.152344435453415,-0.018155671656132,-0.001126126036979,0.011307072825730,-0.017744449898601,0.001457463600673,-0.005953105632216,-0.000910363218281,0.177693888545036,0.010740851052105,0.124107919633389,0.056151971220970,0.122334830462933,0.011100062169135));
res += mul(Get(s0,0,-dy), float4x4(-0.025773471221328,-0.176168680191040,-0.051469445228577,-0.028994763270020,-0.091518312692642,0.031550638377666,-0.005086086690426,0.004818830173463,0.068466924130917,-0.019964659586549,-0.050689358264208,0.061187215149403,0.014318709261715,-0.022960083559155,0.029779529199004,0.032422374933958));
res += mul(Get(s0,0,0), float4x4(-0.008059004321694,0.047591552138329,0.096643745899200,0.120561435818672,0.108328916132450,0.001683807582594,0.022614482790232,0.007878836244345,0.059161935001612,0.092686057090759,-0.044371459633112,0.067787386476994,0.095061905682087,0.078796990215778,-0.040420591831207,0.018731892108917));
res += mul(Get(s0,0,dy), float4x4(0.049443013966084,0.022709250450134,0.062833286821842,0.069484837353230,0.096475869417191,0.065953850746155,-0.011891889385879,0.026912696659565,0.081378847360611,-0.018308527767658,0.059480514377356,-0.078449331223965,0.030016701668501,0.000852667959407,-0.067329473793507,-0.045964937657118));
res += mul(Get(s0,dx,-dy), float4x4(0.004872603807598,-0.132081896066666,0.054730486124754,-0.217555522918701,0.027746757492423,0.018936112523079,-0.035517912358046,0.004790482576936,-0.036449529230595,-0.028381496667862,-0.052640266716480,-0.013986370526254,-0.003318289527670,-0.019774643704295,-0.063316866755486,-0.034674245864153));
res += mul(Get(s0,dx,0), float4x4(0.032801199704409,0.040368009358644,0.072735108435154,-0.103311963379383,0.100044786930084,0.046043802052736,-0.025339335203171,-0.025098707526922,-0.042150825262070,0.047629106789827,-0.008044706657529,0.009128673933446,-0.054882101714611,0.017925417050719,0.067080624401569,0.056998498737812));
res += mul(Get(s0,dx,dy), float4x4(-0.013597363606095,0.084726490080357,0.017891600728035,0.000988090876490,-0.034734521061182,-0.048098761588335,0.030258713290095,-0.081023789942265,0.058139458298683,0.021068483591080,-0.013214067555964,0.001668610610068,-0.072366446256638,0.051934890449047,-0.013997410424054,-0.017854545265436));
res += mul(Get(s1,-dx,-dy), float4x4(0.048182602971792,0.015771847218275,-0.007306841202080,0.071184448897839,0.030669389292598,-0.026325032114983,0.003692533588037,0.085921734571457,-0.068129904568195,0.033357311040163,-0.008722969330847,0.005376786924899,-0.038628183305264,0.004047555848956,-0.062144946306944,0.000964988488704));
res += mul(Get(s1,-dx,0), float4x4(-0.072190552949905,0.056341420859098,0.029653092846274,0.082051493227482,0.161855801939964,0.063568219542503,0.019370829686522,-0.028356466442347,0.204278349876404,-0.045217249542475,0.124648854136467,-0.028487512841821,-0.197310283780098,0.023790463805199,0.062686659395695,-0.012496137991548));
res += mul(Get(s1,-dx,dy), float4x4(-0.027600351721048,0.016398349776864,0.011970506049693,-0.012171229347587,-0.001962452428415,0.007045175880194,-0.078995287418365,-0.042887620627880,0.060465466231108,0.029481263831258,-0.182214379310608,-0.028288153931499,0.068835139274597,0.062625728547573,0.205102860927582,0.006253804080188));
res += mul(Get(s1,0,-dy), float4x4(0.116041965782642,-0.045631725341082,0.061524078249931,0.048339430242777,0.073110520839691,0.026041220873594,0.047591146081686,-0.001416463521309,0.088254190981388,0.022221539169550,0.047809164971113,0.083644412457943,-0.005455831997097,-0.038180388510227,0.080355703830719,0.117529310286045));
res += mul(Get(s1,0,0), float4x4(-0.057646352797747,0.083648487925529,-0.045500647276640,0.064977772533894,-0.055080655962229,-0.037654429674149,-0.043280076235533,-0.086148671805859,0.038783885538578,-0.089267313480377,-0.002651865128428,-0.113212421536446,0.086615011096001,0.139154464006424,-0.048289079219103,0.108677893877029));
res += mul(Get(s1,0,dy), float4x4(0.031112119555473,0.029061421751976,-0.004466696642339,0.092548713088036,-0.034259915351868,0.026853101328015,0.092861898243427,-0.013947038911283,-0.137299776077271,-0.062408044934273,-0.121999956667423,0.047794956713915,0.203751683235168,-0.055892702192068,-0.010421838611364,-0.224776610732079));
res += mul(Get(s1,dx,-dy), float4x4(-0.002049532253295,0.028641095384955,0.071556411683559,-0.070704050362110,-0.046969868242741,-0.006704233121127,-0.057699587196112,0.008623726665974,0.013591691851616,-0.021019924432039,0.022746367380023,0.025183452293277,0.104874871671200,-0.061596825718880,-0.099368646740913,-0.041348863393068));
res += mul(Get(s1,dx,0), float4x4(-0.022977355867624,0.071995362639427,0.069887943565845,0.047510784119368,-0.020330086350441,0.033867098391056,-0.007876311428845,0.064786002039909,-0.096526071429253,-0.083600752055645,0.019655620679259,0.058256708085537,0.034154668450356,0.094708286225796,-0.030151270329952,0.012914367020130));
res += mul(Get(s1,dx,dy), float4x4(0.020975818857551,0.026207394897938,-0.042852021753788,0.052243713289499,-0.003083138028160,-0.008801747113466,-0.051145788282156,-0.067121773958206,-0.100631229579449,0.008627433329821,0.036018911749125,0.020977925509214,-0.039551991969347,-0.010769568383694,0.051129989326000,0.039728835225105));
res += mul(Get(s2,-dx,-dy), float4x4(0.042742408812046,0.035865023732185,-0.050302114337683,-0.097149349749088,-0.039976049214602,-0.002843085443601,-0.006433304399252,0.026092357933521,0.007096467074007,0.007347307167947,-0.012254286557436,-0.025207765400410,-0.041271403431892,0.027974175289273,0.046262547373772,0.035958871245384));
res += mul(Get(s2,-dx,0), float4x4(-0.026344580575824,0.007607584819198,-0.033998366445303,-0.043275263160467,-0.084806360304356,-0.096638992428780,-0.073349028825760,-0.011782498098910,-0.039182920008898,-0.026294047012925,-0.020503001287580,-0.051390562206507,0.206645265221596,0.094369433820248,0.017636183649302,0.067294694483280));
res += mul(Get(s2,-dx,dy), float4x4(0.246021658182144,-0.036942671984434,-0.033156435936689,0.012333800084889,-0.147223800420761,0.057641021907330,-0.020162235945463,0.150766119360924,-0.022873900830746,-0.004675308242440,-0.046783540397882,0.025819361209869,0.238678529858589,-0.039195016026497,-0.116772904992104,-0.176581084728241));
res += mul(Get(s2,0,-dy), float4x4(-0.226226925849915,0.063806362450123,-0.050649330019951,-0.054774865508080,0.002185879740864,0.050275269895792,-0.013508076779544,-0.006214721594006,-0.039840064942837,0.021553838625550,-0.004207602702081,0.052104018628597,0.039333458989859,0.017620744183660,0.024633234366775,-0.021627848967910));
res += mul(Get(s2,0,0), float4x4(0.076668970286846,0.082153342664242,0.080089665949345,0.091815948486328,-0.071932308375835,-0.174258947372437,-0.029107766225934,-0.106297746300697,-0.027258377522230,-0.074954047799110,-0.003506443230435,-0.031478218734264,0.043402478098869,0.101710096001625,-0.017982237040997,-0.034637987613678));
res += mul(Get(s2,0,dy), float4x4(0.016536768525839,-0.035426367074251,-0.073439434170723,-0.129433423280716,-0.063037760555744,0.045170813798904,0.017816297709942,0.104908652603626,0.037920251488686,-0.005540747195482,0.042851027101278,0.051188185811043,-0.120588690042496,-0.124837525188923,0.017672594636679,-0.106673024594784));
res += mul(Get(s2,dx,-dy), float4x4(-0.023111745715141,0.054435737431049,-0.000307530135615,0.088637150824070,-0.066680252552032,0.007101188879460,0.028857780620456,0.076053105294704,0.021846046671271,0.003275004215539,-0.009384948760271,0.036813359707594,-0.049063906073570,-0.032779261469841,-0.052347935736179,-0.110335022211075));
res += mul(Get(s2,dx,0), float4x4(0.124505817890167,0.011325489729643,0.017230674624443,-0.061691161245108,-0.007712542545050,-0.123045407235622,0.032277721911669,-0.102813012897968,0.030063901096582,-0.030641667544842,0.028182104229927,0.014764203689992,-0.038754053413868,0.065671198070049,0.005929922219366,0.082544125616550));
res += mul(Get(s2,dx,dy), float4x4(-0.011223592795432,-0.059702008962631,-0.029990382492542,-0.032434135675430,0.011429097503424,0.026301302015781,0.009604223072529,-0.070459388196468,0.062404263764620,-0.036543712019920,0.011973612010479,-0.025273229926825,-0.013962187804282,0.038519028574228,0.026494335383177,0.129714548587799));
res += mul(Get(s3,-dx,-dy), float4x4(0.059568505734205,-0.005970191210508,0.109458841383457,-0.029451468959451,-0.001489125890657,-0.069932296872139,0.010023961775005,-0.045079674571753,0.028133101761341,-0.032624114304781,0.008418648503721,-0.027562307193875,-0.009495167061687,-0.023699754849076,-0.123825624585152,-0.044288840144873));
res += mul(Get(s3,-dx,0), float4x4(-0.047147881239653,-0.042603142559528,-0.061555888503790,0.013362779282033,-0.031637929379940,0.088968612253666,0.025876376777887,0.058345641940832,-0.045007001608610,0.031899817287922,0.017191277816892,-0.047656245529652,0.235694304108620,0.013328332453966,0.125116452574730,0.008129225112498));
res += mul(Get(s3,-dx,dy), float4x4(0.077574439346790,0.092320159077644,0.095097802579403,0.105062395334244,0.158158779144287,0.045516312122345,0.132024675607681,-0.085471145808697,0.038529407233000,0.000546777388081,0.061084948480129,-0.051105961203575,0.046601258218288,-0.034827735275030,-0.312613755464554,-0.075088769197464));
res += mul(Get(s3,0,-dy), float4x4(0.027236782014370,0.018813716247678,-0.004617040976882,0.018780199810863,-0.045090798288584,-0.105407834053040,-0.080202549695969,-0.062742836773396,-0.031602345407009,-0.024275736883283,0.022233245894313,-0.038357961922884,-0.012081556022167,0.069745659828186,0.026293652132154,-0.047979224473238));
res += mul(Get(s3,0,0), float4x4(0.085041813552380,0.020775666460395,0.001465161330998,0.034922994673252,0.125440046191216,0.234849870204926,-0.052454546093941,0.232137516140938,0.022931547835469,0.105665862560272,0.019182831048965,0.086560167372227,-0.040022492408752,-0.150589734315872,0.031311623752117,-0.240777537226677));
res += mul(Get(s3,0,dy), float4x4(-0.072218678891659,-0.020923472940922,-0.101323157548904,-0.078195743262768,-0.012404539622366,-0.010803863406181,-0.182171002030373,-0.089045964181423,0.039212115108967,-0.002684313338250,-0.043226134032011,-0.064440056681633,-0.152442276477814,0.032586783170700,-0.060233034193516,0.044249471276999));
res += mul(Get(s3,dx,-dy), float4x4(0.087913461029530,0.030096031725407,0.067565076053143,0.004546178039163,0.063546538352966,0.051508016884327,-0.033189360052347,-0.007251472678035,-0.035999536514282,0.006982550024986,0.048419512808323,-0.075057983398438,0.065037645399570,0.063999496400356,0.004754290450364,0.035938419401646));
res += mul(Get(s3,dx,0), float4x4(-0.041182536631823,0.002013618592173,-0.085599087178707,-0.115564189851284,0.054143164306879,0.102015584707260,0.063938811421394,-0.019662350416183,0.007133985869586,0.084178730845451,-0.017564138397574,-0.004639600869268,0.091821849346161,-0.048022937029600,0.097017765045166,0.016015293076634));
res += mul(Get(s3,dx,dy), float4x4(0.002669444540516,0.017134344205260,0.030490733683109,0.053586557507515,0.012639599852264,0.055967070162296,-0.024004437029362,-0.006766161415726,-0.037967529147863,0.006730023771524,-0.026477068662643,0.012512377463281,-0.014328852295876,-0.028755057603121,-0.036867499351501,-0.050198875367641));
res += mul(Get(s4,-dx,-dy), float4x4(0.018751684576273,-0.044851448386908,-0.009777752682567,0.025014022365212,0.022424625232816,0.021836688742042,0.039066690951586,-0.010610684752464,0.035437699407339,-0.050266664475203,0.107180237770081,-0.007122484501451,-0.113094247877598,-0.052064508199692,0.015238840132952,0.115080714225769));
res += mul(Get(s4,-dx,0), float4x4(-0.090406745672226,0.037616830319166,-0.074322104454041,-0.018157795071602,-0.368829876184464,-0.054703552275896,-0.147577419877052,0.035230707377195,-0.119330070912838,0.018850224092603,-0.127506375312805,-0.007932046428323,-0.311313509941101,0.072713084518909,0.004634772893041,0.064731463789940));
res += mul(Get(s4,-dx,dy), float4x4(-0.097204521298409,-0.002052721334621,0.053913023322821,-0.035464309155941,-0.145384252071381,0.044226519763470,0.274857610464096,0.138953953981400,0.101827427744865,0.001726229558699,0.157123327255249,0.013353174552321,0.002650990383700,0.070524461567402,0.268754005432129,-0.023276256397367));
res += mul(Get(s4,0,-dy), float4x4(0.033467441797256,-0.001320957904682,-0.039649851620197,0.021113889291883,-0.127816975116730,0.007287482265383,0.002001564484090,0.118501707911491,-0.107992365956306,-0.047255408018827,-0.115824997425079,-0.067513518035412,-0.029064869508147,-0.084481798112392,0.007334012538195,-0.033964384347200));
res += mul(Get(s4,0,0), float4x4(-0.055361218750477,0.036145105957985,-0.023706018924713,0.056904725730419,0.018538435921073,0.065651945769787,0.001453585457057,0.173158705234528,0.085451073944569,0.042713042348623,0.063074164092541,0.016509618610144,0.080983228981495,0.258476376533508,-0.068597026169300,0.317472994327545));
res += mul(Get(s4,0,dy), float4x4(0.095436960458755,0.041548218578100,0.053295265883207,-0.010417073033750,0.171031087636948,0.008716548793018,0.007428754586726,-0.025347264483571,0.009305230341852,0.015415814705193,0.043948601931334,-0.154141589999199,0.035366535186768,0.001537933479995,-0.170213446021080,-0.070364154875278));
res += mul(Get(s4,dx,-dy), float4x4(-0.102661103010178,-0.038165114820004,-0.014257067814469,-0.022490672767162,0.006379345431924,-0.014378862455487,0.029819309711456,0.026536008343101,0.063909336924553,-0.040428742766380,-0.039357565343380,-0.059181548655033,0.025244433432817,-0.001723926863633,-0.055598977953196,-0.063130125403404));
res += mul(Get(s4,dx,0), float4x4(0.039939597249031,0.039794959127903,0.016569107770920,-0.042848616838455,0.009295475669205,-0.018121432512999,-0.048715379089117,-0.044195998460054,0.004105235449970,0.029857836663723,-0.038726538419724,-0.081851489841938,0.044006459414959,0.147670060396194,-0.027653932571411,-0.106263540685177));
res += mul(Get(s4,dx,dy), float4x4(0.021008275449276,0.040930062532425,-0.006462584249675,-0.079447381198406,0.011796494945884,-0.038561765104532,0.035896923393011,0.042198233306408,0.028928887099028,0.003561838995665,-0.011912107467651,-0.047230966389179,-0.046316310763359,0.091089740395546,0.059180997312069,0.035279195755720));
res += mul(Get(s5,-dx,-dy), float4x4(0.065412424504757,0.015459669753909,0.006581910420209,0.002845504088327,0.109596766531467,-0.022914180532098,-0.086378358304501,-0.083647169172764,0.039951372891665,-0.013280605897307,-0.049760658293962,-0.039328295737505,0.139138653874397,-0.019268412142992,0.015125566162169,0.009262047708035));
res += mul(Get(s5,-dx,0), float4x4(-0.080806881189346,0.038642417639494,0.001404939917848,-0.016856456175447,-0.305880874395370,-0.008986345492303,-0.070045575499535,-0.018581876531243,-0.103249855339527,0.007587823085487,-0.032250374555588,-0.048154711723328,-0.019053522497416,-0.006027150899172,-0.036845587193966,-0.079345434904099));
res += mul(Get(s5,-dx,dy), float4x4(-0.002449844265357,0.005910914391279,0.078069254755974,0.053754169493914,0.135324954986572,0.007138419430703,0.215227305889130,0.042576964944601,-0.026205012574792,0.005676708649844,0.014283575117588,0.069223612546921,-0.145594000816345,0.001416373881511,0.029744582250714,-0.009055562317371));
res += mul(Get(s5,0,-dy), float4x4(0.040632333606482,0.053782455623150,-0.022684689611197,0.076183520257473,-0.117592178285122,-0.040253892540932,-0.001189356553368,-0.041414413601160,-0.098252251744270,-0.044102251529694,-0.027031406760216,-0.044468026608229,0.025389337912202,0.039698034524918,0.009375638328493,-0.031274933367968));
res += mul(Get(s5,0,0), float4x4(-0.075613811612129,-0.030192470178008,0.054191846400499,-0.000742988544516,0.023470187559724,0.147551581263542,-0.013952521607280,0.162178426980972,0.010449633002281,0.077334158122540,0.044237256050110,0.114910304546356,-0.059183325618505,0.005353884771466,-0.004273336380720,0.040259711444378));
res += mul(Get(s5,0,dy), float4x4(0.075088500976563,0.011515249498188,0.023681776598096,0.012716810218990,0.157586351037025,0.001308129285462,-0.036793824285269,-0.154407694935799,-0.009529655799270,0.056347932666540,0.017033733427525,0.030869435518980,0.024532517418265,0.034762956202030,0.071156606078148,-0.006807648111135));
res += mul(Get(s5,dx,-dy), float4x4(-0.014306154102087,0.019511496648192,0.017283171415329,0.034987628459930,-0.000815529958345,0.034169517457485,-0.019776515662670,0.010145931504667,0.036124441772699,0.002726427745074,-0.008826280012727,0.055901341140270,-0.062927946448326,0.038456954061985,0.067147612571716,-0.005727223120630));
res += mul(Get(s5,dx,0), float4x4(-0.003604705212638,0.018798204138875,0.003085647709668,0.026972854509950,0.040637776255608,0.036169942468405,-0.036565411835909,-0.076247587800026,0.048739925026894,0.007814946584404,-0.008075305260718,-0.016836162656546,-0.051524203270674,0.013616835698485,-0.005913078784943,-0.045124933123589));
res += mul(Get(s5,dx,dy), float4x4(0.048779778182507,-0.064582951366901,-0.076561406254768,-0.010542809031904,-0.003528680419549,-0.057127129286528,0.064267255365849,-0.041907615959644,-0.041438959538937,-0.008051618933678,-0.017533695325255,-0.066931731998920,0.013836881145835,-0.006622594315559,-0.009981274604797,-0.014639926142991));
res = max(float4(0, 0, 0, 0), res) + float4(0.008649385534227,-0.007039664778858,0.227441728115082,-0.005022382363677) * min(float4(0, 0, 0, 0), res);
return res;
}