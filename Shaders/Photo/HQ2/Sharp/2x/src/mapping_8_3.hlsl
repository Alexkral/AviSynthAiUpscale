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
res += mul(Get(s0,-dx,-dy), float4x4(0.057069197297096,-0.064134508371353,0.113978438079357,-0.048875372856855,0.148443728685379,-0.029543481767178,-0.105946309864521,0.135868415236473,0.068713016808033,-0.112763695418835,0.158101052045822,0.025575250387192,0.046735025942326,0.087619140744209,0.128709286451340,0.009153518825769));
res += mul(Get(s0,-dx,0), float4x4(-0.030797002837062,-0.051141928881407,-0.087253123521805,-0.053568691015244,-0.068567000329494,0.045890107750893,-0.096169061958790,0.024209143593907,0.032483622431755,-0.192873984575272,0.016109589487314,-0.086916305124760,-0.021073793992400,0.033555593341589,-0.076142676174641,-0.103558748960495));
res += mul(Get(s0,-dx,dy), float4x4(0.053012069314718,-0.136430278420448,-0.229232251644135,0.061640214174986,-0.145497560501099,0.037418637424707,0.066032543778419,-0.131116583943367,0.030238386243582,-0.255823493003845,0.048874642699957,0.083031572401524,0.089872747659683,0.152867063879967,-0.115516312420368,0.010588890872896));
res += mul(Get(s0,0,-dy), float4x4(0.129851773381233,-0.034263789653778,-0.151606723666191,-0.009085796773434,0.011918754316866,0.023363046348095,-0.125549092888832,0.113855108618736,0.004482942633331,-0.005908313207328,0.174033120274544,-0.079952433705330,0.029309060424566,-0.068330310285091,0.020458253100514,-0.072586804628372));
res += mul(Get(s0,0,0), float4x4(-0.072807282209396,-0.088788889348507,0.043016605079174,0.007213169243187,0.046891313046217,0.030401133000851,0.123260073363781,-0.035573899745941,0.061992656439543,-0.011971284635365,-0.064772233366966,0.167284056544304,-0.060745269060135,0.053823497146368,0.094404652714729,-0.050830800086260));
res += mul(Get(s0,0,dy), float4x4(-0.007993075065315,-0.038911096751690,-0.015213364735246,-0.075012974441051,0.056202754378319,0.029859660193324,0.052700493484735,-0.051195967942476,-0.051018863916397,-0.084520518779755,-0.135486781597137,0.166552722454071,0.164968594908714,0.048087030649185,0.043004322797060,-0.053921043872833));
res += mul(Get(s0,dx,-dy), float4x4(0.022603223100305,0.117438524961472,-0.160642057657242,0.079762987792492,-0.081388950347900,-0.033134426921606,0.159184724092484,-0.115587286651134,-0.114731132984161,0.088875278830528,-0.085724830627441,0.091672718524933,0.158147111535072,0.162424981594086,0.052784614264965,0.002748579718173));
res += mul(Get(s0,dx,0), float4x4(0.118981860578060,0.008354139514267,-0.093465305864811,0.068689674139023,-0.097334168851376,-0.287560313940048,0.150793388485909,-0.042529292404652,0.013508875854313,0.068719565868378,-0.149934455752373,0.116850569844246,0.138119146227837,-0.137551680207253,-0.183074146509171,0.053324650973082));
res += mul(Get(s0,dx,dy), float4x4(0.053485661745071,0.150088354945183,-0.012015294283628,0.020403817296028,0.018286149948835,0.050901278853416,-0.108136773109436,0.060807280242443,-0.225350007414818,-0.060792751610279,0.111726440489292,-0.008835989050567,-0.030223021283746,-0.006760539021343,-0.073203161358833,-0.102293737232685));
res += mul(Get(s1,-dx,-dy), float4x4(-0.216264337301254,0.067279882729053,0.100616924464703,-0.055822480469942,0.081776455044746,0.152838766574860,0.021315161138773,0.058466691523790,-0.089803017675877,-0.014689163304865,-0.001746148569509,0.122800797224045,0.020686803385615,0.049551330506802,0.256349682807922,0.202495202422142));
res += mul(Get(s1,-dx,0), float4x4(0.143498897552490,0.088803656399250,-0.074846461415291,-0.029491448774934,-0.059048693627119,-0.014369429089129,-0.032875113189220,-0.141428887844086,-0.029426163062453,-0.116667650640011,-0.031818881630898,0.008425997570157,-0.116213485598564,-0.026111863553524,0.096223153173923,-0.095985926687717));
res += mul(Get(s1,-dx,dy), float4x4(-0.073221988976002,0.071540080010891,0.155940726399422,0.033344976603985,0.184474959969521,0.030074078589678,-0.098787501454353,0.118862964212894,0.147815063595772,-0.133240073919296,-0.182611510157585,-0.037257052958012,-0.265950560569763,0.045812424272299,0.056140799075365,-0.013228775933385));
res += mul(Get(s1,0,-dy), float4x4(0.025665553286672,0.191914781928062,-0.014972820878029,0.005709523800761,0.103777743875980,0.057662967592478,0.032654136419296,-0.008835367858410,-0.039371185004711,0.066194467246532,0.028955658897758,0.068415254354477,-0.043083947151899,0.079306758940220,-0.030901519581676,-0.116010405123234));
res += mul(Get(s1,0,0), float4x4(-0.022242683917284,-0.070670299232006,-0.063350595533848,0.031378950923681,-0.037372246384621,0.095679789781570,-0.013937425799668,0.214223474264145,-0.136576786637306,-0.125203251838684,0.050850395113230,-0.061342488974333,0.149580061435699,-0.125226736068726,0.217961028218269,-0.068970583379269));
res += mul(Get(s1,0,dy), float4x4(-0.030757751315832,-0.183661311864853,-0.003998482134193,0.095356404781342,0.060333073139191,-0.014363168738782,0.196401894092560,-0.026780378073454,-0.027253508567810,-0.023741295561194,-0.041294835507870,0.014882944524288,0.125616982579231,-0.105224497616291,-0.020775763317943,-0.218661636114120));
res += mul(Get(s1,dx,-dy), float4x4(-0.049247764050961,-0.180300921201706,-0.099041670560837,-0.118051536381245,0.059454549103975,0.147980317473412,-0.090696215629578,0.065898105502129,0.027306940406561,-0.136281713843346,-0.093049384653568,-0.090613901615143,-0.156706616282463,0.064233258366585,-0.044773418456316,-0.087418802082539));
res += mul(Get(s1,dx,0), float4x4(0.018164608627558,-0.044417709112167,-0.029573159292340,0.103280350565910,0.109311580657959,0.136203244328499,0.104515515267849,0.144243583083153,0.012520364485681,0.006674881558865,-0.083304889500141,0.052190184593201,0.118075668811798,0.043248120695353,-0.015045502223074,0.078890711069107));
res += mul(Get(s1,dx,dy), float4x4(-0.161918103694916,-0.126787155866623,0.043229639530182,-0.095507010817528,-0.058399043977261,-0.017861641943455,-0.063688047230244,-0.022270830348134,0.017310146242380,0.044549241662025,-0.040855780243874,-0.053145237267017,0.007341167423874,-0.066766217350960,0.057722594588995,-0.073342435061932));
res += mul(Get(s2,-dx,-dy), float4x4(-0.033828616142273,-0.114591233432293,-0.007723836228251,-0.084146015346050,-0.092987313866615,-0.163973391056061,-0.180813819169998,0.047028269618750,0.032030928879976,-0.015422233380377,0.097197413444519,-0.129968166351318,-0.059126261621714,-0.063898317515850,-0.112917818129063,0.129680022597313));
res += mul(Get(s2,-dx,0), float4x4(-0.043232437223196,-0.060168068856001,0.017169214785099,0.053346104919910,0.006620995234698,0.022940849885345,0.076344519853592,0.112168349325657,-0.026059599593282,0.061996482312679,0.059012401849031,-0.069150067865849,0.141857996582985,0.056760381907225,-0.095588751137257,0.249126806855202));
res += mul(Get(s2,-dx,dy), float4x4(0.024109849706292,-0.066077195107937,-0.053200416266918,-0.004902840591967,-0.009975728578866,-0.026051292195916,-0.150237396359444,-0.102419890463352,-0.071863345801830,0.059845101088285,0.040843900293112,0.039828225970268,-0.054721362888813,0.112776532769203,-0.051783584058285,-0.008497555740178));
res += mul(Get(s2,0,-dy), float4x4(-0.056801509112120,0.051474250853062,-0.010805653408170,-0.021068597212434,-0.041218683123589,-0.004368834663182,0.020837076008320,0.162326261401176,-0.171887740492821,0.020524257794023,0.123864173889160,0.096419058740139,-0.095663644373417,0.115651585161686,0.164686650037766,0.104324400424957));
res += mul(Get(s2,0,0), float4x4(0.073245145380497,-0.204887449741364,-0.053468137979507,-0.093038365244865,0.055810499936342,0.081001989543438,-0.130484953522682,0.040367744863033,0.073569700121880,-0.093246638774872,0.149084284901619,0.117347754538059,-0.050574038177729,-0.079602770507336,0.099321410059929,0.072015963494778));
res += mul(Get(s2,0,dy), float4x4(0.065861120820045,-0.155122995376587,0.098008394241333,0.007619335781783,-0.168087184429169,-0.087909199297428,-0.041407320648432,0.015492429956794,0.023667490109801,0.255432158708572,-0.143875673413277,0.025575902312994,0.124785289168358,-0.013214337639511,0.119805999100208,0.070496022701263));
res += mul(Get(s2,dx,-dy), float4x4(0.063875116407871,0.166879817843437,-0.003818179015070,-0.035643398761749,0.049619052559137,0.106159068644047,-0.054788246750832,0.140330299735069,-0.076953612267971,0.073632441461086,0.058368202298880,-0.079558528959751,-0.072672560811043,-0.061822701245546,0.023246254771948,0.014823744073510));
res += mul(Get(s2,dx,0), float4x4(-0.071445792913437,0.119851186871529,0.005884257610887,0.057071574032307,-0.001867111655883,-0.192917063832283,-0.055593881756067,-0.018594169989228,-0.089018046855927,0.067554682493210,0.104066208004951,0.066663630306721,0.011808123439550,-0.081028088927269,0.052643548697233,0.142073780298233));
res += mul(Get(s2,dx,dy), float4x4(-0.047933731228113,-0.065527945756912,0.086779199540615,0.080769814550877,0.006349755451083,-0.145893976092339,0.008194399066269,-0.041628912091255,0.041018351912498,0.100201234221458,-0.042516432702541,0.085978984832764,0.144602879881859,-0.105127498507500,0.104412056505680,-0.055689681321383));
res += mul(Get(s3,-dx,-dy), float4x4(-0.010487557388842,-0.108539462089539,-0.031057843938470,0.017459753900766,0.031692489981651,0.009936849586666,0.023603880777955,0.070398993790150,-0.018760154023767,-0.036887869238853,0.278929412364960,0.145663872361183,-0.018834345042706,-0.189886227250099,-0.089708119630814,-0.139540418982506));
res += mul(Get(s3,-dx,0), float4x4(-0.000111372115498,0.059494573622942,0.081483155488968,-0.054557532072067,0.153050273656845,-0.217683032155037,0.069340623915195,0.075256422162056,-0.119683273136616,0.057216364890337,0.195692807435989,0.011716753244400,0.056916218250990,0.128348961472511,-0.001930113881826,0.077406853437424));
res += mul(Get(s3,-dx,dy), float4x4(0.098047778010368,0.062580019235611,0.034240059554577,0.066771797835827,-0.072362579405308,0.035086877644062,0.098002739250660,0.133581385016441,-0.043630108237267,-0.173996478319168,-0.095490463078022,-0.165456786751747,-0.225588560104370,0.041432429105043,-0.088098429143429,0.083018943667412));
res += mul(Get(s3,0,-dy), float4x4(0.006882885936648,0.069111697375774,0.123466424643993,0.025431279093027,0.083207428455353,-0.126512065529823,0.103649444878101,0.013022267259657,-0.015005985274911,0.187813177704811,-0.064870901405811,0.144552543759346,-0.059178002178669,-0.052301600575447,-0.039682682603598,0.075926281511784));
res += mul(Get(s3,0,0), float4x4(-0.044956736266613,-0.064205497503281,0.131946131587029,0.008611780591309,-0.143861413002014,-0.066885195672512,0.108339667320251,0.003357567358762,0.086921334266663,-0.039303779602051,-0.022358557209373,0.050861466675997,-0.027853600680828,0.093447305262089,-0.207760304212570,0.086143411695957));
res += mul(Get(s3,0,dy), float4x4(-0.146907687187195,-0.145740747451782,0.080031082034111,0.052099373191595,-0.209797233343124,-0.153865426778793,-0.066671878099442,-0.023698339238763,0.041136909276247,-0.052511699497700,0.038916449993849,-0.128032937645912,0.061284027993679,-0.036234732717276,-0.048211179673672,-0.028318073600531));
res += mul(Get(s3,dx,-dy), float4x4(-0.081726372241974,-0.067667536437511,0.005299584008753,-0.039257403463125,0.141364395618439,0.078015998005867,0.115756154060364,-0.140238672494888,-0.068811282515526,-0.130793571472168,-0.017070848494768,0.017483128234744,0.067233100533485,0.125126004219055,-0.017502153292298,-0.047575559467077));
res += mul(Get(s3,dx,0), float4x4(-0.163100317120552,0.120288446545601,0.020706586539745,0.093937590718269,-0.034779008477926,0.118216231465340,0.013663846999407,-0.019074132665992,-0.129627287387848,-0.063908353447914,-0.150619730353355,-0.004433623049408,0.041894134134054,0.218031883239746,0.051898103207350,-0.045204617083073));
res += mul(Get(s3,dx,dy), float4x4(-0.057497788220644,0.116736531257629,-0.028244422748685,-0.036497719585896,-0.196102201938629,0.003852944122627,0.046849541366100,-0.097603231668472,-0.129270493984222,0.030767466872931,-0.072060316801071,0.152901783585548,0.006571334321052,0.058209847658873,-0.025788199156523,0.054467655718327));
res = max(float4(0,0,0,0), res);
return res;
}
