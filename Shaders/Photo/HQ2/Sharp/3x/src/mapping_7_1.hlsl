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
res += mul(Get(s0,-dx,-dy), float4x4(0.018281599506736,-0.105477608740330,-0.067702747881413,-0.097303345799446,-0.133232787251472,0.109606988728046,0.045741144567728,0.028822481632233,0.014625895768404,-0.052942033857107,-0.013827607035637,0.052137654274702,0.001995204715058,-0.127115920186043,0.074711643159389,0.051911626011133));
res += mul(Get(s0,-dx,0), float4x4(-0.092084817588329,-0.035690091550350,0.099084317684174,-0.133304387331009,0.000266768736765,-0.054728861898184,-0.000163063145010,-0.133789658546448,-0.007196834310889,0.148725375533104,0.002001086017117,0.077755101025105,-0.007678590249270,0.105576738715172,-0.075782418251038,0.031594946980476));
res += mul(Get(s0,-dx,dy), float4x4(0.006826371420175,-0.078310631215572,-0.047269087284803,-0.030054919421673,0.078738979995251,-0.023802276700735,0.087450988590717,-0.050297021865845,-0.000007652110071,0.188713610172272,0.066884890198708,-0.020587928593159,-0.033276263624430,-0.072209477424622,-0.011567866429687,-0.104371458292007));
res += mul(Get(s0,0,-dy), float4x4(-0.048552468419075,-0.032856076955795,-0.119296446442604,0.108041532337666,-0.037310242652893,-0.042638793587685,0.016070531681180,0.051115468144417,0.019324449822307,-0.084859170019627,-0.008230404928327,-0.000746111676563,-0.098298296332359,-0.041330214589834,-0.006101796403527,-0.000867117021699));
res += mul(Get(s0,0,0), float4x4(-0.058721560984850,-0.004553965758532,-0.119209110736847,-0.010279963724315,0.019150100648403,0.007472232449800,-0.070458032190800,-0.091248378157616,-0.094654425978661,-0.001299075433053,0.029302611947060,0.127467066049576,-0.028782432898879,0.010779037140310,-0.096899926662445,0.135771557688713));
res += mul(Get(s0,0,dy), float4x4(-0.163955926895142,0.014632877893746,0.001028676750138,0.098168641328812,-0.145567104220390,0.115579076111317,-0.025376293808222,-0.032507490366697,0.036468971520662,0.032907698303461,0.111116915941238,-0.081208981573582,0.045144572854042,-0.069850757718086,-0.001382831018418,0.010150237008929));
res += mul(Get(s0,dx,-dy), float4x4(0.009463243186474,-0.020481739193201,-0.025981653481722,0.035252541303635,0.055780906230211,-0.067736752331257,0.040859691798687,-0.074270226061344,-0.111409120261669,-0.070936352014542,0.015617616474628,-0.063605099916458,-0.071573220193386,-0.010428862646222,0.017186710610986,-0.051143884658813));
res += mul(Get(s0,dx,0), float4x4(-0.079045273363590,0.001105332514271,0.110382810235023,0.114336028695107,-0.033403992652893,-0.084086038172245,-0.038427527993917,0.056379538029432,0.052319049835205,0.031627029180527,0.044196274131536,0.047257337719202,-0.019783765077591,-0.043695218861103,0.042427826672792,0.124542213976383));
res += mul(Get(s0,dx,dy), float4x4(-0.115123622119427,0.027565043419600,0.043147858232260,0.108740039169788,0.040956463664770,-0.012364939786494,-0.068573996424675,-0.018602283671498,0.068034335970879,0.138996690511703,0.060045015066862,0.148893803358078,0.062569141387939,0.003713061800227,-0.120274677872658,-0.007993314415216));
res += mul(Get(s1,-dx,-dy), float4x4(-0.066753141582012,-0.065152518451214,-0.084442287683487,-0.046280957758427,-0.049360301345587,-0.090867847204208,-0.103703729808331,-0.046903468668461,0.056225817650557,-0.031177652999759,-0.089828900992870,0.132633864879608,-0.011741447262466,0.024661507457495,-0.124728560447693,-0.207725062966347));
res += mul(Get(s1,-dx,0), float4x4(-0.002944129286334,0.016722371801734,-0.051893655210733,-0.021560240536928,0.035374600440264,-0.019307797774673,0.029668577015400,0.073214076459408,0.008370643481612,-0.041486181318760,-0.019341887906194,0.204858422279358,-0.200124993920326,-0.047322772443295,-0.073061123490334,-0.016317680478096));
res += mul(Get(s1,-dx,dy), float4x4(0.100723512470722,0.010701704770327,-0.030115230008960,0.050722893327475,0.023291980847716,0.035347133874893,-0.004248663317412,-0.094457298517227,0.096756726503372,0.127134650945663,-0.009222315624356,-0.020368136465549,0.051518943160772,0.005770709831268,-0.020210707560182,-0.091726489365101));
res += mul(Get(s1,0,-dy), float4x4(-0.072862498462200,-0.011909609660506,0.021243123337626,-0.062763534486294,-0.102056957781315,0.016766419634223,0.039674047380686,0.102863654494286,0.058658495545387,-0.012258157134056,-0.052399955689907,0.033080212771893,0.047222308814526,0.075803354382515,-0.013956740498543,0.011708375066519));
res += mul(Get(s1,0,0), float4x4(-0.025112304836512,0.019664887338877,0.011770340614021,-0.098643496632576,0.013414351269603,0.027053695172071,0.075759574770927,-0.002988886553794,0.006655681878328,0.042808994650841,0.079049386084080,0.062140796333551,0.149831384420395,-0.109451368451118,0.054652716964483,0.007256430573761));
res += mul(Get(s1,0,dy), float4x4(-0.006188957486302,-0.039781469851732,-0.078082084655762,-0.170823886990547,0.112452194094658,-0.044579714536667,-0.067540720105171,0.065017044544220,0.094614423811436,-0.060346689075232,0.070613056421280,0.120731875300407,0.015772679820657,0.032302908599377,-0.092128530144691,0.193073943257332));
res += mul(Get(s1,dx,-dy), float4x4(0.138232067227364,-0.055293168872595,-0.025205288082361,0.004659940022975,-0.024781517684460,-0.005957146640867,0.000309589144308,-0.019489230588078,0.139902085065842,0.079183250665665,-0.012909124605358,0.083171419799328,0.012077027000487,-0.060742814093828,-0.057286590337753,-0.019501535221934));
res += mul(Get(s1,dx,0), float4x4(-0.020785994827747,-0.053724609315395,0.014686127193272,-0.058634672313929,-0.073730655014515,-0.120178945362568,0.129142388701439,-0.025638461112976,0.044594496488571,0.036965187638998,-0.034877490252256,0.084982104599476,-0.021145302802324,-0.064100831747055,-0.068510994315147,-0.015667887404561));
res += mul(Get(s1,dx,dy), float4x4(0.075643554329872,0.082161411643028,0.017333652824163,0.089524105191231,0.089314140379429,-0.078323438763618,-0.090812034904957,-0.117110855877399,0.038526523858309,0.003047922393307,0.034420423209667,0.100653186440468,-0.016060695052147,-0.032851252704859,-0.175700515508652,-0.090303979814053));
res += mul(Get(s2,-dx,-dy), float4x4(-0.145985618233681,-0.011667359620333,0.018780436366796,0.101605415344238,0.021799128502607,-0.051718570291996,-0.049228638410568,0.006747010163963,-0.033323802053928,-0.051120627671480,-0.053703851997852,0.025500200688839,0.209431067109108,-0.116981968283653,0.005697732325643,0.029748562723398));
res += mul(Get(s2,-dx,0), float4x4(-0.023243188858032,-0.131051868200302,0.059286054223776,0.054556269198656,0.061207827180624,-0.020398637279868,0.098569311201572,-0.086847089231014,0.049105547368526,0.061649136245251,0.098548337817192,0.057290125638247,0.013063024729490,-0.031883969902992,-0.020881805568933,0.005132148973644));
res += mul(Get(s2,-dx,dy), float4x4(-0.119026944041252,-0.014208347536623,0.141309127211571,0.072268985211849,-0.053695544600487,-0.031325273215771,0.101570419967175,0.006902603432536,0.058109674602747,-0.003870735643432,-0.016834307461977,-0.103612273931503,0.038027171045542,-0.101560495793819,-0.096095442771912,-0.001945320982486));
res += mul(Get(s2,0,-dy), float4x4(-0.098827615380287,-0.020321236923337,0.055730935186148,-0.126557111740112,-0.124842323362827,0.098307885229588,0.054630629718304,0.038053918629885,-0.049931634217501,-0.096278786659241,-0.050783362239599,-0.034326862543821,-0.110202454030514,0.081044666469097,0.085204750299454,0.078611448407173));
res += mul(Get(s2,0,0), float4x4(-0.029812116175890,-0.030047869309783,-0.059450399130583,-0.045437373220921,0.005225664004683,0.011260055936873,0.051971293985844,0.078653529286385,0.144302159547806,-0.032776944339275,-0.120221912860870,-0.031921759247780,-0.006989488378167,-0.044944923371077,0.028652064502239,0.076798290014267));
res += mul(Get(s2,0,dy), float4x4(0.055632974952459,-0.117283590137959,0.127631053328514,-0.082868173718452,0.035311605781317,0.184327289462090,-0.004201333969831,0.023698834702373,-0.105006493628025,0.010260689072311,0.094574853777885,-0.089149735867977,-0.029242876917124,-0.004915797617286,-0.064092077314854,0.004769898019731));
res += mul(Get(s2,dx,-dy), float4x4(-0.067439153790474,0.002803068375215,-0.133959114551544,-0.017670329660177,0.050495337694883,-0.037293117493391,0.003096324857324,0.067509122192860,0.149760782718658,-0.151712059974670,-0.074639171361923,-0.026428010314703,0.176067546010017,-0.016579987481236,0.010829787701368,-0.100272737443447));
res += mul(Get(s2,dx,0), float4x4(-0.030676791444421,-0.048649486154318,-0.085912920534611,-0.118039183318615,0.040013886988163,0.016822721809149,0.011460565961897,-0.049534197896719,-0.060837756842375,0.007208932656795,-0.146998375654221,0.003716298611835,-0.063485436141491,0.033568724989891,0.087637938559055,-0.075115069746971));
res += mul(Get(s2,dx,dy), float4x4(-0.000669268425554,0.026641998440027,0.065637879073620,-0.081270456314087,-0.003348377998918,-0.022428687661886,0.046410080045462,0.043474454432726,-0.072044864296913,0.107071712613106,-0.090428702533245,0.106092840433121,0.020837683230639,-0.081459783017635,0.000636099139228,-0.075083799660206));
res += mul(Get(s3,-dx,-dy), float4x4(0.068333201110363,-0.008395553566515,0.071607746183872,-0.027099013328552,-0.029370443895459,-0.220314323902130,0.057478811591864,-0.019473426043987,0.136045366525650,-0.069631725549698,0.008378402329981,0.035418637096882,0.034475550055504,-0.060227956622839,-0.015841405838728,-0.216014951467514));
res += mul(Get(s3,-dx,0), float4x4(-0.032168775796890,0.110639430582523,0.006145155988634,-0.004226465243846,-0.067815504968166,-0.041035339236259,-0.041153330355883,-0.023428188636899,0.015976743772626,0.054681610316038,-0.049381222575903,-0.011255376040936,0.065242514014244,0.111312873661518,0.076932609081268,-0.249649107456207));
res += mul(Get(s3,-dx,dy), float4x4(-0.112664490938187,-0.011599985882640,0.048075869679451,0.015484853647649,-0.011790896765888,0.005607679486275,-0.046485297381878,0.126520633697510,0.046029228717089,0.072229258716106,0.046220306307077,0.033068362623453,-0.016214877367020,0.016180098056793,-0.050588581711054,-0.094980239868164));
res += mul(Get(s3,0,-dy), float4x4(-0.074916906654835,0.003334893146530,0.118444032967091,0.127719849348068,0.046601928770542,0.019553560763597,-0.091412469744682,-0.035096816718578,0.050197917968035,-0.032002773135900,-0.003511741990224,-0.044042613357306,-0.219872102141380,0.089102223515511,0.096427552402020,0.014438907615840));
res += mul(Get(s3,0,0), float4x4(0.007896993309259,0.053305070847273,0.052666097879410,0.007216847967356,0.071000896394253,-0.021495549008250,0.071999117732048,0.047951549291611,0.080843538045883,0.049012832343578,-0.050090063363314,0.052708204835653,0.036878515034914,0.016852507367730,0.041183680295944,-0.060497932136059));
res += mul(Get(s3,0,dy), float4x4(-0.070644222199917,0.012041230686009,-0.011039831675589,-0.007188464514911,0.004850038327277,-0.027125122025609,0.086143232882023,-0.010512063279748,0.093873016536236,-0.035443637520075,0.059215158224106,-0.018819287419319,0.042958769947290,0.041301220655441,0.011112555861473,-0.017811078578234));
res += mul(Get(s3,dx,-dy), float4x4(-0.094273433089256,0.049803499132395,0.105054244399071,-0.016696397215128,0.023485384881496,0.090536013245583,0.020693808794022,0.047749981284142,0.000924336374737,-0.057033017277718,-0.041853342205286,0.022058865055442,0.000561979017220,-0.028743814677000,-0.069109939038754,0.018160553649068));
res += mul(Get(s3,dx,0), float4x4(0.062498848885298,-0.004986035171896,0.007732239086181,-0.091741487383842,0.008270287886262,0.011046101339161,-0.034498199820518,0.005458985455334,0.043492220342159,-0.050893433392048,-0.053535606712103,0.085521854460239,0.047199454158545,-0.041802462190390,0.117085583508015,0.108014039695263));
res += mul(Get(s3,dx,dy), float4x4(0.023743126541376,-0.080006159842014,0.067998535931110,-0.099253952503204,0.020526032894850,-0.094562985002995,-0.040970310568810,-0.064174599945545,0.080453574657440,-0.006578378845006,-0.001903774100356,-0.006850228644907,0.116465903818607,0.018913678824902,-0.098351150751114,0.069234073162079));
res = max(float4(0,0,0,0), res);
return res;
}
