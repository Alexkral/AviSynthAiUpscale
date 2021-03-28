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
float4 res = float4(-0.194122642278671,-0.110002212226391,-0.102483220398426,-0.112101323902607);
res += mul(Get(s0,-dx,-dy), float4x4(0.072441317141056,0.059417951852083,-0.002983188023791,0.005951283033937,-0.122586466372013,-0.054943837225437,-0.111921764910221,-0.018942561000586,0.022452503442764,0.130711242556572,-0.010789296589792,0.032458778470755,0.028788840398192,-0.251863062381744,0.050203476101160,-0.009960384108126));
res += mul(Get(s0,-dx,0), float4x4(-0.019237942993641,-0.173138409852982,-0.055482391268015,-0.045631762593985,-0.336577683687210,0.010549789294600,-0.120765365660191,-0.344982981681824,0.193423032760620,-0.216582551598549,-0.070900954306126,0.286642521619797,0.015586490742862,0.041628479957581,0.055167216807604,0.048399087041616));
res += mul(Get(s0,-dx,dy), float4x4(-0.038501668721437,0.171192467212677,0.023131206631660,-0.044717323035002,-0.056883219629526,0.149091348052025,-0.065289318561554,-0.023895597085357,0.166117414832115,-0.041605770587921,-0.110584333539009,0.142730966210365,-0.056097146123648,0.123268492519855,0.092180021107197,0.136950314044952));
res += mul(Get(s0,0,-dy), float4x4(0.127085030078888,-0.106300957500935,0.258994042873383,-0.092649854719639,-0.032076310366392,0.011055868119001,-0.133124887943268,0.092877857387066,0.203945100307465,-0.123851515352726,0.014194253832102,0.108117543160915,0.145640313625336,-0.111755125224590,-0.032751008868217,0.235845685005188));
res += mul(Get(s0,0,0), float4x4(0.166321322321892,-0.321435958147049,0.006287369877100,0.193352535367012,-0.288101136684418,0.032414898276329,-0.027677513659000,-0.500266551971436,-0.032069027423859,0.105125881731510,-0.082754887640476,0.387386709451675,0.150939956307411,-0.001887426478788,0.260416477918625,0.333083003759384));
res += mul(Get(s0,0,dy), float4x4(-0.031284119933844,-0.254222601652145,-0.055155683308840,-0.040763545781374,-0.191055014729500,0.038731720298529,-0.131661072373390,-0.266927987337112,-0.202150359749794,-0.433059215545654,-0.005014514084905,0.236009925603867,0.181604310870171,-0.001170253497548,-0.007181687280536,0.281670033931732));
res += mul(Get(s0,dx,-dy), float4x4(-0.069933861494064,-0.252833157777786,0.036912135779858,-0.009058019146323,-0.139143228530884,-0.094017170369625,0.036953404545784,0.046586975455284,0.044528935104609,-0.178184464573860,-0.045116975903511,-0.010463935323060,-0.028088957071304,-0.141531512141228,-0.047397177666426,-0.104897581040859));
res += mul(Get(s0,dx,0), float4x4(-0.230156287550926,0.062837213277817,-0.023774383589625,-0.155906632542610,0.086431033909321,-0.267371177673340,0.182480528950691,0.142670705914497,-0.195326626300812,0.426562011241913,-0.248195469379425,-0.173187762498856,-0.284177809953690,0.197952881455421,-0.031195996329188,-0.175909206271172));
res += mul(Get(s0,dx,dy), float4x4(-0.022192992269993,-0.073808960616589,-0.086000606417656,-0.021683637052774,0.080886721611023,0.131302312016487,-0.033394277095795,0.216607272624969,-0.196287587285042,-0.236483156681061,0.002878915052861,-0.237873628735542,0.006928351242095,-0.236847877502441,-0.128355488181114,-0.151724740862846));
res += mul(Get(s1,-dx,-dy), float4x4(-0.002485858509317,0.043232254683971,-0.045348480343819,-0.039471909403801,0.020537475124002,0.159893870353699,-0.032526586204767,-0.053946718573570,0.005148966331035,0.053946949541569,-0.085530519485474,0.208028152585030,0.089016132056713,-0.306017458438873,0.101908482611179,-0.008463870733976));
res += mul(Get(s1,-dx,0), float4x4(0.096003890037537,0.174280315637589,-0.045521240681410,-0.036327801644802,0.209727376699448,-0.079987987875938,0.061613615602255,-0.224161162972450,0.011518308892846,0.176058918237686,0.071555659174919,-0.092941828072071,-0.258984833955765,0.326127499341965,0.098481133580208,-0.083126738667488));
res += mul(Get(s1,-dx,dy), float4x4(-0.452483475208282,-0.015228421427310,0.133433699607849,-0.395123124122620,0.024856064468622,0.119163349270821,0.022838467732072,-0.342995911836624,0.005350074730814,0.299072265625000,-0.032518219202757,-0.284608989953995,-0.033799320459366,-0.078488811850548,0.076830074191093,-0.171103447675705));
res += mul(Get(s1,0,-dy), float4x4(-0.326942205429077,-0.097541101276875,0.072788693010807,-0.120600476861000,0.018156198784709,-0.114298701286316,-0.073237419128418,0.005128669086844,-0.010187331587076,0.244748815894127,0.021459538489580,-0.001199815189466,-0.020578660070896,0.049480333924294,-0.088564023375511,0.219277024269104));
res += mul(Get(s1,0,0), float4x4(0.071647271513939,0.124385297298431,-0.245200470089912,-0.410216450691223,-0.304016798734665,-0.462588697671890,-0.336912930011749,0.166579157114029,0.238272115588188,0.156681105494499,0.079437568783760,0.044743988662958,-0.543945431709290,-0.442291915416718,-0.548305273056030,0.015348136425018));
res += mul(Get(s1,0,dy), float4x4(0.248679175972939,0.104559123516083,0.198375090956688,-0.025637160986662,-0.064579352736473,0.137125089764595,-0.094002082943916,0.248926669359207,-0.138659700751305,0.004324201494455,0.033240601420403,-0.153571680188179,0.017466191202402,-0.308609634637833,0.259130656719208,-0.012717902660370));
res += mul(Get(s1,dx,-dy), float4x4(0.245826140046120,0.246958285570145,0.055438514798880,0.296034514904022,-0.000906384433620,-0.129701882600784,0.042405106127262,-0.006402948871255,0.045659177005291,0.180601805448532,-0.100804053246975,-0.028748627752066,0.088528491556644,0.114054359495640,0.093575567007065,-0.007314437534660));
res += mul(Get(s1,dx,0), float4x4(-0.093159154057503,-0.358225613832474,0.157536089420319,0.102410718798637,-0.128418132662773,-0.077430449426174,0.083617903292179,-0.082281142473221,-0.054741904139519,-0.054092988371849,0.005232725758106,0.077082484960556,0.125459164381027,-0.178313031792641,0.098831675946712,0.173414289951324));
res += mul(Get(s1,dx,dy), float4x4(-0.108789443969727,0.197873473167419,-0.107724189758301,-0.032850943505764,0.041804362088442,-0.107794232666492,0.094490066170692,-0.076511919498444,-0.161055758595467,-0.064455613493919,-0.143635705113411,-0.178198322653770,-0.022842263802886,0.178470388054848,0.165610939264297,0.045923184603453));
res += mul(Get(s2,-dx,-dy), float4x4(0.295980811119080,-0.110446900129318,0.014509811997414,0.206829786300659,-0.009287889115512,0.058835614472628,-0.008829841390252,-0.116223044693470,-0.179584652185440,-0.022474857047200,0.045145794749260,-0.117444217205048,-0.217343211174011,0.035638786852360,0.016331518068910,-0.123527035117149));
res += mul(Get(s2,-dx,0), float4x4(-0.050182644277811,-0.163188040256500,0.039640381932259,0.339670032262802,0.103848822414875,0.201546952128410,-0.082953542470932,-0.146043628454208,0.152370363473892,-0.029212303459644,0.248853057622910,-0.270600944757462,-0.176515474915504,0.071860834956169,0.035138819366693,-0.046020150184631));
res += mul(Get(s2,-dx,dy), float4x4(-0.217045634984970,-0.257983028888702,0.175392761826515,-0.249127179384232,0.053963582962751,-0.095782265067101,-0.074645861983299,-0.016493964940310,0.189321458339691,0.305642455816269,-0.069965690374374,-0.006851182319224,-0.364322632551193,-0.210248336195946,0.029512938112020,0.006932480726391));
res += mul(Get(s2,0,-dy), float4x4(-0.198096901178360,-0.243946686387062,-0.174807414412498,-0.121293179690838,-0.055179331451654,0.132081985473633,-0.220111727714539,0.005096871405840,-0.021587841212749,-0.217524319887161,0.058790523558855,-0.179163485765457,0.092750176787376,-0.350356370210648,0.032697774469852,0.002832862315699));
res += mul(Get(s2,0,0), float4x4(0.109083861112595,-0.125451534986496,-0.175999626517296,0.170442879199982,-0.297608166933060,0.135654151439667,-0.126857146620750,0.029609868302941,0.138472825288773,-0.340297192335129,0.072318300604820,-0.318390876054764,0.353745967149734,-0.026461027562618,0.031101722270250,0.128590285778046));
res += mul(Get(s2,0,dy), float4x4(0.304326087236404,-0.458417475223541,0.242830574512482,0.338835597038269,-0.054948005825281,-0.203049600124359,0.048573117703199,-0.059261981397867,-0.114628486335278,0.132369220256805,-0.114775352180004,0.079035401344299,0.027362050488591,-0.275744378566742,0.252831965684891,0.306379616260529));
res += mul(Get(s2,dx,-dy), float4x4(0.221619039773941,-0.062411628663540,0.021970132365823,0.076372891664505,-0.075907438993454,-0.070961706340313,-0.128441721200943,-0.022289898246527,-0.029324686154723,-0.118280000984669,-0.095083430409431,0.069298624992371,-0.116282321512699,-0.106972187757492,0.048235233873129,-0.121945142745972));
res += mul(Get(s2,dx,0), float4x4(-0.070250362157822,-0.146779090166092,0.065513439476490,-0.073764868080616,-0.177276507019997,-0.121596470475197,-0.110788129270077,-0.000914673029911,-0.293003886938095,-0.018779708072543,-0.079178117215633,-0.036884635686874,-0.356833875179291,0.080016784369946,-0.055261701345444,-0.113399453461170));
res += mul(Get(s2,dx,dy), float4x4(-0.037460539489985,-0.026863383129239,0.136611476540565,-0.121813908219337,-0.035643383860588,-0.046072553843260,0.017187438905239,-0.024312000721693,0.108539849519730,-0.066644310951233,-0.094801299273968,0.088783666491508,-0.310449510812759,-0.042560126632452,0.087140575051308,-0.207651957869530));
res += mul(Get(s3,-dx,-dy), float4x4(-0.009946210309863,0.129069730639458,0.016601376235485,0.188665106892586,-0.235633462667465,-0.096139810979366,0.012924605049193,-0.105556860566139,-0.091313056647778,0.052727885544300,-0.127745479345322,-0.056031424552202,0.112432837486267,-0.004873370751739,0.012238308787346,0.214143604040146));
res += mul(Get(s3,-dx,0), float4x4(0.148104980587959,-0.099252969026566,-0.004951331764460,-0.512402236461639,-0.181819498538971,-0.237125769257545,-0.005531548056751,-0.231628105044365,0.045319728553295,-0.112462326884270,-0.080778367817402,0.099565275013447,0.096618622541428,0.111936219036579,0.039812613278627,0.185147762298584));
res += mul(Get(s3,-dx,dy), float4x4(0.159422516822815,-0.073833487927914,-0.039642728865147,-0.255774408578873,-0.145959511399269,0.073832400143147,-0.096878729760647,-0.034422170370817,0.132909044623375,-0.295884579420090,-0.051909867674112,-0.026859434321523,0.206328108906746,0.148071661591530,0.006069191265851,0.109943300485611));
res += mul(Get(s3,0,-dy), float4x4(0.061717275530100,-0.142577692866325,0.252899289131165,-0.044516455382109,0.063985131680965,-0.226294562220573,0.056799408048391,-0.112799093127251,0.029410734772682,-0.042547751218081,-0.115814715623856,-0.086834788322449,-0.005682727787644,-0.068183645606041,0.091187365353107,0.012614141218364));
res += mul(Get(s3,0,0), float4x4(-0.316475778818130,-0.242272570729256,-0.022516649216413,0.080407418310642,-0.166360631585121,0.129101261496544,0.182535007596016,-0.160222217440605,-0.045775383710861,-0.017812326550484,-0.300442099571228,0.079622857272625,0.172898426651955,0.185589730739594,0.051726792007685,0.093599930405617));
res += mul(Get(s3,0,dy), float4x4(0.235738158226013,-0.085657522082329,0.044959474354982,0.062443684786558,-0.043604228645563,0.031878944486380,-0.087231636047363,0.089481465518475,0.009299720637500,-0.211070880293846,0.039202447980642,-0.094607211649418,0.230707585811615,-0.099433586001396,-0.199038907885551,0.315354645252228));
res += mul(Get(s3,dx,-dy), float4x4(0.187601715326309,-0.020748047158122,0.198400899767876,0.081888392567635,-0.073447860777378,-0.005859872791916,-0.092676274478436,-0.006979033350945,0.008471326902509,-0.144053652882576,0.019805843010545,0.008657041937113,0.222997620701790,-0.045283965766430,-0.071248956024647,0.192415580153465));
res += mul(Get(s3,dx,0), float4x4(-0.126050412654877,0.111476115882397,-0.108448199927807,0.153110414743423,0.171427667140961,0.124983280897141,0.095272220671177,0.186535969376564,0.223341286182404,-0.106780767440796,0.158179670572281,-0.084047622978687,0.121806465089321,0.085588395595551,-0.119634747505188,0.050633169710636));
res += mul(Get(s3,dx,dy), float4x4(-0.050803512334824,-0.212998241186142,-0.008983927778900,0.080355077981949,-0.045418791472912,-0.108758978545666,-0.083593785762787,0.157334357500076,0.054995831102133,0.171205490827560,0.032134413719177,-0.028508469462395,-0.117306746542454,0.038626693189144,-0.234697446227074,-0.138284519314766));
res += mul(Get(s4,-dx,-dy), float4x4(-0.041261948645115,0.155480161309242,-0.044500473886728,-0.006272946484387,0.077082492411137,0.072444513440132,0.057392545044422,0.146873638033867,-0.083160117268562,0.245423629879951,0.022034142166376,0.058084540069103,0.061102155596018,-0.078129649162292,-0.016757072880864,0.059192351996899));
res += mul(Get(s4,-dx,0), float4x4(-0.085616573691368,-0.030547346919775,-0.035834662616253,-0.240008249878883,0.000121210177895,0.194280430674553,0.064211584627628,0.042032156139612,-0.079007364809513,0.061033461242914,0.098941594362259,-0.123034007847309,0.079929277300835,-0.305254667997360,0.123662866652012,0.140983089804649));
res += mul(Get(s4,-dx,dy), float4x4(-0.026793975383043,-0.197136551141739,0.052107088267803,-0.308499246835709,-0.173417747020721,-0.041040819138288,0.025536354631186,0.421268761157990,0.065252684056759,0.057033121585846,0.027302110567689,-0.362300187349319,0.254043012857437,-0.041373483836651,0.172958061099052,0.046325750648975));
res += mul(Get(s4,0,-dy), float4x4(0.055252704769373,-0.009847845882177,0.012448770925403,-0.080150522291660,-0.236175462603569,-0.079123362898827,0.127808600664139,0.095500603318214,0.024006748571992,-0.175887539982796,0.060397818684578,-0.082356825470924,0.219115957617760,0.020322456955910,0.080165989696980,0.054361909627914));
res += mul(Get(s4,0,0), float4x4(0.051670614629984,0.199010074138641,-0.169036298990250,-0.006372708827257,0.038265272974968,0.130096688866615,0.188341662287712,-0.290799289941788,-0.116755768656731,0.072892211377621,0.109279878437519,0.153446212410927,0.100858122110367,-0.196697488427162,0.218747466802597,0.111939363181591));
res += mul(Get(s4,0,dy), float4x4(0.082596004009247,-0.227464243769646,0.046478047966957,0.105965614318848,-0.018057644367218,0.252576708793640,-0.087087534368038,0.083073310554028,0.011227915994823,-0.000839878921397,0.190312221646309,-0.245848894119263,0.183574318885803,0.197352230548859,-0.024924181401730,-0.000283152970951));
res += mul(Get(s4,dx,-dy), float4x4(0.001800007652491,-0.088629230856895,0.066382773220539,-0.046850524842739,0.170385614037514,0.254608005285263,0.008215299807489,0.163121044635773,0.096730612218380,-0.017275419086218,0.025362547487020,0.035875953733921,-0.074240714311600,0.033013395965099,0.024500951170921,-0.009491516277194));
res += mul(Get(s4,dx,0), float4x4(-0.050587091594934,0.189271941781044,-0.091383352875710,0.058882482349873,0.086681194603443,0.083500728011131,0.048624634742737,0.082916274666786,0.222936660051346,0.036666989326477,0.192412272095680,0.218577638268471,-0.159563004970551,0.045262940227985,0.035874672234058,-0.094430528581142));
res += mul(Get(s4,dx,dy), float4x4(0.060667760670185,0.044009998440742,-0.002362367929891,-0.005828442052007,0.210473939776421,0.036533635109663,-0.019754009321332,0.108383916318417,-0.078354366123676,0.320578277111053,-0.052452702075243,-0.001728518283926,0.095783121883869,-0.041980940848589,-0.010194926522672,-0.014829325489700));
res += mul(Get(s5,-dx,-dy), float4x4(-0.176715210080147,0.243255883455276,0.009610231965780,-0.128633245825768,0.069284126162529,0.020499899983406,-0.015848996117711,-0.137615099549294,0.101328149437904,0.063536174595356,0.064796581864357,-0.073785841464996,-0.016184976324439,0.044346448034048,-0.189012572169304,0.076323449611664));
res += mul(Get(s5,-dx,0), float4x4(0.125432237982750,0.072045646607876,-0.063042737543583,-0.158953070640564,-0.043583516031504,-0.040977332741022,0.141371428966522,-0.125727713108063,0.226970985531807,-0.479795634746552,-0.106120675802231,-0.064629428088665,-0.084387518465519,-0.104342743754387,0.013127741403878,0.060914203524590));
res += mul(Get(s5,-dx,dy), float4x4(-0.169532433152199,-0.250288099050522,0.030206451192498,-0.161379799246788,0.098765872418880,0.053159125149250,-0.102799907326698,-0.477756589651108,0.131837949156761,-0.145039990544319,0.145812392234802,-0.257905453443527,0.101573362946510,0.178092554211617,-0.020832793787122,-0.104903973639011));
res += mul(Get(s5,0,-dy), float4x4(0.055682655423880,-0.196512252092361,0.245526373386383,-0.036449093371630,-0.191923737525940,0.190434604883194,-0.030803229659796,0.126442983746529,-0.238543048501015,0.243266925215721,-0.080296762287617,-0.034711424261332,-0.094727993011475,0.118754290044308,-0.176754444837570,-0.016709985211492));
res += mul(Get(s5,0,0), float4x4(-0.209233835339546,0.120011873543262,-0.122688300907612,0.171624481678009,-0.199974641203880,-0.104411050677299,0.045569971203804,0.097367502748966,0.251116394996643,-0.062267657369375,0.232351735234261,0.077746056020260,0.127838984131813,-0.112784594297409,0.020530136302114,-0.225907355546951));
res += mul(Get(s5,0,dy), float4x4(0.214946955442429,0.012068762443960,0.204494923353195,0.088420666754246,-0.197698384523392,-0.073653712868690,-0.004245517775416,0.048963859677315,0.019343789666891,0.075056508183479,-0.046681448817253,0.325624793767929,0.127092972397804,0.051612492650747,0.106329001486301,-0.135298386216164));
res += mul(Get(s5,dx,-dy), float4x4(-0.074775613844395,-0.092525891959667,0.081994608044624,-0.086768850684166,0.009852021932602,0.035786449909210,-0.142482846975327,-0.062161497771740,0.007169689051807,0.128257095813751,0.057058937847614,-0.014502808451653,0.082536473870277,0.069671213626862,-0.036549292504787,-0.074235208332539));
res += mul(Get(s5,dx,0), float4x4(-0.353482812643051,0.140943020582199,0.078924037516117,-0.231274947524071,0.087439946830273,-0.014378626830876,0.088199108839035,-0.049055777490139,-0.530097723007202,0.198043987154961,-0.019641838967800,-0.356252521276474,0.300995677709579,-0.121235229074955,0.170621007680893,0.135637149214745));
res += mul(Get(s5,dx,dy), float4x4(-0.279165476560593,0.182374387979507,-0.055721763521433,-0.184900805354118,-0.014670121483505,-0.012938149273396,0.075440645217896,0.088882572948933,-0.089677214622498,0.002532704966143,0.077280998229980,-0.254735708236694,-0.056943710893393,0.022236865013838,-0.088101051747799,0.093581289052963));
res = max(float4(0, 0, 0, 0), res) + float4(-0.004548005759716,-0.022303469479084,0.155257374048233,-0.004178988281637) * min(float4(0, 0, 0, 0), res);
return res;
}