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
res += mul(Get(s0,-dx,-dy), float4x4(0.039726637303829,0.082679770886898,0.063550859689713,-0.062350314110518,-0.148554474115372,0.023617861792445,-0.104631997644901,-0.052709434181452,-0.063028328120708,0.091096855700016,0.039595775306225,-0.011184271425009,-0.065096490085125,0.073999695479870,0.024373097345233,-0.000918912410270));
res += mul(Get(s0,-dx,0), float4x4(-0.029523096978664,-0.123932018876076,-0.020458051934838,-0.010892810299993,-0.050101656466722,0.036061726510525,-0.117393717169762,-0.014776309952140,0.036054868251085,0.087001472711563,-0.032131996005774,-0.085455007851124,-0.084343627095222,-0.062423452734947,0.078065752983093,-0.109401211142540));
res += mul(Get(s0,-dx,dy), float4x4(-0.083156347274780,-0.100518092513084,0.134329095482826,-0.122769072651863,-0.079993158578873,0.071431823074818,-0.102596543729305,-0.056670036166906,0.035268623381853,0.127760991454124,0.072347901761532,0.013620947487652,-0.042174458503723,-0.062295313924551,0.141444087028503,-0.090013906359673));
res += mul(Get(s0,0,-dy), float4x4(-0.066682085394859,0.076346613466740,0.007931125350296,0.043652318418026,-0.105352029204369,0.014559541828930,-0.027274057269096,-0.030968284234405,-0.041378758847713,0.057796336710453,0.102112360298634,-0.032801460474730,0.036784242838621,0.031295359134674,0.058771368116140,0.074134223163128));
res += mul(Get(s0,0,0), float4x4(-0.038401056081057,-0.067590482532978,-0.041145801544189,0.085295617580414,-0.023921748623252,0.113207086920738,0.024451117962599,0.035211130976677,0.003274795832112,0.113903924822807,-0.031511627137661,-0.129259079694748,-0.093481019139290,-0.026591368019581,-0.107659325003624,-0.057152289897203));
res += mul(Get(s0,0,dy), float4x4(-0.019786128774285,-0.014114643447101,-0.039320219308138,-0.073493860661983,0.004908483941108,0.061292193830013,-0.028596987947822,0.026931628584862,0.009348898194730,0.015873892232776,0.115367852151394,-0.032935332506895,-0.085693165659904,-0.067470476031303,0.053927484899759,-0.064422659575939));
res += mul(Get(s0,dx,-dy), float4x4(-0.059807855635881,0.033692054450512,0.003750559408218,0.176358103752136,-0.031575120985508,-0.006797821726650,0.018546564504504,0.174135342240334,-0.018641674891114,0.103584259748459,0.228494673967361,-0.094304308295250,0.002940797712654,0.161704733967781,0.152735352516174,0.005928704980761));
res += mul(Get(s0,dx,0), float4x4(-0.007972410880029,0.034296169877052,-0.037114445120096,0.007961367256939,-0.050729617476463,-0.026676958426833,-0.071086406707764,0.026817545294762,-0.061780523508787,0.193954378366470,0.109646297991276,0.033052850514650,-0.102186270058155,-0.040097143501043,0.039628427475691,-0.004846932366490));
res += mul(Get(s0,dx,dy), float4x4(0.005061187781394,-0.036990404129028,0.094132743775845,-0.129332691431046,-0.080700308084488,-0.019054941833019,0.031483266502619,-0.039901722222567,-0.109965719282627,-0.051910355687141,0.158353850245476,-0.003556309035048,-0.101600959897041,-0.127620235085487,-0.006420966237783,0.019908715039492));
res += mul(Get(s1,-dx,-dy), float4x4(0.006362395826727,-0.058450840413570,-0.117999158799648,-0.035599477589130,0.061034191399813,0.011196610517800,-0.002756725996733,-0.025847790762782,0.041717767715454,-0.159312754869461,-0.083970546722412,0.026036102324724,0.080876797437668,0.062879130244255,-0.096704848110676,-0.020586734637618));
res += mul(Get(s1,-dx,0), float4x4(0.098609998822212,-0.048518698662519,0.026464788243175,0.062880553305149,0.105100907385349,-0.033118639141321,0.030853696167469,-0.063444070518017,0.063752584159374,-0.030343305319548,-0.044666528701782,-0.047966238111258,0.038444444537163,-0.042988479137421,0.061651341617107,0.046019401401281));
res += mul(Get(s1,-dx,dy), float4x4(-0.064099453389645,-0.015172670595348,0.041506759822369,-0.084803782403469,0.099775500595570,-0.173012584447861,0.008694439195096,-0.021230701357126,-0.018565552309155,0.167083472013474,0.038944352418184,0.011828340590000,0.069558329880238,-0.017310095950961,-0.013049086555839,-0.113226979970932));
res += mul(Get(s1,0,-dy), float4x4(0.024540314450860,-0.098910845816135,-0.044437866657972,0.101606883108616,0.002442627679557,0.063757978379726,-0.034809567034245,0.026437893509865,0.067568987607956,-0.058226451277733,-0.034762594848871,0.130483463406563,-0.046710718423128,-0.006043554283679,-0.073383338749409,0.038798090070486));
res += mul(Get(s1,0,0), float4x4(0.040344126522541,-0.000402955600293,0.057083763182163,0.027010008692741,0.032252397388220,-0.032406531274319,0.032189413905144,-0.020694885402918,0.063864640891552,-0.068281620740891,-0.043484460562468,-0.024700904265046,-0.044806387275457,0.072853714227676,-0.135711118578911,0.201978594064713));
res += mul(Get(s1,0,dy), float4x4(0.006385578308254,-0.014780095778406,-0.034752652049065,-0.199628248810768,0.031107461079955,-0.008940841071308,-0.025914063677192,-0.042467083781958,-0.018461149185896,0.070598140358925,0.000764908443671,-0.019789364188910,-0.037972193211317,-0.036820147186518,-0.046634212136269,-0.198477938771248));
res += mul(Get(s1,dx,-dy), float4x4(0.130964368581772,-0.096329241991043,0.026639323681593,0.146632999181747,-0.016409954056144,0.078928574919701,-0.027550619095564,0.048672895878553,0.066257953643799,0.042437076568604,-0.085949778556824,0.112483091652393,-0.040588568896055,-0.066608250141144,0.032846808433533,0.042201824486256));
res += mul(Get(s1,dx,0), float4x4(0.015145445242524,-0.103869080543518,0.057367216795683,0.030060213059187,-0.015108074992895,0.160160154104233,0.155085578560829,0.139416858553886,0.027745757251978,0.071346655488014,-0.024200957268476,-0.067427366971970,0.008573036640882,0.067461080849171,0.037285745143890,0.201975703239441));
res += mul(Get(s1,dx,dy), float4x4(0.020387256518006,-0.026384770870209,0.028560632839799,-0.077172957360744,-0.034403152763844,-0.019950604066253,-0.035121876746416,-0.100098118185997,0.052964940667152,-0.000323450425640,0.052939072251320,-0.043503090739250,0.030850714072585,-0.109980523586273,0.083527535200119,-0.052348185330629));
res += mul(Get(s2,-dx,-dy), float4x4(-0.151526033878326,0.097910478711128,0.088704742491245,-0.069407567381859,-0.084554880857468,0.004274071659893,-0.058278594166040,0.063543148338795,0.057899430394173,-0.093704283237457,-0.035726137459278,0.009192929603159,0.004052282311022,-0.048966336995363,-0.055897608399391,-0.021665928885341));
res += mul(Get(s2,-dx,0), float4x4(-0.141380831599236,-0.118989214301109,0.005355631466955,-0.050693381577730,-0.014748853631318,0.024527695029974,-0.000601302948780,-0.026287276297808,0.050045646727085,-0.069583572447300,-0.015606941655278,0.029548974707723,0.035605438053608,0.143363311886787,-0.084193825721741,-0.064191646873951));
res += mul(Get(s2,-dx,dy), float4x4(0.056884191930294,-0.101290635764599,-0.051164358854294,-0.080588713288307,0.101761125028133,-0.061385024338961,-0.008082327432930,-0.043083865195513,0.098736986517906,-0.018695672973990,0.017768355086446,-0.069255404174328,0.152610510587692,-0.072567567229271,-0.063774257898331,-0.112732417881489));
res += mul(Get(s2,0,-dy), float4x4(-0.056136883795261,-0.112270899116993,0.082783110439777,-0.011392701417208,-0.009256454184651,0.075452953577042,-0.108286127448082,-0.045887596905231,-0.052411168813705,-0.070292264223099,0.001826235791668,-0.048207357525826,-0.193932682275772,0.025231441482902,-0.033234011381865,-0.040330253541470));
res += mul(Get(s2,0,0), float4x4(-0.086037531495094,-0.028886925429106,0.090041667222977,-0.104796871542931,-0.003099452005699,-0.052720256149769,-0.038713805377483,-0.015639415010810,-0.023683710023761,-0.052645146846771,-0.003355337772518,0.014536278322339,-0.144393175840378,-0.006570836994797,-0.027917396277189,-0.075022585690022));
res += mul(Get(s2,0,dy), float4x4(-0.017341403290629,-0.041382919996977,-0.006616175640374,-0.035503268241882,0.052185151726007,-0.037125863134861,0.099977739155293,-0.022762740030885,0.098416775465012,-0.058007519692183,-0.037117488682270,-0.073932439088821,0.085282213985920,0.027100974693894,-0.001810749294236,-0.060073409229517));
res += mul(Get(s2,dx,-dy), float4x4(-0.037708394229412,0.040725503116846,0.119292423129082,0.103199981153011,-0.002002896508202,0.214714437723160,-0.022208608686924,0.240164592862129,-0.105265706777573,-0.041353598237038,0.036730132997036,-0.077691167593002,0.142317995429039,0.061680287122726,-0.022389328107238,-0.035758629441261));
res += mul(Get(s2,dx,0), float4x4(-0.115276217460632,-0.140059456229210,0.027704484760761,-0.150212645530701,0.028112251311541,-0.006492290645838,-0.076797462999821,0.140944167971611,-0.079829148948193,-0.050290744751692,-0.030443182215095,0.008666981942952,-0.053077481687069,-0.050499819219112,0.007083954289556,0.074615441262722));
res += mul(Get(s2,dx,dy), float4x4(-0.070006281137466,-0.004614163655788,0.253904998302460,-0.105332441627979,0.022151067852974,-0.036335349082947,-0.060185715556145,-0.050264634191990,0.001796252676286,0.058542948216200,-0.056108962744474,-0.055202368646860,-0.042053427547216,-0.033755190670490,-0.059440791606903,-0.059486076235771));
res += mul(Get(s3,-dx,-dy), float4x4(-0.004824888426811,-0.103461951017380,0.001083904877305,0.095551766455173,0.059249307960272,0.029231434687972,-0.086543947458267,0.121305041015148,-0.204549878835678,-0.065397806465626,0.053073827177286,0.133074969053268,-0.037989396601915,0.101117715239525,0.011788622476161,-0.003574403701350));
res += mul(Get(s3,-dx,0), float4x4(-0.044317647814751,-0.093418136239052,0.133845180273056,-0.004278720822185,-0.096552729606628,-0.030377566814423,-0.117251880466938,-0.088345646858215,0.025751184672117,-0.058433789759874,-0.096145294606686,0.031588520854712,-0.033456176519394,0.051156453788280,0.006396348588169,0.051416367292404));
res += mul(Get(s3,-dx,dy), float4x4(0.054584737867117,0.054176162928343,0.044592294842005,-0.047870084643364,0.422516494989395,-0.096497528254986,-0.080589205026627,-0.110311649739742,0.077135704457760,0.216453030705452,-0.057148810476065,-0.071074821054935,-0.090622477233410,-0.018280168995261,0.064638108015060,-0.066473253071308));
res += mul(Get(s3,0,-dy), float4x4(-0.010097169317305,0.022285165265203,0.058809310197830,0.146762534976006,0.076441697776318,-0.036879986524582,-0.111792385578156,0.072672322392464,-0.045553646981716,-0.139073505997658,0.004920284263790,0.078181304037571,0.059682339429855,-0.095743596553802,-0.000441731623141,-0.050438199192286));
res += mul(Get(s3,0,0), float4x4(-0.051166359335184,-0.034221742302179,0.040347162634134,-0.058903258293867,-0.033574901521206,-0.067603543400764,-0.147097602486610,-0.044539924710989,0.007803349290043,0.088080354034901,0.001611893880181,0.088202804327011,-0.053107026964426,-0.018844818696380,0.017022637650371,-0.004964580759406));
res += mul(Get(s3,0,dy), float4x4(0.071624957025051,-0.004663814324886,-0.078543223440647,-0.058518517762423,0.041242465376854,-0.099926874041557,0.008461865596473,-0.071278348565102,0.007914166897535,0.170233383774757,0.125224620103836,0.150234550237656,-0.090624503791332,0.136152654886246,-0.058908984065056,-0.067321427166462));
res += mul(Get(s3,dx,-dy), float4x4(0.032481078058481,-0.004327659960836,0.048914536833763,0.014870603568852,0.038612630218267,-0.010550628416240,0.102104008197784,0.121583983302116,0.056891743093729,-0.068887047469616,-0.115866325795650,0.011254360899329,0.024923989549279,-0.014613069593906,-0.058839675039053,-0.034829948097467));
res += mul(Get(s3,dx,0), float4x4(-0.069254130125046,0.008525821380317,0.002697993768379,-0.056872338056564,0.009404836222529,-0.094981789588928,0.017243996262550,0.076216958463192,-0.011898829601705,-0.079294577240944,-0.047211725264788,-0.042264629155397,-0.055277615785599,-0.042864296585321,-0.089932374656200,-0.064815394580364));
res += mul(Get(s3,dx,dy), float4x4(0.062022514641285,0.009169948287308,-0.076929278671741,-0.015993079170585,0.001100615831092,-0.097541540861130,0.057981237769127,-0.017629288136959,-0.000569855328649,0.153778865933418,0.325923532247543,0.232587933540344,0.071830727159977,0.153144150972366,-0.122642546892166,-0.064087904989719));
return max(float4(0,0,0,0), res);
}
