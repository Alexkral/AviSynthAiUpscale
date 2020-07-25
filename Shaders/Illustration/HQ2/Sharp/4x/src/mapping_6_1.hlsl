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
res += mul(Get(s0,-dx,-dy), float4x4(0.003081178292632,-0.026615498587489,-0.126412257552147,0.113351523876190,0.013567389920354,-0.092382945120335,0.007789362687618,0.043732773512602,0.159970059990883,0.227672517299652,0.074583508074284,0.098194740712643,-0.004131772555411,-0.075737357139587,-0.111920997500420,-0.096698552370071));
res += mul(Get(s0,-dx,0), float4x4(-0.121839977800846,0.017181776463985,-0.060626961290836,0.058087646961212,-0.111210331320763,-0.232756674289703,-0.049648530781269,-0.133072540163994,-0.136280506849289,-0.078091360628605,0.011614417657256,-0.033492192625999,0.089083038270473,0.009699735790491,0.054041657596827,-0.006559406872839));
res += mul(Get(s0,-dx,dy), float4x4(0.149559780955315,-0.084631748497486,-0.145269945263863,0.123062781989574,-0.273192644119263,0.050470665097237,-0.116706408560276,-0.003906005527824,0.092086903750896,-0.108121722936630,-0.092074513435364,0.045826133340597,-0.043068695813417,0.003996804356575,-0.021925674751401,-0.186056390404701));
res += mul(Get(s0,0,-dy), float4x4(0.059798214584589,-0.076566368341446,-0.060826025903225,0.006288744974881,-0.064883783459663,-0.054502367973328,0.007229082286358,-0.084123402833939,0.073270805180073,-0.159608215093613,0.023465236648917,0.000807646894827,0.129995897412300,-0.005965281743556,-0.068721249699593,-0.201249361038208));
res += mul(Get(s0,0,0), float4x4(-0.123241871595383,-0.136372238397598,-0.100019738078117,0.079740509390831,-0.081917129456997,-0.065896995365620,-0.013247736729681,-0.006589223630726,0.086208440363407,0.116593547165394,-0.031439490616322,-0.028745796531439,0.057956822216511,-0.072380751371384,-0.233588203787804,-0.132584184408188));
res += mul(Get(s0,0,dy), float4x4(0.041403282433748,0.066327407956123,0.062685191631317,0.238385364413261,0.121753185987473,0.102874107658863,-0.026652066037059,0.091359578073025,-0.179502338171005,0.014218051917851,-0.140994518995285,0.079258352518082,0.077132113277912,-0.059720169752836,0.015134609304368,0.250171959400177));
res += mul(Get(s0,dx,-dy), float4x4(-0.058361198753119,0.094473414123058,-0.215980783104897,-0.098186761140823,0.081163309514523,0.029360437765718,0.114405602216721,0.166910782456398,-0.085722938179970,0.062147550284863,0.064427517354488,0.175311833620071,-0.044798549264669,0.129458367824554,-0.107265174388885,-0.003623102791607));
res += mul(Get(s0,dx,0), float4x4(0.109939098358154,0.091732449829578,0.216663524508476,-0.229109093546867,0.052964795380831,0.015661561861634,0.202412515878677,-0.099357888102531,-0.011068030260503,-0.116762742400169,-0.022671235725284,0.019721182063222,-0.199555143713951,-0.049209985882044,-0.136211290955544,-0.164384543895721));
res += mul(Get(s0,dx,dy), float4x4(0.009431136772037,-0.164039999246597,-0.133593365550041,0.039553619921207,-0.046936985105276,0.064448803663254,-0.016817176714540,-0.071392171084881,0.107846796512604,-0.191491708159447,0.236645475029945,0.109005898237228,-0.038538128137589,-0.072580561041832,0.007443461567163,0.159397050738335));
res += mul(Get(s1,-dx,-dy), float4x4(-0.168206274509430,0.018983557820320,-0.239718675613403,0.024646285921335,0.058245252817869,0.046801198273897,-0.157965630292892,0.009837057441473,0.220933586359024,-0.011543416418135,-0.237785845994949,0.202384367585182,-0.005403149873018,-0.000148887047544,0.106558412313461,-0.024048496037722));
res += mul(Get(s1,-dx,0), float4x4(0.099311701953411,-0.041715122759342,0.136128336191177,0.127636879682541,-0.074703529477119,-0.131899967789650,-0.405796110630035,0.205945655703545,0.241157904267311,0.002609138609841,0.070803470909595,-0.066829748451710,-0.001738569932058,0.051287885755301,-0.079491429030895,-0.042276717722416));
res += mul(Get(s1,-dx,dy), float4x4(-0.006532919593155,0.053444270044565,-0.079349912703037,0.095341324806213,-0.100141994655132,0.018080053851008,-0.021886268630624,0.001830089138821,-0.273087352514267,-0.081825569272041,0.060885410755873,0.110170312225819,0.113836757838726,0.126169428229332,0.021718554198742,-0.044193629175425));
res += mul(Get(s1,0,-dy), float4x4(0.074878312647343,-0.146784782409668,0.057757943868637,0.058408971875906,-0.066971138119698,-0.035188339650631,0.150447160005569,0.157781645655632,-0.007590594235808,-0.052098464220762,-0.161428540945053,0.240840777754784,0.095149010419846,0.028925487771630,-0.006860818248242,-0.050558861345053));
res += mul(Get(s1,0,0), float4x4(0.013909514062107,0.197764292359352,-0.052332602441311,-0.031006174162030,0.024269670248032,0.043611854314804,0.086761236190796,0.165913373231888,0.139526203274727,0.075822763144970,-0.076042704284191,-0.045974917709827,-0.105612210929394,0.022162813693285,-0.054445356130600,-0.031242063269019));
res += mul(Get(s1,0,dy), float4x4(0.122174561023712,-0.060042113065720,-0.060944162309170,0.200879797339439,0.091889828443527,0.115083061158657,-0.085226796567440,0.041865251958370,-0.345433652400970,-0.023034477606416,0.131767228245735,0.003390105906874,0.063602671027184,0.079319253563881,-0.041604209691286,0.070199340581894));
res += mul(Get(s1,dx,-dy), float4x4(0.101361595094204,-0.053677026182413,-0.205735608935356,0.274781346321106,0.021422097459435,0.187425419688225,-0.063075914978981,-0.004906058777124,-0.162410005927086,-0.111763715744019,-0.109540745615959,-0.065969072282314,-0.080973267555237,0.089126996695995,0.100426003336906,-0.168950200080872));
res += mul(Get(s1,dx,0), float4x4(-0.090382456779480,-0.015987318009138,0.113851651549339,-0.105604268610477,0.123329550027847,-0.119538322091103,0.113567538559437,0.121585942804813,0.165328785777092,-0.192114531993866,-0.097129814326763,0.016373077407479,-0.052717685699463,-0.111358880996704,-0.027519058436155,0.058812148869038));
res += mul(Get(s1,dx,dy), float4x4(0.136647239327431,-0.106283292174339,0.076342500746250,-0.026829991489649,0.003014712594450,-0.080623805522919,-0.095974519848824,-0.170205220580101,-0.050203703343868,-0.047516785562038,0.155840635299683,-0.155688717961311,-0.021240489557385,0.009799684397876,-0.051431331783533,-0.050550460815430));
res += mul(Get(s2,-dx,-dy), float4x4(0.092775657773018,-0.021031633019447,-0.068785242736340,0.062849231064320,0.057598695158958,0.184940159320831,0.125216588377953,-0.124580450356007,-0.101309873163700,-0.090398237109184,-0.168789640069008,0.045949719846249,0.121181979775429,0.174029245972633,0.055728308856487,-0.065415002405643));
res += mul(Get(s2,-dx,0), float4x4(-0.100799411535263,-0.180387288331985,-0.150278702378273,0.101980432868004,0.064083248376846,-0.084624111652374,-0.109759986400604,0.006744359619915,0.172818779945374,0.036016646772623,0.180155009031296,-0.040355719625950,-0.169798418879509,-0.066658623516560,0.120785601437092,-0.212184458971024));
res += mul(Get(s2,-dx,dy), float4x4(-0.173529580235481,0.012807468883693,0.071442425251007,0.199129953980446,-0.057248901575804,-0.034960001707077,0.128688037395477,0.096767812967300,0.069096341729164,0.082605920732021,0.056270904839039,-0.009580358862877,-0.111319713294506,0.111787676811218,-0.025434345006943,-0.050525698810816));
res += mul(Get(s2,0,-dy), float4x4(-0.125919133424759,0.039552126079798,-0.103537447750568,-0.019119143486023,0.075016021728516,-0.234019652009010,0.346372097730637,-0.102327570319176,0.017083289101720,-0.140633836388588,-0.095068864524364,0.087739609181881,0.023186227306724,-0.056131508201361,-0.080080114305019,-0.097578674554825));
res += mul(Get(s2,0,0), float4x4(0.049575347453356,0.108603931963444,-0.159732982516289,-0.083023272454739,0.047426849603653,-0.124503493309021,0.006925750989467,0.091573148965836,-0.148466333746910,-0.058786589652300,-0.176806807518005,-0.079814121127129,0.014960532076657,-0.074729084968567,-0.075455047190189,0.040016569197178));
res += mul(Get(s2,0,dy), float4x4(0.046760693192482,0.041538693010807,-0.077420249581337,0.176735952496529,-0.111463695764542,0.116856224834919,0.150153696537018,-0.024465894326568,-0.162106916308403,0.029859967529774,0.085929200053215,0.057994309812784,0.031686488538980,0.173025712370872,-0.013834546320140,-0.046804454177618));
res += mul(Get(s2,dx,-dy), float4x4(-0.098030373454094,0.017891217023134,0.058957397937775,-0.010974142700434,-0.124984219670296,-0.103310376405716,-0.065852098166943,0.039205264300108,0.057630047202110,-0.033711325377226,0.194819718599319,0.055781010538340,-0.026447124779224,-0.151465028524399,0.012839690782130,0.040605261921883));
res += mul(Get(s2,dx,0), float4x4(-0.041376192122698,-0.099487751722336,-0.072251826524734,-0.165363743901253,0.065485991537571,-0.082188397645950,0.089460276067257,-0.067631088197231,-0.008418306708336,0.140236034989357,0.178979739546776,0.311207205057144,-0.215593680739403,-0.146496936678886,0.128629595041275,-0.010991521179676));
res += mul(Get(s2,dx,dy), float4x4(-0.032474786043167,-0.097024932503700,0.145462661981583,-0.016840433701873,0.020684210583568,0.077624402940273,0.188604906201363,0.107171885669231,-0.086419411003590,0.028454657644033,-0.064313709735870,0.056735988706350,0.072515942156315,0.004824885632843,-0.055066622793674,0.060080297291279));
res += mul(Get(s3,-dx,-dy), float4x4(-0.123422883450985,0.016423562541604,-0.084331355988979,-0.099022798240185,0.012959929183125,0.102599322795868,0.024108354002237,0.003903256030753,0.168955758213997,0.041779182851315,-0.142772644758224,-0.122736230492592,0.019710239022970,-0.071135304868221,-0.176188468933105,0.040145467966795));
res += mul(Get(s3,-dx,0), float4x4(-0.023013340309262,-0.005411504767835,0.034488122910261,0.008413153700531,0.141831532120705,0.106340870261192,-0.217799976468086,0.183311641216278,0.006637514568865,-0.174995437264442,0.017470559105277,-0.036630783230066,0.038840886205435,-0.125779181718826,0.259920418262482,-0.252778619527817));
res += mul(Get(s3,-dx,dy), float4x4(-0.072813212871552,-0.032708909362555,-0.021623000502586,-0.102637805044651,0.081627026200294,-0.028887769207358,0.116117991507053,-0.164771199226379,-0.058058250695467,0.077438101172447,0.071316055953503,0.017622983083129,0.092204287648201,-0.160039797425270,-0.088973984122276,-0.073705472052097));
res += mul(Get(s3,0,-dy), float4x4(0.051357463002205,0.037985511124134,-0.113145604729652,-0.082997389137745,-0.176327645778656,0.066700085997581,0.115304000675678,0.007351648062468,0.168631941080093,0.208572238683701,0.039507787674665,0.114166021347046,0.163353815674782,0.048582866787910,0.054731745272875,0.016670009121299));
res += mul(Get(s3,0,0), float4x4(-0.052776746451855,-0.061782002449036,-0.101024337112904,-0.127001374959946,-0.059409853070974,0.048403453081846,0.080742396414280,-0.046399973332882,-0.014672124758363,0.121012791991234,-0.098092630505562,0.070196993649006,0.039600014686584,0.125387474894524,-0.106274202466011,-0.055963080376387));
res += mul(Get(s3,0,dy), float4x4(0.342190235853195,-0.072735771536827,-0.115200437605381,-0.125226303935051,-0.150273889303207,0.102121174335480,-0.269458174705505,-0.043200016021729,0.103367224335670,-0.022200606763363,-0.151141464710236,-0.086023539304733,-0.012859049253166,0.200704932212830,0.030722474679351,0.051896423101425));
res += mul(Get(s3,dx,-dy), float4x4(-0.045322418212891,-0.136444568634033,-0.120013892650604,0.070500120520592,0.026317223906517,0.095753878355026,0.090624585747719,0.059918336570263,-0.096683546900749,0.095831088721752,0.058431949466467,0.200569972395897,-0.126232594251633,0.143878638744354,0.051711216568947,0.128043740987778));
res += mul(Get(s3,dx,0), float4x4(0.018031883984804,0.142037257552147,0.045509323477745,-0.073892600834370,-0.148693367838860,-0.052643053233624,-0.183819189667702,0.114651568233967,-0.044051572680473,-0.039728444069624,-0.188444271683693,-0.039602089673281,0.026219349354506,0.063105687499046,-0.254696190357208,-0.062809750437737));
res += mul(Get(s3,dx,dy), float4x4(-0.180373042821884,0.049812473356724,-0.148493647575378,0.028699349611998,-0.000079979843576,0.156639888882637,0.013861873187125,-0.097246810793877,0.120167836546898,-0.084915116429329,0.005204354878515,0.080397635698318,0.036374695599079,0.010372043587267,-0.051945149898529,-0.025881638750434));
return max(float4(0,0,0,0), res);
}
