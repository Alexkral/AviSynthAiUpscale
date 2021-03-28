sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.020938904955983,-0.063506975769997,-0.020147977396846,0.127546355128288);
res += mul(Get(s0,-dx,-dy), float4x4(-0.037530008703470,-0.046696595847607,0.080806493759155,-0.024253187701106,0.061157714575529,0.042301237583160,0.050192955881357,0.035777624696493,0.023152168840170,-0.097384117543697,0.031757447868586,-0.058957513421774,0.083853393793106,0.022796932607889,-0.050955526530743,0.055468939244747));
res += mul(Get(s0,-dx,0), float4x4(0.245714306831360,-0.055077258497477,0.143422976136208,0.088947817683220,0.018868526443839,0.061389833688736,-0.111020177602768,-0.023680893704295,-0.122707821428776,0.122708372771740,0.013198993168771,0.012119208462536,-0.019765093922615,0.048490460962057,0.058935157954693,-0.052545119076967));
res += mul(Get(s0,-dx,dy), float4x4(0.128906086087227,-0.093724094331264,0.035682924091816,-0.038695730268955,-0.140794232487679,0.098086148500443,0.030990956351161,-0.024742370471358,-0.115870222449303,0.047903586179018,0.038537133485079,-0.007855598814785,0.080894857645035,0.037234909832478,0.011175119318068,0.068663612008095));
res += mul(Get(s0,0,-dy), float4x4(0.293760031461716,-0.085451155900955,-0.111436501145363,0.018793076276779,-0.041563630104065,0.300331562757492,-0.036392264068127,-0.092493548989296,-0.111869640648365,-0.270671546459198,-0.051919993013144,0.115950889885426,-0.081988237798214,-0.006348935887218,0.035242188721895,-0.026694042608142));
res += mul(Get(s0,0,0), float4x4(0.140761896967888,0.072758629918098,0.303770691156387,0.056665740907192,-0.313609302043915,-0.142739817500114,0.001327182515524,-0.155502244830132,-0.185421526432037,0.440798133611679,-0.145066902041435,-0.489774674177170,0.289003401994705,0.004342746455222,0.130039080977440,-0.005182375665754));
res += mul(Get(s0,0,dy), float4x4(-0.010842406190932,0.214499354362488,0.107688620686531,0.061494402587414,-0.071017935872078,-0.002668346278369,-0.260134965181351,0.048934929072857,0.040400628000498,0.348243951797485,-0.207018554210663,0.022010808810592,0.100626699626446,-0.079566150903702,0.147711560130119,0.107918426394463));
res += mul(Get(s0,dx,-dy), float4x4(0.047762084752321,-0.053684737533331,0.172451809048653,-0.142326906323433,0.122575171291828,0.131299361586571,0.037010315805674,-0.196024969220161,0.027492884546518,0.038235142827034,-0.018210655078292,0.016634328290820,0.136826083064079,-0.014911959879100,-0.063013687729836,-0.039778180420399));
res += mul(Get(s0,dx,0), float4x4(0.275871902704239,0.022172251716256,0.388374537229538,0.205384999513626,0.135785043239594,-0.152531713247299,-0.129261180758476,0.192367061972618,0.054781634360552,0.021850481629372,-0.036299895495176,-0.318415671586990,0.034278027713299,0.033562377095222,0.093060769140720,-0.061821043491364));
res += mul(Get(s0,dx,dy), float4x4(0.046093173325062,0.143823429942131,0.163090363144875,0.066974371671677,-0.060470279306173,0.046070821583271,0.007601382676512,0.157486975193024,-0.046403996646404,0.002920995233580,0.003441149136052,-0.028866564854980,-0.081972450017929,-0.130503103137016,0.091578856110573,0.020361270755529));
res += mul(Get(s1,-dx,-dy), float4x4(0.109858512878418,-0.095565214753151,0.159408628940582,0.027813876047730,0.178207695484161,-0.084401190280914,0.023244457319379,0.107961125671864,0.088543616235256,0.244895488023758,0.143239796161652,-0.009801022708416,0.054919637739658,0.056139953434467,0.014145844615996,-0.019888319075108));
res += mul(Get(s1,-dx,0), float4x4(0.299156337976456,0.069169297814369,-0.063482768833637,-0.142236322164536,0.172558665275574,-0.027625465765595,0.009963926859200,-0.062648996710777,0.015080448240042,-0.245775997638702,-0.218149632215500,-0.028511872515082,0.210264235734940,-0.152108505368233,-0.069571830332279,0.049532569944859));
res += mul(Get(s1,-dx,dy), float4x4(0.143687501549721,-0.261191308498383,-0.037862408906221,-0.054616242647171,0.018800729885697,0.067451201379299,0.115310020744801,-0.000544964452274,-0.051978517323732,0.136504784226418,-0.070920921862125,0.037263277918100,0.141447365283966,-0.089635506272316,0.017363209277391,-0.081015817821026));
res += mul(Get(s1,0,-dy), float4x4(0.307735323905945,0.119850590825081,0.169697925448418,-0.074582606554031,-0.281622320413589,0.087663128972054,0.029121501371264,0.161088898777962,-0.449137866497040,0.215468809008598,-0.281225025653839,-0.153698414564133,-0.093723490834236,0.307526558637619,-0.015736984089017,-0.312640488147736));
res += mul(Get(s1,0,0), float4x4(0.376506209373474,-0.271061360836029,0.439695894718170,-0.014968665316701,-0.405427277088165,0.032082557678223,-0.327227443456650,-0.144246816635132,-0.440997451543808,-0.266476660966873,-0.072425819933414,0.188962683081627,-0.121318355202675,-0.308374077081680,0.095241330564022,-0.023273102939129));
res += mul(Get(s1,0,dy), float4x4(0.089901357889175,-0.041296154260635,0.378687679767609,-0.072057716548443,-0.004358050413430,-0.289690315723419,-0.176000177860260,0.001716029131785,-0.034844297915697,-0.121997952461243,0.116657778620720,-0.184717595577240,-0.020687889307737,0.075468651950359,0.108398489654064,-0.083284877240658));
res += mul(Get(s1,dx,-dy), float4x4(-0.105617344379425,0.151040270924568,0.077059678733349,0.065670639276505,0.144327670335770,-0.077565878629684,0.004534546285868,-0.030682725831866,0.034009076654911,-0.091136910021305,0.062031775712967,0.202727958559990,-0.020937491208315,0.107066668570042,0.004177785478532,-0.134528160095215));
res += mul(Get(s1,dx,0), float4x4(-0.068783327937126,-0.205771312117577,0.342099845409393,-0.252333492040634,0.171869784593582,-0.083948135375977,0.046461742371321,0.104437395930290,0.068886786699295,0.075428515672684,-0.284212172031403,-0.042619176208973,0.036094684153795,-0.062475919723511,-0.068289577960968,0.084986582398415));
res += mul(Get(s1,dx,dy), float4x4(0.185226812958717,0.012652298435569,0.130478709936142,0.050764750689268,-0.034834790974855,-0.019040836021304,0.142440795898438,-0.004254887346178,-0.007727602031082,-0.253853857517242,-0.260410070419312,-0.056530494242907,0.002424599137157,0.077443793416023,-0.016752917319536,-0.033659085631371));
res += mul(Get(s2,-dx,-dy), float4x4(0.009623076766729,0.006348363589495,0.139475107192993,-0.104114323854446,-0.171593204140663,0.104102127254009,-0.017338193953037,-0.036541692912579,0.133372843265533,0.006981200538576,-0.016937619075179,0.009459366090596,-0.106567524373531,-0.025222839787602,0.059390850365162,0.081966169178486));
res += mul(Get(s2,-dx,0), float4x4(-0.136149868369102,-0.049672171473503,0.395824730396271,0.079079382121563,0.030428595840931,-0.159980401396751,-0.069521918892860,0.147852912545204,0.142090067267418,-0.020367501303554,-0.129488319158554,0.042479977011681,0.194756358861923,-0.062879636883736,-0.234713599085808,0.030996263027191));
res += mul(Get(s2,-dx,dy), float4x4(0.077302001416683,-0.044434808194637,0.115912564098835,-0.048540104180574,-0.107780016958714,0.114293716847897,-0.102322675287724,0.065107390284538,-0.009281447157264,-0.098543494939804,-0.066399864852428,-0.022387806326151,0.002046711044386,-0.055541381239891,0.035182431340218,-0.025108037516475));
res += mul(Get(s2,0,-dy), float4x4(0.085822105407715,-0.299540877342224,-0.041876327246428,0.170754238963127,0.080362133681774,-0.004974571056664,-0.186976954340935,-0.028144564479589,-0.467473298311234,-0.094651505351067,-0.096655510365963,0.071306630969048,-0.181585788726807,0.208673745393753,-0.102726742625237,-0.085609190165997));
res += mul(Get(s2,0,0), float4x4(-0.409314841032028,0.174877762794495,-0.341408163309097,0.225093513727188,0.000897088320926,0.070753104984760,-0.617009758949280,0.114173032343388,-0.445004224777222,-0.160277038812637,-0.185157626867294,-0.159380391240120,-0.635991513729095,0.003584120655432,0.241579219698906,0.288329601287842));
res += mul(Get(s2,0,dy), float4x4(-0.165066838264465,-0.257210403680801,-0.142260491847992,-0.076214522123337,0.053878586739302,0.139770686626434,-0.158856555819511,-0.090389832854271,-0.091020092368126,-0.577742516994476,0.065757706761360,0.066463708877563,-0.208352506160736,-0.080368652939796,-0.004297438543290,0.078531861305237));
res += mul(Get(s2,dx,-dy), float4x4(-0.075952284038067,0.180884838104248,0.105506204068661,0.065084919333458,-0.071657776832581,-0.105183668434620,0.092307105660439,-0.057945437729359,-0.292126208543777,-0.132695734500885,-0.229473948478699,0.007973504252732,-0.007899197749794,0.071978725492954,-0.144721835851669,0.019078772515059));
res += mul(Get(s2,dx,0), float4x4(0.101846829056740,0.108342640101910,-0.308166176080704,0.163310542702675,-0.275756269693375,0.035171169787645,0.244505986571312,-0.004155134782195,-0.294128358364105,-0.069323375821114,-0.381958127021790,0.175017923116684,0.133844971656799,0.078564822673798,-0.609155297279358,0.424679934978485));
res += mul(Get(s2,dx,dy), float4x4(0.101860277354717,-0.104826249182224,-0.263352900743484,-0.185517370700836,0.050054308027029,0.100955598056316,0.144664660096169,-0.035372488200665,-0.142202779650688,-0.578159570693970,-0.301754325628281,0.079774960875511,0.007373149972409,-0.080293603241444,-0.167712345719337,-0.037968661636114));
res = max(float4(0, 0, 0, 0), res) + float4(-0.209451064467430,-0.069775104522705,-0.158557876944542,-0.186207190155983) * min(float4(0, 0, 0, 0), res);
return res;
}