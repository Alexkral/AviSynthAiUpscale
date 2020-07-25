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
res += mul(Get(s0,-dx,-dy), float4x4(-0.015707938000560,0.125667184591293,0.140956431627274,-0.041177760809660,0.145948365330696,-0.012766887433827,-0.112907819449902,-0.056696500629187,0.046057838946581,0.010792236775160,-0.041097469627857,-0.100319929420948,0.114288263022900,0.112178742885590,0.012974943034351,0.052296109497547));
res += mul(Get(s0,-dx,0), float4x4(0.004904964938760,0.051663320511580,-0.100789554417133,-0.073874682188034,0.155406236648560,0.030364582315087,0.054357241839170,-0.078603625297546,0.089021824300289,-0.030288988724351,0.110150665044785,0.088813364505768,-0.143201470375061,0.135609716176987,0.142796829342842,-0.072975262999535));
res += mul(Get(s0,-dx,dy), float4x4(-0.180667638778687,-0.121127754449844,-0.097855970263481,0.096528656780720,-0.009889780543745,0.132803380489349,0.021696055307984,-0.077961452305317,0.101019769906998,0.016156399622560,0.012108332477510,-0.201255559921265,-0.095169588923454,-0.108890466392040,0.014863925985992,-0.074873000383377));
res += mul(Get(s0,0,-dy), float4x4(0.004432071000338,0.078059278428555,-0.001782960374840,-0.015799062326550,0.008318259380758,-0.001581371645443,-0.012698351405561,-0.071823872625828,0.019312711432576,0.047710757702589,0.015143371187150,0.001275236019865,0.029542664065957,0.055396635085344,-0.090766936540604,0.017264910042286));
res += mul(Get(s0,0,0), float4x4(-0.065786771476269,0.228924274444580,0.016168102622032,0.011758434586227,0.093080073595047,-0.062781713902950,0.144029080867767,0.122146248817444,0.086062863469124,0.034264765679836,-0.183967396616936,0.076111294329166,-0.078297108411789,0.082890719175339,0.077125824987888,-0.017709309235215));
res += mul(Get(s0,0,dy), float4x4(0.019304258748889,-0.102119863033295,-0.039776548743248,0.071405410766602,0.076997034251690,0.038375064730644,0.122332111001015,-0.027871938422322,-0.027259368449450,0.050856620073318,0.038322765380144,0.001104407710955,0.103011108934879,-0.101456657052040,0.096752196550369,0.129573449492455));
res += mul(Get(s0,dx,-dy), float4x4(0.009377944283187,0.050520833581686,0.086048915982246,0.105397567152977,0.039889082312584,-0.086515106260777,-0.085333220660686,-0.164538025856018,-0.066098332405090,-0.146725267171860,-0.054194130003452,0.046658791601658,0.085863195359707,-0.129799932241440,0.066061735153198,0.166042834520340));
res += mul(Get(s0,dx,0), float4x4(0.141460120677948,0.001859367126599,0.091794095933437,-0.116612911224365,-0.067487284541130,-0.004805757664144,0.131986320018768,-0.026114447042346,0.066915519535542,-0.084604047238827,-0.107971049845219,0.039994265884161,0.048628084361553,0.073815651237965,-0.066150128841400,-0.117422930896282));
res += mul(Get(s0,dx,dy), float4x4(0.069833494722843,-0.031965717673302,0.201161563396454,-0.055664043873549,0.138414397835732,-0.084484629333019,-0.028135634958744,-0.054576665163040,-0.029521143063903,-0.090370036661625,-0.084105871617794,-0.145323112607002,0.091475620865822,0.074695706367493,0.082305766642094,0.024338776245713));
res += mul(Get(s1,-dx,-dy), float4x4(0.048569638282061,-0.131752297282219,-0.106735013425350,-0.314494878053665,-0.102542899549007,0.042739082127810,0.052196759730577,0.137173414230347,-0.139769837260246,0.071348585188389,-0.162648990750313,-0.048467542976141,-0.153580218553543,-0.176993355154991,-0.011907934211195,-0.001939674955793));
res += mul(Get(s1,-dx,0), float4x4(0.145845532417297,-0.160059913992882,0.041339788585901,-0.066521540284157,-0.107619158923626,0.167124614119530,0.113184526562691,-0.010126982815564,-0.177225932478905,-0.066582158207893,-0.152969643473625,0.014301106333733,-0.127221867442131,0.012963939458132,-0.075078137218952,-0.007673807907850));
res += mul(Get(s1,-dx,dy), float4x4(-0.094250179827213,-0.219783782958984,-0.010400095954537,0.019399914890528,-0.213791802525520,0.212299048900604,0.087271854281425,0.092119395732880,0.057172551751137,-0.021856579929590,0.032791592180729,0.003616422414780,0.047651082277298,-0.097185827791691,-0.175535112619400,0.054958261549473));
res += mul(Get(s1,0,-dy), float4x4(0.131272599101067,0.092963293194771,-0.224567189812660,-0.108349196612835,0.084813468158245,-0.030338471755385,0.004377575591207,0.067854046821594,0.010121003724635,-0.010920070111752,0.048545792698860,0.029882768169045,0.242129296064377,0.110113069415092,-0.055656746029854,-0.091873042285442));
res += mul(Get(s1,0,0), float4x4(0.185762152075768,-0.101685330271721,0.048118196427822,-0.065194606781006,-0.341751188039780,-0.027747523039579,-0.019016817212105,0.090736955404282,0.103323318064213,0.161967158317566,0.034403309226036,-0.037826690822840,0.046144869178534,-0.072503641247749,-0.016533546149731,-0.078059457242489));
res += mul(Get(s1,0,dy), float4x4(0.161218300461769,0.001808744156733,-0.074349619448185,-0.063124686479568,0.155510887503624,-0.100822865962982,0.081109754741192,0.143318235874176,0.117010682821274,-0.033823981881142,0.077700681984425,0.082805566489697,0.046343777328730,-0.038851935416460,0.035422161221504,-0.007487617898732));
res += mul(Get(s1,dx,-dy), float4x4(-0.164965867996216,0.040488544851542,0.054279997944832,-0.086432017385960,0.058583252131939,0.062105577439070,-0.027217591181397,-0.062743321061134,-0.153159320354462,-0.012293615378439,-0.030446043238044,0.131042405962944,0.053586315363646,-0.057143460959196,-0.036345634609461,-0.082542128860950));
res += mul(Get(s1,dx,0), float4x4(-0.067888736724854,0.124871052801609,0.021090107038617,0.051160659641027,0.013102663680911,0.140122130513191,-0.082544937729836,0.102319620549679,-0.154101401567459,-0.043766424059868,0.118109285831451,0.074229001998901,0.159493193030357,-0.122866250574589,0.047290902584791,0.043281976133585));
res += mul(Get(s1,dx,dy), float4x4(0.096743516623974,0.119180679321289,0.135108709335327,-0.068547129631042,0.146915093064308,-0.109051793813705,0.055231645703316,0.119956418871880,0.073902577161789,0.009298425167799,0.063002832233906,0.036195516586304,0.064142353832722,-0.103342190384865,-0.017421066761017,-0.057569257915020));
res += mul(Get(s2,-dx,-dy), float4x4(0.007869303226471,0.041707590222359,-0.295137733221054,0.077167570590973,-0.138118505477905,0.045592788606882,0.170359134674072,0.190691217780113,-0.051403164863586,-0.088067188858986,0.206878840923309,-0.148604884743690,0.052264481782913,0.108997918665409,0.128294736146927,0.055759549140930));
res += mul(Get(s2,-dx,0), float4x4(0.034621912986040,-0.068073675036430,0.329820275306702,0.065822631120682,0.167484566569328,0.053100548684597,-0.038140680640936,0.112471707165241,-0.097258813679218,-0.093740761280060,-0.123280674219131,0.033772148191929,-0.094830304384232,-0.006856777705252,0.012248231098056,0.129876911640167));
res += mul(Get(s2,-dx,dy), float4x4(0.211039423942566,-0.139509484171867,0.149642229080200,0.024449635297060,-0.024809496477246,-0.014625399373472,-0.142787784337997,-0.081948608160019,-0.139534711837769,0.097548715770245,0.296827167272568,-0.082989618182182,-0.063611261546612,0.022623337805271,0.094297423958778,-0.011220527812839));
res += mul(Get(s2,0,-dy), float4x4(-0.082084961235523,-0.180473729968071,-0.039500780403614,0.085314713418484,0.036092478781939,0.087514773011208,0.088816210627556,0.079372659325600,0.218370124697685,0.143465057015419,0.150781780481339,-0.084582775831223,0.095068283379078,-0.001521510188468,0.011380339972675,0.009773141704500));
res += mul(Get(s2,0,0), float4x4(-0.126680582761765,-0.114755384624004,0.270331889390945,0.063610330224037,0.250783413648605,0.010373177006841,0.153064787387848,-0.113067008554935,-0.026695875450969,0.029018973931670,-0.020704759284854,-0.124743685126305,0.018545763567090,0.228126928210258,-0.079485245049000,0.090505518019199));
res += mul(Get(s2,0,dy), float4x4(-0.197200462222099,-0.152525752782822,0.108798593282700,-0.074946947395802,-0.113816261291504,-0.021463796496391,0.061546724289656,-0.110366523265839,-0.004783767275512,0.188970401883125,-0.036355137825012,-0.111276596784592,-0.280163437128067,-0.086118988692760,-0.051181394606829,-0.303755044937134));
res += mul(Get(s2,dx,-dy), float4x4(-0.102373674511909,-0.016321450471878,-0.057085335254669,0.020417347550392,0.067485675215721,-0.147428125143051,0.042291358113289,-0.066345207393169,-0.137414246797562,0.069185487926006,-0.040642347186804,0.073306836187840,-0.080271802842617,0.132474333047867,0.004692722577602,-0.107844427227974));
res += mul(Get(s2,dx,0), float4x4(-0.246831804513931,0.113974034786224,0.082354381680489,0.095469176769257,0.079909712076187,0.181238457560539,-0.060803685337305,0.078581839799881,0.129022821784019,0.029984215274453,-0.137512445449829,0.177960202097893,0.020657939836383,-0.059746377170086,-0.077498756349087,-0.031490717083216));
res += mul(Get(s2,dx,dy), float4x4(-0.107688315212727,-0.179430201649666,-0.094381965696812,-0.125942215323448,0.251878559589386,0.148345410823822,-0.055652037262917,0.064296357333660,0.147208541631699,0.063312016427517,0.093472279608250,0.062262006103992,0.052428387105465,0.021431624889374,0.006737915799022,0.016328215599060));
res += mul(Get(s3,-dx,-dy), float4x4(-0.083382740616798,-0.002711866283789,0.090603731572628,-0.113933898508549,0.068848006427288,-0.096764966845512,-0.001387253520079,-0.198036149144173,-0.076292730867863,-0.032479371875525,0.214580953121185,-0.130002096295357,-0.012200358323753,0.011568879708648,0.115939907729626,0.014901986345649));
res += mul(Get(s3,-dx,0), float4x4(0.111202873289585,-0.028572620823979,-0.023442421108484,0.033018153160810,0.047319713979959,0.038667079061270,-0.030341964215040,-0.023072600364685,0.001027994672768,0.091330163180828,0.004113003145903,0.032550454139709,-0.005651424173266,-0.051143113523722,0.172773942351341,-0.031339745968580));
res += mul(Get(s3,-dx,dy), float4x4(0.148283347487450,0.110535152256489,-0.227517783641815,0.034897174686193,0.213071793317795,0.080880746245384,0.097028568387032,0.089642643928528,-0.058183860033751,-0.054202403873205,0.127174645662308,-0.157097712159157,0.013257339596748,-0.011664869263768,-0.000180614151759,0.148392334580421));
res += mul(Get(s3,0,-dy), float4x4(-0.117514766752720,0.163859009742737,-0.187771975994110,-0.012914894148707,-0.178835183382034,0.077380083501339,-0.150374963879585,0.018924107775092,-0.138088166713715,0.107450589537621,-0.000030112902095,-0.068139657378197,0.183097869157791,0.033430002629757,-0.136464148759842,-0.119729086756706));
res += mul(Get(s3,0,0), float4x4(0.002088180975989,-0.023821773007512,-0.020659722387791,0.107021547853947,0.010754583403468,0.142888799309731,0.045100852847099,0.036680541932583,-0.089425936341286,-0.107199378311634,-0.134275659918785,0.052509635686874,-0.057198066264391,0.187337338924408,0.096423268318176,0.061528276652098));
res += mul(Get(s3,0,dy), float4x4(0.007322549354285,0.133691042661667,0.082257270812988,0.137074947357178,-0.036042235791683,0.046418674290180,0.077482856810093,0.038331829011440,-0.049729898571968,-0.151947960257530,-0.072490759193897,0.153374701738358,-0.058798238635063,-0.000189847894944,-0.043625801801682,0.056609656661749));
res += mul(Get(s3,dx,-dy), float4x4(0.071637712419033,0.122009932994843,0.088026434183121,0.064711160957813,-0.055311385542154,0.053204402327538,-0.099775172770023,-0.163141474127769,-0.032655715942383,-0.076159499585629,0.132657811045647,0.023736117407680,0.124167710542679,-0.003951784223318,-0.047756385058165,-0.120424903929234));
res += mul(Get(s3,dx,0), float4x4(-0.207498699426651,0.216341301798820,-0.037896476686001,-0.246199026703835,-0.035638280212879,0.000459860224510,-0.168328747153282,-0.009445385076106,-0.020188048481941,-0.150562509894371,0.036259166896343,-0.038243878632784,0.146007925271988,0.070078678429127,-0.247180536389351,-0.096137471497059));
res += mul(Get(s3,dx,dy), float4x4(-0.191151306033134,-0.080702416598797,-0.082147590816021,0.123274296522141,0.013250182382762,0.101570650935173,0.139786690473557,-0.013427267782390,-0.105831779539585,0.097239941358566,-0.060600511729717,0.146768301725388,-0.085294313728809,0.209912225604057,-0.039804723113775,-0.061232864856720));
return max(float4(0,0,0,0), res);
}