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
float4 res = float4(-0.338997244834900,-0.333548009395599,-0.165025085210800,-0.109010428190231);
res += mul(Get(s0,-dx,-dy), float4x4(0.002730545355007,0.032222170382738,-0.016356691718102,-0.017644284293056,0.040394589304924,-0.007850199937820,0.063817314803600,-0.045679137110710,-0.000543930334970,-0.027830077335238,-0.001995710423216,0.014207384549081,0.012604026123881,-0.078454829752445,0.046561870723963,0.018094133585691));
res += mul(Get(s0,-dx,0), float4x4(0.082058764994144,-0.025122964754701,0.064782917499542,-0.058829270303249,-0.053686160594225,-0.078083589673042,0.036704618483782,0.054359886795282,-0.005327218212187,-0.031921070069075,-0.032197769731283,0.044722877442837,0.039582058787346,0.002916365629062,0.027948629111052,0.025810208171606));
res += mul(Get(s0,-dx,dy), float4x4(0.010121959261596,0.218534141778946,0.061478123068810,-0.021795265376568,0.010719402693212,-0.006008883472532,-0.113101884722710,0.030366487801075,-0.033507138490677,-0.127451509237289,-0.028319887816906,0.049491867423058,0.007511189207435,0.038054499775171,-0.036950081586838,0.016308851540089));
res += mul(Get(s0,0,-dy), float4x4(0.088078700006008,0.051804795861244,-0.127666637301445,0.015373437665403,-0.044039167463779,0.119139872491360,0.044166471809149,-0.012298831716180,-0.053842224180698,0.012401953339577,-0.036839187145233,0.005260857287794,0.003956449218094,-0.005427526775748,0.041619539260864,0.006309119984508));
res += mul(Get(s0,0,0), float4x4(0.155842259526253,-0.156722530722618,-0.037072580307722,-0.012421653605998,-0.005700278095901,-0.068158984184265,0.014425355941057,0.023402526974678,-0.190876349806786,-0.094552084803581,0.070839345455170,0.003712433390319,0.044599648565054,-0.018498856574297,0.065178565680981,0.009398042224348));
res += mul(Get(s0,0,dy), float4x4(-0.033813878893852,-0.214502394199371,0.099543392658234,0.063257060945034,-0.031416986137629,0.206508025527000,-0.035308524966240,-0.019359298050404,-0.037550516426563,0.011084488593042,0.034588705748320,-0.030510853976011,0.006865924224257,0.087627790868282,-0.032190162688494,0.009259157814085));
res += mul(Get(s0,dx,-dy), float4x4(-0.203530609607697,-0.014238662086427,0.010075521655381,0.012448226101696,0.036472212523222,0.036289621144533,-0.027684094384313,-0.027027606964111,-0.033380649983883,0.054476764053106,0.059404011815786,-0.031654641032219,0.037180658429861,-0.059848614037037,0.042779687792063,-0.017106536775827));
res += mul(Get(s0,dx,0), float4x4(-0.049181491136551,0.016695197671652,0.044819019734859,-0.063484981656075,0.186549499630928,0.008056112565100,-0.079390712082386,0.053838692605495,0.059560008347034,-0.004926186986268,-0.021242482587695,-0.009193863719702,0.126225233078003,-0.023757684975863,0.000144896359416,-0.002913193078712));
res += mul(Get(s0,dx,dy), float4x4(0.070583902299404,-0.101382695138454,0.024352306500077,0.036465678364038,-0.144457489252090,-0.112928956747055,0.046009268611670,0.011474711820483,-0.021933961659670,0.015517599880695,0.007535838987678,0.007246105466038,0.076772458851337,0.013754834420979,-0.037164241075516,0.007516380399466));
res += mul(Get(s1,-dx,-dy), float4x4(-0.037435632199049,-0.076963759958744,0.063398480415344,-0.022508701309562,-0.036632534116507,-0.008970631286502,0.041597787290812,-0.013247399590909,-0.036014769226313,-0.025325816124678,0.004220671020448,-0.080973088741302,-0.005998122040182,0.052564483135939,-0.030628135427833,-0.021619511768222));
res += mul(Get(s1,-dx,0), float4x4(0.006375142838806,-0.007170791272074,0.041177447885275,0.044840056449175,0.027955675497651,-0.007508052978665,-0.016157593578100,0.023663403466344,0.016533482819796,0.031727947294712,0.024267567321658,0.055081743746996,-0.039959561079741,0.046567458659410,-0.081659972667694,0.055840596556664));
res += mul(Get(s1,-dx,dy), float4x4(-0.018098540604115,0.022072372958064,-0.047106772661209,0.008013674989343,-0.000647490029223,-0.000984495622106,-0.011868673376739,0.011537328362465,-0.086899630725384,0.121969237923622,-0.138269633054733,-0.000616290024482,-0.038263097405434,-0.056047491729259,-0.027140010148287,0.016136968508363));
res += mul(Get(s1,0,-dy), float4x4(-0.051368519663811,0.005052850581706,0.023613730445504,-0.033352985978127,-0.002825165633112,0.011275949887931,0.003956034313887,-0.007740810979158,-0.041212942451239,-0.001682553789578,0.013974389992654,-0.093897752463818,-0.026160471141338,0.009060503914952,0.062798000872135,-0.039419341832399));
res += mul(Get(s1,0,0), float4x4(0.006994335446507,-0.097195394337177,0.085442848503590,0.014161670580506,-0.004014108795673,0.009472442790866,0.013695213012397,0.006922564934939,0.040930610150099,0.090985015034676,0.062318041920662,0.043590184301138,-0.089595451951027,0.086358912289143,0.028203908354044,0.035329800099134));
res += mul(Get(s1,0,dy), float4x4(0.008956129662693,0.225498929619789,-0.031857263296843,-0.004337045364082,-0.000826311646961,0.034692734479904,0.015171624720097,-0.016334703192115,-0.084969744086266,0.249840378761292,-0.178525954484940,0.004074147902429,-0.044264972209930,0.076393976807594,-0.070245929062366,-0.011049591004848));
res += mul(Get(s1,dx,-dy), float4x4(0.023622173815966,-0.094391740858555,0.014616949483752,-0.061254739761353,0.018427623435855,-0.008399548009038,-0.019725920632482,-0.014233201742172,0.077297769486904,0.009909842163324,-0.026649987325072,-0.096908241510391,0.043609797954559,0.031331770122051,0.008920408785343,-0.031529270112514));
res += mul(Get(s1,dx,0), float4x4(0.169687539339066,-0.048724789172411,-0.070252344012260,0.024543350562453,0.004127291496843,-0.003586178645492,0.025019926950336,-0.009585116058588,0.113828442990780,0.073667600750923,0.019147273153067,0.053457643836737,-0.009167657233775,-0.060844693332911,0.024822756648064,0.051485817879438));
res += mul(Get(s1,dx,dy), float4x4(0.029484337195754,-0.068605452775955,-0.034995924681425,0.022870901972055,-0.029582709074020,0.026224922388792,0.004195103887469,-0.003014084417373,-0.118860244750977,0.109038755297661,-0.118360236287117,0.016003530472517,-0.123925633728504,0.165366724133492,-0.071917645633221,0.006942453794181));
res += mul(Get(s2,-dx,-dy), float4x4(0.009931321255863,-0.009388103149831,-0.066599123179913,0.052401483058929,0.041881721466780,-0.056242015212774,0.033978883177042,-0.024862203747034,-0.024488875642419,-0.021533291786909,-0.005616972688586,0.036585360765457,-0.016218988224864,0.073491148650646,0.118081651628017,-0.063573822379112));
res += mul(Get(s2,-dx,0), float4x4(-0.043383739888668,0.168687656521797,-0.156503260135651,-0.021743997931480,0.003779090708122,-0.025537516921759,-0.001581654185429,-0.026428345590830,-0.033395659178495,-0.046691767871380,-0.007272206246853,0.033322066068649,0.084023118019104,-0.027192136272788,0.130530014634132,0.060397330671549));
res += mul(Get(s2,-dx,dy), float4x4(-0.009678654372692,-0.185033231973648,0.064358904957771,-0.006602587178349,0.007109019905329,0.053529489785433,-0.030316187068820,-0.023388264700770,-0.025653893128037,0.022928761318326,-0.038655810058117,0.017794961109757,-0.016344206407666,0.070965066552162,-0.090766973793507,-0.018153280019760));
res += mul(Get(s2,0,-dy), float4x4(0.045802928507328,-0.015581651590765,-0.056334123015404,0.076750017702579,0.043263897299767,0.023371160030365,-0.008441807702184,0.004699922166765,0.038720745593309,0.040349561721087,-0.031964898109436,0.005072451662272,-0.072272904217243,0.034642159938812,0.054190177470446,-0.046120256185532));
res += mul(Get(s2,0,0), float4x4(-0.177128955721855,-0.055291600525379,-0.040113221853971,-0.014063440263271,0.064898230135441,-0.022837886586785,0.042688976973295,-0.022199168801308,-0.015888055786490,-0.008561052381992,-0.007818950340152,0.003144753864035,0.011091785505414,-0.202854543924332,0.104382991790771,0.064101733267307));
res += mul(Get(s2,0,dy), float4x4(0.013473316095769,-0.284113496541977,-0.017232604324818,-0.011230611242354,0.062137417495251,0.007344887126237,0.031223524361849,-0.020756868645549,-0.018255557864904,-0.009097869507968,-0.028822915628552,0.002565959468484,-0.107996217906475,0.396050006151199,-0.090882152318954,-0.008039446547627));
res += mul(Get(s2,dx,-dy), float4x4(-0.061339873820543,0.058000750839710,0.095920398831367,0.084103032946587,-0.035630859434605,-0.018591403961182,-0.001233706716448,-0.014608985744417,0.019476886838675,-0.013121076859534,-0.038062065839767,0.018182750791311,0.120390653610229,0.038754411041737,-0.001941084628925,-0.068150624632835));
res += mul(Get(s2,dx,0), float4x4(-0.294693827629089,0.150553077459335,0.080268837511539,-0.030863098800182,0.050099480897188,-0.017368072643876,-0.008084172382951,0.000601108011324,-0.000900126877241,-0.002469467464834,0.014739277772605,-0.011327777989209,0.247382700443268,0.028480198234320,-0.096964754164219,0.057062257081270));
res += mul(Get(s2,dx,dy), float4x4(-0.074153862893581,0.139417812228203,0.087761230766773,-0.053516868501902,0.046963576227427,-0.051546722650528,0.038046371191740,0.006996725220233,-0.023935101926327,0.004510775674134,-0.020980143919587,0.011462309397757,-0.096168793737888,-0.103006213903427,-0.024096272885799,0.015758497640491));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007285135798156,-0.003689203644171,0.012621298432350,0.024513473734260,-0.037911061197519,-0.010549435392022,0.048975296318531,-0.085263460874557,0.045022618025541,0.060244169086218,-0.051955793052912,-0.008746697567403,-0.062073387205601,-0.046263922005892,-0.023803923279047,0.031428191810846));
res += mul(Get(s3,-dx,0), float4x4(-0.025968093425035,0.004185449797660,0.003904944052920,0.011133715510368,-0.045124631375074,-0.110898829996586,-0.000772635452449,0.022215135395527,-0.053299773484468,0.028713637962937,0.010212763212621,-0.038587879389524,-0.077272996306419,-0.103518620133400,-0.014997979626060,0.039866644889116));
res += mul(Get(s3,-dx,dy), float4x4(-0.013255310244858,-0.009204287081957,0.014812997542322,-0.009643903002143,-0.038075167685747,-0.074320100247860,0.073794141411781,0.020396215841174,0.032878424972296,-0.025322329252958,0.097790040075779,-0.029261343181133,-0.069178864359856,-0.114296987652779,-0.065791919827461,0.048116210848093));
res += mul(Get(s3,0,-dy), float4x4(-0.006096981465816,-0.026762699708343,-0.001281798933633,0.019218243658543,-0.143291607499123,-0.047759775072336,0.080497547984123,-0.062885567545891,0.071789428591728,-0.032556332647800,-0.107304297387600,0.009857306256890,-0.081338793039322,0.000876701902598,0.047121435403824,-0.008686392568052));
res += mul(Get(s3,0,0), float4x4(-0.051742047071457,-0.037596028298140,0.040698129683733,-0.012220866978168,-0.061530567705631,-0.149289578199387,0.098424620926380,-0.003633784828708,-0.031823530793190,-0.097857236862183,-0.093037068843842,-0.003266817191616,-0.112411327660084,0.003549505025148,0.040510643273592,-0.019060999155045));
res += mul(Get(s3,0,dy), float4x4(-0.003881401382387,0.012462514452636,0.006374152842909,-0.013449136167765,0.020962037146091,0.155438631772995,0.029518447816372,-0.005361174233258,0.031749896705151,-0.156275555491447,0.024158870801330,0.007973972707987,-0.054157804697752,0.055175058543682,0.013389410451055,-0.041391596198082));
res += mul(Get(s3,dx,-dy), float4x4(-0.003618726972491,-0.064368978142738,0.025316938757896,-0.004116638097912,-0.062122900038958,-0.061823371797800,0.036573093384504,-0.074878498911858,-0.066667728126049,0.028963021934032,-0.023686181753874,0.022804494947195,0.028647860512137,-0.024976998567581,-0.009627697989345,0.010505642741919));
res += mul(Get(s3,dx,0), float4x4(-0.008331156335771,-0.057086139917374,-0.003965346608311,0.005316632334143,0.063977777957916,-0.140313908457756,-0.002338447840884,0.005359163973480,-0.124381303787231,0.049099076539278,-0.001089611090720,0.006204540375620,0.073556318879128,0.004979137796909,-0.045075576752424,0.004822213668376));
res += mul(Get(s3,dx,dy), float4x4(0.008795125409961,0.012291117571294,-0.011117775924504,-0.005323605611920,-0.068502590060234,0.103394195437431,0.075832046568394,0.009306225925684,-0.068879216909409,-0.100212067365646,0.098727688193321,0.007317785173655,-0.006033662240952,0.046005629003048,-0.042461987584829,-0.011133092455566));
res += mul(Get(s4,-dx,-dy), float4x4(0.050884928554296,0.004438170231879,-0.037725865840912,0.023922998458147,-0.018486419692636,0.019323896616697,-0.018728302791715,-0.031836427748203,0.007896987721324,0.039246708154678,0.059983588755131,-0.067602962255478,-0.064649082720280,-0.034527447074652,-0.043742042034864,0.057556692510843));
res += mul(Get(s4,-dx,0), float4x4(0.005337260197848,0.001110784243792,-0.033351089805365,-0.009114289656281,0.020268898457289,0.002779352013022,-0.027041004970670,-0.003989653661847,0.025818521156907,-0.000726416008547,-0.037253092974424,-0.008197640068829,-0.073529846966267,-0.144054576754570,0.074294872581959,0.040271848440170));
res += mul(Get(s4,-dx,dy), float4x4(-0.051701672375202,-0.221710026264191,0.056547306478024,0.033749774098396,0.005395344924182,-0.013814470730722,0.013531750068069,0.015703896060586,-0.029307886958122,-0.101498246192932,0.021047662943602,-0.003827485023066,-0.018057223409414,0.000254081067396,-0.002442925935611,-0.023034732788801));
res += mul(Get(s4,0,-dy), float4x4(-0.127517998218536,0.033442184329033,-0.002869758056477,0.037150651216507,0.020891482010484,0.063009992241859,-0.011032810434699,-0.022822055965662,-0.006883659400046,-0.028903055936098,0.073891334235668,0.009594674222171,-0.039484482258558,-0.040691848844290,0.099462769925594,-0.010143854655325));
res += mul(Get(s4,0,0), float4x4(-0.082239158451557,-0.070052288472652,0.116135641932487,-0.077525720000267,0.004398380406201,0.017105206847191,-0.027173504233360,-0.006040416657925,-0.005195931997150,0.009042289108038,0.075778119266033,-0.019718386232853,0.071316830813885,-0.012091482989490,-0.021999293938279,0.011894638650119));
res += mul(Get(s4,0,dy), float4x4(0.101117059588432,0.148386463522911,-0.079754658043385,0.023728637024760,-0.013106668367982,-0.096976585686207,0.020993176847696,0.001759583363310,0.013762169517577,0.119521588087082,-0.030921468511224,-0.020443489775062,0.016233742237091,0.111520022153854,-0.057765811681747,-0.009830205701292));
res += mul(Get(s4,dx,-dy), float4x4(0.052790805697441,-0.072239391505718,0.036950148642063,-0.040100745856762,-0.031545322388411,0.001958248205483,0.020195201039314,-0.006850311066955,0.097487039864063,-0.018638107925653,-0.040025636553764,0.005827337503433,0.094354532659054,-0.020473325625062,-0.031578682363033,0.025621242821217));
res += mul(Get(s4,dx,0), float4x4(0.072610028088093,0.051719818264246,-0.108071208000183,-0.003593665547669,-0.025256248190999,0.010192199610174,0.023661620914936,-0.025173315778375,0.017204130068421,-0.006756496150047,0.005937410984188,0.020307239145041,0.032584570348263,0.118873544037342,-0.010728047229350,0.038450833410025));
res += mul(Get(s4,dx,dy), float4x4(-0.005405647680163,-0.043759617954493,0.077732421457767,0.023918293416500,-0.006726115476340,0.016374716535211,-0.001362235634588,-0.003989682532847,-0.052455469965935,-0.021752018481493,0.024589726701379,-0.020871711894870,0.047262076288462,0.078154988586903,0.020025504752994,-0.039989627897739));
res += mul(Get(s5,-dx,-dy), float4x4(-0.024709325283766,-0.118926346302032,-0.047436539083719,-0.017371177673340,-0.002500279108062,-0.024522438645363,-0.003734222613275,0.038056161254644,0.007739544380456,-0.025131598114967,-0.020737828686833,0.020936315879226,-0.011161400936544,-0.019061701372266,-0.030028317123652,0.035867001861334));
res += mul(Get(s5,-dx,0), float4x4(-0.076263234019279,-0.070646435022354,-0.059225313365459,-0.060880370438099,-0.047618996351957,0.009606371633708,-0.007183530833572,-0.007138708606362,0.071256585419178,0.029498659074306,-0.007069876883179,-0.003642127849162,0.056489184498787,-0.039716463536024,0.025365857407451,-0.037847988307476));
res += mul(Get(s5,-dx,dy), float4x4(-0.034093748778105,-0.164873361587524,0.000875632511452,-0.045930199325085,0.027692681178451,0.021615082398057,-0.003548335982487,-0.000411349203205,-0.022703461349010,0.014759996905923,-0.060213692486286,0.014723639935255,0.025477698072791,-0.013419250026345,0.010661489330232,0.015829751268029));
res += mul(Get(s5,0,-dy), float4x4(-0.032613191753626,-0.180598974227905,-0.111615374684334,-0.010943131521344,0.006251004524529,-0.000897232443094,0.031393527984619,-0.004128869622946,0.005423336755484,0.060878574848175,-0.028722565621138,0.014395382255316,0.028533363714814,-0.042171277105808,-0.018090046942234,0.012713089585304));
res += mul(Get(s5,0,0), float4x4(-0.113357752561569,-0.204952135682106,-0.090186581015587,-0.037787307053804,0.005721040070057,0.013599925674498,-0.040395524352789,0.000468794081826,0.070306517183781,0.103425428271294,-0.018225062638521,-0.000705260899849,0.073559850454330,0.055397037416697,-0.024159137159586,-0.019143089652061));
res += mul(Get(s5,0,dy), float4x4(-0.098108343780041,-0.255177825689316,-0.031975306570530,-0.025376716628671,-0.004838233347982,-0.038453903049231,0.021477298811078,-0.000325295433868,-0.030141500756145,-0.018203359097242,-0.045468527823687,0.013658876530826,0.038788516074419,-0.087479881942272,0.029730424284935,0.029042966663837));
res += mul(Get(s5,dx,-dy), float4x4(-0.107370786368847,-0.143638014793396,-0.068969190120697,-0.003684526775032,-0.031411491334438,0.054846707731485,0.005918910726905,0.032216407358646,0.032201755791903,-0.006535093765706,0.003732325974852,0.008549094200134,0.016337335109711,-0.002773385494947,-0.008951626718044,0.024921774864197));
res += mul(Get(s5,dx,0), float4x4(-0.131248638033867,-0.229903429746628,-0.083237521350384,-0.024341665208340,-0.013481523841619,-0.031322281807661,0.003681827336550,-0.006512439809740,0.020519575104117,0.039728738367558,-0.013022075407207,0.014285297133029,-0.010815848596394,0.056397520005703,0.013077288866043,-0.027292883023620));
res += mul(Get(s5,dx,dy), float4x4(-0.122777141630650,-0.354555338621140,0.007632136810571,-0.022613832727075,-0.014576831832528,0.032730251550674,0.019179921597242,-0.012104919180274,-0.002519091125578,-0.026870163157582,-0.061668314039707,0.012692010961473,0.107672095298767,-0.057125579565763,0.013146148994565,0.022137053310871));
res = max(float4(0, 0, 0, 0), res) + float4(-0.012724103406072,-0.001257427968085,-0.030402705073357,-0.031331744045019) * min(float4(0, 0, 0, 0), res);
return res;
}