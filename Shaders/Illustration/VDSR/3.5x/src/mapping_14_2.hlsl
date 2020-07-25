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
res += mul(Get(s0,-dx,-dy), float4x4(-0.017580043524504,-0.264082849025726,0.117305435240269,0.188843891024590,-0.074225403368473,-0.045244380831718,-0.060705646872520,-0.118651442229748,0.144997507333755,0.023835951462388,0.046739850193262,-0.034209765493870,-0.047880202531815,0.129948750138283,-0.018762337043881,0.053679566830397));
res += mul(Get(s0,-dx,0), float4x4(-0.111814931035042,-0.021709078922868,0.033295568078756,-0.073344275355339,0.111615501344204,0.111578531563282,0.093602441251278,-0.164333954453468,-0.037629470229149,-0.047590766102076,-0.081977479159832,0.026880411431193,-0.019144784659147,0.021798280999064,-0.179565533995628,0.190836772322655));
res += mul(Get(s0,-dx,dy), float4x4(-0.091898985207081,-0.093384400010109,0.127392023801804,0.095750786364079,-0.007528841495514,-0.230817332863808,0.043025616556406,-0.011055526323617,-0.166359961032867,0.016114629805088,0.284834504127502,0.103431567549706,0.153387665748596,0.087835542857647,0.133422031998634,0.014487683773041));
res += mul(Get(s0,0,-dy), float4x4(-0.035511624068022,0.144823521375656,0.212904334068298,-0.052873492240906,0.077290154993534,0.142327800393105,-0.143067851662636,0.038213793188334,0.042138431221247,-0.029648244380951,-0.254910647869110,0.053756549954414,-0.022157855331898,-0.150812163949013,-0.125030383467674,0.001009286264889));
res += mul(Get(s0,0,0), float4x4(0.004094211384654,-0.026989184319973,0.134319216012955,-0.088811032474041,0.203378781676292,0.176388785243034,0.072185471653938,-0.001484478591010,0.040717143565416,0.047007251530886,0.015087059698999,-0.077250435948372,-0.057152613997459,-0.064888708293438,0.071665003895760,0.032762475311756));
res += mul(Get(s0,0,dy), float4x4(0.048346258699894,-0.285807758569717,-0.119692981243134,0.019017882645130,0.048743531107903,0.093332231044769,0.150234371423721,-0.026184344664216,-0.120044842362404,-0.047273855656385,-0.096361607313156,-0.210944205522537,-0.170824646949768,-0.102413646876812,0.013015897944570,0.004207393620163));
res += mul(Get(s0,dx,-dy), float4x4(-0.171776473522186,-0.085549995303154,-0.060527503490448,-0.054822865873575,0.054555136710405,0.087503612041473,-0.139506474137306,-0.072812050580978,-0.131051808595657,-0.130437135696411,-0.180282011628151,-0.129432722926140,-0.035504277795553,0.070293441414833,0.095460295677185,0.039510816335678));
res += mul(Get(s0,dx,0), float4x4(0.081894077360630,-0.124467387795448,-0.003388766665012,0.129759430885315,-0.002299321815372,0.039251282811165,0.016120985150337,0.059791740030050,0.120876170694828,0.040029909461737,0.072700425982475,-0.089322507381439,-0.077954337000847,0.066228039562702,0.097329311072826,0.093231029808521));
res += mul(Get(s0,dx,dy), float4x4(0.076320409774780,0.018340706825256,0.073379732668400,0.096660614013672,-0.016551505774260,-0.192930147051811,0.033582322299480,-0.095846056938171,0.025202238932252,-0.120260186493397,0.023143189027905,-0.204875171184540,0.069646455347538,-0.103742875158787,0.163255497813225,-0.010617817752063));
res += mul(Get(s1,-dx,-dy), float4x4(0.126870423555374,0.087367035448551,-0.071665570139885,0.145687684416771,0.109459377825260,0.003729719668627,0.143384188413620,0.039487600326538,0.087222419679165,0.033333092927933,0.023127779364586,-0.218632683157921,-0.002962682629004,0.091747403144836,-0.093952938914299,-0.131418228149414));
res += mul(Get(s1,-dx,0), float4x4(-0.023397883400321,0.398089408874512,0.095311366021633,0.041458368301392,0.037731535732746,-0.069612279534340,0.197566166520119,-0.127597764134407,0.096579186618328,0.020398177206516,0.025621201843023,-0.045454286038876,0.090103805065155,-0.083220623433590,-0.204739525914192,-0.045744534581900));
res += mul(Get(s1,-dx,dy), float4x4(-0.111208438873291,0.248376801609993,-0.163764193654060,0.175418585538864,-0.119085505604744,0.041219368577003,0.320732265710831,-0.077807955443859,-0.133183434605598,-0.015889167785645,-0.008443661965430,0.008924546651542,-0.025411805137992,-0.117257982492447,0.265917748212814,0.072347596287727));
res += mul(Get(s1,0,-dy), float4x4(0.000171539388248,-0.001497037941590,-0.042490094900131,0.006887593772262,-0.044739115983248,-0.101183570921421,0.018119510263205,-0.147636368870735,-0.174633830785751,-0.068661145865917,-0.122529849410057,-0.043626740574837,-0.156223759055138,0.209773585200310,-0.139392450451851,-0.060593277215958));
res += mul(Get(s1,0,0), float4x4(0.092172980308533,-0.011207964271307,0.189627617597580,0.111397854983807,0.020417103543878,-0.075291603803635,-0.042128585278988,-0.121961236000061,-0.043650940060616,-0.023856038227677,0.037002373486757,0.155310958623886,-0.061368830502033,0.175234451889992,0.126743376255035,-0.134170144796371));
res += mul(Get(s1,0,dy), float4x4(-0.126946479082108,0.162979558110237,0.002727826824412,-0.035679731518030,0.037190746515989,-0.019274914637208,-0.165899112820625,-0.002186198718846,-0.075448408722878,0.115466304123402,0.023635841906071,0.063090674579144,-0.122707448899746,-0.138735041022301,0.209873318672180,0.117940537631512));
res += mul(Get(s1,dx,-dy), float4x4(0.087500996887684,0.036512672901154,-0.113008923828602,0.096707619726658,0.018618047237396,-0.193154811859131,-0.159308806061745,0.092803135514259,-0.018893444910645,0.070698477327824,-0.189394190907478,0.009464494884014,0.142272353172302,0.136869251728058,-0.067060388624668,0.107238292694092));
res += mul(Get(s1,dx,0), float4x4(-0.134598597884178,0.086269304156303,-0.001588384737261,-0.192155122756958,0.031132664531469,-0.404593378305435,0.092645548284054,-0.108526408672333,-0.026466984301805,0.184861123561859,-0.017678938806057,0.116103962063789,-0.067617572844028,-0.021221823990345,-0.084704302251339,0.099742725491524));
res += mul(Get(s1,dx,dy), float4x4(-0.056797359138727,0.346081405878067,0.033907949924469,-0.138097882270813,0.038260880857706,-0.145673215389252,0.006387671455741,0.122065320611000,-0.080818124115467,0.060450691729784,0.026833359152079,0.123703636229038,-0.081709966063499,0.004129264038056,0.010475148446858,-0.145789071917534));
res += mul(Get(s2,-dx,-dy), float4x4(0.113510936498642,0.154148325324059,-0.072889193892479,0.136380895972252,-0.029653362929821,-0.098158895969391,0.022033758461475,-0.194169729948044,-0.185504674911499,-0.238898038864136,0.012992200441658,0.096827946603298,0.028590044006705,-0.058965910226107,0.290072560310364,0.070288255810738));
res += mul(Get(s2,-dx,0), float4x4(-0.399825572967529,-0.149135842919350,0.028612742200494,0.045935098081827,0.161889344453812,0.014262637123466,0.022751681506634,-0.000460611889139,0.214599177241325,-0.055449564009905,-0.059740040451288,-0.244481623172760,-0.189899697899818,-0.050180930644274,-0.141558840870857,0.084159761667252));
res += mul(Get(s2,-dx,dy), float4x4(-0.141159638762474,0.002140434691682,-0.050326384603977,-0.007492577657104,-0.297834157943726,0.027564281597733,-0.088586144149303,-0.032277341932058,-0.099843531847000,-0.133477672934532,-0.098160713911057,0.031839761883020,0.000852511264384,-0.137954011559486,-0.243567705154419,0.036025382578373));
res += mul(Get(s2,0,-dy), float4x4(0.065450310707092,0.204828158020973,-0.103071302175522,-0.113312564790249,-0.065908253192902,-0.047441191971302,0.159770265221596,0.182964533567429,0.090047985315323,-0.055240076035261,-0.080024287104607,0.087635256350040,0.112053401768208,0.086208149790764,0.072120524942875,0.068168990314007));
res += mul(Get(s2,0,0), float4x4(-0.079754754900932,-0.128133073449135,0.048929568380117,-0.039483655244112,-0.017350150272250,-0.044906038790941,0.037787511944771,-0.198717013001442,-0.069601342082024,-0.183844491839409,-0.239890336990356,-0.281745791435242,-0.118422456085682,-0.001380449743010,0.222793266177177,0.138725131750107));
res += mul(Get(s2,0,dy), float4x4(-0.019832294434309,0.149125546216965,-0.100523032248020,-0.003849788336083,0.127249822020531,0.159973412752151,0.057622585445642,-0.073656424880028,-0.097392439842224,0.058332584798336,-0.069506362080574,0.041403528302908,0.020031595602632,-0.120758324861526,-0.043886430561543,0.014359452761710));
res += mul(Get(s2,dx,-dy), float4x4(-0.020259711891413,0.087958849966526,0.035166990011930,0.086979560554028,0.140935793519020,-0.155756741762161,-0.065402455627918,-0.118833526968956,0.084969893097878,-0.084531374275684,-0.124133892357349,-0.130929991602898,0.113710023462772,-0.161468267440796,0.090909652411938,-0.005895424168557));
res += mul(Get(s2,dx,0), float4x4(-0.080426529049873,-0.026258870959282,-0.085330754518509,0.013989685103297,0.161236464977264,0.140055820345879,0.306582927703857,-0.159081026911736,-0.005644920282066,-0.061327103525400,-0.027157383039594,-0.079291507601738,0.115826800465584,-0.019501242786646,0.204761266708374,-0.074691757559776));
res += mul(Get(s2,dx,dy), float4x4(-0.127445399761200,-0.066957756876945,-0.171012505888939,0.065242253243923,0.027242558076978,0.043868366628885,0.159858778119087,-0.101459190249443,0.086560599505901,0.052311360836029,-0.160750910639763,0.102738663554192,-0.087296947836876,-0.076020851731300,0.175513669848442,-0.045659095048904));
res += mul(Get(s3,-dx,-dy), float4x4(-0.066345252096653,-0.073058933019638,-0.200925633311272,0.083111763000488,0.172621279954910,0.011927446350455,-0.043313536792994,0.168443843722343,-0.095300853252411,0.238140061497688,-0.076752983033657,0.070396922528744,-0.124171465635300,0.159159317612648,0.106662474572659,-0.014851220883429));
res += mul(Get(s3,-dx,0), float4x4(0.080686539411545,0.282617241144180,0.010541196912527,-0.109057545661926,-0.093218103051186,0.037897311151028,-0.072715245187283,0.102016814053059,-0.018873061984777,0.077353052794933,0.055404588580132,-0.140933483839035,-0.084960721433163,0.164745673537254,-0.081377491354942,0.010365826077759));
res += mul(Get(s3,-dx,dy), float4x4(-0.038132794201374,0.128197714686394,0.000354282732587,0.149210020899773,-0.078307703137398,-0.084821633994579,-0.219195827841759,0.253173768520355,-0.129610389471054,-0.024358646944165,-0.217637524008751,-0.096519805490971,0.073278017342091,0.057172395288944,-0.073436759412289,-0.026715997606516));
res += mul(Get(s3,0,-dy), float4x4(-0.087388619780540,0.223528742790222,0.022090064361691,0.178914964199066,-0.114063136279583,0.003262311453000,0.003610473824665,-0.088147923350334,-0.126139655709267,0.199926674365997,0.025762695819139,-0.011987073346972,0.196205437183380,-0.164030447602272,0.216925367712975,-0.134856820106506));
res += mul(Get(s3,0,0), float4x4(-0.120712652802467,0.131641224026680,0.068096160888672,0.061149474233389,0.002860274165869,-0.114020936191082,0.088135518133640,-0.076026059687138,-0.030088197439909,-0.058206144720316,-0.023140812292695,-0.044516257941723,0.018889907747507,0.128527939319611,-0.078271679580212,-0.001735864789225));
res += mul(Get(s3,0,dy), float4x4(0.020427232608199,0.040461063385010,0.056553211063147,0.269123345613480,0.026218740269542,-0.054062567651272,-0.118414007127285,0.101555772125721,-0.056435085833073,-0.015613734722137,-0.141269400715828,0.032006841152906,-0.039833359420300,0.268745303153992,-0.095672048628330,-0.148045703768730));
res += mul(Get(s3,dx,-dy), float4x4(-0.052749589085579,0.090254046022892,0.085809193551540,0.068787321448326,-0.221544981002808,0.068394012749195,0.031597584486008,-0.170973062515259,0.022250799462199,-0.056293226778507,0.056506440043449,-0.097073823213577,-0.122161932289600,-0.027326874434948,-0.003706190269440,-0.033331416547298));
res += mul(Get(s3,dx,0), float4x4(-0.013783684931695,0.023315301164985,0.037188764661551,0.013221967034042,0.226126998662949,-0.218436866998672,0.107002183794975,0.113405913114548,0.058861959725618,-0.069205150008202,-0.107043087482452,0.074249833822250,-0.157074764370918,-0.105382204055786,-0.088594220578671,-0.089083470404148));
res += mul(Get(s3,dx,dy), float4x4(0.063943363726139,-0.120066285133362,0.014606853947043,-0.041128810495138,-0.214310482144356,-0.006735361181200,0.022687463089824,-0.055930417031050,-0.041420955210924,-0.136329516768456,-0.130579859018326,-0.062115490436554,-0.005995773244649,0.189672529697418,0.146804273128510,-0.028710583224893));
return max(float4(0,0,0,0), res);
}
