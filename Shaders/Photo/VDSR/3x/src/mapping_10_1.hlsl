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
res += mul(Get(s0,-dx,-dy), float4x4(-0.061307694762945,0.050182443112135,-0.039308018982410,-0.110336340963840,0.125457182526588,0.026064086705446,-0.169778436422348,0.093676723539829,-0.029268771409988,0.100880913436413,0.079035483300686,0.063840292394161,0.025976695120335,0.198024660348892,-0.195093125104904,-0.051583956927061));
res += mul(Get(s0,-dx,0), float4x4(-0.050139296799898,0.114993408322334,-0.086941972374916,0.072185613214970,-0.026495795696974,0.025594325736165,-0.081352151930332,-0.033849839121103,0.185115352272987,-0.097629800438881,-0.150621026754379,-0.070243515074253,0.021261388435960,-0.062339883297682,0.195151135325432,0.057233054190874));
res += mul(Get(s0,-dx,dy), float4x4(-0.008674651384354,-0.043622571974993,-0.073302537202835,0.056310866028070,0.247264489531517,0.001732621574774,0.101770140230656,-0.163789287209511,0.083382308483124,0.188448742032051,0.035424362868071,-0.146000310778618,-0.105984494090080,-0.074152790009975,0.035874530673027,-0.007233604788780));
res += mul(Get(s0,0,-dy), float4x4(0.063566006720066,-0.033278349786997,-0.084576904773712,0.013662668876350,0.149498179554939,0.034119047224522,-0.102429896593094,0.112559787929058,-0.054494950920343,0.147011563181877,-0.045362599194050,-0.153982743620872,-0.000400192540837,0.007811092305928,0.010754737071693,0.093738406896591));
res += mul(Get(s0,0,0), float4x4(-0.073628462851048,0.031502481549978,-0.043412439525127,-0.008877993561327,-0.082611337304115,-0.121057279407978,-0.062347583472729,0.030231393873692,0.026480274274945,-0.208841353654861,0.017798624932766,0.018609957769513,-0.247213870286942,-0.005512304138392,0.134881645441055,-0.083046495914459));
res += mul(Get(s0,0,dy), float4x4(-0.128857523202896,0.103646352887154,-0.096296958625317,0.009997346438468,-0.007337106391788,-0.154678374528885,0.003754214150831,0.000550712051336,-0.133449390530586,-0.016452524811029,0.047834798693657,0.056671082973480,-0.126552447676659,-0.075351245701313,0.126828849315643,0.073165066540241));
res += mul(Get(s0,dx,-dy), float4x4(0.021604767069221,-0.048832599073648,-0.033381991088390,-0.013739976100624,-0.123628810048103,-0.035349518060684,-0.081302396953106,0.148062273859978,-0.009338667616248,-0.149529784917831,-0.024838160723448,-0.066423177719116,-0.109920889139175,0.089656263589859,-0.060653127729893,0.119742408394814));
res += mul(Get(s0,dx,0), float4x4(0.110971994698048,0.111915022134781,-0.041219454258680,0.048741627484560,0.096836835145950,-0.035473164170980,-0.183789476752281,0.146458342671394,-0.041823700070381,-0.093705840408802,0.054468207061291,-0.111332848668098,0.053324617445469,-0.064790226519108,0.127356529235840,0.041111733764410));
res += mul(Get(s0,dx,dy), float4x4(0.052858211100101,0.034719590097666,-0.018917091190815,0.102911688387394,0.101690605282784,-0.075579017400742,-0.124824829399586,0.007321278098971,0.110409453511238,0.174114555120468,0.021046319976449,0.183262795209885,-0.053082007914782,0.132343500852585,-0.199563801288605,0.184028953313828));
res += mul(Get(s1,-dx,-dy), float4x4(0.038003064692020,0.050056111067533,0.228169649839401,-0.090983755886555,0.127782985568047,-0.025595419108868,-0.019144129008055,0.068933799862862,0.054120101034641,0.193902507424355,-0.003766826121137,0.011416843160987,0.181569904088974,0.018527349457145,-0.204400375485420,0.152111038565636));
res += mul(Get(s1,-dx,0), float4x4(0.016596401110291,0.039807360619307,0.242291629314423,0.073198229074478,0.061555642634630,0.084309957921505,-0.044412720948458,-0.087975703179836,-0.179382219910622,-0.062276922166348,-0.020291710272431,0.137745499610901,-0.010427672415972,-0.101694837212563,0.066410727798939,-0.031067848205566));
res += mul(Get(s1,-dx,dy), float4x4(0.073015570640564,-0.106921009719372,0.238599821925163,-0.206575915217400,-0.014606414362788,0.054397802799940,-0.035473499447107,-0.027415795251727,-0.039808105677366,0.027653021737933,-0.067147865891457,-0.053401894867420,-0.018565045669675,0.069902405142784,0.012457106262445,0.077618703246117));
res += mul(Get(s1,0,-dy), float4x4(-0.006139406934381,0.044531531631947,0.091088898479939,-0.098875723779202,-0.027403473854065,-0.084089562296867,0.010940903797746,0.007912447676063,-0.110374853014946,0.050679206848145,0.080629877746105,0.054443717002869,0.086983866989613,-0.070416063070297,-0.151369377970695,-0.044341359287500));
res += mul(Get(s1,0,0), float4x4(0.217331081628799,-0.022776814177632,0.127440705895424,0.069836154580116,-0.028687607496977,0.082759790122509,-0.008819630369544,-0.193210825324059,0.099072113633156,0.014580104500055,0.059186883270741,0.034139119088650,-0.023145593702793,-0.062961250543594,-0.044053621590137,-0.083924189209938));
res += mul(Get(s1,0,dy), float4x4(-0.130087330937386,0.088793911039829,0.023187866434455,-0.138316616415977,-0.109488323330879,0.080035857856274,-0.034829698503017,-0.132565066218376,0.018322369083762,-0.060651406645775,-0.067330859601498,0.029804684221745,0.039541807025671,0.145916521549225,0.125636175274849,-0.108516417443752));
res += mul(Get(s1,dx,-dy), float4x4(0.046343956142664,-0.072955392301083,0.042509697377682,0.082672327756882,-0.142294049263000,-0.001066204626113,-0.083744987845421,0.043983053416014,0.070127852261066,-0.119794793426991,-0.030279129743576,0.080582618713379,-0.069904044270515,-0.093175522983074,-0.035453926771879,0.003700106171891));
res += mul(Get(s1,dx,0), float4x4(-0.007759978529066,0.129780009388924,-0.302833169698715,0.075906865298748,0.021023346111178,0.110985800623894,0.005764727015048,0.130311578512192,-0.046155009418726,0.116639852523804,0.002668989123777,-0.096366770565510,0.218490108847618,0.002400901634246,-0.053611427545547,-0.074547842144966));
res += mul(Get(s1,dx,dy), float4x4(-0.067757532000542,0.081874109804630,-0.065413072705269,0.206764608621597,0.046210099011660,0.025807440280914,-0.175467789173126,-0.092621244490147,-0.048967663198709,-0.010053389705718,0.032986961305141,-0.012009446509182,0.070777058601379,0.200282365083694,0.101864822208881,0.050745133310556));
res += mul(Get(s2,-dx,-dy), float4x4(0.033655107021332,-0.209087923169136,0.107957124710083,0.097645901143551,-0.175760850310326,0.110437639057636,0.058581326156855,-0.071537077426910,-0.049740124493837,0.031808342784643,0.066573873162270,0.018472518771887,-0.050519224256277,-0.140209391713142,-0.063476681709290,-0.138882696628571));
res += mul(Get(s2,-dx,0), float4x4(-0.018329570069909,-0.060119029134512,0.092736236751080,0.069447293877602,-0.148776039481163,-0.115168444812298,0.083424583077431,-0.015223228372633,0.091421522200108,-0.028391243889928,0.057984147220850,0.059289503842592,0.002528519602492,-0.002773425308987,-0.090648703277111,0.139737471938133));
res += mul(Get(s2,-dx,dy), float4x4(0.264091432094574,-0.094990111887455,0.025804884731770,0.010661382228136,0.022485766559839,0.092608928680420,-0.092836201190948,-0.120014674961567,0.188382267951965,-0.032887741923332,-0.086579248309135,-0.081519201397896,-0.113502457737923,0.070922441780567,-0.040080782026052,-0.028635496273637));
res += mul(Get(s2,0,-dy), float4x4(-0.046056244522333,-0.052079688757658,0.124446719884872,-0.142753601074219,-0.092659361660480,-0.062383536249399,0.104172691702843,0.114576011896133,-0.000289082003292,0.081437185406685,0.055696647614241,0.082747206091881,-0.125406861305237,-0.121436506509781,0.084914527833462,-0.158414795994759));
res += mul(Get(s2,0,0), float4x4(-0.050038747489452,-0.123090155422688,0.279923260211945,0.087164625525475,-0.046135339885950,-0.084937445819378,0.123695924878120,-0.364702641963959,0.024286132305861,-0.055077694356441,0.137284800410271,0.072559595108032,-0.233077734708786,-0.120140284299850,0.224537730216980,-0.346665173768997));
res += mul(Get(s2,0,dy), float4x4(0.132516995072365,0.126277595758438,0.094638541340828,0.170788303017616,-0.001758358324878,-0.024938471615314,0.119000725448132,-0.074223831295967,0.020347533747554,-0.227337896823883,-0.124930918216705,0.011192854493856,-0.051338583230972,0.063326567411423,0.150274723768234,-0.271784394979477));
res += mul(Get(s2,dx,-dy), float4x4(0.068870462477207,-0.107443615794182,-0.038311060518026,0.014055268839002,-0.009779142215848,0.216998189687729,0.161979153752327,0.044529154896736,0.055230155587196,-0.181209206581116,0.175538927316666,0.152365326881409,-0.035964842885733,-0.101233735680580,0.206185892224312,-0.020265040919185));
res += mul(Get(s2,dx,0), float4x4(0.069880381226540,0.025372777134180,0.082684099674225,-0.091010794043541,0.151590660214424,-0.178121626377106,0.048836760222912,0.136915430426598,-0.042134109884501,0.041455037891865,-0.105701811611652,0.036741014569998,-0.159244209527969,-0.147312179207802,0.043433111160994,-0.123228818178177));
res += mul(Get(s2,dx,dy), float4x4(0.077518336474895,-0.170102521777153,-0.085118442773819,-0.106770850718021,-0.041462764143944,-0.061127137392759,0.033221017569304,-0.117792367935181,0.043485093861818,0.086347088217735,-0.038639821112156,-0.079545594751835,-0.079863540828228,-0.010428616777062,0.100901313126087,0.020084347575903));
res += mul(Get(s3,-dx,-dy), float4x4(0.020833659917116,0.115579791367054,0.024722749367356,0.010256708599627,-0.003206820227206,0.003750602249056,0.073609299957752,-0.008434782736003,0.044262379407883,0.088357001543045,0.065669544041157,-0.074171282351017,0.213913589715958,-0.012478088028729,-0.017766769975424,-0.160914987325668));
res += mul(Get(s3,-dx,0), float4x4(-0.056630864739418,0.055093135684729,-0.057285144925117,0.094591349363327,-0.027112787589431,0.004313743207604,-0.089783065021038,0.041008267551661,-0.117446102201939,-0.139562889933586,0.102658063173294,-0.028377408161759,0.055917877703905,-0.110031895339489,-0.017828226089478,-0.050624147057533));
res += mul(Get(s3,-dx,dy), float4x4(0.058933388441801,-0.185385376214981,-0.021114094182849,0.036902010440826,0.091371752321720,0.131129324436188,0.137861102819443,-0.031595457345247,-0.108723148703575,-0.154401272535324,-0.059380382299423,0.134479179978371,0.004020991269499,-0.051889035850763,-0.009530465118587,0.100950993597507));
res += mul(Get(s3,0,-dy), float4x4(-0.125988185405731,0.078645125031471,-0.163592338562012,-0.244512632489204,0.002784710377455,-0.005288952961564,0.061701510101557,-0.175978422164917,0.030085911974311,-0.026816366240382,0.046717889606953,-0.031473219394684,0.210615530610085,-0.202409639954567,0.006163978949189,-0.043365884572268));
res += mul(Get(s3,0,0), float4x4(-0.073769047856331,-0.050867781043053,-0.036020666360855,-0.157227963209152,0.056419126689434,-0.124700665473938,-0.110455334186554,-0.008341099135578,0.089225359261036,-0.038914676755667,0.083851285278797,0.023412322625518,-0.192000076174736,0.202685058116913,0.156105265021324,-0.045020546764135));
res += mul(Get(s3,0,dy), float4x4(-0.039504963904619,0.085111908614635,0.033178392797709,-0.006743342150003,0.059050489217043,0.056367740035057,0.159659743309021,-0.012436945922673,0.048116773366928,0.071065716445446,-0.025156829506159,0.138285055756569,0.011154052801430,0.110216602683067,-0.118699446320534,0.109634794294834));
res += mul(Get(s3,dx,-dy), float4x4(0.097835861146450,0.068715825676918,-0.003738745814189,0.115122780203819,0.101399086415768,-0.035618655383587,-0.008842913433909,0.048514716327190,-0.009618144482374,0.048623498529196,-0.029877828434110,-0.195792123675346,-0.052199415862560,-0.012473303824663,0.083731174468994,0.053902853280306));
res += mul(Get(s3,dx,0), float4x4(-0.046835049986839,-0.010994344949722,-0.035719882696867,0.106365613639355,0.044382423162460,-0.051445137709379,0.054538268595934,0.057791080325842,0.033790107816458,-0.046052351593971,0.021189521998167,0.185526266694069,-0.062136620283127,-0.164016380906105,0.115943349897861,0.086966395378113));
res += mul(Get(s3,dx,dy), float4x4(-0.056579746305943,-0.120384864509106,-0.001218622666784,0.046851094812155,0.194691926240921,0.021083805710077,0.049480155110359,-0.135252788662910,0.083361931145191,0.041105605661869,-0.006021528504789,0.016549594700336,0.026444157585502,-0.071841306984425,0.160278454422951,-0.057356394827366));
return max(float4(0,0,0,0), res);
}