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
res += mul(Get(s0,-dx,-dy), float4x4(-0.037464864552021,0.113583780825138,0.036803752183914,-0.061329070478678,-0.007242341991514,0.037652611732483,-0.109547674655914,0.082148551940918,0.029061110690236,0.108134716749191,-0.092519067227840,-0.007202191744000,0.069884531199932,0.064239218831062,-0.041701659560204,-0.012291613034904));
res += mul(Get(s0,-dx,0), float4x4(-0.030373340472579,-0.043890457600355,0.122238166630268,0.075281113386154,-0.013702478259802,0.066349431872368,0.000825080089271,0.014012577943504,-0.081699892878532,0.112832367420197,-0.024517539888620,-0.021028922870755,-0.008957232348621,-0.062930546700954,0.062282282859087,0.005581227596849));
res += mul(Get(s0,-dx,dy), float4x4(0.004174839239568,0.011052854359150,-0.020185792818666,0.061525475233793,-0.090770967304707,-0.022534366697073,0.079383537173271,-0.061100292950869,-0.112320236861706,-0.017064014449716,-0.022107977420092,-0.043501719832420,-0.014392878860235,-0.032452356070280,0.002097814809531,-0.109253711998463));
res += mul(Get(s0,0,-dy), float4x4(-0.028944002464414,-0.115660101175308,-0.071112632751465,-0.103930458426476,-0.012613111175597,0.116134211421013,-0.148782566189766,0.049667350947857,0.052381314337254,0.011842338368297,0.008597925305367,-0.149815410375595,0.033844485878944,-0.019376911222935,0.009667313657701,-0.056083753705025));
res += mul(Get(s0,0,0), float4x4(0.065134167671204,0.116562679409981,-0.017411528155208,0.074853397905827,-0.014269631356001,-0.012049921788275,0.005510463379323,0.102586835622787,0.042113091796637,-0.041413564234972,-0.100228518247604,-0.110484182834625,0.080380409955978,-0.054101087152958,0.035780742764473,-0.010585646145046));
res += mul(Get(s0,0,dy), float4x4(-0.034545231610537,0.125099703669548,-0.057904507964849,0.032981898635626,0.001641427399591,-0.142272457480431,-0.035149600356817,0.025851037353277,-0.021012900397182,-0.094533756375313,-0.021264737471938,0.068889334797859,0.043385669589043,-0.031787753105164,-0.072621926665306,0.028317071497440));
res += mul(Get(s0,dx,-dy), float4x4(0.013252026401460,-0.072629734873772,0.087400130927563,-0.043481092900038,-0.052410371601582,0.110000781714916,-0.082062274217606,-0.090693376958370,-0.022279156371951,0.047899983823299,-0.026142533868551,-0.041042134165764,0.053642027080059,-0.117542698979378,0.015795662999153,0.042717717587948));
res += mul(Get(s0,dx,0), float4x4(0.021099392324686,0.003802352584898,-0.163151472806931,0.057226270437241,-0.053217574954033,0.061765741556883,0.048877499997616,0.083730913698673,-0.014888316392899,-0.012371798977256,0.001522980397567,0.041847828775644,0.053476475179195,0.075045831501484,0.053587809205055,0.046566199511290));
res += mul(Get(s0,dx,dy), float4x4(0.045081906020641,-0.082094281911850,0.055838141590357,-0.048461500555277,-0.047150008380413,-0.028666263446212,-0.080757446587086,-0.063700705766678,-0.063081569969654,-0.132489159703255,0.027661139145494,0.150971844792366,-0.043904937803745,-0.010961318388581,0.032145544886589,-0.021517397835851));
res += mul(Get(s1,-dx,-dy), float4x4(-0.072005391120911,0.057159710675478,-0.026063822209835,-0.047579571604729,0.093877144157887,0.002754693152383,-0.062125310301781,-0.063370347023010,0.081269547343254,0.022362858057022,-0.185543775558472,0.069449201226234,-0.026960849761963,-0.060018450021744,-0.073416233062744,0.041236028075218));
res += mul(Get(s1,-dx,0), float4x4(0.086243852972984,0.076533965766430,-0.148519441485405,-0.092824220657349,-0.023429023101926,-0.078200437128544,0.031846847385168,-0.078851684927940,-0.029719568789005,0.069440476596355,0.027528196573257,0.050717733800411,0.027740739285946,-0.011808980256319,-0.097826093435287,0.064956024289131));
res += mul(Get(s1,-dx,dy), float4x4(-0.099883519113064,-0.071998782455921,0.024025045335293,0.108217917382717,-0.127770230174065,-0.020938912406564,-0.029141491279006,-0.038390949368477,-0.085054375231266,-0.001371998107061,-0.018721319735050,-0.089571297168732,-0.026092588901520,-0.028839038684964,-0.007599111180753,0.045081593096256));
res += mul(Get(s1,0,-dy), float4x4(0.092134647071362,0.048953227698803,-0.110812716186047,-0.022427087649703,-0.048041693866253,0.070707350969315,0.149998545646667,-0.060127831995487,0.101060181856155,0.139896810054779,0.000933920382522,0.040777023881674,0.048238009214401,0.182292148470879,0.096415571868420,-0.107740089297295));
res += mul(Get(s1,0,0), float4x4(-0.010043309070170,0.007583154831082,0.049291975796223,0.070160873234272,0.036046903580427,-0.007009072694927,-0.073844566941261,0.001295961556025,0.005850497167557,0.119872719049454,0.048372995108366,0.013330957852304,0.003347871592268,0.153122857213020,0.041336644440889,-0.020448761060834));
res += mul(Get(s1,0,dy), float4x4(-0.032360393553972,-0.008407988585532,0.066269017755985,0.057571060955524,0.044871713966131,0.081418342888355,-0.019568461924791,0.026473734527826,0.004046466667205,0.181202068924904,-0.052738577127457,-0.099050104618073,0.036064077168703,0.234364449977875,0.063853122293949,0.009580250829458));
res += mul(Get(s1,dx,-dy), float4x4(-0.061751879751682,-0.023747256025672,-0.066948667168617,0.006642558611929,-0.004221349954605,-0.070204019546509,-0.033290542662144,0.081196427345276,-0.018692592158914,-0.057854514569044,-0.072139658033848,-0.112974196672440,-0.040260374546051,0.148876667022705,0.009973337873816,0.008979125879705));
res += mul(Get(s1,dx,0), float4x4(-0.046422675251961,0.096083618700504,-0.012027659453452,0.001712533994578,-0.048531502485275,-0.046261779963970,-0.029632227495313,0.128910943865776,0.042963422834873,0.018477289006114,0.015420150011778,-0.096106879413128,-0.005818652454764,0.043124813586473,-0.041190095245838,-0.028902210295200));
res += mul(Get(s1,dx,dy), float4x4(-0.002851546276361,-0.000445682293503,-0.073380000889301,0.044368196278811,0.016728861257434,-0.081965602934361,0.054460972547531,-0.030869862064719,0.021896233782172,-0.003258415497839,-0.014641735702753,0.030470898374915,0.011210438795388,0.089673332870007,0.147131398320198,-0.047030854970217));
res += mul(Get(s2,-dx,-dy), float4x4(0.055737189948559,0.110511638224125,-0.022015864029527,0.034272320568562,0.005396253429353,0.110703043639660,0.022010385990143,0.009829564951360,-0.018842171877623,0.050248350948095,-0.022991262376308,0.095805525779724,0.019270356744528,0.035541463643312,-0.018439726904035,-0.012978979386389));
res += mul(Get(s2,-dx,0), float4x4(-0.038188356906176,-0.136356532573700,0.143197685480118,-0.127626061439514,0.053244289010763,0.082219727337360,0.060202550143003,0.054662626236677,-0.001959120621905,0.047831792384386,0.028489436954260,0.022696023806930,-0.051388595253229,0.124485783278942,-0.042190708220005,-0.033847372978926));
res += mul(Get(s2,-dx,dy), float4x4(-0.023197483271360,0.018278900533915,-0.071036510169506,-0.007364731747657,-0.001864220597781,-0.042496889829636,0.127537131309509,-0.010190672241151,-0.053634215146303,-0.055239517241716,0.057260394096375,0.009002475999296,-0.025891797617078,0.064518257975578,0.032708775252104,-0.036448467522860));
res += mul(Get(s2,0,-dy), float4x4(0.028131209313869,0.090600356459618,0.164001435041428,-0.010973491705954,-0.015862459316850,-0.052797630429268,0.109397716820240,-0.000753376109060,0.005799053236842,-0.128191873431206,-0.060315508395433,0.001829890883528,-0.048772796988487,-0.036589622497559,-0.127253144979477,-0.058979216963053));
res += mul(Get(s2,0,0), float4x4(0.084117487072945,0.059034746140242,0.115061476826668,0.039962485432625,0.139001086354256,0.070040047168732,0.201252073049545,-0.080620601773262,0.082633718848228,-0.022795649245381,-0.096005260944366,0.001229875953868,-0.022222667932510,-0.065337926149368,0.096420757472515,-0.055892631411552));
res += mul(Get(s2,0,dy), float4x4(0.001375443069264,0.114454053342342,0.102190576493740,0.064431324601173,0.023631731048226,0.051080863922834,0.001868436229415,0.027546312659979,-0.121264569461346,0.066759712994099,0.059906989336014,0.017212789505720,-0.105112500488758,0.100298151373863,-0.011168354190886,0.045134834945202));
res += mul(Get(s2,dx,-dy), float4x4(-0.092311203479767,0.105241507291794,-0.005294254980981,0.041321352124214,0.003124217502773,0.064608432352543,0.034548897296190,-0.070269525051117,-0.052476499229670,0.001804096391425,-0.080756336450577,-0.002465749392286,-0.076204523444176,-0.042015492916107,-0.030760580673814,0.048246633261442));
res += mul(Get(s2,dx,0), float4x4(-0.048033472150564,0.005395823158324,0.063511118292809,-0.068224944174290,-0.010284518823028,0.041795127093792,0.057418260723352,0.097318276762962,-0.002315314719453,-0.248805835843086,-0.024253556504846,-0.043067179620266,0.015926918014884,-0.043742664158344,-0.005700463894755,-0.126198977231979));
res += mul(Get(s2,dx,dy), float4x4(0.152959525585175,0.043906908482313,0.000120935401355,0.017177393659949,0.053667206317186,-0.044909019023180,-0.077137872576714,0.026063717901707,-0.037597555667162,-0.027326624840498,-0.058427192270756,0.013513711281121,0.006521916016936,0.059253212064505,0.047659803181887,-0.074429199099541));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007205530069768,-0.095077760517597,-0.048876967281103,-0.099884487688541,-0.119792483747005,-0.060423519462347,0.093180783092976,0.000881310668774,-0.063631139695644,0.049727164208889,-0.098297052085400,-0.095491752028465,-0.016910629346967,-0.062797181308270,0.039470329880714,-0.018782844766974));
res += mul(Get(s3,-dx,0), float4x4(-0.086600199341774,-0.010414495132864,-0.072012223303318,-0.069809205830097,0.030051970854402,0.018474096432328,0.113570608198643,-0.054926667362452,-0.044898055493832,0.015797885134816,-0.075148962438107,-0.013666672632098,-0.205886989831924,0.124285437166691,0.105511389672756,0.018454141914845));
res += mul(Get(s3,-dx,dy), float4x4(-0.016760772094131,-0.048092573881149,-0.105643242597580,-0.078451506793499,-0.050458759069443,0.230631902813911,0.027233669534326,0.020766146481037,0.118517912924290,-0.060198903083801,-0.093380413949490,-0.013120464049280,0.039040949195623,0.032667145133018,0.028946537524462,0.024429168552160));
res += mul(Get(s3,0,-dy), float4x4(-0.005004127975553,0.089791372418404,0.026250230148435,-0.100471675395966,-0.091255925595760,0.127023190259933,-0.078306347131729,-0.034263953566551,-0.118568152189255,-0.142124861478806,-0.036280285567045,-0.062672168016434,-0.001385431271046,0.075112439692020,0.050886910408735,0.012306407094002));
res += mul(Get(s3,0,0), float4x4(-0.030164659023285,-0.152326926589012,0.053640477359295,0.045830771327019,0.008649515919387,0.008219266310334,0.010145652107894,-0.116818159818649,0.042354017496109,-0.019403614103794,-0.040999099612236,0.038752958178520,0.004363778978586,0.034906409680843,0.029320651665330,-0.145270824432373));
res += mul(Get(s3,0,dy), float4x4(0.038447506725788,0.081027843058109,-0.036572646349669,-0.026189094409347,-0.018495706841350,-0.041619732975960,-0.045433577150106,-0.031301572918892,0.034630056470633,-0.076273135840893,-0.071946635842323,0.089293606579304,-0.024755971506238,0.023899989202619,0.097514376044273,0.066260956227779));
res += mul(Get(s3,dx,-dy), float4x4(0.013849129900336,0.119665436446667,0.004044217523187,-0.030454954132438,-0.014394519850612,0.012195557355881,-0.082850143313408,-0.142855003476143,-0.028821123763919,-0.072494111955166,-0.058304645121098,-0.036665897816420,0.010078917257488,0.018118364736438,0.119428969919682,0.045201089233160));
res += mul(Get(s3,dx,0), float4x4(0.046659704297781,0.032450359314680,-0.009530128911138,0.030857840552926,-0.130650296807289,0.070275366306305,-0.003048043930903,0.025447307154536,-0.039404463022947,0.122509069740772,-0.050842881202698,-0.061004016548395,0.060412220656872,0.011294748634100,-0.027795415371656,0.038459453731775));
res += mul(Get(s3,dx,dy), float4x4(-0.093802221119404,0.050235297530890,-0.093913264572620,0.049307167530060,-0.051256369799376,-0.036475844681263,-0.023070860654116,0.021016223356128,-0.095610946416855,-0.063600622117519,-0.045017059892416,-0.192064836621284,0.087814636528492,0.029979269951582,0.121264807879925,-0.000856072816532));
res = max(float4(0,0,0,0), res);
return res;
}
