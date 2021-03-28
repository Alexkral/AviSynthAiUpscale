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
float4 res = float4(0.079504616558552,0.001336253015324,-0.210415259003639,0.000278665364021);
res += mul(Get(s0,-dx,-dy), float4x4(-0.093943946063519,-0.017229512333870,0.010382601059973,0.016855979338288,0.130964741110802,-0.153399154543877,0.050481751561165,-0.000362272578059,0.035504687577486,-0.031760871410370,-0.051893904805183,0.059272058308125,0.140989363193512,-0.074248641729355,0.131660059094429,-0.022419609129429));
res += mul(Get(s0,-dx,0), float4x4(-0.056402601301670,-0.014944911934435,0.023666394874454,-0.107887633144855,-0.355351626873016,0.031148474663496,-0.010373511351645,-0.030405888333917,-0.051039509475231,0.098648212850094,-0.072738856077194,-0.085616283118725,-0.246389046311378,0.039807356894016,0.187767788767815,-0.205255180597305));
res += mul(Get(s0,-dx,dy), float4x4(-0.021749354898930,0.104004696011543,0.094450116157532,-0.024071719497442,0.078097328543663,-0.109241783618927,0.068032130599022,0.014621715061367,-0.251773864030838,0.029479391872883,-0.190698191523552,-0.120645008981228,-0.051665283739567,0.001209779991768,-0.104058898985386,0.178591892123222));
res += mul(Get(s0,0,-dy), float4x4(-0.083764709532261,0.050889093428850,0.087140411138535,0.041762657463551,0.256866723299026,-0.156363829970360,0.058911170810461,0.180693179368973,0.020199719816446,0.068700298666954,-0.104385577142239,-0.005349880084395,0.081057421863079,0.018189081922174,0.097450248897076,-0.026935556903481));
res += mul(Get(s0,0,0), float4x4(-0.078514620661736,0.045827932655811,-0.293945282697678,-0.340443819761276,-0.336740970611572,-0.021601360291243,0.168459385633469,0.350664049386978,-0.373176336288452,0.214615702629089,0.110171422362328,-0.076913930475712,-0.217696726322174,-0.051474347710609,-0.032692391425371,-0.045878533273935));
res += mul(Get(s0,0,dy), float4x4(0.013986948877573,0.024998588487506,0.107999019324780,0.018602365627885,0.087410703301430,-0.154671281576157,0.033163856714964,0.139560699462891,0.199251502752304,0.138352349400520,0.020407067611814,-0.167131945490837,0.067967429757118,-0.149970412254333,0.001706908340566,0.002311503281817));
res += mul(Get(s0,dx,-dy), float4x4(-0.044284604489803,0.140389248728752,0.084858521819115,-0.001330668805167,-0.129055097699165,0.039320994168520,0.038666214793921,0.094250321388245,-0.044937100261450,-0.011931663379073,0.015474493615329,-0.015023566782475,-0.048903454095125,0.041205126792192,-0.064033895730972,0.046436488628387));
res += mul(Get(s0,dx,0), float4x4(-0.008557001128793,-0.082087293267250,0.026779174804688,-0.079827055335045,-0.172106549143791,0.100065253674984,0.041647672653198,0.045765090733767,-0.203866705298424,0.121790796518326,0.193330287933350,-0.029282649978995,-0.081931039690971,-0.158629938960075,0.065858058631420,0.128490641713142));
res += mul(Get(s0,dx,dy), float4x4(-0.046557113528252,-0.003289833199233,-0.031480744481087,0.027014957740903,-0.014422035776079,-0.064603276550770,0.171509876847267,0.036279056221247,-0.008406043983996,-0.011443313211203,-0.089861996471882,0.008787572383881,-0.131224647164345,0.043349534273148,0.107274882495403,0.040985897183418));
res += mul(Get(s1,-dx,-dy), float4x4(0.138499438762665,-0.014110353775322,0.004926148802042,0.111614882946014,-0.023109396919608,0.054445426911116,0.153324171900749,-0.013746060431004,0.111049979925156,-0.095872446894646,0.053564265370369,0.055199880152941,-0.150217741727829,0.073027320206165,0.117138750851154,0.146699711680412));
res += mul(Get(s1,-dx,0), float4x4(0.005993625614792,-0.000021978825316,0.076593719422817,0.056023977696896,-0.081402696669102,0.022159826010466,-0.072235457599163,0.015779715031385,-0.127991035580635,-0.000769865175243,0.047830440104008,0.104513086378574,0.311477750539780,-0.141766309738159,0.199869826436043,-0.252245992422104));
res += mul(Get(s1,-dx,dy), float4x4(-0.024637890979648,-0.021724855527282,0.077714361250401,0.011691125109792,0.058694083243608,-0.018897989764810,0.094254970550537,0.063295707106590,0.106416396796703,-0.045967683196068,-0.129826173186302,-0.082254163920879,-0.404393762350082,-0.089035980403423,-0.092142805457115,0.091010570526123));
res += mul(Get(s1,0,-dy), float4x4(0.064519867300987,0.050780065357685,-0.019167196005583,0.062688909471035,0.235076487064362,-0.228050246834755,0.312358468770981,0.055266808718443,-0.065238364040852,-0.148975953459740,0.084427468478680,-0.013104055076838,0.100272983312607,-0.247323691844940,0.058538500219584,0.065967656672001));
res += mul(Get(s1,0,0), float4x4(-0.055577758699656,-0.069458305835724,0.168411269783974,0.049747154116631,-0.086582392454147,-0.034531667828560,0.011342702433467,0.062100239098072,0.061588171869516,-0.013060220517218,0.299840867519379,-0.689756870269775,0.234333783388138,0.004296209197491,0.157698810100555,-0.021889273077250));
res += mul(Get(s1,0,dy), float4x4(0.028691094368696,0.015918159857392,0.022962741553783,-0.027531662955880,-0.169736281037331,-0.158222019672394,0.011331621557474,0.095147199928761,-0.144236117601395,-0.006727680098265,0.043205574154854,-0.017635788768530,-0.235395848751068,0.025875492021441,-0.133384734392166,-0.000184888878721));
res += mul(Get(s1,dx,-dy), float4x4(0.097802788019180,-0.067521966993809,0.058402303606272,0.032494369894266,0.100036971271038,-0.088373810052872,0.038049958646297,0.035363696515560,-0.116043657064438,-0.095164313912392,-0.058804001659155,0.003815689124167,-0.178512647747993,-0.115265548229218,-0.004650429356843,-0.056978642940521));
res += mul(Get(s1,dx,0), float4x4(0.066852033138275,0.118680648505688,-0.093734100461006,0.039360895752907,-0.089233495295048,-0.186407178640366,0.065448492765427,0.033473107963800,-0.139128863811493,0.011802555993199,-0.304846614599228,0.141385212540627,-0.070804417133331,0.000492090068292,-0.103934645652771,0.101476348936558));
res += mul(Get(s1,dx,dy), float4x4(-0.002357999328524,0.033176850527525,-0.027617989107966,0.002458292758092,0.083607412874699,0.049426786601543,0.184641942381859,-0.068016506731510,-0.177089735865593,-0.079884305596352,-0.108319118618965,0.048652265220881,0.031612493097782,0.123305663466454,-0.081665389239788,-0.032220583409071));
res += mul(Get(s2,-dx,-dy), float4x4(-0.038569562137127,0.080801151692867,-0.086429990828037,0.058025408536196,0.144156962633133,0.068133980035782,-0.090989381074905,0.058896265923977,0.064758226275444,0.042039349675179,-0.034365158528090,-0.018905280157924,0.097849957644939,0.014644712209702,0.060422144830227,0.073808170855045));
res += mul(Get(s2,-dx,0), float4x4(0.158763676881790,0.044055566191673,0.089321948587894,0.098152801394463,0.205381527543068,-0.182904273271561,0.035106897354126,0.117984771728516,0.210619911551476,-0.003187678055838,-0.151007115840912,-0.184821307659149,0.246060147881508,-0.123375743627548,0.126285776495934,-0.044536758214235));
res += mul(Get(s2,-dx,dy), float4x4(-0.140836730599403,0.023103671148419,-0.056385464966297,0.069299802184105,0.068955257534981,0.026455737650394,-0.046732209622860,0.127174571156502,-0.085408791899681,-0.041803006082773,-0.005087248049676,0.104085475206375,-0.081608563661575,-0.050692293792963,0.097881063818932,0.083178341388702));
res += mul(Get(s2,0,-dy), float4x4(0.148176193237305,0.170720711350441,0.123239159584045,-0.219807639718056,-0.076179854571819,0.108665063977242,-0.038104858249426,0.186083346605301,-0.023427750915289,0.067493312060833,0.025548569858074,0.062165331095457,0.095022544264793,-0.070336945354939,-0.012678842991590,-0.150869175791740));
res += mul(Get(s2,0,0), float4x4(-0.155115902423859,0.257515430450439,0.026415713131428,-0.371607720851898,0.305232793092728,-0.157309219241142,0.195726081728935,-0.222005873918533,0.135072335600853,0.181679457426071,0.463360637426376,0.292219460010529,-0.087032884359360,-0.233464911580086,0.023028625175357,0.072168909013271));
res += mul(Get(s2,0,dy), float4x4(0.115571394562721,0.080906219780445,-0.157474786043167,-0.112147919833660,-0.158310160040855,0.057242020964622,-0.135072082281113,-0.057944659143686,0.094652965664864,-0.141759186983109,-0.086432784795761,0.032434515655041,-0.072681196033955,-0.036588609218597,0.227337822318077,0.096419990062714));
res += mul(Get(s2,dx,-dy), float4x4(-0.033998306840658,-0.009974227286875,0.050051759928465,-0.003615445923060,0.124291948974133,0.122446857392788,-0.035234101116657,0.035414297133684,0.045265693217516,0.027143629267812,0.117110267281532,-0.051437173038721,-0.056126985698938,-0.009942241013050,0.052679393440485,-0.027333192527294));
res += mul(Get(s2,dx,0), float4x4(0.102314725518227,-0.032264925539494,0.079053819179535,0.080113820731640,-0.007926528342068,-0.048904232680798,-0.038953773677349,-0.092824950814247,0.014201575890183,0.052684873342514,0.118319012224674,0.035369135439396,0.066322453320026,-0.137451574206352,0.404014796018600,0.013312885537744));
res += mul(Get(s2,dx,dy), float4x4(0.052493777126074,0.063096828758717,-0.147763267159462,0.062871500849724,-0.199769392609596,0.039523031562567,-0.089563846588135,-0.101307198405266,-0.058288946747780,-0.106831803917885,0.084531731903553,-0.018786773085594,-0.123646669089794,0.036353927105665,0.063836500048637,-0.004626947920769));
res += mul(Get(s3,-dx,-dy), float4x4(-0.123928122222424,-0.033416926860809,-0.133065506815910,-0.075992926955223,-0.206350877881050,0.037876069545746,0.113143466413021,0.030383611097932,-0.079391047358513,-0.035315711051226,-0.061034169048071,-0.005632158368826,0.437832176685333,-0.014225200749934,0.147269159555435,-0.026577774435282));
res += mul(Get(s3,-dx,0), float4x4(-0.175572857260704,0.135931566357613,-0.100742556154728,-0.328097641468048,-0.067988127470016,0.170636311173439,-0.070032641291618,0.065238937735558,0.093431219458580,0.104228422045708,-0.122640572488308,-0.115963622927666,0.072286650538445,0.144155383110046,0.180569067597389,-0.106790706515312));
res += mul(Get(s3,-dx,dy), float4x4(-0.102128505706787,-0.102774031460285,-0.027201626449823,-0.055882778018713,-0.020930416882038,0.057064112275839,-0.125790044665337,-0.029643842950463,-0.072723552584648,0.104132354259491,-0.127785176038742,-0.132319003343582,0.202371522784233,-0.154272034764290,0.094526596367359,0.040084049105644));
res += mul(Get(s3,0,-dy), float4x4(0.377636432647705,-0.083362028002739,-0.070138163864613,0.065925173461437,-0.398461252450943,0.132675647735596,-0.018525611609221,-0.144121393561363,-0.020877599716187,0.095308110117912,0.050043720752001,0.030955137684941,0.219908505678177,-0.140963584184647,-0.091302610933781,-0.026490271091461));
res += mul(Get(s3,0,0), float4x4(-0.239296257495880,0.061937421560287,0.311079323291779,-0.000459481350845,-0.077556170523167,0.407075375318527,-0.234789147973061,-0.122821398079395,0.148083552718163,-0.172892719507217,-0.202767416834831,0.340671330690384,0.256151765584946,0.077083967626095,-0.026110451668501,0.042329240590334));
res += mul(Get(s3,0,dy), float4x4(0.076727658510208,-0.020956642925739,0.070094704627991,0.007696844637394,0.184531882405281,-0.124863363802433,0.101931236684322,-0.045623574405909,0.086433045566082,0.359729409217834,-0.083109162747860,-0.120523884892464,-0.016171015799046,0.001329110469669,0.103868022561073,0.098506614565849));
res += mul(Get(s3,dx,-dy), float4x4(-0.037389334291220,-0.049623273313046,-0.177085906267166,0.043945260345936,-0.006560801994056,-0.035986062139273,-0.119253791868687,-0.068968169391155,-0.117135047912598,-0.048849102109671,0.021330663934350,0.035017557442188,-0.186560422182083,0.234237506985664,0.178528755903244,0.110481552779675));
res += mul(Get(s3,dx,0), float4x4(-0.091733053326607,-0.253605991601944,0.024782115593553,0.095896534621716,-0.021887693554163,0.012349960394204,-0.344408392906189,-0.078798562288284,-0.007792075630277,-0.069844916462898,0.149140954017639,0.161578595638275,0.112543642520905,-0.114837743341923,0.042996935546398,-0.008603351190686));
res += mul(Get(s3,dx,dy), float4x4(-0.311422735452652,-0.014213137328625,-0.007867750711739,0.003228460904211,0.078081883490086,-0.150181874632835,0.172549024224281,-0.048826117068529,0.086782537400723,0.156613647937775,-0.105740807950497,0.055139813572168,-0.154787898063660,0.221664607524872,0.172960191965103,0.095264635980129));
res += mul(Get(s4,-dx,-dy), float4x4(0.073890067636967,0.066552810370922,-0.019950352609158,-0.074947468936443,-0.020199418067932,-0.001180935185403,-0.004689749795943,-0.009637313894928,-0.305390477180481,-0.003908684477210,-0.206133902072906,-0.087482258677483,0.071827694773674,0.032494626939297,-0.179823294281960,-0.120506659150124));
res += mul(Get(s4,-dx,0), float4x4(-0.095596835017204,0.045982867479324,-0.249351650476456,0.095862112939358,-0.078769780695438,-0.112079821527004,0.125980436801910,-0.093760758638382,0.203384086489677,0.172433435916901,-0.094360560178757,0.080911308526993,-0.539113223552704,-0.017201419919729,-0.006432315334678,0.136446028947830));
res += mul(Get(s4,-dx,dy), float4x4(0.099805645644665,0.021684700623155,-0.216044232249260,-0.093179427087307,0.108712621033192,-0.178404659032822,-0.059974331408739,0.129713922739029,-0.040575463324785,0.105582736432552,-0.027700351551175,0.025110015645623,0.163174510002136,-0.034677483141422,0.204052835702896,0.108792796730995));
res += mul(Get(s4,0,-dy), float4x4(0.016475459560752,0.092923350632191,0.027653494849801,0.103921726346016,-0.017479278147221,-0.094296865165234,-0.007764691021293,0.023172633722425,-0.107809871435165,0.046519380062819,-0.113504439592361,-0.135526478290558,0.254615753889084,-0.139225602149963,-0.115753687918186,-0.004139052238315));
res += mul(Get(s4,0,0), float4x4(0.185431405901909,0.174671903252602,-0.092329889535904,0.161359891295433,0.249913528561592,-0.048131149262190,-0.032098256051540,0.067722260951996,0.040285300463438,0.020897191017866,-0.122013747692108,-0.022062547504902,-0.419037282466888,-0.196764066815376,0.156486794352531,0.113617122173309));
res += mul(Get(s4,0,dy), float4x4(0.062585584819317,0.009642492048442,0.018807748332620,-0.140785768628120,-0.192701533436775,0.100666299462318,0.063899412751198,0.057139992713928,-0.082400254905224,0.090539567172527,-0.118502423167229,-0.096120804548264,-0.167544201016426,-0.275551229715347,0.013632724061608,-0.151225030422211));
res += mul(Get(s4,dx,-dy), float4x4(-0.160996332764626,0.021016741171479,-0.049754731357098,0.102021321654320,0.210194453597069,0.019164048135281,0.148256853222847,0.036109589040279,0.005181828979403,0.098511159420013,0.148658901453018,0.041045550256968,-0.115228094160557,-0.060552518814802,-0.190165117383003,0.043718226253986));
res += mul(Get(s4,dx,0), float4x4(-0.116796351969242,-0.065063685178757,0.229755163192749,0.102616913616657,-0.035111382603645,-0.082412831485271,-0.006040500476956,0.135277360677719,0.118287183344364,-0.082599066197872,-0.119840212166309,0.044216945767403,-0.036808166652918,0.038251619786024,-0.185783624649048,0.024928444996476));
res += mul(Get(s4,dx,dy), float4x4(-0.093838520348072,-0.206880241632462,-0.235319525003433,-0.104157254099846,-0.082408301532269,0.051405131816864,0.072559773921967,0.097034089267254,0.088012315332890,0.166335493326187,-0.009082313627005,-0.027862723916769,0.176407799124718,0.026394462212920,0.184867903590202,-0.059026133269072));
res += mul(Get(s5,-dx,-dy), float4x4(0.274015218019485,-0.083915591239929,-0.055587995797396,-0.042946353554726,0.042667683213949,0.191846519708633,-0.107954718172550,0.012894498184323,-0.103406988084316,0.066312454640865,0.003431409830227,0.104305364191532,-0.310196518898010,-0.069918148219585,-0.256854325532913,-0.211799651384354));
res += mul(Get(s5,-dx,0), float4x4(-0.070935301482677,-0.021137425675988,-0.095134288072586,-0.065038725733757,-0.028736637905240,-0.041671298444271,-0.121248677372932,-0.201981514692307,0.005738376639783,0.051551073789597,0.207337975502014,-0.020728116855025,0.005164805799723,-0.003536756616086,-0.148989170789719,-0.015099183656275));
res += mul(Get(s5,-dx,dy), float4x4(0.019696205854416,-0.009080342948437,-0.019288124516606,-0.028100209310651,0.062995813786983,-0.072218559682369,-0.001708535244688,-0.217860519886017,0.071684151887894,-0.029920017346740,0.019871450960636,-0.041123811155558,-0.112530648708344,-0.148108467459679,-0.242299094796181,0.016363810747862));
res += mul(Get(s5,0,-dy), float4x4(0.042293339967728,0.092703595757484,0.069073215126991,-0.056174982339144,0.003250000998378,-0.150768488645554,-0.307313293218613,-0.096153706312180,-0.173209249973297,0.053994316607714,-0.035582765936852,-0.187058478593826,0.006882775574923,-0.253366738557816,-0.200207784771919,-0.090664498507977));
res += mul(Get(s5,0,0), float4x4(0.353781461715698,0.095990367233753,0.153172269463539,-0.192118346691132,-0.156295925378799,-0.109501294791698,-0.313175767660141,0.040810957551003,0.066636256873608,0.025127872824669,-0.187436416745186,0.133065149188042,-0.099763780832291,-0.219485178589821,0.107298046350479,-0.067860685288906));
res += mul(Get(s5,0,dy), float4x4(-0.019140787422657,-0.043418988585472,-0.019855048507452,-0.067577518522739,0.343625605106354,0.158594816923141,0.046715524047613,-0.038219764828682,0.131277531385422,0.081349752843380,0.251544684171677,-0.107289947569370,-0.110221192240715,0.035029936581850,-0.185405910015106,-0.033039823174477));
res += mul(Get(s5,dx,-dy), float4x4(-0.202630966901779,0.059217929840088,0.247762292623520,0.223590716719627,-0.006099510937929,-0.128696441650391,-0.017519796267152,0.024955602362752,-0.195382297039032,0.154238119721413,0.030200131237507,-0.092484325170517,-0.006790291983634,0.023824496194720,-0.027591025456786,0.068049333989620));
res += mul(Get(s5,dx,0), float4x4(-0.031165972352028,-0.046422425657511,0.170467346906662,0.063572131097317,-0.133975550532341,0.043678563088179,-0.136258378624916,-0.082744434475899,0.206337213516235,-0.126522347331047,0.256166249513626,0.039091214537621,0.039356373250484,0.022661147639155,-0.114151746034622,0.146806001663208));
res += mul(Get(s5,dx,dy), float4x4(-0.082317024469376,-0.055983822792768,0.077320501208305,0.090307936072350,0.036475609987974,-0.103853248059750,0.139451816678047,0.091187581419945,-0.009616758674383,0.067010655999184,-0.065017037093639,-0.031148908659816,-0.013156338594854,-0.210181400179863,-0.006086206529289,-0.002500412752852));
res = max(float4(0, 0, 0, 0), res) + float4(0.332425743341446,-0.386351257562637,0.243916511535645,0.697721004486084) * min(float4(0, 0, 0, 0), res);
return res;
}