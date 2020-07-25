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
res += mul(Get(s0,-dx,-dy), float4x4(0.012315580621362,-0.088120527565479,-0.086589999496937,-0.194296330213547,0.095197789371014,-0.114659540355206,0.177998930215836,-0.074796646833420,-0.047626428306103,-0.015625711530447,-0.075667895376682,-0.092564240098000,0.027385205030441,-0.125783294439316,-0.055546168237925,-0.048556517809629));
res += mul(Get(s0,-dx,0), float4x4(-0.215690523386002,-0.082273416221142,0.270046561956406,0.000973637681454,-0.139923110604286,0.111178107559681,-0.057788729667664,-0.132679536938667,-0.027644049376249,-0.229801654815674,0.046939406543970,-0.045244690030813,-0.036547701805830,-0.033057529479265,0.122654452919960,-0.005152204539627));
res += mul(Get(s0,-dx,dy), float4x4(-0.173665255308151,-0.033324442803860,-0.078198455274105,0.180235281586647,-0.083567336201668,0.145674258470535,0.010833715088665,-0.084333479404449,0.147892296314240,-0.101915553212166,-0.065790198743343,-0.103070341050625,-0.053909074515104,-0.126615434885025,0.058523137122393,0.231534242630005));
res += mul(Get(s0,0,-dy), float4x4(0.066370077431202,-0.065999358892441,-0.019189925864339,0.147519618272781,-0.031487297266722,0.022957906126976,0.252922981977463,0.104886382818222,-0.183239310979843,0.039448492228985,-0.102279074490070,-0.047621473670006,0.282671809196472,-0.142998620867729,0.100464448332787,0.119387567043304));
res += mul(Get(s0,0,0), float4x4(-0.151479125022888,0.072446413338184,0.256728887557983,-0.068745002150536,-0.050202328711748,-0.059244047850370,-0.184733241796494,0.050546843558550,-0.100571535527706,0.046845167875290,-0.050270836800337,0.022922554984689,0.041760411113501,0.036277916282415,0.120481617748737,-0.119395069777966));
res += mul(Get(s0,0,dy), float4x4(-0.023298574611545,0.229583099484444,0.207390248775482,-0.006144829094410,0.013603262603283,-0.090665310621262,0.139075711369514,0.001873370143585,-0.274278402328491,0.116850733757019,0.016682716086507,-0.074292086064816,-0.056883130222559,-0.116668194532394,0.061027523130178,0.137793421745300));
res += mul(Get(s0,dx,-dy), float4x4(-0.022991804406047,-0.051885474473238,0.087118387222290,0.091789245605469,-0.021276174113154,-0.071883283555508,-0.062221612781286,-0.013119025155902,-0.047128491103649,0.059674538671970,-0.017865026369691,-0.012781660072505,0.275354355573654,0.076797030866146,-0.051572103053331,-0.062150903046131));
res += mul(Get(s0,dx,0), float4x4(0.183676317334175,-0.105657286942005,0.001654907013290,-0.026978537440300,0.115822225809097,0.150717690587044,-0.098151780664921,0.100853286683559,-0.217319309711456,-0.010979455895722,-0.103831410408020,0.043403215706348,-0.154695332050323,-0.091345004737377,0.251894116401672,0.060929529368877));
res += mul(Get(s0,dx,dy), float4x4(0.025378935039043,-0.114822089672089,0.043905176222324,-0.090101562440395,-0.137998804450035,0.029065517708659,0.100694060325623,0.249344304203987,0.256361097097397,0.061041668057442,0.006109219044447,-0.076805084943771,0.162821695208549,0.022182030603290,-0.085401542484760,0.006665062624961));
res += mul(Get(s1,-dx,-dy), float4x4(0.003235661890358,-0.032681025564671,-0.019276898354292,-0.006401663180441,0.031209049746394,-0.105678014457226,0.038012638688087,-0.060121975839138,-0.041968725621700,-0.100656457245350,-0.039863161742687,0.116679251194000,-0.080053746700287,0.058955211192369,0.146388724446297,0.065759591758251));
res += mul(Get(s1,-dx,0), float4x4(0.108251906931400,-0.282520532608032,-0.124889224767685,0.106282308697701,-0.005631837528199,-0.070764288306236,-0.040820099413395,0.099151529371738,0.230516925454140,0.133835047483444,0.169377863407135,-0.008638240396976,-0.039351858198643,-0.089824840426445,0.155769065022469,-0.134112402796745));
res += mul(Get(s1,-dx,dy), float4x4(-0.037219520658255,-0.014978201128542,-0.030438765883446,0.031253997236490,-0.124569259583950,-0.088471703231335,0.092056564986706,-0.019564665853977,0.279822647571564,0.234424576163292,-0.015595423988998,-0.032439481467009,-0.306290596723557,0.036282684653997,0.151114284992218,0.056414138525724));
res += mul(Get(s1,0,-dy), float4x4(-0.049576099961996,0.043088469654322,-0.052905678749084,-0.157634034752846,0.034750208258629,0.104948587715626,-0.155223950743675,0.055362988263369,-0.053614661097527,0.019537387415767,0.090431235730648,-0.046267293393612,0.088546104729176,-0.033381916582584,-0.067990854382515,-0.230780377984047));
res += mul(Get(s1,0,0), float4x4(-0.228385701775551,0.185170844197273,-0.081975586712360,-0.061464712023735,0.019479231908917,0.129496097564697,0.041852384805679,0.026416610926390,0.204426348209381,-0.071653783321381,0.037171848118305,-0.008406270295382,0.015235724858940,-0.107624344527721,-0.127247795462608,0.061430118978024));
res += mul(Get(s1,0,dy), float4x4(-0.051008105278015,0.063006348907948,0.017024874687195,0.300682365894318,0.169546768069267,-0.055103201419115,0.010959001258016,-0.002810866571963,0.042740233242512,0.025090526789427,-0.142273440957069,-0.058055587112904,-0.071175687015057,-0.107205964624882,0.044268924742937,0.072139784693718));
res += mul(Get(s1,dx,-dy), float4x4(0.031528457999229,-0.066372521221638,0.042688060551882,0.173156723380089,-0.101480811834335,-0.033268496394157,-0.058331146836281,-0.023675296455622,-0.156667679548264,0.119708180427551,-0.064139626920223,0.073654659092426,0.029309794306755,-0.086385443806648,-0.077742464840412,0.009682374075055));
res += mul(Get(s1,dx,0), float4x4(-0.069611839950085,0.065219290554523,-0.092903211712837,0.093625836074352,-0.107068248093128,-0.124182321131229,0.108301907777786,0.003674541832879,-0.077869109809399,0.192790523171425,0.225052073597908,-0.075670294463634,0.112434372305870,0.140862628817558,0.014522870071232,-0.162469431757927));
res += mul(Get(s1,dx,dy), float4x4(0.111048914492130,-0.017030330374837,0.072194449603558,0.064645901322365,-0.237529620528221,0.103743314743042,0.146348595619202,0.104983732104301,0.104525581002235,-0.089191354811192,-0.066846370697021,-0.120629169046879,0.024845248088241,0.043439008295536,0.009584771469235,-0.100969329476357));
res += mul(Get(s2,-dx,-dy), float4x4(-0.074555158615112,-0.052546914666891,0.029754424467683,0.030336022377014,0.073657259345055,-0.059177707880735,-0.051884327083826,-0.170561239123344,0.006315069273114,-0.038734145462513,0.080916851758957,0.008173303678632,-0.092006728053093,0.108612127602100,0.042155314236879,0.208423271775246));
res += mul(Get(s2,-dx,0), float4x4(0.013503892347217,-0.053746331483126,-0.210528835654259,-0.111491255462170,-0.071773000061512,-0.092819519340992,-0.061707403510809,-0.345173895359039,-0.070083014667034,-0.228791236877441,0.074683085083961,-0.104309827089310,-0.251664251089096,-0.065169863402843,-0.129789277911186,-0.038702424615622));
res += mul(Get(s2,-dx,dy), float4x4(-0.116436734795570,-0.099503524601460,-0.192713081836700,-0.080080099403858,-0.138638526201248,-0.041973110288382,-0.090821668505669,-0.043329842388630,0.114767104387283,-0.109159573912621,0.151839345693588,-0.025186767801642,-0.064728334546089,-0.163133844733238,0.121650218963623,0.030340082943439));
res += mul(Get(s2,0,-dy), float4x4(-0.092038437724113,-0.270705550909042,0.230756968259811,-0.173407196998596,-0.073407329618931,0.060888197273016,-0.080619692802429,0.131045132875443,-0.131804168224335,-0.055955670773983,0.017788048833609,0.020996181294322,-0.112081326544285,0.059788677841425,0.075287215411663,-0.000711006287020));
res += mul(Get(s2,0,0), float4x4(0.042222794145346,0.008210943080485,0.060502059757710,0.241682365536690,0.194370940327644,-0.064399741590023,-0.075670853257179,-0.169575244188309,-0.022401696071029,0.039079193025827,0.154533475637436,0.039918296039104,-0.032662712037563,0.038479294627905,0.058253511786461,-0.032713964581490));
res += mul(Get(s2,0,dy), float4x4(0.218851238489151,-0.077206440269947,0.024557692930102,0.070376694202423,-0.133885413408279,0.048787966370583,0.075535193085670,-0.000533709360752,-0.182435274124146,0.142672330141068,0.055995035916567,0.136759355664253,-0.171136736869812,0.125676348805428,0.013413268141448,-0.042968694120646));
res += mul(Get(s2,dx,-dy), float4x4(-0.118162266910076,-0.004122542683035,0.106429979205132,0.039964634925127,-0.146876022219658,-0.028330467641354,0.182448521256447,0.244808331131935,0.099972948431969,-0.207411915063858,0.190423652529716,-0.021281247958541,0.202280357480049,0.182202279567719,0.074310749769211,0.043793827295303));
res += mul(Get(s2,dx,0), float4x4(0.120179727673531,-0.083930917084217,-0.079821303486824,-0.120151899755001,-0.005346363410354,-0.117094628512859,0.056779719889164,0.021527793258429,0.122942529618740,0.228195637464523,0.055523775517941,0.134181752800941,-0.212987050414085,0.205061361193657,0.256047308444977,-0.097364425659180));
res += mul(Get(s2,dx,dy), float4x4(0.121145717799664,-0.002868110779673,0.222209855914116,-0.153346374630928,-0.143415763974190,0.034559901803732,0.093524023890495,-0.119147390127182,-0.033623930066824,-0.104839824140072,-0.010568929836154,0.093232929706573,0.039048053324223,0.069966562092304,-0.062729060649872,-0.037833064794540));
res += mul(Get(s3,-dx,-dy), float4x4(-0.144882023334503,0.032677676528692,-0.044443279504776,-0.152539223432541,0.073736213147640,0.027060866355896,-0.087106756865978,0.040963958948851,-0.071265824139118,0.029794422909617,0.005301779601723,0.123163476586342,0.072551958262920,0.161275908350945,-0.154417470097542,0.034928988665342));
res += mul(Get(s3,-dx,0), float4x4(-0.031845904886723,0.000308470014716,0.075430154800415,0.054914761334658,0.135947912931442,-0.002055229851976,0.301140755414963,0.187271192669868,0.011686304584146,0.013738766312599,-0.202167063951492,-0.111860580742359,0.063229970633984,0.018651437014341,-0.177536964416504,-0.021118363365531));
res += mul(Get(s3,-dx,dy), float4x4(0.161465510725975,-0.059488557279110,-0.123370334506035,0.043429501354694,-0.209537789225578,-0.149147063493729,-0.008939637802541,-0.107764802873135,-0.157925590872765,-0.040020398795605,-0.092800155282021,-0.142406836152077,0.118414916098118,0.106327250599861,-0.113587796688080,-0.088403455913067));
res += mul(Get(s3,0,-dy), float4x4(-0.041561264544725,0.027437815442681,-0.090186722576618,-0.073439233005047,-0.152430355548859,-0.115556180477142,-0.109595119953156,0.079588219523430,-0.017930654808879,0.160875350236893,-0.098299317061901,0.156188234686852,0.041474979370832,-0.040981218218803,-0.228399172425270,0.134531483054161));
res += mul(Get(s3,0,0), float4x4(-0.006781975273043,0.023503324016929,0.064331732690334,-0.031467072665691,0.084904037415981,0.043287239968777,0.169741705060005,0.023785967379808,0.034174315631390,0.120826937258244,-0.012237242422998,-0.038606159389019,0.041220586746931,-0.007507944945246,-0.045184571295977,-0.121797814965248));
res += mul(Get(s3,0,dy), float4x4(0.016411153599620,0.160358488559723,-0.081450894474983,-0.133242666721344,0.069304563105106,-0.000284348818241,-0.047360260039568,0.145796507596970,0.007122172974050,-0.000053262734582,-0.230147078633308,0.023936677724123,-0.002954063238576,0.060857802629471,-0.062866851687431,-0.034245248883963));
res += mul(Get(s3,dx,-dy), float4x4(-0.123721443116665,0.058055106550455,0.139927744865417,-0.104034580290318,-0.001286744954996,-0.102180771529675,0.165150508284569,-0.031607132405043,0.026868950575590,0.227626636624336,0.047616280615330,-0.027131684124470,-0.060055132955313,0.032479673624039,-0.017115380614996,-0.211759597063065));
res += mul(Get(s3,dx,0), float4x4(-0.100315041840076,0.193851143121719,0.109973192214966,0.050137180835009,0.040365777909756,-0.079220771789551,-0.202009871602058,0.059940129518509,0.067224793136120,-0.119115188717842,-0.063179343938828,-0.011609056033194,-0.105503350496292,0.085229836404324,-0.244390174746513,-0.300513237714767));
res += mul(Get(s3,dx,dy), float4x4(0.141930669546127,0.101737096905708,-0.179772034287453,-0.036179888993502,-0.059629008173943,-0.025251235812902,0.219683706760406,0.122569419443607,0.001789693720639,-0.013718519359827,-0.213503122329712,0.053913474082947,-0.115596219897270,0.006551605183631,0.197959646582603,0.045589797198772));
return max(float4(0,0,0,0), res);
}