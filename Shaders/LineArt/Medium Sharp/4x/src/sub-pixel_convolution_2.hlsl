sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.000318886013702,-0.000176152214408,-0.000571564771235,-0.000577249098569);
res += mul(Get(s0,-dx,-dy), float4x4(-0.000542217982002,0.000294073077384,0.000708459294401,0.000798636465333,0.009294863790274,0.011864761821926,-0.007663393393159,-0.001894770655781,-0.000782551825978,0.000267527706455,0.001243693404831,0.000666753214318,-0.001300171832554,0.003694215789437,0.006568343844265,0.006597706582397));
res += mul(Get(s0,-dx,0), float4x4(-0.002798018278554,-0.003116996726021,-0.002379030687734,-0.000937010336202,-0.000621713057626,-0.000508639961481,-0.005607563070953,-0.012595498934388,-0.001946923555806,0.001218991354108,0.002361256396398,0.000631261267699,0.018917609006166,0.023062927648425,0.014947135932744,-0.000454358611023));
res += mul(Get(s0,-dx,dy), float4x4(-0.001064913813025,-0.000672315480188,-0.001089875702746,-0.002504423959181,0.001355532207526,0.000663620012347,-0.000408384832554,-0.000655476993416,-0.004492392297834,0.000448351813247,0.001123896217905,-0.002804924966767,0.001973470905796,0.001462072483264,0.002322174375877,0.009714669547975));
res += mul(Get(s0,0,-dy), float4x4(-0.001709224190563,-0.002100086305290,-0.001118585350923,-0.000325203407556,0.015084929764271,0.017649726942182,-0.010850179009140,-0.009805873036385,-0.002472769003361,0.004557575564831,0.006373721174896,0.004010125063360,-0.002989955013618,0.000328588590492,0.000178873888217,-0.001188578433357));
res += mul(Get(s0,0,0), float4x4(0.013687474653125,0.022197458893061,0.014758712612092,0.003086807671934,0.002829306293279,-0.004310830496252,-0.016450826078653,-0.017694603651762,0.034616883844137,-0.013921629637480,-0.019396394491196,-0.012084350921214,-0.013898422010243,-0.016427457332611,-0.014586899429560,-0.008987441658974));
res += mul(Get(s0,0,dy), float4x4(0.007368219085038,0.007759523577988,0.004253543913364,0.003235628362745,0.000988533836789,0.000135533206048,0.000276460807072,0.002087578875944,-0.000887234346010,-0.033428709954023,-0.021928889676929,0.048860307782888,0.003263936843723,0.003687774995342,0.000245588336838,-0.006386438384652));
res += mul(Get(s0,dx,-dy), float4x4(-0.002323600696400,0.000819919747300,0.001531932037324,-0.000376840005629,0.003356074448675,0.002195667941123,-0.001983494032174,-0.000241084504523,-0.002004525624216,-0.001733293058351,-0.000547157484107,0.000131314183818,0.002663788618520,-0.000249893026194,-0.000697301584296,0.000371418194845));
res += mul(Get(s0,dx,0), float4x4(0.011067495681345,0.011522841639817,0.003410656005144,-0.003788990434259,0.000915336364415,0.003187047084793,0.002915399847552,-0.001063091098331,-0.001106385723688,0.000880332372617,0.000343436608091,-0.001086030155420,0.003684768918902,0.006789081264287,0.007129092700779,0.005080584436655));
res += mul(Get(s0,dx,dy), float4x4(0.002146921586245,0.003666803473607,0.003142272122204,0.005397472530603,-0.001077196327969,-0.000471743231174,0.000806846306659,0.001494775409810,-0.003298063995317,0.002789003541693,0.002533982507885,-0.001624750439078,-0.001123950467445,-0.001437471364625,-0.000167492238688,0.001384586910717));
res += mul(Get(s1,-dx,-dy), float4x4(0.001463484135456,0.001330137602054,-0.000686286017299,-0.001517138676718,-0.005802246741951,-0.002997347619385,0.001702541369013,0.002296205842867,0.000936606316827,-0.000349265174009,0.000633645046037,0.000776294618845,-0.012072612531483,-0.009265893138945,-0.003481816966087,-0.000691963417921));
res += mul(Get(s1,-dx,0), float4x4(0.007565690670162,-0.001967726740986,-0.002213366329670,0.004994226153940,0.000187769808690,0.022465484216809,0.006758669391274,-0.006085058208555,0.000420977652539,-0.003694160608575,-0.003236899618059,-0.001073241466656,0.006202850490808,0.004537958186120,-0.001016723574139,-0.007884729653597));
res += mul(Get(s1,-dx,dy), float4x4(0.002865990391001,0.004187808372080,-0.002746598329395,-0.003635280299932,0.001478961436078,0.001316696521826,-0.004329805728048,-0.016147911548615,-0.000229360550293,-0.002372259972617,-0.000476204819279,0.005814743228257,-0.004163240548223,-0.003707568859681,-0.002151735359803,0.001168652670458));
res += mul(Get(s1,0,-dy), float4x4(0.003822793718427,-0.002164059085771,-0.006078645586967,-0.005963366944343,-0.001681748311967,-0.002892109798267,0.000799067900516,0.000717841670848,-0.005933019798249,-0.003812595037743,-0.002732850145549,-0.000207011675229,0.006664724554867,0.001383912167512,-0.001356121269055,-0.001433607540093));
res += mul(Get(s1,0,0), float4x4(-0.016167972236872,-0.015665663406253,0.016393711790442,0.021841768175364,0.006514121312648,0.031583998352289,-0.001920257927850,-0.011208954267204,-0.075264923274517,-0.016218207776546,0.047018796205521,0.007355216890574,0.014260252006352,0.015730384737253,0.016628909856081,0.013499611988664));
res += mul(Get(s1,0,dy), float4x4(0.007646636571735,0.011410928331316,0.007969859056175,0.000440836709458,0.000888910319190,0.004797947593033,-0.007808622904122,-0.029349092394114,-0.008335861377418,-0.007881252095103,0.029407734051347,0.007061413023621,-0.002612010110170,-0.001872988417745,0.003191376337782,0.010148175992072));
res += mul(Get(s1,dx,-dy), float4x4(0.000937999808230,0.001383932307363,0.000541687419172,-0.000845796661451,0.000102843929199,-0.000769360107370,-0.002188048092648,-0.002061372390017,-0.000050101250963,0.001241831341758,0.002277307910845,0.003044124227017,-0.002908613765612,-0.001861957483925,-0.001306018675677,-0.001119850436226));
res += mul(Get(s1,dx,0), float4x4(-0.000761216739193,-0.005200562067330,0.000567360955756,0.003712011734024,0.003036838024855,0.003336486406624,0.001059034373611,-0.000008005944437,0.001830166438594,0.006790378596634,-0.004099230282009,-0.009331390261650,-0.005706721916795,-0.007205148693174,-0.006580452434719,-0.004596232902259));
res += mul(Get(s1,dx,dy), float4x4(0.001233059680089,0.000240353940171,-0.001741435728036,-0.001369597972371,-0.000474610511446,-0.000826817704365,0.000787505530752,0.000827656127512,-0.002919411752373,-0.001355049316771,0.000920332444366,0.000385862716939,-0.000337039120495,-0.001081674010493,-0.002609439892694,-0.004050709307194));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000474883359857,-0.000131299704663,-0.000955952622462,-0.001080772490241,0.008156405761838,0.000724765239283,-0.008014252409339,-0.007455190178007,0.010231040418148,0.007142573595047,0.002585816662759,-0.000485190219479,0.000959668832365,-0.000267980387434,-0.000813430000562,-0.000567682494875));
res += mul(Get(s2,-dx,0), float4x4(0.001044969540089,0.000152003078256,-0.001302968943492,-0.001806723303162,-0.010495880618691,-0.011221218854189,0.003505907487124,0.014138646423817,0.007667168043554,0.007922762073576,0.009330426342785,0.010397627018392,0.002404889557511,0.003349948907271,0.003528711618856,0.002486688317731));
res += mul(Get(s2,-dx,dy), float4x4(-0.000072841416113,-0.000682401121594,-0.000431679072790,0.001195441815071,0.003130331635475,0.003700120840222,0.001323120552115,-0.003862198675051,0.004282574634999,0.005159122869372,0.004475950729102,0.007368138059974,-0.000175845241756,0.000040397793782,0.000328402238665,0.001247400650755));
res += mul(Get(s2,0,-dy), float4x4(0.008236185647547,0.000966460676864,-0.000477055669762,0.000113686852274,-0.001994694117457,-0.006379967555404,-0.009867398999631,-0.008583093062043,-0.004957717377692,0.007747448515147,0.011763091199100,0.006328071933240,-0.008333984762430,-0.000367461296264,0.003077336819842,0.003862891113386));
res += mul(Get(s2,0,0), float4x4(0.020446740090847,0.023071991279721,0.020256871357560,0.015508510172367,-0.018616991117597,-0.007101261522621,0.018085751682520,0.015289521776140,-0.029818836599588,-0.043135333806276,-0.039895579218864,-0.026951555162668,-0.012835851870477,-0.019681293517351,-0.022621434181929,-0.019614800810814));
res += mul(Get(s2,0,dy), float4x4(-0.002156797330827,0.000285668560537,0.006308008916676,0.012474891729653,0.005694816820323,0.006531174760312,0.001703115645796,-0.008892539888620,0.008201786316931,0.011663629673421,0.003132454352453,-0.007920763455331,0.001314297900535,0.000643107574433,-0.000087556720246,-0.003716611769050));
res += mul(Get(s2,dx,-dy), float4x4(0.002930631395429,0.000754792825319,-0.001079429173842,0.000933729286771,0.001733517041430,0.003019412746653,0.002319138497114,0.001528548076749,0.005599413532764,0.001412961864844,-0.000095045237686,-0.000157920658239,-0.008263594470918,-0.000961501209531,0.002626280533150,0.001940638874657));
res += mul(Get(s2,dx,0), float4x4(-0.016224481165409,-0.006226195953786,0.002015567617491,0.001810119254515,0.003593879984692,0.001836402574554,-0.001932017155923,-0.000323863554513,0.006840421818197,0.011134075932205,0.013444603420794,0.011113183572888,-0.026378983631730,-0.041988797485828,-0.041525427252054,-0.027128890156746));
res += mul(Get(s2,dx,dy), float4x4(0.002958134049550,-0.002923994325101,-0.007799608632922,-0.010979398153722,0.000579970714170,-0.000905786582734,-0.003002930199727,-0.001585347345099,0.002578505314887,0.003673737868667,0.004633829928935,0.005282587837428,-0.001446745707653,0.000936966971494,0.001551840570755,-0.005193973425776));
res += mul(Get(s3,-dx,-dy), float4x4(-0.008897535502911,-0.002633524825796,0.003741884836927,0.004371077287942,-0.013334232382476,-0.005885847378522,-0.001828205306083,-0.002571546006948,0.002625687513500,-0.001322253607213,-0.000227828073548,-0.001081808586605,-0.010796250775456,0.000901884923223,0.004523034207523,0.005324190482497));
res += mul(Get(s3,-dx,0), float4x4(0.002519351430237,0.008368331938982,0.003217695746571,-0.007104242220521,-0.030830500647426,-0.049713242799044,-0.050592999905348,-0.032437685877085,-0.001583725214005,-0.003218938596547,-0.002131244400516,0.001841055811383,0.006601418368518,0.016679411754012,0.008884862065315,-0.012238467112184));
res += mul(Get(s3,-dx,dy), float4x4(0.000564123038203,-0.001498140743934,-0.005170075222850,-0.005340717732906,-0.006198027636856,-0.005103067494929,-0.002434063935652,-0.007598384283483,-0.000010480338460,0.000088330794824,0.001542021986097,0.001922402996570,-0.001284964964725,-0.002646460430697,-0.002894155681133,0.001460907515138));
res += mul(Get(s3,0,-dy), float4x4(-0.031228294596076,-0.012194814160466,0.000501720933244,0.002580684609711,-0.001831070985645,0.000488115561893,0.000857367936987,0.000948593835346,0.008517194539309,0.018611336126924,0.007512240670621,0.002992236986756,-0.020247720181942,0.000503626768477,0.003347617574036,0.004833476617932));
res += mul(Get(s3,0,0), float4x4(0.016742922365665,0.012479462660849,-0.011866257525980,-0.036891132593155,-0.015060558915138,-0.020310917869210,-0.015504563227296,-0.007278888486326,0.025821456685662,0.025839457288384,-0.034130282700062,-0.046371951699257,-0.004034587647766,0.021723791956902,0.027184525504708,-0.013421905227005));
res += mul(Get(s3,0,dy), float4x4(-0.003058952046558,-0.004732362460345,-0.004904559347779,0.002324684290215,0.001929193618707,0.001913500367664,0.000767043442465,-0.003920874558389,-0.007175364065915,-0.007841671817005,0.003080214839429,0.010387315414846,0.001024119672365,-0.002005451126024,-0.009082248434424,-0.008645982481539));
res += mul(Get(s3,dx,-dy), float4x4(0.000636833661702,0.001687166164629,0.001785363536328,0.000756959721912,0.001202516723424,0.001084272051230,0.000851356424391,0.000618135672994,0.000422635668656,-0.001588288694620,0.001867268700153,0.002366148633882,-0.001616884954274,0.000630388152786,0.001545565901324,0.001046843244694));
res += mul(Get(s3,dx,0), float4x4(-0.000235804691329,0.000428980041761,-0.001061068382114,-0.000238906592131,0.000735469046049,0.000826866657007,0.000414795242250,0.000014172795090,-0.000429493724369,-0.005622427444905,-0.001934895874001,0.003067872719839,0.000495277170558,-0.001065096934326,-0.001867238315754,-0.002020517364144));
res += mul(Get(s3,dx,dy), float4x4(-0.000438368879259,-0.001153779565357,-0.002166916849092,-0.001828934298828,0.000886010879185,0.001343229785562,0.001561817829497,0.001669885474257,-0.001354401116259,-0.000460461742477,0.000665308383759,0.002619100268930,0.000826718460303,0.001780266989954,0.001703798188828,0.001767591922544));
res += mul(Get(s4,-dx,-dy), float4x4(-0.003655637148768,-0.001363140414469,0.000524759117980,0.000156788897584,0.015114846639335,0.001115168211982,-0.004183933138847,-0.001478756195866,0.006462254561484,-0.003180097555742,-0.002894089790061,0.000154166453285,0.001810676767491,0.001286926446483,-0.003923563286662,-0.006370354909450));
res += mul(Get(s4,-dx,0), float4x4(0.002982127014548,-0.000222563467105,-0.003531830618158,-0.004835536237806,0.000601806852501,0.008000173605978,0.022316459566355,0.028631268069148,-0.002410762943327,-0.016263572499156,-0.007683043368161,0.007589668966830,0.000444216158940,0.001147756818682,0.000072836184700,-0.000713953049853));
res += mul(Get(s4,-dx,dy), float4x4(0.000179664348252,0.000350297108525,0.002127556363121,0.003320219926536,-0.001314109307714,-0.001365055097267,-0.000834867300000,0.000250317243626,0.006659255363047,0.006080090533942,0.002702741418034,0.003833367722109,-0.000540456443559,0.000075689000369,0.000507816323079,0.000156646725372));
res += mul(Get(s4,0,-dy), float4x4(0.013660226948559,0.006927169859409,0.001647689845413,-0.001687550335191,0.033285882323980,0.008731114678085,-0.003537488402799,0.000070539776061,-0.007957557216287,-0.001458686194383,0.001994288759306,0.001936933957040,0.007570090238005,-0.016646366566420,-0.012846578843892,-0.002666931832209));
res += mul(Get(s4,0,0), float4x4(-0.018806844949722,-0.020169252529740,-0.004831025842577,0.013054982759058,0.000052886131016,0.011966174468398,0.037405353039503,0.050683796405792,0.048950482159853,0.030971499159932,-0.014889254234731,-0.028825899586082,-0.022548405453563,-0.008531101047993,0.033979076892138,0.046292923390865));
res += mul(Get(s4,0,dy), float4x4(0.000134843474370,-0.000403476500651,-0.003537536831573,-0.009293425828218,0.003543283790350,0.004570292308927,0.001737524638884,-0.001765111577697,-0.007414449006319,-0.015786545351148,-0.017662089318037,0.011149462312460,0.001391990459524,0.001198420999572,-0.002382942475379,-0.009019598364830));
res += mul(Get(s4,dx,-dy), float4x4(0.001811989117414,-0.002468757098541,-0.003187949303538,-0.000687988940626,-0.004313180223107,-0.003525089938194,-0.001512923627160,-0.001469392213039,0.002645790809765,0.003432787256315,0.003269680310041,0.002370177069679,0.016583716496825,0.004663808736950,-0.000032518149965,0.002474966691807));
res += mul(Get(s4,dx,0), float4x4(0.008535623550415,0.011919293552637,0.014228280633688,0.009635227732360,-0.001704013790004,-0.002573564881459,-0.003434473881498,-0.004649326205254,-0.002813312923536,-0.001126024522819,-0.000090764508059,0.001335134031251,0.005636476911604,-0.021168207749724,-0.021062819287181,0.008063205517828));
res += mul(Get(s4,dx,dy), float4x4(-0.004477811977267,-0.005106296855956,-0.001739175757393,0.003639061935246,0.000322844105540,-0.000046392029617,0.000107351253973,0.000271482538665,-0.006476632319391,-0.004258315078914,-0.000526869553141,-0.000620132952463,-0.003161519998685,-0.004891033284366,-0.000699485302903,0.012297184206545));
res += mul(Get(s5,-dx,-dy), float4x4(0.001515744370408,-0.003787741763517,-0.006095092743635,-0.004504153970629,0.004031960852444,0.004808129277080,0.001449413713999,0.001262491452508,-0.000459234695882,0.000356285454473,0.000343309482560,-0.001363961258903,-0.004633879289031,-0.003428924595937,-0.000128527288325,0.000575132551603));
res += mul(Get(s5,-dx,0), float4x4(0.006252584978938,0.008126992732286,0.005535657051951,0.002798584057018,-0.003087805118412,-0.003762192791328,-0.004159084521234,0.000875209458172,0.003728488925844,0.006787609774619,0.001845368067734,-0.004012321587652,0.003365484997630,0.003294623689726,0.002923611551523,-0.001252406043932));
res += mul(Get(s5,-dx,dy), float4x4(0.000813827384263,0.001373614184558,0.002738096285611,0.003442873945460,0.001881286385469,0.001266630482860,-0.000220949208597,-0.001348629710265,-0.000233916856814,-0.001260938006453,-0.001846590777859,0.000684670580085,-0.003532358212397,-0.003690765937790,-0.001582835335284,0.001609124010429));
res += mul(Get(s5,0,-dy), float4x4(0.011282954365015,0.001313168439083,-0.003263208083808,-0.003264916129410,-0.049528922885656,-0.002153586596251,0.023262351751328,0.015910707414150,0.056011043488979,-0.048186771571636,-0.029805205762386,0.024260306730866,-0.015735810622573,-0.005196873098612,0.003999222535640,0.004997882060707));
res += mul(Get(s5,0,0), float4x4(0.015917796641588,0.025693915784359,0.028175795450807,0.022980244830251,0.026817386969924,0.035836223512888,-0.005229485686868,-0.059535741806030,-0.003232169896364,-0.013599299825728,-0.015756540000439,0.050802513957024,0.013457773253322,0.004799691028893,-0.004870303906500,-0.013729433529079));
res += mul(Get(s5,0,dy), float4x4(-0.007208725903183,-0.011585942469537,-0.007124429102987,0.003879733150825,-0.002468524966389,-0.004613672848791,-0.005143942311406,0.001891011255793,-0.000948524160776,0.000500122958329,0.001890239422210,0.001107537071221,-0.004652309231460,-0.003214989556000,0.004892303608358,0.013127910904586));
res += mul(Get(s5,dx,-dy), float4x4(-0.001202038140036,-0.000141409895150,0.000312510499498,0.000563955109101,-0.003402296686545,-0.007216779049486,-0.004621916916221,-0.003440909553319,-0.005929309874773,-0.002221080008894,0.003558035474271,-0.002362234983593,0.000397775322199,0.002234507119283,0.003130073659122,0.002064575906843));
res += mul(Get(s5,dx,0), float4x4(-0.004943892359734,-0.006225000135601,-0.006722070276737,-0.004680002108216,-0.006599331274629,0.004512791987509,0.017684526741505,0.010183829814196,-0.003468003123999,-0.001958256587386,0.001812756992877,0.000782480929047,0.001944209448993,0.000943598803133,0.001458371523768,0.001253784634173));
res += mul(Get(s5,dx,dy), float4x4(0.001041227020323,-0.000244610273512,-0.002114833565429,-0.003804819192737,0.000467563950224,0.001872876775451,0.003335889661685,-0.001112819649279,0.002256453735754,0.002344936365262,0.000479653885122,-0.002576156053692,-0.000432447413914,-0.001032347558066,0.000468199345050,0.002039048355073));
return res;
}