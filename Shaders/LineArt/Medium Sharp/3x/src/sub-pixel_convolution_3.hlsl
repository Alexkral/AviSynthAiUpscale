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
float3 res = float3(0.000232998412685,-0.000130978805828,0.000001308438186);
res += mul(Get(s0,-dx,-dy), float4x3(0.001708291587420,0.001445820671506,0.000625016691629,-0.000935610092711,-0.003760507563129,-0.001656142412685,0.005246649496257,0.004969643428922,0.002460199873894,-0.001967611024156,-0.000248958065640,0.000109079643153));
res += mul(Get(s0,-dx,0), float4x3(0.001892739324830,0.003247186541557,0.004121927078813,0.000800506037194,0.003469887655228,-0.001990686170757,-0.005042160395533,-0.004245973192155,0.002744312398136,-0.009217222221196,-0.008931929245591,-0.006018770392984));
res += mul(Get(s0,-dx,dy), float4x3(0.001120506203733,0.000343870196957,0.000287022470729,-0.000321161554893,-0.000497808388900,0.000741544878110,0.002156738657504,0.001650872640312,-0.002282653702423,0.001149673480541,-0.000075009585998,-0.004043570253998));
res += mul(Get(s0,0,-dy), float4x3(-0.004869716241956,-0.001411258825101,0.000021071205992,0.000717765418813,-0.000339764286764,-0.002235110150650,-0.015182266943157,-0.003046831348911,-0.000888467358891,0.002055894816294,-0.007315679918975,-0.007642704062164));
res += mul(Get(s0,0,0), float4x3(0.001539029646665,-0.002779764821753,-0.004209114238620,-0.015403295867145,0.016055380925536,0.011281594634056,-0.037143759429455,-0.045588057488203,-0.032852768898010,0.006897341459990,0.019879007712007,0.016821535304189));
res += mul(Get(s0,0,dy), float4x3(-0.000850912241731,0.001497319201007,0.002290842123330,-0.001232553273439,-0.001120221335441,-0.003133132820949,0.000062590261223,-0.003603170625865,-0.017501665279269,-0.007221217267215,-0.012830021791160,-0.008259105496109));
res += mul(Get(s0,dx,-dy), float4x3(0.001304537057877,-0.004359506536275,-0.005723158828914,0.023088736459613,0.005809756461531,-0.004943158011883,-0.001610299106687,0.001587385428138,0.002062709070742,-0.010357120074332,-0.006355456076562,-0.001794301904738));
res += mul(Get(s0,dx,0), float4x3(-0.003127756528556,0.002532876329497,0.008958586491644,0.008788107894361,-0.006562751717865,-0.023193901404738,-0.002333914395422,-0.005271952133626,-0.004217000212520,-0.006385815795511,-0.008521910756826,-0.010145650245249));
res += mul(Get(s0,dx,dy), float4x3(0.004866126924753,0.004206006880850,-0.000930756214075,-0.000658909790218,-0.001073623658158,-0.001209447509609,0.001500004320405,0.002027005888522,-0.000138809482451,-0.001551102148369,-0.004773557651788,-0.005448398645967));
res += mul(Get(s1,-dx,-dy), float4x3(0.001555723720230,-0.000489148020279,-0.000717523682397,0.000119659351185,0.000204814103199,0.001137605984695,0.001542821293697,0.000611683237366,0.000158335606102,0.001829522429034,0.000452172680525,-0.000524978444446));
res += mul(Get(s1,-dx,0), float4x3(0.001841052784584,0.003847318468615,0.002931649331003,-0.002695518545806,0.000384645361919,0.000758249079809,-0.001768884016201,0.000179289767402,0.000029586213714,0.003713891142979,0.003746411995962,0.003145348979160));
res += mul(Get(s1,-dx,dy), float4x3(0.000388855172787,0.000206017153687,0.001180787454359,-0.000914015574381,0.001922480645590,-0.000254381040577,-0.001274217385799,-0.002034994075075,-0.001294306479394,-0.000759706599638,0.000561719352845,0.002150780754164));
res += mul(Get(s1,0,-dy), float4x3(0.002231932012364,-0.001496817800216,-0.001089354045689,-0.002124444814399,-0.005251917056739,-0.004822385497391,0.012398121878505,0.002520881593227,-0.000766715151258,-0.002346515888348,0.000703313970007,0.000788261299022));
res += mul(Get(s1,0,0), float4x3(0.012736997567117,0.015206796117127,0.010186054743826,-0.037132736295462,0.017891639843583,0.016542490571737,0.008494528941810,0.018886415287852,0.019070407375693,-0.010450735688210,-0.011873370967805,-0.007769804447889));
res += mul(Get(s1,0,dy), float4x3(0.000017691734683,0.000121979523101,0.006324376445264,0.001454680925235,0.020311798900366,-0.009132738225162,0.000649449357297,-0.000883319531567,0.001620186958462,0.000885711226147,0.000126516431919,-0.004120274446905));
res += mul(Get(s1,dx,-dy), float4x3(0.004448092076927,-0.001520917634480,-0.002236188855022,0.002785282209516,-0.002970975590870,-0.002086207503453,0.009934388101101,0.004848384764045,0.001208852278069,0.000566025846638,-0.000468810379971,-0.000911857117899));
res += mul(Get(s1,dx,0), float4x3(0.008212908171117,0.018535608425736,0.014893155544996,-0.008052182383835,-0.009558329358697,0.011547501198947,-0.000733334920369,0.004641562700272,0.010259759612381,0.006098803598434,0.006587570067495,0.004430648405105));
res += mul(Get(s1,dx,dy), float4x3(0.000813522899989,-0.002427911618724,0.000055555658037,-0.002822615439072,0.002077522454783,0.013671537861228,-0.000250849639997,-0.000036479694245,-0.001571655157022,0.000058888894273,0.001391625963151,0.003931961953640));
res += mul(Get(s2,-dx,-dy), float4x3(0.006255427841097,0.003368236357346,0.001145688351244,-0.001990640535951,0.003148550167680,0.001972818048671,0.001126356888562,0.001273253816180,0.001300492789596,0.001826713909395,0.002491794526577,0.000536348612513));
res += mul(Get(s2,-dx,0), float4x3(0.007108641322702,0.009723877534270,0.008769411593676,-0.013506931252778,-0.019868545234203,-0.014895669184625,0.002333029173315,0.000897866673768,-0.000425382866524,-0.000125367587316,0.001045417157002,-0.000182131683687));
res += mul(Get(s2,-dx,dy), float4x3(-0.000556916173082,-0.000347507419065,0.001321703777649,-0.001369534409605,0.000201497008675,-0.004016094375402,0.000197645509616,-0.000676697702147,-0.000515045539942,-0.001233979128301,-0.002830281388015,0.003617830807343));
res += mul(Get(s2,0,-dy), float4x3(-0.024826165288687,-0.012239634990692,-0.002498309360817,0.012412754818797,-0.000201250222744,-0.002870788099244,0.014210450462997,-0.024696450680494,-0.009548023343086,0.008198409341276,-0.002694814698771,-0.004843303468078));
res += mul(Get(s2,0,0), float4x3(0.014392631128430,-0.003067789133638,-0.025691060349345,0.005623155739158,0.019481388852000,0.024972166866064,-0.013498604297638,-0.009030034765601,0.020632535219193,-0.000532135192771,-0.029808102175593,0.002064394531772));
res += mul(Get(s2,0,dy), float4x3(-0.000673360249493,0.002870635828003,0.012485562823713,0.002929924987257,0.002365934196860,-0.001789260539226,0.003946467768401,0.004911067895591,-0.002861257176846,-0.004596944898367,-0.004870601464063,0.030434465035796));
res += mul(Get(s2,dx,-dy), float4x3(0.004435275681317,0.005824916064739,0.003256477182731,-0.002556630643085,0.000188451245776,0.002036451129243,0.016063446179032,0.003770594950765,-0.011543612927198,-0.002705916529521,-0.001887033227831,-0.001486972556449));
res += mul(Get(s2,dx,0), float4x3(-0.010988919064403,-0.014440096914768,-0.006331074982882,0.001414046739228,0.000138818097184,-0.003114734543487,-0.004007473122329,-0.007894800975919,-0.002032106276602,-0.005695151165128,0.011440756730735,0.002951373113319));
res += mul(Get(s2,dx,dy), float4x3(0.000284764944809,-0.001127623021603,-0.002118751639500,0.000360066565918,0.000418350566179,0.000678457261529,0.001652132836170,0.001859137555584,-0.001598709844984,-0.001344282529317,-0.000491907587275,0.002022449392825));
res += mul(Get(s3,-dx,-dy), float4x3(-0.000425555888796,-0.000248430937063,0.000147077691508,0.000690438668244,0.001145848073065,0.000365106476238,-0.000761503004469,0.002051502466202,0.001458953134716,-0.004564371891320,-0.002212479943410,-0.000734246859793));
res += mul(Get(s3,-dx,0), float4x3(-0.001108632888645,-0.001436741673388,0.000997972209007,0.000879265309777,0.002096534008160,0.001192349125631,0.001352005521767,-0.006211968138814,-0.001139923115261,-0.007325627841055,-0.008578609675169,-0.007416327018291));
res += mul(Get(s3,-dx,dy), float4x3(0.000173987878952,0.002049247967079,0.002193764317781,0.003165088128299,-0.001862783101387,-0.000765684584621,0.001108331838623,0.002295682439581,0.000052590519772,-0.001097762607969,-0.001951330341399,-0.003998364321887));
res += mul(Get(s3,0,-dy), float4x3(-0.003079461399466,0.006549822166562,0.005961678456515,0.001294903457165,-0.001349199330434,-0.000875804980751,0.004356304183602,-0.000954838469625,-0.000229764322285,0.004744095727801,0.002448701299727,0.002197201829404));
res += mul(Get(s3,0,0), float4x3(0.023506624624133,-0.010166545398533,-0.015896102413535,0.025347292423248,0.000027500373108,-0.005457811523229,0.014653745107353,-0.004046360030770,-0.001612663618289,0.018421335145831,0.020400796085596,0.012699649669230));
res += mul(Get(s3,0,dy), float4x3(-0.011440909467638,-0.020338738337159,0.015567034482956,0.023893142119050,-0.011859441176057,-0.028626386076212,0.001833626418374,-0.002656163182110,-0.012605842202902,-0.001348022953607,0.000065550128056,0.007635983638465));
res += mul(Get(s3,dx,-dy), float4x3(-0.001849880442023,0.003540167352185,0.002646755659953,0.001838621683419,-0.001210843911394,-0.001920560724102,0.000310705945594,-0.007888954132795,0.003829503664747,-0.009601317346096,-0.003978153690696,-0.000785577809438));
res += mul(Get(s3,dx,0), float4x3(0.007253240328282,0.000988256419078,-0.006986693013459,-0.003049709135666,0.005243405699730,0.000222972448682,-0.013301914557815,-0.025470256805420,0.030912358313799,0.006399167235941,-0.004140569362789,-0.011824053712189));
res += mul(Get(s3,dx,dy), float4x3(-0.000973347225226,-0.003107962198555,-0.000830287230201,0.004575913306326,0.007764322217554,-0.009496225975454,-0.002440253039822,0.003239073324949,0.012968579307199,-0.002557673491538,0.001096012070775,0.006399451754987));
res += mul(Get(s4,-dx,-dy), float4x3(-0.000824663671665,-0.000570915522985,0.001046628342010,-0.001357265748084,-0.000951606663875,-0.001371923252009,0.002398893702775,0.005338702816516,0.004327367991209,-0.003188956994563,-0.003192904172465,-0.001893251319416));
res += mul(Get(s4,-dx,0), float4x3(-0.001374301267788,-0.001033274689689,-0.000709094048943,-0.001235015341081,0.003326514502987,-0.000969253131188,-0.003884025383741,-0.005395328160375,0.002443423261866,-0.002201970200986,-0.003115899860859,-0.003925034310669));
res += mul(Get(s4,-dx,dy), float4x3(0.000560800952371,0.000207645382034,0.000689455308020,-0.000966125633568,0.003143311012536,-0.000303580076434,0.001065058517270,0.001849676831625,-0.003933039028198,-0.001156317186542,-0.002124867867678,-0.002207844052464));
res += mul(Get(s4,0,-dy), float4x3(-0.001953051076271,0.010513459332287,0.001024037250318,-0.001521968981251,-0.003763192333281,-0.001804476487450,-0.036076042801142,0.006851182319224,0.010017133317888,0.015053241513669,0.008454272523522,0.002979865530506));
res += mul(Get(s4,0,0), float4x3(0.007903077639639,0.005015376955271,-0.008834442123771,-0.020552763715386,0.023558449000120,0.013651860877872,0.026192791759968,0.022843988612294,-0.036390729248524,-0.008115457370877,0.007045277394354,0.016434557735920));
res += mul(Get(s4,0,dy), float4x3(-0.003984523937106,-0.003694417886436,0.002158251358196,0.009663543663919,0.008444416336715,-0.030864749103785,-0.000323968852172,-0.004198221024126,-0.003408789867535,0.000559717183933,-0.007140724454075,-0.013946127146482));
res += mul(Get(s4,dx,-dy), float4x3(-0.022371279075742,0.004625565838069,0.016240667551756,-0.004113344009966,0.000915096548852,0.001719231950119,-0.002581011736766,0.000473974068882,-0.000931160175242,0.011473203077912,0.007837357930839,0.002723311306909));
res += mul(Get(s4,dx,0), float4x3(0.005346143618226,0.008455458097160,-0.003557015908882,0.008563825860620,0.001913440180942,-0.007848010398448,0.002174056833610,0.009565947577357,0.003365513635799,0.012642940506339,0.018998082727194,0.015817601233721));
res += mul(Get(s4,dx,dy), float4x3(-0.003389284480363,-0.003483999520540,0.000762370065786,0.003141132881865,-0.001684563234448,-0.004646253772080,-0.001381809823215,-0.002327870577574,-0.002500347327441,-0.001849055173807,-0.003062633331865,0.001129810349084));
res += mul(Get(s5,-dx,-dy), float4x3(0.000752009800635,0.000486379838549,0.000632923445664,-0.001161799184047,-0.002780715469271,-0.001910756225698,-0.001409037038684,0.000488769495860,0.000403308484238,-0.003365165088326,-0.002924890024588,-0.001267153187655));
res += mul(Get(s5,-dx,0), float4x3(-0.000094451912446,0.002112155314535,0.002612578449771,0.002333226613700,0.003546451916918,0.001658718683757,0.003468869253993,-0.002305671572685,-0.005986239295453,-0.005805467721075,-0.013170624151826,-0.008529667742550));
res += mul(Get(s5,-dx,dy), float4x3(0.000444949488156,0.000959101365879,0.000579073908739,-0.001820267410949,-0.000629280752037,0.001094151521102,0.003541947808117,0.000902379979379,0.002145398873836,0.004264565184712,0.008478555828333,0.004142520483583));
res += mul(Get(s5,0,-dy), float4x3(-0.017132082954049,-0.012645334005356,-0.005792743060738,0.001146114314906,0.002204491291195,0.001999319065362,0.011491338722408,-0.009579585865140,-0.005300993099809,-0.004066589754075,-0.000826664734632,0.003337968373671));
res += mul(Get(s5,0,0), float4x3(-0.005164571106434,-0.004912608768791,-0.011963821947575,-0.010144908912480,-0.006498012691736,-0.001628633122891,-0.028304178267717,0.003606031415984,0.038994487375021,0.032004248350859,0.018549952656031,0.001447157468647));
res += mul(Get(s5,0,dy), float4x3(-0.005810968577862,-0.009283778257668,-0.005864494014531,0.000739959999919,0.004453863482922,-0.006081681698561,0.000679578108247,0.004101917147636,-0.004699219483882,-0.010252723470330,-0.009490969590843,0.012961518950760));
res += mul(Get(s5,dx,-dy), float4x3(0.000583706074394,-0.004593732301146,-0.003040492068976,-0.002759369323030,0.002647408284247,0.001385465031490,-0.019184133037925,-0.005208866205066,0.002051874995232,0.003081465605646,0.001197638339363,-0.000194148611627));
res += mul(Get(s5,dx,0), float4x3(0.020368130877614,0.021975683048368,0.014306360855699,0.025976007804275,0.022838808596134,-0.005232677794993,0.013791732490063,0.016507131978869,-0.009306998923421,-0.005434495396912,-0.003633203450590,0.001503736362793));
res += mul(Get(s5,dx,dy), float4x3(-0.005832582246512,-0.003131728852168,0.008531890809536,0.003238139441237,-0.025161979719996,-0.018748940899968,-0.001362556708045,-0.003296003211290,0.000636556418613,-0.000924919324461,-0.002478112466633,-0.003102244110778));
return float4(res, 0);
}