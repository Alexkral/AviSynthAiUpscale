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
res += mul(Get(s0,-dx,-dy), float4x4(-0.109055854380131,0.042897369712591,0.093423500657082,-0.020684521645308,0.064792916178703,0.010678906925023,0.028555940836668,0.038016259670258,0.088196434080601,-0.038158766925335,-0.184457361698151,-0.159369558095932,-0.135932877659798,-0.134822160005569,-0.229209855198860,-0.014192134141922));
res += mul(Get(s0,-dx,0), float4x4(0.157526493072510,-0.108745396137238,-0.048965968191624,0.014986894093454,-0.146364197134972,-0.088532283902168,-0.027214810252190,-0.088155835866928,-0.045572075992823,0.080242969095707,-0.012685799971223,-0.012586435303092,-0.239615648984909,-0.049346540123224,0.118175745010376,0.038531363010406));
res += mul(Get(s0,-dx,dy), float4x4(-0.257183015346527,-0.091708764433861,0.053393810987473,-0.055051885545254,0.081715784966946,0.006656701210886,0.014218405820429,-0.039674721658230,0.006471334025264,0.071714431047440,-0.003392079612240,-0.013702424243093,-0.073541864752769,0.044063899666071,-0.383951872587204,-0.002907648682594));
res += mul(Get(s0,0,-dy), float4x4(0.102245800197124,-0.135793700814247,0.058003854006529,-0.161202222108841,0.261178851127625,0.204942271113396,-0.057489749044180,0.068974606692791,0.016625054180622,0.024218868464231,0.181945607066154,-0.037943281233311,-0.010945504531264,-0.125753015279770,0.000117310504720,-0.065717019140720));
res += mul(Get(s0,0,0), float4x4(0.076249778270721,-0.145514979958534,-0.028744297102094,-0.057698573917150,-0.093489356338978,-0.039896402508020,-0.039671618491411,0.035876262933016,-0.125703155994415,0.081312336027622,0.048047907650471,-0.091378152370453,-0.151839405298233,0.053173597902060,-0.175892218947411,0.103170372545719));
res += mul(Get(s0,0,dy), float4x4(-0.097380079329014,0.057270962744951,0.048531573265791,0.055852886289358,-0.059569925069809,-0.058548200875521,0.059113856405020,-0.150992348790169,-0.308406561613083,0.165080696344376,-0.049672793596983,-0.186736851930618,0.022606015205383,0.037510257214308,-0.034711837768555,-0.130198642611504));
res += mul(Get(s0,dx,-dy), float4x4(-0.159459277987480,-0.245988249778748,0.079181276261806,-0.060763113200665,-0.152166679501534,-0.105017580091953,0.087794162333012,0.157349735498428,0.007881362922490,0.046305958181620,0.049895182251930,0.338060379028320,-0.021193712949753,0.013818519189954,0.165237918496132,0.217465311288834));
res += mul(Get(s0,dx,0), float4x4(-0.151446163654327,-0.080445103347301,0.105937652289867,-0.049937650561333,-0.182291835546494,-0.122972860932350,0.007190086413175,-0.061137791723013,-0.021581761538982,0.046276081353426,0.064791254699230,0.171914219856262,-0.002225573407486,0.032338835299015,-0.051165398210287,-0.200721770524979));
res += mul(Get(s0,dx,dy), float4x4(-0.128808930516243,0.123364664614201,0.107654586434364,0.059278544038534,0.083332061767578,0.038021232932806,0.147477716207504,-0.067835465073586,-0.042391993105412,-0.006294199265540,0.011845663189888,-0.038000397384167,-0.153721675276756,-0.002673532348126,0.217464655637741,-0.038901198655367));
res += mul(Get(s1,-dx,-dy), float4x4(-0.035719465464354,-0.035277891904116,0.097370751202106,0.060559425503016,0.094339989125729,-0.022196823731065,0.279634565114975,-0.014119651168585,-0.066230706870556,-0.118254445493221,0.058766070753336,-0.310466974973679,-0.161643102765083,0.008425815962255,0.004594904836267,0.025288986042142));
res += mul(Get(s1,-dx,0), float4x4(0.074266687035561,-0.020691376179457,-0.024196071550250,-0.007895347662270,0.211699560284615,0.152388200163841,0.088584169745445,-0.020216312259436,-0.033840168267488,0.055511999875307,-0.029632661491632,0.091017998754978,-0.001568128587678,0.137656524777412,0.181471094489098,-0.079438693821430));
res += mul(Get(s1,-dx,dy), float4x4(-0.063273981213570,0.101552113890648,-0.096515350043774,-0.183282345533371,-0.126484319567680,-0.002814196515828,-0.038899376988411,-0.052252262830734,-0.074890874326229,-0.041239243000746,-0.106961362063885,-0.057982895523310,0.186413303017616,0.103707224130630,0.154004469513893,0.105447888374329));
res += mul(Get(s1,0,-dy), float4x4(0.002178111812100,0.003749636001885,-0.095238313078880,0.077047921717167,-0.001642147195525,0.046761270612478,0.213834062218666,-0.227337479591370,-0.092666216194630,0.164128527045250,0.126034945249557,-0.151060879230499,0.031920254230499,-0.152092531323433,-0.192425116896629,0.030824394896626));
res += mul(Get(s1,0,0), float4x4(0.208193495869637,-0.289515584707260,0.010793443769217,0.006112126633525,0.268219262361526,0.052186142653227,0.145068973302841,0.061088368296623,0.047973114997149,-0.143358662724495,-0.014225193299353,-0.027167471125722,-0.030222004279494,0.195226281881332,0.133193984627724,-0.148824110627174));
res += mul(Get(s1,0,dy), float4x4(0.075596898794174,-0.037277307361364,-0.281062155961990,-0.094809874892235,0.072182849049568,-0.023127555847168,-0.060758035629988,-0.239811092615128,-0.054057031869888,-0.067688293755054,0.103134185075760,0.012385999783874,0.191398471593857,0.065433181822300,0.047799017280340,0.044255591928959));
res += mul(Get(s1,dx,-dy), float4x4(0.034390434622765,0.055416874587536,0.069447748363018,0.024177122861147,-0.056213017553091,0.052327509969473,0.017853474244475,-0.044024020433426,0.132013767957687,0.164718970656395,-0.167459875345230,-0.054963368922472,-0.001895285444334,-0.046184230595827,0.049102813005447,-0.204807505011559));
res += mul(Get(s1,dx,0), float4x4(0.199396327137947,0.125368177890778,0.062749482691288,0.066972151398659,-0.071474999189377,0.024391040205956,0.033987756818533,-0.029080497100949,0.027299709618092,0.166677474975586,-0.015257361344993,-0.186918348073959,-0.018850080668926,-0.060958236455917,-0.071242593228817,-0.127570122480392));
res += mul(Get(s1,dx,dy), float4x4(0.053764149546623,0.169173538684845,0.124682903289795,0.234770730137825,-0.124434351921082,-0.111234836280346,-0.158953696489334,0.082122929394245,0.115599967539310,-0.077271834015846,-0.134104862809181,0.129454404115677,0.206571862101555,-0.126785814762115,-0.151607170701027,0.007150522433221));
res += mul(Get(s2,-dx,-dy), float4x4(0.175240769982338,0.010268568992615,0.093746706843376,0.039795760065317,0.026505170390010,0.010587252676487,-0.171880438923836,-0.004100329242647,-0.114939086139202,0.194070622324944,-0.147869437932968,0.157108649611473,-0.044630765914917,-0.091259196400642,0.058762237429619,-0.110029473900795));
res += mul(Get(s2,-dx,0), float4x4(0.097904235124588,-0.030260110273957,-0.058766208589077,0.006292459554970,-0.199399441480637,0.074020594358444,0.117260135710239,-0.008845542557538,-0.144968092441559,-0.011681308038533,0.123197712004185,-0.154365524649620,0.141789481043816,-0.104461960494518,0.049426682293415,-0.001466487650760));
res += mul(Get(s2,-dx,dy), float4x4(0.036471396684647,0.257179886102676,-0.040339704602957,-0.217763349413872,0.018920186907053,-0.086521185934544,-0.067011944949627,-0.119099974632263,0.094927914440632,-0.041882406920195,0.050598300993443,-0.237545490264893,0.251933336257935,-0.012557996436954,-0.094683691859245,0.098855935037136));
res += mul(Get(s2,0,-dy), float4x4(-0.068491175770760,0.026698574423790,0.011847349815071,0.075965426862240,0.168468043208122,0.010627185925841,0.175887212157249,0.092201590538025,0.144747033715248,-0.161911711096764,-0.228923529386520,0.197874367237091,-0.111771307885647,0.157756254076958,0.032330166548491,0.007905632257462));
res += mul(Get(s2,0,0), float4x4(-0.024434383958578,-0.015587192028761,0.282318502664566,0.133423298597336,-0.121747180819511,-0.043750915676355,-0.096282891929150,0.092700481414795,0.058320548385382,0.036001365631819,-0.068232074379921,0.009505606256425,-0.270427703857422,-0.173130959272385,-0.024942593649030,-0.224084302783012));
res += mul(Get(s2,0,dy), float4x4(0.192958220839500,-0.000575110840145,0.253812640905380,0.127061218023300,-0.127276673913002,-0.038148179650307,-0.108284205198288,0.068937480449677,0.201460048556328,-0.230774611234665,0.337361812591553,0.157166063785553,-0.095363378524780,-0.185226410627365,-0.156613633036613,0.137693166732788));
res += mul(Get(s2,dx,-dy), float4x4(-0.223423942923546,-0.067732788622379,-0.152516901493073,-0.070494271814823,-0.185229882597923,0.177155300974846,0.195561990141869,-0.102800905704498,-0.077784895896912,-0.126263901591301,0.069332115352154,0.135272279381752,0.112342797219753,-0.072009019553661,0.142487242817879,-0.025988209992647));
res += mul(Get(s2,dx,0), float4x4(-0.076657928526402,0.223762348294258,-0.053292453289032,-0.046859696507454,0.165610685944557,0.098030626773834,0.072214372456074,-0.150548428297043,0.013519152067602,0.082547888159752,-0.186666786670685,-0.150572687387466,0.027254361659288,0.000767930294387,-0.064320266246796,-0.052444074302912));
res += mul(Get(s2,dx,dy), float4x4(-0.031444907188416,0.056397691369057,0.109206482768059,-0.112675838172436,0.023392170667648,0.003750073257834,-0.032633539289236,0.071606144309044,0.232628032565117,-0.043397117406130,-0.128304913640022,-0.049938816577196,-0.102462567389011,-0.241019263863564,-0.070141926407814,-0.255142569541931));
res += mul(Get(s3,-dx,-dy), float4x4(0.119654275476933,0.055880088359118,0.158779770135880,0.031592871993780,0.096077680587769,0.238969892263412,-0.204482242465019,-0.157193407416344,0.179481729865074,0.005566579289734,0.028789270669222,0.118148632347584,0.097865842282772,0.053343500941992,0.019058382138610,-0.047651104629040));
res += mul(Get(s3,-dx,0), float4x4(-0.032430831342936,-0.189440473914146,0.010845469310880,0.024361602962017,-0.045177333056927,0.032416339963675,0.168186977505684,0.043643157929182,-0.076253004372120,0.174756541848183,0.073257334530354,0.048231672495604,0.224401652812958,-0.072591945528984,-0.151610910892487,0.126216456294060));
res += mul(Get(s3,-dx,dy), float4x4(-0.160368934273720,-0.211679518222809,-0.015273008495569,0.022194614633918,-0.115956246852875,-0.052256505936384,-0.006667687091976,-0.044380009174347,-0.097457192838192,0.016055207699537,-0.070184506475925,0.103321060538292,-0.090742118656635,0.034734264016151,-0.095574408769608,-0.049457862973213));
res += mul(Get(s3,0,-dy), float4x4(0.172046646475792,0.230678826570511,-0.008207580074668,-0.128710255026817,0.055084817111492,-0.000953445443884,-0.234414979815483,-0.023079628124833,0.104935348033905,-0.107925415039063,-0.133328884840012,0.223185688257217,-0.076208457350731,0.041267476975918,0.084145218133926,-0.049829415977001));
res += mul(Get(s3,0,0), float4x4(0.063076153397560,0.198489055037498,0.156348556280136,-0.083234772086143,0.337788701057434,0.162875443696976,-0.019211756065488,0.086179420351982,-0.017991747707129,0.023166241124272,0.018904699012637,0.158691510558128,-0.188170030713081,0.144556313753128,0.258260190486908,-0.026141259819269));
res += mul(Get(s3,0,dy), float4x4(-0.137147530913353,-0.187791630625725,0.019536051899195,-0.115343183279037,0.030600473284721,0.041516851633787,-0.197212368249893,0.076969720423222,0.033761315047741,-0.135577902197838,-0.069380544126034,-0.135459244251251,0.183127477765083,-0.081222571432590,-0.066037081182003,0.084569983184338));
res += mul(Get(s3,dx,-dy), float4x4(-0.005906768608838,0.048204984515905,-0.105359151959419,0.189242109656334,-0.056499585509300,0.006500704679638,0.044538069516420,0.060479082167149,0.070154190063477,0.234282135963440,0.093628399074078,-0.126696422696114,-0.026779349893332,-0.046944051980972,0.176633328199387,0.094214536249638));
res += mul(Get(s3,dx,0), float4x4(-0.183930292725563,0.243427142500877,-0.089851073920727,-0.082492902874947,0.048925098031759,0.048685390502214,-0.039893489331007,-0.244605168700218,0.071876861155033,-0.184033036231995,-0.204137519001961,0.002881203545257,-0.067425571382046,-0.068224444985390,-0.085968710482121,-0.013109070248902));
res += mul(Get(s3,dx,dy), float4x4(0.001588021405041,-0.079200446605682,0.026248548179865,-0.033000506460667,0.063754916191101,-0.128722712397575,-0.093079753220081,0.033873878419399,0.009138938970864,-0.066902548074722,0.108449280261993,-0.089740566909313,-0.160453930497169,-0.023885980248451,-0.007904799655080,-0.034046910703182));
return max(float4(0,0,0,0), res);
}
