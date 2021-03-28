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
float4 res = float4(-0.119444482028484,0.037153154611588,-0.194719046354294,-0.196736380457878);
res += mul(Get(s0,-dx,-dy), float4x4(-0.116456069052219,0.013953240588307,-0.318892538547516,-0.155249312520027,0.081501886248589,0.042657088488340,0.163561552762985,0.122465513646603,0.120990969240665,0.027953900396824,0.295100897550583,-0.005097822286189,0.012777388095856,-0.066499888896942,-0.034575216472149,-0.004979973193258));
res += mul(Get(s0,-dx,0), float4x4(0.061929460614920,-0.138943448662758,-0.103729814291000,0.010359254665673,0.309097319841385,-0.000951045658439,-0.077330678701401,-0.022432601079345,0.260381460189819,0.046315450221300,-0.103305436670780,0.042148567736149,0.049222484230995,-0.004068763926625,-0.137863785028458,0.031015375629067));
res += mul(Get(s0,-dx,dy), float4x4(0.064687520265579,-0.035023279488087,0.051708009094000,0.080361425876617,0.041298538446426,0.055218055844307,0.038389649242163,0.097516961395741,0.038430873304605,0.063612490892410,-0.018596081063151,-0.024947842583060,-0.035561572760344,0.074353665113449,0.038192816078663,0.100113995373249));
res += mul(Get(s0,0,-dy), float4x4(0.050705771893263,-0.241945177316666,-0.141625687479973,-0.047030128538609,-0.203117445111275,-0.150985807180405,-0.268073171377182,0.155768141150475,0.056135341525078,0.078116655349731,0.040275365114212,0.120185695588589,0.136631816625595,-0.055560931563377,0.039425101131201,0.024685773998499));
res += mul(Get(s0,0,0), float4x4(-0.018305122852325,-0.058492772281170,0.010339454747736,0.248418390750885,-0.278261363506317,0.047762729227543,0.079525992274284,-0.047911476343870,-0.244404405355453,-0.036413524299860,-0.128045946359634,-0.187281727790833,-0.048455689102411,0.117647610604763,-0.252241849899292,-0.010614752769470));
res += mul(Get(s0,0,dy), float4x4(-0.058552924543619,0.073325037956238,-0.016455166041851,0.121487483382225,-0.081702955067158,0.031804822385311,0.001640672562644,0.036341693252325,-0.113487079739571,0.086678117513657,0.060669708997011,0.021481087431312,0.055169172585011,0.019038874655962,-0.106453932821751,0.125228002667427));
res += mul(Get(s0,dx,-dy), float4x4(-0.011783181689680,-0.154243305325508,-0.042685467749834,0.026228535920382,-0.052610900253057,0.115082502365112,0.017475834116340,-0.170844614505768,-0.001928581157699,-0.040190406143665,-0.037129960954189,0.069917887449265,-0.122334674000740,-0.105553455650806,0.003379808738828,0.084812544286251));
res += mul(Get(s0,dx,0), float4x4(-0.174657180905342,-0.085658229887486,0.011552120558918,0.176031798124313,-0.054536629468203,-0.004878753330559,-0.088917210698128,0.215769767761230,-0.052326168864965,-0.019338985905051,0.115785725414753,-0.157677859067917,0.088001944124699,0.031002823263407,-0.132213190197945,0.039990335702896));
res += mul(Get(s0,dx,dy), float4x4(-0.040251065045595,-0.076165959239006,0.022292561829090,-0.091517627239227,-0.042334977537394,0.023801807314157,0.024011664092541,0.062354780733585,-0.068444639444351,0.026773937046528,0.000264234462520,-0.021117912605405,-0.013828612864017,-0.066983126103878,0.055194433778524,0.238873705267906));
res += mul(Get(s1,-dx,-dy), float4x4(-0.423942178487778,-0.071801945567131,0.060771774500608,0.114698313176632,0.017769867554307,0.047466076910496,0.179540991783142,0.134013250470161,0.180049285292625,-0.047069508582354,-0.049785137176514,0.035819340497255,0.089263021945953,-0.032562103122473,0.070138365030289,-0.054267156869173));
res += mul(Get(s1,-dx,0), float4x4(-0.306545376777649,-0.050251830369234,-0.035554353147745,-0.158869847655296,-0.016467658802867,0.118789546191692,-0.093757279217243,0.143189594149590,-0.011633686721325,0.012232854031026,-0.032084673643112,-0.089033804833889,-0.006195839960128,-0.048416770994663,-0.178297787904739,-0.134134694933891));
res += mul(Get(s1,-dx,dy), float4x4(0.016886182129383,0.040495090186596,-0.032451737672091,0.127966418862343,-0.035739477723837,0.054195493459702,0.049407385289669,-0.065345525741577,-0.062454696744680,-0.035225041210651,0.052661135792732,-0.068632692098618,0.054351512342691,-0.012414571829140,0.094708144664764,0.173675447702408));
res += mul(Get(s1,0,-dy), float4x4(-0.252824187278748,-0.125274851918221,-0.212334200739861,0.007005471270531,0.004618411883712,0.096262998878956,0.295785278081894,0.015930911526084,-0.259795963764191,0.017545346170664,-0.011674802750349,-0.012816754169762,0.025311160832644,-0.017922641709447,-0.015630839392543,-0.159716650843620));
res += mul(Get(s1,0,0), float4x4(0.062909491360188,0.063188597559929,0.066542111337185,-0.087355583906174,-0.051772464066744,-0.458345085382462,-0.273975759744644,-0.192735239863396,-0.062436182051897,-0.067769460380077,-0.210407286882401,-0.091984525322914,0.192776113748550,0.166851192712784,-0.113231621682644,-0.139329269528389));
res += mul(Get(s1,0,dy), float4x4(-0.031862404197454,-0.105909466743469,0.023483637720346,0.152833357453346,-0.003419104265049,0.137396991252899,0.124282427132130,0.115346238017082,0.069350756704807,-0.022194122895598,0.080700755119324,-0.350609064102173,0.149224236607552,-0.183939829468727,-0.089160002768040,0.272863268852234));
res += mul(Get(s1,dx,-dy), float4x4(0.071936987340450,0.065655522048473,0.161739185452461,-0.199948534369469,-0.029035177081823,0.093905106186867,0.142286315560341,0.207144752144814,0.286643415689468,0.032199043780565,-0.033868715167046,0.022050421684980,-0.010468954220414,-0.036752410233021,-0.149697527289391,-0.095286011695862));
res += mul(Get(s1,dx,0), float4x4(0.025005299597979,-0.045675247907639,-0.115306556224823,0.189782336354256,0.068318806588650,0.044295910745859,-0.062052950263023,0.006305217277259,0.123010911047459,-0.055522073060274,0.046757426112890,-0.023015493527055,-0.018876751884818,-0.020595209673047,0.057564843446016,-0.334748446941376));
res += mul(Get(s1,dx,dy), float4x4(0.037345532327890,-0.017700105905533,0.125825941562653,-0.016541358083487,0.030622798949480,-0.041543345898390,-0.018372392281890,0.008538527414203,-0.014826230704784,-0.022402659058571,0.066360846161842,-0.380721300840378,-0.072289921343327,0.002533329185098,0.048131197690964,0.216763183474541));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039400927722454,0.052760902792215,-0.120176367461681,-0.147037670016289,0.179011806845665,0.130261823534966,-0.071899183094501,0.005622350610793,0.049834936857224,-0.026796434074640,0.074120640754700,0.076098605990410,-0.097026951611042,0.020052315667272,0.089043311774731,0.115546889603138));
res += mul(Get(s2,-dx,0), float4x4(-0.028379322960973,-0.029866781085730,0.236097335815430,0.161698505282402,0.310515642166138,-0.039726126939058,0.162633851170540,-0.032976705580950,0.004617400467396,-0.005807513836771,-0.057009976357222,-0.112194888293743,0.151089444756508,-0.011309248395264,-0.027553267776966,-0.065261825919151));
res += mul(Get(s2,-dx,dy), float4x4(-0.094486065208912,0.031690765172243,-0.010246582329273,0.025741972029209,0.156518056988716,-0.019601263105869,-0.063433088362217,0.021049331873655,0.023341113701463,0.031247427687049,0.039011925458908,-0.010693045333028,0.050863735377789,-0.001623209449463,0.036087177693844,-0.168076604604721));
res += mul(Get(s2,0,-dy), float4x4(-0.022632766515017,0.276205390691757,-0.012352503836155,-0.154147952795029,0.020205471664667,-0.164749205112457,-0.058705225586891,0.063025087118149,-0.076208628714085,-0.274888455867767,-0.022228209301829,0.345804750919342,0.185293108224869,-0.001164439949207,-0.107246160507202,0.196788057684898));
res += mul(Get(s2,0,0), float4x4(-0.094485387206078,-0.331144869327545,-0.223394379019737,0.354072868824005,0.216422021389008,-0.000852251308970,-0.147673159837723,-0.020216580480337,0.012340501882136,0.086593031883240,0.088951915502548,-0.098288036882877,-0.023688115179539,-0.033302154392004,0.095113590359688,-0.182997226715088));
res += mul(Get(s2,0,dy), float4x4(0.040198251605034,0.224231526255608,-0.031225182116032,0.111168116331100,0.092513427138329,0.027687465772033,-0.031873099505901,-0.110184475779533,-0.030205875635147,0.107437141239643,0.069553360342979,0.089139774441719,-0.141230896115303,-0.039166107773781,-0.035219490528107,-0.262498050928116));
res += mul(Get(s2,dx,-dy), float4x4(0.035531993955374,0.021193347871304,-0.014933975413442,-0.163439303636551,0.005692229606211,-0.011705378070474,-0.087395988404751,0.012775670737028,-0.058205548673868,-0.102913834154606,0.035880234092474,0.236633315682411,-0.187452167272568,-0.108284421265125,0.054838333278894,0.009359882213175));
res += mul(Get(s2,dx,0), float4x4(0.060715481638908,-0.051300767809153,0.027683068066835,0.093148291110992,-0.071513123810291,-0.023295229300857,0.077209867537022,-0.068784587085247,-0.124948292970657,-0.002477891743183,-0.043385360389948,-0.152198046445847,0.024953253567219,0.108386337757111,-0.001810267567635,-0.056869827210903));
res += mul(Get(s2,dx,dy), float4x4(-0.003212193027139,0.004396738484502,-0.009464070200920,-0.000754200562369,-0.037147760391235,0.033304728567600,-0.001529652974568,0.076281890273094,-0.048568379133940,0.056253828108311,0.069046929478645,-0.009447562508285,0.221382394433022,-0.043929912149906,0.020675163716078,-0.146714478731155));
res += mul(Get(s3,-dx,-dy), float4x4(-0.014292899519205,0.005189552437514,0.042340043932199,0.191099047660828,-0.027646558359265,-0.006862584501505,0.122641816735268,0.003590355860069,-0.184970706701279,0.012532413005829,-0.035559646785259,-0.082122050225735,-0.015211156569421,0.025341114029288,0.047450758516788,-0.064562790095806));
res += mul(Get(s3,-dx,0), float4x4(-0.035662278532982,0.004532666411251,-0.144463092088699,0.011838414706290,0.037121366709471,0.120383605360985,0.112799830734730,0.003924895077944,-0.207234650850296,0.027208646759391,-0.072912625968456,0.033461943268776,0.154238387942314,-0.070689640939236,0.126942411065102,-0.044681191444397));
res += mul(Get(s3,-dx,dy), float4x4(0.236200287938118,0.014497291296721,-0.097965493798256,0.132496476173401,0.011880044825375,0.107451677322388,-0.134403139352798,0.045002568513155,0.148175820708275,-0.001839534728788,-0.032436233013868,0.046294685453176,0.059228979051113,-0.083633095026016,-0.053955823183060,-0.065104983747005));
res += mul(Get(s3,0,-dy), float4x4(0.104348801076412,0.073988087475300,0.197143062949181,-0.072730310261250,-0.043793011456728,-0.186590149998665,-0.123112581670284,0.188018649816513,-0.263556689023972,0.083417728543282,0.130535885691643,0.002611735137179,-0.173681661486626,-0.325907796621323,0.147832944989204,-0.044466894119978));
res += mul(Get(s3,0,0), float4x4(0.197947964072227,-0.071513026952744,-0.160653144121170,-0.119516491889954,0.008574048988521,0.134900510311127,0.473737627267838,-0.186750426888466,-0.516900420188904,-0.020949838683009,0.049820102751255,-0.095803514122963,-0.261862367391586,0.315137982368469,0.091770283877850,0.124155752360821));
res += mul(Get(s3,0,dy), float4x4(-0.159516319632530,-0.139868333935738,-0.062398713082075,-0.205452486872673,-0.019114365801215,0.304245412349701,0.086860984563828,-0.241124689579010,0.040820728987455,-0.017057493329048,-0.177344232797623,0.116872616112232,-0.094111107289791,-0.132026165723801,-0.028937522321939,-0.128285050392151));
res += mul(Get(s3,dx,-dy), float4x4(0.045472763478756,0.060853570699692,-0.014389489777386,-0.041916873306036,0.047279216349125,0.027571285143495,0.071487322449684,0.092611089348793,0.091603688895702,0.045476473867893,0.090541101992130,0.092513270676136,0.076405592262745,-0.069645099341869,0.048767790198326,0.052489459514618));
res += mul(Get(s3,dx,0), float4x4(-0.061449602246284,-0.030613908544183,0.029211293905973,-0.245625495910645,-0.052465233951807,0.123810730874538,0.009162431582808,0.127965629100800,0.215558394789696,0.019848892465234,-0.062922991812229,-0.074549041688442,0.130555912852287,-0.070752583444118,-0.019215783104300,-0.012135467492044));
res += mul(Get(s3,dx,dy), float4x4(0.131087273359299,-0.069049827754498,-0.006326967384666,-0.041985332965851,0.102507449686527,0.040690466761589,0.012749020010233,0.037642609328032,0.065208867192268,0.029155600816011,0.002800448331982,0.011264129541814,-0.038086123764515,-0.012202353216708,0.040117308497429,0.000260548142251));
res += mul(Get(s4,-dx,-dy), float4x4(-0.168995708227158,0.017765715718269,-0.237817749381065,-0.047342620790005,-0.067182391881943,0.125391483306885,0.029744185507298,0.068127028644085,-0.267225146293640,0.008672907017171,-0.027350228279829,0.068260185420513,-0.033087205141783,-0.126552075147629,-0.071633718907833,-0.036583449691534));
res += mul(Get(s4,-dx,0), float4x4(-0.353097170591354,-0.128316834568977,-0.112320274114609,0.009260116145015,-0.020987277850509,-0.100569859147072,-0.123285867273808,-0.022985212504864,-0.190797135233879,0.022755043581128,-0.159714087843895,0.079850085079670,-0.051028978079557,0.093778364360332,-0.201981082558632,-0.129500627517700));
res += mul(Get(s4,-dx,dy), float4x4(-0.042488671839237,-0.028888158500195,0.059045176953077,-0.166239753365517,-0.101080022752285,0.011639146134257,0.007829866372049,0.051848292350769,-0.153271868824959,0.000440002884716,-0.030194107443094,0.032915908843279,-0.042011149227619,-0.021814798936248,-0.039797149598598,-0.051672331988811));
res += mul(Get(s4,0,-dy), float4x4(-0.012428685091436,-0.011059525422752,-0.144690871238708,0.074009262025356,0.041048038750887,-0.063886992633343,-0.105402857065201,0.071514241397381,0.164358198642731,0.006438038777560,0.040268361568451,0.117195442318916,0.085127972066402,-0.405382186174393,-0.164778709411621,0.222228705883026));
res += mul(Get(s4,0,0), float4x4(0.065510354936123,-0.001380604691803,-0.258287161588669,-0.052703253924847,0.012618144042790,-0.041301537305117,0.053530175238848,-0.207334309816360,0.189593151211739,0.006385242100805,-0.106952898204327,0.007775560487062,0.178324878215790,0.326051205396652,0.107945509254932,-0.584044635295868));
res += mul(Get(s4,0,dy), float4x4(-0.039759047329426,0.003499883925542,0.172181949019432,-0.117957226932049,-0.009454603306949,-0.059415180236101,-0.056931242346764,0.001314147259109,0.041019964963198,-0.002293048659340,0.175719395279884,-0.075915783643723,0.048812180757523,-0.179027616977692,-0.076023869216442,0.030671263113618));
res += mul(Get(s4,dx,-dy), float4x4(0.090483985841274,-0.034045275300741,-0.074091054499149,0.143019378185272,0.022352170199156,0.081611827015877,-0.053208012133837,-0.047069568186998,0.129368424415588,-0.005784474313259,-0.042140189558268,0.074106365442276,-0.032704278826714,0.011608705855906,0.041651617735624,-0.000108379324956));
res += mul(Get(s4,dx,0), float4x4(-0.118729196488857,0.003190629882738,0.129600107669830,-0.053390834480524,0.109961569309235,0.043553970754147,-0.007616886403412,-0.039280023425817,-0.212105348706245,0.029233144596219,0.198803365230560,0.066216245293617,-0.229628279805183,0.029215471819043,-0.027394907549024,-0.074884355068207));
res += mul(Get(s4,dx,dy), float4x4(0.026896875351667,-0.051124848425388,0.001733518089168,0.029812432825565,0.012830334715545,-0.047389496117830,-0.068496786057949,-0.056616134941578,0.084831468760967,0.060644697397947,-0.025795057415962,0.062849804759026,0.001524348394014,0.098940439522266,0.007453685160726,0.029437242075801));
res += mul(Get(s5,-dx,-dy), float4x4(0.023359816521406,-0.010615163482726,0.021661233156919,0.166473433375359,0.062967486679554,-0.028788123279810,0.030911436304450,0.004497709218413,-0.135743245482445,-0.111070021986961,-0.244980618357658,-0.013415934517980,0.172987297177315,0.131244480609894,-0.031089387834072,-0.120705924928188));
res += mul(Get(s5,-dx,0), float4x4(-0.195378080010414,0.086343377828598,0.034966081380844,-0.204234421253204,0.006348349619657,0.010926298797131,-0.074259109795094,-0.052707046270370,-0.158590659499168,0.024614857509732,0.274884581565857,0.084630236029625,0.007303384598345,0.005248519591987,-0.186501637101173,0.081251360476017));
res += mul(Get(s5,-dx,dy), float4x4(0.009541896171868,0.011436162516475,-0.086672507226467,0.075243301689625,0.000461296061985,-0.004099882207811,0.034529484808445,-0.010569998063147,-0.104803085327148,0.030857672914863,0.076728940010071,-0.001619643880986,-0.040598023682833,-0.083094805479050,0.013462098315358,0.008017360232770));
res += mul(Get(s5,0,-dy), float4x4(-0.145251095294952,-0.158093243837357,0.000175513341674,0.182097136974335,0.190720841288567,0.077520608901978,-0.214723661541939,-0.002075484953821,0.091562561690807,0.321365982294083,0.064473032951355,-0.091265551745892,-0.106043525040150,0.279244542121887,-0.074629902839661,-0.074120044708252));
res += mul(Get(s5,0,0), float4x4(-0.306707620620728,-0.051019962877035,-0.047434817999601,-0.146494612097740,0.032014772295952,-0.135942116379738,0.232718363404274,-0.010536476038396,-0.026766637340188,-0.258946001529694,-0.039032533764839,0.356639176607132,-0.218664631247520,-0.089903011918068,-0.014490544795990,0.179478198289871));
res += mul(Get(s5,0,dy), float4x4(-0.196754276752472,0.056564852595329,0.004481017123908,-0.165948048233986,-0.025443034246564,0.102772213518620,0.061993248760700,0.036415442824364,-0.104675389826298,0.128049731254578,-0.011757478117943,0.149839773774147,0.036982260644436,0.144729897379875,-0.078198738396168,0.058534927666187));
res += mul(Get(s5,dx,-dy), float4x4(0.030038665980101,0.072564586997032,0.066301241517067,-0.039875429123640,-0.111647598445415,-0.011843540705740,0.005777427926660,-0.062893547117710,-0.128303810954094,0.005435097031295,0.045334380120039,-0.166085019707680,-0.033184133470058,-0.078817598521709,-0.026358971372247,0.029070500284433));
res += mul(Get(s5,dx,0), float4x4(-0.239812910556793,-0.065102487802505,-0.089845649898052,0.032403770834208,-0.057452160865068,-0.018425470218062,0.046675737947226,-0.104448772966862,-0.059114463627338,0.033982321619987,0.021492065861821,0.138412669301033,0.063864067196846,0.063928037881851,-0.069544509053230,-0.001917697954923));
res += mul(Get(s5,dx,dy), float4x4(0.007449897006154,0.033524688333273,0.103525601327419,-0.049777720123529,0.054058998823166,-0.101022101938725,0.042860526591539,0.042423602193594,0.089753784239292,-0.046222575008869,-0.116501197218895,0.080853469669819,0.073145501315594,-0.056701838970184,0.013519139029086,-0.121642261743546));
res = max(float4(0, 0, 0, 0), res) + float4(-0.002499757101759,0.617371320724487,0.014959186315536,-0.029674060642719) * min(float4(0, 0, 0, 0), res);
return res;
}
