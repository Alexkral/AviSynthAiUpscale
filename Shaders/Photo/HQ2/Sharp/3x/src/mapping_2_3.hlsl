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
res += mul(Get(s0,-dx,-dy), float4x4(0.044039692729712,0.112845033407211,-0.124309077858925,0.032905519008636,0.023096498101950,-0.036376051604748,-0.139417797327042,-0.199268713593483,0.080005735158920,0.040629629045725,-0.061412017792463,-0.080413579940796,0.047522023320198,0.053081918507814,-0.054552897810936,-0.013529259711504));
res += mul(Get(s0,-dx,0), float4x4(0.040582414716482,0.114656105637550,-0.021524969488382,0.186753079295158,-0.044449314475060,-0.079894497990608,0.053923424333334,-0.081758528947830,0.025170091539621,0.010016972199082,-0.115935757756233,0.065868295729160,0.013084778562188,0.190761759877205,0.095597527921200,0.006815561093390));
res += mul(Get(s0,-dx,dy), float4x4(-0.091362409293652,-0.086067281663418,-0.001400763751008,-0.112118437886238,-0.119034096598625,-0.043225817382336,-0.059559024870396,-0.017695020884275,-0.151867747306824,-0.131623387336731,0.003131743986160,-0.124370411038399,0.117887802422047,0.002847444033250,0.068584762513638,-0.047889899462461));
res += mul(Get(s0,0,-dy), float4x4(-0.079586014151573,0.058506987988949,0.146287113428116,0.128947630524635,0.024320932105184,0.014654859900475,-0.089708007872105,0.079926021397114,-0.228361696004868,0.040551036596298,-0.029072541743517,-0.045199848711491,-0.077470056712627,-0.028051063418388,-0.060996510088444,-0.033998426049948));
res += mul(Get(s0,0,0), float4x4(0.079401798546314,-0.046244855970144,-0.021108537912369,-0.002869690768421,0.057029109448195,0.059729620814323,0.027008425444365,0.117520377039909,-0.049405172467232,-0.056307703256607,-0.033662658184767,-0.127420291304588,0.025487501174212,0.061793155968189,0.106713756918907,0.093726269900799));
res += mul(Get(s0,0,dy), float4x4(0.025621589273214,-0.006410372909158,0.196887254714966,0.050267074257135,0.072669915854931,-0.015988186001778,-0.184361711144447,-0.217437103390694,-0.001725101959892,-0.050787933170795,-0.053004521876574,0.037249799817801,0.078579239547253,-0.092334724962711,-0.121666975319386,-0.070884943008423));
res += mul(Get(s0,dx,-dy), float4x4(0.089885644614697,-0.011520882137120,0.118885897099972,0.024555876851082,0.013787689618766,-0.022761663421988,-0.043259050697088,-0.061481509357691,-0.149804264307022,0.032394334673882,0.033110961318016,0.073930166661739,0.035091690719128,-0.085037946701050,0.131567552685738,-0.061670787632465));
res += mul(Get(s0,dx,0), float4x4(0.044740580022335,-0.016434930264950,0.001544134807773,-0.063389889895916,-0.008193578571081,0.185174494981766,-0.000571331125684,0.011418698355556,-0.028020797297359,0.117387793958187,-0.006875328719616,0.082367487251759,-0.113477274775505,-0.035255122929811,0.032446119934320,0.104672774672508));
res += mul(Get(s0,dx,dy), float4x4(0.092047803103924,-0.050854474306107,0.003323977813125,0.017474204301834,-0.059311147779226,0.080060407519341,0.009674035012722,-0.021551035344601,0.074149854481220,0.032356001436710,-0.124390289187431,-0.079006977379322,-0.003553105518222,0.070286013185978,0.016611868515611,0.113745562732220));
res += mul(Get(s1,-dx,-dy), float4x4(-0.001274672336876,0.054070603102446,-0.049427688121796,-0.006657151971012,-0.034104339778423,0.163307964801788,0.032305508852005,-0.040705345571041,-0.008645020425320,0.024125259369612,0.011548923328519,0.131354615092278,-0.074298687279224,-0.054404322057962,0.043094210326672,0.084973521530628));
res += mul(Get(s1,-dx,0), float4x4(-0.148723289370537,-0.024859985336661,0.018740521743894,-0.105611361563206,-0.026199551299214,-0.128900274634361,0.022766910493374,-0.119468033313751,-0.080455340445042,0.160636931657791,-0.015351791866124,0.009681724011898,0.089951314032078,0.037542592734098,0.028128584846854,-0.004630212672055));
res += mul(Get(s1,-dx,dy), float4x4(-0.084422305226326,0.111163243651390,0.030232613906264,-0.130216658115387,0.059858147054911,-0.024807587265968,0.081062875688076,0.106629848480225,-0.067350946366787,0.044356387108564,0.061683714389801,-0.020486539229751,0.034549035131931,-0.048487331718206,-0.046964671462774,0.027105126529932));
res += mul(Get(s1,0,-dy), float4x4(0.016910793259740,0.047847282141447,-0.011330395936966,-0.107269681990147,0.061340995132923,-0.048862848430872,0.061411794275045,-0.078917302191257,0.042032442986965,0.029803076758981,0.013075735419989,0.002855419181287,0.006004544440657,0.057949189096689,0.001371854799800,0.011942785233259));
res += mul(Get(s1,0,0), float4x4(-0.055747017264366,-0.119754150509834,-0.010109857656062,-0.005006720311940,-0.005862215533853,-0.055156521499157,-0.019467320293188,0.107819229364395,0.093321926891804,-0.008914364501834,0.038626130670309,-0.030005823820829,-0.000738437927794,-0.014700372703373,-0.017606187611818,0.068035647273064));
res += mul(Get(s1,0,dy), float4x4(-0.041042279452085,0.024184441193938,0.142638474702835,-0.103971108794212,-0.060700148344040,0.029699226841331,0.048233855515718,0.008885982446373,0.067727163434029,0.120587088167667,0.172206029295921,-0.041419792920351,-0.105474129319191,-0.002586998278275,-0.128775253891945,-0.018937211483717));
res += mul(Get(s1,dx,-dy), float4x4(0.074773989617825,0.039508588612080,0.013364726677537,0.041974216699600,-0.009622006677091,-0.133029058575630,0.044940583407879,0.058485381305218,-0.048612963408232,0.109898820519447,-0.097190707921982,0.012776492163539,0.077671743929386,0.030614230781794,-0.013699941337109,0.088814251124859));
res += mul(Get(s1,dx,0), float4x4(-0.045469701290131,-0.066518954932690,0.025797484442592,-0.088229015469551,-0.125671058893204,-0.106787063181400,-0.047916311770678,0.095676876604557,-0.012824782170355,0.071842908859253,0.045007344335318,-0.025054406374693,-0.012535386718810,-0.078799657523632,-0.044116370379925,-0.021689256653190));
res += mul(Get(s1,dx,dy), float4x4(0.013678547926247,0.028362654149532,0.115651823580265,-0.094653464853764,0.085826680064201,-0.109373018145561,-0.014154124073684,0.059259045869112,0.078559637069702,0.177727535367012,-0.022928738966584,-0.044761449098587,0.050830908119678,-0.018345585092902,-0.021706068888307,-0.074795790016651));
res += mul(Get(s2,-dx,-dy), float4x4(-0.045056525617838,0.048095043748617,-0.063722915947437,-0.166985139250755,0.026568669825792,-0.075168393552303,-0.036993980407715,-0.066940151154995,-0.047283601015806,0.009595660492778,0.024192823097110,-0.008387555368245,-0.043526716530323,-0.077749006450176,-0.022272707894444,-0.060972414910793));
res += mul(Get(s2,-dx,0), float4x4(-0.049608379602432,-0.047335747629404,-0.055336754769087,-0.082764610648155,0.036313682794571,0.065410517156124,0.014064636081457,0.053412359207869,0.044161774218082,-0.059585805982351,-0.009466511197388,-0.048915401101112,-0.008215134963393,-0.139787152409554,0.038269102573395,-0.097644142806530));
res += mul(Get(s2,-dx,dy), float4x4(-0.073492661118507,-0.104000329971313,-0.093656405806541,0.046028681099415,0.009777923114598,0.049478702247143,-0.092098459601402,-0.005014352034777,-0.023805668577552,-0.036602325737476,0.017579104751348,0.072260223329067,0.019184896722436,0.016426796093583,0.000781301059760,-0.148913428187370));
res += mul(Get(s2,0,-dy), float4x4(0.006220037117600,-0.090118944644928,-0.019206786528230,0.067069143056870,0.035101484507322,0.053013503551483,0.051157712936401,-0.037527833133936,0.075954884290695,-0.034557547420263,-0.091455429792404,0.029560914263129,-0.090923488140106,-0.055472251027822,0.119023449718952,0.060927093029022));
res += mul(Get(s2,0,0), float4x4(0.088622435927391,0.007740092463791,0.073221281170845,-0.065899707376957,-0.005299368407577,0.236651584506035,0.060451354831457,0.044060200452805,0.070682682096958,0.041578218340874,0.079517394304276,-0.009802694432437,-0.059289544820786,-0.182028815150261,0.016747426241636,-0.157228067517281));
res += mul(Get(s2,0,dy), float4x4(0.098540276288986,0.054738767445087,-0.110417887568474,-0.093280598521233,0.023611975833774,-0.128825008869171,-0.063644520938396,0.100456684827805,0.019051650539041,-0.158484905958176,-0.057227741926908,-0.005788229871541,-0.067940920591354,0.093335263431072,0.006316838786006,-0.084479346871376));
res += mul(Get(s2,dx,-dy), float4x4(0.054721459746361,0.033295042812824,-0.028334034606814,0.053951576352119,0.243007481098175,-0.040419250726700,-0.061177428811789,0.096293568611145,0.203530952334404,-0.088060446083546,0.094190798699856,0.027838828042150,-0.001107181888074,-0.173662990331650,-0.038119725883007,-0.039719849824905));
res += mul(Get(s2,dx,0), float4x4(0.057572681456804,0.014802613295615,-0.066858634352684,-0.028508707880974,0.039462875574827,0.071278989315033,-0.066826112568378,-0.049440182745457,0.032041788101196,-0.073408320546150,0.044594127684832,0.016558261588216,0.004442214965820,0.037735942751169,0.024240205064416,0.019983617588878));
res += mul(Get(s2,dx,dy), float4x4(0.065685965120792,0.126003548502922,0.038413982838392,-0.143391504883766,0.158957213163376,-0.063212923705578,-0.010718712583184,-0.025905260816216,0.008755173534155,-0.125798612833023,-0.100710086524487,0.013231686316431,0.068821460008621,-0.001115023042075,-0.018827443942428,-0.112196557223797));
res += mul(Get(s3,-dx,-dy), float4x4(-0.014893230982125,0.204743295907974,0.031727310270071,-0.007244138978422,-0.039626870304346,0.147718772292137,-0.054729778319597,0.064485952258110,-0.035739134997129,-0.051380753517151,0.035068936645985,0.141344740986824,-0.078809186816216,0.035955701023340,0.001087592681870,0.033847376704216));
res += mul(Get(s3,-dx,0), float4x4(-0.176047131419182,0.013259286060929,0.079623073339462,-0.023185571655631,-0.052859932184219,0.068606667220592,0.060850050300360,0.009791254997253,0.032909024506807,0.099904075264931,-0.047835014760494,0.092222839593887,-0.024282647296786,-0.162861272692680,-0.019193910062313,0.021519972011447));
res += mul(Get(s3,-dx,dy), float4x4(-0.028432853519917,0.026794074103236,0.034718740731478,-0.001513930386864,0.086460933089256,0.165204092860222,-0.099724575877190,0.062571607530117,-0.065995290875435,0.050830934196711,-0.053336493670940,-0.018002370372415,-0.019486103206873,0.048384025692940,0.074814960360527,0.011104484088719));
res += mul(Get(s3,0,-dy), float4x4(-0.025375062599778,-0.069579161703587,-0.008795787580311,0.102634042501450,-0.030278071761131,-0.073158226907253,0.058486584573984,-0.070773869752884,0.080979712307453,0.023845352232456,0.035573910921812,0.079163625836372,-0.029873577877879,-0.026558764278889,0.069218769669533,0.071980789303780));
res += mul(Get(s3,0,0), float4x4(0.023585192859173,0.056065931916237,-0.091358788311481,0.146366775035858,0.018342804163694,-0.125598788261414,-0.071157447993755,0.015622916631401,-0.021698096767068,0.112208418548107,-0.030467227101326,-0.114868924021721,0.121956162154675,0.005832825321704,0.121520891785622,-0.021341456100345));
res += mul(Get(s3,0,dy), float4x4(-0.097570054233074,0.081415057182312,0.016315689310431,0.008424974977970,-0.044593922793865,-0.012915139086545,-0.018633630126715,-0.023450188338757,0.008154003880918,0.000041004619561,-0.064730800688267,-0.034448768943548,-0.106986820697784,0.040484499186277,0.017515772953629,-0.058610867708921));
res += mul(Get(s3,dx,-dy), float4x4(-0.000482474861201,-0.048139307647943,-0.126847118139267,-0.028125241398811,0.000615073542576,-0.052726168185472,-0.082988552749157,0.072498679161072,0.040247600525618,0.084868527948856,0.037816312164068,0.150615915656090,0.027755597606301,-0.023304654285312,-0.035728130489588,-0.014154781587422));
res += mul(Get(s3,dx,0), float4x4(-0.102816738188267,0.002187417121604,0.001522816717625,-0.074563138186932,0.034833084791899,-0.127152889966965,0.089060239493847,-0.040551662445068,0.006788759492338,-0.009246872738004,-0.041412901133299,-0.145496159791946,0.110956236720085,-0.082442007958889,-0.001039316062815,-0.046747855842113));
res += mul(Get(s3,dx,dy), float4x4(-0.039805449545383,0.052945978939533,-0.228388175368309,0.013187477365136,0.041101913899183,0.192618474364281,0.009633471257985,0.135103344917297,-0.011849938891828,-0.019726086407900,0.023116519674659,-0.003866649931297,-0.100227773189545,-0.009958971291780,0.123164556920528,0.122924797236919));
res = max(float4(0,0,0,0), res);
return res;
}
