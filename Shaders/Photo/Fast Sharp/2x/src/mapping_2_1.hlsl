sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.396625518798828,0.095056362450123,-0.059266272932291,-0.020599020645022);
res += mul(Get(s0,-dx,-dy), float4x4(0.141198530793190,-0.068096205592155,0.442978918552399,-0.088496886193752,0.104077570140362,0.128276586532593,0.169153898954391,0.043189357966185,-0.042992722243071,0.023267304524779,0.166946679353714,0.039325237274170,0.102561958134174,-0.060250163078308,0.113635815680027,0.038280598819256));
res += mul(Get(s0,-dx,0), float4x4(0.143847480416298,-0.198990508913994,0.379856020212173,-0.158390566706657,-0.030282663181424,-0.052779793739319,-0.146722853183746,0.014169363304973,-0.030556904152036,-0.216700434684753,-0.152082011103630,-0.144522875547409,0.201983615756035,-0.108361005783081,0.090595580637455,-0.013794119469821));
res += mul(Get(s0,-dx,dy), float4x4(-0.072633735835552,0.020341088995337,-0.386938124895096,-0.029388995841146,0.175324380397797,0.060840945690870,0.128928065299988,0.102649465203285,0.007163004018366,-0.191573977470398,-0.260588705539703,-0.162743136286736,0.249943733215332,0.076414830982685,-0.181861713528633,0.027946904301643));
res += mul(Get(s0,0,-dy), float4x4(0.059422396123409,0.075217053294182,0.105933107435703,-0.456128180027008,0.096422038972378,-0.052691165357828,0.044077675789595,0.012517726980150,-0.252012848854065,0.029343767091632,0.107513882219791,0.272175967693329,0.057236839085817,-0.059524293988943,-0.072756186127663,0.024746980518103));
res += mul(Get(s0,0,0), float4x4(0.546270549297333,0.227190271019936,-0.508376598358154,0.578339695930481,0.270579665899277,0.015231343917549,0.039208967238665,-0.087122350931168,0.296353578567505,-0.081630013883114,0.057456120848656,0.117699958384037,0.425698786973953,-0.023398399353027,0.115045689046383,-0.065529651939869));
res += mul(Get(s0,0,dy), float4x4(0.131634116172791,0.027524178847671,0.127288565039635,0.073990367352962,-0.073904596269131,-0.050246827304363,0.117571450769901,0.138570651412010,0.301013141870499,0.241762503981590,-0.372131764888763,0.287753194570541,0.420482337474823,0.146983191370964,-0.017356077209115,0.149267107248306));
res += mul(Get(s0,dx,-dy), float4x4(0.213683187961578,-0.034434862434864,-0.297272652387619,-0.118622548878193,0.013247129507363,-0.013744650408626,-0.081018164753914,-0.018852762877941,0.042607437819242,0.037951033562422,0.014401634223759,0.052255935966969,0.082600593566895,0.032600540667772,-0.014695873484015,-0.013689722865820));
res += mul(Get(s0,dx,0), float4x4(0.173407554626465,0.035280812531710,-0.027465097606182,-0.096235148608685,0.095668509602547,0.008455637842417,0.017571337521076,-0.034056521952152,-0.081380367279053,0.173618748784065,-0.050557978451252,-0.092342153191566,-0.051686458289623,-0.003662295639515,0.027754437178373,0.103836029767990));
res += mul(Get(s0,dx,dy), float4x4(-0.116214409470558,-0.102646201848984,0.262267529964447,-0.018255524337292,0.237574413418770,0.050805598497391,-0.077707171440125,0.080466017127037,-0.009078297764063,0.048636689782143,0.049762368202209,-0.006615933962166,0.124619439244270,-0.070646032691002,0.019360134378076,-0.090796783566475));
res += mul(Get(s1,-dx,-dy), float4x4(0.164941698312759,-0.012508770450950,-0.204944163560867,0.088183738291264,-0.070779137313366,-0.123357243835926,0.328468173742294,-0.046568296849728,-0.005873200017959,-0.217768207192421,-0.239947155117989,-0.200728252530098,-0.082994386553764,0.008063200861216,0.200765103101730,-0.074761860072613));
res += mul(Get(s1,-dx,0), float4x4(-0.054236512631178,-0.064561732113361,-0.407874733209610,-0.175468936562538,0.153038904070854,-0.260885626077652,0.032005812972784,-0.232663318514824,-0.122673578560352,0.011613862589002,-0.090088933706284,-0.217482849955559,0.103080935776234,0.161963343620300,-0.424554765224457,-0.066185660660267));
res += mul(Get(s1,-dx,dy), float4x4(-0.064587011933327,0.058495506644249,0.168287903070450,-0.044678792357445,-0.017508879303932,0.007908815518022,-0.109231017529964,-0.085025832056999,-0.070787496864796,-0.155397310853004,0.169706612825394,-0.054538201540709,-0.389709800481796,0.026239642873406,-0.054229326546192,-0.060829367488623));
res += mul(Get(s1,0,-dy), float4x4(0.190893724560738,-0.007999958470464,-0.358786314725876,0.162138223648071,-0.127892062067986,0.143480435013771,0.104910351336002,-0.069012947380543,0.020715862512589,-0.062582202255726,-0.045676723122597,-0.110404849052429,0.287144541740417,-0.016329292207956,-0.173064425587654,0.009417889639735));
res += mul(Get(s1,0,0), float4x4(0.170839443802834,0.418663710355759,0.072309091687202,0.503195941448212,-0.205404117703438,-0.085696831345558,0.341121613979340,-0.168506637215614,-0.142623469233513,0.000349295674823,-0.021658346056938,-0.184701174497604,0.536055386066437,0.676861703395844,-0.410688012838364,0.088184408843517));
res += mul(Get(s1,0,dy), float4x4(-0.076435633003712,0.003749133553356,0.193959727883339,-0.260671645402908,-0.006732484791428,0.038941137492657,-0.296413958072662,-0.240431830286980,0.089290663599968,0.009339094161987,-0.047421921044588,-0.086561188101768,-0.010923250578344,-0.091640755534172,0.316887199878693,-0.103484705090523));
res += mul(Get(s1,dx,-dy), float4x4(-0.123270459473133,-0.019255504012108,0.071727916598320,0.093500576913357,0.177066743373871,0.053961418569088,-0.145621195435524,-0.033407188951969,0.055165518075228,0.036523234099150,-0.098492890596390,-0.015582966618240,-0.314955919981003,-0.055443711578846,0.019630562514067,0.093162894248962));
res += mul(Get(s1,dx,0), float4x4(0.131164461374283,-0.080025576055050,0.247368395328522,-0.293199062347412,0.226799651980400,0.142497360706329,-0.270949810743332,-0.050721559673548,0.078746922314167,0.108033999800682,0.026997631415725,0.075065143406391,0.221893697977066,-0.397600769996643,0.262044191360474,-0.280283391475677));
res += mul(Get(s1,dx,dy), float4x4(0.003071877639741,0.081612445414066,-0.018580185249448,-0.172687187790871,0.017312780022621,0.012965216301382,0.158549606800079,-0.175513267517090,-0.029953785240650,0.081757925450802,0.009644351899624,0.023708662018180,-0.541828215122223,-0.114078760147095,-0.010921651497483,0.110981166362762));
res += mul(Get(s2,-dx,-dy), float4x4(0.003514406271279,0.002527193864807,0.021142102777958,0.002601955784485,0.053369782865047,0.001414648257196,-0.136248812079430,-0.114606380462646,-0.016648402437568,-0.130512744188309,-0.024543955922127,-0.136313796043396,0.134957730770111,0.059789061546326,0.137828648090363,-0.009440891444683));
res += mul(Get(s2,-dx,0), float4x4(0.027731424197555,-0.074762299656868,-0.029455136507750,-0.009317064657807,-0.057751473039389,0.471755146980286,-0.052468691021204,-0.058872498571873,-0.112352862954140,0.035643670707941,-0.224788531661034,-0.301420778036118,0.138501882553101,-0.018314473330975,-0.041479062289000,-0.015167322941124));
res += mul(Get(s2,-dx,dy), float4x4(0.047881785780191,0.038068495690823,-0.043529324233532,-0.012841036543250,0.016721483319998,0.022866994142532,0.115908890962601,-0.090587042272091,-0.014692958444357,0.040071066468954,-0.021878169849515,-0.033509835600853,0.046959150582552,-0.132083222270012,-0.018845856189728,0.133086651563644));
res += mul(Get(s2,0,-dy), float4x4(-0.036697909235954,-0.102034792304039,0.023534927517176,0.032381452620029,-0.087562710046768,0.011928848922253,0.003870145883411,-0.048384975641966,0.409776002168655,-0.331735938787460,-0.172530978918076,0.019745137542486,-0.022782692685723,-0.090990372002125,-0.012493718415499,0.032250195741653));
res += mul(Get(s2,0,0), float4x4(0.003027477534488,-0.219858974218369,0.102303326129913,0.120713070034981,0.887505650520325,-0.072689116001129,0.164866372942924,0.173441052436829,-0.043005190789700,-0.284099459648132,0.023356186226010,-0.132371738553047,0.825049936771393,-0.007956300862134,0.053452655673027,-0.040830176323652));
res += mul(Get(s2,0,dy), float4x4(0.050784382969141,0.040781114250422,0.009273828938603,0.015891838818789,-0.068503350019455,-0.028876807540655,-0.085634380578995,-0.015552100725472,0.175398960709572,-0.022098360583186,-0.069208964705467,-0.037223253399134,0.008693937212229,-0.039184436202049,-0.243791222572327,0.084609769284725));
res += mul(Get(s2,dx,-dy), float4x4(0.008670791983604,0.020512720569968,0.086463607847691,-0.012045120820403,0.103081174194813,-0.021731423214078,0.051775738596916,0.027875825762749,0.194835871458054,0.035175271332264,-0.086056582629681,-0.034356176853180,0.033009007573128,0.035567563027143,0.040190052241087,0.058130037039518));
res += mul(Get(s2,dx,0), float4x4(-0.083728767931461,-1.264024972915649,0.154642060399055,-0.022204175591469,-0.039374504238367,-0.080463193356991,-0.052063394337893,-0.049005728214979,0.030588237568736,-0.040144052356482,0.055473208427429,-0.010352629236877,0.234370350837708,0.022990683093667,-0.049287538975477,0.015592947602272));
res += mul(Get(s2,dx,dy), float4x4(0.088428564369678,0.108753994107246,-0.157289564609528,0.012717281468213,-0.004348441492766,-0.013199677690864,-0.027874607592821,-0.009875328280032,0.030986446887255,0.010654663667083,0.036930948495865,-0.027174619957805,0.144631281495094,0.097858719527721,-0.018299451097846,0.114427722990513));
res = max(float4(0, 0, 0, 0), res) + float4(0.332401573657990,-0.250573217868805,-0.579247534275055,1.034337282180786) * min(float4(0, 0, 0, 0), res);
return res;
}
