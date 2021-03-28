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
float4 res = float4(-0.088952012360096,-0.005431297700852,-0.040519859641790,-0.006945602595806);
res += mul(Get(s0,-dx,-dy), float4x4(0.011447235941887,-0.024320563301444,-0.128958150744438,0.093364499509335,-0.038050711154938,-0.074985533952713,0.030342960730195,-0.037280097603798,0.080831751227379,0.037277348339558,-0.059994488954544,-0.096531338989735,-0.080957636237144,-0.059513125568628,0.120059065520763,0.055920671671629));
res += mul(Get(s0,-dx,0), float4x4(-0.020061474293470,-0.082153849303722,-0.094160467386246,-0.024424089118838,0.021153928712010,-0.357305705547333,0.148066312074661,0.017187705263495,0.064182870090008,0.078289598226547,-0.164828717708588,0.055994719266891,0.035418894141912,0.126315519213676,0.094251677393913,0.059395857155323));
res += mul(Get(s0,-dx,dy), float4x4(-0.078034982085228,-0.011499038897455,-0.176387429237366,0.043545272201300,0.141497030854225,0.149439007043839,-0.020220151171088,0.046784769743681,0.061164870858192,0.345870971679688,0.127677142620087,0.096700899302959,-0.001734593068250,0.031407061964273,0.134571313858032,-0.044751316308975));
res += mul(Get(s0,0,-dy), float4x4(-0.011833219788969,-0.000512876489665,-0.073756761848927,0.098073750734329,-0.006108971778303,-0.026641329750419,-0.051493335515261,0.067338250577450,-0.041253179311752,-0.108750231564045,0.239467427134514,-0.012965460307896,0.013998980633914,-0.015740130096674,-0.173894152045250,-0.020866315811872));
res += mul(Get(s0,0,0), float4x4(-0.071253411471844,-0.013936197385192,-0.059418644756079,0.054476417601109,-0.112213045358658,-0.435010135173798,0.046310171484947,-0.146955996751785,0.033428635448217,0.048630934208632,0.092043898999691,0.183068573474884,0.070221200585365,0.010156863369048,-0.020355986431241,0.044312890619040));
res += mul(Get(s0,0,dy), float4x4(-0.161182641983032,0.049267292022705,-0.059942394495010,0.026229752227664,-0.438581973314285,-0.240838631987572,-0.117564618587494,0.117236621677876,-0.010982552543283,0.143632739782333,0.032395709306002,0.074967421591282,0.147058650851250,-0.026676030829549,-0.055034834891558,-0.097522668540478));
res += mul(Get(s0,dx,-dy), float4x4(-0.064242422580719,-0.034899245947599,-0.137070953845978,0.134047493338585,-0.047610130161047,-0.007037152070552,-0.012135418131948,0.098062470555305,-0.029007200151682,0.038064498454332,0.143977358937263,-0.007076152600348,-0.070868380367756,0.028210265561938,0.000724576122593,-0.106250867247581));
res += mul(Get(s0,dx,0), float4x4(-0.066271647810936,-0.073963195085526,-0.209796458482742,-0.035860549658537,-0.089027673006058,-0.134299010038376,0.031291861087084,-0.092450454831123,-0.027851352468133,-0.019736321642995,-0.047501679509878,0.149537324905396,0.070996977388859,0.102869108319283,0.014222068712115,0.107628703117371));
res += mul(Get(s0,dx,dy), float4x4(-0.087772466242313,0.000114503542136,-0.055080100893974,0.048449266701937,-0.202086389064789,0.005841737147421,0.024670789018273,0.012306590564549,-0.031340919435024,-0.025658767670393,0.047295831143856,-0.004427879583091,0.051225528120995,0.092637553811073,-0.092005550861359,-0.090410605072975));
res += mul(Get(s1,-dx,-dy), float4x4(-0.007860844023526,0.113205514848232,0.024151362478733,-0.052385840564966,0.138865977525711,-0.073769204318523,0.146852806210518,0.032431177794933,-0.003752597374842,-0.033975198864937,-0.015919044613838,0.012512220069766,-0.000310981558869,0.088393472135067,-0.159277364611626,-0.051892396062613));
res += mul(Get(s1,-dx,0), float4x4(-0.081592559814453,0.010549386031926,-0.074486784636974,0.034825585782528,0.152296096086502,0.015221196226776,0.340758889913559,-0.024481194093823,0.025380291044712,-0.097431264817715,0.049697164446115,-0.025354893878102,-0.024689706042409,-0.014156317338347,-0.131034433841705,0.055443648248911));
res += mul(Get(s1,-dx,dy), float4x4(-0.065511263906956,-0.010342541150749,-0.018040362745523,0.030343974009156,0.095108434557915,0.144309490919113,0.063542507588863,-0.035090729594231,0.133581951260567,-0.024369897320867,-0.053826332092285,-0.095671914517879,-0.098099485039711,0.312390148639679,-0.112499497830868,0.046850327402353));
res += mul(Get(s1,0,-dy), float4x4(0.149786233901978,-0.109269239008427,-0.049590561538935,0.039899326860905,0.069140471518040,-0.146472215652466,0.104582235217094,0.034251581877470,-0.026359969750047,0.069077491760254,-0.033698916435242,-0.061755441129208,-0.020386857911944,0.069508172571659,0.038382936269045,-0.001813490642235));
res += mul(Get(s1,0,0), float4x4(0.036792557686567,0.048026677221060,-0.199821531772614,0.136053010821342,0.099461898207664,-0.077040500938892,0.270428836345673,-0.095535270869732,0.109501779079437,-0.008611506782472,0.074028752744198,-0.181977316737175,0.036254767328501,-0.037322275340557,0.095450118184090,0.155483275651932));
res += mul(Get(s1,0,dy), float4x4(0.011690568178892,0.002540087094530,0.276401549577713,-0.021886430680752,-0.027257882058620,-0.049240767955780,0.218286156654358,0.021139970049262,0.173185080289841,-0.033604029566050,-0.046787161380053,-0.327176421880722,-0.062744177877903,0.024666000157595,0.221686944365501,-0.074353083968163));
res += mul(Get(s1,dx,-dy), float4x4(0.020335085690022,-0.098449505865574,0.015517899766564,-0.015865677967668,0.029448470100760,-0.153431609272957,0.103939868509769,0.146666735410690,-0.005017648916692,0.001213915296830,-0.126006990671158,-0.105592936277390,-0.055036421865225,0.006246464792639,-0.004354181699455,-0.090917237102985));
res += mul(Get(s1,dx,0), float4x4(-0.083556510508060,0.034233290702105,-0.064935065805912,-0.216344118118286,-0.009378872811794,-0.048181161284447,0.223449081182480,-0.102448627352715,0.094596922397614,0.045919556170702,-0.075809419155121,-0.528034746646881,-0.004356815014035,-0.083747647702694,-0.116725578904152,-0.055485494434834));
res += mul(Get(s1,dx,dy), float4x4(-0.094973638653755,-0.017445666715503,0.001256471034139,-0.012011171318591,-0.068048223853111,0.016120711341500,0.188248381018639,-0.047087304294109,0.046520881354809,0.020133784040809,0.034906316548586,-0.278120607137680,0.037570472806692,-0.027740804478526,0.072715498507023,-0.014906032010913));
res += mul(Get(s2,-dx,-dy), float4x4(0.096772454679012,-0.008635733276606,0.096409864723682,-0.101845808327198,-0.025769755244255,-0.064963109791279,0.099681168794632,-0.025290261954069,-0.042015351355076,-0.038680590689182,-0.022537022829056,0.121481887996197,-0.048097878694534,0.031619068235159,0.023436224088073,0.034935779869556));
res += mul(Get(s2,-dx,0), float4x4(0.036477793008089,0.207794174551964,0.079874999821186,-0.058543082326651,-0.055061869323254,-0.116188101470470,0.219488725066185,0.005989058408886,0.099292010068893,0.181164950132370,0.045252725481987,0.035725828260183,0.037174612283707,-0.039207164198160,0.171562403440475,-0.007644425611943));
res += mul(Get(s2,-dx,dy), float4x4(-0.099900767207146,-0.035569824278355,0.142501994967461,0.097024686634541,0.028676632791758,0.059979278594255,0.091869406402111,-0.031541518867016,0.115705303847790,0.127144277095795,0.120732985436916,0.064104378223419,0.039967801421881,0.106442697346210,0.047603618353605,-0.017684936523438));
res += mul(Get(s2,0,-dy), float4x4(0.119934506714344,0.048985671252012,0.138858929276466,0.059794537723064,-0.056215539574623,-0.128187716007233,-0.075836710631847,-0.224886894226074,0.013464974239469,-0.032591167837381,-0.147012040019035,-0.095902897417545,-0.100330084562302,-0.117618352174759,0.068480081856251,-0.079066604375839));
res += mul(Get(s2,0,0), float4x4(-0.009433437138796,0.252172738313675,-0.050834659487009,0.075876474380493,-0.014624840579927,0.242999583482742,0.009818258695304,-0.064835190773010,-0.156497478485107,-0.095887936651707,-0.209625452756882,0.285019427537918,-0.075152158737183,-0.100266441702843,0.051223598420620,-0.049488939344883));
res += mul(Get(s2,0,dy), float4x4(0.091930225491524,-0.101915270090103,-0.120965614914894,0.060328312218189,-0.263659596443176,-0.091510847210884,0.031748156994581,0.085780628025532,0.242562234401703,0.063905119895935,0.127001583576202,0.036749761551619,-0.044205021113157,-0.129979491233826,-0.002015836304054,-0.034157656133175));
res += mul(Get(s2,dx,-dy), float4x4(0.097875960171223,-0.016105070710182,-0.036603946238756,0.098032921552658,-0.000571298063733,0.024535687640309,-0.163827091455460,0.095546036958694,-0.063045471906662,-0.046968210488558,-0.033912226557732,0.073091492056847,-0.103660769760609,0.018447391688824,-0.035004470497370,0.112765580415726));
res += mul(Get(s2,dx,0), float4x4(-0.003524894360453,-0.100966095924377,-0.092723891139030,0.112169921398163,-0.070244237780571,0.132256388664246,-0.193690493702888,0.164143919944763,0.079225525259972,-0.151142537593842,-0.030305530875921,-0.211622595787048,0.090489350259304,-0.077984139323235,0.029140811413527,-0.144295215606689));
res += mul(Get(s2,dx,dy), float4x4(-0.043549802154303,-0.041905786842108,0.058521814644337,-0.135147973895073,0.510647773742676,-0.137216374278069,-0.128565385937691,-0.082163095474243,-0.388475805521011,0.150627776980400,0.132618486881256,0.078610606491566,-0.031010000035167,0.064314812421799,0.140712246298790,-0.106111519038677));
res += mul(Get(s3,-dx,-dy), float4x4(-0.063882589340210,-0.033428616821766,-0.089174807071686,-0.015601739287376,-0.004911679308861,0.070882655680180,0.138105720281601,-0.070957675576210,-0.039781831204891,-0.006120262667537,0.004973788280040,0.193782597780228,0.001994554884732,0.041802011430264,-0.088946200907230,-0.051147021353245));
res += mul(Get(s3,-dx,0), float4x4(-0.012547586113214,0.014906513504684,0.053525656461716,0.068627633154392,0.074897453188896,-0.249881714582443,0.048459600657225,0.001623970689252,0.038771208375692,-0.147300258278847,0.067975066602230,0.199894919991493,0.021054081618786,0.084583185613155,-0.151582390069962,-0.014622902497649));
res += mul(Get(s3,-dx,dy), float4x4(0.079366646707058,0.067366421222687,0.090030215680599,-0.023534379899502,-0.119852334260941,0.052373204380274,0.040355391800404,0.079544216394424,-0.019400279968977,0.025355344638228,0.146844476461411,0.046344477683306,0.002494759391993,0.031945224851370,-0.147403448820114,-0.022008251398802));
res += mul(Get(s3,0,-dy), float4x4(0.000349150097463,0.008357982151210,0.076593801379204,-0.281008034944534,0.014628428965807,0.049359451979399,-0.098997130990028,-0.090494677424431,-0.079868562519550,0.000453029992059,0.025207733735442,0.136627256870270,0.022520041093230,0.034449618309736,-0.056507773697376,0.048472467809916));
res += mul(Get(s3,0,0), float4x4(-0.222873836755753,-0.065606459975243,-0.140837118029594,-0.024989614263177,0.100000068545341,-0.044975586235523,-0.001999123953283,0.005291127134115,-0.040044527500868,-0.072435848414898,0.407834202051163,0.066563501954079,0.082579635083675,-0.045223753899336,0.058736220002174,-0.145510971546173));
res += mul(Get(s3,0,dy), float4x4(-0.136075958609581,0.054695405066013,0.052199121564627,0.066000550985336,-0.082943692803383,-0.168956264853477,-0.108251012861729,0.122708059847355,0.033050503581762,0.011923294514418,-0.213304325938225,-0.003120810026303,-0.140334397554398,0.173117339611053,0.060515452176332,-0.060627333819866));
res += mul(Get(s3,dx,-dy), float4x4(-0.074660301208496,0.072592474520206,-0.096690826117992,-0.084699183702469,0.094604156911373,-0.046531543135643,-0.080928586423397,0.013402424752712,-0.085720188915730,-0.033638976514339,0.123840600252151,0.012226540595293,-0.006789168342948,-0.031612128019333,-0.005756361875683,0.062444370239973));
res += mul(Get(s3,dx,0), float4x4(-0.099566087126732,0.093691773712635,-0.057756971567869,0.130904197692871,-0.054487995803356,0.012503276579082,0.089151248335838,0.159731149673462,-0.099519982933998,-0.033312030136585,0.302122890949249,0.002252447418869,-0.010423579253256,0.004937686026096,-0.075107000768185,-0.036059517413378));
res += mul(Get(s3,dx,dy), float4x4(0.062085386365652,-0.024927383288741,-0.068825103342533,-0.019976725801826,0.170680433511734,-0.033217348158360,-0.140385493636131,0.002791724866256,0.001201190752909,0.005218585953116,-0.026335423812270,0.122311145067215,0.018071228638291,0.067411735653877,-0.087596811354160,0.106827184557915));
res += mul(Get(s4,-dx,-dy), float4x4(0.060323137789965,-0.000333995907567,-0.026127232238650,0.158988073468208,-0.010436538606882,0.119946315884590,0.203663289546967,0.111497394740582,-0.013865016400814,-0.038623157888651,-0.118601739406586,-0.114511206746101,-0.000406197621487,0.006871050689369,0.052708528935909,0.101312994956970));
res += mul(Get(s4,-dx,0), float4x4(0.039694551378489,0.052476916462183,0.054301761090755,0.075305253267288,0.003149084746838,0.110691472887993,0.144733369350433,0.059471160173416,-0.083784759044647,0.146746158599854,-0.180159837007523,-0.033280164003372,0.024736512452364,0.065642930567265,0.096917808055878,-0.010622543282807));
res += mul(Get(s4,-dx,dy), float4x4(-0.024090455844998,0.106485456228256,0.001297392300330,0.011509852483869,0.144372925162315,0.048352871090174,0.205069482326508,-0.123063132166862,-0.063674449920654,-0.312581837177277,0.034216072410345,0.018588192760944,0.083641655743122,0.008478853851557,0.045640498399734,0.086216755211353));
res += mul(Get(s4,0,-dy), float4x4(0.093406714498997,0.038790863007307,-0.064216792583466,-0.036076840013266,0.024573197588325,0.123788848519325,0.061000771820545,0.096842192113400,0.023668665438890,0.023995434865355,0.076692476868629,0.078751482069492,-0.013277789577842,0.007979813031852,-0.036166757345200,0.057199425995350));
res += mul(Get(s4,0,0), float4x4(-0.056172389537096,0.065761499106884,-0.072090946137905,0.065744362771511,0.214500531554222,0.190762132406235,-0.129270210862160,0.117493145167828,-0.091464146971703,0.030103504657745,-0.073998019099236,0.035767644643784,-0.141662478446960,0.078134521842003,-0.253528088331223,0.084107309579849));
res += mul(Get(s4,0,dy), float4x4(-0.067667536437511,-0.028821518644691,0.104655988514423,0.062057062983513,0.091360121965408,0.077306814491749,-0.077010817825794,0.108453288674355,0.347963690757751,-0.205487668514252,-0.089989222586155,-0.021880652755499,0.053944222629070,-0.088876336812973,0.269192516803741,-0.097373381257057));
res += mul(Get(s4,dx,-dy), float4x4(0.115501776337624,0.061639029532671,-0.106140755116940,0.076228193938732,0.082316040992737,0.000346475659171,0.081533230841160,-0.043379642069340,0.059057284146547,0.124619677662849,-0.163916274905205,0.021185416728258,0.017098801210523,0.000021828001991,0.106908299028873,-0.015150153078139));
res += mul(Get(s4,dx,0), float4x4(0.020746024325490,0.082816116511822,-0.008749359287322,0.018917713314295,-0.041950292885303,0.053057856857777,0.085861876606941,0.059109982103109,0.069409988820553,0.089599579572678,0.087556973099709,-0.040177628397942,-0.008672372438014,-0.083119332790375,0.058519948273897,0.024214534088969));
res += mul(Get(s4,dx,dy), float4x4(0.028929555788636,0.010794647969306,-0.270579010248184,0.087491355836391,0.092717558145523,0.002137211849913,0.075789585709572,0.091964580118656,0.065279468894005,0.113733455538750,0.051173012703657,0.043377012014389,0.034322787076235,0.001985138049349,0.269945889711380,-0.049930695444345));
res += mul(Get(s5,-dx,-dy), float4x4(0.023723723366857,0.004055017605424,-0.004112120252103,-0.027342692017555,0.020347654819489,-0.116496704518795,-0.001424413290806,-0.049011733382940,-0.087964825332165,-0.033505897969007,0.052457991987467,-0.002018659608439,0.061074484139681,-0.111314326524734,0.342790812253952,0.032269448041916));
res += mul(Get(s5,-dx,0), float4x4(0.129574015736580,0.015270384959877,-0.108555547893047,-0.026939436793327,-0.012494197115302,-0.050478231161833,0.211324319243431,-0.031367287039757,0.054823566228151,-0.172275707125664,0.159161388874054,0.022605879232287,0.087345182895660,-0.055847804993391,0.101187936961651,-0.164940282702446));
res += mul(Get(s5,-dx,dy), float4x4(0.021841699257493,0.020825356245041,-0.024481702595949,0.016946593299508,0.057938866317272,0.068961821496487,-0.126759380102158,-0.073708832263947,-0.003009234322235,0.015280641615391,0.103297591209412,-0.031999960541725,0.016297588124871,0.060473520308733,0.174685612320900,0.147044628858566));
res += mul(Get(s5,0,-dy), float4x4(0.036872617900372,-0.022714519873261,0.132174715399742,-0.018089752644300,-0.045995175838470,-0.036981802433729,-0.009702962823212,-0.091647587716579,-0.070309624075890,-0.034562505781651,-0.066901192069054,0.011928051710129,0.072011359035969,-0.043407216668129,0.103601112961769,0.007215488236398));
res += mul(Get(s5,0,0), float4x4(-0.154521852731705,0.273809403181076,-0.021089732646942,0.220277309417725,-0.107197485864162,0.101892247796059,0.383128523826599,0.137253716588020,-0.241025164723396,-0.120046012103558,-0.188347816467285,0.115195296704769,0.048671457916498,0.016257494688034,-0.065683364868164,-0.166916713118553));
res += mul(Get(s5,0,dy), float4x4(0.223732396960258,0.106303229928017,0.175211817026138,-0.014616112224758,0.127832651138306,0.055862020701170,-0.045400250703096,-0.000248010008363,0.024591306224465,0.033155359327793,0.051025919616222,0.038433641195297,-0.102396138012409,0.015789903700352,0.076476879417896,0.036118481308222));
res += mul(Get(s5,dx,-dy), float4x4(0.043621681630611,0.004993998445570,0.070386983454227,0.075241506099701,0.058782435953617,-0.036048036068678,0.033781506121159,-0.097455389797688,-0.075183287262917,-0.021819306537509,-0.028039587661624,-0.083713278174400,-0.057788882404566,-0.190613701939583,0.047212596982718,-0.068581834435463));
res += mul(Get(s5,dx,0), float4x4(-0.008817962370813,0.072199605405331,-0.299380987882614,0.238343834877014,-0.005606266669929,-0.091053590178490,-0.149192810058594,0.127498820424080,-0.125947684049606,-0.054243892431259,-0.128064304590225,0.115405917167664,-0.035231992602348,0.057589992880821,-0.022384066134691,-0.081550642848015));
res += mul(Get(s5,dx,dy), float4x4(0.138773366808891,-0.059772189706564,-0.095315448939800,0.001538750482723,0.166087776422501,0.043452408164740,-0.027177803218365,-0.042689800262451,-0.032242096960545,-0.003686835058033,0.044830579310656,0.003228230634704,-0.050186492502689,0.134775251150131,0.011943101882935,-0.098686955869198));
res = max(float4(0, 0, 0, 0), res) + float4(0.160989359021187,0.077957190573215,0.362885028123856,-0.050010249018669) * min(float4(0, 0, 0, 0), res);
return res;
}
