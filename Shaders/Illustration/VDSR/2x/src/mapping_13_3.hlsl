sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(0.063116453588009,0.150742024183273,-0.067456506192684,-0.036142233759165,-0.036957737058401,-0.007550621405244,0.120718017220497,0.164239123463631,-0.102386593818665,-0.098552562296391,0.037222813814878,0.069031380116940,-0.077048636972904,0.028957366943359,0.144803583621979,0.027994181960821));
res += mul(Get(s0,-dx,0), float4x4(-0.040805257856846,0.128613457083702,-0.078143313527107,-0.029982447624207,0.040199879556894,-0.076499707996845,0.200058460235596,0.142891988158226,-0.108318075537682,-0.120906278491020,-0.060860738158226,0.025123616680503,-0.033728737384081,-0.045154053717852,0.013329413719475,0.136948198080063));
res += mul(Get(s0,-dx,dy), float4x4(-0.050501391291618,0.027288023382425,-0.127286404371262,0.054187137633562,0.155321851372719,0.166431263089180,0.059494249522686,-0.178515791893005,-0.060396302491426,0.033264711499214,-0.010137371718884,-0.073255576193333,0.070249564945698,0.062746822834015,-0.023997675627470,0.027100250124931));
res += mul(Get(s0,0,-dy), float4x4(-0.113860242068768,-0.061283864080906,-0.034742232412100,0.008272772654891,-0.080473832786083,-0.015239465981722,0.059677135199308,0.140281274914742,-0.112306445837021,-0.187202244997025,0.109151162207127,0.085200265049934,-0.035792980343103,0.084586352109909,0.086908236145973,0.019453886896372));
res += mul(Get(s0,0,0), float4x4(-0.063149675726891,-0.114106871187687,0.055885430425406,0.405784815549850,0.019835306331515,0.235445037484169,0.108494952321053,-0.072065986692905,-0.098951935768127,-0.039231199771166,0.076681815087795,-0.028398772701621,0.018568199127913,0.067877687513828,-0.077545128762722,0.139733374118805));
res += mul(Get(s0,0,dy), float4x4(-0.075901180505753,0.008250669576228,-0.144772738218307,0.119555652141571,0.096038855612278,0.042674828320742,0.011482825502753,-0.151358649134636,-0.070146597921848,0.118364587426186,-0.032697852700949,-0.105197198688984,0.046379618346691,-0.052064109593630,0.086578808724880,0.031393129378557));
res += mul(Get(s0,dx,-dy), float4x4(0.038929600268602,-0.097630076110363,-0.185986056923866,0.007638861425221,-0.061982560902834,0.050769727677107,0.070224978029728,-0.008420503698289,0.084116727113724,-0.069054469466209,0.035242397338152,0.259853094816208,-0.072712622582912,-0.027935011312366,0.149593487381935,0.028386857360601));
res += mul(Get(s0,dx,0), float4x4(0.088735647499561,-0.082538932561874,-0.137934550642967,0.025411831215024,-0.068145327270031,0.037356507033110,0.100100427865982,-0.082442454993725,-0.010374271310866,-0.078025579452515,0.119266875088215,-0.002757043112069,0.046548459678888,0.083534903824329,-0.009774623438716,0.007161390967667));
res += mul(Get(s0,dx,dy), float4x4(0.008155197836459,0.015032903291285,-0.174307137727737,-0.076150819659233,0.102501302957535,-0.029736928641796,-0.069696739315987,-0.099683120846748,-0.009486409835517,0.121181719005108,-0.077802687883377,-0.029259724542499,0.030762424692512,-0.107190847396851,0.068521954119205,0.024498369544744));
res += mul(Get(s1,-dx,-dy), float4x4(-0.079393386840820,0.110305786132813,-0.032087691128254,0.008446218445897,0.062109101563692,0.022454123944044,-0.052438907325268,0.003163554938510,-0.020171137526631,-0.056964617222548,-0.076261445879936,0.084791287779808,-0.046559751033783,-0.003456908976659,-0.008277628570795,0.074500627815723));
res += mul(Get(s1,-dx,0), float4x4(-0.004836653824896,-0.010720679536462,-0.061918959021568,0.135613664984703,0.092319093644619,0.190027564764023,0.027097931131721,-0.047322802245617,-0.061744719743729,0.001052602543496,0.033286321908236,0.044107209891081,0.031932186335325,-0.046402607113123,0.137496784329414,0.029653755947948));
res += mul(Get(s1,-dx,dy), float4x4(-0.042074192315340,0.114797890186310,-0.033908102661371,0.021428138017654,0.064158134162426,0.119026079773903,0.077053099870682,-0.019523069262505,0.083585441112518,0.061948452144861,0.173843652009964,0.111941501498222,0.135513782501221,0.010515458881855,-0.020350730046630,-0.032575547695160));
res += mul(Get(s1,0,-dy), float4x4(-0.030155824497342,-0.132226049900055,-0.042485110461712,0.070750750601292,0.159607678651810,-0.078889258205891,0.032071426510811,0.029751593247056,-0.102092437446117,0.244574055075645,-0.014103289693594,-0.027418553829193,0.330263048410416,0.116044685244560,-0.144668415188789,-0.195360988378525));
res += mul(Get(s1,0,0), float4x4(-0.032605338841677,-0.179176956415176,-0.125764518976212,0.008467450737953,0.101300351321697,-0.005591285414994,0.121634788811207,0.108302414417267,-0.041045762598515,0.059155818074942,-0.022483924403787,-0.044626936316490,0.036997992545366,-0.146801158785820,-0.115679882466793,0.230707988142967));
res += mul(Get(s1,0,dy), float4x4(-0.030167143791914,0.082531690597534,-0.081290833652020,-0.077327743172646,0.114865072071552,-0.032721705734730,0.171358749270439,0.147047981619835,-0.048938643187284,-0.139099583029747,0.223945632576942,0.195924490690231,0.133747205138206,-0.131675779819489,0.022773360833526,-0.060419298708439));
res += mul(Get(s1,dx,-dy), float4x4(0.039472848176956,-0.051936153322458,-0.124555759131908,0.036734599620104,0.182420581579208,-0.017031712457538,0.107328183948994,-0.194302454590797,-0.187753140926361,-0.001627319841646,-0.125025570392609,-0.115119166672230,0.101809307932854,0.041107483208179,-0.063242129981518,-0.123143404722214));
res += mul(Get(s1,dx,0), float4x4(0.087488383054733,0.227230235934258,-0.172807976603508,-0.035626463592052,0.231065034866333,0.073234565556049,0.060459997504950,-0.075582131743431,-0.131792828440666,-0.069707162678242,-0.093492507934570,-0.078669779002666,0.119021125137806,0.085900165140629,-0.168555572628975,0.010259601287544));
res += mul(Get(s1,dx,dy), float4x4(-0.018157804384828,0.041758552193642,-0.111000135540962,0.003752697259188,0.195197403430939,-0.011703948490322,0.142644599080086,0.070765018463135,0.103436253964901,-0.087637647986412,0.130856782197952,0.065031774342060,0.048742514103651,-0.078999556601048,-0.050867356359959,0.115497574210167));
res += mul(Get(s2,-dx,-dy), float4x4(0.047900289297104,0.021634522825480,0.041649386286736,0.176540210843086,0.077394641935825,0.148206949234009,-0.023664796724916,-0.021459341049194,0.012767708860338,-0.071619287133217,-0.005698545370251,-0.080049157142639,0.119253024458885,0.016502691432834,0.025365596637130,-0.003849176457152));
res += mul(Get(s2,-dx,0), float4x4(0.037193819880486,-0.021177455782890,0.053461372852325,0.096923507750034,0.143639922142029,0.202602744102478,-0.104657351970673,-0.037580575793982,0.029407542198896,-0.020704515278339,-0.008644945919514,-0.023415492847562,0.219721540808678,0.062646776437759,-0.056706525385380,-0.067345023155212));
res += mul(Get(s2,-dx,dy), float4x4(-0.012569583952427,0.027518859133124,0.016012605279684,0.078228868544102,0.050013560801744,0.032567806541920,0.086374871432781,0.007852962240577,0.046605575829744,0.004466372542083,0.093190059065819,0.024003436788917,0.026477672159672,-0.167374029755592,-0.003137761028484,-0.000990758300759));
res += mul(Get(s2,0,-dy), float4x4(-0.026800906285644,0.023372799158096,0.133557721972466,-0.012580428272486,-0.101976610720158,0.117388769984245,0.032327584922314,-0.110035181045532,-0.016010837629437,0.004088594578207,0.040254317224026,-0.045898221433163,-0.141723662614822,-0.047192078083754,-0.103062711656094,-0.076082050800323));
res += mul(Get(s2,0,0), float4x4(0.070518203079700,0.097841791808605,0.023175735026598,-0.078062914311886,0.116522654891014,0.098421737551689,-0.161902382969856,-0.155926227569580,-0.115498967468739,-0.046582669019699,-0.016616864129901,0.019516324624419,-0.169479787349701,-0.068058863282204,0.020878687500954,0.119245894253254));
res += mul(Get(s2,0,dy), float4x4(-0.075956247746944,0.043619703501463,0.094262950122356,-0.047003053128719,0.006963034160435,0.089270822703838,0.021306389942765,-0.100487954914570,-0.077911041676998,0.200781852006912,0.011716177687049,-0.072769820690155,0.071006186306477,0.080236345529556,-0.169106230139732,-0.124648921191692));
res += mul(Get(s2,dx,-dy), float4x4(-0.022192390635610,-0.044074818491936,0.132531374692917,-0.155871883034706,-0.097693629562855,0.011832900345325,0.246887311339378,0.039081737399101,0.045178584754467,-0.146758973598480,0.059926513582468,0.090629734098911,0.030427221208811,0.037181947380304,-0.134113073348999,-0.048956647515297));
res += mul(Get(s2,dx,0), float4x4(0.132518023252487,0.161292314529419,-0.128332704305649,-0.031312175095081,0.000554511672817,-0.011096161790192,0.215979233384132,-0.107850916683674,-0.104701116681099,-0.187558397650719,0.090810537338257,-0.084902420639992,-0.077934548258781,-0.153303176164627,0.034264374524355,0.133327499032021));
res += mul(Get(s2,dx,dy), float4x4(0.020513281226158,0.148093104362488,-0.044259607791901,-0.034022118896246,-0.014650852419436,-0.080598667263985,0.053371228277683,-0.172417104244232,-0.195717394351959,-0.003893626853824,-0.116723135113716,-0.063402302563190,-0.040928442031145,0.076717093586922,-0.062287885695696,-0.028935011476278));
res += mul(Get(s3,-dx,-dy), float4x4(0.063228525221348,-0.003606352489442,-0.021003711968660,0.066582538187504,-0.056731615215540,-0.083359584212303,0.019317254424095,0.068702474236488,-0.064019270241261,0.000506270793267,-0.038102328777313,-0.092255644500256,-0.024513799697161,-0.047498278319836,0.103515945374966,-0.106543600559235));
res += mul(Get(s3,-dx,0), float4x4(-0.001951062004082,0.025646280497313,-0.001442457316443,0.076301038265228,0.067487455904484,0.037390086799860,0.005745045375079,-0.066804170608521,-0.074629254639149,-0.022215016186237,0.011174135841429,-0.016771100461483,0.099744543433189,0.124129898846149,0.007940045557916,0.081475377082825));
res += mul(Get(s3,-dx,dy), float4x4(-0.057976204901934,-0.009492766112089,-0.086377933621407,0.069071695208549,0.039535101503134,-0.045998394489288,-0.012423774227500,-0.085762791335583,0.051833573728800,-0.082241013646126,-0.062485847622156,0.059439804404974,0.047364421188831,-0.063435018062592,0.096043452620506,0.046591345220804));
res += mul(Get(s3,0,-dy), float4x4(-0.084933489561081,0.067467108368874,-0.036303821951151,-0.064042218029499,-0.091249756515026,-0.027260793372989,0.027802176773548,0.158560335636139,0.120799943804741,-0.097244665026665,-0.051746044307947,-0.015226144343615,0.003130472963676,0.034243587404490,0.184362441301346,0.046623263508081));
res += mul(Get(s3,0,0), float4x4(-0.131221979856491,-0.075805343687534,0.233354955911636,0.121711380779743,0.018396811559796,0.111809723079205,-0.114932008087635,-0.092523723840714,0.066053569316864,-0.030551757663488,0.013795552775264,-0.143056198954582,0.129622384905815,0.075019933283329,0.034300502389669,0.212986305356026));
res += mul(Get(s3,0,dy), float4x4(-0.004687868990004,-0.080665551126003,0.012087881565094,0.083305463194847,0.029784858226776,0.058476828038692,-0.102373518049717,0.101325109601021,0.184924557805061,0.133866831660271,-0.018756257370114,-0.214452236890793,0.032151937484741,0.169669389724731,0.101436458528042,0.017839146777987));
res += mul(Get(s3,dx,-dy), float4x4(-0.132161095738411,-0.118359096348286,0.078101262450218,0.098939463496208,-0.024361757561564,-0.063570417463779,0.025093035772443,0.059198152273893,-0.061731040477753,-0.016923123970628,0.040241662412882,-0.028041219338775,-0.166804656386375,-0.061261244118214,0.073131151497364,-0.006914163939655));
res += mul(Get(s3,dx,0), float4x4(-0.150223121047020,-0.169884711503983,0.135996297001839,0.040175415575504,-0.049391426146030,-0.118214845657349,-0.078172139823437,0.086848095059395,0.049424726516008,0.035376235842705,0.010072864592075,-0.152183756232262,0.038456939160824,0.115456350147724,0.051874313503504,0.103904977440834));
res += mul(Get(s3,dx,dy), float4x4(-0.055283803492785,-0.028546310961246,-0.128559842705727,0.031648147851229,-0.086490333080292,-0.057171288877726,0.019434034824371,0.015097795985639,0.012479646131396,0.147321507334709,0.032434895634651,-0.116847015917301,0.029609944671392,0.016824856400490,0.075242474675179,-0.004340141080320));
return max(float4(0,0,0,0), res);
}
