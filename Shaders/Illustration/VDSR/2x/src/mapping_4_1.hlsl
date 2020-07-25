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
res += mul(Get(s0,-dx,-dy), float4x4(0.092890515923500,-0.095620043575764,-0.079974509775639,-0.141756489872932,-0.072128169238567,-0.063551984727383,-0.030423806980252,-0.007600304204971,0.053802017122507,-0.026253512129188,0.124499760568142,0.112927213311195,-0.070526964962482,-0.003690598066896,0.083799637854099,0.099716119468212));
res += mul(Get(s0,-dx,0), float4x4(0.038974493741989,0.102015286684036,-0.066325835883617,-0.033134587109089,0.080002650618553,0.023510683327913,0.040654096752405,0.157580822706223,-0.035240747034550,0.046758029609919,-0.027196615934372,-0.099256850779057,-0.182805046439171,0.100020408630371,0.077730953693390,-0.021222358569503));
res += mul(Get(s0,-dx,dy), float4x4(0.291631400585175,-0.095560215413570,0.072921290993690,-0.064321361482143,-0.115382537245750,-0.208406805992126,0.105107985436916,0.175878465175629,-0.003707107622176,0.106872782111168,-0.031957019120455,0.177676573395729,-0.159921988844872,-0.049273114651442,0.028499044477940,0.094170823693275));
res += mul(Get(s0,0,-dy), float4x4(-0.041838709264994,-0.025766240432858,0.090701609849930,-0.068128570914268,-0.031894057989120,0.071663476526737,-0.151987046003342,0.130879268050194,0.168261364102364,-0.111561596393585,0.077056318521500,-0.061274085193872,-0.012225047685206,-0.067505687475204,0.128917559981346,-0.063872374594212));
res += mul(Get(s0,0,0), float4x4(-0.034335300326347,-0.034609481692314,-0.002173183020204,-0.197605147957802,0.213051900267601,-0.027914945036173,-0.051336802542210,-0.027712697163224,0.201687291264534,-0.267167150974274,0.017920637503266,-0.018238708376884,-0.046293232589960,-0.005611503962427,0.021203048527241,0.058856677263975));
res += mul(Get(s0,0,dy), float4x4(-0.016929069533944,-0.088560730218887,-0.000735065375920,-0.052360534667969,0.006027858704329,0.114489570260048,0.398261785507202,0.051214363425970,0.001174847478978,-0.010258438996971,-0.049161527305841,0.091924779117107,0.137473613023758,-0.205306917428970,0.073785178363323,-0.068311326205730));
res += mul(Get(s0,dx,-dy), float4x4(-0.130771622061729,-0.084187790751457,-0.113619215786457,0.038302518427372,-0.098897904157639,-0.083491243422031,-0.135863408446312,0.173870623111725,-0.069176562130451,0.031452823430300,-0.217557325959206,-0.129427939653397,-0.213602602481842,0.033927910029888,0.014337292872369,0.050875920802355));
res += mul(Get(s0,dx,0), float4x4(-0.191744595766068,-0.029473578557372,-0.101761363446712,0.063734404742718,0.016301903873682,0.231497868895531,-0.106525920331478,0.017293455079198,-0.006542135961354,0.148550897836685,-0.128272876143456,0.042174872010946,-0.127164930105209,-0.084801375865936,0.074304752051830,-0.086550422012806));
res += mul(Get(s0,dx,dy), float4x4(-0.210605263710022,0.113122828304768,0.013779534958303,0.050346598029137,-0.046530447900295,0.034743152558804,-0.069679416716099,-0.130834013223648,-0.057034444063902,-0.017115576192737,-0.041708491742611,0.061586417257786,-0.037071444094181,-0.173599615693092,0.022678203880787,0.004075808916241));
res += mul(Get(s1,-dx,-dy), float4x4(-0.079585380852222,-0.004443445242941,0.138372123241425,-0.029961682856083,0.090658232569695,0.159553125500679,0.076827816665173,-0.023251354694366,-0.024966543540359,-0.069788195192814,0.037353508174419,-0.160993456840515,-0.010579570196569,0.157015144824982,0.003416085615754,0.126833170652390));
res += mul(Get(s1,-dx,0), float4x4(-0.135487109422684,0.088408142328262,-0.149721860885620,0.009968727827072,0.001568256062455,-0.049790158867836,-0.114111788570881,-0.047934431582689,-0.076357208192348,0.127285569906235,0.147521078586578,0.002531870966777,0.135158002376556,0.083967894315720,-0.282217860221863,0.101880259811878));
res += mul(Get(s1,-dx,dy), float4x4(-0.093478590250015,0.047248877584934,0.154111340641975,-0.167767405509949,0.018373796716332,-0.114561654627323,0.089959211647511,0.070472434163094,-0.067538775503635,-0.067915886640549,-0.011468225158751,-0.135162681341171,-0.017641847953200,-0.073234140872955,-0.025586349889636,-0.061501987278461));
res += mul(Get(s1,0,-dy), float4x4(-0.233723565936089,0.011094950139523,-0.038151267915964,0.118675097823143,0.026887981221080,-0.081676401197910,-0.025003885850310,-0.077232614159584,-0.151133731007576,0.143717750906944,0.049545403569937,0.094537988305092,0.066927887499332,-0.222801476716995,-0.034600097686052,0.087427638471127));
res += mul(Get(s1,0,0), float4x4(-0.001199561986141,0.037510201334953,-0.154650494456291,0.267786949872971,0.052027054131031,-0.071063980460167,-0.058047551661730,0.019079931080341,0.126048639416695,-0.058649424463511,-0.138580814003944,-0.050220567733049,0.149003878235817,-0.133437573909760,0.062977522611618,-0.017284514382482));
res += mul(Get(s1,0,dy), float4x4(0.102256119251251,0.106341987848282,-0.158282980322838,-0.126076713204384,0.120968781411648,-0.128933712840080,0.272210061550140,0.053914561867714,0.011131232604384,-0.093857258558273,-0.108708843588829,0.065376006066799,0.118301317095757,-0.022742290049791,0.134235084056854,0.030286381021142));
res += mul(Get(s1,dx,-dy), float4x4(-0.028557255864143,-0.092082835733891,-0.070381857454777,0.110790006816387,-0.053093831986189,-0.154189839959145,0.053426228463650,0.032569974660873,-0.037541113793850,0.122467502951622,0.087332069873810,0.144792422652245,-0.113111160695553,0.039399966597557,-0.160851567983627,-0.033108085393906));
res += mul(Get(s1,dx,0), float4x4(-0.151162147521973,0.008543937467039,0.083857148885727,-0.095003046095371,0.169325664639473,0.180483564734459,0.186028301715851,-0.002585177542642,-0.006374644581228,-0.076594606041908,-0.000454242108390,-0.058175627142191,-0.114791020750999,0.112016044557095,-0.026980159804225,-0.001781024620868));
res += mul(Get(s1,dx,dy), float4x4(0.040469586849213,0.005287233274430,-0.042757242918015,-0.150563478469849,-0.124930441379547,0.026831876486540,0.161640346050262,-0.004062497522682,-0.087732873857021,-0.022385247051716,-0.008037696592510,-0.063581310212612,0.005775465629995,0.134827271103859,-0.007813857868314,-0.197074785828590));
res += mul(Get(s2,-dx,-dy), float4x4(-0.104779876768589,0.029595142230392,0.045376654714346,0.121453627943993,-0.091362319886684,0.028800848871469,-0.087171480059624,0.018760938197374,-0.000053570565797,0.056554641574621,0.246907502412796,-0.088721156120300,0.063895061612129,-0.010040450841188,-0.029743121936917,-0.069234646856785));
res += mul(Get(s2,-dx,0), float4x4(0.113667376339436,0.167893305420876,-0.022283343598247,0.070857256650925,-0.108549788594246,-0.022273520007730,0.034613274037838,-0.002292907796800,-0.170812547206879,-0.028522795066237,-0.038327056914568,-0.001633936655708,0.108635932207108,0.164264008402824,0.133673161268234,-0.007622379343957));
res += mul(Get(s2,-dx,dy), float4x4(-0.095785833895206,0.141974776983261,-0.109189517796040,-0.282107234001160,-0.004742746707052,0.093324922025204,0.024180296808481,0.191488325595856,0.039768557995558,-0.037598200142384,-0.156116038560867,-0.155476868152618,0.016352687031031,-0.136507153511047,-0.015330613590777,-0.178385823965073));
res += mul(Get(s2,0,-dy), float4x4(0.104863643646240,-0.043444100767374,-0.001789625501260,0.015729775652289,-0.051819991320372,-0.028443204239011,0.019645346328616,0.222903564572334,0.112543255090714,0.263481348752975,-0.005365406163037,0.046833660453558,-0.070990912616253,0.245622664690018,0.032057892531157,0.251341730356216));
res += mul(Get(s2,0,0), float4x4(0.176049113273621,0.031727023422718,0.092131972312927,0.191002532839775,-0.049954228103161,0.002814327366650,0.130096554756165,0.106657624244690,0.057343468070030,0.049395181238651,-0.007876922376454,-0.224139526486397,0.127603277564049,0.251088500022888,-0.078226618468761,0.079548738896847));
res += mul(Get(s2,0,dy), float4x4(-0.121119335293770,0.068166963756084,0.055005300790071,-0.023405250161886,0.262956589460373,0.029255047440529,0.093619763851166,0.096435524523258,0.210374265909195,0.075417190790176,-0.209347680211067,-0.132410913705826,0.071083813905716,-0.122222058475018,0.015796720981598,0.061855092644691));
res += mul(Get(s2,dx,-dy), float4x4(0.119628161191940,0.144057005643845,0.051902174949646,-0.019369691610336,0.165424108505249,0.150026634335518,-0.062408104538918,0.040198888629675,0.128226369619370,0.089878745377064,0.109426371753216,0.122454695403576,-0.059116274118423,0.073290683329105,0.163346320390701,0.122458979487419));
res += mul(Get(s2,dx,0), float4x4(0.087810739874840,0.040655337274075,-0.057388905435801,0.125678062438965,0.081295944750309,0.009300376288593,0.008712152950466,0.011952323839068,0.057308491319418,-0.136001333594322,0.198362708091736,0.000635008444078,-0.133076623082161,-0.026566354557872,-0.163724675774574,-0.039590265601873));
res += mul(Get(s2,dx,dy), float4x4(0.020618157461286,-0.029553864151239,-0.064035631716251,0.146273136138916,0.007260815240443,-0.159473806619644,0.278423786163330,-0.010215955786407,-0.022086780518293,0.160283461213112,-0.013566466048360,-0.014376427046955,0.117032818496227,0.082274854183197,0.145013347268105,-0.095109231770039));
res += mul(Get(s3,-dx,-dy), float4x4(-0.014044835232198,-0.028042575344443,-0.180386751890182,-0.249172404408455,0.064505234360695,-0.146405667066574,-0.108918897807598,0.032484505325556,-0.063660055398941,-0.091156944632530,0.011493707075715,0.086022272706032,0.093691468238831,0.180887475609779,0.010017819702625,0.015951640903950));
res += mul(Get(s3,-dx,0), float4x4(0.036892097443342,-0.015528825111687,-0.078630208969116,-0.079259738326073,0.074920460581779,-0.047403018921614,0.008631167933345,0.012049973011017,-0.177619412541389,-0.063855245709419,-0.041280835866928,-0.050477303564548,0.045908294618130,0.107168644666672,0.014849153347313,0.019598303362727));
res += mul(Get(s3,-dx,dy), float4x4(-0.032030746340752,0.183619946241379,0.040626965463161,0.008072332479060,0.201220557093620,-0.053233481943607,0.126802235841751,-0.051595330238342,-0.071343928575516,-0.020603386685252,-0.013423724099994,0.039219912141562,-0.125838652253151,0.072701953351498,0.018470838665962,-0.040105853229761));
res += mul(Get(s3,0,-dy), float4x4(0.024634253233671,-0.182230219244957,0.125856712460518,-0.072185583412647,0.218288376927376,0.103345297276974,-0.005641288124025,-0.057604923844337,-0.066551901400089,-0.241709411144257,0.069593712687492,-0.015583308413625,0.004138885531574,0.083724707365036,-0.014189222827554,-0.006463951431215));
res += mul(Get(s3,0,0), float4x4(-0.077517747879028,-0.127731293439865,-0.086909338831902,0.114671818912029,0.111078776419163,-0.062861584126949,0.029557870700955,0.008991383016109,0.006131555885077,0.075931668281555,0.104410566389561,0.287967473268509,0.078298032283783,0.122152775526047,0.141592472791672,-0.015656093135476));
res += mul(Get(s3,0,dy), float4x4(-0.064351342618465,0.084407046437263,-0.026905123144388,0.088561795651913,-0.026991449296474,0.039061844348907,0.062548130750656,0.017744306474924,-0.087441630661488,0.150614574551582,-0.166936650872231,-0.115189194679260,-0.053012002259493,0.027554141357541,0.117540463805199,-0.022898573428392));
res += mul(Get(s3,dx,-dy), float4x4(-0.216467142105103,-0.223047509789467,-0.035142138600349,-0.035963375121355,-0.026820024475455,-0.024545943364501,-0.067752860486507,0.020831426605582,-0.260258495807648,0.090611748397350,0.051036525517702,-0.037404663860798,-0.054514981806278,-0.023122398182750,-0.050277393311262,-0.056434582918882));
res += mul(Get(s3,dx,0), float4x4(-0.077097967267036,0.100183703005314,-0.152694299817085,-0.070626057684422,0.054554592818022,0.152945667505264,-0.218965202569962,-0.080431401729584,0.103162437677383,-0.107073567807674,0.097094178199768,-0.019976275041699,0.058079242706299,-0.047794729471207,0.075255967676640,-0.025351172313094));
res += mul(Get(s3,dx,dy), float4x4(-0.080409348011017,0.146076530218124,0.108330316841602,0.104061231017113,0.099959209561348,0.004047936759889,-0.002371778944507,0.093315750360489,-0.077766314148903,-0.001519275130704,-0.049031175673008,-0.017277032136917,-0.077117800712585,0.014141770079732,-0.063850045204163,-0.062319483608007));
return max(float4(0,0,0,0), res);
}
