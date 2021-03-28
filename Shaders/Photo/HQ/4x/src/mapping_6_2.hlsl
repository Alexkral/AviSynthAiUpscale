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
float4 res = float4(0.240885436534882,-0.036299012601376,0.001993884565309,0.037540551275015);
res += mul(Get(s0,-dx,-dy), float4x4(0.129997879266739,0.002280941233039,-0.099921196699142,-0.032696925103664,0.079075589776039,0.027823410928249,-0.033146765083075,-0.041123192757368,-0.064975380897522,0.030577089637518,-0.281570047140121,-0.025000216439366,-0.120024353265762,0.002061003819108,-0.261777549982071,-0.007760576438159));
res += mul(Get(s0,-dx,0), float4x4(0.127118259668350,0.004327324684709,-0.026600927114487,-0.080105088651180,0.126112192869186,0.034097418189049,0.210548073053360,-0.060829650610685,0.083018928766251,-0.012942837551236,-0.230184838175774,0.068332880735397,-0.066113971173763,0.039682056754827,-0.143440112471581,0.114003628492355));
res += mul(Get(s0,-dx,dy), float4x4(-0.083813622593880,0.161193296313286,-0.078959673643112,0.043195385485888,-0.139819130301476,-0.027162780985236,-0.076155304908752,-0.023167604580522,0.062159404158592,0.073429293930531,0.125202581286430,-0.041330408304930,-0.132683932781219,0.023943603038788,-0.183972045779228,-0.006151028908789));
res += mul(Get(s0,0,-dy), float4x4(0.051024831831455,0.053273275494576,-0.009258653037250,0.116101719439030,-0.019120544195175,0.166074395179749,0.094812646508217,0.197882369160652,-0.173495128750801,-0.132290706038475,-0.602217435836792,-0.100523218512535,-0.117466188967228,-0.125771075487137,0.007687295787036,0.111855246126652));
res += mul(Get(s0,0,0), float4x4(0.178770422935486,-0.189387440681458,-0.153244629502296,-0.230488136410713,0.121226347982883,-0.074625641107559,-0.003241074504331,-0.233834579586983,-0.482205897569656,-0.079600222408772,-0.184175685048103,0.050400394946337,0.007224998436868,0.026364563032985,0.032615046948195,0.060875650495291));
res += mul(Get(s0,0,dy), float4x4(-0.089622505009174,0.466152489185333,0.057564072310925,-0.121289424598217,-0.068018540740013,0.439443975687027,-0.117056205868721,0.050567779690027,0.014046964235604,-0.176627218723297,0.152915328741074,-0.050773277878761,-0.303208351135254,0.159642979502678,-0.143291190266609,-0.083320945501328));
res += mul(Get(s0,dx,-dy), float4x4(0.097972206771374,-0.000004383568921,0.066298283636570,-0.230677306652069,0.051827076822519,0.022860066965222,0.043515268713236,-0.026311155408621,-0.043245408684015,-0.070329569280148,-0.291818648576736,-0.153459027409554,0.049786608666182,0.015083797276020,-0.041745971888304,-0.032043814659119));
res += mul(Get(s0,dx,0), float4x4(-0.000418772513513,0.023406838998199,-0.097146518528461,0.073083698749542,-0.116617947816849,0.024674339219928,-0.085734076797962,0.091015994548798,-0.214562430977821,-0.002122588921338,-0.169882491230965,0.118506662547588,-0.006203355733305,-0.009300163015723,-0.039063986390829,-0.020725566893816));
res += mul(Get(s0,dx,dy), float4x4(-0.135582700371742,0.040729608386755,0.078521467745304,-0.054831847548485,-0.003337052650750,-0.114866010844707,0.100563131272793,0.033651556819677,0.071554169058800,-0.187781497836113,0.188641369342804,-0.090871892869473,-0.049851913005114,0.039717148989439,0.028957119211555,-0.027678724378347));
res += mul(Get(s1,-dx,-dy), float4x4(-0.151972815394402,-0.075654216110706,0.392497181892395,-0.253341495990753,0.164043560624123,-0.131141617894173,0.025951702147722,-0.083629049360752,0.012693990953267,-0.025958279147744,-0.179150655865669,0.075057432055473,0.037981305271387,0.089549846947193,0.055102396756411,-0.037153165787458));
res += mul(Get(s1,-dx,0), float4x4(0.093556150794029,0.124808773398399,0.044381041079760,-0.199464872479439,0.156736806035042,-0.306201636791229,0.045409306883812,0.024616444483399,0.125320255756378,-0.134400084614754,-0.224075585603714,0.214177116751671,-0.045866064727306,-0.001167755224742,-0.335833549499512,0.132941007614136));
res += mul(Get(s1,-dx,dy), float4x4(0.089414857327938,0.096434429287910,-0.075375080108643,0.125775754451752,-0.021646838635206,-0.159255981445313,0.025240002200007,-0.089493088424206,0.109949380159378,-0.066447138786316,0.180123135447502,-0.110053412616253,0.120466820895672,0.062057211995125,0.301109641790390,-0.039173483848572));
res += mul(Get(s1,0,-dy), float4x4(-0.033681593835354,0.125746905803680,0.019428730010986,0.212737858295441,0.187572374939919,-0.123086929321289,0.086459934711456,-0.076489210128784,0.169122502207756,-0.006979147437960,-0.145857617259026,0.012087935581803,0.195856049656868,0.052184585481882,0.076418973505497,-0.011098241433501));
res += mul(Get(s1,0,0), float4x4(0.010734610259533,-0.026503631845117,0.427660793066025,-0.309660196304321,0.227693036198616,-0.042492799460888,0.100896991789341,-0.140267536044121,-0.000831610290334,-0.078788407146931,-0.118085831403732,-0.229862675070763,0.306645482778549,0.000678790500388,-0.079923778772354,0.047574032098055));
res += mul(Get(s1,0,dy), float4x4(0.090732105076313,0.019797764718533,-0.256606161594391,-0.135623186826706,-0.021763660013676,0.101674847304821,0.063505925238132,-0.060820348560810,0.107818804681301,-0.129216864705086,0.101254567503929,0.032250069081783,-0.064240939915180,0.352529942989349,0.104786165058613,0.115997970104218));
res += mul(Get(s1,dx,-dy), float4x4(-0.045752115547657,0.012224692851305,-0.035896189510822,0.113615617156029,0.068226218223572,-0.115738704800606,0.003426485927776,-0.016564605757594,-0.022435544058681,0.040103852748871,-0.080667428672314,-0.038325712084770,0.002737987553701,0.019798774272203,0.138934627175331,0.172215834259987));
res += mul(Get(s1,dx,0), float4x4(-0.255146831274033,0.038720011711121,0.080143086612225,-0.080364935100079,0.121173225343227,-0.011194112710655,0.033835511654615,-0.017129916697741,0.073754817247391,0.034061882644892,-0.000520573405083,0.122291378676891,0.063220836222172,-0.056572772562504,-0.030227756127715,-0.128093972802162));
res += mul(Get(s1,dx,dy), float4x4(0.068499691784382,-0.074079670011997,-0.085451260209084,-0.025287481024861,0.093519821763039,0.046401444822550,0.041751600801945,-0.102506920695305,-0.048066779971123,-0.106803618371487,0.177591174840927,0.113571941852570,-0.065121538937092,0.282160878181458,0.063886798918247,-0.150429174304008));
res += mul(Get(s2,-dx,-dy), float4x4(-0.146237313747406,-0.057076655328274,0.075298391282558,-0.028231004253030,0.036463003605604,-0.030126443132758,0.141525611281395,-0.078121528029442,0.038240294903517,-0.004987596068531,0.120821185410023,-0.061322901397943,0.118878357112408,-0.003942695446312,0.231721580028534,-0.114499628543854));
res += mul(Get(s2,-dx,0), float4x4(-0.625415027141571,-0.075131423771381,-0.102813549339771,0.041546870023012,-0.003945264965296,0.039380691945553,0.189204275608063,0.041363868862391,0.076352857053280,-0.131558209657669,0.272569119930267,-0.155657082796097,0.074658371508121,0.085886217653751,-0.165762379765511,0.101641535758972));
res += mul(Get(s2,-dx,dy), float4x4(-0.189553454518318,-0.225208878517151,-0.017717158421874,-0.010036921128631,-0.060967691242695,0.007613513153046,-0.072422057390213,-0.002561276545748,0.005412595812231,-0.275737822055817,-0.103676252067089,0.160653635859489,-0.071642659604549,0.032313890755177,0.111232295632362,-0.013297051191330));
res += mul(Get(s2,0,-dy), float4x4(-0.227270469069481,-0.005599097348750,0.073630258440971,-0.030485194176435,0.187327787280083,0.089407637715340,0.133573219180107,-0.058002833276987,-0.060735039412975,0.016006426885724,-0.025506645441055,-0.096999220550060,-0.203127935528755,0.108071386814117,-0.208629697561264,-0.011791991069913));
res += mul(Get(s2,0,0), float4x4(-1.362261295318604,-0.040375273674726,0.116896592080593,0.391140103340149,-0.091723084449768,-0.111075803637505,0.073546364903450,-0.230479314923286,-0.025905659422278,-0.041661713272333,0.060662589967251,-0.248671546578407,-0.350555747747421,-0.163191154599190,0.034367773681879,-0.344903796911240));
res += mul(Get(s2,0,dy), float4x4(-0.370091825723648,-0.765461385250092,0.067136146128178,0.147823363542557,-0.088967308402061,0.195233657956123,-0.099453419446945,0.214782640337944,-0.070762030780315,-0.068276025354862,-0.141694262623787,0.102942898869514,-0.033116590231657,-0.040126964449883,0.098080590367317,0.011073390953243));
res += mul(Get(s2,dx,-dy), float4x4(-0.006634695921093,-0.019860517233610,-0.039458457380533,-0.091285802423954,0.211726009845734,0.079026527702808,-0.047168143093586,0.105433888733387,-0.136224627494812,0.016940940171480,-0.036466084420681,0.189176812767982,-0.017259685322642,0.063364803791046,0.028942527249455,-0.042192786931992));
res += mul(Get(s2,dx,0), float4x4(-0.080778807401657,-0.026484280824661,0.049193039536476,-0.179204180836678,0.193901121616364,-0.151437446475029,-0.048909410834312,-0.534507393836975,0.011294471099973,0.056801158934832,-0.050494339317083,-0.091797024011612,-0.079943194985390,0.101140096783638,-0.101559177041054,-0.043450500816107));
res += mul(Get(s2,dx,dy), float4x4(-0.079607404768467,-0.198415085673332,-0.060214735567570,0.055704656988382,-0.113856315612793,0.365596383810043,-0.280357569456100,-0.102350004017353,-0.079572416841984,0.141775071620941,0.026613455265760,0.040693566203117,-0.037934027612209,-0.059119820594788,-0.093615651130676,-0.107114113867283));
res += mul(Get(s3,-dx,-dy), float4x4(0.080315627157688,0.092947788536549,0.171274900436401,0.175445318222046,-0.043703820556402,-0.078985020518303,0.033044505864382,0.063528843224049,-0.070806592702866,0.087590456008911,0.021223159506917,0.095140501856804,-0.013014324940741,-0.033374503254890,-0.045682113617659,-0.082685947418213));
res += mul(Get(s3,-dx,0), float4x4(-0.036801472306252,0.022112013772130,0.018167927861214,-0.006459177471697,-0.072791703045368,0.055696789175272,-0.366362661123276,0.220229923725128,-0.106768824160099,0.251177698373795,-0.070039317011833,-0.140582278370857,-0.128556221723557,0.026473412290215,0.148268207907677,-0.093115136027336));
res += mul(Get(s3,-dx,dy), float4x4(-0.013411957770586,-0.007508840877563,-0.055017076432705,0.009247553534806,-0.011667147278786,0.075302042067051,0.138923197984695,0.007253696676344,-0.092584371566772,0.152441844344139,-0.176872149109840,0.117624491453171,0.056439030915499,-0.043831232935190,0.359694033861160,-0.111472912132740));
res += mul(Get(s3,0,-dy), float4x4(0.066121339797974,0.013974813744426,0.209980100393295,0.133838236331940,0.227608457207680,0.045928113162518,-0.098254002630711,-0.110337316989899,-0.217902496457100,0.031359463930130,-0.221541628241539,0.125047832727432,-0.241740509867668,-0.001090178498998,0.046188894659281,0.062919229269028));
res += mul(Get(s3,0,0), float4x4(-0.169793829321861,-0.131553098559380,-0.188495397567749,0.154108941555023,-0.031758304685354,-0.389480441808701,0.028700318187475,-0.220060631632805,0.119351863861084,0.082870244979858,0.219776839017868,0.082211390137672,-0.009095805697143,0.093128368258476,0.137191325426102,-0.199369549751282));
res += mul(Get(s3,0,dy), float4x4(-0.003649526508525,0.061313170939684,0.151586532592773,-0.203161567449570,-0.026732202619314,0.031109608709812,-0.151273369789124,0.114587098360062,-0.346586912870407,0.412645459175110,-0.151914581656456,0.007082723081112,0.219579145312309,-0.205627977848053,0.152905642986298,0.090776212513447));
res += mul(Get(s3,dx,-dy), float4x4(-0.062990292906761,-0.106503173708916,0.036444947123528,-0.055639814585447,0.034986928105354,0.042405541986227,-0.038622461259365,0.086320340633392,-0.006512368097901,0.053062230348587,0.040013946592808,0.171041816473007,-0.252858310937881,-0.005861350800842,0.098016858100891,0.330849617719650));
res += mul(Get(s3,dx,0), float4x4(-0.023188903927803,0.173153251409531,0.004218495450914,0.235760867595673,0.080091789364815,0.031780768185854,0.177864149212837,-0.149383842945099,-0.038320735096931,0.069754295051098,0.262023538351059,0.296634584665298,0.165569409728050,0.094633929431438,0.107293471693993,-0.211552694439888));
res += mul(Get(s3,dx,dy), float4x4(-0.048728469759226,0.136894121766090,-0.025960240513086,0.093995407223701,0.033784221857786,0.088663429021835,-0.082878924906254,0.002522406633943,0.034384500235319,-0.004335482139140,0.050621472299099,-0.016955073922873,0.177287653088570,-0.238833263516426,-0.129544645547867,0.130139157176018));
res += mul(Get(s4,-dx,-dy), float4x4(0.059253767132759,0.016553238034248,-0.044835083186626,0.041656762361526,0.241759389638901,0.059032186865807,-0.192867085337639,0.121553927659988,-0.094372689723969,-0.122220411896706,-0.204523935914040,-0.089598037302494,0.125064104795456,0.117407359182835,-0.119607016444206,-0.030870120972395));
res += mul(Get(s4,-dx,0), float4x4(0.087263815104961,-0.126761227846146,-0.201201155781746,-0.020512105897069,0.023352319374681,0.050095252692699,0.270289212465286,-0.129465192556381,0.051564469933510,-0.080469578504562,0.210682645440102,-0.212133333086967,0.002149559091777,0.082847498357296,0.238168403506279,-0.068217672407627));
res += mul(Get(s4,-dx,dy), float4x4(0.031805597245693,-0.068961791694164,0.064854480326176,0.106477320194244,0.144339442253113,-0.088868446648121,-0.356940329074860,0.018453558906913,0.022513341158628,-0.091628596186638,-0.109576217830181,0.101711913943291,0.003769702976570,0.050176750868559,-0.124625384807587,0.017686290666461));
res += mul(Get(s4,0,-dy), float4x4(-0.054836552590132,-0.059844378381968,-0.111361652612686,0.068995080888271,-0.021622952073812,-0.014662219211459,-0.016855649650097,0.106654576957226,-0.183028891682625,-0.021165549755096,-0.030842887237668,0.174157157540321,0.049304019659758,0.158913344144821,0.001326391240582,0.102890677750111));
res += mul(Get(s4,0,0), float4x4(-0.178729176521301,0.141650617122650,0.047569874674082,0.198384910821915,0.029099801555276,0.083861142396927,0.170501440763474,0.073343038558960,0.223498523235321,-0.602591812610626,-0.006596507970244,0.003270592307672,-0.101390689611435,0.336416929960251,0.012953467667103,-0.079792246222496));
res += mul(Get(s4,0,dy), float4x4(0.003051761304960,0.159285023808479,0.128199547529221,0.040119685232639,-0.014246589504182,-0.075082056224346,0.188856333494186,-0.038795091211796,0.146486729383469,-0.118332795798779,-0.175750181078911,-0.140928477048874,0.138001769781113,-0.108315706253052,-0.160176634788513,0.057670295238495));
res += mul(Get(s4,dx,-dy), float4x4(0.316247820854187,-0.025361660867929,-0.048220034688711,0.142119541764259,0.040034867823124,-0.017472730949521,-0.014172887429595,-0.104098036885262,0.250437825918198,-0.128524050116539,0.010517136193812,-0.040159117430449,0.226342201232910,0.081711545586586,-0.105755165219307,-0.397314548492432));
res += mul(Get(s4,dx,0), float4x4(0.102434374392033,-0.038360916078091,-0.056366454809904,0.014827767387033,0.170184358954430,0.163562074303627,0.120445102453232,0.114819146692753,0.108569994568825,-0.238805264234543,-0.260694831609726,0.128459438681602,-0.143688172101974,0.035653829574585,0.115298300981522,-0.012957743369043));
res += mul(Get(s4,dx,dy), float4x4(0.030751904472709,-0.092879176139832,0.133826747536659,0.232862442731857,0.015009311027825,0.051701270043850,0.077236182987690,0.106613442301750,0.051601413637400,-0.100987523794174,-0.046342179179192,-0.043464761227369,0.064638286828995,-0.024471594020724,-0.052608672529459,-0.071385711431503));
res += mul(Get(s5,-dx,-dy), float4x4(0.074988789856434,-0.075016185641289,0.109516456723213,0.144097730517387,0.068708442151546,-0.008309566415846,0.028740901499987,0.010597386397421,-0.121206052601337,-0.052890382707119,-0.054283875972033,-0.083532385528088,0.150506854057312,-0.009722058661282,0.098415166139603,0.017937535420060));
res += mul(Get(s5,-dx,0), float4x4(-0.069401241838932,-0.044010553508997,-0.111844882369041,-0.038492005318403,-0.041020110249519,0.071234747767448,0.015817970037460,0.011473054997623,0.026612181216478,0.112983182072639,-0.543333590030670,0.187954589724541,0.026134572923183,0.038519572466612,0.163265436887741,-0.055870201438665));
res += mul(Get(s5,-dx,dy), float4x4(0.119510412216187,0.159395053982735,-0.045842926949263,0.143351748585701,0.112595692276955,-0.012323307804763,-0.119859099388123,-0.177726820111275,-0.100995942950249,0.091395631432533,0.159633368253708,0.014804797247052,0.048200245946646,0.011180910281837,0.011831597425044,0.241817966103554));
res += mul(Get(s5,0,-dy), float4x4(-0.105301246047020,-0.077263154089451,-0.032201617956161,-0.111154884099960,0.022918250411749,0.013896905817091,0.071852140128613,0.082981273531914,-0.009011890739202,0.054952550679445,-0.046622462570667,-0.080453015863895,0.209615230560303,0.013844604603946,-0.129607275128365,-0.103232488036156));
res += mul(Get(s5,0,0), float4x4(-0.147440448403358,-0.160584345459938,0.052675906568766,0.121049530804157,-0.049486305564642,-0.220253780484200,-0.075099565088749,-0.144282862544060,-0.166975542902946,0.165472507476807,0.025091914460063,0.132975399494171,0.131283119320869,0.005811021197587,0.148354306817055,0.263998299837112));
res += mul(Get(s5,0,dy), float4x4(0.053429130464792,-0.281500279903412,0.006220960523933,-0.029759993776679,-0.023251015692949,-0.093539439141750,-0.013107703998685,0.044462669640779,-0.049628484994173,-0.281978756189346,-0.132062867283821,0.015901815146208,0.077099263668060,0.306005597114563,0.034828919917345,-0.043704144656658));
res += mul(Get(s5,dx,-dy), float4x4(0.068802215158939,0.026426710188389,0.141313835978508,-0.046756908297539,-0.024945111945271,0.098172083497047,0.043735004961491,0.032372277230024,0.091202616691589,-0.044401433318853,0.027373835444450,0.187121078372002,0.018303830176592,0.000902554544155,-0.050477255135775,0.109172858297825));
res += mul(Get(s5,dx,0), float4x4(-0.225260809063911,-0.111338205635548,0.161951512098312,0.169783353805542,-0.036340229213238,0.090430825948715,-0.095046773552895,0.011843056418002,0.057705458253622,-0.094864785671234,0.075275294482708,-0.212944328784943,0.019125146791339,-0.095003761351109,0.071229480206966,0.113250397145748));
res += mul(Get(s5,dx,dy), float4x4(0.037732902914286,-0.195917606353760,0.059270650148392,0.097966253757477,0.130445048213005,-0.056727845221758,-0.077197365462780,-0.031699154525995,-0.048238534480333,0.228854790329933,0.015180098824203,-0.004874194040895,0.103973455727100,0.098060362040997,0.101235657930374,0.031483553349972));
res = max(float4(0, 0, 0, 0), res) + float4(0.043747872114182,0.025058371946216,0.031329680234194,-0.180780455470085) * min(float4(0, 0, 0, 0), res);
return res;
}