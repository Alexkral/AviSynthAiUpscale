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
float4 res = float4(-0.043500494211912,0.099972248077393,0.004256365355104,-0.033586781471968);
res += mul(Get(s0,-dx,-dy), float4x4(-0.039217542856932,-0.127955436706543,0.053950004279613,0.029267687350512,0.085588015615940,0.008189364336431,-0.087201006710529,0.153549060225487,0.027298336848617,0.037990681827068,-0.024490021169186,0.065292142331600,-0.124685525894165,0.114272750914097,-0.141697779297829,0.015562832355499));
res += mul(Get(s0,-dx,0), float4x4(0.024486284703016,-0.145127892494202,0.041938841342926,-0.278386801481247,-0.275916367769241,-0.020079629495740,0.097854599356651,-0.075967043638229,0.058272019028664,-0.063297882676125,-0.032303351908922,-0.014351598918438,-0.159988000988960,0.006130228750408,0.042026914656162,-0.049879338592291));
res += mul(Get(s0,-dx,dy), float4x4(-0.018640799447894,-0.093807838857174,0.007189714349806,-0.075304843485355,0.127589434385300,-0.150215208530426,-0.016842454671860,0.095355078577995,0.042349573224783,0.030346427112818,0.123268127441406,-0.018419796600938,-0.053491268306971,0.018514633178711,-0.002735369605944,-0.012773622758687));
res += mul(Get(s0,0,-dy), float4x4(0.029092632234097,-0.080475434660912,-0.006453068461269,0.007636651862413,0.026977680623531,0.038352575153112,-0.138073012232780,-0.070299975574017,-0.016119994223118,0.046161226928234,-0.034616626799107,0.058226514607668,-0.197128996253014,-0.121811121702194,-0.042786683887243,-0.125800698995590));
res += mul(Get(s0,0,0), float4x4(-0.035609871149063,0.187791451811790,0.022001028060913,-0.173183247447014,0.052370671182871,0.002545842435211,-0.100785374641418,0.041718885302544,0.031817208975554,0.018321532756090,-0.039713189005852,0.061772800981998,-0.167164325714111,-0.034355774521828,-0.022891135886312,-0.055216513574123));
res += mul(Get(s0,0,dy), float4x4(-0.003928849007934,-0.051203653216362,-0.010252052918077,-0.157018542289734,-0.073222741484642,-0.000414103618823,-0.031761515885592,-0.030676772817969,-0.086015015840530,0.055890627205372,0.114095598459244,-0.085309810936451,-0.069949902594090,-0.188962459564209,-0.021086944267154,-0.038198359310627));
res += mul(Get(s0,dx,-dy), float4x4(-0.016558222472668,0.096257872879505,0.027795718982816,0.055846128612757,-0.075249046087265,0.061006266623735,-0.051930546760559,0.127680882811546,-0.014212192036211,0.067515641450882,-0.060617562383413,-0.051650755107403,-0.215087264776230,-0.190911218523979,0.019656384363770,0.032068967819214));
res += mul(Get(s0,dx,0), float4x4(-0.071558512747288,-0.014211907982826,-0.012000878341496,0.058435544371605,-0.049703031778336,0.099498920142651,-0.003079684451222,0.007313720881939,0.085922606289387,0.081055477261543,-0.028258394449949,0.045277658849955,-0.156220719218254,0.132345527410507,0.010171872563660,0.023415280506015));
res += mul(Get(s0,dx,dy), float4x4(0.010708709247410,0.039181068539619,0.001513670315035,0.107462644577026,-0.023985194042325,0.097015209496021,0.020822722464800,0.047281309962273,-0.003988086245954,-0.092354856431484,0.017999688163400,0.022528614848852,-0.059463132172823,-0.023588655516505,-0.007468643598258,0.014154844917357));
res += mul(Get(s1,-dx,-dy), float4x4(-0.018782079219818,-0.050083965063095,-0.148124217987061,-0.376434683799744,-0.161475226283073,-0.126678794622421,-0.157910853624344,0.101336792111397,0.119084902107716,-0.033608853816986,-0.042275134474039,0.023890281096101,-0.003370826831087,-0.039878640323877,-0.006686227396131,-0.014799940399826));
res += mul(Get(s1,-dx,0), float4x4(-0.009108366444707,0.030477464199066,0.007174468133599,-0.271036237478256,0.069962099194527,0.007215349934995,-0.036297563463449,0.003827632404864,-0.042168386280537,-0.038651466369629,0.032421652227640,0.025882143527269,-0.085518047213554,0.065431930124760,-0.151440069079399,0.024658553302288));
res += mul(Get(s1,-dx,dy), float4x4(-0.009300902485847,0.015724340453744,-0.056617904454470,-0.414119839668274,0.085886985063553,0.037274528294802,-0.043243929743767,-0.032192006707191,0.038386877626181,0.027706742286682,0.006131145171821,-0.011385374702513,-0.069538705050945,0.009065848775208,-0.013803094625473,-0.065741233527660));
res += mul(Get(s1,0,-dy), float4x4(0.028967903926969,-0.003746238071471,-0.061892788857222,-0.264774143695831,-0.123597517609596,-0.054948665201664,-0.063859432935715,-0.073963701725006,0.048306457698345,-0.042855225503445,-0.042444918304682,-0.027779228985310,0.015690417960286,-0.006264982279390,0.188026711344719,0.005741382483393));
res += mul(Get(s1,0,0), float4x4(0.018666476011276,0.166438296437263,-0.012695726938546,-0.032475866377354,-0.173877537250519,-0.029141025617719,0.009415867738426,-0.100287988781929,-0.029736464843154,0.028398357331753,-0.086105503141880,-0.133681476116180,-0.017566254362464,0.077278181910515,0.106646239757538,0.030766228213906));
res += mul(Get(s1,0,dy), float4x4(0.026189925149083,0.013652039691806,-0.045946307480335,-0.228593796491623,-0.074732013046741,0.044951260089874,0.014428547583520,-0.003490125294775,0.059511043131351,-0.004054376389831,-0.060661152005196,-0.105203792452812,-0.002693645888939,0.039048336446285,-0.002034521661699,0.132536560297012));
res += mul(Get(s1,dx,-dy), float4x4(-0.018910288810730,0.006551501341164,0.005845178849995,-0.346292197704315,-0.046288002282381,0.097702518105507,-0.092326194047928,0.054930541664362,-0.094762243330479,-0.018044643104076,0.288085579872131,-0.061497867107391,-0.035502046346664,-0.032959833741188,-0.047840945422649,0.019388986751437));
res += mul(Get(s1,dx,0), float4x4(-0.006017216946930,0.044195815920830,0.050386048853397,-0.306820780038834,-0.053474325686693,0.225005879998207,-0.063495472073555,-0.214623138308525,0.028114575892687,0.020533183589578,-0.231346338987350,0.106365039944649,0.046850953251123,-0.099669970571995,0.157209962606430,-0.010149766691029));
res += mul(Get(s1,dx,dy), float4x4(0.025351945310831,0.054960273206234,0.017292588949203,-0.385507702827454,0.000864911766257,-0.097265243530273,-0.017813732847571,-0.080875180661678,-0.063511744141579,-0.010397381149232,0.150662556290627,0.053219787776470,0.008047176524997,-0.013976085931063,0.003577702911571,-0.012205961160362));
res += mul(Get(s2,-dx,-dy), float4x4(0.138444334268570,0.025111975148320,-0.106453031301498,0.037056118249893,0.103485234081745,-0.070135690271854,0.014221567660570,0.086773976683617,-0.060264021158218,-0.059669259935617,-0.105092108249664,0.002834883285686,0.132412910461426,-0.112357936799526,-0.025315379723907,-0.032978769391775));
res += mul(Get(s2,-dx,0), float4x4(0.416037708520889,-0.100803732872009,0.111049421131611,-0.004780821036547,-0.251180887222290,-0.082677580416203,0.095439538359642,0.017543373629451,0.007619508076459,0.056175470352173,0.255414962768555,0.031953595578671,0.031534057110548,-0.073595710098743,-0.085498593747616,0.076800376176834));
res += mul(Get(s2,-dx,dy), float4x4(-0.178167358040810,-0.009850007481873,-0.040955618023872,0.049942679703236,0.024347150698304,-0.052792683243752,0.029956795275211,-0.092038601636887,0.128198131918907,-0.089913651347160,-0.022180587053299,-0.124621264636517,-0.081510446965694,-0.009733756072819,-0.012877262197435,0.101536698639393));
res += mul(Get(s2,0,-dy), float4x4(-0.033686250448227,0.048857014626265,0.025629270821810,-0.210565090179443,0.023255806416273,0.003693947568536,0.097408369183540,-0.243065014481544,0.053689997643232,0.006062526721507,0.097906164824963,-0.041795577853918,0.044384874403477,0.049220528453588,-0.022294064983726,0.035113848745823));
res += mul(Get(s2,0,0), float4x4(-0.224916353821754,-0.171630844473839,-0.053866036236286,-0.122190937399864,-0.019902715459466,0.026617914438248,0.078847661614418,-0.006377733312547,0.107654459774494,0.005256847012788,0.321464806795120,-0.056407954543829,0.027340205386281,-0.049402251839638,-0.093085162341595,-0.015760898590088));
res += mul(Get(s2,0,dy), float4x4(-0.060332931578159,-0.063945434987545,-0.020017884671688,-0.003226639702916,-0.021961390972137,-0.093738913536072,0.045729335397482,-0.052552118897438,0.087124958634377,-0.060775969177485,0.047753196209669,-0.080146640539169,-0.107430830597878,-0.119165465235710,-0.017900031059980,0.173489943146706));
res += mul(Get(s2,dx,-dy), float4x4(0.014681216329336,0.049088656902313,-0.006103476043791,-0.091496184468269,0.005634320899844,0.173075199127197,0.038471251726151,0.154491171240807,0.041489191353321,0.053132724016905,0.021588968113065,0.032228332012892,-0.038562543690205,0.078296095132828,-0.133340910077095,0.073416292667389));
res += mul(Get(s2,dx,0), float4x4(-0.026180820539594,0.087861433625221,-0.020846657454967,-0.073785416781902,-0.091089919209480,-0.157811626791954,0.110277064144611,0.082309164106846,-0.002202652161941,-0.143369868397713,0.235045194625854,-0.026588903740048,0.042562488466501,-0.041042100638151,-0.097156658768654,-0.120806194841862));
res += mul(Get(s2,dx,dy), float4x4(0.020942036062479,0.180299684405327,-0.019954288378358,0.153774544596672,0.005645755212754,-0.020480094477534,0.018833978101611,-0.066553011536598,0.001660124515183,-0.159159466624260,-0.031607396900654,-0.158233687281609,-0.022731361910701,-0.030035441741347,-0.033047217875719,0.058192111551762));
res += mul(Get(s3,-dx,-dy), float4x4(0.114557534456253,0.007582081481814,-0.020831318572164,-0.001748240087181,-0.027270851656795,-0.148854732513428,-0.027443984523416,0.031183980405331,0.039953034371138,-0.020510494709015,-0.056550044566393,0.013854463584721,-0.052896503359079,-0.215106338262558,-0.162503316998482,0.035713408142328));
res += mul(Get(s3,-dx,0), float4x4(0.464856743812561,0.049009595066309,-0.097574457526207,0.081868655979633,0.080548554658890,0.075464129447937,-0.079702474176884,0.067656069993973,0.018499622121453,0.006251109298319,0.013263893313706,-0.063178673386574,-0.050857461988926,-0.269448906183243,-0.047803107649088,-0.058401662856340));
res += mul(Get(s3,-dx,dy), float4x4(0.163037300109863,0.037231121212244,-0.040293138474226,0.040416251868010,0.020377064123750,0.104810491204262,0.027041634544730,0.058149993419647,0.048271246254444,-0.002945683896542,-0.032243110239506,-0.112696349620819,0.032911315560341,-0.126920342445374,-0.037074226886034,0.018858740106225));
res += mul(Get(s3,0,-dy), float4x4(-0.087373048067093,-0.033685635775328,-0.048503648489714,0.010328139178455,-0.010790457949042,-0.140376642346382,0.159426316618919,0.025549579411745,-0.006318084429950,-0.062666848301888,-0.074046902358532,0.146928146481514,-0.022505281493068,-0.154622837901115,-0.014177787117660,0.073505625128746));
res += mul(Get(s3,0,0), float4x4(-0.012917873449624,0.045167826116085,0.242979899048805,-0.091992549598217,0.162705302238464,-0.117282308638096,0.418702036142349,-0.049558304250240,-0.150526121258736,-0.049634080380201,-0.123969264328480,0.077490851283073,-0.091113887727261,-0.230665534734726,-0.066126435995102,0.072037868201733));
res += mul(Get(s3,0,dy), float4x4(0.005080877803266,-0.054106172174215,0.023536650463939,-0.022712633013725,-0.040618225932121,0.014463217929006,0.083857499063015,0.122493110597134,0.017153611406684,-0.105368599295616,-0.008364659734070,0.019056253135204,-0.041209232062101,-0.126096323132515,-0.001955373678356,0.261562108993530));
res += mul(Get(s3,dx,-dy), float4x4(-0.092791989445686,0.024978252127767,-0.031442467123270,-0.031164988875389,0.099173337221146,-0.035083219408989,0.054966773837805,0.182788059115410,-0.017213851213455,-0.093488417565823,-0.025082889944315,-0.027807720005512,0.019048972055316,0.038569074124098,0.056150380522013,0.163377508521080));
res += mul(Get(s3,dx,0), float4x4(-0.067689068615437,-0.188624843955040,0.047721825540066,-0.087596081197262,0.113065063953400,0.017819367349148,0.059110723435879,-0.019449071958661,-0.007289477623999,0.106867603957653,-0.050470612943172,-0.137483268976212,0.128639116883278,0.357492476701736,0.026535114273429,0.079459488391876));
res += mul(Get(s3,dx,dy), float4x4(-0.036797329783440,0.119858741760254,-0.013510262593627,0.049861047416925,0.121517002582550,0.064161658287048,0.061315737664700,0.169570028781891,0.028064904734492,-0.007109044585377,0.034293364733458,0.062114249914885,-0.000801350630354,0.048666611313820,-0.004487425554544,0.063261128962040));
res += mul(Get(s4,-dx,-dy), float4x4(0.050626393407583,-0.027031710371375,-0.170616537332535,-0.005769173149019,0.083124250173569,-0.144142076373100,-0.221431598067284,-0.078588791191578,0.026699367910624,0.023103902116418,-0.219343796372414,0.044703852385283,-0.036757670342922,-0.108670987188816,-0.212679684162140,0.033998668193817));
res += mul(Get(s4,-dx,0), float4x4(-0.114885278046131,-0.032308001071215,-0.076583743095398,0.114595621824265,-0.021150171756744,-0.206340149044991,-0.102463170886040,-0.079715833067894,-0.043540786951780,-0.022339947521687,0.035951722413301,-0.043352898210287,-0.065948262810707,-0.050149783492088,0.023103121668100,-0.052668035030365));
res += mul(Get(s4,-dx,dy), float4x4(0.155531972646713,0.072213813662529,-0.036179862916470,0.071863271296024,0.056102018803358,-0.089847005903721,-0.023599186912179,0.025654859840870,0.048036843538284,0.038876786828041,-0.066600508987904,-0.079823732376099,0.074493132531643,-0.013586463406682,0.025301525369287,-0.018404025584459));
res += mul(Get(s4,0,-dy), float4x4(-0.004658035002649,0.044472951442003,-0.052695762366056,0.276724606752396,-0.079462468624115,-0.304598152637482,-0.094690784811974,0.089476592838764,0.019186787307262,0.013669378124177,-0.037682004272938,-0.078759625554085,0.024246687069535,0.142052218317986,0.013644790276885,0.031320713460445));
res += mul(Get(s4,0,0), float4x4(-0.018300680443645,0.039721399545670,0.044005330651999,0.268827438354492,-0.082115061581135,-0.227656841278076,-0.034160438925028,-0.017881067469716,0.179230436682701,-0.061825517565012,-0.050597369670868,0.128809213638306,-0.107814393937588,0.015780521556735,0.151996508240700,0.307283878326416));
res += mul(Get(s4,0,dy), float4x4(-0.094976104795933,0.029030222445726,0.033639617264271,-0.012733087874949,-0.019593575969338,-0.113729372620583,-0.019176883623004,-0.111127518117428,0.144504934549332,0.026354676112533,0.006619949825108,0.125205039978027,0.097647532820702,-0.023389142006636,-0.015618887729943,-0.027431717142463));
res += mul(Get(s4,dx,-dy), float4x4(0.042899847030640,0.055320724844933,-0.005960509646684,-0.032158814370632,0.019869804382324,0.113529376685619,-0.002607676433399,-0.022875528782606,-0.000450198422186,-0.217301622033119,-0.009547641500831,-0.007352666929364,-0.033098299056292,-0.138669908046722,-0.114227123558521,-0.269053131341934));
res += mul(Get(s4,dx,0), float4x4(-0.078456602990627,0.044568613171577,0.072634048759937,-0.003724758047611,0.017315071076155,0.113276883959770,0.011572233401239,0.006620663683861,0.013074230402708,-0.354055762290955,0.068743951618671,-0.036900792270899,0.002998220035806,-0.012895795516670,0.000587880378589,-0.019146069884300));
res += mul(Get(s4,dx,dy), float4x4(-0.089398004114628,0.166372358798981,-0.037693712860346,-0.039318509399891,0.034328483045101,-0.071306958794594,-0.018044013530016,0.056730721145868,0.057512842118740,-0.073484994471073,0.042380779981613,-0.012923315167427,0.053120877593756,0.038074877113104,-0.026929784566164,-0.038811046630144));
res += mul(Get(s5,-dx,-dy), float4x4(-0.000002367388333,0.013418274931610,-0.177287369966507,0.060935784131289,-0.040899917483330,-0.081192821264267,-0.002026203554124,0.071816287934780,-0.012442909181118,0.040663331747055,-0.132832139730453,-0.058985214680433,0.010004851967096,-0.076261617243290,-0.126067578792572,-0.070282012224197));
res += mul(Get(s5,-dx,0), float4x4(0.165571331977844,-0.130120247602463,-0.059737950563431,0.105910748243332,-0.049165740609169,0.212171807885170,-0.055737018585205,0.009736198000610,-0.066445887088776,0.037447221577168,-0.064585290849209,-0.120784372091293,0.007931307889521,-0.232977256178856,-0.139197230339050,0.021016325801611));
res += mul(Get(s5,-dx,dy), float4x4(-0.119426719844341,-0.095419988036156,-0.010210779495537,0.175419822335243,-0.131458058953285,0.021034140139818,-0.013717394322157,0.091067150235176,-0.017059996724129,0.038253534585238,0.002624189248309,0.020099230110645,0.057858962565660,-0.020567899569869,-0.017651751637459,-0.020526805892587));
res += mul(Get(s5,0,-dy), float4x4(-0.017749235033989,-0.001710801618174,0.000644448969979,-0.048930589109659,-0.053806856274605,0.099256768822670,0.023807048797607,0.014286618679762,0.011955246329308,0.039826165884733,-0.034840952605009,0.069720879197121,0.041742768138647,-0.119210883975029,-0.015191871672869,-0.131385385990143));
res += mul(Get(s5,0,0), float4x4(0.009749379940331,-0.006708018481731,-0.095076844096184,-0.254613995552063,-0.091979913413525,0.032276380807161,-0.080303862690926,0.059083241969347,-0.053735565394163,0.036538496613503,0.054504968225956,0.090223081409931,-0.035373870283365,0.151697903871536,-0.083679787814617,-0.165088310837746));
res += mul(Get(s5,0,dy), float4x4(0.067728430032730,0.094083175063133,0.071206890046597,0.061257343739271,-0.117689132690430,0.013910066336393,0.017937537282705,0.035658124834299,-0.048603225499392,0.025061992928386,0.039432294666767,-0.018527917563915,0.043194882571697,-0.099125087261200,0.021301381289959,-0.061083912849426));
res += mul(Get(s5,dx,-dy), float4x4(0.004519856534898,-0.066756047308445,-0.066642634570599,0.024553282186389,-0.072074897587299,-0.087018273770809,0.040361806750298,0.101958639919758,0.015682294964790,0.005068338010460,0.025245318189263,-0.106949180364609,0.037450566887856,-0.069391027092934,-0.041477706283331,-0.068834207952023));
res += mul(Get(s5,dx,0), float4x4(0.006727711297572,0.207679584622383,0.011373065412045,-0.019588662311435,-0.032116953283548,0.064611658453941,0.019458185881376,0.035858243703842,-0.020227007567883,0.102284096181393,0.047324281185865,0.036633595824242,-0.057241391390562,0.006021947599947,-0.056022614240646,-0.105988115072250));
res += mul(Get(s5,dx,dy), float4x4(-0.029229458421469,-0.034056019037962,0.028765471652150,0.068198092281818,-0.070941425859928,0.026667935773730,0.031143458560109,0.047004465013742,0.009574865922332,-0.066109262406826,0.006765557453036,0.027975318953395,0.009132460691035,-0.042056050151587,-0.016310023143888,-0.014365675859153));
res = max(float4(0, 0, 0, 0), res) + float4(0.063510045409203,-0.134515568614006,-0.004491801373661,0.042680159211159) * min(float4(0, 0, 0, 0), res);
return res;
}