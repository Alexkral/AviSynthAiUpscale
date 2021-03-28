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
float4 res = float4(-0.469807088375092,-0.032488584518433,-0.112720020115376,0.021028211340308);
res += mul(Get(s0,-dx,-dy), float4x4(0.066572614014149,-0.034127190709114,-0.041370607912540,0.079957038164139,0.003270613728091,0.026767643168569,-0.095358856022358,0.147385314106941,-0.083061017096043,0.109215550124645,0.045937050133944,-0.136632099747658,0.037496708333492,-0.043069891631603,-0.097727388143539,0.067515142261982));
res += mul(Get(s0,-dx,0), float4x4(0.044791009277105,0.042528960853815,-0.043532177805901,-0.371595710515976,-0.030570723116398,-0.055348291993141,0.042687579989433,-0.226850286126137,-0.089165933430195,0.129147231578827,0.014174773357809,0.128156349062920,0.038766048848629,-0.031517226248980,0.042686935514212,-0.318801790475845));
res += mul(Get(s0,-dx,dy), float4x4(-0.003726958530024,-0.143369466066360,0.060483664274216,0.031580723822117,0.013912796974182,-0.095139153301716,-0.028809715062380,0.011773915961385,-0.047067951411009,0.111963413655758,-0.029892675578594,-0.018913911655545,-0.022929750382900,-0.137069284915924,0.065407447516918,0.123420216143131));
res += mul(Get(s0,0,-dy), float4x4(-0.169275522232056,0.007253301329911,-0.023728538304567,-0.084120750427246,-0.004899381659925,0.044141333550215,0.012279511429369,-0.030742129310966,0.113974913954735,-0.005260110367090,-0.017062375321984,0.286274820566177,-0.112205944955349,0.168927937746048,0.022425290197134,0.068161509931087));
res += mul(Get(s0,0,0), float4x4(0.034189712256193,0.034942492842674,-0.069388270378113,0.225209802389145,0.024664634838700,0.026519771665335,0.011704567819834,0.056541912257671,0.168014660477638,-0.088327862322330,0.001553202746436,0.093309372663498,0.188917770981789,0.056443300098181,-0.038172416388988,0.199237093329430));
res += mul(Get(s0,0,dy), float4x4(-0.091113604605198,-0.094954118132591,0.028709957376122,-0.090210646390915,0.012750120833516,-0.086359001696110,0.075494855642319,0.016062049195170,0.036495365202427,-0.097345203161240,-0.064753644168377,-0.084960773587227,-0.076071955263615,-0.179010778665543,0.216139048337936,0.010658477433026));
res += mul(Get(s0,dx,-dy), float4x4(-0.108565084636211,-0.016971319913864,0.064016364514828,-0.092021040618420,-0.002487370278686,0.005864621140063,-0.031914267688990,0.167907491326332,0.074544481933117,0.009073657914996,0.101533748209476,-0.213319063186646,0.065794721245766,0.071467265486717,0.119546420872211,-0.011904017068446));
res += mul(Get(s0,dx,0), float4x4(-0.039150457829237,0.034129124134779,-0.063324809074402,-0.012256471440196,0.010304143652320,-0.034069042652845,0.090685345232487,-0.134945154190063,0.026631936430931,-0.007171044126153,0.001815860741772,-0.049965616315603,-0.031700823456049,0.068232640624046,-0.027286987751722,-0.111237823963165));
res += mul(Get(s0,dx,dy), float4x4(-0.001435770536773,-0.040746681392193,0.021444603800774,0.025398992002010,0.036088757216930,0.009696990251541,-0.049236286431551,0.057427659630775,-0.018421227112412,-0.015240975655615,0.051126413047314,-0.030778713524342,-0.056161891669035,-0.058415468782187,0.090253502130508,0.075825817883015));
res += mul(Get(s1,-dx,-dy), float4x4(0.236331820487976,-0.080265477299690,-0.077818945050240,0.142625331878662,0.019201902672648,0.020884551107883,-0.026216937229037,-0.054080039262772,-0.085499368607998,0.011170614510775,0.049533292651176,0.064024060964584,-0.061712056398392,-0.101083703339100,-0.074790671467781,0.042636416852474));
res += mul(Get(s1,-dx,0), float4x4(0.234247043728828,0.088521495461464,0.034875042736530,-0.080148711800575,-0.016695788130164,-0.047916267067194,-0.014352050609887,-0.009836370125413,-0.041519112884998,-0.021666001528502,0.009168335236609,-0.020700788125396,0.044689647853374,-0.160064145922661,-0.032779823988676,-0.041909094899893));
res += mul(Get(s1,-dx,dy), float4x4(0.089028313755989,-0.124977156519890,-0.049852762371302,0.021481059491634,-0.010771458037198,-0.055682778358459,0.074708074331284,-0.012595099397004,0.008783280849457,-0.021053619682789,0.061938215047121,0.031038226559758,-0.013550230301917,-0.165465757250786,-0.108235232532024,-0.098564572632313));
res += mul(Get(s1,0,-dy), float4x4(0.323267340660095,-0.117540195584297,0.019043914973736,-0.024585781618953,0.009352792054415,0.022518975660205,0.023023981601000,0.039221070706844,-0.045726917684078,0.031762562692165,0.053962782025337,-0.250870078802109,-0.153535485267639,0.121679171919823,0.018624324351549,0.008336275815964));
res += mul(Get(s1,0,0), float4x4(0.389991968870163,-0.011887023225427,0.051053036004305,0.049521017819643,0.034523949027061,0.040282879024744,-0.067111462354660,0.017096649855375,-0.020368764176965,0.070248126983643,0.007951173931360,0.047429237514734,0.147966235876083,0.132966920733452,-0.071627020835876,0.082901142537594));
res += mul(Get(s1,0,dy), float4x4(0.157536417245865,-0.063464574515820,-0.020787902176380,-0.068593338131905,-0.034924939274788,-0.054985422641039,0.106474667787552,0.022465178743005,-0.020519658923149,0.013826599344611,-0.000690385757480,-0.041712094098330,0.039043366909027,-0.054456193000078,0.023998275399208,0.110359616577625));
res += mul(Get(s1,dx,-dy), float4x4(0.167608335614204,0.031044295057654,0.052574526518583,0.057877052575350,-0.000695446855389,-0.028631305322051,0.025443956255913,-0.056915055960417,-0.006776604335755,-0.050493240356445,0.062585599720478,-0.015028361231089,0.015239359810948,0.084856986999512,0.060048464685678,-0.096149817109108));
res += mul(Get(s1,dx,0), float4x4(0.155406028032303,-0.115097038447857,0.008299811743200,-0.088775053620338,0.020215913653374,-0.026646787300706,-0.013185144402087,-0.034453291445971,0.019782111048698,0.019702030345798,0.022129751741886,0.026257347315550,0.104657918214798,0.129008442163467,-0.110576651990414,0.052072521299124));
res += mul(Get(s1,dx,dy), float4x4(0.062261551618576,-0.047002688050270,-0.025645202025771,0.061555571854115,-0.037899851799011,0.027043618261814,0.051325742155313,0.096779547631741,0.029696112498641,0.036543950438499,-0.126201018691063,0.069198660552502,-0.028620539233088,-0.000540532346349,0.141544774174690,-0.061355751007795));
res += mul(Get(s2,-dx,-dy), float4x4(-0.103153988718987,-0.013078587129712,-0.067527525126934,0.053864829242229,-0.108514927327633,0.050563711673021,0.065492533147335,0.002728552790359,-0.091104030609131,-0.009329495020211,-0.025497486814857,-0.004547984804958,-0.134351477026939,-0.058883611112833,0.038605358451605,-0.054889805614948));
res += mul(Get(s2,-dx,0), float4x4(0.057370543479919,-0.054001312702894,-0.052352406084538,-0.134336709976196,-0.038638908416033,0.067484401166439,-0.017371522262692,-0.017688412219286,0.074612393975258,-0.017586709931493,0.011902387253940,-0.028812872245908,0.035020988434553,-0.193748116493225,-0.063794344663620,-0.318133443593979));
res += mul(Get(s2,-dx,dy), float4x4(0.048038464039564,-0.088332429528236,0.012606468982995,0.089313395321369,0.034697253257036,0.048317000269890,-0.094103209674358,0.016286384314299,-0.038883242756128,-0.064037129282951,-0.145353317260742,-0.065411627292633,0.023582126945257,-0.264156252145767,0.082206316292286,0.086234800517559));
res += mul(Get(s2,0,-dy), float4x4(-0.187825694680214,0.059339050203562,-0.005393394734710,-0.126138046383858,0.037715312093496,-0.013706699013710,0.042691815644503,-0.168270826339722,-0.096665672957897,0.054927628487349,-0.021186478435993,0.157155185937881,-0.647437810897827,-0.021835574880242,-0.010488013736904,-0.331397503614426));
res += mul(Get(s2,0,0), float4x4(-0.062169544398785,0.159063190221786,-0.123757772147655,0.158603325486183,0.045851729810238,0.068493396043777,0.109686814248562,0.219681680202484,-0.028204753994942,0.059769812971354,0.072386778891087,0.069376952946186,-0.112767487764359,0.192240506410599,-0.108539186418056,0.349235385656357));
res += mul(Get(s2,0,dy), float4x4(-0.041045967489481,0.019902836531401,0.045040752738714,0.133233383297920,-0.029513591900468,0.009265076369047,-0.299518406391144,-0.100318931043148,0.020847506821156,-0.107003219425678,-0.066219642758369,0.232054531574249,-0.130248174071312,0.022242249920964,0.051975958049297,0.051629062741995));
res += mul(Get(s2,dx,-dy), float4x4(0.056511376053095,-0.000296461483231,-0.006787964608520,-0.020608972758055,0.181726753711700,-0.106249816715717,0.052556052803993,-0.049313731491566,0.149449482560158,0.019663494080305,-0.037966813892126,0.068736620247364,-0.119013383984566,0.051599904894829,0.033046822994947,-0.001413661055267));
res += mul(Get(s2,dx,0), float4x4(0.110822513699532,0.087234467267990,-0.060554325580597,0.086855769157410,0.049729540944099,-0.055944349616766,0.064298003911972,0.051121916621923,0.175646185874939,0.005679733119905,-0.030525077134371,0.006378845777363,-0.024620298296213,0.102880142629147,-0.013996026478708,-0.015277151949704));
res += mul(Get(s2,dx,dy), float4x4(0.062159083783627,-0.123838722705841,-0.026025449857116,-0.076562136411667,0.074501909315586,0.010549254715443,-0.239786982536316,0.053287949413061,0.061133570969105,0.037130191922188,0.180474758148193,0.001959316665307,0.002221967559308,-0.178108528256416,-0.118212878704071,0.134569123387337));
res += mul(Get(s3,-dx,-dy), float4x4(0.023941729217768,0.003327627666295,-0.015941694378853,0.049208268523216,-0.051579307764769,-0.034217841923237,-0.010460858233273,0.129829704761505,-0.003731587901711,-0.016602322459221,-0.017550317570567,0.065707907080650,0.004535650368780,0.044998064637184,-0.042322397232056,0.142041862010956));
res += mul(Get(s3,-dx,0), float4x4(0.137814968824387,0.103929959237576,-0.055716104805470,-0.027345985174179,0.011596893891692,-0.008478826843202,-0.095069378614426,-0.089878574013710,-0.024047138169408,-0.003858515527099,-0.028838189318776,0.009151606820524,0.017732936888933,0.016965078189969,-0.038467857986689,-0.125391989946365));
res += mul(Get(s3,-dx,dy), float4x4(-0.013459031470120,-0.070434592664242,-0.019092503935099,0.092701211571693,0.017566906288266,0.042945016175508,0.089001335203648,0.002888357732445,-0.006724209524691,0.086411982774734,-0.025925936177373,0.048169802874327,0.027601581066847,-0.004670931026340,0.054009664803743,0.127165973186493));
res += mul(Get(s3,0,-dy), float4x4(0.079003639519215,0.020462445914745,-0.040242534130812,0.143428578972816,-0.113829337060452,0.104532107710838,0.036274597048759,-0.319716602563858,0.022418202832341,0.082697100937366,-0.047627683728933,-0.007145567797124,0.046014137566090,0.000278712017462,0.012356031686068,0.045718885958195));
res += mul(Get(s3,0,0), float4x4(0.185222715139389,0.055851515382528,0.003016428556293,0.081055551767349,-0.067847169935703,-0.001555034308694,-0.079682640731335,0.142742931842804,-0.014682911336422,0.038613799959421,0.015832478180528,-0.013456850312650,-0.089098483324051,0.078936032950878,-0.005933872889727,0.074663020670414));
res += mul(Get(s3,0,dy), float4x4(-0.063525006175041,-0.107075132429600,-0.064356602728367,-0.057596232742071,-0.021637476980686,-0.095605999231339,0.064256653189659,-0.066934973001480,-0.036606125533581,0.102921128273010,-0.136310294270515,-0.023067856207490,-0.019660856574774,0.019405396655202,-0.071583867073059,-0.048333771526814));
res += mul(Get(s3,dx,-dy), float4x4(0.033139333128929,0.009602646343410,-0.093055404722691,-0.085139736533165,0.007179302629083,-0.084827080368996,0.030416179448366,-0.059604611247778,0.020776635035872,-0.040783252567053,-0.003328677266836,0.014056087471545,-0.065130896866322,-0.032455064356327,-0.062524236738682,-0.056519027799368));
res += mul(Get(s3,dx,0), float4x4(0.028117887675762,-0.074876315891743,0.036426484584808,0.021272083744407,-0.075066193938255,0.050988767296076,-0.120573550462723,0.065884515643120,-0.031596180051565,0.048061303794384,0.024913968518376,0.034138910472393,-0.052995074540377,-0.159536391496658,0.027743479236960,0.033328637480736));
res += mul(Get(s3,dx,dy), float4x4(-0.070044405758381,-0.066298693418503,-0.035929273813963,0.004457968287170,0.014634205959737,0.017289029434323,0.096206568181515,0.087185598909855,0.006972459610552,0.038116440176964,-0.131249561905861,-0.017531812191010,-0.005068400409073,0.131461501121521,0.000960857083555,0.020929146558046));
res += mul(Get(s4,-dx,-dy), float4x4(0.043314360082150,-0.005478530656546,-0.001854527508840,-0.055720973759890,-0.035296626389027,0.034182555973530,0.011910116299987,0.025695778429508,-0.066706806421280,0.125845819711685,0.021574322134256,-0.045191571116447,0.077082626521587,-0.037485402077436,0.042734753340483,0.091636165976524));
res += mul(Get(s4,-dx,0), float4x4(0.021818283945322,-0.043528702110052,-0.009198982268572,0.111829921603203,-0.003809618065134,0.104140825569630,0.092245526611805,0.060457665473223,-0.053350947797298,0.057327244430780,-0.016135357320309,-0.029939904808998,-0.101152606308460,0.084831342101097,0.140024840831757,0.055507268756628));
res += mul(Get(s4,-dx,dy), float4x4(-0.029990581795573,-0.013664585538208,-0.073052905499935,-0.108898617327213,-0.019290627911687,-0.013338962569833,-0.082797527313232,0.031140739098191,0.033233374357224,0.033364456146955,0.025027299299836,0.120394416153431,-0.016405928879976,0.026298603042960,-0.176020085811615,0.016376066952944));
res += mul(Get(s4,0,-dy), float4x4(0.133138030767441,-0.096791170537472,-0.026739329099655,0.293102353811264,0.043710611760616,0.030781676992774,0.021220430731773,-0.018614560365677,0.091749705374241,-0.046365398913622,-0.071391686797142,0.119852460920811,0.238213092088699,-0.019099917262793,-0.140066638588905,0.020076807588339));
res += mul(Get(s4,0,0), float4x4(-0.068150624632835,-0.116482034325600,0.012462513521314,-0.085304215550423,-0.041045252233744,-0.127831697463989,0.165398374199867,0.045904483646154,-0.039861369878054,-0.082172483205795,0.013608225621283,-0.023632377386093,0.021456494927406,-0.204243510961533,0.234985873103142,-0.171354070305824));
res += mul(Get(s4,0,dy), float4x4(0.008017978630960,0.004197617061436,-0.063449271023273,-0.018901068717241,-0.021358527243137,0.048902157694101,-0.104968003928661,-0.060919329524040,0.081315547227859,-0.086881086230278,0.037217833101749,-0.059076335281134,0.005097569432110,0.103875115513802,-0.197286725044250,0.028241192921996));
res += mul(Get(s4,dx,-dy), float4x4(-0.166341498494148,0.100103102624416,-0.035647016018629,-0.217441171407700,-0.031222954392433,0.000739222625270,0.004441983997822,-0.063450753688812,-0.019559700042009,0.018035154789686,-0.013679006136954,-0.123775638639927,-0.083443298935890,-0.046046245843172,0.108432002365589,-0.069127075374126));
res += mul(Get(s4,dx,0), float4x4(-0.184252455830574,-0.170001521706581,-0.020005591213703,-0.071495674550533,-0.071924015879631,0.027839962393045,0.131766587495804,0.051822945475578,0.061070807278156,-0.031685017049313,-0.058432955294847,0.103175885975361,0.046276867389679,0.078597024083138,0.066972501575947,0.017319403588772));
res += mul(Get(s4,dx,dy), float4x4(-0.093712545931339,0.102125555276871,0.143367365002632,-0.041131410747766,-0.008862511254847,-0.047686241567135,-0.070553585886955,-0.025820687413216,-0.003619156777859,0.025541638955474,0.197035685181618,-0.011740518733859,-0.012044346891344,-0.130857259035110,0.166913747787476,-0.009379294700921));
res += mul(Get(s5,-dx,-dy), float4x4(0.058284666389227,-0.005750159732997,0.050447400659323,-0.086461745202541,0.008874733000994,-0.029507439583540,-0.001638847636059,-0.093577116727829,-0.098009310662746,0.012378947809339,0.068481169641018,-0.104520455002785,0.013533822260797,-0.007353006862104,0.018360143527389,-0.090502128005028));
res += mul(Get(s5,-dx,0), float4x4(-0.059956148266792,0.117780908942223,-0.016626311466098,0.222861453890800,-0.050988037139177,0.001933291438036,-0.051151648163795,0.077357701957226,-0.023906867951155,0.149050697684288,0.053608380258083,0.108267925679684,-0.030171658843756,-0.018404621630907,0.010090092197061,0.125883013010025));
res += mul(Get(s5,-dx,dy), float4x4(-0.058576073497534,0.111232988536358,-0.067938275635242,-0.092286139726639,-0.081568941473961,-0.108245469629765,-0.020481530576944,0.002292885212228,0.030859291553497,0.129049107432365,-0.130438968539238,0.013242629356682,-0.073668405413628,-0.005783031228930,-0.046775352209806,-0.063880935311317));
res += mul(Get(s5,0,-dy), float4x4(0.143557801842690,-0.115968383848667,-0.005209103692323,0.108722157776356,0.146325051784515,-0.029629470780492,-0.017821209505200,0.139735177159309,0.258156925439835,-0.129818320274353,-0.005450201686472,0.104104198515415,0.047081712633371,0.046504516154528,-0.028149044141173,0.045902743935585));
res += mul(Get(s5,0,0), float4x4(0.002886078786105,-0.017085220664740,0.025283778086305,-0.080989897251129,0.044556681066751,0.020399354398251,-0.012964687310159,-0.181736558675766,-0.058460682630539,-0.135329753160477,0.063839592039585,-0.001116539933719,-0.024971829727292,-0.024241624400020,-0.006249858997762,0.020971447229385));
res += mul(Get(s5,0,dy), float4x4(-0.060671318322420,0.043312024325132,-0.108681693673134,0.022862277925014,0.016251796856523,0.094411082565784,-0.020240873098373,0.059752855449915,0.007766816299409,0.053622409701347,-0.077818609774113,-0.090687274932861,-0.031221808865666,0.026327254250646,-0.074684418737888,-0.018425844609737));
res += mul(Get(s5,dx,-dy), float4x4(0.048793289810419,0.020183287560940,-0.035899151116610,-0.061184920370579,0.098835125565529,0.011699515394866,-0.040132265537977,0.105009332299232,0.069689407944679,-0.008614959195256,-0.073769591748714,0.057674735784531,-0.045138835906982,0.028330020606518,0.019966429099441,-0.036566991358995));
res += mul(Get(s5,dx,0), float4x4(-0.051699437201023,0.028942011296749,0.018419614061713,0.018969038501382,0.054518509656191,-0.027160573750734,0.028859103098512,-0.010600141249597,-0.132845923304558,-0.095758162438869,0.093216143548489,-0.179963007569313,-0.017319096252322,-0.004387085791677,-0.011350413784385,0.016196701675653));
res += mul(Get(s5,dx,dy), float4x4(-0.084349714219570,-0.015386470593512,-0.053142614662647,-0.080679468810558,-0.009761470369995,0.057866759598255,-0.022139135748148,0.070458196103573,-0.009249343536794,0.079882435500622,-0.000143736790051,0.077505268156528,0.007472574710846,-0.023696793243289,0.017916370183229,0.022264694795012));
res = max(float4(0, 0, 0, 0), res) + float4(0.000560010666959,0.146547555923462,-0.008071058429778,0.939647197723389) * min(float4(0, 0, 0, 0), res);
return res;
}