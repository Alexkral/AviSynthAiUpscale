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
float4 res = float4(0.038624178618193,-0.018022099509835,-0.158822610974312,-0.048257041722536);
res += mul(Get(s0,-dx,-dy), float4x4(0.002520932815969,-0.076666384935379,0.066022999584675,-0.046343371272087,0.070702522993088,0.030727433040738,-0.048835266381502,-0.066429875791073,0.059757851064205,0.130525216460228,0.043075930327177,0.058327566832304,0.005103899165988,0.166543483734131,0.094609327614307,-0.143233552575111));
res += mul(Get(s0,-dx,0), float4x4(0.098564095795155,-0.028128098696470,-0.056290868669748,-0.083657085895538,-0.050890292972326,0.148736283183098,0.058233361691236,-0.067037269473076,0.056883726269007,-0.081786088645458,0.036538418382406,0.053900018334389,0.026409735903144,0.158073410391808,0.017958136275411,-0.022534308955073));
res += mul(Get(s0,-dx,dy), float4x4(-0.003624503267929,0.033266779035330,-0.021606501191854,-0.217812955379486,-0.020207567140460,-0.036811951547861,0.132693395018578,0.070674873888493,0.079215280711651,0.021748114377260,0.106537759304047,0.015506801195443,0.053074944764376,0.089163638651371,-0.129685103893280,0.066206187009811));
res += mul(Get(s0,0,-dy), float4x4(-0.046676229685545,0.045205958187580,-0.091954149305820,0.086571633815765,-0.057512957602739,0.339337021112442,-0.118747428059578,-0.059004083275795,0.052359081804752,-0.035393439233303,0.150559902191162,0.060291543602943,0.121582135558128,-0.058791689574718,-0.022942557930946,-0.234943822026253));
res += mul(Get(s0,0,0), float4x4(0.066081151366234,0.107407450675964,-0.225313618779182,-0.121644780039787,-0.015635291114450,0.071245297789574,-0.214729160070419,-0.062634661793709,0.031417600810528,0.056840099394321,0.015606957487762,0.048764541745186,0.055488981306553,0.016473865136504,-0.180853694677353,0.064452931284904));
res += mul(Get(s0,0,dy), float4x4(-0.017987476661801,0.121999323368073,0.048264130949974,0.007576613686979,0.055818956345320,-0.139346480369568,0.117068849503994,-0.057665340602398,-0.026351144537330,0.011203988455236,0.109144985675812,0.023743117228150,-0.032458193600178,0.038582056760788,0.012899085879326,0.035110026597977));
res += mul(Get(s0,dx,-dy), float4x4(-0.007781176827848,0.025359267368913,-0.087082274258137,0.035568151623011,-0.178359493613243,0.047357339411974,-0.040937863290310,0.009719368070364,-0.042799130082130,0.050064649432898,0.053021900355816,0.049244485795498,-0.024802101776004,0.026591788977385,0.005483997054398,-0.102069497108459));
res += mul(Get(s0,dx,0), float4x4(0.016790235415101,0.120989568531513,0.041247371584177,0.055665750056505,-0.010719387792051,-0.056091342121363,-0.095971763134003,-0.054011944681406,-0.020327989012003,-0.103597946465015,0.149584040045738,-0.120876006782055,-0.081623390316963,-0.047090034931898,0.191280230879784,-0.129473507404327));
res += mul(Get(s0,dx,dy), float4x4(0.000101504017948,-0.063511975109577,-0.014754508621991,0.139062553644180,0.043618220835924,0.033446136862040,0.045752834528685,-0.104511722922325,-0.120057798922062,0.027936581522226,0.003680869471282,-0.047953486442566,0.065812513232231,0.041024655103683,-0.055354300886393,-0.024003243073821));
res += mul(Get(s1,-dx,-dy), float4x4(0.004404949489981,0.157802104949951,-0.044286213815212,0.055395431816578,0.112736441195011,0.049531038850546,0.069388628005981,0.017663629725575,0.066992461681366,-0.083272166550159,-0.055350378155708,-0.011128805577755,-0.042880471795797,-0.013349994085729,0.039155624806881,0.074215918779373));
res += mul(Get(s1,-dx,0), float4x4(0.101087354123592,-0.181846067309380,0.182318165898323,-0.173153191804886,0.180615186691284,-0.001225333428010,-0.091571755707264,0.034852914512157,-0.113414399325848,0.245139479637146,-0.016800433397293,-0.121070258319378,0.103384882211685,0.057771719992161,0.223301112651825,0.029451549053192));
res += mul(Get(s1,-dx,dy), float4x4(-0.042024832218885,0.133059427142143,0.100571468472481,0.103654049336910,0.172655194997787,0.105462111532688,0.127272367477417,0.011392522603273,-0.135318160057068,0.065988443791866,0.110615715384483,-0.055007293820381,-0.064586609601974,-0.143768578767776,-0.026487629860640,0.050492979586124));
res += mul(Get(s1,0,-dy), float4x4(0.013077007606626,0.171999558806419,-0.190037593245506,-0.007165596820414,-0.049100782722235,-0.181939065456390,0.123425066471100,-0.009644314646721,0.040743391960859,-0.014747812412679,-0.005908797029406,-0.036367364227772,0.028030345216393,0.162384465336800,0.049465917050838,0.072775363922119));
res += mul(Get(s1,0,0), float4x4(0.066410176455975,0.045926596969366,0.127820804715157,-0.033688690513372,0.016925772652030,0.123327240347862,-0.145658999681473,-0.001426097820513,-0.033321786671877,0.185300230979919,-0.142546266317368,0.115155413746834,0.068316631019115,-0.047356475144625,0.176719337701797,-0.067365072667599));
res += mul(Get(s1,0,dy), float4x4(0.035912223160267,-0.063087739050388,0.194624304771423,-0.036718271672726,0.087681233882904,0.005985791794956,0.159632921218872,0.182887941598892,-0.051662094891071,0.149019405245781,-0.121496468782425,0.056469090282917,0.046961296349764,-0.098841711878777,0.261439621448517,-0.267545819282532));
res += mul(Get(s1,dx,-dy), float4x4(0.037728890776634,-0.075748249888420,-0.012003992684186,0.112811081111431,0.014468861743808,0.120452605187893,0.017150010913610,-0.074882708489895,0.025691067799926,0.067371815443039,0.022184390574694,-0.029280431568623,0.023981332778931,-0.035473283380270,0.148357182741165,0.070785373449326));
res += mul(Get(s1,dx,0), float4x4(0.276892066001892,-0.187036365270615,-0.024654807522893,0.243311032652855,-0.049753945320845,0.334096193313599,-0.023627148941159,0.019632050767541,0.080396704375744,-0.026952700689435,0.148589536547661,-0.048438258469105,0.012410358525813,-0.045042283833027,0.189548328518867,0.074709065258503));
res += mul(Get(s1,dx,dy), float4x4(-0.048774711787701,0.106709502637386,0.028149330988526,0.014510987326503,-0.076014794409275,0.124983437359333,0.152796581387520,0.061362985521555,0.003460096893832,0.132097899913788,-0.092884138226509,0.048657957464457,0.087538897991180,-0.053114656358957,0.030851110816002,-0.049867272377014));
res += mul(Get(s2,-dx,-dy), float4x4(0.018591159954667,-0.018700603395700,-0.034537889063358,-0.029014384374022,-0.014815974980593,-0.137837603688240,-0.027101539075375,0.088807418942451,-0.053319949656725,0.004782204516232,0.006896683014929,0.140393391251564,-0.044858336448669,-0.120748654007912,0.079407706856728,-0.007628708612174));
res += mul(Get(s2,-dx,0), float4x4(0.044016834348440,-0.005277973134071,0.046996124088764,-0.102265775203705,0.010069124400616,0.121735744178295,-0.152672007679939,-0.185769245028496,-0.065830722451210,0.102604627609253,-0.064849369227886,0.000431024993304,-0.044093750417233,-0.264636754989624,-0.098844423890114,0.128516033291817));
res += mul(Get(s2,-dx,dy), float4x4(-0.032269954681396,-0.016055690124631,0.243918716907501,0.031980536878109,-0.024822300300002,-0.011797811836004,0.045522455126047,0.004183499608189,-0.031689006835222,-0.121321558952332,-0.016302170231938,0.031969040632248,-0.039940942078829,0.043436653912067,-0.017916291952133,-0.090878032147884));
res += mul(Get(s2,0,-dy), float4x4(-0.042379397898912,-0.030555021017790,-0.020653937011957,-0.147166773676872,0.139497041702271,0.074634566903114,-0.067374818027020,-0.011392568238080,-0.072716474533081,-0.043001599609852,-0.125277489423752,0.091329261660576,0.030263246968389,-0.154296427965164,-0.143788784742355,0.008742199279368));
res += mul(Get(s2,0,0), float4x4(0.018475482240319,0.053587727248669,-0.288050711154938,0.263986408710480,0.154980599880219,-0.299550443887711,0.047718375921249,-0.016844108700752,-0.139865785837173,0.126112639904022,0.125813931226730,-0.138168334960938,0.002742652548477,-0.017820321023464,-0.003244532970712,-0.067928552627563));
res += mul(Get(s2,0,dy), float4x4(0.012143951840699,-0.116250701248646,0.120893448591232,0.047995358705521,0.054869428277016,-0.091286055743694,0.013824106194079,-0.063190877437592,-0.064212866127491,-0.170151278376579,-0.027250740677118,-0.000117347044579,-0.100568532943726,0.279943048954010,-0.139864593744278,0.099579207599163));
res += mul(Get(s2,dx,-dy), float4x4(-0.045961152762175,-0.101751141250134,0.032440617680550,-0.004186439793557,0.108362689614296,-0.045813381671906,-0.105032891035080,0.025791114196181,0.024526420980692,-0.002104347338900,-0.006845490075648,-0.054879229515791,0.103566825389862,-0.008018288761377,0.007358444388956,0.050632711499929));
res += mul(Get(s2,dx,0), float4x4(0.090035915374756,-0.078478768467903,0.126119524240494,-0.009278142824769,0.066772490739822,-0.140319198369980,0.020041991025209,-0.052767585963011,-0.074722453951836,0.056574482470751,-0.066892057657242,-0.078808553516865,-0.105738140642643,0.136430278420448,0.014253642410040,-0.003449583426118));
res += mul(Get(s2,dx,dy), float4x4(-0.053009189665318,-0.240268692374229,0.175940230488777,-0.102656997740269,0.033829621970654,-0.020163586363196,-0.038842663168907,0.040234591811895,-0.044414203613997,-0.086571708321571,-0.039653487503529,-0.058599937707186,-0.104699954390526,-0.027305908501148,-0.044409468770027,0.105788722634315));
res += mul(Get(s3,-dx,-dy), float4x4(0.001513379509561,0.011937014758587,0.061044815927744,0.009418575093150,0.014589434489608,0.011683701537549,-0.060724556446075,0.003995185252279,-0.026998661458492,-0.032646168023348,-0.012521680444479,-0.059719257056713,-0.007750932127237,-0.058127503842115,-0.047544624656439,0.071535013616085));
res += mul(Get(s3,-dx,0), float4x4(0.042622786015272,-0.063352636992931,-0.012660135515034,-0.125915825366974,-0.103730916976929,0.072496250271797,0.000791155791376,0.090160988271236,0.050665616989136,0.044817537069321,0.004924182314426,-0.058304205536842,-0.120916910469532,0.156328529119492,-0.007886141538620,0.056021265685558));
res += mul(Get(s3,-dx,dy), float4x4(0.029734183102846,0.074337840080261,-0.005206854548305,0.016878403723240,-0.034720331430435,0.011445325799286,0.152172431349754,0.151412442326546,0.112273529171944,-0.093960724771023,0.026782495900989,0.016526563093066,-0.041350275278091,0.009758224710822,-0.061223637312651,0.017161119729280));
res += mul(Get(s3,0,-dy), float4x4(0.045290626585484,-0.078075058758259,0.033523287624121,0.171990588307381,0.020833613350987,-0.110723838210106,-0.002334255026653,-0.106352306902409,0.012253030203283,0.056215282529593,-0.090569362044334,-0.002999796066433,-0.107885055243969,0.068763352930546,-0.083268858492374,0.122784994542599));
res += mul(Get(s3,0,0), float4x4(0.129796028137207,-0.383255958557129,0.323948085308075,0.002527296775952,-0.095179170370102,0.174051046371460,-0.155242308974266,0.143413454294205,-0.048947788774967,-0.050390150398016,-0.115532681345940,0.041434377431870,0.043196514248848,0.230995267629623,-0.180887475609779,-0.121406145393848));
res += mul(Get(s3,0,dy), float4x4(-0.104068025946617,0.142546176910400,-0.074030064046383,0.003335605142638,-0.018054274842143,0.156588315963745,-0.016037963330746,-0.144708886742592,0.064942039549351,-0.134259894490242,-0.032591067254543,-0.005966953933239,-0.072645053267479,0.119028732180595,-0.057875812053680,-0.009527292102575));
res += mul(Get(s3,dx,-dy), float4x4(-0.067502841353416,0.088618248701096,0.000833500351291,-0.130183905363083,0.017461389303207,0.031265083700418,-0.025253839790821,-0.041225135326385,-0.027072479948401,0.068668395280838,-0.020166156813502,0.055665288120508,-0.093919634819031,0.134115070104599,-0.140105277299881,0.019131416454911));
res += mul(Get(s3,dx,0), float4x4(-0.295167684555054,0.278040438890457,-0.087764501571655,-0.381030976772308,-0.027752798050642,-0.005963771604002,-0.195443660020828,-0.054140940308571,0.014348061755300,-0.043943271040916,0.072006851434708,-0.084830880165100,0.055432092398405,-0.032938752323389,-0.089003726840019,0.083075866103172));
res += mul(Get(s3,dx,dy), float4x4(-0.018068686127663,-0.018239837139845,0.047064423561096,-0.133862555027008,0.035712070763111,-0.013502327725291,-0.006573283113539,-0.024436037987471,-0.027853852137923,0.163155496120453,-0.006232947576791,-0.056420542299747,-0.047560166567564,-0.068019494414330,-0.124135486781597,-0.000684638565872));
res += mul(Get(s4,-dx,-dy), float4x4(-0.019845716655254,-0.178333461284637,0.110017642378807,0.075115643441677,0.042622879147530,-0.028238127008080,-0.042257327586412,0.029026538133621,0.054783113300800,0.119302868843079,-0.223619282245636,0.128830641508102,-0.038904376327991,-0.180238410830498,0.328461676836014,-0.057306647300720));
res += mul(Get(s4,-dx,0), float4x4(0.021503439173102,-0.112641282379627,0.127576604485512,-0.079916439950466,-0.070959076285362,-0.151976063847542,-0.019245333969593,0.279038965702057,0.027910038828850,-0.373608618974686,0.203403487801552,-0.084493972361088,-0.029467986896634,0.016166580840945,0.252323746681213,-0.091611415147781));
res += mul(Get(s4,-dx,dy), float4x4(-0.045079480856657,-0.028298864141107,-0.116147272288799,0.054298695176840,-0.086404033005238,-0.042142260819674,-0.009026342071593,0.154657989740372,-0.093794994056225,-0.058886919170618,-0.078663818538189,0.072765864431858,0.048387188464403,-0.062128111720085,0.083942808210850,0.029184052720666));
res += mul(Get(s4,0,-dy), float4x4(-0.139286190271378,0.155708000063896,0.152537316083908,0.241460487246513,0.073898009955883,-0.151462823152542,-0.154531896114349,-0.140603527426720,-0.044615648686886,-0.071640565991402,-0.055495165288448,-0.029176997020841,0.021548833698034,-0.291511803865433,0.106751672923565,0.149890676140785));
res += mul(Get(s4,0,0), float4x4(0.124055765569210,0.118918873369694,-0.055750619620085,-0.117538645863533,0.509708225727081,0.087499782443047,0.173178508877754,-0.001731950207613,-0.123159326612949,-0.046687703579664,0.259808927774429,-0.070830114185810,-0.014678256586194,-0.095861382782459,0.075716055929661,-0.014270381070673));
res += mul(Get(s4,0,dy), float4x4(-0.056938506662846,-0.251235634088516,0.167894542217255,-0.021318174898624,-0.056000821292400,0.091172955930233,-0.019668137654662,-0.087152630090714,-0.159921392798424,0.001075160107575,0.051364146173000,-0.031103163957596,-0.020970318466425,-0.220793545246124,0.128514170646667,0.047050304710865));
res += mul(Get(s4,dx,-dy), float4x4(0.024954603984952,-0.158819004893303,0.155884712934494,-0.061030197888613,-0.179746791720390,-0.063655905425549,-0.068489462137222,-0.176829621195793,-0.033628206700087,-0.009333970956504,-0.049112834036350,0.042366795241833,0.142979919910431,-0.104391314089298,0.133774399757385,-0.047758381813765));
res += mul(Get(s4,dx,0), float4x4(0.027326852083206,-0.197623029351234,0.070195347070694,0.036713458597660,-0.062814325094223,0.061874501407146,0.058411948382854,-0.198898747563362,-0.094247400760651,0.033566437661648,-0.056799296289682,-0.020390635356307,-0.086560256779194,0.103701829910278,-0.051953855901957,-0.162844806909561));
res += mul(Get(s4,dx,dy), float4x4(-0.019822858273983,-0.086469665169716,0.122165024280548,-0.149453386664391,0.031021947041154,-0.057843592017889,0.047140404582024,-0.168664410710335,-0.064480938017368,0.021352332085371,-0.005345594603568,0.022381123155355,-0.028261026367545,-0.167085871100426,0.171400070190430,-0.085410512983799));
res += mul(Get(s5,-dx,-dy), float4x4(0.143516391515732,0.071820959448814,-0.019467903301120,0.049345605075359,-0.078143499791622,-0.039795581251383,0.044684514403343,-0.063160523772240,0.026383077725768,0.018864637240767,0.053600680083036,0.111824631690979,0.073235712945461,-0.029323216527700,-0.001433516852558,0.022921286523342));
res += mul(Get(s5,-dx,0), float4x4(-0.011422868818045,0.017675660550594,-0.012211034074426,-0.164056137204170,0.009886728599668,0.068057343363762,0.069595344364643,0.072225533425808,0.007516845129430,-0.083784237504005,-0.014123132452369,0.164738744497299,0.020582981407642,0.116950459778309,-0.094573251903057,-0.000953545211814));
res += mul(Get(s5,-dx,dy), float4x4(-0.014752878807485,-0.029823664575815,0.121011979877949,0.165851920843124,-0.046826053410769,-0.014656033366919,0.091533921658993,-0.069856047630310,-0.045683592557907,0.002382739912719,-0.139372602105141,0.045938845723867,0.082885786890984,-0.097295068204403,-0.041806239634752,-0.040807388722897));
res += mul(Get(s5,0,-dy), float4x4(0.037172291427851,-0.093367241322994,0.034304048866034,0.016575504094362,0.094833560287952,-0.440820336341858,0.011666090227664,0.048935189843178,-0.042239379137754,-0.160754710435867,0.108391642570496,0.162404000759125,0.080722257494926,0.003312630811706,0.063131839036942,0.087557025253773));
res += mul(Get(s5,0,0), float4x4(-0.023390665650368,-0.209952950477600,-0.018140075728297,0.103091053664684,-0.159336686134338,-0.010675018653274,0.055563993752003,0.059913534671068,-0.139761775732040,-0.169434443116188,-0.020388776436448,-0.011020439676940,0.036610595881939,-0.174946784973145,-0.132983744144440,0.017197487875819));
res += mul(Get(s5,0,dy), float4x4(-0.169442027807236,-0.059597752988338,0.059435874223709,0.030417801812291,0.036719772964716,0.056953001767397,-0.131874337792397,0.044394433498383,-0.094019532203674,0.173664003610611,-0.118837051093578,0.153811350464821,0.050200138241053,0.058735456317663,-0.073382176458836,0.051020763814449));
res += mul(Get(s5,dx,-dy), float4x4(0.004492791835219,-0.025227116420865,-0.037024650722742,0.057267144322395,-0.038166798651218,0.005121228750795,0.182481989264488,-0.102493748068810,0.000889760907739,-0.078225433826447,0.119760721921921,0.068469196557999,0.053187597543001,0.100517548620701,0.063429601490498,0.156423836946487));
res += mul(Get(s5,dx,0), float4x4(-0.120680429041386,-0.092033326625824,-0.123505085706711,-0.058062404394150,0.014649847522378,0.039359118789434,0.003302052849904,-0.078503288328648,0.093568339943886,0.009586505591869,0.083936169743538,0.016883458942175,0.087821245193481,-0.249304801225662,0.131043270230293,-0.086591005325317));
res += mul(Get(s5,dx,dy), float4x4(-0.004129186738282,0.154603376984596,-0.059115074574947,0.021289393305779,-0.001030620886013,-0.021571343764663,0.039168834686279,-0.004124705214053,-0.066594488918781,0.090755015611649,-0.042928595095873,0.062652386724949,-0.049068484455347,0.097196698188782,-0.152923241257668,0.011494724079967));
res = max(float4(0, 0, 0, 0), res) + float4(0.855911552906036,-0.112613737583160,-0.019006336107850,0.706688463687897) * min(float4(0, 0, 0, 0), res);
return res;
}
