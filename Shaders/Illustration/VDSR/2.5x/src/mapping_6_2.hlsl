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
res += mul(Get(s0,-dx,-dy), float4x4(0.014126829802990,-0.045478299260139,-0.240072622895241,0.106276817619801,0.075148724019527,0.004477330017835,0.122567504644394,-0.232363864779472,-0.040760315954685,0.188119456171989,-0.043794438242912,-0.038507126271725,0.052081368863583,-0.191870063543320,0.072162851691246,-0.004870699718595));
res += mul(Get(s0,-dx,0), float4x4(0.020341811701655,0.041215326637030,-0.008743573911488,0.128259018063545,0.034065801650286,-0.169635131955147,-0.028937056660652,-0.047747936099768,-0.103845119476318,-0.039104007184505,0.006448467727751,0.088623024523258,-0.053248811513186,-0.094850674271584,-0.127428606152534,-0.107214599847794));
res += mul(Get(s0,-dx,dy), float4x4(0.011920994147658,0.076021127402782,0.033049479126930,0.018812224268913,0.088036373257637,-0.006065012887120,0.044195387512445,0.059022154659033,-0.122872799634933,0.071871444582939,0.243660524487495,0.020907979458570,0.193877026438713,0.135123476386070,0.093056380748749,-0.107476338744164));
res += mul(Get(s0,0,-dy), float4x4(-0.035627078264952,-0.040797665715218,0.008753846399486,0.013661174103618,-0.047912158071995,-0.051318947225809,0.158257216215134,0.111950971186161,0.187030196189880,0.108273044228554,0.014241082593799,0.071779511868954,-0.057390585541725,-0.124745361506939,0.158569976687431,-0.304822921752930));
res += mul(Get(s0,0,0), float4x4(0.100245796144009,-0.036942485719919,0.162842646241188,0.151953339576721,0.196295231580734,-0.023103624582291,-0.159407526254654,0.098260335624218,-0.075877591967583,-0.088437393307686,0.028079604730010,0.148755311965942,-0.180613726377487,0.181028395891190,0.047758005559444,-0.149591669440269));
res += mul(Get(s0,0,dy), float4x4(0.091186322271824,0.017933128401637,0.007314934860915,0.014117470011115,-0.055783022195101,0.096882641315460,-0.071034200489521,0.069344528019428,-0.045165184885263,0.067643038928509,0.076171286404133,-0.007532330695540,-0.101870134472847,0.061692517250776,0.079444512724876,0.183178871870041));
res += mul(Get(s0,dx,-dy), float4x4(0.260665148496628,-0.091012723743916,0.132128372788429,0.236938938498497,-0.039856895804405,-0.123257271945477,0.122769974172115,-0.062864936888218,0.082853563129902,-0.078735962510109,0.117429733276367,0.138849884271622,-0.028368126600981,-0.098269276320934,0.127871841192245,-0.052494578063488));
res += mul(Get(s0,dx,0), float4x4(0.266004294157028,-0.047964792698622,-0.004207258112729,0.155635431408882,-0.180299684405327,-0.091686479747295,-0.090093478560448,-0.021353377029300,-0.134703621268272,-0.115264870226383,0.102323234081268,0.134416267275810,0.088638193905354,-0.053214531391859,-0.113769687712193,-0.133749872446060));
res += mul(Get(s0,dx,dy), float4x4(0.105814993381500,0.096440583467484,-0.074177727103233,-0.017314253374934,-0.061210010200739,-0.207655072212219,0.071461059153080,0.039153773337603,0.076876677572727,-0.034693479537964,-0.149216011166573,0.022436996921897,0.086485154926777,-0.014901142567396,0.319589138031006,-0.138963773846626));
res += mul(Get(s1,-dx,-dy), float4x4(0.015838367864490,0.034164659678936,-0.008276338689029,0.333766460418701,-0.024019323289394,-0.067884847521782,-0.184263467788696,0.040042541921139,-0.110353387892246,0.090125888586044,0.071413554251194,-0.004868057090789,-0.073700219392776,-0.190254032611847,0.169620275497437,-0.133117884397507));
res += mul(Get(s1,-dx,0), float4x4(-0.047797296196222,-0.074107527732849,-0.078484050929546,-0.039892382919788,0.071101889014244,-0.133696451783180,-0.050720196217299,0.168724864721298,-0.032217893749475,0.053773019462824,-0.017389649525285,-0.005375934299082,-0.088299363851547,-0.105792470276356,0.001384247210808,0.147094413638115));
res += mul(Get(s1,-dx,dy), float4x4(0.103688538074493,-0.235471501946449,0.087450332939625,-0.039537735283375,-0.065541423857212,-0.183599770069122,0.005701739341021,0.074628598988056,0.078975252807140,0.070130594074726,0.044024951756001,0.009820003062487,0.042374353855848,-0.077595099806786,-0.120509877800941,0.245054244995117));
res += mul(Get(s1,0,-dy), float4x4(0.016118148341775,-0.112666994333267,0.173934519290924,-0.010085769928992,0.031407944858074,-0.148018211126328,0.097537972033024,-0.086857095360756,-0.020134514197707,0.100243531167507,0.211584791541100,-0.099409222602844,0.105871237814426,-0.032940998673439,0.049258477985859,-0.151454657316208));
res += mul(Get(s1,0,0), float4x4(0.018289012834430,-0.077876597642899,-0.089210562407970,-0.174340903759003,-0.060121741145849,0.123673319816589,-0.188677966594696,-0.183828130364418,-0.035686768591404,-0.040103998035192,0.134868785738945,0.120055735111237,-0.184451326727867,0.026780441403389,-0.063772305846214,0.029819905757904));
res += mul(Get(s1,0,dy), float4x4(-0.071203172206879,0.190183207392693,-0.048260804265738,0.183921188116074,0.068972796201706,0.068947508931160,-0.008465700782835,-0.105671435594559,-0.109034016728401,-0.025995796546340,0.125911384820938,-0.085616670548916,-0.209580212831497,-0.178750410676003,-0.068807885050774,-0.097127132117748));
res += mul(Get(s1,dx,-dy), float4x4(-0.172452181577682,0.033652324229479,-0.254891902208328,0.174234226346016,0.062765419483185,0.043846327811480,-0.133592337369919,0.251497119665146,-0.052690364420414,-0.033986352384090,-0.182081952691078,0.003946795128286,-0.042802192270756,-0.154272481799126,-0.106002941727638,-0.216844439506531));
res += mul(Get(s1,dx,0), float4x4(-0.027158316224813,0.093294456601143,0.148116022348404,-0.047451697289944,-0.092052176594734,-0.051360130310059,0.066546022891998,-0.128340959548950,-0.067029431462288,-0.229613289237022,-0.097717352211475,-0.119750477373600,0.073435872793198,0.229534775018692,0.257530748844147,0.125486269593239));
res += mul(Get(s1,dx,dy), float4x4(-0.002235091757029,-0.019084604457021,-0.069485284388065,-0.234698876738548,0.029760736972094,-0.168583452701569,-0.013924947008491,0.000848882307764,0.024539133533835,0.135555803775787,-0.079304628074169,0.010351626202464,0.084990583360195,-0.225628867745399,-0.033927265554667,0.012220674194396));
res += mul(Get(s2,-dx,-dy), float4x4(-0.035300869494677,-0.242866531014442,0.141259416937828,-0.153390735387802,-0.259589523077011,0.052739746868610,0.034610506147146,0.125026121735573,-0.082187823951244,0.105675213038921,-0.173990175127983,0.051736012101173,-0.227305367588997,-0.085365667939186,0.076171681284904,-0.074892632663250));
res += mul(Get(s2,-dx,0), float4x4(-0.113910451531410,-0.098894044756889,-0.036437161266804,0.155630558729172,-0.011806732043624,0.168901950120926,-0.149163112044334,-0.022342113777995,-0.115465141832829,-0.058252304792404,0.064689897000790,-0.054248262196779,0.113027334213257,0.198359280824661,-0.002627523383126,-0.148632124066353));
res += mul(Get(s2,-dx,dy), float4x4(-0.189559265971184,-0.093642525374889,-0.145983666181564,-0.048606242984533,0.134348317980766,0.157940968871117,0.083957076072693,0.123286344110966,-0.000210214362596,0.209373474121094,0.068006657063961,-0.126844704151154,0.056005727499723,0.007872419431806,0.025894487276673,-0.072367452085018));
res += mul(Get(s2,0,-dy), float4x4(0.018448181450367,0.010734071023762,-0.070468746125698,-0.239276096224785,-0.099821381270885,0.205542519688606,-0.044922396540642,0.186863690614700,-0.051835555583239,0.033877979964018,-0.078704178333282,-0.097038447856903,-0.202468201518059,-0.050975736230612,-0.089323058724403,-0.158811211585999));
res += mul(Get(s2,0,0), float4x4(-0.077822834253311,-0.079365104436874,0.067973613739014,-0.004856063518673,-0.023417770862579,-0.007744963746518,0.041049465537071,0.217413038015366,0.073013164103031,0.065417736768723,-0.124143213033676,0.002006376860663,-0.170109152793884,-0.118120804429054,0.031105415895581,0.025149205699563));
res += mul(Get(s2,0,dy), float4x4(-0.010357322171330,-0.290970236063004,-0.009679235517979,-0.091603346168995,0.070845074951649,-0.096504494547844,-0.137307718396187,0.071315102279186,-0.081986673176289,0.059243641793728,0.052927568554878,-0.020295446738601,-0.102957658469677,0.097588784992695,0.032591763883829,-0.124020613729954));
res += mul(Get(s2,dx,-dy), float4x4(0.017709642648697,-0.013960677199066,-0.166124060750008,0.109832286834717,-0.116753391921520,0.225120738148689,-0.107140719890594,0.083042331039906,0.070862039923668,0.006047082133591,0.110042095184326,-0.104460276663303,0.041477385908365,0.064644686877728,0.077238678932190,0.128650128841400));
res += mul(Get(s2,dx,0), float4x4(0.064259082078934,-0.013773888349533,-0.211618825793266,-0.054282464087009,-0.165470108389854,0.076057665050030,-0.126740470528603,-0.096406772732735,0.033516488969326,0.118526868522167,-0.136782094836235,0.182045042514801,0.174276456236839,-0.091793090105057,0.160585895180702,0.432423472404480));
res += mul(Get(s2,dx,dy), float4x4(0.154630333185196,0.149522960186005,-0.360523432493210,-0.089838616549969,0.156002059578896,0.036631491035223,-0.017174595966935,-0.075511090457439,-0.007106155157089,-0.153703674674034,-0.127290174365044,0.154015243053436,-0.229534968733788,-0.050702113658190,-0.098067477345467,0.074755191802979));
res += mul(Get(s3,-dx,-dy), float4x4(0.165840744972229,-0.192373633384705,0.128250777721405,-0.108938753604889,-0.068199895322323,-0.178320646286011,0.054409593343735,-0.077682696282864,0.001687212614343,0.142890498042107,0.037482287734747,-0.185124292969704,0.012645247392356,-0.105525068938732,0.018367415294051,-0.215372845530510));
res += mul(Get(s3,-dx,0), float4x4(0.016313495114446,0.058177657425404,-0.085841998457909,-0.042249310761690,0.255564749240875,0.123348250985146,-0.067240886390209,-0.131479069590569,0.010145569220185,-0.059231229126453,0.167123928666115,-0.059474851936102,0.017209935933352,0.047332420945168,0.189697355031967,0.085562445223331));
res += mul(Get(s3,-dx,dy), float4x4(0.136519685387611,-0.027869660407305,0.085300460457802,-0.010860156267881,0.111388079822063,0.041559800505638,0.133584886789322,0.051030121743679,-0.042797666043043,-0.005531198810786,-0.041336927562952,0.125356644392014,-0.122471414506435,0.108397871255875,-0.010953668504953,-0.145793467760086));
res += mul(Get(s3,0,-dy), float4x4(0.133608415722847,0.043239641934633,0.048142261803150,-0.059112735092640,0.116096466779709,-0.067546270787716,0.035507343709469,0.053294174373150,0.078575305640697,-0.170142516493797,-0.125221788883209,-0.090428180992603,-0.014500118792057,-0.132924497127533,-0.183910116553307,0.046389229595661));
res += mul(Get(s3,0,0), float4x4(-0.073772817850113,0.004222123883665,-0.007492084987462,0.003898641327396,-0.058383386582136,-0.063522115349770,0.118169561028481,-0.113258004188538,0.203965857625008,0.042805410921574,0.184939727187157,0.009159800596535,0.019412236288190,0.018443210050464,-0.185474157333374,-0.079564303159714));
res += mul(Get(s3,0,dy), float4x4(0.080946020781994,-0.084782913327217,-0.016226302832365,-0.000509350677021,-0.154588550329208,0.143548592925072,0.020241670310497,-0.086299166083336,0.035307422280312,-0.014550327323377,0.040829781442881,-0.008542457595468,0.054027851670980,-0.002439484000206,-0.150902032852173,-0.033500712364912));
res += mul(Get(s3,dx,-dy), float4x4(-0.015334944240749,0.020589096471667,0.204162821173668,0.099983125925064,-0.148844674229622,-0.019636707380414,-0.033279709517956,-0.013165162876248,0.086972847580910,-0.147741124033928,-0.150502189993858,0.105479672551155,0.033024717122316,-0.020713463425636,-0.046878747642040,0.036037750542164));
res += mul(Get(s3,dx,0), float4x4(-0.165005877614021,0.121928781270981,0.169363602995872,0.055091049522161,-0.066433519124985,-0.161603033542633,-0.027910294011235,-0.187813162803650,0.009331767447293,-0.066956318914890,0.075273871421814,0.055528186261654,0.049734149128199,-0.192497670650482,-0.012537610717118,-0.062182042747736));
res += mul(Get(s3,dx,dy), float4x4(0.058465071022511,0.193102151155472,0.175809070467949,0.078524135053158,-0.004708216525614,-0.028120856732130,-0.249759688973427,0.056628178805113,0.138231858611107,0.143592745065689,0.023500498384237,-0.138903513550758,-0.070913650095463,-0.056170430034399,0.027920562773943,-0.008395544253290));
return max(float4(0,0,0,0), res);
}
