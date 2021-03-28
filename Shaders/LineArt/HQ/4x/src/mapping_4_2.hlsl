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
float4 res = float4(0.002724951365963,0.047976542264223,0.101092480123043,0.054242126643658);
res += mul(Get(s0,-dx,-dy), float4x4(-0.106231182813644,0.160131201148033,0.017501097172499,0.069140315055847,-0.010255291126668,0.091375574469566,0.065028026700020,0.135273799300194,0.036056537181139,0.083190403878689,0.021657789126039,-0.100970387458801,-0.080632381141186,-0.137042403221130,0.004514756612480,0.028548154979944));
res += mul(Get(s0,-dx,0), float4x4(0.053402774035931,0.110244758427143,0.024412136524916,0.034463994204998,-0.023458300158381,0.031990326941013,-0.018561642616987,0.073455974459648,0.017182150855660,0.036561857908964,0.068845160305500,-0.080646134912968,-0.030692789703608,-0.204647347331047,-0.203712329268456,0.127266302704811));
res += mul(Get(s0,-dx,dy), float4x4(-0.027237039059401,0.109344609081745,-0.047049801796675,0.087786577641964,-0.105291761457920,0.048792611807585,-0.011303630657494,-0.031679630279541,-0.022864673286676,0.131502866744995,0.004924620967358,-0.126794204115868,-0.168630853295326,-0.252761662006378,-0.049184631556273,-0.090772859752178));
res += mul(Get(s0,0,-dy), float4x4(-0.086724370718002,0.266561716794968,-0.037420716136694,0.045590177178383,0.007709917612374,0.109497293829918,-0.025613920763135,0.019397286698222,0.089729093015194,0.140976831316948,0.109993591904640,0.048164028674364,-0.042784940451384,0.029609562829137,0.049307886511087,0.078664131462574));
res += mul(Get(s0,0,0), float4x4(-0.018087081611156,0.231897518038750,0.090324282646179,-0.167831465601921,0.070946916937828,-0.529500722885132,-0.137887701392174,-0.000445027399110,-0.011562892235816,0.131681382656097,0.181847751140594,0.101516783237457,-0.286334961652756,-0.056714765727520,0.058627791702747,0.173234045505524));
res += mul(Get(s0,0,dy), float4x4(0.149369791150093,0.063321657478809,-0.139179274439812,0.045175109058619,-0.156287193298340,0.086248271167278,0.004776258952916,0.011161402799189,-0.129336267709732,-0.613476216793060,0.043531477451324,-0.002655416028574,-0.838902950286865,-0.822792172431946,-0.133791357278824,0.152579411864281));
res += mul(Get(s0,dx,-dy), float4x4(0.011703087948263,-0.046106934547424,0.047240160405636,0.062104217708111,-0.005131876096129,0.033901333808899,-0.012641561217606,-0.134424373507500,0.062494967132807,0.095934756100178,0.011282167397439,-0.039036147296429,-0.017228497192264,-0.146175339818001,0.005868870299309,-0.018526088446379));
res += mul(Get(s0,dx,0), float4x4(0.029381465166807,-0.033574890345335,0.053148332983255,-0.013702538795769,0.017975052818656,-0.064031973481178,0.068619407713413,-0.094897516071796,0.051550086587667,0.047332976013422,0.052874501794577,-0.178702488541603,-0.027985109016299,-0.100903801620007,-0.001251730718650,0.071127675473690));
res += mul(Get(s0,dx,dy), float4x4(-0.040253479033709,-0.132092371582985,0.016280675306916,-0.015846231952310,-0.017298461869359,-0.072031177580357,0.038437627255917,-0.009345592930913,-0.171993434429169,0.089438430964947,-0.014588169753551,-0.103655867278576,-0.096685931086540,-0.490360528230667,0.013477738015354,-0.003367728088051));
res += mul(Get(s1,-dx,-dy), float4x4(0.020948164165020,0.053749099373817,-0.170209050178528,0.088341921567917,0.156562358140945,0.008450974710286,-0.051594465970993,-0.076556332409382,-0.058991618454456,-0.113873101770878,0.037042930722237,-0.115312866866589,0.137149244546890,0.107923984527588,-0.136432111263275,-0.053245391696692));
res += mul(Get(s1,-dx,0), float4x4(0.218735307455063,0.373999744653702,-0.089595094323158,0.102558374404907,0.326279729604721,0.287744760513306,0.070112675428391,-0.230168819427490,-0.092802636325359,0.249724924564362,0.233821123838425,-0.215002477169037,-0.226178005337715,0.059766482561827,0.076940260827541,0.174437329173088));
res += mul(Get(s1,-dx,dy), float4x4(0.027232229709625,0.130282744765282,0.111170455813408,0.227449506521225,0.207360848784447,0.059731852263212,-0.081698887050152,0.288973778486252,-0.014143440872431,-0.012989902868867,0.068908832967281,-0.116951078176498,-0.139384880661964,-0.083212256431580,0.039431530982256,0.015115093439817));
res += mul(Get(s1,0,-dy), float4x4(0.120187051594257,0.175529435276985,-0.067745804786682,0.129521146416664,0.030690331012011,0.239742070436478,-0.084409892559052,0.020979806780815,0.046438891440630,0.001867878600024,0.013283633626997,0.029595769941807,-0.062477499246597,-0.074209511280060,-0.089370496571064,-0.002405975945294));
res += mul(Get(s1,0,0), float4x4(0.461791157722473,0.589381396770477,0.100288212299347,-0.236816927790642,0.101613171398640,0.303444296121597,-0.000316005374771,0.100658558309078,-0.274419873952866,0.004892202559859,-0.104493185877800,0.265496164560318,0.154172644019127,-0.143031045794487,0.074965447187424,-0.175451323390007));
res += mul(Get(s1,0,dy), float4x4(-0.063953883945942,0.441072165966034,0.138539478182793,0.309876650571823,-0.070988647639751,0.032969512045383,0.085973471403122,0.078842803835869,-0.107292219996452,-0.000374594063032,0.110104583203793,-0.006456918548793,-0.087648101150990,-0.068415738642216,0.068235553801060,0.293165564537048));
res += mul(Get(s1,dx,-dy), float4x4(0.080630838871002,0.128619462251663,-0.102554619312286,0.178436636924744,0.036421485245228,0.056730400770903,-0.017753751948476,-0.116307266056538,-0.032526988536119,-0.091342486441135,0.004747937433422,-0.053062979131937,0.002295321086422,-0.023492818698287,0.086451619863510,-0.168630525469780));
res += mul(Get(s1,dx,0), float4x4(-0.068986184895039,0.442392289638519,-0.081305749714375,0.093385703861713,0.202052280306816,0.325494021177292,0.068383313715458,-0.096853591501713,0.076832972466946,-0.268732815980911,0.064028300344944,-0.108866132795811,0.053278364241123,0.300907164812088,-0.177043274044991,0.258477240800858));
res += mul(Get(s1,dx,dy), float4x4(0.379381984472275,0.379885077476501,0.018101157620549,0.218817427754402,0.209035798907280,0.026567358523607,0.043021567165852,0.195254057645798,-0.187838718295097,-0.122764296829700,-0.068038061261177,0.125618472695351,0.132031172513962,0.345632702112198,-0.003035757457837,0.045945193618536));
res += mul(Get(s2,-dx,-dy), float4x4(0.097377434372902,-0.094721555709839,0.096070900559425,0.044953528791666,0.117451228201389,-0.000227657757932,0.091229513287544,-0.015500167384744,0.022724004462361,-0.083705589175224,0.012786156497896,-0.118110485374928,-0.027718750759959,-0.186296060681343,-0.122376799583435,-0.095558069646358));
res += mul(Get(s2,-dx,0), float4x4(0.019287606701255,-0.358905404806137,0.154657110571861,-0.235343307256699,-0.087960913777351,0.009812897071242,-0.007730748504400,0.159090131521225,-0.093934454023838,-0.296551108360291,0.110371544957161,0.000140101561556,-0.040885888040066,-0.092719100415707,-0.113431014120579,-0.228578642010689));
res += mul(Get(s2,-dx,dy), float4x4(-0.481695026159286,-0.037969656288624,0.048673044890165,-0.048325911164284,-0.132919684052467,0.075465641915798,-0.073823191225529,0.110446222126484,-0.118723750114441,-0.239132970571518,0.085392974317074,0.069773375988007,-0.011566117405891,-0.118235990405083,-0.002055591437966,-0.091083794832230));
res += mul(Get(s2,0,-dy), float4x4(0.056938130408525,-0.244158804416656,0.022175433114171,-0.047326605767012,0.068694755434990,0.064300388097763,-0.048065196722746,-0.187562733888626,0.019853742793202,0.039466641843319,-0.090668320655823,0.245918959379196,-0.001567983184941,-0.247232854366302,0.159034475684166,0.076927460730076));
res += mul(Get(s2,0,0), float4x4(-0.540308475494385,-0.020367048680782,-0.168738245964050,0.001657945220359,-0.098136372864246,0.104515343904495,0.188373878598213,-0.088388614356518,-0.100626021623611,-0.093896828591824,0.083287887275219,0.241480454802513,-0.133661225438118,-0.298214763402939,-0.016054838895798,0.195159465074539));
res += mul(Get(s2,0,dy), float4x4(-0.034033767879009,-0.114996373653412,-0.088011920452118,0.065641425549984,-0.205672293901443,0.035979606211185,0.054214507341385,0.338346540927887,0.076621927320957,0.121054127812386,0.291382342576981,0.342740058898926,-0.165794938802719,-0.005321400705725,-0.054470214992762,0.066141851246357));
res += mul(Get(s2,dx,-dy), float4x4(0.034597113728523,-0.248965442180634,0.016721297055483,0.123247124254704,-0.059982355684042,0.069806911051273,0.285393744707108,0.102300271391869,-0.056486561894417,-0.108870580792427,-0.025422099977732,0.194949537515640,-0.134288296103477,-0.010409072972834,0.079246141016483,-0.106149710714817));
res += mul(Get(s2,dx,0), float4x4(-0.066163912415504,-0.127232924103737,-0.061145670711994,-0.054864134639502,-0.049305293709040,-0.119271636009216,-0.013729858212173,0.170801669359207,-0.321807056665421,-0.105195574462414,-0.060030132532120,0.025194156914949,-0.049803379923105,-0.249069973826408,0.014326205477118,-0.081098273396492));
res += mul(Get(s2,dx,dy), float4x4(0.140923455357552,-0.125043645501137,-0.079849742352962,0.243865534663200,-0.011907734908164,0.163928002119064,0.111193060874939,-0.164168044924736,-0.061593789607286,0.059258401393890,-0.076247975230217,-0.010265862569213,-0.117598116397858,-0.071751214563847,-0.039389401674271,0.086751267313957));
res += mul(Get(s3,-dx,-dy), float4x4(0.085751175880432,-0.036983199417591,0.017720878124237,-0.016090530902147,0.015891011804342,0.061065524816513,-0.034999810159206,-0.225908175110817,-0.147889450192451,-0.260139554738998,0.168409883975983,-0.044049795717001,0.017663050442934,-0.174385353922844,-0.069741949439049,-0.055583957582712));
res += mul(Get(s3,-dx,0), float4x4(0.002047773450613,0.008899615146220,0.001780357793905,-0.091119006276131,-0.095381580293179,0.182973697781563,0.076310396194458,0.078306466341019,-0.151433691382408,0.013267249800265,0.010488796047866,-0.120318979024887,0.067733429372311,-0.124651052057743,-0.110115550458431,-0.047858536243439));
res += mul(Get(s3,-dx,dy), float4x4(0.070277146995068,0.034819994121790,-0.057351674884558,0.412141770124435,0.278628438711166,-0.069898076355457,0.011939205229282,0.004699070937932,-0.005905802827328,-0.114491790533066,0.067118547856808,-0.107831835746765,0.018953451886773,-0.067580461502075,-0.016256958246231,0.003112155478448));
res += mul(Get(s3,0,-dy), float4x4(0.192341729998589,0.049766737967730,0.029500259086490,0.216449007391930,0.032503411173820,0.188732266426086,0.012807144783437,0.065574944019318,0.019377639517188,0.034232582896948,0.110972076654434,-0.183900699019432,0.133656591176987,-0.260385990142822,-0.007515431847423,0.094460897147655));
res += mul(Get(s3,0,0), float4x4(0.048153579235077,-0.108964160084724,0.133101090788841,0.086788997054100,0.097650557756424,-0.020157862454653,-0.018026389181614,0.103539429605007,0.004010770469904,-0.093300864100456,0.083339773118496,-0.005074518732727,0.035557284951210,0.036184027791023,0.131519675254822,0.299333363771439));
res += mul(Get(s3,0,dy), float4x4(-0.162124082446098,0.276578426361084,0.044992472976446,0.100174158811569,0.089717775583267,-0.212072834372520,-0.047545913606882,-0.015486646443605,0.227401524782181,0.234430596232414,-0.070114932954311,-0.167543545365334,-0.010786185041070,0.000827210606076,-0.013831662014127,0.176231414079666));
res += mul(Get(s3,dx,-dy), float4x4(0.042564231902361,0.224946424365044,0.021311569958925,0.151259511709213,-0.124439321458340,0.147995546460152,0.192564874887466,-0.118481405079365,0.027187738567591,-0.213732168078423,0.073456369340420,-0.119034558534622,-0.007495328783989,-0.100407280027866,0.024853756651282,0.207999184727669));
res += mul(Get(s3,dx,0), float4x4(0.219587340950966,-0.050654627382755,-0.238447040319443,0.154787316918373,-0.179148241877556,0.009822057560086,-0.106139712035656,0.187583789229393,-0.010087335482240,-0.081017956137657,0.053885202854872,0.056325741112232,-0.222112789750099,-0.152601674199104,-0.136990472674370,0.194071039557457));
res += mul(Get(s3,dx,dy), float4x4(0.115591406822205,-0.054493479430676,0.122010409832001,0.248364493250847,0.045517340302467,0.165134310722351,-0.070013254880905,-0.038681928068399,0.075176700949669,-0.036948002874851,0.049138501286507,0.191769003868103,-0.084790743887424,-0.140058517456055,0.004946297965944,-0.056444756686687));
res += mul(Get(s4,-dx,-dy), float4x4(-0.079646833240986,0.078346297144890,0.124992720782757,-0.016232140362263,-0.014289885759354,-0.065255142748356,-0.001168464426883,-0.168140724301338,0.059955246746540,-0.105082884430885,0.022271817550063,0.174589380621910,-0.005091463215649,0.166733905673027,-0.040527395904064,-0.194140568375587));
res += mul(Get(s4,-dx,0), float4x4(0.011731764301658,-0.055405937135220,-0.087852731347084,0.446158200502396,-0.119951248168945,-0.055576171725988,0.062152042984962,0.203947186470032,0.068572819232941,-0.120240129530430,-0.014279172755778,-0.055262997746468,-0.027844768017530,0.122842863202095,-0.046749282628298,0.174118384718895));
res += mul(Get(s4,-dx,dy), float4x4(-0.064136989414692,-0.059725828468800,-0.016433291137218,-0.267748147249222,-0.096436604857445,-0.041719887405634,0.014441194012761,0.030973432585597,-0.016919165849686,0.062493149191141,0.045503079891205,0.044040452688932,-0.102189742028713,0.031976833939552,-0.038009427487850,0.239498332142830));
res += mul(Get(s4,0,-dy), float4x4(0.136695832014084,0.071173287928104,-0.041006192564964,0.249325811862946,0.006630721967667,-0.099010869860649,0.139485150575638,0.223260894417763,0.089704558253288,-0.256736963987350,0.054859437048435,0.010762474499643,0.046233274042606,0.155447483062744,-0.165806680917740,0.228497385978699));
res += mul(Get(s4,0,0), float4x4(0.081745438277721,-0.044751774519682,0.158254265785217,-0.044857624918222,-0.579145967960358,-0.503765702247620,0.024085400626063,-0.052916329354048,-0.103998422622681,-0.147495552897453,-0.017421536147594,-0.171911999583244,-0.060740567743778,0.080873802304268,0.015854513272643,0.238292261958122));
res += mul(Get(s4,0,dy), float4x4(-0.193067044019699,-0.268595069646835,0.026505934074521,0.204392999410629,-0.166780546307564,-0.191502630710602,0.124389939010143,-0.164655193686485,0.147748231887817,-0.179365247488022,-0.141237676143646,-0.072063513100147,-0.026355385780334,0.035884708166122,-0.012089619413018,0.070931911468506));
res += mul(Get(s4,dx,-dy), float4x4(-0.042842790484428,0.002430573338643,0.049294784665108,-0.303228557109833,-0.050182949751616,-0.187339186668396,0.099508121609688,0.330571413040161,-0.034698180854321,-0.100323297083378,0.045043397694826,-0.024225870147347,0.043282877653837,0.079152159392834,0.058367677032948,0.073092304170132));
res += mul(Get(s4,dx,0), float4x4(0.013955491594970,0.116300530731678,-0.087817221879959,-0.136870548129082,-0.294183731079102,-0.317301809787750,-0.129878282546997,0.062261644750834,-0.011191669851542,0.334699958562851,-0.038418512791395,-0.193282857537270,-0.020115699619055,0.126329079270363,-0.021264191716909,0.186878740787506));
res += mul(Get(s4,dx,dy), float4x4(0.099939100444317,-0.126661807298660,-0.037198249250650,0.238579928874969,-0.162045761942863,-0.241117253899574,-0.121293500065804,0.004783043172210,-0.019800499081612,-0.091332346200943,-0.024011723697186,-0.062325388193130,-0.087200559675694,-0.096025183796883,-0.001354409614578,0.092893317341805));
res += mul(Get(s5,-dx,-dy), float4x4(0.051296502351761,-0.108040884137154,-0.006670955568552,0.035083606839180,0.094324074685574,-0.122403852641582,0.101039759814739,0.209539696574211,-0.041781749576330,-0.242150917649269,-0.022125514224172,-0.066895551979542,-0.158509746193886,-0.036479659378529,0.031298283487558,0.009596878662705));
res += mul(Get(s5,-dx,0), float4x4(0.004382285289466,-0.147071510553360,0.018367120996118,0.083175078034401,-0.007620252668858,-0.307683557271957,0.020375462248921,-0.016760909929872,-0.002943167695776,-0.029057431966066,-0.158197984099388,-0.236083045601845,0.062315415591002,0.073717623949051,-0.076110199093819,0.103865526616573));
res += mul(Get(s5,-dx,dy), float4x4(0.012530182488263,-0.119199238717556,0.084412626922131,-0.204327359795570,-0.176640257239342,-0.109471678733826,0.031540077179670,-0.009782221168280,-0.001118741696700,-0.049398742616177,-0.037013802677393,-0.028734514489770,-0.127100557088852,-0.089324340224266,-0.084541700780392,-0.200521647930145));
res += mul(Get(s5,0,-dy), float4x4(-0.024869268760085,-0.016376830637455,-0.009638007730246,0.084171496331692,-0.038805808871984,-0.195567607879639,0.224496468901634,0.124202743172646,0.014810481108725,-0.471245259046555,0.018313290551305,-0.027630718424916,0.119015090167522,0.106489934027195,-0.040787164121866,0.001198048819788));
res += mul(Get(s5,0,0), float4x4(0.356541007757187,0.059135645627975,-0.163257420063019,0.257086068391800,-0.158081874251366,-0.286961913108826,-0.263810247182846,0.258623540401459,-0.320405453443527,-0.299977600574493,0.015355653129518,0.037030834704638,-0.155310794711113,-0.093269295990467,0.156383410096169,0.174158483743668));
res += mul(Get(s5,0,dy), float4x4(0.289237201213837,0.135829821228981,-0.075870811939240,-0.107006102800369,-0.117469802498817,0.336845666170120,-0.147776126861572,-0.119957730174065,-0.267238706350327,-0.050654590129852,-0.039376232773066,-0.066802799701691,0.105243757367134,0.148470729589462,-0.052141066640615,0.178337574005127));
res += mul(Get(s5,dx,-dy), float4x4(0.069211676716805,-0.081587351858616,0.153117388486862,-0.014584583230317,-0.177987396717072,-0.266392856836319,0.020452590659261,-0.345174342393875,-0.105408437550068,-0.148658245801926,-0.002574336715043,-0.096408948302269,0.058659419417381,0.014878750778735,-0.074270151555538,-0.117519088089466));
res += mul(Get(s5,dx,0), float4x4(-0.018614882603288,0.227573245763779,-0.023808458819985,-0.192188039422035,-0.131102785468102,-0.196303382515907,0.086115017533302,-0.310574680566788,-0.158858597278595,-0.215346261858940,0.049808945506811,-0.084378287196159,-0.053559832274914,-0.226681396365166,0.085910037159920,-0.122546270489693));
res += mul(Get(s5,dx,dy), float4x4(0.004929916933179,0.069913290441036,-0.043601222336292,-0.089009679853916,0.134660467505455,-0.253337025642395,0.107692085206509,-0.183940812945366,-0.051450379192829,-0.151738375425339,-0.058087784796953,-0.053588837385178,0.032184146344662,-0.241421416401863,-0.003914806991816,-0.075401514768600));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.061357274651527,0.024738216772676,0.825523197650909,0.518347263336182) * min(float4(0, 0, 0, 0), res);
return res;
}