sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.140746191143990,0.095361746847630,0.070506349205971,0.019337471574545);
res += mul(Get(s0,-dx,-dy), float4x4(-0.048093773424625,0.073294095695019,-0.023714097216725,0.205325737595558,0.040134288370609,-0.064160600304604,-0.018880039453506,0.056727327406406,-0.123920060694218,-0.007555997464806,-0.034886654466391,-0.074380531907082,-0.039067346602678,0.191884100437164,0.103221125900745,-0.259503692388535));
res += mul(Get(s0,-dx,0), float4x4(-0.101057529449463,0.217497766017914,0.156941369175911,-0.202374786138535,0.011551196686924,-0.034664086997509,-0.057894542813301,-0.059860460460186,0.061593852937222,0.002755349501967,0.150713965296745,-0.118083037436008,0.149743661284447,-0.042065925896168,-0.097828231751919,0.144634276628494));
res += mul(Get(s0,-dx,dy), float4x4(-0.125353351235390,0.095762722194195,0.032473463565111,-0.108023174107075,0.056132633239031,0.165496647357941,0.045795973390341,-0.013829637318850,0.169638827443123,0.036325432360172,0.172329604625702,0.057797100394964,0.019820194691420,0.113003626465797,0.070064730942249,0.128077358007431));
res += mul(Get(s0,0,-dy), float4x4(-0.017290040850639,-0.086195386946201,0.041100978851318,-0.050664745271206,0.061460368335247,-0.139935106039047,0.042615305632353,0.038131974637508,-0.161599606275558,-0.152186706662178,-0.193305090069771,-0.089119739830494,0.032101534307003,0.349386274814606,0.028416251763701,0.094675652682781));
res += mul(Get(s0,0,0), float4x4(0.151592105627060,0.528524637222290,0.080244511365891,-0.159753337502480,-0.184146225452423,-0.069050356745720,-0.192819610238075,-0.016350284218788,-0.926637232303619,-0.556639194488525,0.240126758813858,-0.091342732310295,0.579509556293488,-0.023555178195238,0.131961733102798,0.057399254292250));
res += mul(Get(s0,0,dy), float4x4(-0.091722346842289,-0.267217338085175,-0.535856902599335,-0.141371592879295,0.247028768062592,0.132617294788361,0.334738463163376,0.008696221746504,0.484612435102463,-0.122640654444695,0.496490836143494,0.327020883560181,0.092551156878471,0.057964853942394,0.230908751487732,0.231487616896629));
res += mul(Get(s0,dx,-dy), float4x4(0.027462005615234,0.065509058535099,0.172704651951790,-0.396243810653687,-0.014671853743494,0.010143979452550,0.051873795688152,-0.044091239571571,0.151155710220337,0.090801887214184,0.005719356704503,0.062208298593760,0.126588955521584,-0.055158257484436,0.130045160651207,-0.019812103360891));
res += mul(Get(s0,dx,0), float4x4(0.227802604436874,0.021223543211818,0.143935948610306,-0.023420082405210,0.106295645236969,-0.148214504122734,-0.222596064209938,0.113637045025826,0.310781896114349,0.247234940528870,0.055518850684166,0.164195701479912,-0.098712287843227,-0.106930851936340,-0.051379568874836,-0.277090162038803));
res += mul(Get(s0,dx,dy), float4x4(0.116825595498085,-0.051964677870274,-0.130719378590584,0.264537960290909,0.166272863745689,-0.077212177217007,0.020037820562720,0.166511312127113,0.251124888658524,-0.084834784269333,0.078006103634834,-0.120263367891312,-0.142099440097809,-0.078089237213135,0.206216424703598,-0.056543063372374));
res += mul(Get(s1,-dx,-dy), float4x4(-0.084155343472958,-0.097019873559475,-0.086279347538948,-0.143442451953888,0.204143181443214,-0.050179220736027,-0.017582304775715,0.078322328627110,-0.100565604865551,0.069330818951130,-0.094336576759815,0.334943234920502,0.153076902031898,0.095476157963276,0.127857044339180,0.095826640725136));
res += mul(Get(s1,-dx,0), float4x4(0.159113332629204,-0.605148792266846,0.467806756496429,0.232089757919312,0.522994637489319,0.414373010396957,-0.002664563478902,0.077917136251926,-0.011033269576728,-0.119456574320793,-0.024398874491453,-0.176373571157455,0.017937405034900,-0.202413573861122,-0.484182447195053,-0.112178653478622));
res += mul(Get(s1,-dx,dy), float4x4(0.057683683931828,-0.040286231786013,-0.143736422061920,-0.056335024535656,0.099464029073715,-0.055742163211107,-0.163238510489464,-0.162530317902565,-0.008013158105314,0.076874382793903,0.091073587536812,-0.114047907292843,0.027806177735329,0.042072378098965,-0.035547427833080,0.015357539989054));
res += mul(Get(s1,0,-dy), float4x4(-0.138016864657402,-0.039096195250750,-0.016890333965421,0.015629164874554,0.243693456053734,0.020455364137888,0.155742958188057,0.091714940965176,0.086188144981861,0.077595293521881,-0.161749616265297,0.045849006623030,0.045743633061647,0.084886625409126,0.123288467526436,-0.232550397515297));
res += mul(Get(s1,0,0), float4x4(0.241879031062126,0.463867992162704,-0.011127776466310,0.298935621976852,-0.449517399072647,-0.509107291698456,-0.363391458988190,-0.024658920243382,0.066670976579189,-0.591062128543854,-0.359733164310455,-0.483867019414902,-0.068458199501038,-0.404796004295349,-0.711940824985504,-0.163475319743156));
res += mul(Get(s1,0,dy), float4x4(0.016869394108653,-0.061238590627909,0.054452572017908,-0.105955608189106,-0.101519696414471,-0.289525210857391,0.035349082201719,-0.069898277521133,-0.099703624844551,0.387667119503021,0.398371577262878,0.251479059457779,-0.029889382421970,0.048650071024895,-0.040431164205074,-0.025980392470956));
res += mul(Get(s1,dx,-dy), float4x4(-0.083913952112198,0.023501912131906,-0.023529032245278,-0.087893843650818,-0.000398905685870,0.085377283394337,0.049137052148581,0.206607803702354,0.083032354712486,-0.084596715867519,0.092176795005798,-0.555871546268463,-0.174328148365021,0.175513550639153,0.030260326340795,-0.418560624122620));
res += mul(Get(s1,dx,0), float4x4(-0.118333771824837,0.135547816753387,0.023021107539535,0.131596788764000,0.003536691423506,-0.071060076355934,-0.150489211082458,-0.160006269812584,0.067398801445961,-0.181996196508408,-0.175849676132202,-0.138363957405090,-0.048340924084187,-0.124943450093269,-0.003397792344913,0.248993933200836));
res += mul(Get(s1,dx,dy), float4x4(-0.124847620725632,0.091446951031685,0.024213245138526,-0.117407478392124,-0.073002897202969,-0.078343912959099,0.021569978445768,0.011580118909478,0.070137411355972,0.010240796953440,-0.023799542337656,0.506749689579010,0.027088904753327,-0.025312641635537,0.025177700445056,0.041625667363405));
res += mul(Get(s2,-dx,-dy), float4x4(0.117851026356220,-0.082006134092808,0.071942061185837,-0.013433663174510,-0.066070593893528,0.034227076917887,-0.076494991779327,0.111293710768223,0.094956628978252,0.045895412564278,0.004103239625692,0.042060270905495,-0.109933279454708,0.115063026547432,-0.007638703100383,-0.075362667441368));
res += mul(Get(s2,-dx,0), float4x4(-0.116746149957180,-0.050571709871292,0.027346700429916,-0.038502596318722,-0.044604636728764,0.513822615146637,0.061694215983152,-0.231667220592499,0.148956403136253,-0.026375778019428,-0.003298782976344,-0.042406927794218,-0.079580925405025,0.068058960139751,-0.112418107688427,0.017680130898952));
res += mul(Get(s2,-dx,dy), float4x4(0.071266598999500,-0.071030393242836,-0.179885700345039,0.024074304848909,0.030679153278470,-0.234202504158020,0.072598867118359,-0.111900061368942,0.190138354897499,0.022934410721064,-0.189334303140640,0.029168032109737,-0.158313021063805,-0.023465972393751,0.033629242330790,-0.017173537984490));
res += mul(Get(s2,0,-dy), float4x4(-0.114151306450367,-0.239837989211082,-0.152021586894989,-0.079315625131130,-0.180995434522629,0.074392668902874,-0.217291951179504,-0.179262623190880,0.109754562377930,0.024531658738852,0.191717430949211,-0.245129004120827,0.142632663249969,-0.227910429239273,-0.165684863924980,0.018250014632940));
res += mul(Get(s2,0,0), float4x4(-0.003304383950308,0.581923067569733,0.492425620555878,0.182543084025383,-0.355566829442978,-0.552838921546936,0.016582245007157,0.025048101320863,0.039444863796234,-0.194947063922882,-0.036908067762852,-0.061601828783751,0.375305682420731,-0.764915287494659,0.342675566673279,-0.072069033980370));
res += mul(Get(s2,0,dy), float4x4(0.142055332660675,-0.290942102670670,-0.393689334392548,0.014786177314818,0.217254072427750,0.217718496918678,0.423922300338745,0.172255173325539,0.153476133942604,0.150778070092201,-0.214596211910248,0.000926552282181,-0.063718356192112,0.063396379351616,-0.027290573343635,-0.348455429077148));
res += mul(Get(s2,dx,-dy), float4x4(-0.062774628400803,0.042682532221079,-0.070242397487164,0.156831577420235,-0.059428542852402,0.017786439508200,-0.113951042294502,-0.237216070294380,0.073743686079979,0.108212865889072,0.154110506176949,-0.026881216093898,-0.095690079033375,0.122625961899757,-0.120534330606461,0.109429329633713));
res += mul(Get(s2,dx,0), float4x4(0.024582302197814,-0.198113724589348,-0.020346885547042,-0.065365739166737,-0.031071016564965,0.478672027587891,0.026004839688540,0.026940334588289,0.035809699445963,-0.201845318078995,-0.182696476578712,-0.207818388938904,0.349045872688293,-0.039037607610226,0.097914725542068,0.028204502537847));
res += mul(Get(s2,dx,dy), float4x4(0.074553132057190,-0.230192273855209,-0.058336708694696,-0.233642637729645,-0.076026551425457,-0.105603992938995,0.220526933670044,0.197408854961395,-0.088237360119820,0.024399923160672,-0.129093557596207,0.128577560186386,-0.046267535537481,0.039757110178471,-0.127198889851570,-0.087107658386230));
res = max(float4(0, 0, 0, 0), res) + float4(-0.377387493848801,0.802334785461426,-0.389738529920578,-0.518427550792694) * min(float4(0, 0, 0, 0), res);
return res;
}
