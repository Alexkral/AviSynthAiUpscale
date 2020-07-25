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
res += mul(Get(s0,-dx,-dy), float4x4(-0.077915966510773,-0.026760991662741,0.019275242462754,-0.057655882090330,-0.145555153489113,-0.213438883423805,-0.040215529501438,-0.085121661424637,-0.026560919359326,-0.097179353237152,-0.022496983408928,0.019567469134927,0.257440060377121,-0.066540464758873,0.139557138085365,0.081701435148716));
res += mul(Get(s0,-dx,0), float4x4(-0.078709341585636,-0.096503265202045,-0.229207873344421,0.103763885796070,0.021341208368540,0.007094941567630,-0.011722020804882,0.396964281797409,0.021694039925933,-0.168121054768562,-0.038625400513411,0.049567703157663,0.165309011936188,0.142396017909050,0.145030453801155,-0.031731314957142));
res += mul(Get(s0,-dx,dy), float4x4(0.137487158179283,-0.082677230238914,0.184481307864189,0.041636537760496,0.076434895396233,0.042107637971640,0.000319961458445,0.299655199050903,-0.031152773648500,0.082751080393791,0.126827687025070,-0.042559474706650,0.018441874533892,-0.157531604170799,-0.063039779663086,0.049412570893764));
res += mul(Get(s0,0,-dy), float4x4(-0.086844593286514,-0.104157038033009,0.141484722495079,0.008132370188832,0.053945224732161,0.079541698098183,-0.078511692583561,0.113163433969021,0.001502493862063,0.132791876792908,0.089647866785526,0.201585114002228,-0.032808650285006,-0.188645765185356,0.094595573842525,0.189998015761375));
res += mul(Get(s0,0,0), float4x4(-0.136191546916962,0.040118861943483,-0.061699777841568,0.055752601474524,-0.254440158605576,-0.163695961236954,0.203679308295250,-0.089222773909569,-0.109815753996372,0.179733335971832,0.081664249300957,0.091136664152145,-0.075685784220695,0.022236444056034,0.151010304689407,0.100562967360020));
res += mul(Get(s0,0,dy), float4x4(0.021478174254298,0.176258906722069,0.024403790012002,0.118354134261608,0.350486904382706,-0.134052217006683,0.001793080475181,-0.242794707417488,-0.038973182439804,-0.166246652603149,-0.129102662205696,-0.000023509735911,0.090246714651585,0.129094943404198,0.034640431404114,0.088847845792770));
res += mul(Get(s0,dx,-dy), float4x4(0.214901864528656,0.056719060987234,0.086832843720913,0.030266480520368,0.301285594701767,0.015587286092341,-0.017997698858380,0.035893987864256,0.090898782014847,-0.143574029207230,-0.077597573399544,-0.025987396016717,-0.075514197349548,-0.086890049278736,0.175861418247223,-0.087940335273743));
res += mul(Get(s0,dx,0), float4x4(0.000143238677992,0.095198042690754,0.041277926415205,-0.073982127010822,-0.159852817654610,-0.082536883652210,-0.198581054806709,-0.061850670725107,0.203584298491478,-0.158967792987823,0.062846474349499,-0.027965897694230,-0.050221379846334,-0.136960312724113,0.115171886980534,-0.057941753417253));
res += mul(Get(s0,dx,dy), float4x4(0.029654707759619,0.147226020693779,0.076220870018005,-0.022926900535822,-0.033752720803022,-0.006304569076747,-0.209035575389862,-0.073685616254807,-0.090865068137646,-0.004002115689218,0.010672206059098,0.041122563183308,0.095497980713844,-0.016195222735405,0.023364227265120,0.025958044454455));
res += mul(Get(s1,-dx,-dy), float4x4(0.044697202742100,-0.177774608135223,0.095642901957035,-0.007728597614914,0.035123530775309,-0.004511077888310,-0.035203885287046,-0.090403512120247,0.313417255878448,0.099736347794533,0.062954396009445,0.006855644751340,-0.034391254186630,0.016924502328038,-0.032547526061535,-0.210548117756844));
res += mul(Get(s1,-dx,0), float4x4(0.091922558844090,0.001251940149814,0.023433426395059,-0.167120054364204,0.006358211394399,0.140910610556602,0.057756740599871,0.032529633492231,0.073114328086376,-0.080622620880604,0.135260850191116,-0.021052364259958,0.191535145044327,0.172942668199539,-0.054110489785671,0.165001377463341));
res += mul(Get(s1,-dx,dy), float4x4(0.052072789520025,0.089749760925770,-0.044323813170195,-0.160969570279121,0.033509310334921,-0.113781780004501,0.171029895544052,-0.089852482080460,-0.054279461503029,0.062553204596043,0.131494432687759,0.045632243156433,0.163517162203789,0.012173530645669,0.077624194324017,0.059131953865290));
res += mul(Get(s1,0,-dy), float4x4(-0.043001048266888,0.023451188579202,0.038354527205229,0.111886039376259,0.380067914724350,-0.037521272897720,0.301692217588425,0.095833078026772,-0.077941477298737,0.047728270292282,0.011297599412501,-0.131412178277969,0.020606111735106,-0.033391885459423,0.144856572151184,0.215490266680717));
res += mul(Get(s1,0,0), float4x4(-0.053055424243212,-0.205492153763771,0.001110650831833,-0.080888807773590,-0.014735301956534,0.151918962597847,0.038191821426153,0.000568101997487,-0.124782554805279,0.121211752295494,0.091201871633530,0.175429418683052,-0.028161523863673,0.049459088593721,0.234191924333572,0.147430196404457));
res += mul(Get(s1,0,dy), float4x4(0.087514556944370,-0.056677799671888,-0.040908303111792,0.224195241928101,-0.172956079244614,0.162104785442352,-0.079936854541302,-0.174530848860741,-0.260927587747574,-0.054146163165569,-0.036501128226519,-0.067943565547466,0.128938421607018,-0.029790850356221,0.008985150605440,-0.002486000303179));
res += mul(Get(s1,dx,-dy), float4x4(-0.074047133326530,-0.032085232436657,0.192028343677521,-0.238906815648079,0.216906681656837,0.079279072582722,0.093516491353512,-0.258944928646088,-0.031731739640236,0.068291574716568,0.105670012533665,0.028584811836481,-0.122730195522308,0.048467986285686,0.017651554197073,-0.105242542922497));
res += mul(Get(s1,dx,0), float4x4(0.128115192055702,0.198422372341156,0.023371519520879,0.048572652041912,0.070867605507374,0.053142923861742,-0.136487886309624,-0.031256556510925,-0.090467095375061,0.075359329581261,0.241253510117531,-0.026020934805274,0.076180391013622,-0.014575824141502,-0.066706620156765,-0.189599871635437));
res += mul(Get(s1,dx,dy), float4x4(0.085971839725971,0.099667251110077,0.295277118682861,-0.002109175315127,-0.068451762199402,-0.063134908676147,-0.021000146865845,0.137409672141075,0.041962847113609,-0.100832849740982,0.057343237102032,0.021974461153150,-0.076372615993023,-0.002064219210297,0.174375385046005,0.011337052099407));
res += mul(Get(s2,-dx,-dy), float4x4(-0.043326094746590,0.050134237855673,-0.008419478312135,0.023700328543782,0.030704343691468,0.066253848373890,-0.021531924605370,0.208697274327278,0.010395414195955,0.253676205873489,0.130230829119682,0.043764177709818,-0.154802381992340,0.000444397534011,0.049103345721960,-0.065990604460239));
res += mul(Get(s2,-dx,0), float4x4(-0.072203353047371,0.147768229246140,-0.051563765853643,0.112795665860176,-0.274907976388931,0.065669327974319,-0.041334178298712,0.070496961474419,-0.092345997691154,-0.052746877074242,0.063882224261761,0.204379439353943,0.141881376504898,-0.004643248394132,-0.003174006706104,-0.052483335137367));
res += mul(Get(s2,-dx,dy), float4x4(0.062921643257141,0.049024503678083,0.236017674207687,-0.103901110589504,0.054834872484207,0.030901024118066,0.057811547070742,-0.012516797520220,-0.049201644957066,0.071575917303562,0.041807718575001,-0.033173229545355,0.149779528379440,0.319181174039841,-0.016681309789419,-0.152316853404045));
res += mul(Get(s2,0,-dy), float4x4(-0.084010578691959,0.178625330328941,0.087549701333046,0.085413143038750,0.202636048197746,0.043166495859623,-0.107689522206783,0.038585782051086,-0.014072317630053,-0.113539151847363,-0.050812795758247,-0.102509625256062,-0.169884085655212,-0.063216947019100,-0.024718830361962,-0.091833487153053));
res += mul(Get(s2,0,0), float4x4(-0.114780515432358,-0.219568774104118,0.077566131949425,0.006615201942623,0.107879422605038,-0.093930572271347,0.117486543953419,0.010322302579880,-0.049996811896563,0.145432949066162,-0.020393745973706,-0.020573897287250,0.221117630600929,0.002724898047745,-0.094544395804405,-0.152227327227592));
res += mul(Get(s2,0,dy), float4x4(0.059288498014212,-0.048779457807541,-0.109022550284863,-0.083618067204952,0.095754474401474,-0.053170572966337,0.191263690590858,0.019509360194206,0.082717046141624,-0.101081930100918,0.064544051885605,-0.054378464818001,-0.104726687073708,0.298275291919708,-0.033659394830465,-0.055100586265326));
res += mul(Get(s2,dx,-dy), float4x4(-0.046018987894058,0.025658408179879,0.047137487679720,0.082945905625820,-0.011743716895580,-0.011592067778111,-0.032882731407881,0.051612745970488,0.275132626295090,0.021969169378281,0.185423791408539,-0.022721106186509,0.033190008252859,-0.121192507445812,-0.090262368321419,-0.116149298846722));
res += mul(Get(s2,dx,0), float4x4(0.039086896926165,-0.090480104088783,0.056113608181477,0.028569880872965,0.024361500516534,-0.073951475322247,-0.001998903928325,-0.059069942682981,-0.142002865672112,-0.065682046115398,0.064629293978214,0.060513861477375,0.130727827548981,0.068876527249813,-0.047449033707380,-0.076272740960121));
res += mul(Get(s2,dx,dy), float4x4(-0.038468256592751,-0.138211295008659,-0.117796003818512,-0.024924652650952,0.027509799227118,0.038606055080891,0.054242137819529,-0.087879136204720,0.004788967315108,0.059794440865517,-0.130688130855560,-0.015706056728959,0.032338101416826,-0.106951065361500,0.005693692248315,-0.035797666758299));
res += mul(Get(s3,-dx,-dy), float4x4(0.246264532208443,0.110093720257282,0.018633993342519,-0.129548609256744,0.223263129591942,-0.071541927754879,-0.024196535348892,-0.138434961438179,0.041822072118521,0.081029385328293,-0.098957329988480,-0.001298935036175,-0.083894699811935,-0.014846146106720,-0.175261780619621,0.115570411086082));
res += mul(Get(s3,-dx,0), float4x4(0.295702487230301,0.033936385065317,-0.021153343841434,0.006049526389688,-0.083870202302933,-0.032353755086660,-0.189407438039780,-0.054095938801765,-0.029852328822017,-0.188058614730835,0.101098254323006,-0.023291682824492,0.003378927940503,0.047741521149874,-0.006180425174534,0.095014497637749));
res += mul(Get(s3,-dx,dy), float4x4(0.014498953707516,0.069179184734821,-0.016820820048451,0.054594878107309,-0.028631873428822,-0.160924002528191,-0.254478931427002,-0.081687100231647,-0.038690160959959,0.118531882762909,0.085087969899178,0.023666482418776,0.112762473523617,-0.112633138895035,0.085586354136467,0.163660481572151));
res += mul(Get(s3,0,-dy), float4x4(-0.205729603767395,-0.030680224299431,0.003569411113858,-0.103915162384510,0.126438573002815,-0.097926139831543,-0.185150250792503,-0.126557648181915,-0.002419338561594,-0.090748816728592,0.238785699009895,-0.018073152750731,-0.080670647323132,-0.111946009099483,-0.043450459837914,-0.178832858800888));
res += mul(Get(s3,0,0), float4x4(-0.038378346711397,0.026060279458761,0.041070606559515,0.122997567057610,0.134218692779541,-0.042522974312305,-0.028900027275085,-0.222450911998749,-0.067308723926544,-0.191561624407768,0.091560900211334,-0.114890843629837,0.057010557502508,-0.220651283860207,0.087837897241116,0.046625811606646));
res += mul(Get(s3,0,dy), float4x4(-0.094422526657581,0.158869594335556,0.139830365777016,-0.171639010310173,0.051829759031534,-0.077754147350788,-0.067507371306419,0.060672707855701,-0.014391918666661,-0.091063231229782,0.005705652292818,0.006603043060750,0.096752643585205,0.001013895962387,0.102109111845493,0.006214433815330));
res += mul(Get(s3,dx,-dy), float4x4(-0.082804031670094,-0.246336981654167,0.067139089107513,-0.042429804801941,0.111110568046570,-0.092189252376556,-0.077683255076408,0.219173058867455,0.031147517263889,0.103495985269547,-0.084830701351166,-0.005013595800847,0.044069945812225,0.076533012092113,0.104662775993347,-0.017167007550597));
res += mul(Get(s3,dx,0), float4x4(-0.122121818363667,-0.176821336150169,-0.030985621735454,-0.160733252763748,0.095300719141960,-0.044491726905107,0.003056025132537,0.241033047437668,0.079260841012001,0.151877328753471,0.002791694831103,-0.125428676605225,0.214027449488640,0.055093400180340,0.118636727333069,0.059974648058414));
res += mul(Get(s3,dx,dy), float4x4(0.008626569993794,0.044982794672251,0.064772725105286,-0.037318125367165,-0.042878616601229,-0.101895496249199,-0.070798486471176,-0.051852542907000,-0.028039636090398,0.048896875232458,-0.002664884785190,0.152606993913651,-0.135496914386749,0.278033971786499,-0.188751310110092,-0.056981474161148));
return max(float4(0,0,0,0), res);
}
