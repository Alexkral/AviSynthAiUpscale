sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.008096911944449,-0.084401145577431,0.043895952403545,0.133522599935532);
res += mul(Get(s0,-dx,-dy), float4x4(0.013802466914058,-0.086351759731770,-0.032169785350561,0.059401508420706,0.044520642608404,0.148937344551086,0.005643927492201,0.122324272990227,-0.088256411254406,0.009839853271842,-0.002456779591739,-0.011255107820034,-0.028459593653679,-0.093031100928783,0.027888838201761,-0.047483526170254));
res += mul(Get(s0,-dx,0), float4x4(0.176897868514061,-0.086115002632141,-0.033815979957581,0.028326969593763,0.027706468477845,0.038240812718868,-0.006672230083495,0.132934063673019,0.128512993454933,-0.163618668913841,0.043641902506351,-0.034406181424856,0.055698137730360,0.149723619222641,-0.000852130237035,-0.003239563433453));
res += mul(Get(s0,-dx,dy), float4x4(0.064413554966450,0.079377047717571,-0.023220164701343,-0.004051728174090,0.279641717672348,-0.056482702493668,0.013305734843016,-0.035104192793369,-0.009602313861251,0.096417687833309,0.006465174257755,-0.057995673269033,-0.080372668802738,-0.121627494692802,0.014594378881156,0.002726522507146));
res += mul(Get(s0,0,-dy), float4x4(-0.134009122848511,-0.024721903726459,0.018176989629865,-0.061249293386936,0.123029641807079,0.066613353788853,0.023896351456642,0.147857159376144,0.019165499135852,-0.013084076344967,0.046059649437666,-0.002961280755699,-0.251584053039551,-0.001091181416996,0.009802078828216,-0.058817278593779));
res += mul(Get(s0,0,0), float4x4(0.107690677046776,0.178504437208176,0.064951710402966,0.172141313552856,0.167615711688995,0.152563139796257,-0.012371813878417,0.135804817080498,-0.203924998641014,0.025365430861712,0.025866406038404,0.069559819996357,-0.103054672479630,0.000035590212065,0.232266321778297,-0.188933119177818));
res += mul(Get(s0,0,dy), float4x4(0.094486832618713,-0.021271765232086,-0.042981386184692,-0.129032522439957,-0.033476054668427,-0.075387790799141,0.009540820494294,0.187797069549561,-0.037651713937521,0.164027288556099,-0.018970942124724,0.141762048006058,-0.143766820430756,-0.033542022109032,0.036884039640427,-0.049980212002993));
res += mul(Get(s0,dx,-dy), float4x4(0.005677527748048,0.017892161384225,-0.004956710152328,-0.015383602119982,0.031632706522942,0.071320228278637,0.025260154157877,0.161002218723297,0.019158566370606,-0.063290476799011,-0.005004220642149,-0.103498987853527,-0.025811763480306,0.083526857197285,0.015069320797920,0.028351970016956));
res += mul(Get(s0,dx,0), float4x4(0.132734254002571,0.040619079023600,0.025987675413489,0.080695092678070,-0.009504743851721,0.002164695179090,-0.068079546093941,0.002652192022651,-0.101238720118999,0.110079452395439,0.057239659130573,-0.066635295748711,0.074375197291374,0.210610702633858,0.077703915536404,0.061136797070503));
res += mul(Get(s0,dx,dy), float4x4(-0.013111320324242,0.103742659091949,0.023168241605163,0.034884255379438,0.073233850300312,0.007112288381904,-0.072285950183868,-0.081064753234386,0.003422785084695,0.025569807738066,0.075651317834854,-0.063016049563885,0.030968472361565,-0.030742978677154,0.043191015720367,0.021813072264194));
res += mul(Get(s1,-dx,-dy), float4x4(-0.090499512851238,0.037424150854349,0.012929766438901,-0.169330149888992,-0.107714846730232,-0.060440547764301,-0.025527518242598,-0.063679188489914,0.113576911389828,0.269769072532654,-0.019832359626889,0.103773303329945,-0.205078244209290,-0.104223690927029,0.033091053366661,0.131496638059616));
res += mul(Get(s1,-dx,0), float4x4(-0.144766926765442,-0.114568769931793,0.006640012841672,-0.119147330522537,0.034395299851894,-0.038974404335022,-0.034100085496902,0.096893854439259,-0.224469423294067,-0.095027118921280,0.035438805818558,0.029613655060530,0.128950700163841,0.260778158903122,-0.038949258625507,0.000898952945136));
res += mul(Get(s1,-dx,dy), float4x4(0.063929170370102,-0.020906170830131,0.006018433719873,-0.052715707570314,0.186794444918633,0.068639077246189,-0.009515201672912,-0.181192681193352,0.109393179416656,0.045350097119808,-0.024110702797771,-0.093860834836960,0.070142894983292,0.061269953846931,-0.035193234682083,0.000461128482129));
res += mul(Get(s1,0,-dy), float4x4(0.030027898028493,0.185998007655144,-0.108899131417274,0.143051460385323,-0.185600772500038,0.019913442432880,0.019293619319797,0.064886763691902,0.049773611128330,0.094059050083160,-0.004477061331272,0.008587272837758,0.054001692682505,-0.022622432559729,0.012572869658470,0.139798864722252));
res += mul(Get(s1,0,0), float4x4(-0.118749566376209,0.026107866317034,-0.019019523635507,-0.132701277732849,-0.383239865303040,0.091528050601482,-0.025373384356499,0.077208064496517,-0.307432472705841,0.033667996525764,-0.113114811480045,-0.031863443553448,-0.150544941425323,-0.045370806008577,0.086908705532551,0.027228247374296));
res += mul(Get(s1,0,dy), float4x4(-0.064412124454975,-0.025656631216407,0.014425342902541,0.031668670475483,-0.104229658842087,0.208184868097305,0.056970406323671,0.044762771576643,-0.078044809401035,0.017339689657092,0.026310434564948,0.025522325187922,0.207381457090378,-0.052720431238413,-0.128218248486519,-0.164453446865082));
res += mul(Get(s1,dx,-dy), float4x4(0.046615526080132,0.147798940539360,-0.093729063868523,0.037253260612488,0.022463876754045,0.185556963086128,0.018484387546778,-0.028729584068060,-0.093483321368694,0.068816453218460,0.072925582528114,-0.017901929095387,-0.121424652636051,-0.048625037074089,0.045432273298502,0.082785293459892));
res += mul(Get(s1,dx,0), float4x4(-0.141818821430206,-0.039477482438087,-0.032062534242868,-0.173170268535614,0.175692394375801,0.085150413215160,0.096256725490093,-0.005472804885358,0.195561140775681,0.035246539860964,0.031501885503531,0.106769829988480,0.060435194522142,0.035744093358517,0.003179329913110,-0.010256451554596));
res += mul(Get(s1,dx,dy), float4x4(0.128760248422623,-0.075829379260540,0.037611592561007,0.020119341090322,0.125972867012024,0.076142072677612,0.047806136310101,-0.086358696222305,0.135142207145691,-0.134391501545906,-0.024919226765633,-0.076573662459850,0.024371709674597,0.137412801384926,0.008706456981599,0.008091232739389));
res += mul(Get(s2,-dx,-dy), float4x4(-0.074702642858028,-0.106694005429745,0.013918339274824,0.032127115875483,0.088299877941608,0.180190905928612,0.007598411291838,0.129972785711288,-0.325557470321655,-0.038687631487846,-0.004680319689214,-0.349480241537094,-0.063013955950737,-0.176149487495422,-0.009157102555037,0.009402676485479));
res += mul(Get(s2,-dx,0), float4x4(-0.207613855600357,0.015257810242474,0.137901395559311,-0.053800843656063,0.020455237478018,0.115971855819225,0.012389573268592,0.051842994987965,-0.288925915956497,-0.004707120358944,0.043021332472563,-0.210955575108528,-0.212522521615028,0.060750942677259,0.043892741203308,-0.171442598104477));
res += mul(Get(s2,-dx,dy), float4x4(-0.036769550293684,-0.011371058411896,0.037594657391310,0.110383987426758,-0.039780315011740,0.056241065263748,-0.040430381894112,0.059207092970610,-0.261404216289520,-0.015660354867578,0.042645540088415,-0.097233898937702,-0.151290401816368,-0.012322396039963,0.024861581623554,-0.072905309498310));
res += mul(Get(s2,0,-dy), float4x4(-0.245267182588577,0.239530190825462,-0.024317070841789,-0.159014135599136,0.016462413594127,0.123291343450546,0.040681496262550,0.259450018405914,0.003487753914669,-0.151760116219521,0.076012432575226,-0.217495530843735,0.009596295654774,0.039447177201509,-0.006887153722346,0.030146770179272));
res += mul(Get(s2,0,0), float4x4(0.057813614606857,0.006565717048943,0.271238595247269,0.111903756856918,0.005067410413176,0.181331738829613,0.098456650972366,0.009077324531972,0.050078790634871,-0.013115397654474,-0.109850607812405,-0.067184425890446,0.100776836276054,0.134103760123253,-0.084585405886173,-0.010578935965896));
res += mul(Get(s2,0,dy), float4x4(0.061449088156223,0.113810233771801,-0.008873354643583,0.093509562313557,0.265324831008911,0.162030324339867,-0.085278727114201,0.134776324033737,0.142105787992477,0.033828083425760,0.038624968379736,0.004985670093447,0.205172777175903,-0.062233395874500,-0.062501594424248,-0.034772232174873));
res += mul(Get(s2,dx,-dy), float4x4(-0.092582128942013,-0.272445738315582,0.043268617242575,0.138101875782013,0.014532955363393,0.017009370028973,0.020803669467568,0.237222731113434,-0.039643723517656,-0.043438136577606,0.071860328316689,0.014413105323911,-0.166619479656219,0.060182984918356,0.005389941390604,0.001656661508605));
res += mul(Get(s2,dx,0), float4x4(-0.044770110398531,0.053643781691790,-0.169949084520340,0.131214082241058,-0.006962795276195,0.021085079759359,0.029526924714446,0.116339795291424,0.020736651495099,-0.134074404835701,0.100549899041653,-0.005041361786425,0.064817771315575,0.068953812122345,-0.109366655349731,-0.018667101860046));
res += mul(Get(s2,dx,dy), float4x4(-0.198357358574867,0.162567302584648,0.071707375347614,0.001789727364667,0.008927939459682,0.106863707304001,-0.003852020250633,0.171500265598297,0.019730664789677,-0.079294875264168,0.027590256184340,-0.003824729705229,0.043416511267424,-0.085875056684017,-0.041839390993118,0.104495063424110));
res += mul(Get(s3,-dx,-dy), float4x4(0.067564040422440,-0.016117300838232,-0.040462419390678,0.062208488583565,-0.130673065781593,0.294136434793472,0.045692428946495,-0.023623604327440,-0.189075708389282,-0.007714964449406,-0.005288925953209,0.147019013762474,-0.050044324249029,0.027513228356838,0.023585582152009,0.070734761655331));
res += mul(Get(s3,-dx,0), float4x4(-0.019929243251681,0.051654357463121,0.006938261445612,-0.138540714979172,0.053645499050617,0.085961408913136,0.034528680145741,-0.050762597471476,0.015747670084238,-0.017196601256728,-0.030756764113903,0.106208883225918,0.115852400660515,-0.066985800862312,0.006697990000248,-0.087664060294628));
res += mul(Get(s3,-dx,dy), float4x4(0.039356004446745,0.086093626916409,-0.031898815184832,-0.088340371847153,0.016703361645341,-0.051790464669466,-0.034429468214512,-0.127012118697166,0.054488003253937,0.077568836510181,0.010660573840141,-0.010669028386474,0.119058869779110,0.015621547587216,0.004688809160143,-0.173318088054657));
res += mul(Get(s3,0,-dy), float4x4(-0.117365635931492,0.129948884248734,-0.093113176524639,0.087010674178600,-0.002566098934039,0.120009936392307,-0.025901867076755,0.086681567132473,-0.162544041872025,0.075824536383152,-0.025827404111624,0.091263785958290,0.000402295321692,-0.176881372928619,0.055458556860685,-0.154144972562790));
res += mul(Get(s3,0,0), float4x4(-0.027127187699080,0.167612075805664,-0.007320016622543,0.079919382929802,-0.058853656053543,0.048137176781893,0.096188478171825,0.027244305238128,0.193603411316872,0.013595513068140,-0.055996388196945,0.096154533326626,0.109969265758991,-0.111532934010029,-0.060144465416670,-0.126640155911446));
res += mul(Get(s3,0,dy), float4x4(0.089366212487221,0.142523273825645,0.023297237232327,0.009438442997634,0.160565376281738,0.037703093141317,-0.038131941109896,-0.161146506667137,0.116765208542347,0.004399353638291,0.026429986581206,-0.177074655890465,0.091506980359554,-0.064509056508541,-0.004004532005638,-0.098695054650307));
res += mul(Get(s3,dx,-dy), float4x4(-0.093115352094173,-0.063452720642090,-0.004387888591737,-0.020257292315364,-0.040608331561089,-0.119062013924122,-0.050358913838863,0.171744838356972,-0.040396407246590,0.047455597668886,-0.022969760000706,0.069165647029877,0.036159735172987,-0.004255813546479,0.042621139436960,0.036880835890770));
res += mul(Get(s3,dx,0), float4x4(0.025079028680921,-0.001312848180532,-0.032568406313658,-0.025736730545759,-0.042085804045200,0.011308151297271,-0.030550537630916,0.013768753968179,0.168719947338104,-0.098105520009995,-0.230845391750336,-0.152800500392914,0.055607397109270,-0.072737671434879,0.033418755978346,-0.047451321035624));
res += mul(Get(s3,dx,dy), float4x4(0.009579371660948,0.031933020800352,-0.002448639133945,0.021864989772439,0.097666010260582,0.046606905758381,-0.068354897201061,-0.147907540202141,0.070325970649719,-0.016406018286943,-0.041220627725124,-0.207481577992439,-0.039138723164797,0.009783492423594,-0.010946985334158,-0.059378739446402));
res += mul(Get(s4,-dx,-dy), float4x4(-0.022746970877051,-0.132169708609581,-0.028301924467087,0.124193415045738,-0.003531320719048,0.093986019492149,-0.020718770101666,0.078746460378170,-0.113820016384125,-0.182628184556961,-0.019103910773993,0.101712904870510,-0.113282203674316,-0.005118431989104,0.011135414242744,-0.105148717761040));
res += mul(Get(s4,-dx,0), float4x4(0.159243211150169,-0.030373079702258,-0.035718142986298,-0.064890816807747,-0.017839081585407,0.074590533971786,0.043045870959759,-0.023964645341039,-0.038343280553818,-0.076220020651817,0.004199354443699,-0.004078829195350,0.020483173429966,-0.004863160196692,-0.000854335201439,-0.256395697593689));
res += mul(Get(s4,-dx,dy), float4x4(-0.143463492393494,-0.016695654019713,0.024718029424548,0.026559034362435,0.096689753234386,-0.126592382788658,0.004689012654126,-0.035187773406506,0.019105788320303,-0.027474328875542,-0.001198965939693,0.085806161165237,0.011047805659473,-0.136301890015602,-0.042028445750475,-0.001425253925845));
res += mul(Get(s4,0,-dy), float4x4(-0.005512025672942,-0.047802656888962,-0.041932173073292,0.008526882156730,-0.060426242649555,-0.112670935690403,-0.023671064525843,0.000828849035315,-0.182792052626610,-0.027786506339908,0.111040532588959,0.030623340979218,-0.138575658202171,-0.160134956240654,0.018104724586010,-0.248219251632690));
res += mul(Get(s4,0,0), float4x4(0.055398743599653,-0.139038458466530,-0.135670065879822,0.185735151171684,-0.048038605600595,0.018539646640420,-0.001448755851015,0.294645279645920,-0.051287997514009,0.008876793086529,-0.433777660131454,0.121756836771965,0.087012797594070,0.202307224273682,-0.044020902365446,-0.087550722062588));
res += mul(Get(s4,0,dy), float4x4(0.060731101781130,0.097318165004253,0.021781876683235,0.129786387085915,-0.112565666437149,0.136089950799942,0.090417101979256,0.189763203263283,0.160338580608368,-0.078710399568081,0.012907980941236,0.025857498869300,-0.029264304786921,-0.147934719920158,-0.032081518322229,-0.079654030501842));
res += mul(Get(s4,dx,-dy), float4x4(-0.125921458005905,0.053147289901972,-0.032535325735807,0.100934483110905,0.007110235281289,0.148904934525490,0.057712662965059,0.025696765631437,-0.071691177785397,0.030783167108893,0.023147802799940,0.101707570254803,-0.021007936447859,-0.013710291124880,0.027056366205215,-0.013860230334103));
res += mul(Get(s4,dx,0), float4x4(0.007902241311967,0.127134859561920,-0.083457522094250,-0.059583108872175,0.131916224956512,-0.095446400344372,0.078705154359341,-0.060616657137871,0.040282350033522,-0.054297197610140,0.054964974522591,-0.038643829524517,-0.058656796813011,-0.036973640322685,-0.068216942250729,0.031787458807230));
res += mul(Get(s4,dx,dy), float4x4(-0.120422311127186,0.064442604780197,0.050994914025068,0.007330585271120,0.033826675266027,-0.026168989017606,-0.006962878629565,-0.092554815113544,-0.025174926966429,0.027210690081120,-0.046854242682457,-0.081471621990204,0.022808516398072,0.036354724317789,-0.044062931090593,-0.036573059856892));
res += mul(Get(s5,-dx,-dy), float4x4(-0.120472393929958,0.105788201093674,0.040735058486462,-0.112780541181564,-0.030666839331388,-0.218380302190781,-0.003305928781629,0.156499877572060,0.082259856164455,0.073043562471867,0.000168092694366,-0.183394968509674,-0.018318014219403,-0.077694430947304,0.001090100733563,-0.132087677717209));
res += mul(Get(s5,-dx,0), float4x4(-0.235866039991379,0.079761721193790,-0.005200928077102,-0.010253980755806,0.013348256237805,-0.043279416859150,-0.000086883665062,0.020346187055111,0.065614171326160,0.044542249292135,-0.062523931264877,-0.243538185954094,-0.179984658956528,-0.047099009156227,0.026882836595178,-0.055563919246197));
res += mul(Get(s5,-dx,dy), float4x4(-0.101969107985497,-0.057356398552656,-0.000165869787452,0.241040647029877,-0.017499940469861,-0.192503124475479,0.044694311916828,-0.142319247126579,0.204805359244347,-0.026524964720011,-0.018509801477194,-0.103198044002056,-0.030506972223520,-0.148314535617828,-0.035039156675339,0.067359998822212));
res += mul(Get(s5,0,-dy), float4x4(-0.079613044857979,-0.050039347261190,0.016235891729593,-0.075884945690632,0.048510897904634,-0.229434162378311,-0.000637216377072,-0.047254852950573,0.226000383496284,-0.030610604211688,0.041346631944180,-0.042458515614271,-0.032755117863417,-0.031762570142746,-0.021448396146297,0.017734326422215));
res += mul(Get(s5,0,0), float4x4(-0.181390270590782,0.071692109107971,-0.020338872447610,-0.032831396907568,0.085258826613426,0.097969420254230,-0.001386665971950,0.094779893755913,-0.011005601845682,0.284495294094086,-0.069524697959423,-0.381638109683990,-0.102843925356865,0.123788408935070,0.070349201560020,0.038381583988667));
res += mul(Get(s5,0,dy), float4x4(0.062133003026247,-0.176920160651207,0.041152469813824,0.051911462098360,-0.182803466916084,-0.118397362530231,-0.035938944667578,0.120635166764259,0.050480939447880,-0.011583245359361,-0.035635869950056,-0.144741445779800,-0.013129032216966,-0.156294122338295,0.000887804781087,0.097887970507145));
res += mul(Get(s5,dx,-dy), float4x4(-0.025538802146912,0.008216535672545,0.027660304680467,0.024889139458537,-0.099896311759949,0.030873281881213,0.006995926145464,-0.040925435721874,0.097476653754711,0.029158778488636,0.044916577637196,0.011655118316412,0.002837281208485,-0.024704124778509,0.006243469659239,0.057404708117247));
res += mul(Get(s5,dx,0), float4x4(0.038607880473137,-0.142200767993927,-0.008136337623000,-0.042472224682570,0.107215203344822,0.083663269877434,0.004031749907881,-0.127007499337196,0.020384620875120,0.030585231259465,-0.014704118482769,-0.053466912358999,-0.082278914749622,-0.017309613525867,-0.052801214158535,0.070517219603062));
res += mul(Get(s5,dx,dy), float4x4(0.038575734943151,0.009353737346828,-0.020605597645044,0.061467006802559,0.038175307214260,-0.060867622494698,-0.027588279917836,-0.083183534443378,0.021286256611347,-0.215509742498398,-0.032550439238548,-0.108014211058617,-0.075297795236111,-0.025411052629352,0.040230646729469,0.105543270707130));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.366802126169205,0.430497676134109,0.894108712673187,0.332021504640579) * min(float4(0, 0, 0, 0), res);
return res;
}