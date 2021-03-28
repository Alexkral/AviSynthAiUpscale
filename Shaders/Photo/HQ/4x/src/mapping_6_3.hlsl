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
float4 res = float4(0.049188788980246,-0.114151522517204,-0.021114444360137,-0.037675015628338);
res += mul(Get(s0,-dx,-dy), float4x4(-0.029075661674142,0.022091347724199,0.053816013038158,-0.128223612904549,-0.064296737313271,-0.037601284682751,-0.079343505203724,0.084658749401569,-0.059771724045277,-0.013116016983986,0.016517529264092,0.139463365077972,-0.049623418599367,-0.091416321694851,0.007309662643820,-0.057598382234573));
res += mul(Get(s0,-dx,0), float4x4(0.076438732445240,0.147248446941376,0.110603086650372,-0.143477797508240,0.069865524768829,0.089288659393787,0.138649791479111,-0.072574526071548,-0.070278041064739,-0.025588970631361,-0.165270492434502,0.080419853329659,-0.068674281239510,-0.219059914350510,-0.116815447807312,-0.186439767479897));
res += mul(Get(s0,-dx,dy), float4x4(0.009618436917663,0.071113385260105,0.116830199956894,-0.055082388222218,0.156058296561241,-0.149654254317284,0.011286429129541,0.133836075663567,-0.038040317595005,0.011454015970230,-0.335968822240829,-0.050929155200720,0.010959597304463,-0.197703018784523,0.048065770417452,0.121184669435024));
res += mul(Get(s0,0,-dy), float4x4(-0.113774985074997,0.147604078054428,0.146909639239311,-0.077232442796230,-0.091906726360321,0.064909867942333,0.100058190524578,-0.042293325066566,0.002672358416021,-0.104050353169441,-0.032370451837778,0.011799121275544,-0.133159190416336,-0.064682230353355,-0.130473420023918,0.024057148024440));
res += mul(Get(s0,0,0), float4x4(-0.017151797190309,0.106475733220577,-0.131946802139282,-0.158647105097771,0.071826793253422,0.121376223862171,-0.183693751692772,-0.439533621072769,-0.026541473343968,-0.200995340943336,0.242267176508904,0.117406003177166,-0.004791238345206,-0.081117808818817,-0.017336454242468,0.277381360530853));
res += mul(Get(s0,0,dy), float4x4(-0.163841083645821,0.136336952447891,0.045748177915812,0.158041223883629,0.156790226697922,-0.075129829347134,0.073435865342617,0.191706776618958,-0.111961148679256,-0.047442141920328,-0.330792129039764,0.057078488171101,-0.084099560976028,-0.125921726226807,-0.015737973153591,0.196999073028564));
res += mul(Get(s0,dx,-dy), float4x4(0.140198871493340,0.148295462131500,-0.051041029393673,0.008658924140036,0.041083551943302,0.131721749901772,-0.036182049661875,-0.008928911760449,-0.290695518255234,-0.331401348114014,0.202669098973274,-0.218214750289917,0.000982615048997,-0.010372717864811,-0.121056757867336,-0.064293846487999));
res += mul(Get(s0,dx,0), float4x4(-0.223504230380058,0.443005234003067,-0.070751532912254,-0.245023787021637,-0.131713569164276,0.424372553825378,-0.047823917120695,-0.033065989613533,-0.456674039363861,-0.602364301681519,0.168963044881821,0.132144242525101,-0.055295981466770,-0.069204136729240,-0.042066447436810,-0.234548017382622));
res += mul(Get(s0,dx,dy), float4x4(0.075955830514431,-0.048378337174654,-0.056842990219593,-0.020015418529510,0.024973494932055,0.061215069144964,-0.070177763700485,-0.020587163046002,-0.254932075738907,-0.138206034898758,-0.169715091586113,0.105643972754478,0.069576323032379,-0.123664975166321,-0.066187471151352,-0.051857955753803));
res += mul(Get(s1,-dx,-dy), float4x4(-0.080950625240803,0.104080490767956,-0.060881033539772,-0.067134320735931,0.043084815144539,-0.239046975970268,0.073988363146782,0.193021431565285,-0.131499826908112,-0.061658304184675,-0.027031717821956,-0.132949754595757,0.084845967590809,0.056994482874870,-0.093757607042789,-0.046758476644754));
res += mul(Get(s1,-dx,0), float4x4(0.104260347783566,0.168231770396233,0.315486103296280,-0.121482752263546,-0.099751345813274,-0.184514984488487,-0.039598569273949,0.127426326274872,-0.046645637601614,-0.064091905951500,0.102017849683762,-0.038749951869249,-0.436004966497421,0.051978342235088,-0.057787325233221,0.040942333638668));
res += mul(Get(s1,-dx,dy), float4x4(0.042844638228416,0.151497185230255,0.021322809159756,-0.192518204450607,-0.104634769260883,-0.100501462817192,-0.042409345507622,0.047778867185116,0.091307669878006,-0.216148301959038,0.050073459744453,-0.074654221534729,-0.008072034455836,0.008811264298856,0.211002826690674,-0.039175596088171));
res += mul(Get(s1,0,-dy), float4x4(0.096352830529213,0.097408398985863,-0.064798034727573,0.234139427542686,-0.009788044728339,-0.225762590765953,-0.091440156102180,0.024452473968267,-0.026305899024010,-0.089000396430492,0.032119907438755,0.061426363885403,0.092694185674191,0.027402158826590,0.040891837328672,-0.120912551879883));
res += mul(Get(s1,0,0), float4x4(0.069224245846272,0.133357271552086,0.041934780776501,0.030180038884282,0.032355394214392,-0.171428084373474,-0.127776831388474,-0.276428639888763,-0.450981259346008,-0.041461601853371,0.218155235052109,-0.036341175436974,0.257268875837326,0.071970537304878,-0.212665006518364,-0.407223224639893));
res += mul(Get(s1,0,dy), float4x4(0.097500309348106,-0.023476082831621,0.109515786170959,-0.038712967187166,0.088694229722023,-0.138110846281052,0.018498312681913,0.028958138078451,-0.123648256063461,-0.086373664438725,0.277370274066925,0.078118883073330,0.182287842035294,-0.034425232559443,0.100328527390957,-0.136531427502632));
res += mul(Get(s1,dx,-dy), float4x4(0.106733113527298,0.021602565422654,-0.297282457351685,-0.076806403696537,-0.043685026466846,-0.078968904912472,-0.045515418052673,0.219531342387199,0.085039883852005,-0.095366291701794,0.020325941964984,-0.024887392297387,0.119778975844383,-0.157235845923424,0.073958538472652,0.060594793409109));
res += mul(Get(s1,dx,0), float4x4(0.303007662296295,0.068303897976875,-0.150372743606567,-0.147013619542122,-0.104830689728260,-0.064945988357067,0.099335417151451,0.144598856568336,-0.001627456862479,0.159728124737740,-0.158059701323509,-0.168347984552383,-0.041286449879408,-0.008613248355687,-0.160029724240303,-0.003692545229569));
res += mul(Get(s1,dx,dy), float4x4(-0.041540469974279,0.034300871193409,0.007582635153085,0.011907194741070,0.010504953563213,-0.142690405249596,0.075033664703369,0.061796184629202,-0.059916768223047,-0.022484112530947,-0.062990650534630,-0.143548026680946,0.046098120510578,0.024053549394011,-0.067201152443886,0.050255551934242));
res += mul(Get(s2,-dx,-dy), float4x4(-0.046764191240072,-0.002070811577141,0.045990925282240,-0.027246339246631,0.033139415085316,-0.093220658600330,-0.175153821706772,-0.011840860359371,0.108509331941605,-0.089159384369850,-0.033429343253374,-0.063724182546139,0.029616588726640,0.020542034879327,0.133788838982582,0.172264277935028));
res += mul(Get(s2,-dx,0), float4x4(0.027257602661848,-0.032871175557375,-0.251974344253540,0.069561339914799,-0.024657510221004,-0.099489517509937,0.455568701028824,0.103025786578655,-0.100926965475082,0.019766526296735,0.012860788032413,0.100817129015923,0.037849709391594,0.075479410588741,-0.050139233469963,-0.069280743598938));
res += mul(Get(s2,-dx,dy), float4x4(0.001242084079422,-0.046023353934288,-0.095649667084217,0.107088461518288,0.029242031276226,-0.070765525102615,-0.072294592857361,0.085381992161274,0.058145277202129,-0.117086790502071,-0.111076131463051,-0.020358461886644,0.041215486824512,-0.016779629513621,0.064465001225471,0.099788315594196));
res += mul(Get(s2,0,-dy), float4x4(0.016686435788870,-0.031018001958728,-0.053147409111261,-0.032579533755779,-0.127361819148064,-0.169025823473930,-0.136960253119469,-0.068375982344151,-0.160635828971863,0.141794025897980,-0.157678931951523,0.026726629585028,0.117577001452446,0.153370141983032,0.218629479408264,0.030015897005796));
res += mul(Get(s2,0,0), float4x4(0.141764834523201,0.078455105423927,-0.050499632954597,-0.021457096561790,0.176551163196564,-0.022540930658579,0.210172936320305,0.124016895890236,-0.082408897578716,-0.231583774089813,-0.168356999754906,0.231022253632545,0.258295714855194,0.104894638061523,0.066150173544884,-0.102174863219261));
res += mul(Get(s2,0,dy), float4x4(-0.215448856353760,-0.152983129024506,0.148495480418205,0.114909633994102,-0.045119632035494,-0.075703322887421,-0.008981610648334,0.015437819994986,-0.125827059149742,-0.057852033525705,-0.198032349348068,-0.110455155372620,-0.003896482056007,-0.049770265817642,0.017263157293200,0.036670319736004));
res += mul(Get(s2,dx,-dy), float4x4(-0.064506612718105,-0.073499187827110,0.021655524149537,-0.034425552934408,0.002391033107415,-0.176634967327118,-0.207915350794792,0.181472793221474,0.090252973139286,-0.021308541297913,-0.037170175462961,-0.120934560894966,-0.099522046744823,0.009483308531344,0.123667612671852,-0.103663325309753));
res += mul(Get(s2,dx,0), float4x4(-0.108619727194309,-0.187515899538994,-0.172426566481590,-0.219983622431755,0.204786866903305,-0.352267295122147,-0.055904548615217,0.391842752695084,-0.181936413049698,0.052584219723940,0.172022119164467,0.022897571325302,-0.061744414269924,-0.061969645321369,-0.059065949171782,-0.114874459803104));
res += mul(Get(s2,dx,dy), float4x4(-0.032787051051855,0.021924413740635,0.242231130599976,-0.234817907214165,0.150193095207214,-0.008114779368043,-0.056620344519615,0.132412299513817,0.080100081861019,-0.045455664396286,-0.200426995754242,0.038477543741465,-0.096464201807976,-0.141259849071503,0.098055496811867,0.013423870317638));
res += mul(Get(s3,-dx,-dy), float4x4(0.096369683742523,-0.053710032254457,0.087155148386955,-0.014544229023159,0.050477314740419,0.049729950726032,0.040183328092098,-0.099823355674744,-0.057150632143021,0.055311307311058,-0.077074781060219,0.105702415108681,-0.068540371954441,-0.012751769274473,-0.051178555935621,0.054282721132040));
res += mul(Get(s3,-dx,0), float4x4(0.142256319522858,0.027475522831082,-0.230008259415627,0.171457707881927,-0.038351505994797,0.045934598892927,-0.000655872980133,-0.072206847369671,0.100592024624348,0.117686502635479,0.049785822629929,-0.053270548582077,0.040768723934889,-0.085223361849785,-0.036611214280128,0.137847691774368));
res += mul(Get(s3,-dx,dy), float4x4(0.063440740108490,-0.102031573653221,0.036899972707033,-0.032568909227848,0.145118162035942,0.013374648988247,-0.009019002318382,0.007658488117158,0.077989347279072,0.042756218463182,0.093603469431400,-0.092058032751083,-0.048202112317085,-0.025780316442251,-0.160501465201378,-0.015936439856887));
res += mul(Get(s3,0,-dy), float4x4(0.173038989305496,-0.000795373693109,0.007428406272084,-0.136873126029968,0.084149911999702,0.095797978341579,0.112936466932297,0.066415272653103,-0.026198057457805,-0.076978877186775,-0.025737512856722,0.054911579936743,0.111923485994339,-0.005562077276409,-0.238004833459854,0.063836216926575));
res += mul(Get(s3,0,0), float4x4(-0.171549350023270,-0.026838414371014,-0.307283967733383,-0.073802873492241,-0.026910122483969,0.087408624589443,-0.249387055635452,-0.145062580704689,0.184657573699951,-0.084098339080811,0.086055837571621,0.168012604117393,0.057101938873529,0.116424314677715,0.142257034778595,0.056530799716711));
res += mul(Get(s3,0,dy), float4x4(0.179249748587608,-0.015787905082107,0.117666214704514,0.098753973841667,0.044474512338638,0.140157222747803,-0.038373481482267,-0.001257714233361,-0.038280282169580,0.032012309879065,0.245212689042091,0.159898921847343,-0.013936170376837,0.008972018957138,-0.294014990329742,-0.089617304503918));
res += mul(Get(s3,dx,-dy), float4x4(0.036707434803247,0.098638266324997,-0.107589833438396,0.248078837990761,-0.051081247627735,0.056090496480465,-0.049900945276022,0.006942295003682,0.014319348149002,0.171718686819077,-0.097700238227844,-0.068808391690254,0.051639642566442,-0.056484527885914,-0.155952513217926,-0.174955412745476));
res += mul(Get(s3,dx,0), float4x4(0.235633403062820,0.246883660554886,-0.202180504798889,0.017143854871392,-0.084422186017036,0.105826720595360,-0.077223181724548,0.105503343045712,-0.110628649592400,0.395912438631058,0.182227745652199,0.191822558641434,0.034970853477716,-0.009558742865920,-0.237710624933243,0.103441342711449));
res += mul(Get(s3,dx,dy), float4x4(-0.019437078386545,0.016482464969158,0.087887085974216,-0.047671575099230,0.130809545516968,-0.037468362599611,-0.141714975237846,-0.069293424487114,-0.049293957650661,-0.184876963496208,-0.042299140244722,0.050573796033859,0.037864696234465,0.043582502752542,-0.313218623399734,-0.152714088559151));
res += mul(Get(s4,-dx,-dy), float4x4(-0.006999865174294,0.104800619184971,-0.206818416714668,0.332486391067505,-0.173874437808990,0.096093289554119,-0.012153477407992,-0.105964712798595,0.115623086690903,0.015532680787146,-0.081357158720493,-0.055073887109756,-0.027423676103354,-0.035048324614763,-0.017664637416601,0.050929617136717));
res += mul(Get(s4,-dx,0), float4x4(-0.044248096644878,0.095552913844585,0.072829909622669,0.045303732156754,0.051708366721869,0.155867651104927,0.403491556644440,-0.015482596121728,-0.041521232575178,0.072347678244114,0.086582265794277,0.175569027662277,0.054639406502247,-0.105087049305439,-0.004005327820778,0.003544152015820));
res += mul(Get(s4,-dx,dy), float4x4(0.070603221654892,0.041633065789938,-0.074358507990837,-0.017187090590596,0.048128984868526,0.153172999620438,-0.278199791908264,-0.127650305628777,-0.090665109455585,0.039216179400682,-0.087674938142300,0.030801823362708,0.049416884779930,-0.111415535211563,-0.060801010578871,0.019915448501706));
res += mul(Get(s4,0,-dy), float4x4(-0.083103314042091,0.038922630250454,-0.188805222511292,-0.150390312075615,0.161727085709572,0.007058553397655,0.004030409269035,0.175987675786018,-0.161910101771355,-0.138244643807411,0.124524652957916,-0.149601906538010,0.187981352210045,0.126868590712547,0.304229259490967,-0.054301615804434));
res += mul(Get(s4,0,0), float4x4(0.269054681062698,0.058621875941753,-0.008918176405132,-0.087814420461655,0.195784389972687,0.003353691892698,0.122450761497021,0.117530725896358,0.125021934509277,-0.175794303417206,0.119329236447811,-0.016466775909066,0.117186516523361,0.119835339486599,0.049977339804173,-0.000106549239717));
res += mul(Get(s4,0,dy), float4x4(0.090570412576199,0.053753711283207,-0.052994560450315,0.191330581903458,0.091731801629066,0.097619660198689,-0.108635976910591,0.027885803952813,0.033834438771009,-0.118406616151333,-0.114725627005100,-0.091464303433895,0.031669769436121,0.132311657071114,0.009701685048640,0.020923089236021));
res += mul(Get(s4,dx,-dy), float4x4(0.014815268106759,-0.025223927572370,-0.034511219710112,0.032293159514666,0.024050612002611,0.029101291671395,0.001371962134726,-0.056036256253719,-0.017494633793831,-0.042895529419184,-0.183862492442131,-0.172377333045006,-0.085050269961357,0.182021796703339,-0.143764764070511,0.002631409792230));
res += mul(Get(s4,dx,0), float4x4(-0.284555554389954,0.039301447570324,-0.062471788376570,-0.046821955591440,-0.070032082498074,-0.102478399872780,0.193731367588043,-0.073993280529976,-0.018444353714585,0.003767648944631,0.135962009429932,-0.232438519597054,-0.058537695556879,-0.257959753274918,-0.202386960387230,-0.105904616415501));
res += mul(Get(s4,dx,dy), float4x4(-0.149886384606361,0.048514515161514,-0.203874140977859,-0.063323974609375,0.041073728352785,-0.015571515075862,-0.107799261808395,-0.091446645557880,0.053346708416939,-0.006718819495291,0.012054711580276,-0.199704274535179,0.020083503797650,0.198826685547829,-0.126927673816681,-0.075979031622410));
res += mul(Get(s5,-dx,-dy), float4x4(0.090366855263710,0.059577915817499,0.191084474325180,-0.005186286754906,0.132829397916794,-0.025618400424719,0.142992287874222,-0.070101633667946,-0.105059966444969,0.015380439348519,-0.050468973815441,-0.064703762531281,-0.000626764609478,0.044395107775927,0.341357320547104,0.074233427643776));
res += mul(Get(s5,-dx,0), float4x4(0.154766857624054,-0.037350095808506,-0.085802920162678,0.100969001650810,-0.217940211296082,0.085951231420040,0.248545572161674,-0.133361384272575,-0.511230289936066,0.081569194793701,-0.192026928067207,-0.233413130044937,-0.001263168989681,0.036096587777138,-0.081889271736145,0.139370575547218));
res += mul(Get(s5,-dx,dy), float4x4(0.106449171900749,0.040493696928024,0.040968656539917,-0.098499625921249,0.083964608609676,0.148267939686775,0.134755581617355,-0.088036090135574,-0.139776289463043,0.039078753441572,-0.052175860852003,-0.162352234125137,0.055213470011950,-0.018199106678367,0.161008283495903,-0.109096422791481));
res += mul(Get(s5,0,-dy), float4x4(-0.074441827833652,0.067704103887081,0.066205352544785,0.059983834624290,0.026036789640784,0.010380515828729,-0.053517404943705,0.027780445292592,0.032366640865803,0.148192688822746,-0.046758275479078,0.052084241062403,-0.197739392518997,0.090169079601765,0.041447214782238,0.180262982845306));
res += mul(Get(s5,0,0), float4x4(0.075022980570793,0.030235154554248,0.120614521205425,0.272352278232574,-0.027633892372251,0.063796408474445,-0.227894991636276,0.098382771015167,0.183263972401619,0.236743673682213,0.018337329849601,0.040214393287897,0.141840472817421,0.060267079621553,-0.282641023397446,-0.132742673158646));
res += mul(Get(s5,0,dy), float4x4(-0.026390129700303,-0.002700594952330,0.087835304439068,0.166046947240829,0.111961200833321,0.177518010139465,0.016890283674002,-0.155067160725594,-0.050493903458118,0.222652316093445,0.003377850400284,-0.067225433886051,-0.046541415154934,-0.005997519474477,0.008868569508195,0.159935548901558));
res += mul(Get(s5,dx,-dy), float4x4(0.029748966917396,-0.031383559107780,-0.015094991773367,-0.131929203867912,0.086479611694813,0.259876161813736,-0.119363270699978,0.070314563810825,0.083168320357800,0.031067397445440,-0.067444741725922,-0.017670139670372,0.013116206042469,0.070495493710041,0.025793839246035,0.059992767870426));
res += mul(Get(s5,dx,0), float4x4(0.011709418147802,0.033744014799595,0.186165064573288,0.029730500653386,0.072675332427025,0.009608213789761,-0.114842429757118,0.043960984796286,-0.144522413611412,-0.368942975997925,0.064655341207981,-0.065818056464195,-0.025435894727707,0.001030424609780,0.104663409292698,0.129273086786270));
res += mul(Get(s5,dx,dy), float4x4(0.058016788214445,0.071859978139400,0.084753043949604,0.067053027451038,-0.068156249821186,0.105486296117306,-0.133970573544502,0.024232400581241,0.269858002662659,0.046228226274252,-0.217826157808304,-0.032628282904625,0.095585882663727,-0.128727793693542,-0.016305144876242,0.058809816837311));
res = max(float4(0, 0, 0, 0), res) + float4(0.438249915838242,-0.021851483732462,0.275681078433990,-0.042836215347052) * min(float4(0, 0, 0, 0), res);
return res;
}
