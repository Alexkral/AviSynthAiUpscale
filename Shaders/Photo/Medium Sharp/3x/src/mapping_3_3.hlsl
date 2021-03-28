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
float4 res = float4(-0.040614295750856,0.076558649539948,0.135518074035645,-0.189133778214455);
res += mul(Get(s0,-dx,-dy), float4x4(-0.153165921568871,0.102727442979813,-0.027424905449152,0.078056231141090,-0.049919459968805,-0.125574186444283,0.118725597858429,0.085218086838722,-0.044652778655291,0.170201212167740,0.026448141783476,-0.108088187873363,0.003875688184053,0.040734365582466,-0.164213910698891,-0.119523204863071));
res += mul(Get(s0,-dx,0), float4x4(0.368050873279572,-0.131367385387421,0.031966466456652,0.041210167109966,-0.031836844980717,0.040864586830139,0.088831372559071,-0.158768489956856,0.083918035030365,-0.027023904025555,0.192564889788628,-0.227101594209671,0.006548454053700,-0.160624489188194,-0.097413524985313,0.060282055288553));
res += mul(Get(s0,-dx,dy), float4x4(-0.208202853798866,0.137035399675369,-0.090494535863400,0.119957707822323,0.186463564634323,0.182841807603836,-0.029933398589492,0.093782514333725,-0.034814946353436,0.188510224223137,-0.124486662447453,-0.004535720683634,0.144719347357750,-0.026727266609669,-0.105472236871719,0.041340611875057));
res += mul(Get(s0,0,-dy), float4x4(-0.281886488199234,0.186718553304672,-0.179946288466454,0.272052228450775,0.012832045555115,0.247226208448410,-0.044446740299463,0.066554032266140,-0.075688414275646,0.023360863327980,-0.072269059717655,0.000651254202239,0.218768969178200,0.271500229835510,-0.021413605660200,-0.174813598394394));
res += mul(Get(s0,0,0), float4x4(-0.191968396306038,-0.279856175184250,-0.010035650804639,-0.129145756363869,0.211740598082542,-0.331899970769882,0.001802249578759,0.086435213685036,-0.301618993282318,-0.188892617821693,-0.309544295072556,-0.309488803148270,0.249812081456184,-0.078069858253002,-0.312826961278915,0.012537211179733));
res += mul(Get(s0,0,dy), float4x4(-0.211047530174255,0.023255161941051,0.039258159697056,0.031450789421797,-0.109879657626152,0.075489781796932,0.016744259744883,0.083412572741508,0.253552645444870,-0.070883028209209,-0.059340555220842,-0.013493714854121,0.109682574868202,0.144096925854683,-0.043057605624199,0.164702326059341));
res += mul(Get(s0,dx,-dy), float4x4(0.104219675064087,-0.033866629004478,-0.009592578746378,-0.089783623814583,-0.018274191766977,-0.022637983784080,0.018293615430593,-0.071828886866570,-0.018358390778303,-0.009448642842472,0.111697696149349,0.010703475214541,-0.044220894575119,0.213161930441856,0.127811506390572,-0.020535957068205));
res += mul(Get(s0,dx,0), float4x4(0.139376223087311,-0.054003227502108,-0.021352887153625,0.020580487325788,-0.192537799477577,-0.027391878888011,0.172437891364098,-0.044449396431446,-0.018574355170131,0.167834103107452,0.011075704358518,0.063345730304718,-0.012680903077126,-0.030222246423364,0.070815332233906,-0.029860896989703));
res += mul(Get(s0,dx,dy), float4x4(-0.019798869267106,0.041929215192795,0.060309801250696,0.134704068303108,-0.002462686737999,0.169735029339790,0.085029065608978,0.115433998405933,-0.018648464232683,-0.179076954722404,0.080321058630943,-0.040498360991478,0.035067308694124,-0.045575872063637,0.085227482020855,-0.048227671533823));
res += mul(Get(s1,-dx,-dy), float4x4(-0.190191477537155,0.212958812713623,-0.003249347675592,0.004011160228401,-0.093179792165756,-0.045182622969151,0.013550664298236,0.142584681510925,0.214473590254784,-0.132842227816582,0.126291587948799,0.122118785977364,0.062510743737221,-0.098299391567707,-0.213973253965378,-0.008705978281796));
res += mul(Get(s1,-dx,0), float4x4(0.228152602910995,-0.264833390712738,0.011125856079161,-0.208505079150200,-0.027901884168386,0.072132296860218,0.013665386475623,-0.052631322294474,-0.022829331457615,0.204170495271683,-0.251908779144287,-0.151075318455696,-0.252313166856766,0.132066994905472,-0.512570500373840,-0.056553546339273));
res += mul(Get(s1,-dx,dy), float4x4(0.077313132584095,0.002242797054350,0.042211413383484,0.037060312926769,0.037039939314127,0.037639167159796,0.069564007222652,0.063572622835636,-0.115740865468979,0.176892593502998,0.045300215482712,0.053789339959621,-0.062615513801575,-0.187895506620407,-0.081790670752525,0.008669634349644));
res += mul(Get(s1,0,-dy), float4x4(-0.245121732354164,-0.126461431384087,-0.050840090960264,0.429265022277832,-0.195886671543121,-0.093893080949783,-0.195666208863258,0.187208786606789,0.004610274452716,-0.071009255945683,-0.017246555536985,-0.115859195590019,0.011949926614761,-0.022914251312613,-0.045486763119698,-0.402421116828918));
res += mul(Get(s1,0,0), float4x4(0.288892835378647,0.029522441327572,0.065546646714211,-0.862116694450378,-0.262448608875275,0.110078155994415,0.088386259973049,-0.066150665283203,-0.218780919909477,-0.075153619050980,0.046519078314304,0.350516170263290,0.151499629020691,0.086265981197357,0.238208979368210,0.149334430694580));
res += mul(Get(s1,0,dy), float4x4(0.198211014270782,0.110323242843151,-0.033320501446724,0.133466199040413,0.074216485023499,-0.014243132434785,0.033612221479416,-0.072682827711105,0.148676335811615,0.079179622232914,0.014242021366954,-0.314037173986435,0.018864322453737,-0.292089045047760,0.006384759675711,0.089798726141453));
res += mul(Get(s1,dx,-dy), float4x4(0.095578417181969,-0.325428962707520,-0.015201276168227,0.063508138060570,0.125333353877068,-0.064302794635296,-0.161296159029007,-0.051842592656612,-0.163259103894234,0.057319141924381,-0.070468321442604,0.058812811970711,-0.153587624430656,0.285194039344788,0.065479390323162,0.042693890631199));
res += mul(Get(s1,dx,0), float4x4(-0.370736122131348,0.147083297371864,-0.009738481603563,0.139540627598763,-0.166011676192284,0.011725348420441,-0.238847613334656,-0.034726794809103,-0.070388115942478,-0.057635292410851,-0.208715528249741,-0.059392262250185,-0.130678385496140,0.088980905711651,-0.026826681569219,0.034008279442787));
res += mul(Get(s1,dx,dy), float4x4(-0.142763152718544,-0.189352914690971,-0.129869475960732,-0.059996832162142,-0.134102165699005,0.055094551295042,-0.106947690248489,-0.165042445063591,-0.065785042941570,-0.045124795287848,-0.058129262179136,0.141392588615417,-0.071686774492264,-0.125441268086433,0.013940852135420,-0.066423825919628));
res += mul(Get(s2,-dx,-dy), float4x4(-0.018262904137373,0.137263432145119,-0.047209918498993,-0.090414814651012,-0.192057833075523,-0.144603580236435,-0.471426576375961,-0.006631672382355,0.003495781915262,0.128023266792297,-0.098164200782776,0.047264795750380,-0.114911682903767,0.026106758043170,0.202952250838280,0.359599560499191));
res += mul(Get(s2,-dx,0), float4x4(0.223540619015694,-0.047787573188543,0.160919666290283,0.069990590214729,0.238431617617607,-0.376796543598175,-0.869272768497467,-0.216233402490616,-0.208070412278175,0.044721566140652,-0.294124305248260,-0.114051707088947,-0.040685135871172,-0.054440040141344,0.110332638025284,0.040424160659313));
res += mul(Get(s2,-dx,dy), float4x4(0.065981924533844,-0.058899577707052,0.228198975324631,0.061720803380013,-0.039481617510319,-0.214521810412407,-0.090748474001884,0.026083858683705,0.201515719294548,-0.164957672357559,-0.131516963243484,-0.022226877510548,0.060992065817118,-0.071644634008408,0.095660716295242,0.036990318447351));
res += mul(Get(s2,0,-dy), float4x4(-0.008756567724049,0.003858182113618,-0.017460161820054,0.081776626408100,-0.145162001252174,0.090334884822369,0.084265150129795,-0.232923269271851,0.105020985007286,0.068639367818832,0.094706706702709,0.150999143719673,-0.276293337345123,-0.138793021440506,-0.007686459925026,0.445526838302612));
res += mul(Get(s2,0,0), float4x4(-0.142069950699806,-0.078690052032471,-0.073878429830074,-0.045997720211744,0.096132107079029,-0.295946151018143,0.159132570028305,0.143311396241188,-0.017767369747162,0.012872572988272,0.234305113554001,0.006314602214843,-0.051871582865715,-0.242361053824425,-0.062977693974972,-0.000014484973690));
res += mul(Get(s2,0,dy), float4x4(-0.094561815261841,-0.017802430316806,-0.117701262235641,0.226737603545189,0.032375261187553,0.171111568808556,0.094902694225311,0.012043748050928,-0.250790208578110,-0.177089422941208,0.103102080523968,-0.060723278671503,-0.118530787527561,-0.006627585273236,0.066925451159477,0.273799717426300));
res += mul(Get(s2,dx,-dy), float4x4(0.020415203645825,-0.121264979243279,0.089469060301781,0.064753122627735,0.108129821717739,-0.039408609271049,0.032089617103338,0.132620275020599,0.070676445960999,-0.035103432834148,0.002699091332033,0.233818650245667,0.198403492569923,-0.147324815392494,0.008874144405127,0.236308246850967));
res += mul(Get(s2,dx,0), float4x4(-0.154366970062256,0.020375175401568,-0.095114633440971,-0.015653870999813,-0.085297010838985,0.085745811462402,0.079186543822289,0.213410213589668,0.133654564619064,-0.107462301850319,0.096463441848755,0.151577845215797,0.160576000809669,-0.042623437941074,-0.037885293364525,0.039293915033340));
res += mul(Get(s2,dx,dy), float4x4(-0.063250608742237,-0.039119411259890,-0.164693400263786,-0.046977847814560,-0.076004795730114,0.041400659829378,0.073386780917645,0.038969650864601,0.048040445894003,-0.178815811872482,0.169041126966476,0.100035965442657,-0.136697515845299,0.095526389777660,-0.034796047955751,0.004710623528808));
res += mul(Get(s3,-dx,-dy), float4x4(0.058562673628330,-0.118232198059559,0.056777548044920,-0.099593214690685,0.056238926947117,0.075914978981018,0.134239733219147,0.015092823654413,0.114774003624916,0.136758640408516,0.020593011751771,-0.056853763759136,0.019992584362626,0.108405530452728,0.031788855791092,0.094361677765846));
res += mul(Get(s3,-dx,0), float4x4(-0.324741840362549,-0.006412492599338,0.288921326398849,0.287349998950958,-0.190553203225136,-0.055721979588270,-0.093414947390556,-0.135161519050598,0.236687034368515,-0.013709273189306,-0.003291359404102,-0.012558749876916,0.140436962246895,-0.146953552961349,-0.154837667942047,0.051948916167021));
res += mul(Get(s3,-dx,dy), float4x4(-0.194379433989525,-0.044178269803524,-0.072474852204323,-0.109099999070168,-0.068418264389038,-0.121591173112392,0.094597242772579,-0.140169650316238,-0.035081222653389,-0.031920209527016,-0.036944907158613,-0.085454486310482,0.137100994586945,-0.046119183301926,-0.073994979262352,0.043671071529388));
res += mul(Get(s3,0,-dy), float4x4(-0.033521804958582,0.160283640027046,0.011408735066652,0.047945726662874,0.132779076695442,0.033702649176121,-0.098703108727932,-0.120609417557716,-0.051684655249119,0.024150576442480,-0.307977885007858,0.057537149637938,-0.119764633476734,-0.018894385546446,-0.110021755099297,-0.082985080778599));
res += mul(Get(s3,0,0), float4x4(0.110610403120518,-0.168371364474297,-0.110367581248283,0.080857113003731,0.305625140666962,0.029259605333209,0.115695618093014,0.225266069173813,-0.009421376511455,-0.082163386046886,-0.775754868984222,0.045457843691111,-0.010910333134234,-0.216497719287872,-0.130447730422020,-0.241207525134087));
res += mul(Get(s3,0,dy), float4x4(0.010006281547248,0.045864872634411,-0.019740974530578,0.002969930879772,-0.125712305307388,-0.003233767580241,-0.103517897427082,-0.128386929631233,-0.019815349951386,-0.160643741488457,0.009036077186465,-0.006270536687225,0.061246700584888,-0.038728348910809,0.052363649010658,0.012160246260464));
res += mul(Get(s3,dx,-dy), float4x4(0.085627168416977,-0.071462504565716,0.030773520469666,-0.013693388551474,-0.229994550347328,0.105854876339436,0.102116219699383,-0.105578638613224,-0.010597447864711,-0.306180387735367,-0.094560466706753,0.061088990420103,0.170379951596260,-0.134296312928200,-0.043823607265949,-0.273905754089355));
res += mul(Get(s3,dx,0), float4x4(-0.018694734200835,-0.045652538537979,0.035280182957649,0.141429379582405,0.208071365952492,-0.219228535890579,0.021023819223046,-0.096821740269661,0.003313313471153,0.088713467121124,-0.092219181358814,-0.154340505599976,0.062569238245487,-0.062800243496895,0.090467311441898,0.023267732933164));
res += mul(Get(s3,dx,dy), float4x4(-0.102716021239758,0.079931922256947,0.011712951585650,0.041578058153391,-0.104424543678761,0.130233600735664,-0.010952992364764,-0.092981390655041,-0.110404461622238,-0.316440135240555,0.003517203032970,-0.032288234680891,0.022260429337621,-0.171349868178368,0.075931131839752,-0.001253694994375));
res += mul(Get(s4,-dx,-dy), float4x4(-0.045605950057507,0.063105396926403,0.039779566228390,0.064190961420536,-0.002133353613317,0.167710974812508,0.213927507400513,-0.035644836723804,0.062342781573534,-0.153322592377663,0.141170695424080,0.027285521849990,0.303011238574982,0.146829545497894,0.008776662871242,0.433447659015656));
res += mul(Get(s4,-dx,0), float4x4(-0.334726929664612,0.224927470088005,-0.534062027931213,0.085797384381294,0.026901045814157,-0.112498477101326,0.045026138424873,0.137957736849785,-0.063983105123043,-0.121677927672863,-0.138519838452339,-0.124375589191914,-0.177793085575104,-0.405815571546555,-0.111991204321384,-0.228176772594452));
res += mul(Get(s4,-dx,dy), float4x4(-0.045365814119577,-0.220741182565689,-0.167786926031113,-0.078137747943401,-0.032749943435192,-0.015410745516419,0.076901622116566,0.089295171201229,-0.011794747784734,0.329153209924698,0.090169012546539,0.020773828029633,-0.025191981345415,0.062018312513828,-0.094907820224762,-0.121705867350101));
res += mul(Get(s4,0,-dy), float4x4(0.170723319053650,-0.139607429504395,-0.036263331770897,0.089939750730991,0.061658009886742,0.067741066217422,0.199042484164238,0.023569382727146,0.087455436587334,-0.043856002390385,0.037588533014059,-0.144732624292374,0.150062218308449,0.063950240612030,0.012134384363890,0.150490999221802));
res += mul(Get(s4,0,0), float4x4(-0.259359687566757,0.153002753853798,0.036453992128372,0.476451575756073,-0.079996384680271,0.104783974587917,0.069919444620609,-0.032124321907759,-0.038667179644108,-0.017577745020390,0.259569287300110,0.319842725992203,0.371576547622681,-0.347648948431015,0.144564270973206,0.057282194495201));
res += mul(Get(s4,0,dy), float4x4(-0.231658786535263,0.000323238695273,-0.106969811022282,-0.316212832927704,0.179834365844727,-0.103412047028542,-0.046161629259586,0.138638675212860,0.064098708331585,0.263773292303085,0.246770814061165,0.200262412428856,0.357847362756729,0.131984889507294,-0.038925312459469,-0.036043040454388));
res += mul(Get(s4,dx,-dy), float4x4(-0.163016557693481,0.031309980899096,-0.019019490107894,0.075771242380142,-0.102763883769512,0.025478478521109,0.025415197014809,-0.074636034667492,-0.077469840645790,-0.133917093276978,-0.013562005013227,-0.005929830949754,0.085167616605759,-0.011056039482355,0.063955932855606,-0.009349861182272));
res += mul(Get(s4,dx,0), float4x4(0.253600627183914,-0.235622987151146,-0.060065887868404,0.012510268017650,0.201396137475967,-0.137420147657394,0.044478151947260,-0.185606628656387,0.025735285133123,-0.184230372309685,0.154710426926613,0.091160856187344,-0.119774930179119,0.177938640117645,-0.133937165141106,0.150911271572113));
res += mul(Get(s4,dx,dy), float4x4(0.007661604788154,0.174130484461784,0.088889993727207,0.045413043349981,0.087712511420250,-0.013830192387104,0.015519111417234,-0.105858184397221,-0.000472295505460,-0.067224308848381,0.064639076590538,0.073157407343388,-0.015302741900086,-0.124365404248238,-0.169369280338287,0.000555323786102));
res += mul(Get(s5,-dx,-dy), float4x4(0.087150789797306,-0.036468587815762,0.297810405492783,0.147417098283768,-0.055634010583162,-0.139197349548340,0.271756798028946,0.274712115526199,0.060646023601294,-0.293692499399185,0.090590082108974,0.072125777602196,0.233797460794449,-0.097576141357422,0.044417753815651,-0.081543624401093));
res += mul(Get(s5,-dx,0), float4x4(-0.119159191846848,0.094153463840485,0.286809623241425,0.093540988862514,-0.102068044245243,0.213681697845459,0.318191140890121,-0.158082023262978,-0.245261132717133,0.159160196781158,0.165097832679749,0.132256016135216,-0.288594812154770,0.228578209877014,-0.470532089471817,-0.027432808652520));
res += mul(Get(s5,-dx,dy), float4x4(0.009788507595658,-0.105483762919903,0.451532393693924,0.084399059414864,0.027735233306885,0.109715156257153,0.171241104602814,-0.007738563697785,-0.013361928984523,0.032503463327885,0.231478318572044,0.029326904565096,-0.004547740332782,-0.155900970101357,0.011797009967268,0.094641819596291));
res += mul(Get(s5,0,-dy), float4x4(0.009030221961439,-0.141410112380981,0.087649598717690,0.184465274214745,-0.121776401996613,0.133667349815369,0.124094083905220,0.557047367095947,0.314437925815582,-0.021202852949500,-0.013829532079399,-0.052117034792900,0.374027788639069,-0.042194589972496,-0.031562853604555,-0.204417407512665));
res += mul(Get(s5,0,0), float4x4(-0.083037249743938,0.189763769507408,0.083635039627552,-0.050967186689377,-0.033744849264622,-0.052619032561779,0.047018490731716,-0.015489514917135,0.068511933088303,0.152130097150803,-0.067932583391666,-0.097208209335804,0.168274745345116,0.125947967171669,0.085117623209953,0.021048581227660));
res += mul(Get(s5,0,dy), float4x4(-0.204893320798874,0.199736297130585,0.067579232156277,-0.115489944815636,-0.007590789347887,0.057930976152420,0.025464743375778,-0.039881739765406,-0.246038854122162,0.086826533079147,-0.051898259669542,-0.082018114626408,-0.116090260446072,-0.079517662525177,-0.044877357780933,-0.093360811471939));
res += mul(Get(s5,dx,-dy), float4x4(0.012202703393996,0.070229820907116,-0.051350750029087,0.123647794127464,-0.077267371118069,0.030112937092781,-0.013918461278081,-0.181110203266144,-0.185580149292946,0.022895503789186,-0.116021431982517,0.101034842431545,-0.090121842920780,0.152917340397835,-0.007939789444208,-0.030239909887314));
res += mul(Get(s5,dx,0), float4x4(-0.001939043751918,0.041092462837696,0.075724892318249,-0.058100175112486,0.041944034397602,0.027015758678317,0.015761416405439,-0.100685916841030,-0.175533667206764,-0.105499073863029,-0.092019960284233,0.149457126855850,0.102853581309319,-0.081296794116497,-0.114122688770294,-0.234843209385872));
res += mul(Get(s5,dx,dy), float4x4(-0.121559150516987,0.264278262853622,-0.062425747513771,-0.011673915199935,0.013592095114291,0.046260997653008,0.023981915786862,-0.161412149667740,0.127473622560501,-0.077562540769577,-0.137875229120255,0.057614505290985,0.065002873539925,-0.024834871292114,-0.097760774195194,-0.089119464159012));
res = max(float4(0, 0, 0, 0), res) + float4(-0.220684915781021,0.057135026901960,-0.013223606161773,0.213052615523338) * min(float4(0, 0, 0, 0), res);
return res;
}