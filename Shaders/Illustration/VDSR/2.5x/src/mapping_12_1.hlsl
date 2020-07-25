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
res += mul(Get(s0,-dx,-dy), float4x4(0.121617726981640,-0.052649930119514,0.010224385187030,0.119665600359440,-0.031445488333702,-0.102610513567924,0.012396347709000,0.074877478182316,0.063065998256207,0.021735792979598,0.099649563431740,0.019039425998926,-0.117162019014359,0.078926697373390,0.018354827538133,-0.136202186346054));
res += mul(Get(s0,-dx,0), float4x4(0.044060930609703,-0.010050162672997,0.146659582853317,-0.053612090647221,0.160710334777832,0.106756120920181,-0.053848613053560,0.236617147922516,0.019928118214011,0.058815028518438,0.072065114974976,0.094794377684593,0.077232234179974,0.054830953478813,-0.106771498918533,0.081548787653446));
res += mul(Get(s0,-dx,dy), float4x4(0.089816480875015,0.071652233600616,-0.081968508660793,0.062194276601076,-0.040661316365004,-0.007729818578809,0.103891834616661,-0.076791383326054,0.117381729185581,-0.098208129405975,-0.103869810700417,0.004361475352198,0.091815166175365,-0.214050576090813,0.138324022293091,0.256398290395737));
res += mul(Get(s0,0,-dy), float4x4(0.044182155281305,-0.144599363207817,-0.039047058671713,-0.166952595114708,-0.112983524799347,-0.098946839570999,0.167784377932549,0.043098438531160,-0.014166519977152,-0.015917968004942,-0.159350469708443,-0.148460879921913,-0.144394755363464,0.056784931570292,-0.266841173171997,-0.124535083770752));
res += mul(Get(s0,0,0), float4x4(-0.039665177464485,0.028671389445662,0.112129114568233,-0.055303879082203,-0.079541929066181,-0.037586621940136,0.199111104011536,-0.161806732416153,-0.123838007450104,-0.051989451050758,0.074276730418205,0.126093119382858,-0.100519664585590,-0.052838254719973,0.067640557885170,-0.152020737528801));
res += mul(Get(s0,0,dy), float4x4(-0.014333684928715,-0.085161820054054,0.043606400489807,-0.088651232421398,0.051233641803265,-0.015693131834269,-0.044023342430592,0.226923137903214,-0.011459251865745,0.030116353183985,-0.171387702226639,-0.094598509371281,-0.163348823785782,-0.075182773172855,0.028036840260029,0.124156981706619));
res += mul(Get(s0,dx,-dy), float4x4(0.034206751734018,-0.068060465157032,0.098419472575188,0.085206627845764,0.080238968133926,-0.151781231164932,0.100578188896179,0.170407474040985,0.130465537309647,-0.012259248644114,-0.066081270575523,-0.013203640468419,-0.038031417876482,0.057811986654997,0.099146440625191,0.040431279689074));
res += mul(Get(s0,dx,0), float4x4(0.101182721555233,-0.042144794017076,-0.034171015024185,0.058294065296650,-0.050569817423820,0.020017070695758,0.179151445627213,-0.104329876601696,-0.100036837160587,-0.008456642739475,0.053425557911396,0.117807507514954,-0.051342722028494,-0.009981533512473,0.095483131706715,-0.220207914710045));
res += mul(Get(s0,dx,dy), float4x4(-0.056406274437904,-0.169843286275864,0.260500520467758,0.025830300524831,0.036411494016647,-0.028724536299706,-0.203259527683258,0.053516566753387,0.084637671709061,-0.092037275433540,0.038220953196287,0.082859613001347,-0.048801895231009,-0.137141942977905,-0.000104346028820,-0.120968110859394));
res += mul(Get(s1,-dx,-dy), float4x4(0.210337772965431,0.054804582148790,0.035617288202047,0.076765753328800,0.091240704059601,-0.115140877664089,-0.061737075448036,-0.041361760348082,0.137894883751869,0.056976668536663,0.012497283518314,-0.049952775239944,0.038840044289827,0.061135631054640,-0.094600729644299,-0.034248251467943));
res += mul(Get(s1,-dx,0), float4x4(0.100051119923592,0.048975162208080,0.035070493817329,-0.150576487183571,0.119971774518490,0.040008269250393,-0.031334951519966,0.000834463280626,0.048135329037905,0.123387120664120,-0.001694009057246,0.093871094286442,0.003416660008952,0.064923748373985,0.133809089660645,-0.107595212757587));
res += mul(Get(s1,-dx,dy), float4x4(-0.088089451193810,-0.187651544809341,0.059957891702652,0.133685365319252,0.007904479280114,0.001468449714594,0.182726547122002,-0.011386865749955,0.040294699370861,0.073812529444695,0.043387103825808,-0.009956344962120,0.033445283770561,0.230236321687698,-0.057547409087420,0.062868364155293));
res += mul(Get(s1,0,-dy), float4x4(0.047415759414434,0.038691848516464,-0.152347043156624,-0.011364363133907,-0.116800419986248,0.014655206352472,-0.183097153902054,-0.184803664684296,-0.188003301620483,-0.016958639025688,0.060960784554482,0.028224132955074,-0.007686123251915,-0.209051221609116,-0.157121315598488,-0.020527482032776));
res += mul(Get(s1,0,0), float4x4(-0.013889356516302,0.191603705286980,0.176306679844856,-0.045009471476078,-0.069220669567585,0.055775400251150,-0.162011146545410,-0.205540210008621,-0.129027217626572,-0.078524641692638,-0.061013493686914,0.163960993289948,-0.188230916857719,0.167978405952454,-0.044806208461523,0.162137389183044));
res += mul(Get(s1,0,dy), float4x4(0.058269962668419,0.049239568412304,0.087950296700001,0.068641766905785,-0.060093577951193,0.044679418206215,0.201563671231270,0.106938302516937,0.115026585757732,-0.076158612966537,0.160107851028442,-0.030372623354197,-0.022994438186288,0.001271743793041,-0.164870351552963,0.226450085639954));
res += mul(Get(s1,dx,-dy), float4x4(0.079083465039730,-0.024924296885729,-0.023975552991033,-0.008266587741673,-0.128184571862221,-0.200724720954895,-0.033699400722980,0.190660074353218,0.125565081834793,-0.247967079281807,0.182840436697006,-0.082534812390804,-0.097321905195713,-0.013428275473416,0.114589303731918,0.108183450996876));
res += mul(Get(s1,dx,0), float4x4(-0.192792907357216,0.109862685203552,-0.044704601168633,0.012745374813676,0.091129243373871,-0.045871868729591,-0.123546682298183,-0.004934867378324,0.005839108023793,-0.048827704042196,-0.029215073212981,0.146442443132401,0.067086659371853,0.124860838055611,-0.052465364336967,0.085766650736332));
res += mul(Get(s1,dx,dy), float4x4(0.054183654487133,-0.145529687404633,0.140413120388985,-0.146835073828697,-0.049524452537298,0.066855378448963,0.045280531048775,0.095697708427906,-0.188016518950462,0.018123928457499,-0.018325258046389,0.035207536071539,0.021584574133158,0.102854356169701,0.107493564486504,-0.026840277016163));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025286205112934,-0.123812511563301,0.034543693065643,0.050314310938120,-0.035666331648827,-0.010885953903198,0.096970684826374,0.357479989528656,-0.061176650226116,0.170084327459335,0.058433063328266,0.068618327379227,-0.026320267468691,0.071738868951797,0.288660615682602,0.097363524138927));
res += mul(Get(s2,-dx,0), float4x4(0.138024300336838,0.230502590537071,-0.166526362299919,-0.089662201702595,0.056030940264463,0.020295085385442,0.024531897157431,0.051630955189466,-0.111054711043835,0.085399240255356,-0.028883304446936,0.045163944363594,-0.045679934322834,0.094553247094154,0.137945234775543,-0.005643822252750));
res += mul(Get(s2,-dx,dy), float4x4(-0.053005855530500,-0.146309569478035,-0.091985404491425,0.076281681656837,0.016979042440653,0.053953278809786,-0.080206267535686,0.095104135572910,-0.041774902492762,-0.160735800862312,0.214700385928154,-0.053193673491478,-0.049744144082069,-0.176014259457588,0.067906402051449,-0.273282736539841));
res += mul(Get(s2,0,-dy), float4x4(0.014152779243886,-0.088971644639969,0.080924727022648,0.177575036883354,-0.080689221620560,0.154376357793808,0.021567400544882,0.115107908844948,-0.126462966203690,-0.036882888525724,-0.191619426012039,0.011262857355177,0.052310120314360,0.250517398118973,0.042830936610699,0.053159609436989));
res += mul(Get(s2,0,0), float4x4(-0.097936578094959,0.280726462602615,-0.131688416004181,0.074391178786755,-0.067100852727890,0.276845186948776,-0.086698040366173,-0.152060747146606,0.069686338305473,0.052699137479067,-0.071096777915955,0.177782312035561,-0.080133229494095,0.095422878861427,0.046494431793690,0.126866385340691));
res += mul(Get(s2,0,dy), float4x4(-0.005191082134843,-0.093356765806675,0.024191113188863,-0.025482710450888,0.120364919304848,0.025053489953279,-0.075136840343475,-0.022049805149436,-0.016240743920207,0.122148282825947,0.022456130012870,-0.006226080469787,-0.085242711007595,0.212830960750580,0.021586153656244,-0.026492375880480));
res += mul(Get(s2,dx,-dy), float4x4(0.293354898691177,-0.079033903777599,0.004704358521849,-0.097615793347359,-0.194518238306046,0.107546195387840,0.052299924194813,-0.046779394149780,-0.113355129957199,0.123587369918823,0.000481028226204,-0.208230689167976,-0.064516678452492,-0.041848216205835,0.089944288134575,0.179520472884178));
res += mul(Get(s2,dx,0), float4x4(-0.178404808044434,-0.072215564548969,0.004842851310968,0.361714482307434,0.152327030897141,-0.024186143651605,0.084009893238544,-0.034058462828398,0.046853795647621,0.095743522047997,0.006680678110570,0.040731605142355,0.070887133479118,-0.023043651133776,0.168745830655098,0.047095499932766));
res += mul(Get(s2,dx,dy), float4x4(-0.079554334282875,0.018993439152837,0.041380692273378,0.071092225611210,-0.047984160482883,0.219226136803627,-0.006202639546245,-0.040393225848675,-0.004166610538960,-0.030355004593730,-0.152004778385162,0.124464504420757,0.019667241722345,-0.184492856264114,-0.030893007293344,-0.173151746392250));
res += mul(Get(s3,-dx,-dy), float4x4(0.003849940141663,-0.009064582176507,0.151451900601387,-0.031528282910585,-0.074928887188435,-0.062415264546871,0.181717664003372,0.000182342540938,-0.092905320227146,-0.111500628292561,-0.109077371656895,0.069652251899242,-0.076982460916042,-0.098564229905605,-0.076990060508251,0.189655378460884));
res += mul(Get(s3,-dx,0), float4x4(-0.044269490987062,0.084696941077709,-0.028788125142455,-0.045275211334229,0.104167923331261,-0.108876779675484,0.053007148206234,0.217757016420364,0.071875467896461,-0.003842805279419,-0.019397078081965,0.027509277686477,-0.026234392076731,0.112144008278847,0.061531353741884,0.159857392311096));
res += mul(Get(s3,-dx,dy), float4x4(-0.192946419119835,-0.174516960978508,0.021627519279718,0.166288003325462,0.021023295819759,-0.149300321936607,0.138819053769112,0.181259810924530,0.003687989199534,0.297867149114609,0.113478899002075,0.112821258604527,-0.063672818243504,-0.015239190310240,0.054523285478354,-0.094053752720356));
res += mul(Get(s3,0,-dy), float4x4(0.058004990220070,0.009824494831264,-0.079174086451530,0.174960792064667,-0.073175251483917,0.080787211656570,0.017633169889450,0.083032339811325,-0.011851600371301,-0.025971170514822,-0.067447818815708,-0.099539287388325,0.065415784716606,-0.091544270515442,0.104714930057526,0.145460397005081));
res += mul(Get(s3,0,0), float4x4(-0.203555807471275,-0.126387715339661,-0.029521035030484,-0.056831747293472,-0.042610578238964,0.095694847404957,0.112306341528893,0.014442457817495,0.119116567075253,-0.034456111490726,-0.171570122241974,0.054599508643150,0.059387650340796,-0.037478197365999,0.042531583458185,-0.069088704884052));
res += mul(Get(s3,0,dy), float4x4(-0.080781720578671,-0.224896565079689,0.042844682931900,0.027845952659845,-0.137501522898674,-0.108684748411179,0.048058986663818,0.102182954549789,0.080284349620342,-0.163765043020248,0.010628217831254,0.041859429329634,0.076305329799652,-0.143214404582977,0.016763623803854,-0.031885989010334));
res += mul(Get(s3,dx,-dy), float4x4(-0.010829583741724,-0.023434666916728,-0.249461382627487,0.183050692081451,0.100945368409157,0.047397512942553,0.052079718559980,-0.003644303185865,-0.052166890352964,0.147462412714958,0.053192086517811,0.002314480254427,-0.058846417814493,-0.036724794656038,0.078094244003296,-0.075046487152576));
res += mul(Get(s3,dx,0), float4x4(-0.195174545049667,-0.012813095003366,0.051815070211887,-0.030201885849237,0.006688836030662,0.005780344828963,0.211162999272346,-0.117586046457291,-0.243937999010086,0.107363536953926,0.025932254269719,0.155872061848640,0.200189456343651,0.101364560425282,-0.073564536869526,-0.240573018789291));
res += mul(Get(s3,dx,dy), float4x4(-0.079285033047199,-0.011453418992460,-0.082184351980686,0.000316839112202,0.122822508215904,-0.090305574238300,-0.138687953352928,-0.182941868901253,0.025511329993606,0.115953251719475,0.087308019399643,0.188032358884811,0.002244285307825,0.075789064168930,-0.005884259939194,0.107327029109001));
return max(float4(0,0,0,0), res);
}