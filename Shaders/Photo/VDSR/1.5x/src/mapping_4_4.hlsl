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
res += mul(Get(s0,-dx,-dy), float4x4(0.011732923798263,-0.042850129306316,0.085159659385681,-0.041813347488642,0.007086272817105,-0.096937298774719,-0.008230488747358,0.002482011215761,-0.022821823135018,0.113321825861931,0.042488787323236,0.059589941054583,-0.031212484464049,-0.151514053344727,-0.027145035564899,0.083803579211235));
res += mul(Get(s0,-dx,0), float4x4(0.056330766528845,0.113955527544022,-0.021248131990433,0.047112490981817,-0.020495871081948,-0.028942530974746,0.005999654531479,-0.050308182835579,0.004471543245018,0.028445772826672,-0.024243345484138,0.059977479279041,0.116718277335167,-0.082060880959034,-0.009797396138310,-0.018235681578517));
res += mul(Get(s0,-dx,dy), float4x4(0.030424322932959,0.110686928033829,0.058658968657255,0.075239367783070,0.021045984700322,-0.062524482607841,-0.068738557398319,0.034179493784904,-0.070394881069660,0.169460877776146,0.130493134260178,0.058072470128536,-0.053476102650166,-0.060349944978952,0.017118487507105,0.130820780992508));
res += mul(Get(s0,0,-dy), float4x4(0.037079166620970,0.010161220096052,0.041439041495323,0.080299429595470,0.118744947016239,-0.108707733452320,-0.005521201062948,-0.021912714466453,0.024414770305157,-0.044194735586643,0.004657218232751,0.075715839862823,-0.025041686370969,-0.008362391032279,-0.025865664705634,0.143524333834648));
res += mul(Get(s0,0,0), float4x4(0.202716752886772,-0.032665189355612,-0.024708842858672,-0.080600969493389,0.015197314321995,-0.037344630807638,0.054218694567680,0.035818938165903,0.012363915331662,0.068532630801201,0.222031533718109,-0.039594866335392,0.339079022407532,-0.059806417673826,-0.055338092148304,-0.059023845940828));
res += mul(Get(s0,0,dy), float4x4(0.213095828890800,0.024390742182732,0.052127376198769,0.022819759324193,0.068480886518955,-0.003714481135830,-0.033527690917253,0.005304235965014,-0.020401580259204,0.008287552744150,-0.043312910944223,0.020378140732646,-0.030709749087691,-0.011609412729740,0.071562595665455,0.065757937729359));
res += mul(Get(s0,dx,-dy), float4x4(0.094091385602951,0.011708117090166,-0.029990406706929,0.062677547335625,0.019906725734472,-0.007100369315594,0.028088575229049,0.022307621315122,0.046567566692829,0.014152503572404,-0.143787905573845,0.041489958763123,0.024259341880679,0.052440859377384,0.022010203450918,0.056396219879389));
res += mul(Get(s0,dx,0), float4x4(0.014446305111051,0.067821606993675,-0.041587550193071,-0.062898881733418,-0.029696540907025,-0.040329203009605,-0.041303213685751,-0.090246148407459,-0.028184732422233,-0.047313578426838,0.070517376065254,-0.046182673424482,-0.044846244156361,-0.161241888999939,0.030162926763296,0.014311711303890));
res += mul(Get(s0,dx,dy), float4x4(-0.008156140334904,0.066616185009480,-0.045258287340403,-0.060650177299976,0.091845087707043,-0.054309666156769,-0.071975521743298,0.002868070732802,0.010617470368743,0.005697471555322,-0.082888752222061,-0.146771967411041,-0.018517548218369,-0.115565568208694,-0.073977142572403,0.052892293781042));
res += mul(Get(s1,-dx,-dy), float4x4(-0.079716660082340,-0.096121191978455,0.012132703326643,-0.012868301011622,-0.003785585518926,-0.140066057443619,-0.027174312621355,-0.047948308289051,0.093117289245129,-0.003990761470050,-0.007766472175717,-0.033066343516111,0.104049481451511,-0.000108160289528,0.040835928171873,-0.062737926840782));
res += mul(Get(s1,-dx,0), float4x4(-0.022405400872231,-0.040312558412552,0.080897852778435,-0.015240699984133,0.052484493702650,0.010370865464211,0.043419238179922,-0.004506728611887,-0.016003329306841,0.062338121235371,0.000614739721641,-0.026731437072158,0.070260509848595,0.040340203791857,0.053275525569916,-0.021243244409561));
res += mul(Get(s1,-dx,dy), float4x4(-0.043244332075119,-0.089900501072407,0.082720011472702,0.023333596065640,-0.004555502906442,0.139030575752258,-0.043060485273600,-0.031163686886430,-0.000784842937719,0.112469099462032,0.015211606398225,-0.064008675515652,0.003860110184178,0.009131046012044,-0.072021581232548,-0.018769802525640));
res += mul(Get(s1,0,-dy), float4x4(0.057210404425859,-0.114354886114597,-0.019173637032509,-0.014746886678040,-0.138101920485497,0.091118164360523,0.081918209791183,0.109148852527142,-0.008966753259301,-0.060259331017733,-0.045654416084290,-0.019429991021752,0.033884029835463,-0.028962453827262,0.036748312413692,-0.011927657760680));
res += mul(Get(s1,0,0), float4x4(-0.002785495715216,-0.054305106401443,0.043749410659075,-0.052921652793884,-0.069051124155521,0.054048959165812,0.010380189865828,-0.013944282196462,-0.034424405544996,0.090505413711071,-0.027536537498236,-0.041701916605234,0.098039209842682,-0.006783021148294,-0.020760595798492,-0.027203820645809));
res += mul(Get(s1,0,dy), float4x4(-0.018472408875823,-0.128219574689865,0.038718838244677,-0.048638276755810,0.040728904306889,-0.105074077844620,-0.057940870523453,0.050539921969175,-0.033018503338099,-0.079018644988537,-0.042983639985323,-0.006560072302818,0.094505764544010,0.040315806865692,-0.027667762711644,-0.057867288589478));
res += mul(Get(s1,dx,-dy), float4x4(0.069992363452911,-0.108952865004539,-0.040731415152550,0.049809824675322,0.036852370947599,-0.126649975776672,-0.069032222032547,0.083284437656403,0.071487702429295,0.069761194288731,0.006032759789377,-0.091299220919609,0.084924340248108,-0.064026646316051,0.024063158780336,-0.001084747840650));
res += mul(Get(s1,dx,0), float4x4(0.004189342726022,-0.111734777688980,0.130122885107994,-0.062837071716785,-0.023516226559877,0.018202731385827,0.171336755156517,0.031374845653772,0.009568113833666,0.025522163137794,-0.058321505784988,-0.061855878680944,0.083677597343922,0.029064647853374,0.005448385141790,0.005974313244224));
res += mul(Get(s1,dx,dy), float4x4(0.029448073357344,-0.205009013414383,0.019479969516397,-0.028741665184498,-0.001178089529276,0.053356461226940,-0.040929824113846,0.064607247710228,-0.052797045558691,-0.032152757048607,-0.009072377346456,-0.065643899142742,0.031265255063772,0.001925934106112,-0.073628924787045,-0.011871586553752));
res += mul(Get(s2,-dx,-dy), float4x4(-0.075408495962620,0.145834550261497,-0.010992905125022,0.159673169255257,-0.021798104047775,0.094119906425476,0.004570556338876,0.083083592355251,0.017828958109021,-0.073537468910217,0.011239971034229,0.077451236546040,-0.041595980525017,-0.004965787753463,-0.030030244961381,-0.052744284272194));
res += mul(Get(s2,-dx,0), float4x4(-0.017879975959659,-0.136627539992332,-0.016232920810580,0.084558181464672,-0.182566970586777,0.036202985793352,-0.024870578199625,0.001081028254703,-0.064992450177670,0.075170427560806,-0.066525533795357,0.089542083442211,0.017350692301989,0.085890032351017,-0.020650247111917,0.001294908346608));
res += mul(Get(s2,-dx,dy), float4x4(0.055903334170580,0.118241555988789,0.026988822966814,0.124682940542698,-0.033576279878616,0.088426068425179,-0.026331849396229,0.116246201097965,-0.058010891079903,-0.039538245648146,0.044938031584024,-0.069811642169952,-0.079036161303520,0.035365644842386,-0.011951191350818,0.061809133738279));
res += mul(Get(s2,0,-dy), float4x4(-0.008633466437459,0.177250802516937,-0.005483615212142,-0.172395214438438,-0.080164782702923,0.017508739605546,0.081285767257214,-0.109947636723518,-0.059865150600672,-0.056708805263042,-0.038598008453846,0.156260818243027,-0.058184426277876,0.074302345514297,0.099559582769871,-0.027702864259481));
res += mul(Get(s2,0,0), float4x4(-0.058324027806520,0.033457282930613,0.221188142895699,0.135472670197487,0.084074541926384,-0.046207532286644,0.028072703629732,0.079874120652676,0.070629477500916,0.064133733510971,-0.049008838832378,0.047799278050661,-0.040615402162075,-0.023880921304226,-0.125993311405182,-0.052463453263044));
res += mul(Get(s2,0,dy), float4x4(-0.001862648641691,0.021223131567240,-0.109728388488293,-0.109819687902927,0.013293945230544,0.072819553315639,0.018948167562485,-0.100283324718475,-0.058205477893353,-0.028044819831848,0.092204630374908,0.080729722976685,0.300569236278534,0.030814586207271,0.003517687087879,0.018220270052552));
res += mul(Get(s2,dx,-dy), float4x4(0.001512593356892,-0.103450894355774,-0.083736576139927,-0.088340640068054,0.009494926780462,-0.038367297500372,0.031576752662659,-0.076739542186260,0.050759382545948,-0.070393316447735,-0.026860140264034,0.045145045965910,-0.012277189642191,0.076260551810265,0.065646126866341,-0.170314326882362));
res += mul(Get(s2,dx,0), float4x4(-0.002389200497419,-0.060168877243996,0.120394818484783,-0.048024643212557,-0.015088504180312,-0.041525956243277,0.005494242999703,0.133214369416237,0.030482053756714,0.016447005793452,-0.026572763919830,0.070127665996552,-0.097791984677315,0.106033392250538,0.001872892724350,-0.180472895503044));
res += mul(Get(s2,dx,dy), float4x4(-0.048013359308243,-0.077893577516079,-0.173447281122208,-0.041893243789673,-0.033567696809769,-0.023805402219296,-0.034680847078562,-0.111283645033836,0.002413872163743,-0.022300543263555,-0.042235147207975,0.126021653413773,0.094530254602432,-0.004028979688883,0.017890829592943,-0.140188232064247));
res += mul(Get(s3,-dx,-dy), float4x4(0.001438628416508,0.023834569379687,-0.099286660552025,-0.001460008788854,-0.004344071727246,0.201464444398880,0.032646354287863,0.082044593989849,0.085545167326927,-0.105917282402515,-0.006150659639388,0.033553507179022,-0.063991144299507,0.023834563791752,0.029574664309621,0.146648958325386));
res += mul(Get(s3,-dx,0), float4x4(-0.028996733948588,-0.159703448414803,-0.028320755809546,-0.023483335971832,-0.000235930448980,0.129277676343918,-0.037034902721643,0.020000528544188,0.000141639713547,-0.084396921098232,-0.005900352261961,0.117057763040066,0.169200554490089,0.007248843554407,-0.025280078873038,0.149633213877678));
res += mul(Get(s3,-dx,dy), float4x4(-0.098020777106285,-0.099212780594826,-0.037059273570776,0.003309126943350,-0.043010890483856,0.051492646336555,0.055200621485710,-0.104969590902328,0.041844885796309,-0.046619419008493,-0.020256469026208,-0.032782092690468,0.030287750065327,-0.037458807229996,0.028208890929818,0.026809325441718));
res += mul(Get(s3,0,-dy), float4x4(0.085799872875214,0.135207220911980,-0.015572402626276,0.046445295214653,-0.005870219785720,0.131544709205627,0.005642919335514,-0.119129627943039,0.008574711158872,-0.149521276354790,0.106533877551556,0.021727647632360,-0.089167013764381,0.159991562366486,-0.030237875878811,0.021768160164356));
res += mul(Get(s3,0,0), float4x4(-0.112642839550972,0.078730858862400,0.175517290830612,0.055125925689936,0.040305454283953,0.037713147699833,-0.023222858086228,-0.011043499223888,-0.083992689847946,-0.190589979290962,-0.043601986020803,0.080431990325451,-0.073383383452892,-0.059937849640846,0.036146055907011,0.060753207653761));
res += mul(Get(s3,0,dy), float4x4(0.006022561341524,-0.035273496061563,-0.129864320158958,0.028632167726755,0.083592206239700,0.080365307629108,0.102714240550995,-0.149784713983536,-0.072009935975075,-0.152322679758072,0.067397840321064,0.058268729597330,0.041103255003691,-0.043862119317055,0.000627043482382,-0.085248909890652));
res += mul(Get(s3,dx,-dy), float4x4(-0.018639674410224,0.049476899206638,-0.019896976649761,0.024343864992261,-0.008623493835330,0.027775278314948,0.029597487300634,-0.156606063246727,0.025310495868325,-0.085683062672615,0.071731358766556,0.023304881528020,-0.019355937838554,-0.028836553916335,0.168015807867050,-0.053284600377083));
res += mul(Get(s3,dx,0), float4x4(0.043166559189558,0.087061487138271,0.027664456516504,-0.082582928240299,0.005263097118586,0.040800917893648,0.000341392762493,-0.184755280613899,0.008580062538385,-0.116779290139675,-0.034662079066038,0.005741750821471,-0.054874829947948,-0.017530299723148,-0.093950331211090,-0.040511190891266));
res += mul(Get(s3,dx,dy), float4x4(0.007732433266938,-0.071489505469799,0.009977755136788,-0.009355240501463,0.011305360123515,0.035287477076054,0.038773290812969,-0.198831900954247,0.039587952196598,-0.179953396320343,-0.017214080318809,0.040266495198011,-0.022802861407399,-0.019182926043868,0.049868218600750,0.001220730831847));
return max(float4(0,0,0,0), res);
}
