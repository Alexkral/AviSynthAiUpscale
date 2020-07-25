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
res += mul(Get(s0,-dx,-dy), float4x4(0.059053361415863,0.025959473103285,0.052824091166258,0.175825104117393,-0.048049163073301,-0.033261105418205,-0.108532398939133,-0.010488988831639,-0.114055760204792,0.076621472835541,0.016341583803296,-0.113626599311829,0.161884933710098,-0.064566798508167,0.019216004759073,0.066082589328289));
res += mul(Get(s0,-dx,0), float4x4(-0.131561011075974,0.079732842743397,-0.173533767461777,0.007340347394347,-0.145302802324295,0.086850494146347,0.177782580256462,-0.132181972265244,0.026940129697323,-0.019083397462964,0.040781471878290,0.027293663471937,0.055611424148083,0.059407707303762,0.022095227614045,-0.100828520953655));
res += mul(Get(s0,-dx,dy), float4x4(-0.189407929778099,0.092980101704597,-0.052898988127708,-0.122885562479496,0.083091713488102,0.064285419881344,0.051344931125641,-0.119732216000557,-0.080687023699284,-0.103416144847870,-0.077822305262089,0.036407154053450,-0.052566792815924,-0.030600093305111,-0.263997763395309,-0.074062049388885));
res += mul(Get(s0,0,-dy), float4x4(0.128593310713768,0.159859627485275,0.064843058586121,0.172422915697098,-0.048003431409597,-0.093437306582928,0.130387350916862,-0.160174995660782,0.107926309108734,-0.128539621829987,-0.007405869662762,0.044283945113420,0.043776880949736,0.243847921490669,0.129572033882141,-0.066524043679237));
res += mul(Get(s0,0,0), float4x4(0.288485050201416,-0.136594071984291,-0.175697222352028,-0.109184086322784,0.017617043107748,0.051521431654692,0.104770988225937,0.064581260085106,-0.000206016964512,0.078507632017136,0.135385587811470,-0.047909822314978,0.106071121990681,0.073879420757294,0.089271448552608,0.079425349831581));
res += mul(Get(s0,0,dy), float4x4(-0.063486441969872,0.039338465780020,-0.049255799502134,-0.076454311609268,0.072746306657791,-0.078131861984730,0.038743767887354,-0.084257334470749,0.079633496701717,-0.015477238222957,-0.050212845206261,-0.029734721407294,0.107232704758644,-0.237121939659119,0.047978602349758,-0.052111364901066));
res += mul(Get(s0,dx,-dy), float4x4(0.070182152092457,-0.046403385698795,-0.086194328963757,0.067643024027348,0.003363132243976,0.160274788737297,0.008570185862482,-0.166065558791161,0.139394670724869,0.076060190796852,-0.006187997758389,-0.036937493830919,-0.050777893513441,0.207935407757759,0.023276219144464,0.047409556806087));
res += mul(Get(s0,dx,0), float4x4(-0.025224033743143,-0.154222413897514,0.031489104032516,-0.010138350538909,0.126650393009186,-0.063985057175159,-0.118966564536095,0.055087924003601,-0.021544752642512,-0.058070149272680,0.010435118339956,0.017090138047934,0.123849898576736,0.119812294840813,-0.040967117995024,-0.058417987078428));
res += mul(Get(s0,dx,dy), float4x4(-0.138859450817108,-0.107480041682720,-0.137616693973541,-0.012613778002560,0.009906424209476,-0.010383068583906,-0.012157890014350,-0.026959093287587,-0.058682613074780,-0.260428190231323,-0.074476629495621,0.044119641184807,-0.090546049177647,-0.200772047042847,-0.133915767073631,-0.091275863349438));
res += mul(Get(s1,-dx,-dy), float4x4(0.132909089326859,0.021617842838168,-0.040395308285952,0.158153235912323,-0.007297378033400,0.224681019783020,0.200460582971573,-0.036451846361160,-0.123866565525532,0.067656598985195,0.088002651929855,0.002852131612599,0.024479297921062,0.081259444355965,-0.060259010642767,-0.070981428027153));
res += mul(Get(s1,-dx,0), float4x4(0.031793981790543,-0.005185377318412,0.044547706842422,0.072835303843021,-0.009550208225846,0.034484557807446,-0.107656873762608,0.122869640588760,-0.050865765661001,0.131426796317101,-0.038144960999489,-0.065067701041698,-0.040240149945021,-0.104533851146698,0.089549459517002,-0.072982557117939));
res += mul(Get(s1,-dx,dy), float4x4(-0.264460504055023,-0.068977892398834,0.166797488927841,0.047660637646914,0.059351783245802,0.067490577697754,-0.091120675206184,0.031052559614182,-0.103883698582649,0.064498253166676,0.130945548415184,-0.047412008047104,-0.179865896701813,-0.065157294273376,-0.024508018046618,-0.056682240217924));
res += mul(Get(s1,0,-dy), float4x4(0.011328878812492,-0.141289398074150,-0.082981653511524,0.007021857425570,0.055127292871475,-0.027762541547418,-0.046788439154625,0.111536473035812,-0.001458666403778,-0.028821418061852,-0.008021845482290,-0.066587552428246,0.257546067237854,-0.053585302084684,0.128436475992203,-0.072131454944611));
res += mul(Get(s1,0,0), float4x4(0.141174882650375,-0.078649185597897,0.161806315183640,-0.051418270915747,0.008081940002739,-0.104290321469307,-0.041187863796949,-0.049874875694513,-0.196381911635399,-0.002684800652787,-0.009889103472233,0.044727526605129,0.078655883669853,0.108554825186729,-0.022728018462658,-0.060928292572498));
res += mul(Get(s1,0,dy), float4x4(-0.004333185963333,0.025289647281170,-0.092021875083447,0.099515184760094,0.059690002351999,-0.074273906648159,-0.013405504636467,0.040875062346458,-0.012903633527458,0.076944127678871,0.060704521834850,-0.089465729892254,0.105460122227669,0.026577018201351,0.056407228112221,-0.053955342620611));
res += mul(Get(s1,dx,-dy), float4x4(-0.059552758932114,-0.023493003100157,0.071673557162285,0.103284038603306,0.001678707427345,0.022350393235683,0.034098919481039,-0.053435422480106,0.054464075714350,0.039403054863214,-0.100280821323395,0.054633166640997,0.022982828319073,0.183787494897842,0.044977631419897,-0.126701071858406));
res += mul(Get(s1,dx,0), float4x4(0.047779560089111,-0.065313428640366,-0.001813904498704,-0.150984331965446,0.050495665520430,-0.011059880256653,0.174055010080338,-0.161197811365128,0.032993853092194,0.147042095661163,-0.199401557445526,-0.021548319607973,-0.027762135490775,0.010960375890136,0.046425007283688,-0.146291986107826));
res += mul(Get(s1,dx,dy), float4x4(0.140598744153976,-0.003952953498811,-0.164852887392044,-0.098837554454803,0.029089258983731,-0.033562138676643,0.090794228017330,0.025628529489040,0.144141316413879,0.151709735393524,-0.033802010118961,-0.017730990424752,-0.004846426658332,0.011921104043722,-0.082220792770386,-0.267129987478256));
res += mul(Get(s2,-dx,-dy), float4x4(-0.189452052116394,-0.014436001889408,0.015818089246750,0.048214834183455,-0.086549587547779,0.096209198236465,-0.031641680747271,-0.024413106963038,0.044458627700806,0.017563583329320,-0.195995584130287,-0.017568554729223,0.015804357826710,-0.014853044413030,0.100590981543064,0.117069095373154));
res += mul(Get(s2,-dx,0), float4x4(-0.094994679093361,0.104332461953163,-0.007943156175315,-0.083544366061687,-0.016255378723145,0.087437972426414,0.095313042402267,-0.078362643718719,-0.036779027432203,0.010088109411299,0.030453251674771,-0.024127352982759,0.033477898687124,0.023717112839222,-0.052403431385756,-0.153259620070457));
res += mul(Get(s2,-dx,dy), float4x4(-0.045645814388990,0.077892988920212,-0.047510243952274,0.018432520329952,-0.001121995155700,-0.110860280692577,-0.060789398849010,-0.146840333938599,0.021095521748066,-0.034511938691139,0.192778125405312,0.053410936146975,-0.031219640746713,0.111597590148449,0.017118696123362,0.025422483682632));
res += mul(Get(s2,0,-dy), float4x4(-0.021229578182101,0.021745450794697,-0.019124783575535,-0.030968971550465,-0.036579236388206,0.091237083077431,0.119229637086391,-0.105496011674404,0.086166441440582,0.076811894774437,-0.011333586648107,-0.023329012095928,-0.026819501072168,0.026334956288338,-0.024638840928674,0.131652504205704));
res += mul(Get(s2,0,0), float4x4(0.072008818387985,-0.033539038151503,-0.043388579040766,0.072635464370251,0.061681866645813,0.037116590887308,-0.109673842787743,0.149124175310135,0.304834276437759,0.129333898425102,0.045414939522743,0.021385559812188,-0.020537385717034,0.091146379709244,-0.065090313553810,0.007032162509859));
res += mul(Get(s2,0,dy), float4x4(0.023543089628220,-0.013382027857006,-0.027529075741768,0.031707897782326,-0.003969653509557,-0.065212637186050,0.148540943861008,-0.111943364143372,-0.083235241472721,0.063186042010784,0.057684820145369,0.121712885797024,-0.025927834212780,0.022450361400843,0.006256797350943,0.016707206144929));
res += mul(Get(s2,dx,-dy), float4x4(-0.035177148878574,-0.034911200404167,-0.065501466393471,0.124136559665203,0.011417334899306,-0.010771288536489,-0.003339116228744,0.057262588292360,0.009431117214262,-0.017935715615749,-0.039828792214394,0.057920221239328,-0.072455644607544,0.021345688030124,-0.126490354537964,0.079940684139729));
res += mul(Get(s2,dx,0), float4x4(-0.091074757277966,0.067183144390583,-0.104719303548336,0.020406674593687,-0.066313728690147,-0.005280280020088,-0.176597505807877,0.005237334873527,-0.013990611769259,0.102743580937386,0.068890310823917,-0.050999939441681,-0.068419136106968,-0.160718739032745,-0.137567669153214,0.202700197696686));
res += mul(Get(s2,dx,dy), float4x4(0.065490446984768,0.100969642400742,-0.054333671927452,0.045653160661459,-0.024295417591929,-0.021501915529370,0.048745356500149,0.058368396013975,-0.150163963437080,-0.041821770370007,-0.037766274064779,-0.023832526057959,-0.086659304797649,0.120953448116779,-0.124381028115749,0.080238789319992));
res += mul(Get(s3,-dx,-dy), float4x4(0.091599188745022,0.116853639483452,-0.096194662153721,-0.045888382941484,0.017423851415515,0.039712306112051,0.107147000730038,0.041826631873846,-0.001843869918957,-0.088088460266590,-0.122656710445881,-0.033396951854229,-0.039635535329580,-0.080667167901993,-0.223803028464317,-0.095121279358864));
res += mul(Get(s3,-dx,0), float4x4(-0.003144426271319,-0.046839460730553,0.077359929680824,-0.001394293969497,0.009735493920743,-0.139089331030846,-0.056823659688234,0.017798747867346,0.175191849470139,0.050295952707529,0.029531169682741,-0.046950846910477,0.007840871810913,-0.063378304243088,-0.120189294219017,0.067102834582329));
res += mul(Get(s3,-dx,dy), float4x4(0.030118279159069,-0.160224601626396,0.043413858860731,-0.059870976954699,-0.002494290936738,0.075116403400898,0.140335753560066,0.086290016770363,-0.005089192185551,0.009059898555279,-0.080491229891777,-0.060690030455589,0.096385404467583,0.070422731339931,0.127597033977509,0.023041378706694));
res += mul(Get(s3,0,-dy), float4x4(-0.044297240674496,0.135819628834724,0.099764779210091,-0.006439993623644,-0.023352399468422,-0.019362017512321,0.021125307306647,0.016131872311234,-0.050987493246794,0.065421395003796,0.051818594336510,-0.183776110410690,0.039552338421345,0.025117253884673,0.148815810680389,0.012384478934109));
res += mul(Get(s3,0,0), float4x4(-0.197626069188118,0.046218760311604,0.079915277659893,-0.212539881467819,0.161730825901031,0.019090170040727,0.037597641348839,-0.077288903295994,-0.104338832199574,0.133772954344749,0.111111618578434,-0.120747484266758,-0.029745411127806,0.060346927493811,-0.022611636668444,0.065587371587753));
res += mul(Get(s3,0,dy), float4x4(0.010689099319279,0.111543819308281,-0.046289008110762,-0.088462039828300,-0.096679337322712,0.030409274622798,-0.060027472674847,-0.077572740614414,0.060056395828724,0.019589163362980,-0.177078470587730,-0.046619426459074,-0.080618888139725,0.097389422357082,-0.009279512800276,0.071473047137260));
res += mul(Get(s3,dx,-dy), float4x4(0.061292015016079,0.055499397218227,-0.101569868624210,0.035813566297293,0.009238881058991,0.034750938415527,-0.087449505925179,-0.107223294675350,0.063227839767933,-0.132487550377846,-0.037571147084236,0.026553306728601,-0.021956069394946,0.092923663556576,0.026746999472380,-0.052408836781979));
res += mul(Get(s3,dx,0), float4x4(0.136337548494339,0.072147645056248,-0.017042305320501,0.037155851721764,0.034973811358213,-0.045420657843351,-0.015950122848153,0.018706899136305,-0.034322530031204,-0.066492460668087,0.005561491008848,-0.078639149665833,0.024407114833593,-0.130767717957497,0.082264594733715,-0.148146033287048));
res += mul(Get(s3,dx,dy), float4x4(-0.095840789377689,0.113547243177891,-0.059458542615175,-0.113895021378994,-0.166645407676697,-0.042957935482264,0.004139500670135,0.070543520152569,-0.039636015892029,0.073409833014011,-0.193074882030487,-0.113656140863895,-0.042921233922243,0.043137628585100,0.078580446541309,-0.126286849379539));
res = max(float4(0,0,0,0), res);
return res;
}
