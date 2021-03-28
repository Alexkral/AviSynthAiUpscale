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
float4 res = float4(-0.122340209782124,0.142038479447365,0.111933730542660,-0.193053871393204);
res += mul(Get(s0,-dx,-dy), float4x4(-0.076102025806904,-0.013560187071562,0.000146948339534,-0.187965095043182,-0.082634165883064,-0.012136762030423,0.056903459131718,-0.020467014983296,0.061238497495651,0.014252553693950,-0.100256048142910,0.012166905216873,0.056964930146933,-0.100157067179680,0.010045175440609,0.118125088512897));
res += mul(Get(s0,-dx,0), float4x4(-0.172716736793518,-0.133115425705910,-0.129041567444801,0.057832501828671,0.006342200562358,-0.058991480618715,0.165561169385910,-0.029039837419987,-0.004015396349132,-0.003716120030731,0.039502259343863,-0.053182911127806,0.134365946054459,0.025180045515299,-0.026256412267685,0.146155491471291));
res += mul(Get(s0,-dx,dy), float4x4(0.024304261431098,-0.023141367360950,0.148054286837578,-0.007957257330418,0.020185621455312,0.044519782066345,-0.104232303798199,-0.066934585571289,-0.015337964519858,-0.039515957236290,-0.145343229174614,0.045145634561777,0.094381392002106,-0.041701734066010,0.102596230804920,-0.025840047746897));
res += mul(Get(s0,0,-dy), float4x4(-0.142956972122192,0.001428923569620,0.047958850860596,-0.223378330469131,0.017846886068583,0.064602449536324,0.000522458634805,0.141590803861618,0.019070506095886,-0.020752996206284,-0.017874432727695,0.195068925619125,-0.020746655762196,-0.079078055918217,-0.049580663442612,-0.041701164096594));
res += mul(Get(s0,0,0), float4x4(-0.062369965016842,0.013840556144714,-0.167229428887367,0.043408889323473,-0.113201536238194,-0.153527364134789,-0.034335006028414,0.048433437943459,-0.119423225522041,0.099977150559425,0.077938072383404,-0.099293626844883,-0.044280845671892,-0.042058974504471,0.052548453211784,0.027563530951738));
res += mul(Get(s0,0,dy), float4x4(-0.027600537985563,0.008047902025282,-0.089330278337002,0.013398162089288,0.060238651931286,0.067429736256599,-0.081003181636333,-0.001154780038632,0.073365114629269,0.030473411083221,-0.099055752158165,0.096457198262215,0.121621489524841,-0.064113721251488,0.073697768151760,0.005621926859021));
res += mul(Get(s0,dx,-dy), float4x4(-0.023289766162634,-0.079638995230198,-0.037392918020487,-0.106050416827202,0.014462220482528,-0.021936027333140,0.094768665730953,0.086202174425125,-0.073505982756615,0.011364396661520,0.088760659098625,-0.174211025238037,-0.229345455765724,-0.034565273672342,-0.039858244359493,0.011900477111340));
res += mul(Get(s0,dx,0), float4x4(0.078201152384281,0.010490303859115,-0.005086264573038,-0.037676908075809,-0.043621297925711,0.161564975976944,0.059407260268927,0.037650946527719,0.084538429975510,-0.135056078433990,-0.133716866374016,0.123718224465847,-0.073623374104500,-0.005268973298371,0.040713366121054,-0.014217049814761));
res += mul(Get(s0,dx,dy), float4x4(-0.046751666814089,-0.055634681135416,-0.031595379114151,-0.022706942632794,-0.014091441407800,-0.035722024738789,-0.012035030871630,0.036836214363575,-0.060320898890495,0.121209532022476,0.224195480346680,-0.008563763462007,0.022029820829630,-0.045120470225811,-0.000025228302547,-0.042720794677734));
res += mul(Get(s1,-dx,-dy), float4x4(-0.053231552243233,0.104373037815094,-0.143333375453949,0.054268140345812,-0.120610229671001,0.027028309181333,0.074340566992760,-0.044847231358290,-0.162414684891701,0.059183612465858,0.081102520227432,-0.233670786023140,-0.090070590376854,0.011609281413257,-0.017493154853582,0.123249240219593));
res += mul(Get(s1,-dx,0), float4x4(-0.028503449633718,-0.104261636734009,0.172025233507156,-0.207120060920715,-0.053805556148291,-0.138726904988289,0.092140175402164,-0.129595205187798,-0.162075489759445,-0.040266409516335,-0.002933049574494,-0.064349539577961,0.019016727805138,0.169796273112297,0.105565674602985,0.015381422825158));
res += mul(Get(s1,-dx,dy), float4x4(-0.279965370893478,-0.101000882685184,-0.044822096824646,-0.263672560453415,0.035907682031393,-0.156961485743523,-0.112691499292850,0.031786113977432,-0.000074531235441,-0.153236672282219,-0.068728730082512,-0.103627629578114,-0.080015316605568,-0.016683114692569,0.099836833775043,0.009460842236876));
res += mul(Get(s1,0,-dy), float4x4(-0.113634534180164,0.149866119027138,0.070508614182472,-0.074378482997417,-0.009935508482158,-0.010224612429738,0.224361225962639,-0.274163126945496,-0.186658978462219,-0.119554840028286,-0.015759019181132,0.050825722515583,-0.129957392811775,0.040130775421858,-0.034703303128481,-0.074818789958954));
res += mul(Get(s1,0,0), float4x4(0.100405424833298,-0.094917036592960,-0.013585856184363,0.270571500062943,0.042010068893433,-0.310342103242874,0.079065211117268,-0.225954294204712,-0.048388168215752,0.050331573933363,-0.071664303541183,0.198464572429657,0.060053408145905,0.088720016181469,-0.079684495925903,-0.086237393319607));
res += mul(Get(s1,0,dy), float4x4(0.159567967057228,0.163511976599693,0.156653955578804,0.228047370910645,-0.112730413675308,-0.153398305177689,-0.327429085969925,-0.068694859743118,0.001760384067893,-0.090534023940563,0.043307531625032,0.013008911162615,0.049087494611740,-0.281604915857315,-0.254729121923447,0.050262354314327));
res += mul(Get(s1,dx,-dy), float4x4(-0.319947987794876,-0.013091485947371,0.039578683674335,-0.072619304060936,-0.221892818808556,0.079764522612095,-0.060915440320969,0.018967714160681,0.098915971815586,-0.061556041240692,-0.106911301612854,0.053986687213182,-0.148441717028618,-0.086160846054554,0.019556924700737,0.112300522625446));
res += mul(Get(s1,dx,0), float4x4(0.552193164825439,-0.078353337943554,-0.011910610832274,0.190230920910835,0.088145896792412,-0.234000340104103,-0.074117198586464,-0.128087967634201,0.039736550301313,-0.009967316873372,-0.092753589153290,0.017032803967595,-0.085902072489262,-0.058278687298298,-0.189633652567863,0.101369708776474));
res += mul(Get(s1,dx,dy), float4x4(0.034319274127483,-0.004609812516719,-0.063846752047539,0.272841989994049,0.002673535142094,-0.112585701048374,-0.183469682931900,-0.074665240943432,-0.115627534687519,0.018244132399559,-0.000478311150800,0.039811350405216,0.030074143782258,-0.157225713133812,-0.187867775559425,0.099028937518597));
res += mul(Get(s2,-dx,-dy), float4x4(0.002656517550349,0.033017501235008,0.013474596664310,-0.016698559746146,-0.031297795474529,-0.023472994565964,0.051388148218393,0.055188182741404,-0.061275508254766,0.049958117306232,0.002902764827013,-0.039586618542671,-0.027098609134555,-0.027851844206452,0.066010951995850,0.016238838434219));
res += mul(Get(s2,-dx,0), float4x4(-0.109404593706131,0.029398886486888,-0.071261554956436,-0.015527053736150,-0.021419839933515,0.037195827811956,0.001772846328095,-0.034485761076212,-0.064990088343620,-0.030660977587104,0.023282015696168,-0.008679133839905,-0.072677351534367,-0.005551932379603,0.111039027571678,-0.045474868267775));
res += mul(Get(s2,-dx,dy), float4x4(-0.045544732362032,-0.178429543972015,-0.220050603151321,-0.015490490943193,-0.087525874376297,0.073253490030766,0.029035620391369,0.009783991612494,-0.019864404574037,0.065889544785023,0.022100280970335,0.014958077110350,-0.014407170005143,0.066704168915749,0.014628385193646,0.050826162099838));
res += mul(Get(s2,0,-dy), float4x4(-0.038976632058620,0.036045990884304,0.201202929019928,0.055539801716805,-0.074776910245419,-0.113711141049862,-0.076982006430626,-0.494380861520767,0.000178778514965,-0.026949718594551,0.014322437345982,0.150835499167442,0.046445626765490,-0.127891004085541,-0.078280352056026,0.035166554152966));
res += mul(Get(s2,0,0), float4x4(-0.022343896329403,0.041790418326855,0.064209312200546,0.118260152637959,-0.015896514058113,-0.286208868026733,-0.301599621772766,-0.209999844431877,-0.000635733013041,-0.174769774079323,-0.066562771797180,-0.058509666472673,-0.012550490908325,-0.156469434499741,-0.216689631342888,-0.257204711437225));
res += mul(Get(s2,0,dy), float4x4(-0.064697913825512,-0.060275472700596,-0.112679317593575,0.059183582663536,-0.116022199392319,-0.097268991172314,-0.077289640903473,-0.041148096323013,0.017191246151924,-0.015044154599309,-0.039027057588100,-0.083279147744179,-0.020486099645495,-0.073922410607338,-0.022236863151193,-0.031363941729069));
res += mul(Get(s2,dx,-dy), float4x4(0.083496443927288,0.037317123264074,0.143748730421066,0.056769248098135,0.023663071915507,-0.183163031935692,-0.026867244392633,-0.014881615526974,-0.171500355005264,0.028877057135105,0.070824660360813,-0.081900373101234,0.061957754194736,-0.061022628098726,0.029669301584363,0.134386882185936));
res += mul(Get(s2,dx,0), float4x4(0.266891926527023,-0.034225087612867,0.043614082038403,-0.063370004296303,0.150257393717766,0.244634911417961,-0.063456967473030,0.018534265458584,-0.030662871897221,-0.011739522218704,0.012321253307164,-0.025990787893534,0.096456706523895,0.004515164531767,-0.213042169809341,0.100794054567814));
res += mul(Get(s2,dx,dy), float4x4(-0.019370906054974,0.135559186339378,-0.042013064026833,-0.005674205254763,-0.079644426703453,0.049984145909548,0.029514553025365,0.011859776452184,-0.064066603779793,-0.046012576669455,-0.015693439170718,-0.089277736842632,-0.022794460877776,0.014851703308523,-0.154774576425552,0.060362838208675));
res += mul(Get(s3,-dx,-dy), float4x4(-0.115181893110275,-0.077826455235481,-0.134173378348351,-0.019956279546022,-0.071038633584976,-0.048013489693403,-0.051173541694880,-0.274617433547974,0.063378728926182,0.017587404698133,-0.058063749223948,-0.004246527329087,-0.088785938918591,-0.066373810172081,-0.017499268054962,0.098884612321854));
res += mul(Get(s3,-dx,0), float4x4(0.005129871424288,0.055925894528627,0.037543196231127,0.065683655440807,-0.094780929386616,-0.187937721610069,0.014287739992142,-0.356877416372299,0.058353275060654,0.031758438795805,-0.065316312015057,0.036269184201956,0.042468730360270,-0.076194114983082,0.026048269122839,-0.134167507290840));
res += mul(Get(s3,-dx,dy), float4x4(0.084163218736649,-0.097895368933678,-0.065192759037018,-0.110931783914566,-0.070693686604500,-0.091728463768959,-0.011006087996066,-0.121537230908871,0.048654060810804,0.143707677721977,0.124100476503372,-0.000597436446697,0.024363921955228,-0.092933595180511,-0.098860017955303,0.041350468993187));
res += mul(Get(s3,0,-dy), float4x4(0.283321082592010,0.080652251839638,0.083695001900196,-0.053338993340731,0.091083519160748,0.092953473329544,0.072077766060829,-0.197218462824821,-0.088336192071438,0.093629568815231,0.043413590639830,0.073428437113762,-0.041294820606709,0.037056624889374,-0.010061067529023,0.007847397588193));
res += mul(Get(s3,0,0), float4x4(-0.329005450010300,-0.168995261192322,-0.161912322044373,-0.031756240874529,-0.026867197826505,-0.010177486576140,0.125447452068329,-0.140641376376152,-0.062604896724224,-0.122630015015602,0.090075410902500,0.120940707623959,-0.059182804077864,-0.004428324289620,-0.017608536407351,0.001632284256630));
res += mul(Get(s3,0,dy), float4x4(0.069905251264572,0.029574463143945,0.060271039605141,0.010845815762877,-0.079200714826584,0.192347198724747,0.011293715797365,-0.104356952011585,0.044233061373234,0.063996747136116,-0.008476653136313,-0.047560751438141,-0.119889408349991,0.025413177907467,-0.085163049399853,0.025989303365350));
res += mul(Get(s3,dx,-dy), float4x4(-0.225733876228333,0.060378793627024,0.081061691045761,0.048279762268066,0.054301347583532,-0.035810701549053,0.098319388926029,0.048587635159492,-0.120291642844677,0.092191375792027,0.036954466253519,-0.074755422770977,0.119064204394817,0.051021479070187,0.051997505128384,-0.014876416884363));
res += mul(Get(s3,dx,0), float4x4(0.483124673366547,0.163790613412857,0.034752883017063,-0.015624059364200,0.328038692474365,0.095675632357597,-0.174871444702148,0.038837034255266,0.027970967814326,-0.156702026724815,-0.004385367501527,0.246688529849052,0.027495823800564,0.008967165835202,0.097724735736847,0.067816287279129));
res += mul(Get(s3,dx,dy), float4x4(-0.211902543902397,0.040382843464613,0.098819799721241,0.034601420164108,0.011727171018720,0.088707990944386,-0.155018761754036,0.047395817935467,-0.089166782796383,-0.018405694514513,0.036142189055681,0.050307422876358,-0.084547773003578,-0.152728244662285,-0.034944809973240,-0.041817694902420));
res += mul(Get(s4,-dx,-dy), float4x4(-0.091559976339340,0.099746465682983,0.034628201276064,-0.138400733470917,-0.145654097199440,0.176233172416687,-0.118531912565231,0.086165346205235,-0.047026306390762,0.063134007155895,0.085681118071079,0.069165207445621,0.004420647397637,-0.132931530475616,-0.002335914876312,-0.004277526400983));
res += mul(Get(s4,-dx,0), float4x4(-0.082441434264183,-0.065568767488003,0.017490465193987,-0.127876996994019,-0.061815295368433,-0.037351995706558,0.216333940625191,0.024401417002082,0.003047024365515,-0.016597703099251,-0.032900188118219,-0.024204514920712,-0.052563935518265,-0.127953663468361,-0.170574247837067,0.155277967453003));
res += mul(Get(s4,-dx,dy), float4x4(-0.121152743697166,0.107617497444153,-0.002040996681899,0.041898529976606,0.064691327512264,-0.016318025067449,-0.101972796022892,0.006529315374792,-0.046180672943592,0.062775090336800,-0.015830330550671,0.018396381288767,0.007005596067756,-0.013436523266137,0.003857164643705,0.017612770199776));
res += mul(Get(s4,0,-dy), float4x4(-0.057001031935215,-0.023674035444856,0.009924448095262,-0.009089561179280,-0.247433632612228,-0.180968999862671,-0.080430343747139,-0.044805418699980,0.055851683020592,-0.018256749957800,-0.012440732680261,0.091195404529572,-0.014371699653566,0.002963368548080,0.194537550210953,-0.091894321143627));
res += mul(Get(s4,0,0), float4x4(0.131709620356560,-0.251864612102509,0.051358737051487,0.146872878074646,-0.109146773815155,-0.342664420604706,-0.090650781989098,-0.233392104506493,0.048760011792183,-0.120251104235649,0.033356517553329,-0.018319576978683,0.212522670626640,0.142570793628693,-0.184155374765396,0.169498085975647));
res += mul(Get(s4,0,dy), float4x4(-0.015344580635428,0.209608703851700,0.150699868798256,0.063692606985569,-0.050728235393763,0.088554330170155,0.083735637366772,0.043180961161852,0.000578353821766,-0.047395378351212,-0.170197889208794,0.008416913449764,-0.105216465890408,-0.312751621007919,-0.046979937702417,0.028477711603045));
res += mul(Get(s4,dx,-dy), float4x4(-0.016756638884544,-0.073012158274651,0.008971162140369,-0.118137747049332,0.010482726618648,-0.028581259772182,-0.135363116860390,-0.045682437717915,0.041453655809164,0.060143373906612,-0.023269049823284,0.012062646448612,-0.064903616905212,-0.041743829846382,0.176721259951591,-0.006191085558385));
res += mul(Get(s4,dx,0), float4x4(0.025743810459971,-0.020276803523302,-0.049760978668928,0.063545927405357,0.254244714975357,-0.023001095280051,-0.122283317148685,0.032630544155836,-0.011498811654747,-0.071411728858948,-0.089511357247829,0.025219425559044,0.107894696295261,0.020653646439314,-0.001475833589211,0.050120454281569));
res += mul(Get(s4,dx,dy), float4x4(-0.301714360713959,0.069978982210159,-0.062192592769861,0.113237082958221,-0.021513788029552,0.034285753965378,-0.009163451381028,0.023382548242807,-0.083005592226982,-0.115657418966293,-0.057586707174778,-0.034395389258862,0.094716154038906,-0.316713929176331,-0.045152816921473,-0.018942039459944));
res += mul(Get(s5,-dx,-dy), float4x4(0.013121593743563,-0.145857334136963,0.194620668888092,0.190954744815826,0.003750726114959,0.041200451552868,-0.043628755956888,0.007090133614838,-0.045922983437777,-0.047424070537090,0.057238202542067,0.026035580784082,-0.060682535171509,0.014173342846334,0.003393977647647,-0.120691992342472));
res += mul(Get(s5,-dx,0), float4x4(0.084019273519516,0.082195252180099,-0.021827315911651,-0.013463143259287,-0.052596606314182,0.019598349928856,0.131998151540756,0.106535069644451,0.046012476086617,-0.067765675485134,0.059470131993294,0.014364173635840,-0.116559483110905,-0.101645126938820,0.107084318995476,-0.068737037479877));
res += mul(Get(s5,-dx,dy), float4x4(-0.022899391129613,-0.095531575381756,-0.106845423579216,-0.046554531902075,-0.036640707403421,0.078193396329880,0.000679186370689,0.038692239671946,0.001703117508441,-0.066149719059467,-0.012276637367904,0.020492563024163,-0.028611550107598,0.156303569674492,-0.060583427548409,-0.000902397558093));
res += mul(Get(s5,0,-dy), float4x4(0.031703285872936,-0.257205218076706,0.042020563036203,0.015973132103682,0.133394435048103,0.014520491473377,0.068608678877354,-0.155755594372749,-0.034979172050953,-0.095853231847286,-0.026104407384992,-0.084029816091061,0.010533380322158,-0.098196238279343,0.118424229323864,-0.037821032106876));
res += mul(Get(s5,0,0), float4x4(-0.012872653082013,0.140814572572708,-0.115325383841991,-0.061500474810600,-0.048687450587749,-0.365517228841782,-0.001395556377247,0.132411256432533,0.093889020383358,-0.022887635976076,-0.106738202273846,0.065765574574471,-0.127752497792244,0.025018852204084,0.103783458471298,-0.037189323455095));
res += mul(Get(s5,0,dy), float4x4(0.082672983407974,-0.120649352669716,-0.042652525007725,-0.080855049192905,-0.132611140608788,-0.030824208632112,0.001933693885803,0.032631896436214,0.022917490452528,-0.048207111656666,-0.054423157125711,0.105262264609337,0.001084274379537,0.174498721957207,0.068786434829235,0.061107538640499));
res += mul(Get(s5,dx,-dy), float4x4(0.089112088084221,0.067713782191277,-0.065041854977608,0.011048696003854,0.014335876330733,0.047483544796705,-0.037812720984221,0.100284352898598,-0.006667437497526,0.071645960211754,-0.020303031429648,-0.105708487331867,-0.044935986399651,-0.003250247566029,0.031831443309784,0.028049489483237));
res += mul(Get(s5,dx,0), float4x4(-0.073235586285591,0.196025937795639,-0.040860805660486,-0.017671110108495,0.199759885668755,-0.054376065731049,-0.068654127418995,-0.020378442481160,-0.005621512886137,0.135895743966103,-0.023975573480129,-0.020259605720639,0.063536591827869,0.189740002155304,-0.049669880419970,-0.036001723259687));
res += mul(Get(s5,dx,dy), float4x4(-0.089534163475037,0.004900387953967,-0.035799778997898,-0.019258562475443,-0.170550256967545,-0.166616573929787,-0.099949143826962,-0.018508322536945,0.016424009576440,0.071918897330761,-0.055733948945999,0.051086343824863,-0.016706975176930,0.052446771413088,-0.128151401877403,-0.009603614918888));
res = max(float4(0, 0, 0, 0), res) + float4(-0.051184371113777,-0.011756146326661,0.076939716935158,-0.013023719191551) * min(float4(0, 0, 0, 0), res);
return res;
}