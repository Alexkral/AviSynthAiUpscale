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
res += mul(Get(s0,-dx,-dy), float4x4(-0.031919386237860,0.030773513019085,0.022180605679750,0.030484141781926,-0.040766123682261,-0.073841467499733,-0.015576242469251,0.033726397901773,0.014354819431901,0.009692770428956,-0.003675243817270,-0.014250746928155,-0.011073670350015,-0.034801159054041,-0.017466651275754,0.047790948301554));
res += mul(Get(s0,-dx,0), float4x4(-0.004831296391785,0.006597395520657,0.060069121420383,0.008039223961532,0.018890630453825,-0.031090224161744,-0.091827996075153,-0.009867988526821,-0.018897522240877,0.008125407621264,-0.027684265747666,0.013325757347047,0.065103054046631,-0.075522631406784,-0.092378810048103,-0.001453322707675));
res += mul(Get(s0,-dx,dy), float4x4(-0.031356781721115,-0.000783755443990,0.058596309274435,0.027353437617421,0.020969398319721,-0.067359387874603,-0.105632938444614,-0.041644155979156,-0.008532978594303,0.007505150511861,-0.019347459077835,0.014753898605704,0.081004612147808,-0.094493791460991,-0.119040973484516,-0.005834430456161));
res += mul(Get(s0,0,-dy), float4x4(-0.062454622238874,0.031664352864027,0.042111061513424,0.009598378092051,-0.170058518648148,-0.034472823143005,-0.128681048750877,0.091112568974495,-0.002235738327727,0.023737663403153,0.026082165539265,-0.008193062618375,-0.098031923174858,-0.022552756592631,0.053401842713356,0.014240049757063));
res += mul(Get(s0,0,0), float4x4(-0.016471004113555,0.020906422287226,0.041022386401892,-0.011652925983071,-0.034315943717957,-0.014989359304309,-0.134974882006645,-0.071605280041695,-0.011236050166190,0.003088292898610,0.003282760968432,0.029028810560703,-0.058752879500389,-0.064969621598721,-0.091448843479156,0.032411105930805));
res += mul(Get(s0,0,dy), float4x4(-0.017211668193340,0.003889688756317,-0.020120710134506,0.027705421671271,0.054789297282696,0.009553994052112,-0.090150162577629,0.040361534804106,0.016883615404367,0.017352910712361,0.029516119509935,0.002499839989468,0.042087092995644,-0.098510965704918,-0.111277572810650,-0.044098861515522));
res += mul(Get(s0,dx,-dy), float4x4(-0.022428955882788,0.019982002675533,0.077717863023281,0.047844961285591,-0.107284896075726,-0.033841263502836,-0.031312447041273,0.019218059256673,-0.047646284103394,0.008097559213638,0.043582476675510,-0.004915039520711,-0.066847451031208,-0.041890446096659,0.078942969441414,-0.004456481430680));
res += mul(Get(s0,dx,0), float4x4(0.000442862277851,0.023709045723081,0.054269593209028,0.013685573823750,-0.033525001257658,0.048895474523306,-0.134787946939468,-0.045068711042404,-0.003315511159599,0.001008908962831,0.036850400269032,0.015577778220177,-0.068710222840309,-0.023835882544518,-0.054984699934721,0.062911786139011));
res += mul(Get(s0,dx,dy), float4x4(-0.022917551919818,0.003645685035735,-0.011942054145038,0.047829117625952,-0.009018557146192,0.054242033511400,-0.140311107039452,0.050393138080835,0.002885706722736,0.024952284991741,0.055270966142416,0.006622118409723,-0.077427759766579,-0.051212940365076,-0.175587862730026,-0.012967029586434));
res += mul(Get(s1,-dx,-dy), float4x4(0.001873629866168,0.118945747613907,-0.004451859276742,-0.062778443098068,-0.091753572225571,-0.061662662774324,0.017674736678600,-0.037436980754137,0.062754280865192,0.025501903146505,-0.009809422306716,0.019911007955670,-0.031361572444439,0.028459023684263,-0.026500018313527,0.053304888308048));
res += mul(Get(s1,-dx,0), float4x4(0.037147652357817,-0.056859601289034,0.130167111754417,-0.056328289210796,-0.116285338997841,-0.105372227728367,-0.092189170420170,-0.067420341074467,0.127645194530487,0.043276857584715,-0.038627754896879,0.004519869573414,-0.004052076954395,-0.064482070505619,-0.048931486904621,0.008230787701905));
res += mul(Get(s1,-dx,dy), float4x4(0.127678304910660,-0.018740782514215,0.204893469810486,0.089768074452877,-0.100417368113995,-0.118882641196251,-0.036965943872929,-0.053577352315187,0.091649442911148,0.020290942862630,0.024748630821705,0.085543014109135,-0.010137592442334,-0.059610132128000,-0.023965865373611,0.065364122390747));
res += mul(Get(s1,0,-dy), float4x4(-0.067324280738831,0.118462592363358,-0.169456288218498,-0.016508920118213,0.000743834883906,-0.025535847991705,-0.006697870790958,-0.012128422968090,-0.013200442306697,0.038331940770149,-0.057282533496618,0.024197496473789,-0.050950411707163,0.054216220974922,-0.037565920501947,0.004769009537995));
res += mul(Get(s1,0,0), float4x4(-0.168109521269798,-0.075781308114529,-0.054020106792450,0.016010688617826,-0.030913662165403,-0.043193161487579,-0.005647987592965,-0.072445251047611,0.039463583379984,0.014266020618379,-0.045277591794729,-0.018396964296699,-0.051299788057804,-0.063870429992676,-0.002724193502218,-0.020303957164288));
res += mul(Get(s1,0,dy), float4x4(-0.079139269888401,0.021960871294141,0.130722895264626,0.091994553804398,-0.039880935102701,-0.077461637556553,-0.027382483705878,0.011171733029187,0.030176786705852,-0.008714104071259,0.047498166561127,0.073962941765785,-0.038297045975924,-0.071501806378365,-0.009217201732099,0.016112266108394));
res += mul(Get(s1,dx,-dy), float4x4(0.013625881634653,-0.003648519981652,-0.110009469091892,-0.024374140426517,-0.033563494682312,0.058432731777430,-0.006146450527012,-0.033004805445671,0.020838165655732,0.022597869858146,-0.034646179527044,0.033093329519033,0.028471723198891,0.062743328511715,-0.048173330724239,0.016577417030931));
res += mul(Get(s1,dx,0), float4x4(-0.072305455803871,-0.117180667817593,-0.021662861108780,-0.011044340208173,0.024026101455092,0.114261940121651,0.028988646343350,-0.023632125928998,0.024025768041611,0.004713970236480,-0.032044630497694,-0.017288289964199,-0.032001372426748,-0.048021405935287,-0.016975041478872,-0.030529186129570));
res += mul(Get(s1,dx,dy), float4x4(-0.023948116227984,0.045072715729475,0.043947555124760,-0.039247538894415,-0.073015987873077,0.051012136042118,0.066741086542606,0.076659642159939,0.037997361272573,0.014416071586311,-0.012245814315975,0.099094882607460,-0.033068843185902,-0.038701578974724,-0.016065111383796,-0.021339680999517));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025309335440397,0.022487862035632,0.172857940196991,-0.023763667792082,-0.008342982269824,-0.018579699099064,0.043025068938732,0.049275722354650,0.119589857757092,0.067138291895390,0.017050582915545,0.020047513768077,0.046946585178375,-0.015409605577588,-0.002755018882453,0.021307699382305));
res += mul(Get(s2,-dx,0), float4x4(0.089774146676064,-0.018573760986328,-0.026041569188237,-0.030596617609262,-0.019915174692869,0.002256383653730,0.055610131472349,0.049156837165356,0.183990523219109,-0.007259304635227,-0.136890485882759,-0.014517358504236,0.113686755299568,-0.019293023273349,0.012385457754135,-0.061834257096052));
res += mul(Get(s2,-dx,dy), float4x4(0.049585513770580,-0.021292539313436,-0.025667861104012,-0.119923830032349,-0.085663288831711,-0.012935533188283,0.056064859032631,0.119743794202805,0.078308537602425,-0.036155574023724,-0.129933178424835,0.036998178809881,-0.025454772636294,0.008336563594639,0.022881213575602,-0.002928997389972));
res += mul(Get(s2,0,-dy), float4x4(-0.072910718619823,0.024656208232045,-0.055077020078897,0.104798220098019,-0.006738602183759,-0.048021532595158,0.021838532760739,-0.015136091038585,-0.035878386348486,0.058141987770796,-0.084927730262280,-0.033470042049885,0.047456584870815,0.011894714087248,-0.000431447755545,-0.006097781471908));
res += mul(Get(s2,0,0), float4x4(-0.023206867277622,-0.041349396109581,-0.042992055416107,-0.070624418556690,-0.009454040788114,-0.036226172000170,-0.010290372185409,-0.024595968425274,-0.120104536414146,-0.096063584089279,-0.115481279790401,-0.059501659125090,0.179160982370377,-0.007682992145419,0.150821521878242,-0.113561235368252));
res += mul(Get(s2,0,dy), float4x4(0.037978503853083,-0.016197348013520,0.162433400750160,-0.015071536414325,-0.056308619678020,-0.025370240211487,0.067191697657108,0.046696811914444,-0.027685279026628,-0.086180821061134,-0.007797484751791,0.016958765685558,0.168447911739349,0.049064423888922,0.098201662302017,0.060468491166830));
res += mul(Get(s2,dx,-dy), float4x4(-0.040461175143719,0.044363670051098,0.059927318245173,0.037893913686275,0.013242363929749,-0.006288820877671,-0.022875364869833,0.059690125286579,-0.042092829942703,-0.058447904884815,-0.117664404213428,-0.053246334195137,-0.119920268654823,-0.058168418705463,0.096029542386532,0.002467862563208));
res += mul(Get(s2,dx,0), float4x4(-0.008171050809324,0.009016390889883,-0.038655694574118,-0.068935699760914,-0.003231773152947,0.029139302670956,-0.084735199809074,0.021653529256582,-0.068571165204048,-0.103106200695038,-0.067458517849445,-0.041846945881844,-0.177887827157974,0.019919117912650,-0.123521424829960,0.052343051880598));
res += mul(Get(s2,dx,dy), float4x4(-0.047291334718466,0.047450706362724,-0.008006968535483,0.023954417556524,0.015073538757861,0.030246291309595,-0.000615094439127,0.052326768636703,-0.061563663184643,-0.037310589104891,0.036756254732609,0.026460487395525,-0.113666631281376,0.060561768710613,-0.101996898651123,0.035057008266449));
res += mul(Get(s3,-dx,-dy), float4x4(-0.022925145924091,0.016445595771074,-0.001771647366695,0.022783562541008,0.011674441397190,-0.031153708696365,0.024108573794365,0.003676177002490,0.116240993142128,0.129265442490578,-0.029029503464699,0.001162165077403,0.067903608083725,0.028912046924233,-0.020863112062216,-0.018668400123715));
res += mul(Get(s3,-dx,0), float4x4(-0.029578864574432,-0.010307051241398,-0.012068728916347,0.022909764200449,-0.029747044667602,0.000194715423277,0.019458139315248,-0.054199568927288,0.162191972136497,0.044490706175566,-0.086719274520874,0.002069472800940,0.069664157927036,-0.006288220640272,0.045995403081179,-0.103598847985268));
res += mul(Get(s3,-dx,dy), float4x4(-0.025188433006406,0.011596105992794,-0.029367018491030,-0.003993440419436,-0.046537842601538,-0.069797538220882,0.032512545585632,0.075181245803833,0.060207158327103,-0.035865493118763,-0.108786612749100,-0.127497002482414,0.079967714846134,-0.007659523747861,-0.010824779048562,0.059201482683420));
res += mul(Get(s3,0,-dy), float4x4(-0.017173638567328,0.019693816080689,-0.026685273274779,-0.007273586001247,0.044450908899307,0.021284220740199,0.016556045040488,0.026020305231214,-0.044906832277775,0.013056665658951,-0.048613447695971,0.054867211729288,0.011945156380534,-0.055450156331062,0.264046430587769,-0.111942440271378));
res += mul(Get(s3,0,0), float4x4(-0.021409476175904,-0.030197646468878,-0.008328717201948,0.004723942838609,0.102942921221256,0.176096126437187,0.008357044309378,0.041014917194843,-0.044765654951334,-0.075731776654720,0.081419765949249,0.002384153427556,0.025062909349799,-0.023910325020552,0.072721756994724,-0.032311640679836));
res += mul(Get(s3,0,dy), float4x4(-0.004716580733657,-0.023793153464794,-0.019172264263034,-0.012920960783958,0.059544812887907,0.045242711901665,0.021815808489919,0.108567617833614,-0.020593771710992,-0.070951282978058,0.050749488174915,-0.025525750592351,-0.014024263247848,-0.022213805466890,-0.041077703237534,0.051492128521204));
res += mul(Get(s3,dx,-dy), float4x4(0.010293611325324,0.031547289341688,-0.010247685946524,0.024824731051922,-0.039955902844667,0.002529006451368,0.021315509453416,0.002359794452786,-0.042383227497339,-0.021347127854824,0.031238021329045,0.086039714515209,-0.104682765901089,-0.012258251197636,-0.002298012375832,-0.073054559528828));
res += mul(Get(s3,dx,0), float4x4(0.008630356751382,-0.000010402320186,-0.013702436350286,0.022117223590612,0.057435184717178,0.044891227036715,-0.019977962598205,-0.016111267730594,-0.080051720142365,-0.063722208142281,0.098880261182785,0.007038919720799,-0.062454167753458,0.046795874834061,0.012687652371824,0.045765750110149));
res += mul(Get(s3,dx,dy), float4x4(-0.002739878837019,0.013748246245086,0.004954059608281,0.042051911354065,0.076979525387287,-0.003188402624801,-0.006993601564318,-0.008696182630956,-0.065925605595112,0.010068852454424,0.053854960948229,-0.018652742728591,-0.012760208919644,0.060319453477859,-0.070092283189297,0.040614310652018));
return max(float4(0,0,0,0), res);
}