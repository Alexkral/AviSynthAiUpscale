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
float4 res = float4(0.013360964134336,-0.352039486169815,0.203314051032066,0.138772621750832);
res += mul(Get(s0,-dx,-dy), float4x4(0.095221556723118,-0.033851642161608,0.055952582508326,0.102151863276958,0.053100679069757,-0.058550979942083,0.083666041493416,-0.054859884083271,0.055204521864653,-0.037343788892031,0.000447267637355,-0.067096784710884,-0.051715545356274,-0.006730797234923,0.174394279718399,-0.049427662044764));
res += mul(Get(s0,-dx,0), float4x4(0.085544221103191,0.045068617910147,0.051282040774822,0.082005858421326,0.021764747798443,-0.059937976300716,0.000093072711024,0.032737243920565,-0.036585539579391,-0.006101463455707,-0.110869072377682,0.052168466150761,-0.001011389424093,0.305785387754440,0.042445190250874,0.037992175668478));
res += mul(Get(s0,-dx,dy), float4x4(0.090038098394871,-0.036412592977285,0.029581906273961,-0.159335508942604,-0.065826915204525,0.048798616975546,0.035272378474474,-0.002530414145440,0.114020332694054,0.050343155860901,-0.054118815809488,-0.164298385381699,0.008925231173635,-0.071914874017239,0.092513516545296,0.074408240616322));
res += mul(Get(s0,0,-dy), float4x4(0.058704614639282,0.084631614387035,0.003231682348996,0.096804045140743,0.006570536177605,0.079851187765598,0.014054972678423,0.001002092962153,0.028081247583032,0.040967814624310,0.025994785130024,-0.068678148090839,-0.008129218593240,-0.061785031110048,0.098695054650307,-0.016911560669541));
res += mul(Get(s0,0,0), float4x4(0.052276398986578,0.269168376922607,0.019146122038364,-0.172218158841133,0.102763339877129,0.131971970200539,0.018628790974617,-0.018958954140544,0.218934118747711,0.042064521461725,-0.219159409403801,-0.075726740062237,-0.235183432698250,0.338639914989471,0.172962933778763,-0.127630889415741));
res += mul(Get(s0,0,dy), float4x4(-0.028338704258204,0.183155551552773,0.082544624805450,-0.123616255819798,-0.041345916688442,0.005931167863309,0.006894588004798,0.016128858551383,0.298887193202972,0.091482073068619,-0.264751136302948,-0.177924424409866,0.112959347665310,-0.009869660250843,-0.064058668911457,-0.100578658282757));
res += mul(Get(s0,dx,-dy), float4x4(-0.037427809089422,0.027138728648424,-0.054435882717371,0.041997704654932,0.042849536985159,0.029929669573903,0.013982325792313,0.064070656895638,0.028403427451849,0.017308106645942,0.072572164237499,0.006921190768480,-0.000871097377967,0.040543906390667,-0.088516622781754,-0.010693973861635));
res += mul(Get(s0,dx,0), float4x4(0.001218240475282,0.008920978754759,0.018313851207495,0.077055513858795,-0.173616155982018,0.023007431998849,0.085753649473190,-0.013682740740478,-0.013707096688449,-0.038828641176224,0.036616947501898,0.096231915056705,-0.003108804346994,0.035134263336658,-0.004386823158711,0.139560267329216));
res += mul(Get(s0,dx,dy), float4x4(0.004166001453996,0.046854417771101,-0.159584641456604,0.038512419909239,-0.034971144050360,0.124248087406158,-0.047041703015566,0.182489022612572,-0.141446232795715,-0.021141273900867,-0.037296723574400,0.041506074368954,0.138428315520287,0.021175295114517,0.068994082510471,-0.168330952525139));
res += mul(Get(s1,-dx,-dy), float4x4(0.149065881967545,0.040601082146168,-0.038874309509993,0.086413860321045,0.066068626940250,-0.063397504389286,-0.113847397267818,0.007873297668993,-0.043337304145098,0.023330373689532,0.044578567147255,-0.082346297800541,-0.216472104191780,-0.024893969297409,0.147154241800308,0.026920031756163));
res += mul(Get(s1,-dx,0), float4x4(0.038684859871864,0.061277326196432,0.049179513007402,-0.003631778527051,0.057056445628405,-0.047993183135986,0.096214495599270,-0.019866919144988,0.034126106649637,0.066189900040627,0.065417215228081,-0.033691294491291,-0.207770496606827,0.155675739049911,-0.283229440450668,0.243339315056801));
res += mul(Get(s1,-dx,dy), float4x4(-0.059132024645805,-0.141317278146744,-0.017675694078207,0.052757550030947,0.060347951948643,0.003776982193813,-0.113613650202751,-0.177516922354698,0.022393729537725,-0.090422041714191,0.050113216042519,-0.032829146832228,-0.011449839919806,-0.072391390800476,-0.092065773904324,-0.167025059461594));
res += mul(Get(s1,0,-dy), float4x4(0.041812077164650,-0.006629502866417,0.046180322766304,-0.047371078282595,0.043203815817833,0.092274487018585,-0.028179520741105,-0.059142377227545,0.003874870482832,-0.040863350033760,-0.133533731102943,-0.004308599047363,-0.084908954799175,-0.157662659883499,0.056588340550661,-0.098878964781761));
res += mul(Get(s1,0,0), float4x4(-0.066280640661716,0.137022808194160,-0.040445212274790,-0.115708984434605,-0.124472372233868,0.058211565017700,0.094577684998512,-0.106560848653316,0.026998661458492,0.063309676945210,-0.151435583829880,0.018726643174887,-0.371641486883163,-0.029707953333855,-0.114271968603134,0.139024525880814));
res += mul(Get(s1,0,dy), float4x4(0.001849765889347,-0.019462700933218,0.122977122664452,-0.129117637872696,-0.003024196485057,-0.093850158154964,0.015183650888503,-0.163596659898758,-0.056374020874500,0.017361415550113,-0.036296837031841,-0.219070956110954,-0.124801285564899,-0.041230481117964,-0.195682659745216,-0.000936365860980));
res += mul(Get(s1,dx,-dy), float4x4(-0.011203314177692,-0.034684300422668,0.054946497082710,-0.097813397645950,0.038680166006088,-0.066861711442471,-0.203772872686386,-0.065525576472282,0.098218083381653,0.077578075230122,0.077777087688446,0.096749551594257,-0.141379967331886,-0.004307142924517,0.107514247298241,0.072348140180111));
res += mul(Get(s1,dx,0), float4x4(0.055517584085464,-0.027824958786368,0.115757033228874,0.098879337310791,0.030758099630475,-0.022085405886173,-0.149003729224205,0.023016223683953,0.163963928818703,0.181078419089317,-0.121410384774208,0.078546956181526,-0.071807160973549,-0.057639747858047,0.055644020438194,-0.012901633977890));
res += mul(Get(s1,dx,dy), float4x4(-0.102146804332733,-0.026911891996861,0.195945635437965,-0.033658377826214,-0.028632726520300,0.158382430672646,0.001032474916428,0.042652230709791,0.026500474661589,0.020351752638817,-0.080074980854988,-0.069040589034557,-0.069378912448883,-0.003362652612850,0.044411119073629,0.042737454175949));
res += mul(Get(s2,-dx,-dy), float4x4(-0.007850032299757,0.020951040089130,-0.076199449598789,-0.014865942299366,-0.069899022579193,-0.001739330706187,0.099160403013229,0.165326923131943,0.007708029821515,0.042978644371033,-0.016179388388991,0.084681287407875,0.025724120438099,0.067724771797657,-0.087977722287178,0.037121269851923));
res += mul(Get(s2,-dx,0), float4x4(0.038503665477037,-0.301418066024780,-0.102382466197014,-0.039651975035667,0.098152793943882,0.000181110357516,-0.016468487679958,-0.017429392784834,-0.027947649359703,-0.095475383102894,-0.046236943453550,0.117508545517921,0.009925281628966,-0.061754461377859,0.054431531578302,-0.085103347897530));
res += mul(Get(s2,-dx,dy), float4x4(-0.035438057035208,-0.048092909157276,-0.125742420554161,0.043208252638578,-0.055248413234949,0.046160604804754,0.138196527957916,-0.014988791197538,-0.004833024460822,0.012836824171245,0.043855212628841,0.037840403616428,-0.077893629670143,0.119621172547340,0.026368571445346,0.059257220476866));
res += mul(Get(s2,0,-dy), float4x4(0.025636352598667,0.100857652723789,0.040712423622608,0.060143485665321,-0.035160567611456,0.067851208150387,0.007072078064084,-0.027103910222650,0.096107579767704,-0.026748063042760,-0.255948752164841,-0.056166447699070,-0.068313762545586,0.072841614484787,0.025997584685683,-0.182603329420090));
res += mul(Get(s2,0,0), float4x4(0.195983275771141,-0.175248771905899,-0.207869932055473,0.092158794403076,-0.005335909780115,0.011278899386525,-0.057988267391920,0.001871738582850,-0.105225980281830,-0.007624871097505,-0.454689204692841,0.137391388416290,-0.099858008325100,-0.042944204062223,-0.025947265326977,-0.065580874681473));
res += mul(Get(s2,0,dy), float4x4(0.114585302770138,-0.099726893007755,-0.040073994547129,-0.106090195477009,0.121481686830521,0.097928404808044,-0.122994743287563,0.106468118727207,0.059605866670609,0.000863872875925,-0.064380906522274,-0.223970860242844,0.058276716619730,0.027546478435397,-0.013385019265115,-0.081323720514774));
res += mul(Get(s2,dx,-dy), float4x4(-0.005035926587880,0.054064314812422,0.093592613935471,0.087079532444477,-0.103246077895164,-0.027371600270271,0.203245788812637,-0.029370997101068,0.042116437107325,-0.035254489630461,-0.124119691550732,-0.026282725855708,-0.068776935338974,0.143404766917229,-0.072026878595352,0.012428578920662));
res += mul(Get(s2,dx,0), float4x4(0.118189193308353,-0.009696320630610,0.020488755777478,0.058065325021744,0.041422028094530,0.042791318148375,0.143915399909019,-0.091663755476475,0.106475248932838,0.040352500975132,-0.271660804748535,0.147958949208260,-0.237061426043510,-0.086822494864464,0.088175714015961,0.028156677260995));
res += mul(Get(s2,dx,dy), float4x4(0.023035639896989,0.064680941402912,0.068055808544159,-0.054932419210672,0.053930029273033,0.080811053514481,0.072119221091270,0.075815089046955,0.013871346600354,-0.019879369065166,-0.120985299348831,-0.052116416394711,0.106055036187172,0.096468172967434,0.137586936354637,-0.008776459842920));
res += mul(Get(s3,-dx,-dy), float4x4(0.116694338619709,-0.024181189015508,0.035691700875759,-0.042627379298210,-0.175220996141434,0.039339143782854,-0.069688156247139,0.039634000509977,-0.029882809147239,0.073391593992710,-0.147626504302025,0.154641970992088,0.051349040120840,0.027629999443889,-0.004389909096062,0.021107580512762));
res += mul(Get(s3,-dx,0), float4x4(0.154034525156021,-0.055959627032280,0.182078257203102,-0.055805388838053,-0.157472506165504,0.112030923366547,-0.163426786661148,-0.044504571706057,-0.103629797697067,0.043948706239462,0.029792094603181,0.003990185447037,0.158779352903366,0.146590277552605,-0.003013967536390,-0.082857720553875));
res += mul(Get(s3,-dx,dy), float4x4(0.021868620067835,0.123117983341217,0.024221902713180,-0.123518094420433,0.021589757874608,0.135956242680550,-0.041008930653334,0.047654151916504,-0.235088825225830,-0.230656728148460,-0.011521409265697,0.048813134431839,-0.030552120879292,0.141740188002586,-0.113148637115955,-0.067409373819828));
res += mul(Get(s3,0,-dy), float4x4(0.141672298312187,-0.069329716265202,0.086128920316696,-0.070808485150337,0.048480454832315,-0.048249658197165,-0.005048115272075,0.069812335073948,-0.043598260730505,-0.008046374656260,0.037110697478056,-0.085807919502258,-0.049461297690868,-0.049642015248537,0.025438180193305,0.110147766768932));
res += mul(Get(s3,0,0), float4x4(-0.077963665127754,-0.089652448892593,-0.001648187404498,-0.184743717312813,0.229465648531914,0.126753449440002,0.124457791447639,-0.372334122657776,-0.109428659081459,0.106114633381367,0.181027576327324,-0.249641895294189,-0.128008678555489,0.080611608922482,-0.147656321525574,-0.053020544350147));
res += mul(Get(s3,0,dy), float4x4(0.166046604514122,0.002910686191171,0.096265412867069,-0.068726107478142,0.135278865695000,-0.019568702206016,-0.024902546778321,0.058628693223000,-0.268165171146393,-0.135775804519653,0.144166678190231,0.063183128833771,-0.144260704517365,-0.169421821832657,-0.215977936983109,-0.031015096232295));
res += mul(Get(s3,dx,-dy), float4x4(0.051890280097723,0.085269436240196,0.044555604457855,-0.036280151456594,-0.011195109225810,0.065243631601334,0.086708635091782,-0.024072170257568,0.043497603386641,-0.046499792486429,-0.101089753210545,-0.009116972796619,-0.000311973213684,-0.026335205882788,-0.103338204324245,-0.031629852950573));
res += mul(Get(s3,dx,0), float4x4(0.124622456729412,-0.057009954005480,0.143420934677124,0.038482327014208,0.079937450587749,0.089194364845753,0.142281562089920,-0.022097857668996,-0.132497847080231,-0.132543355226517,0.002830413170159,-0.079689912497997,0.048398949205875,0.056914087384939,-0.157327264547348,-0.052065350115299));
res += mul(Get(s3,dx,dy), float4x4(0.029212648048997,-0.007284634280950,0.270667463541031,-0.063462503254414,-0.021986771374941,-0.122303269803524,0.051418501883745,0.038054134696722,-0.103487104177475,-0.034711442887783,0.013507824391127,-0.091966606676579,-0.296650499105453,-0.098066605627537,-0.080906316637993,-0.021211920306087));
res += mul(Get(s4,-dx,-dy), float4x4(-0.023211942985654,0.113905392587185,-0.260760337114334,-0.062641084194183,-0.075989924371243,0.008841437287629,-0.228227272629738,0.010401737876236,0.159513518214226,-0.059166450053453,0.112981617450714,-0.030752005055547,0.123273313045502,-0.000625018845312,-0.066912770271301,-0.097291052341461));
res += mul(Get(s4,-dx,0), float4x4(-0.073875136673450,-0.085588492453098,-0.171144127845764,0.107489570975304,-0.022097030654550,-0.055668648332357,-0.102487608790398,0.182373821735382,-0.061933618038893,-0.091857835650444,0.118550501763821,-0.021257622167468,-0.254756391048431,0.070760406553745,0.015294648706913,-0.195456176996231));
res += mul(Get(s4,-dx,dy), float4x4(-0.075750201940536,-0.027448622509837,-0.233012750744820,-0.032008569687605,-0.119287416338921,-0.086894698441029,0.034763853996992,0.057776011526585,0.064993463456631,0.029721487313509,0.270665317773819,0.003278544405475,0.032429918646812,0.045895520597696,-0.097721584141254,0.075212277472019));
res += mul(Get(s4,0,-dy), float4x4(-0.086446903645992,0.053903814405203,-0.116256169974804,0.053252477198839,-0.092719592154026,0.029042106121778,-0.076004005968571,0.011608646251261,0.157168671488762,0.044732488691807,0.141424730420113,0.077760376036167,0.170024856925011,0.018637768924236,0.044641297310591,-0.019353240728378));
res += mul(Get(s4,0,0), float4x4(0.080292001366615,0.018570784479380,-0.089054919779301,0.178338572382927,0.032020453363657,-0.000801285379566,0.212425649166107,-0.269910871982574,0.255110204219818,0.129975870251656,0.131577998399734,0.041149113327265,-0.142554387450218,-0.133413299918175,-0.102001264691353,0.059789661318064));
res += mul(Get(s4,0,dy), float4x4(-0.089063175022602,0.167389988899231,-0.076176032423973,-0.075741708278656,-0.080955557525158,-0.129443764686584,0.103993512690067,0.227029740810394,0.039263565093279,0.102653950452805,-0.008555245585740,0.099899396300316,-0.022668806836009,0.072498649358749,0.221636340022087,0.136478930711746));
res += mul(Get(s4,dx,-dy), float4x4(0.100668840110302,0.104971468448639,-0.084632635116577,-0.063919618725777,-0.067652575671673,0.023978460580111,-0.014809823594987,0.045812293887138,0.148184239864349,0.072200931608677,0.208767011761665,-0.108015827834606,0.023839276283979,0.035393428057432,0.084216527640820,0.023879760876298));
res += mul(Get(s4,dx,0), float4x4(0.001795036718249,0.025786856189370,0.043480370193720,0.012785259634256,-0.010762491263449,0.090407535433769,-0.079728357493877,0.079141467809677,0.014800680801272,-0.111252650618553,-0.004020629450679,0.058604665100574,0.158233925700188,0.084294468164444,-0.180071890354156,-0.044709600508213));
res += mul(Get(s4,dx,dy), float4x4(-0.106892295181751,0.058770205825567,0.110259890556335,0.084222659468651,0.144968628883362,0.008530478924513,-0.062357857823372,-0.119988068938255,-0.187592402100563,-0.032268580049276,-0.064920976758003,-0.048028904944658,0.134521603584290,0.051354572176933,-0.055565468966961,-0.009589510969818));
res += mul(Get(s5,-dx,-dy), float4x4(0.021145179867744,-0.059683725237846,0.067085504531860,0.037719603627920,0.037896152585745,-0.051023755222559,0.128841310739517,-0.000336029304890,-0.006849032361060,0.000583186687436,-0.055540245026350,-0.089657217264175,0.039458636194468,0.059731017798185,-0.024474807083607,0.043975640088320));
res += mul(Get(s5,-dx,0), float4x4(0.116045102477074,-0.000385269144317,0.173973366618156,-0.172808706760406,-0.002238953020424,0.156391173601151,0.141698941588402,-0.055263847112656,0.031101541593671,-0.378338605165482,0.025704238563776,-0.155366718769073,-0.037273693829775,0.067855075001717,-0.111506149172783,0.080707676708698));
res += mul(Get(s5,-dx,dy), float4x4(-0.016716770827770,0.080142214894295,0.106132395565510,-0.086074553430080,0.027429295703769,0.040038507431746,-0.065216466784477,0.077847182750702,-0.046501778066158,0.094933912158012,0.044007487595081,-0.081366263329983,-0.135138228535652,0.019977312535048,0.053786762058735,0.077631019055843));
res += mul(Get(s5,0,-dy), float4x4(-0.091741889715195,0.037050236016512,0.010585957206786,0.060304585844278,0.082463100552559,-0.097664363682270,0.069886937737465,0.032797250896692,0.063067749142647,-0.142152830958366,0.020748054608703,0.150449067354202,0.060248959809542,-0.054573129862547,0.069921188056469,0.075588189065456));
res += mul(Get(s5,0,0), float4x4(-0.097319275140762,0.060167644172907,-0.094324156641960,0.121867224574089,0.012736577540636,-0.065692596137524,0.160196259617805,0.012982388958335,0.091397330164909,-0.291673421859741,0.060074854642153,-0.203374519944191,0.185508593916893,-0.031210318207741,0.003923919051886,-0.003808862762526));
res += mul(Get(s5,0,dy), float4x4(0.003523892723024,0.147796392440796,-0.008192689158022,-0.041044261306524,-0.038646943867207,-0.014149755239487,-0.161783650517464,0.075394503772259,-0.186525553464890,0.085752658545971,-0.126403242349625,0.335067898035049,0.020062498748302,-0.133103385567665,0.120614223182201,-0.062894597649574));
res += mul(Get(s5,dx,-dy), float4x4(-0.066739507019520,-0.052618134766817,0.076897792518139,0.053280804306269,0.013516632840037,-0.020253147929907,0.091600425541401,-0.041529834270477,-0.051701702177525,-0.052919112145901,-0.096180655062199,-0.066058315336704,0.077404253184795,-0.025377342477441,0.231467574834824,0.009106291458011));
res += mul(Get(s5,dx,0), float4x4(0.090793021023273,0.047886833548546,-0.126821577548981,-0.013296969234943,-0.072489321231842,0.041696589440107,0.203880771994591,-0.045900985598564,-0.005080884322524,-0.001637062290683,0.069642677903175,0.165746331214905,-0.048025347292423,-0.037680782377720,0.187216177582741,0.031723115593195));
res += mul(Get(s5,dx,dy), float4x4(0.131113573908806,0.113906569778919,-0.151163429021835,0.036403186619282,-0.148640364408493,0.156802549958229,-0.131834909319878,0.039872825145721,0.033258229494095,0.067219644784927,-0.037893336266279,-0.024652259424329,-0.211601942777634,-0.103224188089371,0.003336337627843,-0.095023654401302));
res = max(float4(0, 0, 0, 0), res) + float4(-0.095948256552219,-0.087991416454315,-0.009528174996376,0.596722781658173) * min(float4(0, 0, 0, 0), res);
return res;
}
