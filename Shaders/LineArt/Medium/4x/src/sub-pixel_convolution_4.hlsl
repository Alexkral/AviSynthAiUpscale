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
float4 res = float4(-0.000066473054176,-0.000764579046518,-0.000501952425111,0.000185662240256);
res += mul(Get(s0,-dx,-dy), float4x4(0.001041360548697,0.002916508819908,0.001635236316361,0.000435683992691,-0.000084450904978,-0.002608955139294,-0.004371411167085,-0.005039073992521,-0.000115566901513,-0.001199190155603,-0.000980653450824,-0.000121058787045,-0.002034689765424,-0.000422600220190,0.000408894615248,0.000360507809091));
res += mul(Get(s0,-dx,0), float4x4(-0.018569229170680,-0.017888631671667,-0.013886100612581,-0.007385881152004,0.002098327735439,0.003404110204428,0.002458361210302,0.000527144526131,0.000084888881247,-0.001006319420412,-0.001613185042515,-0.000825709430501,-0.000460083101643,-0.001503056613728,-0.001591928536072,-0.001458518556319));
res += mul(Get(s0,-dx,dy), float4x4(0.002669357461855,-0.000106198327558,-0.005252927541733,-0.011659026145935,-0.000454891909612,-0.000987286446616,-0.001279527670704,-0.000063619212597,-0.000725934689399,-0.000815205974504,0.000239301560214,0.001356069464236,0.000570889387745,0.000494589214213,-0.000020552315618,-0.000503599585500));
res += mul(Get(s0,0,-dy), float4x4(0.000849739182740,-0.002110419329256,-0.000228282253374,-0.001077533815987,-0.016946494579315,-0.001749253715388,0.004039777442813,0.002604271750897,0.002009993651882,0.000536552630365,-0.002553492551669,-0.002541997469962,0.001386578427628,-0.001561476849020,-0.002576194936410,-0.002091974485666));
res += mul(Get(s0,0,0), float4x4(0.029246220365167,0.030673079192638,0.020077778026462,0.011063062585890,-0.001789948204532,-0.002085696905851,-0.005583378951997,-0.017005132511258,-0.024637948721647,-0.019597703590989,-0.011664830148220,-0.004054606892169,0.002584397559986,0.004555311053991,0.004326399881393,0.003902224358171));
res += mul(Get(s0,0,dy), float4x4(-0.001827999483794,-0.000330326001858,0.006316657178104,0.014516018331051,0.003119516419247,0.003980091307312,0.002288228599355,-0.002392957452685,0.003205600194633,-0.001125875161961,-0.010377849452198,-0.020573243498802,-0.002675039228052,-0.003266666084528,-0.001459412975237,0.000827682437375));
res += mul(Get(s0,dx,-dy), float4x4(-0.003952682949603,-0.000734309491236,0.000833314436022,0.001149030635133,-0.009223194792867,-0.055761724710464,-0.022820312529802,0.009075268171728,-0.003493128111586,-0.001383088878356,-0.000674603914376,0.000166558049386,0.000815959239844,0.002373965922743,0.002256953157485,0.002176100853831));
res += mul(Get(s0,dx,0), float4x4(-0.007320749107748,-0.008681502193213,-0.006495109293610,-0.006422093138099,-0.012874186970294,-0.004649370443076,0.048320062458515,0.067137077450752,-0.034276388585567,-0.025575675070286,-0.016536608338356,-0.009175265207887,0.057952541857958,0.059387944638729,0.041138906031847,0.016857681795955));
res += mul(Get(s0,dx,dy), float4x4(-0.001753602409735,-0.002344003878534,-0.003398439381272,-0.003916095476598,0.002208403311670,0.002409606473520,-0.000395254464820,-0.001973004313186,-0.002532855607569,-0.010033939033747,-0.022328499704599,-0.031124260276556,-0.000893373624422,0.002108469838277,0.014120420441031,0.032980322837830));
res += mul(Get(s1,-dx,-dy), float4x4(-0.000540561159141,-0.000147094629938,-0.000146191974636,0.000477509078337,-0.005601578857750,-0.002948075300083,-0.000353339593858,0.000230187986745,0.000304424815113,0.001843316247687,0.002849764889106,0.001625074655749,0.000428373197792,0.000772583007347,-0.001200093771331,-0.001275965012610));
res += mul(Get(s1,-dx,0), float4x4(0.001756129553542,-0.002103408100083,-0.003195880213752,-0.001318563940004,-0.003918681293726,-0.000471576146083,-0.002312019700184,-0.005018707830459,0.001372211147100,0.002101282123476,0.000855129444972,0.000476612010971,0.001681087538600,0.001240818877704,0.001717431470752,0.001290448242798));
res += mul(Get(s1,-dx,dy), float4x4(0.001470106537454,0.000475612381706,-0.000293321238132,0.000434314279119,0.000754987413529,-0.001033596578054,-0.001351489452645,-0.003495458047837,-0.000200632261112,0.000109625405457,-0.000234973820625,-0.001666993368417,0.000151684522280,0.001220301957801,-0.000066750159021,-0.001038264832459));
res += mul(Get(s1,0,-dy), float4x4(-0.000871192140039,-0.002800819929689,-0.002957627177238,-0.001899420283735,-0.009643663652241,-0.012006357312202,-0.005483760032803,-0.000798668421339,0.023273382335901,0.013797233812511,0.006398019846529,0.001351631595753,-0.001683578011580,0.000365995685570,-0.001065788906999,-0.001433453056961));
res += mul(Get(s1,0,0), float4x4(-0.005420311354101,0.014208001084626,0.012587325647473,0.005294970236719,0.019854215905070,0.027599945664406,0.017225693911314,0.006850805599242,-0.001834610477090,0.007548984605819,0.021005218848586,0.029062384739518,-0.016881525516510,-0.016789933666587,0.010808658786118,0.013672103174031));
res += mul(Get(s1,0,dy), float4x4(0.005352556239814,0.019128680229187,-0.003758214646950,-0.028901921585202,-0.004400383681059,-0.005855144001544,-0.002852114615962,0.001037422451191,0.000144634817843,-0.001109323697165,-0.004529388621449,-0.005452955141664,0.004577242769301,0.005028740968555,0.000173672116944,-0.003875900991261));
res += mul(Get(s1,dx,-dy), float4x4(0.003686067182571,-0.001526766107418,-0.002764012897387,-0.003027315018699,-0.001734633813612,-0.004746266175061,-0.004344933200628,-0.001148679875769,0.041113119572401,0.024335617199540,0.009584123268723,0.001455303048715,-0.029919423162937,-0.018015408888459,0.009243341162801,0.004465937148780));
res += mul(Get(s1,dx,0), float4x4(-0.013827639631927,0.010144433937967,0.009558871388435,0.007743500638753,-0.001282951328903,0.007066367194057,-0.002183771459386,-0.003276803065091,0.016421696171165,0.033715341240168,0.050659559667110,0.055621270090342,-0.017651988193393,-0.008552322164178,0.039883147925138,0.025040490552783));
res += mul(Get(s1,dx,dy), float4x4(0.016952447593212,0.026362545788288,-0.010392894968390,-0.042657464742661,-0.004870740231127,-0.010390704497695,-0.012541225180030,-0.015816656872630,0.001947446726263,0.000835553451907,-0.000326911394950,0.002416454721242,0.003765251021832,0.004659306257963,-0.001725179725327,-0.003149238415062));
res += mul(Get(s2,-dx,-dy), float4x4(0.001195527263917,0.002384251216426,0.002462416421622,0.001094981795177,0.000886535388418,0.000256104074651,-0.002041712636128,-0.001654095714912,0.007442603353411,0.007850335910916,0.007154800929129,0.004288525320590,0.005993156228215,-0.001707351184450,-0.001513633760624,0.004717833362520));
res += mul(Get(s2,-dx,0), float4x4(-0.000346287590219,-0.001810559886508,-0.005079950205982,-0.002704891841859,-0.001243741018698,0.006165480241179,0.003540609497577,-0.002198043977842,0.006373972166330,0.006405767984688,0.004835709463805,0.006143148522824,-0.003082264680415,-0.009178861975670,-0.007168629206717,0.005513110198081));
res += mul(Get(s2,-dx,dy), float4x4(0.002088001929224,0.002069305162877,0.001168505288661,-0.001351203653030,0.000387180596590,0.001976232975721,-0.000584658875596,-0.004855858627707,0.000470633851364,0.001716929255053,0.002373715629801,0.002825528616086,0.000160984811373,0.000491441052873,-0.000233602841035,0.000117946248793));
res += mul(Get(s2,0,-dy), float4x4(-0.001819841563702,-0.005348704289645,-0.006514100823551,-0.003972033970058,-0.016358207911253,0.001961497822776,0.002514785621315,0.000991872395389,-0.018605699762702,-0.000747913552914,0.007427399046719,0.003168429946527,-0.026678210124373,0.014939075335860,0.008244014345109,-0.007095365785062));
res += mul(Get(s2,0,0), float4x4(-0.035694774240255,0.020104043185711,0.048742964863777,0.015471578575671,-0.068112634122372,-0.013588637113571,0.064146503806114,0.008837849833071,-0.011538799852133,-0.033186543732882,-0.047573029994965,-0.041048493236303,0.038427561521530,0.052521131932735,-0.007754742633551,-0.065045736730099));
res += mul(Get(s2,0,dy), float4x4(0.005247213877738,0.003217859659344,-0.007138538174331,-0.032868482172489,0.006208454724401,0.003185294102877,0.016829224303365,0.003634262830019,-0.002355352509767,0.001807328546420,0.003808645531535,0.001400525681674,-0.003502789884806,-0.006848784163594,-0.006551119498909,0.002923194784671));
res += mul(Get(s2,dx,-dy), float4x4(0.004401263780892,-0.001313341897912,-0.005114422179759,-0.002505663083866,0.001052431878634,0.001295932685025,0.000711123691872,-0.000008066372175,-0.000586899928749,-0.000555798935238,0.000174577508005,0.001353447325528,-0.009596790187061,-0.008962513878942,-0.000047769022785,0.003473881399259));
res += mul(Get(s2,dx,0), float4x4(0.020524637773633,0.018754437565804,-0.017363298684359,-0.013758181594312,-0.001237099990249,-0.001461602747440,-0.000142837059684,0.000891148229130,-0.008784458041191,-0.008150493726134,-0.003243672428653,-0.002121355384588,-0.007098034955561,0.007373433094472,0.021449457854033,0.010070393793285));
res += mul(Get(s2,dx,dy), float4x4(0.001805672189221,0.004845201503485,0.000227281634579,-0.005033596884459,-0.000290861149551,0.000597930862568,0.003903569653630,0.001023785676807,0.003195866011083,0.003452675417066,0.002698629163206,0.000509676814545,0.000971506698988,-0.003861973993480,-0.006306038238108,-0.008029340766370));
res += mul(Get(s3,-dx,-dy), float4x4(-0.000110335808131,0.003130693454295,0.002532445359975,0.000328383408487,0.011918042786419,0.004569697659463,0.000125239268527,0.000751819985453,-0.002822112292051,-0.001043063937686,-0.000294905417832,-0.000149420200614,-0.000801891495939,-0.004996911622584,-0.002903893124312,0.001564018661156));
res += mul(Get(s3,-dx,0), float4x4(-0.001687666401267,-0.001462975167669,0.000804167415481,-0.001615174347535,0.003843189217150,0.009634377434850,0.016643049195409,0.016087597236037,-0.006380196660757,-0.006701468955725,-0.006392759270966,-0.005914793349802,0.002484950236976,-0.000925400643609,-0.002935326891020,0.000330806476995));
res += mul(Get(s3,-dx,dy), float4x4(0.000519930559676,0.001523838844150,0.000786572112702,0.000177312103915,-0.000632805109490,0.001458746264689,0.001817734329961,0.002694993279874,-0.000519820081536,-0.001447268412448,-0.003031681757420,-0.004771601408720,-0.000731364125386,-0.001097303931601,-0.000594831770286,0.001320765237324));
res += mul(Get(s3,0,-dy), float4x4(0.053637899458408,-0.022303827106953,-0.038019455969334,0.001995901810005,0.021760012954473,0.003274973016232,-0.007338186725974,-0.007638636976480,0.001081369468011,0.000402773410315,0.002600316423923,0.003147422568873,0.000594983343035,0.028497852385044,0.006553657352924,-0.006643497385085));
res += mul(Get(s3,0,0), float4x4(-0.007975053973496,-0.012903928756714,-0.014820214360952,0.032517477869987,-0.038290567696095,-0.028579179197550,0.001053270651028,0.024953436106443,0.029735336080194,0.027446493506432,0.021591408178210,0.011902926489711,0.002053128322586,0.029834533110261,0.002047072630376,-0.039029959589243));
res += mul(Get(s3,0,dy), float4x4(0.002889223862439,0.003784855362028,0.000975865521468,-0.004139155149460,0.001713354373351,-0.001898092916235,-0.010083767585456,-0.023850634694099,-0.004058024380356,-0.000177402485861,0.007888307794929,0.019650623202324,-0.000642653380055,-0.002489854581654,0.000279806554317,-0.001571632921696));
res += mul(Get(s3,dx,-dy), float4x4(0.011873309500515,0.004335715435445,-0.008111931383610,-0.005551841575652,-0.002305855974555,-0.000638931407593,0.000249836943112,0.000829223077744,-0.014479250647128,-0.009599670767784,-0.003578236326575,0.000836157065351,0.007111874409020,0.012080670334399,-0.002274584490806,-0.002609486458823));
res += mul(Get(s3,dx,0), float4x4(-0.002509876154363,-0.004163355566561,-0.007067471742630,-0.001932888641022,0.010936630889773,0.006886503659189,0.000910642615054,-0.001738297054544,-0.004036431666464,-0.012057833373547,-0.020315535366535,-0.021961556747556,0.010370178148150,0.015645565465093,-0.015648920089006,-0.024168690666556));
res += mul(Get(s3,dx,dy), float4x4(0.001804193365388,0.002324231201783,0.000477516383398,-0.001655874541029,0.004500776063651,0.003601236967370,0.000764076015912,0.004108395893127,-0.000962951860856,0.000315649085678,0.000483283307403,-0.001309997402132,-0.001672360347584,-0.002799400594085,-0.001580403419212,-0.001607734942809));
res += mul(Get(s4,-dx,-dy), float4x4(0.002858771476895,0.000212510494748,-0.002574588404968,-0.003250711830333,0.000609011156484,0.002160641131923,0.002548226155341,0.001955346437171,0.003063891083002,0.000776453816798,-0.000571281649172,-0.000800013134722,0.000534678343683,0.002206067088991,0.002963511506096,0.000991729553789));
res += mul(Get(s4,-dx,0), float4x4(-0.000221203896217,-0.001874476671219,-0.001831397297792,0.001594287925400,-0.002710101194680,-0.002675622701645,-0.001669308869168,0.000320603197906,0.005640860181302,0.005581840872765,0.005459744948894,0.004964082501829,-0.004074908327311,-0.000777906971052,0.000604521716014,-0.000317846133839));
res += mul(Get(s4,-dx,dy), float4x4(-0.002624114742503,-0.002744092140347,0.003173694480211,0.005278197582811,-0.000508284196258,-0.001600849092938,-0.000688496453222,-0.000265743263299,-0.000235986837652,0.001364774419926,0.002536913147196,0.004173712804914,-0.002310592914000,-0.004147139843553,-0.004990510642529,-0.004311401396990));
res += mul(Get(s4,0,-dy), float4x4(0.008392791263759,0.023895617574453,0.008364761248231,0.005374035798013,-0.006334758363664,-0.002707432955503,0.000261855340796,-0.000448999548098,-0.006066089496017,-0.002011157106608,-0.000020082195988,0.002138267969713,0.012414405122399,-0.001115522230975,-0.005803578533232,-0.004965926520526));
res += mul(Get(s4,0,0), float4x4(0.034663826227188,0.015264579094946,-0.055510196834803,-0.060415301471949,0.019251674413681,0.011513802222908,-0.007673155516386,-0.012410554103553,-0.015895808115602,-0.017527732998133,-0.016928592696786,-0.015916641801596,0.004415351897478,-0.015704616904259,-0.013180784881115,0.008878906257451));
res += mul(Get(s4,0,dy), float4x4(-0.007906766608357,-0.009266410954297,-0.000200695489184,0.014544433914125,-0.000372390495613,-0.001463398220949,-0.000281657761661,0.009314094670117,0.002904781606048,0.000473228399642,-0.003050487954170,-0.007103907410055,0.005407560616732,0.012823386117816,0.014239729382098,0.014680228196084));
res += mul(Get(s4,dx,-dy), float4x4(0.008102811872959,0.001770770759322,0.001835186616518,-0.003616843372583,0.017598643898964,-0.001687029609457,-0.005054491106421,-0.005253000650555,0.012275027111173,-0.001475577126257,-0.007307143881917,-0.006645062938333,0.003228584537283,-0.000785312673543,-0.003421257715672,-0.002815622836351));
res += mul(Get(s4,dx,0), float4x4(-0.002729533705860,-0.000217907581828,0.007867887616158,0.016326887533069,-0.023393409326673,-0.049084890633821,0.000437243084889,0.041684765368700,-0.005362494383007,0.003412290243432,0.013798140920699,0.021273588761687,-0.004185854922980,0.007455545477569,0.003766870126128,0.002565623028204));
res += mul(Get(s4,dx,dy), float4x4(-0.000666692503728,-0.002048162044957,-0.002398215467110,-0.003626545891166,0.004175274167210,0.004349464084953,0.005752945784479,0.011409092694521,-0.001637976965867,-0.003352860920131,-0.004191666375846,-0.007108809426427,0.001414707745425,-0.003936151042581,-0.016510058194399,-0.017708616331220));
res += mul(Get(s5,-dx,-dy), float4x4(-0.003576014889404,-0.004060500301421,-0.003323610406369,-0.001937241991982,0.001438586739823,-0.003366196062416,0.007987442426383,0.006000057794154,0.007502231746912,0.006226621102542,0.004551897756755,0.001893392647617,0.000721981457900,0.000464112177724,0.000738143571652,0.000005950552350));
res += mul(Get(s5,-dx,0), float4x4(-0.002306412905455,-0.001981569919735,-0.000790691643488,-0.001475151162595,0.005930600687861,-0.003680880879983,-0.000664001563564,0.014474807307124,0.000059972477175,0.001352504012175,0.003536951960996,0.006204235833138,-0.002337991492823,-0.000651973416097,-0.000141169046401,-0.000931897375267));
res += mul(Get(s5,-dx,dy), float4x4(-0.000629437039606,-0.000148629973410,-0.001385278650559,-0.002454825676978,-0.004753487184644,-0.006513532716781,-0.005018427502364,0.002594666322693,-0.000993067747913,-0.002612052019686,-0.001804918167181,-0.001046883291565,-0.000516058644280,0.001098024426028,0.003414347302169,0.001693195430562));
res += mul(Get(s5,0,-dy), float4x4(-0.004143381025642,-0.006043999455869,-0.006792791653425,-0.002835777355358,-0.058048773556948,-0.020658686757088,0.010164014995098,0.010037833824754,-0.032853074371815,-0.008180325850844,0.007038732059300,0.008481985889375,-0.005673313513398,0.003599415533245,0.004785392899066,0.003442393383011));
res += mul(Get(s5,0,0), float4x4(-0.024278694763780,-0.019882306456566,-0.007090365048498,-0.002341575920582,-0.012917058542371,0.024368107318878,0.058665473014116,-0.007287805899978,0.017002092674375,0.005675041582435,-0.018318997696042,-0.040624447166920,0.034892000257969,-0.016678828746080,-0.017167564481497,-0.011332792229950));
res += mul(Get(s5,0,dy), float4x4(0.003360433271155,0.000634254538454,-0.007744805421680,-0.015883797779679,0.000877625716385,-0.000059345376940,-0.001863061916083,-0.004246910102665,-0.007438702974468,-0.005848413798958,0.004361366853118,0.013625008985400,0.004838783759624,-0.037677310407162,-0.027864441275597,0.050080925226212));
res += mul(Get(s5,dx,-dy), float4x4(0.000829069351312,0.003670677309856,0.001597014954314,0.000882820051629,-0.003152743680403,-0.001587928272784,0.000362915568985,0.001594038796611,0.005988034419715,0.003670257516205,0.004087331239134,0.002198200207204,-0.003339877584949,0.000683859630954,0.002468590857461,0.001922216964886));
res += mul(Get(s5,dx,0), float4x4(-0.008567219600081,-0.013367775827646,-0.012179851531982,-0.006107901688665,-0.002998086158186,-0.007850967347622,-0.006047870963812,-0.002825458534062,0.004212942905724,0.006686645559967,0.010483034886420,0.009912734851241,0.008049685508013,-0.002716101473197,-0.003467669244856,-0.004527930170298));
res += mul(Get(s5,dx,dy), float4x4(0.005010247230530,0.007062926422805,0.002670376561582,-0.002620863029733,0.002042512176558,0.003886941587552,0.002318418817595,0.001761841238476,-0.001607637386769,0.000214450410567,0.003099846187979,0.005109207704663,-0.005035011097789,-0.008957490324974,0.000540423730854,0.015144966542721));
return res;
}