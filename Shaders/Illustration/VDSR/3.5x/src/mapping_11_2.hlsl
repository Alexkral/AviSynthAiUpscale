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
res += mul(Get(s0,-dx,-dy), float4x4(-0.076191574335098,-0.008396922610700,-0.041754037141800,0.023729570209980,0.072904519736767,-0.163463845849037,0.069579273462296,0.187266662716866,0.001039947848767,-0.036270942538977,-0.068143405020237,0.151794984936714,-0.162561163306236,0.036105088889599,0.053015973418951,-0.039984662085772));
res += mul(Get(s0,-dx,0), float4x4(0.010211215354502,0.007919595576823,-0.136467322707176,0.161303460597992,0.070741899311543,-0.065159156918526,-0.062934942543507,0.027387555688620,0.107551105320454,0.015037847682834,-0.044682614505291,0.062111679464579,-0.133735686540604,0.071420207619667,0.019414583221078,-0.060890320688486));
res += mul(Get(s0,-dx,dy), float4x4(-0.131180703639984,-0.118047051131725,0.064259387552738,-0.165873676538467,-0.112466201186180,0.133344143629074,-0.182808965444565,-0.202594593167305,0.122086465358734,0.108927845954895,-0.041148331016302,-0.068600118160248,-0.171699300408363,-0.045497186481953,0.176349952816963,-0.202481701970100));
res += mul(Get(s0,0,-dy), float4x4(-0.222670406103134,0.043400850147009,-0.047229200601578,-0.045661736279726,0.023943550884724,-0.043242905288935,-0.138576626777649,-0.089485928416252,-0.215912461280823,0.065058052539825,-0.044710699468851,0.030338330194354,-0.068816557526588,0.018887858837843,-0.160905689001083,0.074198655784130));
res += mul(Get(s0,0,0), float4x4(-0.133006721735001,-0.026153577491641,0.032775647938251,0.106845892965794,-0.117239736020565,0.056130230426788,0.097377061843872,0.199692249298096,-0.035571414977312,-0.090768136084080,0.096751347184181,-0.033318948000669,-0.005187189672142,0.043824966996908,-0.044628348201513,0.024731017649174));
res += mul(Get(s0,0,dy), float4x4(-0.136936545372009,-0.055626101791859,0.045042850077152,0.024200461804867,-0.130595371127129,-0.226891785860062,-0.251417994499207,0.017742315307260,0.006921801716089,-0.018634915351868,-0.037755556404591,-0.146011024713516,-0.095326378941536,0.033793471753597,0.138536617159843,-0.121585041284561));
res += mul(Get(s0,dx,-dy), float4x4(-0.016215100884438,-0.040048401802778,-0.126141607761383,-0.155576169490814,0.056516058743000,-0.022772353142500,0.024274395778775,-0.100846081972122,-0.172884985804558,0.008536657318473,-0.107342883944511,0.143420442938805,-0.051373433321714,-0.059851147234440,-0.149764031171799,-0.031146619468927));
res += mul(Get(s0,dx,0), float4x4(0.089147262275219,-0.108716197311878,-0.040499243885279,-0.028363958001137,-0.121154412627220,-0.170524179935455,0.269750356674194,-0.015141803771257,0.060261253267527,0.013065228238702,0.070211768150330,-0.066071107983589,-0.145195275545120,-0.046529203653336,-0.063377544283867,-0.057758759707212));
res += mul(Get(s0,dx,dy), float4x4(-0.029906746000051,-0.062922380864620,-0.019416414201260,0.117455840110779,-0.072840459644794,-0.284292846918106,-0.270115345716476,0.020306430757046,-0.012410313822329,-0.034561283886433,0.129000961780548,-0.221155598759651,0.055740289390087,-0.110167816281319,0.043750580400229,-0.175373122096062));
res += mul(Get(s1,-dx,-dy), float4x4(-0.015659568831325,0.051121193915606,0.107685938477516,0.097414575517178,-0.178235694766045,0.045071270316839,-0.070875376462936,0.075711131095886,-0.013890827074647,0.089996702969074,0.068065412342548,-0.090687662363052,0.019472852349281,0.034865982830524,-0.042976111173630,-0.059006690979004));
res += mul(Get(s1,-dx,0), float4x4(-0.048824917525053,0.048832926899195,0.129879534244537,0.013410543091595,-0.207575276494026,-0.163949877023697,-0.196106880903244,-0.200777590274811,0.218655496835709,-0.071185000240803,-0.007715736981481,-0.076182954013348,-0.062504373490810,0.155602216720581,-0.047565031796694,-0.117035724222660));
res += mul(Get(s1,-dx,dy), float4x4(-0.076726421713829,0.013575388118625,0.039412993937731,-0.272419959306717,-0.067753456532955,-0.202468097209930,-0.071728236973286,-0.084081918001175,-0.055571444332600,0.076422691345215,-0.059178180992603,-0.034141711890697,-0.099862143397331,0.023005876690149,0.002361692022532,0.230101138353348));
res += mul(Get(s1,0,-dy), float4x4(-0.025290822610259,-0.147089287638664,0.101121038198471,0.184143736958504,-0.045686926692724,0.052949097007513,-0.076260164380074,0.216242954134941,0.054208502173424,-0.006833650171757,0.295110762119293,-0.049867492169142,-0.106823444366455,0.018792636692524,0.014979734085500,0.094221070408821));
res += mul(Get(s1,0,0), float4x4(-0.082884021103382,-0.090463176369667,0.051428858190775,0.262111216783524,-0.090521261096001,-0.044846538454294,-0.162394061684608,-0.154864192008972,0.077877901494503,-0.050646334886551,0.164361402392387,0.071321152150631,-0.161228135228157,-0.002973818685859,0.001316785695963,0.214299052953720));
res += mul(Get(s1,0,dy), float4x4(-0.106508716940880,-0.052476506680250,0.039699412882328,0.347464680671692,-0.101779647171497,-0.117600992321968,-0.176301807165146,-0.003833446651697,-0.000633339339402,-0.057733640074730,-0.041722230613232,0.106176301836967,-0.014988440088928,-0.123394884169102,0.251224935054779,-0.011719238944352));
res += mul(Get(s1,dx,-dy), float4x4(0.072013378143311,0.092389315366745,0.023513484746218,-0.046069011092186,0.184685021638870,-0.030481051653624,0.048831719905138,0.137380748987198,-0.049639437347651,0.096767626702785,0.253241002559662,-0.104276470839977,0.066436335444450,-0.172339767217636,0.032563056796789,-0.074072562158108));
res += mul(Get(s1,dx,0), float4x4(0.224642977118492,0.003409262280911,0.046196851879358,-0.022720998153090,-0.028735252097249,-0.101325117051601,-0.090785458683968,0.143166124820709,0.115158684551716,0.080034069716930,0.299172878265381,-0.170532524585724,-0.020028926432133,-0.197978630661964,-0.029776327311993,-0.007681351155043));
res += mul(Get(s1,dx,dy), float4x4(0.083002276718616,0.015620789490640,0.061274670064449,-0.094128787517548,-0.084394223988056,-0.082077786326408,-0.176976308226585,-0.013129843398929,0.110447846353054,0.036178108304739,-0.154776066541672,-0.110105410218239,0.043732229620218,-0.179864972829819,0.081483632326126,0.004739262163639));
res += mul(Get(s2,-dx,-dy), float4x4(-0.208247378468513,0.097702734172344,-0.146136358380318,-0.016019493341446,0.075865074992180,-0.138487532734871,-0.097075425088406,-0.014164322055876,-0.034272201359272,0.021537054330111,-0.088483661413193,-0.071639657020569,-0.089450687170029,0.036908194422722,0.089921556413174,-0.089397370815277));
res += mul(Get(s2,-dx,0), float4x4(-0.150083541870117,-0.084310933947563,-0.047640014439821,-0.020069202408195,-0.022019900381565,-0.108944460749626,-0.110690079629421,0.168172374367714,-0.051309145987034,-0.040195334702730,0.005604819860309,-0.112600393593311,-0.009113955311477,0.036260824650526,0.166940391063690,0.256429314613342));
res += mul(Get(s2,-dx,dy), float4x4(-0.086545161902905,-0.112453065812588,0.002317813457921,-0.054508287459612,-0.104922443628311,-0.285286754369736,0.099636405706406,0.074088513851166,-0.016710961237550,0.009154547937214,-0.007886647246778,-0.066742092370987,-0.061811275780201,-0.021783038973808,0.212011590600014,0.127801299095154));
res += mul(Get(s2,0,-dy), float4x4(-0.225154072046280,0.062950462102890,-0.153296872973442,-0.046219665557146,-0.202664285898209,-0.049890726804733,0.022296190261841,-0.049946345388889,0.137234896421432,-0.073352552950382,0.148931786417961,-0.144540026783943,0.264893919229507,0.224313631653786,-0.129270821809769,-0.132977202534676));
res += mul(Get(s2,0,0), float4x4(-0.050184249877930,-0.179051548242569,-0.044788926839828,0.148784250020981,0.240354552865028,-0.239830836653709,0.065543688833714,-0.088461458683014,0.095453947782516,-0.113668709993362,0.061118260025978,-0.129474833607674,-0.063529647886753,-0.084920391440392,-0.031298834830523,-0.033500406891108));
res += mul(Get(s2,0,dy), float4x4(0.172205880284309,-0.139946579933167,-0.058878555893898,0.079749502241611,-0.060637455433607,0.060194179415703,0.021464977413416,0.084195673465729,0.152707949280739,0.084580354392529,-0.063803546130657,-0.124824702739716,0.236407950520515,-0.006219946779311,-0.129394501447678,0.154221519827843));
res += mul(Get(s2,dx,-dy), float4x4(-0.087535962462425,0.089396230876446,-0.153925463557243,-0.000019600864107,0.310362666845322,0.136716827750206,0.375548034906387,-0.051768168807030,0.234133243560791,-0.012263931334019,0.141374930739403,-0.069671198725700,0.012302522547543,-0.063804320991039,0.304177701473236,-0.030489547178149));
res += mul(Get(s2,dx,0), float4x4(-0.141426980495453,0.015244764275849,0.039992570877075,0.011450518853962,0.087569229304790,0.074073962867260,0.000782983843237,-0.204306900501251,-0.103389546275139,-0.110253296792507,-0.007372706197202,-0.143058910965919,-0.025861069560051,0.032253097742796,0.087155759334564,-0.082501910626888));
res += mul(Get(s2,dx,dy), float4x4(-0.176657706499100,0.019579330459237,0.072155043482780,0.246212571859360,-0.128023445606232,0.365571141242981,0.115348838269711,-0.256226986646652,0.007773643825203,-0.005232947878540,-0.107430249452591,-0.167896300554276,0.064720720052719,0.038892369717360,0.213368251919746,-0.085140258073807));
res += mul(Get(s3,-dx,-dy), float4x4(0.102239690721035,0.289626955986023,0.013644801452756,0.037579685449600,-0.023162534460425,0.138895213603973,-0.019516434520483,-0.000467933277832,-0.061952598392963,-0.138979896903038,0.077835731208324,-0.004750665742904,0.024308951571584,-0.059510376304388,-0.135973036289215,-0.209625199437141));
res += mul(Get(s3,-dx,0), float4x4(0.057731341570616,0.118555583059788,0.005673575215042,-0.048520628362894,-0.233973681926727,-0.019984547048807,-0.162874728441238,0.264949291944504,0.006581162102520,-0.180895343422890,0.168830290436745,-0.000754792359658,-0.031102685257792,-0.204295635223389,-0.038044337183237,-0.209907621145248));
res += mul(Get(s3,-dx,dy), float4x4(0.346139132976532,0.045543074607849,0.062788300216198,0.139045774936676,-0.151037663221359,0.045010883361101,-0.037168826907873,-0.074999772012234,-0.028289040550590,0.038147602230310,0.023808680474758,0.407064408063889,0.134869128465652,-0.017387419939041,-0.117819115519524,0.102706171572208));
res += mul(Get(s3,0,-dy), float4x4(0.013953957706690,-0.024034643545747,0.032545909285545,0.027955647557974,0.042744580656290,0.080634370446205,-0.069585211575031,0.051831863820553,0.188540160655975,-0.174873337149620,0.181713804602623,-0.060866188257933,-0.039030142128468,-0.209383532404900,0.068183086812496,-0.186189860105515));
res += mul(Get(s3,0,0), float4x4(0.097019352018833,0.096236966550350,-0.049365106970072,-0.045342873781919,-0.005085377022624,0.065347768366337,-0.181309610605240,0.083667173981667,-0.133787825703621,-0.206158906221390,-0.087915681302547,-0.085882879793644,0.264483720064163,-0.209963023662567,0.033693127334118,-0.155393868684769));
res += mul(Get(s3,0,dy), float4x4(0.136531725525856,0.055598564445972,0.050693757832050,-0.188489168882370,-0.011001592501998,0.027674296870828,0.058116164058447,-0.205744177103043,-0.222413048148155,-0.057669475674629,-0.205405235290527,0.105390556156635,-0.093786209821701,-0.165339037775993,-0.057450134307146,-0.021800247952342));
res += mul(Get(s3,dx,-dy), float4x4(0.105961903929710,0.140634790062904,0.461599349975586,-0.006458874791861,0.122931249439716,0.058813020586967,0.073833778500557,0.094794251024723,0.067221350967884,0.124657906591892,0.059787116944790,-0.088576272130013,-0.166556492447853,0.083134219050407,-0.018219262361526,-0.254556775093079));
res += mul(Get(s3,dx,0), float4x4(0.181984871625900,0.068652324378490,-0.092320263385773,0.043213613331318,-0.034319058060646,-0.009812097065151,-0.055402126163244,0.187141284346581,-0.016277616843581,0.178266182541847,-0.078066959977150,-0.072163373231888,-0.015077513642609,-0.073740877211094,-0.034378729760647,-0.156824648380280));
res += mul(Get(s3,dx,dy), float4x4(0.091925173997879,0.117629759013653,0.096370257437229,-0.217057898640633,-0.136491775512695,-0.045746184885502,0.154390707612038,-0.149213388562202,-0.210804864764214,0.031105782836676,-0.133417204022408,-0.205584228038788,-0.197861969470978,0.016442345455289,0.004843652714044,-0.012283505871892));
return max(float4(0,0,0,0), res);
}
