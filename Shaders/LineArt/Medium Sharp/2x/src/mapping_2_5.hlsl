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
float4 res = float4(-0.036451227962971,-0.105754949152470,0.152918875217438,0.001075765816495);
res += mul(Get(s0,-dx,-dy), float4x4(0.111842043697834,-0.016691215336323,-0.071090109646320,0.052495744079351,-0.006482170894742,-0.183199599385262,-0.087991118431091,0.050228066742420,0.135171338915825,0.004434055648744,0.142373710870743,0.002293815603480,0.023289740085602,-0.086791090667248,-0.018008671700954,0.067705988883972));
res += mul(Get(s0,-dx,0), float4x4(-0.051528211683035,-0.046241328120232,0.139103919267654,-0.149095073342323,-0.036195799708366,-0.003467909060419,-0.217470169067383,-0.033428732305765,-0.007112897466868,0.023951420560479,-0.007261097431183,-0.050216354429722,0.012354874052107,0.068261794745922,0.025488333776593,0.150462895631790));
res += mul(Get(s0,-dx,dy), float4x4(0.000914817792363,-0.078797593712807,0.032469507306814,0.059478078037500,-0.014500894583762,0.044034074991941,-0.182597115635872,-0.051853913813829,-0.085918746888638,0.178357467055321,0.010954191908240,-0.091810002923012,0.033007770776749,0.373332023620605,-0.076033450663090,0.036618612706661));
res += mul(Get(s0,0,-dy), float4x4(-0.103563643991947,-0.142860919237137,-0.042964819818735,-0.111942864954472,0.086581900715828,-0.053291711956263,-0.189364835619926,0.115714341402054,0.015367218293250,0.028732085600495,0.258015275001526,-0.115297332406044,0.021837398409843,0.032663613557816,-0.106100708246231,0.051637656986713));
res += mul(Get(s0,0,0), float4x4(0.246043115854263,0.129210710525513,0.005515403579921,-0.100668944418430,0.012807960622013,0.236530408263206,-0.821897208690643,0.049195662140846,-0.012142607942224,0.021713085472584,-0.206691429018974,0.127100586891174,-0.073269940912724,-0.056880120187998,0.055051576346159,0.104390665888786));
res += mul(Get(s0,0,dy), float4x4(0.041094359010458,-0.171623811125755,0.045012552291155,0.010737434029579,0.081465579569340,0.049420714378357,-0.193941712379456,-0.072906710207462,-0.082608751952648,-0.125172942876816,-0.003203491447493,0.074058823287487,0.130081132054329,0.365495085716248,-0.127803236246109,-0.051795497536659));
res += mul(Get(s0,dx,-dy), float4x4(-0.013485171832144,-0.140719786286354,0.068073496222496,-0.084686972200871,0.056393589824438,0.076611459255219,-0.138668999075890,0.092711970210075,0.126520961523056,0.052034690976143,-0.145822212100029,-0.018503772094846,0.033492177724838,0.035729043185711,0.026755817234516,0.080291114747524));
res += mul(Get(s0,dx,0), float4x4(-0.085772670805454,0.074260666966438,-0.008974928408861,0.038969546556473,-0.010437889024615,0.175156846642494,-0.490915387868881,0.057154018431902,-0.080626122653484,-0.152496099472046,-0.229404419660568,-0.037988644093275,-0.062763705849648,0.102932281792164,0.046357035636902,0.023155247792602));
res += mul(Get(s0,dx,dy), float4x4(-0.085425838828087,0.133799806237221,-0.049631848931313,-0.019889840856194,0.008772470988333,-0.108585134148598,-0.064724870026112,-0.066722787916660,-0.066226765513420,0.119784548878670,-0.070146031677723,-0.047652464359999,0.023497046902776,0.125453770160675,-0.126240804791451,0.100580856204033));
res += mul(Get(s1,-dx,-dy), float4x4(-0.028448633849621,-0.008908748626709,-0.014704772271216,0.014438958838582,0.066547416150570,0.059139519929886,-0.160842075943947,0.068139687180519,0.020580204203725,-0.042664736509323,0.065293647348881,0.040163252502680,-0.023448286578059,0.039328917860985,-0.241903185844421,0.091748125851154));
res += mul(Get(s1,-dx,0), float4x4(0.041292618960142,0.077449940145016,-0.077516525983810,0.153724566102028,0.021900556981564,-0.119127862155437,-0.109624326229095,0.102869927883148,-0.131511554121971,0.012026724405587,-0.046153161674738,-0.126162409782410,0.028531810268760,-0.240384727716446,-0.160240292549133,0.203361228108406));
res += mul(Get(s1,-dx,dy), float4x4(0.025801246985793,0.188961341977119,-0.199164614081383,0.105030745267868,0.088636703789234,0.017469754442573,-0.146595120429993,0.078862853348255,-0.002403729828075,0.162360817193985,-0.068798407912254,-0.238855242729187,-0.058230515569448,0.038050301373005,-0.141352951526642,0.006450706161559));
res += mul(Get(s1,0,-dy), float4x4(0.060681182891130,0.120541185140610,-0.163300216197968,0.088796958327293,-0.227899134159088,-0.296327650547028,0.000305618304992,0.001390136079863,0.052977763116360,0.292682319879532,-0.136069387197495,0.111150197684765,0.005644528195262,-0.011983844451606,-0.142445206642151,-0.107786983251572));
res += mul(Get(s1,0,0), float4x4(-0.144408836960793,0.210339263081551,0.117240734398365,-0.351833403110504,-0.213771060109138,-0.303918033838272,0.448819667100906,0.285685062408447,-0.027979705482721,-0.012865666300058,-0.008593026548624,-0.064337708055973,0.020334525033832,0.234085187315941,-0.570969402790070,-0.072235554456711));
res += mul(Get(s1,0,dy), float4x4(-0.033814404159784,-0.107862867414951,-0.000390333705582,0.540462017059326,-0.028315732255578,-0.000513338774908,0.096038497984409,0.119065538048744,-0.101081535220146,0.217085227370262,-0.037047270685434,-0.265178591012955,0.070942103862762,-0.001700359513052,-0.302301734685898,0.108253180980682));
res += mul(Get(s1,dx,-dy), float4x4(-0.066689670085907,-0.122262284159660,0.058315079659224,-0.003998080734164,-0.011995284818113,-0.088677234947681,-0.199275493621826,0.023977182805538,0.020290514454246,-0.038678944110870,0.039957281202078,0.064373254776001,0.020509479567409,-0.056963007897139,-0.011456805281341,-0.000933506060392));
res += mul(Get(s1,dx,0), float4x4(0.165795922279358,-0.041576057672501,-0.055484592914581,-0.055718958377838,0.039077814668417,-0.036414671689272,0.204778939485550,-0.122503064572811,-0.127488479018211,-0.047672647982836,0.016538089141250,-0.085745036602020,0.012666658498347,-0.049523320049047,-0.115316174924374,0.016860969364643));
res += mul(Get(s1,dx,dy), float4x4(0.024974811822176,-0.012413438409567,0.180282667279243,0.007544279564172,0.024541586637497,0.254807204008102,0.020843055099249,0.033881179988384,0.005410757381469,-0.044802468270063,-0.051495686173439,-0.113764047622681,-0.009541307576001,0.035002093762159,-0.030638823285699,0.013087921775877));
res += mul(Get(s2,-dx,-dy), float4x4(0.022353095933795,0.000729671854060,0.081624552607536,-0.048890322446823,0.040417883545160,0.131432950496674,-0.092838607728481,0.049593556672335,0.030052864924073,0.186468631029129,0.069300100207329,0.104658074676991,-0.023559248074889,-0.186610266566277,0.182064682245255,0.033707901835442));
res += mul(Get(s2,-dx,0), float4x4(0.188205793499947,0.107315041124821,0.049724921584129,0.121426180005074,0.000265822192887,-0.091174282133579,-0.060820572078228,0.201018005609512,0.045374080538750,0.073524244129658,-0.248013511300087,0.157436743378639,-0.187217175960541,0.062755502760410,0.265668451786041,-0.089811071753502));
res += mul(Get(s2,-dx,dy), float4x4(-0.046709362417459,0.004365500994027,0.141370087862015,0.197740986943245,0.022042488679290,-0.039520826190710,0.083052381873131,0.061079811304808,0.012328520417213,-0.012650084681809,-0.040456131100655,0.042196489870548,-0.061788018792868,0.164371103048325,0.096089601516724,-0.068426497280598));
res += mul(Get(s2,0,-dy), float4x4(-0.006727515719831,0.211990192532539,0.006684354972094,-0.060889746993780,-0.183352679014206,-0.284831672906876,0.181944191455841,-0.005375719629228,-0.026976831257343,0.077523373067379,-0.118510566651821,0.001918081543408,-0.072336345911026,0.009255000390112,-0.089307136833668,0.076489634811878));
res += mul(Get(s2,0,0), float4x4(0.025672435760498,-0.133832529187202,-0.068728148937225,0.087249711155891,0.010243551805615,0.226367101073265,-0.037257403135300,-0.078983843326569,0.002932647941634,-0.029950026422739,-0.282169014215469,-0.066994257271290,0.104106329381466,0.230103462934494,-0.131386145949364,0.095461882650852));
res += mul(Get(s2,0,dy), float4x4(0.115322932600975,-0.316177964210510,0.098119676113129,0.219779536128044,0.019323294982314,-0.056332927197218,0.123140364885330,0.092347897589207,0.027083700522780,0.032538026571274,-0.106296524405479,0.068818159401417,0.133518174290657,-0.003289387794212,-0.213548436760902,-0.066892102360725));
res += mul(Get(s2,dx,-dy), float4x4(0.009756748564541,0.153449222445488,-0.000246289069764,-0.040032494813204,-0.059635985642672,0.138613909482956,-0.055019788444042,-0.184651866555214,0.006905267480761,0.052062563598156,0.032002724707127,-0.044725459069014,-0.075062647461891,0.039966382086277,0.065685205161572,-0.003066163277254));
res += mul(Get(s2,dx,0), float4x4(0.089506521821022,-0.167766645550728,0.120851337909698,0.039829201996326,0.015248493291438,0.012927641160786,-0.113885633647442,0.107805147767067,0.008361082524061,0.010357302613556,-0.100662328302860,-0.006463023368269,0.039634685963392,0.152749046683311,-0.047147177159786,-0.121223747730255));
res += mul(Get(s2,dx,dy), float4x4(-0.044058132916689,0.068388007581234,0.087252028286457,0.103078939020634,-0.094969883561134,-0.012369181960821,0.026233801618218,0.060326989740133,-0.010187916457653,0.202032938599586,0.047914367169142,0.030143802985549,0.073184378445148,0.017752761021256,-0.127378910779953,-0.121546529233456));
res += mul(Get(s3,-dx,-dy), float4x4(-0.135237574577332,0.116963736712933,-0.152010560035706,-0.106271214783192,-0.051013272255659,0.062724113464355,-0.118579819798470,-0.028073333203793,0.026759684085846,-0.145089164376259,0.077213712036610,-0.034372966736555,0.043831881135702,0.009115130640566,0.097162298858166,-0.020154312252998));
res += mul(Get(s3,-dx,0), float4x4(0.138219818472862,-0.052096940577030,0.156730279326439,0.041368614882231,0.104461006820202,0.047984063625336,0.006810580380261,0.038959607481956,0.021970190107822,-0.139670550823212,0.070280753076077,-0.095953352749348,0.005377744324505,-0.063090108335018,0.134229540824890,-0.000303294189507));
res += mul(Get(s3,-dx,dy), float4x4(0.137879952788353,-0.018226783722639,0.083674892783165,0.288253873586655,0.032754793763161,0.007367047946900,0.054261684417725,0.087998777627945,0.028347536921501,-0.174241602420807,0.083171993494034,-0.093141704797745,0.010016934946179,0.021118074655533,0.205715507268906,0.008575353771448));
res += mul(Get(s3,0,-dy), float4x4(-0.240540280938148,-0.224138915538788,0.105152226984501,-0.209523707628250,-0.186035498976707,0.093712046742439,-0.010276176966727,-0.103475540876389,0.039681058377028,-0.094186283648014,0.149981766939163,-0.013062295503914,0.098962686955929,0.108953632414341,0.162070706486702,0.115258112549782));
res += mul(Get(s3,0,0), float4x4(-0.145010709762573,-0.007361748721451,-0.011173607781529,0.134817719459534,-0.429893702268600,-0.347311735153198,0.066003918647766,0.055725809186697,0.099031172692776,-0.314354509115219,0.249490588903427,-0.067535609006882,0.103072367608547,-0.056408621370792,-0.050876770168543,0.068485364317894));
res += mul(Get(s3,0,dy), float4x4(0.038172788918018,0.182620301842690,0.050111055374146,0.126362234354019,0.022633517161012,-0.020651543512940,-0.020686797797680,0.139990448951721,0.021668450906873,-0.211839616298676,0.176453441381454,-0.043524648994207,0.042740803211927,-0.012721108272672,0.115360274910927,0.151500508189201));
res += mul(Get(s3,dx,-dy), float4x4(-0.003709299257025,-0.044534873217344,0.023154152557254,-0.157122999429703,0.088232047855854,-0.098155982792377,-0.023259956389666,0.050931956619024,-0.010211013257504,-0.096496634185314,0.077570736408234,0.002372457413003,0.035099446773529,0.028528572991490,0.162817984819412,-0.089991927146912));
res += mul(Get(s3,dx,0), float4x4(0.098201148211956,0.097950175404549,-0.008576784282923,-0.204385340213776,0.080636367201805,-0.052867013961077,-0.122092090547085,0.054511409252882,0.061334237456322,-0.166284352540970,0.063848696649075,0.022114194929600,-0.033675394952297,-0.170052424073219,0.076763607561588,-0.097049728035927));
res += mul(Get(s3,dx,dy), float4x4(-0.002424756297842,-0.153291448950768,0.081175133585930,0.064102992415428,-0.020500496029854,0.080262653529644,-0.070995137095451,0.086921222507954,0.007005115039647,-0.102502532303333,0.071310348808765,-0.025192949920893,-0.082230910658836,0.040098741650581,0.015014712698758,-0.032423447817564));
res += mul(Get(s4,-dx,-dy), float4x4(-0.010833993554115,0.088789999485016,-0.010341181419790,0.095978744328022,-0.018459644168615,-0.056066125631332,0.052907321602106,-0.018493669107556,0.009611275978386,-0.069464169442654,0.082368388772011,0.109490066766739,-0.168158799409866,-0.045619316399097,0.048393148928881,-0.190479934215546));
res += mul(Get(s4,-dx,0), float4x4(-0.102529488503933,-0.033888477832079,0.050536844879389,0.017608430236578,-0.032972913235426,0.002019746461883,0.124046266078949,-0.097315162420273,-0.086464628577232,0.097550064325333,-0.071309499442577,0.112034134566784,-0.128798872232437,-0.225318565964699,0.150984749197960,-0.241649523377419));
res += mul(Get(s4,-dx,dy), float4x4(-0.056127753108740,0.095264360308647,0.017829319462180,0.063677005469799,0.027256248518825,-0.002203413052484,0.058453023433685,-0.018042985349894,-0.020395971834660,-0.007365819998085,-0.066999278962612,0.095554955303669,-0.047735858708620,0.162318393588066,0.252654045820236,-0.120885513722897));
res += mul(Get(s4,0,-dy), float4x4(-0.063912682235241,-0.136563703417778,0.102068170905113,-0.305088818073273,0.001161051564850,-0.050345707684755,0.169807597994804,0.028020795434713,-0.091557092964649,0.188603088259697,0.143805980682373,0.068457163870335,-0.019687972962856,-0.238112866878510,0.130663484334946,0.043048515915871));
res += mul(Get(s4,0,0), float4x4(0.145528674125671,0.155543804168701,-0.006602583918720,-0.008017485961318,0.019876528531313,-0.167900636792183,-0.004746489692479,-0.047610092908144,-0.227875590324402,0.007040141150355,-0.118255600333214,0.048902969807386,0.156319826841354,-0.148967534303665,0.024162517860532,0.213890120387077));
res += mul(Get(s4,0,dy), float4x4(-0.193422466516495,0.223546534776688,-0.065213717520237,-0.072159186005592,0.172262936830521,-0.047645132988691,0.138648256659508,-0.083410605788231,-0.127506047487259,-0.104166500270367,-0.039474569261074,0.042425572872162,-0.083887271583080,-0.002834847662598,0.146226689219475,0.021852072328329));
res += mul(Get(s4,dx,-dy), float4x4(-0.018299140036106,-0.056939348578453,-0.007830420508981,-0.034070026129484,0.079213075339794,-0.027590131387115,0.209804475307465,-0.038388498127460,-0.012268871068954,0.171926051378250,-0.010064599104226,0.094465404748917,0.023380350321531,-0.251402020454407,0.367095768451691,-0.047387510538101));
res += mul(Get(s4,dx,0), float4x4(0.171483695507050,0.135422870516777,-0.031324528157711,-0.227896004915237,-0.028845408931375,-0.031571347266436,-0.060090035200119,-0.222943335771561,-0.144306629896164,-0.037795811891556,-0.062352471053600,-0.012834838591516,0.053006090223789,0.028032077476382,0.222114264965057,0.022203007712960));
res += mul(Get(s4,dx,dy), float4x4(0.009983615949750,-0.064302802085876,-0.063315331935883,0.100159637629986,0.092579089105129,0.264000058174133,0.162809982895851,-0.102031297981739,-0.040623337030411,-0.239904671907425,0.021533757448196,0.079256698489189,0.047842532396317,0.065833993256092,0.014747589826584,0.031348742544651));
res += mul(Get(s5,-dx,-dy), float4x4(-0.102641686797142,-0.016581088304520,0.016809113323689,0.048197653144598,0.032928265631199,0.276546537876129,0.175106480717659,-0.025211492553353,-0.006135843694210,0.078971080482006,-0.082155995070934,0.002728444291279,0.154657423496246,0.038417860865593,0.138748928904533,0.098589554429054));
res += mul(Get(s5,-dx,0), float4x4(-0.209398344159126,0.188530787825584,0.125378414988518,-0.010946770198643,0.052768547087908,-0.102771803736687,0.227419555187225,0.091138668358326,0.091119691729546,-0.086002208292484,-0.128774523735046,0.081014022231102,0.142080828547478,-0.038946378976107,0.044646423310041,0.123569585382938));
res += mul(Get(s5,-dx,dy), float4x4(-0.019211968407035,0.089531965553761,-0.067168042063713,0.017282972112298,0.046525590121746,-0.010887481272221,0.142495438456535,-0.011969470418990,0.115157939493656,-0.126213639974594,-0.063975892961025,0.110318899154663,0.034676719456911,-0.058263987302780,0.018593348562717,-0.006586773321033));
res += mul(Get(s5,0,-dy), float4x4(0.040680706501007,0.133699521422386,-0.052754916250706,0.217042058706284,-0.078046962618828,0.207270592451096,0.174379855394363,-0.050584368407726,-0.036445759236813,-0.080738991498947,0.097678922116756,-0.094823434948921,0.152756914496422,-0.024283308535814,0.041624557226896,0.027986926957965));
res += mul(Get(s5,0,0), float4x4(0.557576954364777,-0.175769269466400,-0.449313521385193,-0.331848442554474,-0.105951741337776,-0.173144087195396,0.035130281001329,0.017461268231273,0.006163997109979,0.044420801103115,-0.117407426238060,-0.152525618672371,0.189346730709076,0.194095015525818,-0.053264919668436,-0.043731145560741));
res += mul(Get(s5,0,dy), float4x4(-0.108802080154419,-0.088319733738899,-0.163302093744278,0.114832185208797,-0.045515030622482,-0.139357209205627,-0.073192849755287,0.001045030192472,0.074100553989410,0.095564179122448,0.000743836804759,-0.064092151820660,0.052458785474300,0.060130365192890,-0.135689243674278,-0.122367277741432));
res += mul(Get(s5,dx,-dy), float4x4(0.060828402638435,0.105279274284840,-0.103060722351074,0.009042751975358,-0.024534000083804,-0.004124200902879,0.124971538782120,-0.074818097054958,0.095106720924377,0.025409830734134,0.086720585823059,-0.046551298350096,0.003606840968132,-0.084637239575386,0.119752638041973,-0.106665156781673));
res += mul(Get(s5,dx,0), float4x4(-0.162184521555901,-0.288333088159561,0.192265510559082,-0.019113505259156,0.022641623392701,-0.043618902564049,0.057088837027550,-0.136748865246773,0.009644329547882,0.068961001932621,-0.056494034826756,-0.026057805866003,0.010742072947323,-0.053800266236067,0.076487004756927,-0.062593676149845));
res += mul(Get(s5,dx,dy), float4x4(-0.074390247464180,-0.065006487071514,0.126739740371704,0.157434433698654,0.084542162716389,-0.044427301734686,0.062706016004086,0.023771572858095,0.063592113554478,0.009885607287288,-0.219210132956505,-0.029071709141135,0.041020128875971,0.216268479824066,0.004435639362782,-0.176095828413963));
res = max(float4(0, 0, 0, 0), res) + float4(0.996852219104767,-0.255317717790604,-0.119515232741833,0.897616267204285) * min(float4(0, 0, 0, 0), res);
return res;
}
