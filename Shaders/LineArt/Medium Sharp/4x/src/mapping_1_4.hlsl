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
float4 res = float4(-0.059504743665457,-0.006987520959228,-0.059936393052340,0.073399864137173);
res += mul(Get(s0,-dx,-dy), float4x4(0.030035320669413,-0.230735555291176,0.077096186578274,0.008605647832155,0.310146570205688,-0.073756150901318,-0.000600405794103,-0.177639082074165,0.236111611127853,-0.066562131047249,-0.033746838569641,0.144745230674744,-0.047757096588612,-0.064304791390896,-0.072517417371273,-0.053718060255051));
res += mul(Get(s0,-dx,0), float4x4(-0.270171612501144,-0.662433087825775,0.318917065858841,0.191380411386490,0.417916119098663,-0.205102920532227,0.299354940652847,-0.166201323270798,0.129763931035995,0.494577646255493,-0.325844794511795,0.007386781740934,-0.033372242003679,-0.272182732820511,0.044511239975691,0.031138893216848));
res += mul(Get(s0,-dx,dy), float4x4(0.173499509692192,0.120860651135445,0.248300582170486,0.017220439389348,-0.115439124405384,0.081835441291332,0.063321828842163,-0.005981587339193,-0.092491157352924,0.029559714719653,0.275205343961716,0.025508148595691,0.111244499683380,0.056719798594713,0.067320711910725,0.083646103739738));
res += mul(Get(s0,0,-dy), float4x4(0.200168788433075,0.184800982475281,0.135181903839111,-0.175478383898735,0.471199274063110,0.018777282908559,0.307121217250824,0.004039993975312,0.278885185718536,-0.027277501299977,-0.187924593687057,0.024500960484147,-0.142954081296921,0.077296964824200,-0.138721108436584,-0.195889234542847));
res += mul(Get(s0,0,0), float4x4(0.257461428642273,0.082535266876221,0.151881515979767,-0.263048797845840,-0.408562123775482,0.717337548732758,-0.369426637887955,-0.225003868341446,-0.407031506299973,-0.589712560176849,-0.076921604573727,0.563017904758453,0.111782267689705,-0.347142308950424,0.243060693144798,0.186170756816864));
res += mul(Get(s0,0,dy), float4x4(-0.331639528274536,-0.169600635766983,-0.532017111778259,0.330765902996063,-0.311455130577087,-0.006183878052980,-0.554210484027863,-0.146087795495987,0.378799557685852,0.241274118423462,0.383921325206757,-0.083931960165501,0.189269453287125,-0.134607568383217,-0.173771411180496,0.181182250380516));
res += mul(Get(s0,dx,-dy), float4x4(-0.094083428382874,0.172696739435196,-0.101951077580452,0.010081377811730,0.113880835473537,0.103692784905434,0.268468171358109,0.159411951899529,-0.169625818729401,0.056305393576622,-0.082845218479633,-0.416438907384872,-0.045436859130859,0.005378908012062,-0.373054713010788,-0.103937298059464));
res += mul(Get(s0,dx,0), float4x4(-0.050005927681923,0.213383957743645,-0.582392334938049,-0.272564440965652,-0.053620096296072,-0.415737479925156,-0.168969243764877,0.849144518375397,-0.011841522529721,0.052168708294630,0.293754339218140,-0.240987271070480,0.097185045480728,-0.026658475399017,-0.065619848668575,-0.503303706645966));
res += mul(Get(s0,dx,dy), float4x4(-0.057925809174776,0.007635664660484,0.220609650015831,-0.129482910037041,-0.253773003816605,-0.232678785920143,0.474123030900955,-0.442303717136383,0.059239227324724,-0.176479473710060,-0.122018471360207,0.021948108449578,0.112163260579109,0.178663894534111,-0.385995715856552,0.047882627695799));
res += mul(Get(s1,-dx,-dy), float4x4(0.196999877691269,-0.160041615366936,0.079337224364281,0.001010594074614,0.032856598496437,0.005494558252394,-0.153568297624588,0.061863724142313,0.028081990778446,0.091641508042812,0.326769024133682,0.069937743246555,-0.016306446865201,0.032135117799044,0.345157384872437,-0.091841071844101));
res += mul(Get(s1,-dx,0), float4x4(-0.061611782759428,0.252283602952957,-0.443614661693573,0.084504090249538,-0.155756428837776,0.036345243453979,0.066094532608986,0.032086879014969,0.226160824298859,0.835642874240875,-0.185415044426918,-0.151583313941956,0.073072142899036,0.336942762136459,0.054302450269461,0.085840202867985));
res += mul(Get(s1,-dx,dy), float4x4(-0.058274775743484,0.027236862108111,-0.225291520357132,0.018935406580567,-0.026785997673869,-0.111318148672581,0.008089575916529,-0.016969924792647,0.070967368781567,0.100037373602390,-0.413203954696655,-0.085406914353371,-0.018641982227564,0.099849708378315,0.099884442985058,-0.020644469186664));
res += mul(Get(s1,0,-dy), float4x4(-0.238396748900414,0.165154024958611,-0.426560699939728,-0.226588442921638,0.051270619034767,0.413745462894440,0.133287787437439,-0.094617575407028,0.278652518987656,-0.023569133132696,-0.270023137331009,0.050292648375034,-0.094035230576992,0.056516274809837,-0.059840969741344,-0.035148352384567));
res += mul(Get(s1,0,0), float4x4(0.259648710489273,-0.355304390192032,-0.543083786964417,-0.038926791399717,-0.088400818407536,-0.015646073967218,-0.104948520660400,-0.060673154890537,-0.555859506130219,-0.457448333501816,-0.215484946966171,0.412665694952011,-0.028255326673388,-0.001118900603615,-0.049950413405895,0.034487124532461));
res += mul(Get(s1,0,dy), float4x4(-0.044775180518627,-0.055597156286240,0.253741681575775,-0.035998374223709,-0.068887613713741,-0.106910340487957,0.093258313834667,-0.091365292668343,0.004491290543228,-0.284741222858429,0.396346151828766,-0.009611827321351,-0.095878630876541,0.048660080879927,0.119950689375401,0.084683008491993));
res += mul(Get(s1,dx,-dy), float4x4(0.023161601275206,-0.046270012855530,-0.128929823637009,0.088980838656425,-0.132563591003418,-0.096356704831123,-0.018996298313141,-0.068117246031761,0.000059148878790,-0.070260874927044,-0.157272964715958,-0.062085147947073,-0.085919491946697,-0.042755905538797,0.239890307188034,-0.031939204782248));
res += mul(Get(s1,dx,0), float4x4(-0.007280345540494,0.123168483376503,0.190345048904419,-0.360408782958984,-0.000264430331299,-0.330616563558578,-0.046001806855202,-0.271814584732056,0.274911642074585,-0.087508723139763,0.218137130141258,-0.275988638401031,-0.002874776953831,-0.360309690237045,-0.193149417638779,0.035937193781137));
res += mul(Get(s1,dx,dy), float4x4(-0.076850950717926,-0.019768597558141,-0.057654820382595,0.059470407664776,0.062612615525723,0.194334402680397,0.159294262528419,0.057228945195675,0.357192337512970,0.035169929265976,0.249218240380287,0.067970685660839,-0.192641064524651,-0.050241023302078,-0.206183746457100,-0.062739782035351));
res += mul(Get(s2,-dx,-dy), float4x4(0.107808209955692,-0.217929795384407,0.044577509164810,0.003631854197010,0.312187552452087,0.126425743103027,0.306476235389709,-0.104162931442261,-0.089017905294895,-0.021426012739539,-0.046758025884628,-0.017123635858297,-0.125427454710007,0.025405054911971,0.055377356708050,-0.020556375384331));
res += mul(Get(s2,-dx,0), float4x4(0.255314826965332,-0.016459913924336,0.131321325898170,0.019573766738176,0.248056396842003,0.100808411836624,-0.281807959079742,-0.357576787471771,-0.254451900720596,-0.006965055130422,-0.026382353156805,0.111293837428093,0.209650605916977,-0.280884265899658,0.036672696471214,-0.014940174296498));
res += mul(Get(s2,-dx,dy), float4x4(-0.035143267363310,0.000649005174637,-0.037115424871445,0.022264879196882,0.222182214260101,-0.115047998726368,-0.098237425088882,-0.091256119310856,-0.086085386574268,-0.004716919735074,-0.092368543148041,0.105033949017525,0.521882712841034,-0.277088612318039,-0.109871990978718,-0.319011062383652));
res += mul(Get(s2,0,-dy), float4x4(-0.295875787734985,0.004442912526429,-0.000585861387663,-0.191193565726280,-0.306300640106201,-0.187473729252815,-0.318696379661560,-0.059996373951435,0.031171709299088,-0.093111895024776,0.150354459881783,0.120710827410221,-0.117788895964622,-0.002132104942575,-0.027123946696520,0.120671242475510));
res += mul(Get(s2,0,0), float4x4(0.276740908622742,-0.010669925250113,-0.070881642401218,0.120531596243382,-0.239145487546921,0.118841283023357,-0.580934405326843,0.366059839725494,-0.087890669703484,0.417198985815048,-0.273979455232620,-0.101074196398258,0.222994998097420,0.180713444948196,-0.023744402453303,-0.056883417069912));
res += mul(Get(s2,0,dy), float4x4(-0.084901802241802,-0.049861710518599,-0.097708880901337,-0.019054360687733,0.220185607671738,-0.031975694000721,0.302442550659180,-0.258967697620392,-0.007960480637848,0.035609234124422,-0.547738850116730,-0.199221566319466,0.353806793689728,0.231102645397186,-0.398677408695221,-0.127449080348015));
res += mul(Get(s2,dx,-dy), float4x4(0.467433840036392,0.210932731628418,0.223986759781837,0.309452116489410,-0.180357098579407,0.148425251245499,-0.213773205876350,0.232632815837860,0.004217149224132,-0.013963800854981,-0.026370916515589,0.048867776989937,0.010469478555024,-0.017578827217221,0.091603517532349,0.057477291673422));
res += mul(Get(s2,dx,0), float4x4(0.330515474081039,0.119610346853733,0.382642447948456,-0.018842590972781,-0.187342032790184,-0.140791773796082,0.024075176566839,0.084336884319782,-0.210064947605133,-0.182371422648430,-0.224654674530029,0.193306416273117,0.104364328086376,0.135616600513458,-0.152988597750664,-0.177846178412437));
res += mul(Get(s2,dx,dy), float4x4(-0.105138733983040,0.044064342975616,-0.220878288149834,-0.010049666278064,0.042577251791954,0.018978413194418,0.130609050393105,0.123368829488754,-0.028056658804417,0.055369973182678,-0.172574713826180,-0.049677703529596,-0.106114119291306,0.186261519789696,-0.169654488563538,0.478871047496796));
res += mul(Get(s3,-dx,-dy), float4x4(-0.016891863197088,0.042379304766655,0.135612979531288,0.070123858749866,-0.099888928234577,0.323152065277100,-0.063132733106613,0.030715702101588,0.110861971974373,-0.032693140208721,0.055524565279484,0.103113904595375,0.059767022728920,0.091119013726711,-0.004138208460063,-0.053065884858370));
res += mul(Get(s3,-dx,0), float4x4(0.095061123371124,0.230514571070671,-0.255161464214325,-0.141808450222015,-0.160269677639008,0.406235396862030,-0.210628509521484,0.216023087501526,-0.096862494945526,-0.273590892553329,0.117700755596161,0.019359432160854,-0.070530496537685,-0.092210680246353,-0.034913845360279,-0.192388907074928));
res += mul(Get(s3,-dx,dy), float4x4(-0.080872684717178,0.118700236082077,-0.177754744887352,0.014707414433360,-0.057616692036390,0.208124458789825,0.098685942590237,0.141848117113113,-0.053069759160280,-0.073170617222786,0.142188951373100,0.026043137535453,-0.081757813692093,-0.053729481995106,-0.014952100813389,-0.126507863402367));
res += mul(Get(s3,0,-dy), float4x4(0.059174612164497,-0.057817526161671,0.274999409914017,0.227362379431725,-0.029572280123830,-0.320331633090973,-0.232175216078758,0.147711783647537,-0.121640734374523,0.019711222499609,0.035339843481779,0.061599507927895,0.273381948471069,-0.104460656642914,-0.000251875258982,-0.109077937901020));
res += mul(Get(s3,0,0), float4x4(0.291659981012344,0.220724076032639,0.194870457053185,0.090846724808216,-0.163918912410736,-0.384602069854736,-0.205114588141441,0.078049488365650,0.153199166059494,0.279996246099472,0.189214274287224,-0.129661336541176,-0.165618002414703,0.203166291117668,-0.193679720163345,-0.051434747874737));
res += mul(Get(s3,0,dy), float4x4(0.058658663183451,-0.056140888482332,-0.006334714591503,0.217882245779037,0.053685311228037,-0.080636098980904,0.290649145841599,0.003355556633323,-0.025357130914927,0.266607969999313,0.185167476534843,0.059584088623524,0.026998277753592,0.188669070601463,-0.291570335626602,-0.116046302020550));
res += mul(Get(s3,dx,-dy), float4x4(-0.085563205182552,-0.013692929409444,-0.026552064344287,-0.110025532543659,0.310960263013840,-0.185770913958549,-0.034210447221994,-0.105188794434071,-0.271239489316940,-0.023028500378132,-0.005091442726552,-0.165574654936790,0.087643958628178,-0.005225024651736,0.280249983072281,0.233819410204887));
res += mul(Get(s3,dx,0), float4x4(-0.215180844068527,-0.079353213310242,-0.173010170459747,0.131275802850723,0.288080662488937,-0.293667018413544,-0.000185314842383,-0.212741270661354,-0.090034410357475,-0.011443635448813,-0.586600780487061,0.184148043394089,0.042703609913588,-0.054184753447771,-0.102368377149105,0.492242425680161));
res += mul(Get(s3,dx,dy), float4x4(-0.015836145728827,-0.051530838012695,-0.047881130129099,-0.181638211011887,-0.135177075862885,-0.043497040867805,0.129305958747864,-0.032735168933868,0.055398441851139,-0.136233016848564,-0.016174290329218,-0.109983287751675,0.041923686861992,-0.101482756435871,0.218744620680809,0.129334717988968));
res += mul(Get(s4,-dx,-dy), float4x4(0.183745160698891,-0.050755396485329,0.038638759404421,0.082868434488773,-0.123464070260525,0.122049801051617,-0.202286660671234,0.000593160279095,0.020397951826453,0.113930404186249,-0.017810203135014,-0.014363215304911,0.002004503272474,-0.002714975271374,-0.041665781289339,-0.001116161234677));
res += mul(Get(s4,-dx,0), float4x4(0.089409068226814,-0.034877318888903,0.080133020877838,0.047866005450487,0.182358756661415,-0.019900828599930,0.538901925086975,0.135141953825951,0.404080063104630,0.017331929877400,0.107940860092640,-0.073260210454464,-0.035144813358784,-0.033461716026068,-0.113687194883823,-0.064638070762157));
res += mul(Get(s4,-dx,dy), float4x4(-0.093128286302090,-0.123591519892216,-0.063950002193451,-0.117716722190380,-0.072292454540730,0.534192979335785,-0.187121883034706,0.137270420789719,-0.071548834443092,-0.160617113113403,0.118796572089195,0.086306221783161,0.082243889570236,-0.034182958304882,0.340760439634323,-0.058651264756918));
res += mul(Get(s4,0,-dy), float4x4(-0.125721722841263,0.161606743931770,-0.002591102616861,0.091268248856068,-0.223860532045364,-0.050345376133919,0.018053902313113,-0.010086777620018,-0.016641844063997,-0.168017193675041,-0.333667635917664,0.050330307334661,-0.146059051156044,-0.031077474355698,-0.258871704339981,0.021212568506598));
res += mul(Get(s4,0,0), float4x4(-0.217719361186028,0.203389272093773,0.146613374352455,0.006150107365102,0.052639104425907,0.082171864807606,0.238917976617813,-0.052445732057095,-0.065180495381355,-0.540889978408813,0.106407880783081,0.498333752155304,0.201873213052750,0.015032029710710,0.255574584007263,0.159179583191872));
res += mul(Get(s4,0,dy), float4x4(0.182464346289635,0.044149208813906,0.084261849522591,-0.050499256700277,-0.027026105672121,-0.230339646339417,-0.223608404397964,0.274924755096436,-0.018261907622218,0.050004240125418,0.133343636989594,0.089911930263042,0.088608078658581,0.065279290080070,0.378630071878433,-0.143068253993988));
res += mul(Get(s4,dx,-dy), float4x4(-0.056812014430761,-0.083003886044025,0.255740970373154,-0.234238177537918,-0.015263884328306,-0.029368247836828,-0.047286253422499,0.029180398210883,0.187947437167168,-0.177723422646523,0.293997108936310,-0.171260505914688,-0.122507520020008,-0.048521127551794,0.263376146554947,0.066704861819744));
res += mul(Get(s4,dx,0), float4x4(-0.215325623750687,0.041108496487141,-0.628327965736389,0.139827623963356,-0.111249968409538,-0.018987249583006,0.002637550234795,0.046654053032398,-0.045349214226007,0.426100254058838,0.375162899494171,-0.408118218183517,0.145572051405907,-0.000108118583739,0.207002237439156,0.118613496422768));
res += mul(Get(s4,dx,dy), float4x4(-0.005370798986405,-0.015817422419786,0.078864060342312,0.151012092828751,0.011983016505837,0.106570847332478,0.169605270028114,0.023744812235236,-0.051369402557611,-0.011486719362438,-0.187514975667000,-0.109919354319572,-0.046425186097622,-0.066786594688892,-0.057664439082146,0.488507151603699));
res += mul(Get(s5,-dx,-dy), float4x4(0.146940201520920,-0.024534355849028,-0.111871741712093,-0.055491946637630,0.166564494371414,-0.006495727226138,0.093712009489536,0.065499663352966,0.011073930189013,0.097597926855087,0.147303700447083,-0.072335764765739,0.306014686822891,-0.169840618968010,0.049421645700932,-0.137505814433098));
res += mul(Get(s5,-dx,0), float4x4(-0.009913229383528,0.631462752819061,-0.261537522077560,-0.107147417962551,0.113256402313709,0.195530027151108,-0.040764607489109,-0.071989916265011,0.234566226601601,-0.146028965711594,0.040182441473007,-0.017164412885904,0.150565311312675,-0.175279930233955,-0.000500766618643,-0.111155360937119));
res += mul(Get(s5,-dx,dy), float4x4(-0.030409133061767,-0.042667090892792,0.155923813581467,0.024897586554289,-0.048634160310030,-0.115951463580132,0.026402739807963,0.051585100591183,-0.185734987258911,-0.006396442186087,0.005453529302031,0.086060374975204,0.105793952941895,-0.120842553675175,-0.118363484740257,-0.028412966057658));
res += mul(Get(s5,0,-dy), float4x4(0.060748118907213,0.065025374293327,-0.159048467874527,0.251668453216553,0.096320636570454,0.050658050924540,-0.111886233091354,0.127878457307816,-0.053129259496927,-0.040024932473898,0.076196573674679,0.168346390128136,-0.129460841417313,0.150604128837585,0.043075893074274,0.053445789963007));
res += mul(Get(s5,0,0), float4x4(0.038985647261143,-0.027172777801752,-0.273496538400650,0.315798074007034,0.040998701006174,-0.045281875878572,0.014861647970974,-0.034397199749947,0.433329463005066,0.612921476364136,0.004291058052331,-0.062913455069065,-0.039257708936930,0.140734255313873,-0.095097422599792,0.105286151170731));
res += mul(Get(s5,0,dy), float4x4(-0.049102064222097,-0.117935448884964,0.473766922950745,-0.024862559512258,-0.066781304776669,0.174925640225410,-0.228574529290199,-0.044279444962740,-0.326397418975830,0.016087260097265,-0.562182784080505,0.114218316972256,-0.147235050797462,0.065827436745167,-0.093214310705662,-0.035153955221176));
res += mul(Get(s5,dx,-dy), float4x4(-0.023257425054908,0.031597521156073,-0.170464426279068,-0.184092074632645,0.226521104574203,0.092894010245800,-0.435513317584991,-0.149967372417450,0.163657143712044,0.056784193962812,-0.016813445836306,0.006562064867467,-0.121304079890251,-0.023505730554461,-0.086106739938259,0.031925834715366));
res += mul(Get(s5,dx,0), float4x4(0.101394027471542,-0.057800758630037,0.204548075795174,-0.002914791926742,0.127631023526192,-0.244749724864960,-0.284215956926346,-0.188106164336205,-0.262342840433121,-0.203818544745445,-0.126055732369423,0.154342859983444,-0.091304443776608,0.096578404307365,-0.165499210357666,0.133471831679344));
res += mul(Get(s5,dx,dy), float4x4(0.045208632946014,0.021976293995976,0.082861483097076,0.077818408608437,-0.128555729985237,-0.082374304533005,-0.007746012415737,0.255114912986755,-0.014935546554625,0.006706057116389,0.048661231994629,-0.156831517815590,0.139766067266464,-0.034171227365732,0.488891482353210,0.013627626001835));
res = max(float4(0, 0, 0, 0), res) + float4(0.810241520404816,-0.466303169727325,-0.136468812823296,-0.685334622859955) * min(float4(0, 0, 0, 0), res);
return res;
}