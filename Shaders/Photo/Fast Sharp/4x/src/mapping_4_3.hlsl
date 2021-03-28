sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.182868972420692,-0.100015297532082,-0.151462122797966,-0.233923211693764);
res += mul(Get(s0,-dx,-dy), float4x4(-0.102196507155895,0.008013999089599,-0.303096383810043,0.011233902536333,0.127661243081093,0.074286215007305,0.199129983782768,0.021524688228965,0.031552121043205,0.024122241884470,0.098073117434978,0.045620664954185,0.125608876347542,0.044751640409231,0.182966664433479,0.067386947572231));
res += mul(Get(s0,-dx,0), float4x4(0.041641417890787,-0.147509604692459,-0.554293870925903,-0.018302550539374,0.201242640614510,-0.040362186729908,0.484697848558426,0.116384796798229,0.042016189545393,-0.256883978843689,0.055292185395956,-0.111300058662891,0.255702942609787,0.014440468512475,0.569190323352814,0.226576611399651));
res += mul(Get(s0,-dx,dy), float4x4(0.049285799264908,-0.027416950091720,-0.177346155047417,-0.010596723295748,0.023503307253122,0.120254799723625,0.003558640601113,0.049182429909706,0.004200087394565,0.194295689463615,0.195574462413788,0.059150338172913,-0.011999041773379,-0.002914926270023,0.134783789515495,0.033642075955868));
res += mul(Get(s0,0,-dy), float4x4(0.100887641310692,0.151122987270355,0.131461337208748,-0.033397555351257,-0.017478408291936,0.135045215487480,0.078389145433903,-0.095510341227055,0.092739030718803,0.205375611782074,0.312645554542542,0.175668895244598,-0.148132234811783,0.002694833325222,0.118971198797226,-0.053935497999191));
res += mul(Get(s0,0,0), float4x4(0.207874134182930,-0.111908085644245,0.006403563544154,-0.073960550129414,-0.331003338098526,-0.234788775444031,-0.118452101945877,-0.351059615612030,0.142691865563393,-0.153435900807381,0.264353752136230,-0.025147635489702,-0.521269738674164,-0.108233533799648,0.316335231065750,-0.418879508972168));
res += mul(Get(s0,0,dy), float4x4(-0.045292213559151,-0.461984902620316,-0.060397490859032,-0.165708169341087,-0.007764393463731,0.204097062349319,0.118579305708408,-0.206939235329628,0.062184751033783,-0.019037710502744,0.061375651508570,0.069117374718189,-0.202766090631485,0.190864741802216,0.043248355388641,-0.090738594532013));
res += mul(Get(s0,dx,-dy), float4x4(-0.093172155320644,0.217388644814491,0.142427176237106,0.051647681742907,0.058242779225111,-0.020686738193035,-0.165597945451736,0.040598459541798,0.176912441849709,0.061491634696722,-0.127589553594589,0.029409188777208,0.181343153119087,-0.125915110111237,-0.075321599841118,0.123241677880287));
res += mul(Get(s0,dx,0), float4x4(-0.031801331788301,-0.206379741430283,0.004349923692644,0.212017834186554,0.084753513336182,-0.068496346473694,-0.359094858169556,0.095184035599232,0.200880751013756,0.146269470453262,-0.101871870458126,0.296222627162933,0.761988818645477,0.132339313626289,-0.171726554632187,0.624092996120453));
res += mul(Get(s0,dx,dy), float4x4(0.175260856747627,-0.243101179599762,0.080465145409107,0.146938338875771,0.146131262183189,0.166281193494797,-0.232543990015984,0.131415903568268,0.009451567195356,0.048566132783890,-0.088409639894962,0.031631451100111,0.121784478425980,0.043943043798208,-0.002366015221924,0.185139030218124));
res += mul(Get(s1,-dx,-dy), float4x4(-0.048552598804235,0.167963281273842,-0.049781095236540,0.005924254655838,0.005605804733932,-0.138618335127831,0.113689228892326,-0.112667232751846,0.077864877879620,0.116079956293106,-0.199844345450401,0.100140973925591,0.097687311470509,0.008039426989853,0.021056957542896,0.023892499506474));
res += mul(Get(s1,-dx,0), float4x4(0.058742504566908,-0.015543815679848,0.164875939488411,0.049639724195004,0.074993669986725,-0.008741044439375,-0.150090679526329,-0.056033462285995,0.346505254507065,-0.105545572936535,0.403287768363953,0.343214303255081,0.071774229407310,-0.004060082137585,-0.161887615919113,0.216508194804192));
res += mul(Get(s1,-dx,dy), float4x4(0.006340499967337,-0.219342887401581,0.022258643060923,0.081861101090908,-0.030333342030644,0.001048164325766,-0.163287386298180,-0.078409694135189,0.144331440329552,-0.076553307473660,-0.013423118740320,0.207742050290108,0.015923958271742,-0.195091769099236,0.062060292810202,0.073205046355724));
res += mul(Get(s1,0,-dy), float4x4(0.247276782989502,0.162193119525909,-0.004853666294366,0.048312261700630,-0.216326385736465,-0.485119611024857,-0.282676666975021,-0.075678296387196,0.007470624055713,-0.145803824067116,0.096788279712200,-0.149939507246017,-0.018910344690084,0.078877799212933,0.163996577262878,-0.013266251422465));
res += mul(Get(s1,0,0), float4x4(-0.138508051633835,0.343952059745789,-0.080657102167606,0.001968543045223,-0.264659136533737,0.262477785348892,0.106000415980816,-0.137682557106018,-0.377069473266602,0.247215315699577,0.087086878716946,-1.091432929039001,-0.167590156197548,-0.281947016716003,0.173035740852356,-0.174948871135712));
res += mul(Get(s1,0,dy), float4x4(0.046720881015062,0.172550261020660,-0.090003557503223,-0.042153727263212,-0.246469691395760,0.633432269096375,0.114694207906723,-0.042926643043756,0.170504882931709,-0.227660804986954,0.026245631277561,-0.113104447722435,0.112973168492317,-0.233930930495262,0.036540847271681,0.112705133855343));
res += mul(Get(s1,dx,-dy), float4x4(-0.233602419495583,-0.005245636682957,-0.053031917661428,-0.089180551469326,0.187398493289948,-0.130740508437157,0.190474361181259,0.089181080460548,0.019561652094126,-0.123651593923569,-0.037792719900608,-0.047766987234354,-0.011033730581403,-0.026513421908021,-0.063271127641201,0.069284111261368));
res += mul(Get(s1,dx,0), float4x4(0.060439653694630,0.154823005199432,-0.012047095224261,-0.037112630903721,-0.203051373362541,-0.040528081357479,-0.036229468882084,0.023113466799259,0.094985648989677,0.147803515195847,-0.097124852240086,-0.122314848005772,-0.238396972417831,0.114408634603024,-0.148968055844307,-0.029520807787776));
res += mul(Get(s1,dx,dy), float4x4(-0.005999751389027,0.123462088406086,0.078613504767418,0.035623464733362,-0.094419315457344,0.181498944759369,-0.045948807150126,-0.070155479013920,-0.012677229940891,-0.121042609214783,-0.049454450607300,-0.068774282932281,-0.245307341217995,0.107518054544926,-0.062315080314875,-0.147342279553413));
res += mul(Get(s2,-dx,-dy), float4x4(0.037496700882912,0.014168510213494,-0.208721116185188,0.139378502964973,0.109035447239876,0.128914028406143,0.013388649560511,0.111831329762936,0.169249951839447,-0.105001948773861,-0.109046474099159,0.031561426818371,-0.145287454128265,0.044061608612537,0.076521672308445,-0.047916375100613));
res += mul(Get(s2,-dx,0), float4x4(0.250212043523788,0.181495442986488,-0.147910609841347,0.057202532887459,0.086347088217735,-0.001434748410247,-0.188730940222740,0.100890979170799,-0.093057937920094,-0.192915812134743,-0.337241441011429,0.003358456538990,0.020976025611162,-0.034736484289169,0.714866578578949,0.191030696034431));
res += mul(Get(s2,-dx,dy), float4x4(0.012239086441696,-0.085337147116661,0.048393394798040,0.010959779843688,0.149306878447533,0.045180540531874,-0.014833233319223,-0.008579794317484,-0.076870247721672,-0.076612874865532,-0.190062046051025,-0.127981126308441,-0.193057760596275,-0.074988275766373,0.284530818462372,0.025111302733421));
res += mul(Get(s2,0,-dy), float4x4(0.169945165514946,0.240210965275764,0.194335594773293,-0.166202276945114,-0.161274343729019,0.306029886007309,0.018900984898210,-0.035058282315731,-0.137974947690964,0.169208824634552,-0.000397991097998,-0.051104594022036,-0.057761855423450,-0.184338897466660,-0.141091585159302,-0.039061065763235));
res += mul(Get(s2,0,0), float4x4(0.264741629362106,-0.560758411884308,0.198759108781815,0.041105467826128,-0.155415132641792,-0.182264268398285,-0.164626389741898,-0.143225505948067,-0.027195949107409,-0.175581619143486,0.088360659778118,-0.016005668789148,-0.241323888301849,0.171146795153618,-0.096465043723583,0.068982660770416));
res += mul(Get(s2,0,dy), float4x4(0.173655390739441,-0.075806736946106,0.059372711926699,0.121229402720928,-0.050187665969133,-0.652755498886108,-0.053376678377390,-0.113647423684597,-0.057237371802330,-0.033825598657131,0.039298929274082,-0.030358662828803,-0.153783723711967,-0.195285558700562,-0.087514311075211,0.008088527247310));
res += mul(Get(s2,dx,-dy), float4x4(-0.062443807721138,0.052458237856627,-0.058651041239500,0.040976643562317,-0.036500494927168,-0.015017624013126,-0.046643305569887,-0.021135292947292,-0.155814483761787,0.041060443967581,-0.094165787100792,-0.105065599083900,0.032683350145817,-0.205160647630692,-0.017581107094884,-0.094285368919373));
res += mul(Get(s2,dx,0), float4x4(-0.181165009737015,-0.109697416424751,-0.159586057066917,-0.083531208336353,0.097120434045792,0.153715148568153,0.227401077747345,0.050658453255892,-0.213089630007744,-0.183973282575607,-0.210980579257011,-0.038288418203592,0.048542480915785,0.239016950130463,0.070590510964394,-0.254606992006302));
res += mul(Get(s2,dx,dy), float4x4(-0.028325209394097,-0.037013303488493,-0.142266616225243,-0.023181319236755,0.075474865734577,-0.239919722080231,0.139243111014366,0.116650357842445,-0.126283869147301,0.062646821141243,-0.128160625696182,-0.129777431488037,-0.162443742156029,-0.265731483697891,-0.025451315566897,-0.271245151758194));
res = max(float4(0, 0, 0, 0), res) + float4(0.034319728612900,0.045698352158070,0.083828672766685,0.029636463150382) * min(float4(0, 0, 0, 0), res);
return res;
}
