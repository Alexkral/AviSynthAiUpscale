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
res += mul(Get(s0,-dx,-dy), float4x4(-0.035743329674006,0.167404204607010,0.142426833510399,0.018032260239124,0.030339952558279,0.040643833577633,-0.035939313471317,-0.065355516970158,0.038193058222532,-0.041459150612354,-0.123790211975574,0.104107409715652,-0.053493939340115,-0.070683740079403,0.049759104847908,-0.003626169404015));
res += mul(Get(s0,-dx,0), float4x4(-0.042418837547302,0.041888210922480,-0.096766963601112,0.104134112596512,-0.019499054178596,-0.180789619684219,0.067269235849380,-0.080404788255692,-0.018880365416408,0.002260621869937,-0.102701984345913,-0.109021969139576,0.164605185389519,0.002051849849522,0.011573543772101,0.084451705217361));
res += mul(Get(s0,-dx,dy), float4x4(0.039607062935829,-0.016451526433229,0.081566929817200,-0.126698955893517,-0.044435381889343,-0.047857210040092,0.028930578380823,0.003039417555556,-0.176167592406273,-0.067555680871010,0.095151469111443,-0.031913291662931,-0.167379379272461,0.127566426992416,0.122162610292435,-0.030538626015186));
res += mul(Get(s0,0,-dy), float4x4(0.041501618921757,-0.050887215882540,0.072489373385906,-0.001032360247336,-0.019091542810202,-0.039568886160851,-0.108565092086792,0.055293545126915,0.026442298665643,-0.091912195086479,-0.147833198308945,0.017109612002969,-0.009483715519309,-0.115739732980728,0.156237199902534,0.032637268304825));
res += mul(Get(s0,0,0), float4x4(0.086982324719429,-0.087209694087505,0.093727208673954,0.034539259970188,-0.043279007077217,-0.034592896699905,0.142772704362869,0.022550398483872,-0.049246773123741,0.010868822224438,0.067091979086399,-0.194821074604988,0.089575648307800,-0.059207078069448,0.040623735636473,0.032101579010487));
res += mul(Get(s0,0,dy), float4x4(0.014452773146331,0.050393179059029,0.062816232442856,-0.019540863111615,0.112672820687294,-0.047800756990910,-0.045389756560326,-0.105022072792053,0.055510517209768,0.014103770256042,-0.010590264573693,-0.064124606549740,-0.032748475670815,-0.032752290368080,0.011141506023705,-0.040939845144749));
res += mul(Get(s0,dx,-dy), float4x4(-0.130473151803017,-0.065020740032196,-0.115130268037319,0.127846762537956,-0.014213676564395,-0.091057538986206,0.077083028852940,0.036781821399927,-0.204677522182465,0.030634019523859,-0.027748592197895,0.216233626008034,-0.171357244253159,-0.064769044518471,-0.018568370491266,-0.092691913247108));
res += mul(Get(s0,dx,0), float4x4(0.138837829232216,-0.009798703715205,-0.082540348172188,-0.007709681987762,0.018952434882522,-0.057761218398809,0.068138472735882,-0.070156328380108,-0.100804574787617,-0.043090026825666,-0.084246881306171,0.176642730832100,0.015511150471866,-0.129622593522072,0.009259241633117,-0.092474393546581));
res += mul(Get(s0,dx,dy), float4x4(0.171456605195999,0.105825178325176,-0.089797362685204,0.163472518324852,-0.069554135203362,0.077049978077412,0.056794285774231,0.016710054129362,-0.103883646428585,0.097200952470303,0.241522997617722,-0.064235664904118,0.023504724726081,0.019988812506199,-0.009107038378716,0.033627405762672));
res += mul(Get(s1,-dx,-dy), float4x4(0.081553533673286,0.029427899047732,0.075955778360367,-0.023266667500138,-0.040355876088142,-0.136210486292839,-0.188629746437073,0.012660395354033,-0.052956849336624,0.200815781950951,-0.024049695581198,-0.066924214363098,0.205276295542717,-0.000956769683398,-0.013310815207660,0.103994719684124));
res += mul(Get(s1,-dx,0), float4x4(0.098929062485695,0.027499308809638,0.082706376910210,0.118999250233173,0.123618394136429,-0.011099303141236,-0.085081651806831,-0.070814013481140,0.072722330689430,-0.127412304282188,-0.020916527137160,-0.193112060427666,0.006230163387954,-0.030582217499614,0.027144750580192,-0.122646309435368));
res += mul(Get(s1,-dx,dy), float4x4(-0.091332189738750,0.044591959565878,0.163717314600945,-0.101175218820572,-0.110708698630333,-0.124703332781792,-0.004011772572994,0.025742316618562,0.113634288311005,0.089408487081528,0.061336711049080,0.067561320960522,0.043353486806154,0.138470456004143,0.039134893566370,0.041293721646070));
res += mul(Get(s1,0,-dy), float4x4(0.105887144804001,0.033924639225006,0.043005563318729,-0.198436483740807,-0.102129712700844,-0.027972331270576,0.062625408172607,0.220314100384712,0.000840746040922,-0.178490534424782,0.072122886776924,0.025770105421543,0.132805287837982,0.002742417855188,0.123578153550625,-0.007712569087744));
res += mul(Get(s1,0,0), float4x4(-0.046666145324707,-0.027239028364420,-0.016875868663192,-0.083224415779114,-0.111390508711338,0.014751175418496,-0.210647866129875,-0.041209980845451,0.074750356376171,0.053384020924568,-0.065837934613228,-0.126602962613106,-0.021339582279325,-0.028120618313551,0.092075847089291,0.047728501260281));
res += mul(Get(s1,0,dy), float4x4(0.059316828846931,-0.039251431822777,-0.028938736766577,0.058213107287884,-0.198325619101524,-0.113419972360134,0.076541349291801,-0.022185616195202,0.115637592971325,-0.017456114292145,0.001495505101047,0.008697268553078,0.010876123793423,0.017789848148823,0.082346424460411,0.142605915665627));
res += mul(Get(s1,dx,-dy), float4x4(-0.075801588594913,-0.225436180830002,0.027722090482712,-0.058470834046602,0.052543196827173,0.010724228806794,-0.216882377862930,-0.250491946935654,0.045942638069391,0.038592156022787,0.143909379839897,-0.009974333457649,0.182988137006760,-0.049361776560545,-0.014047902077436,0.099773645401001));
res += mul(Get(s1,dx,0), float4x4(0.058070283383131,0.076637797057629,0.163149908185005,-0.093330353498459,-0.044236119836569,0.025658238679171,-0.120735593140125,-0.046154361218214,-0.058324769139290,-0.053441662341356,0.046484649181366,-0.116345800459385,0.077256679534912,0.034883331507444,0.050786919891834,-0.070147022604942));
res += mul(Get(s1,dx,dy), float4x4(0.008839220739901,-0.072761557996273,0.066957145929337,0.004354027099907,0.111081622540951,0.009589721448720,0.061188187450171,0.002809288445860,-0.121295422315598,0.311884880065918,-0.033377066254616,-0.146837577223778,0.161757647991180,-0.014105867594481,-0.098927102982998,0.048603069037199));
res += mul(Get(s2,-dx,-dy), float4x4(-0.067081615328789,0.076522573828697,0.164833456277847,0.104843571782112,0.036456298083067,-0.127807557582855,-0.167562648653984,0.069898396730423,0.007901287637651,-0.081569306552410,0.087706930935383,-0.043942723423243,0.042392004281282,-0.050534099340439,-0.155336007475853,-0.072739429771900));
res += mul(Get(s2,-dx,0), float4x4(0.057433910667896,0.017252335324883,0.105599723756313,0.030175490304828,0.072267107665539,-0.025496203452349,0.041257034987211,0.011759112589061,0.053189445286989,-0.114301994442940,-0.243589535355568,-0.183780565857887,-0.018205393105745,-0.268645763397217,0.160646617412567,0.018105359748006));
res += mul(Get(s2,-dx,dy), float4x4(0.076602280139923,0.045431323349476,0.092883944511414,-0.277009248733521,0.025576677173376,-0.112161137163639,0.050340536981821,-0.127256572246552,0.080301173031330,0.012697430327535,0.000119201351481,-0.110715992748737,0.012509038671851,-0.259820848703384,-0.047799762338400,0.037713609635830));
res += mul(Get(s2,0,-dy), float4x4(-0.147666797041893,0.015730103477836,-0.000671693182085,-0.104751028120518,0.098037488758564,0.122895061969757,0.140697941184044,-0.138233169913292,-0.059374395757914,-0.139887601137161,-0.069861888885498,0.004719104617834,-0.092027530074120,0.099837541580200,-0.015412091277540,-0.026703860610723));
res += mul(Get(s2,0,0), float4x4(-0.176900207996368,-0.128019854426384,-0.008820331655443,0.037941787391901,0.052109614014626,-0.089785560965538,-0.042890332639217,-0.070694670081139,0.078106544911861,0.153900027275085,-0.143160730600357,0.007189969066530,0.105321496725082,-0.014118890278041,-0.014502914622426,0.052732165902853));
res += mul(Get(s2,0,dy), float4x4(-0.009599640034139,0.008291536942124,0.008460800163448,-0.112324193120003,-0.085396654903889,-0.066159613430500,-0.196985781192780,0.070554807782173,-0.024596197530627,-0.057817332446575,-0.012176441028714,0.055574111640453,0.189679652452469,-0.236455157399178,-0.029520209878683,0.006006687413901));
res += mul(Get(s2,dx,-dy), float4x4(-0.083914287388325,-0.137012809514999,0.135415092110634,0.013077455572784,0.071282863616943,0.123424701392651,-0.082347452640533,-0.023185221478343,-0.131299838423729,0.027763355523348,0.095290005207062,-0.124118238687515,0.106301464140415,0.150032177567482,0.116145484149456,-0.101087890565395));
res += mul(Get(s2,dx,0), float4x4(0.082892902195454,0.026577474549413,0.031037615612149,0.016630355268717,0.111672267317772,0.031544718891382,0.151400044560432,0.045781623572111,0.042993187904358,-0.096984654664993,0.049942389130592,0.173712611198425,0.056631699204445,0.248923540115356,-0.012950863689184,-0.018943695351481));
res += mul(Get(s2,dx,dy), float4x4(0.059212308377028,0.093001775443554,0.053119346499443,-0.005277948454022,-0.044017657637596,0.075499780476093,0.058308389037848,0.071530908346176,0.032655093818903,0.062449842691422,0.156917691230774,-0.012327710166574,-0.071690298616886,0.056064154952765,-0.058100879192352,0.195068612694740));
res += mul(Get(s3,-dx,-dy), float4x4(0.076542183756828,-0.123500265181065,0.027988355606794,-0.083047933876514,-0.025843538343906,-0.104402862489223,-0.029508559033275,-0.029304858297110,-0.173331886529922,-0.108276367187500,-0.004699999000877,0.189542904496193,0.168368816375732,-0.014616371132433,-0.156357809901237,-0.074315592646599));
res += mul(Get(s3,-dx,0), float4x4(-0.066777795553207,0.041686322540045,0.007835458032787,0.162108525633812,0.029076030477881,-0.035343553870916,0.104154631495476,-0.059133976697922,-0.050382811576128,-0.131716310977936,0.007328110747039,-0.108719348907471,-0.109206505119801,0.102856308221817,0.062266848981380,0.054838307201862));
res += mul(Get(s3,-dx,dy), float4x4(-0.016780316829681,-0.009516047313809,0.162990957498550,0.064210712909698,-0.010390344075859,0.042917344719172,-0.096957698464394,0.087911702692509,0.073290660977364,-0.135642439126968,0.022810196503997,-0.046507108956575,-0.194160461425781,0.108797997236252,0.039180170744658,-0.007551240269095));
res += mul(Get(s3,0,-dy), float4x4(-0.039751905947924,0.099934495985508,0.109116353094578,-0.072877585887909,0.060679294168949,-0.089254148304462,0.056453071534634,-0.094172395765781,0.167603969573975,-0.006960176397115,-0.055859606713057,0.074845246970654,0.027016531676054,0.184741556644440,0.060364905744791,0.018969863653183));
res += mul(Get(s3,0,0), float4x4(-0.169726207852364,-0.156229972839355,0.048133607953787,-0.017627650871873,-0.041295070201159,0.067668199539185,0.023702055215836,-0.017588846385479,0.209187552332878,-0.130310967564583,0.056164570152760,0.119340568780899,-0.000103736922028,0.086398623883724,0.009157972410321,-0.019222857430577));
res += mul(Get(s3,0,dy), float4x4(0.061300825327635,-0.036162443459034,-0.087294928729534,-0.180739790201187,-0.005630024243146,0.056371461600065,-0.040953017771244,-0.006921997759491,0.001065538148396,-0.034164577722549,-0.051939882338047,-0.118780307471752,0.017287189140916,0.165857464075089,0.123250618577003,-0.236485868692398));
res += mul(Get(s3,dx,-dy), float4x4(-0.037077154964209,-0.149968102574348,0.097806394100189,0.065370887517929,-0.044437300413847,0.189184293150902,-0.027848474681377,0.005011866800487,0.125110805034637,0.046931713819504,0.051741067320108,-0.060946371406317,-0.162033572793007,-0.081188611686230,-0.040439032018185,-0.272462218999863));
res += mul(Get(s3,dx,0), float4x4(0.005329005420208,0.012045597657561,-0.013334587216377,-0.013922696001828,0.006687427870929,0.016487900167704,0.038592748343945,0.108444757759571,0.086901865899563,0.087135143578053,0.100281015038490,0.000219450739678,0.058254830539227,-0.054971341043711,0.088001035153866,-0.069487161934376));
res += mul(Get(s3,dx,dy), float4x4(0.100160144269466,-0.166781991720200,-0.052096243947744,-0.083821095526218,0.062541946768761,0.061378005892038,0.008854307234287,-0.013709775172174,-0.166027665138245,0.065754510462284,0.065971001982689,-0.043062951415777,-0.087766289710999,-0.025015173479915,0.093533948063850,-0.030494783073664));
return max(float4(0,0,0,0), res);
}
