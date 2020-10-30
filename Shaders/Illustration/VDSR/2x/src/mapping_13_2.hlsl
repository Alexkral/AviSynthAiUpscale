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
res += mul(Get(s0,-dx,-dy), float4x4(-0.050778415054083,-0.079607486724854,-0.079209081828594,0.017327941954136,0.100581780076027,0.098196089267731,0.143805980682373,0.111042670905590,0.072130098938942,-0.048325292766094,0.071934685111046,-0.076171062886715,0.124115705490112,0.124160066246986,0.094017423689365,0.170551896095276));
res += mul(Get(s0,-dx,0), float4x4(-0.176448285579681,-0.038706976920366,-0.027027735486627,-0.139210566878319,0.103932008147240,-0.129869163036346,0.100384041666985,0.048516061156988,-0.038723487406969,-0.148112311959267,-0.032629240304232,-0.078566178679466,-0.018611706793308,-0.057951405644417,-0.017724379897118,0.154071867465973));
res += mul(Get(s0,-dx,dy), float4x4(-0.095628850162029,0.101510822772980,-0.075605988502502,-0.056018721312284,0.095401220023632,-0.090635769069195,0.094189167022705,0.029625900089741,0.079259574413300,0.255053281784058,-0.007247989997268,-0.093674153089523,0.021259849891067,0.026374544948339,0.053226102143526,0.084783680737019));
res += mul(Get(s0,0,-dy), float4x4(0.161499381065369,0.086412183940411,0.191092625260353,-0.041256874799728,-0.062350515276194,0.072411499917507,-0.009459493681788,0.134477317333221,0.031138468533754,0.113726347684860,0.093368649482727,0.020682537928224,0.119848176836967,0.105185382068157,0.108371779322624,0.038910649716854));
res += mul(Get(s0,0,0), float4x4(0.072823219001293,-0.164235070347786,0.098911300301552,-0.207747444510460,0.057059708982706,0.049708884209394,-0.165655776858330,0.057698890566826,-0.021129481494427,-0.123254328966141,-0.037366908043623,-0.001448912778869,0.145901784300804,0.065233506262302,-0.042893361300230,0.147357627749443));
res += mul(Get(s0,0,dy), float4x4(0.156244859099388,-0.101562358438969,-0.028304979205132,0.061690878123045,0.044626921415329,0.137786000967026,-0.001317406538874,0.120421536266804,-0.058072213083506,0.009510887786746,-0.062359321862459,0.008177439682186,0.086762376129627,0.056470584124327,0.028660459443927,-0.079270981252193));
res += mul(Get(s0,dx,-dy), float4x4(0.011662934906781,0.055755287408829,0.094099685549736,-0.043976429849863,-0.025411900132895,-0.113540083169937,-0.019413670524955,0.023531708866358,-0.013784582726657,0.216406762599945,0.011879439465702,0.025669679045677,0.026395980268717,0.053941488265991,-0.027815012261271,0.119359053671360));
res += mul(Get(s0,dx,0), float4x4(0.278510630130768,0.018461730331182,0.026228178292513,-0.042552057653666,-0.067675262689590,-0.090184308588505,-0.125974297523499,-0.046624355018139,0.051564812660217,0.061287805438042,-0.026955218985677,0.101936392486095,0.071307636797428,0.100411102175713,0.003102522809058,0.146934166550636));
res += mul(Get(s0,dx,dy), float4x4(0.139980912208557,-0.085972793400288,0.047166593372822,0.071076288819313,-0.025459224358201,-0.169257074594498,-0.049523930996656,0.070632234215736,0.078909598290920,-0.021581981331110,-0.032336682081223,0.041615776717663,0.010095544159412,0.128272518515587,-0.033201273530722,0.092996388673782));
res += mul(Get(s1,-dx,-dy), float4x4(-0.057668041437864,0.030382527038455,0.023176018148661,-0.030804157257080,-0.042354520410299,-0.007415338419378,0.011759518645704,-0.145893141627312,-0.136534243822098,0.009903891012073,0.006730349734426,-0.118580624461174,-0.164519086480141,-0.119096137583256,0.141465634107590,-0.030712356790900));
res += mul(Get(s1,-dx,0), float4x4(-0.157982259988785,-0.104750566184521,-0.022366134449840,-0.055321164429188,0.001602777861990,0.055668246001005,0.016065519303083,-0.129670724272728,-0.180863544344902,0.133878394961357,-0.058383628726006,0.143161103129387,-0.240186631679535,-0.094972006976604,-0.036039017140865,-0.082192003726959));
res += mul(Get(s1,-dx,dy), float4x4(-0.049282856285572,-0.003701413748786,0.119196400046349,0.019319454208016,0.023603206500411,0.237136423587799,-0.024575883522630,-0.136371567845345,-0.108708672225475,0.000261410343228,0.007269131019711,-0.024265110492706,0.070324525237083,0.012472441419959,0.023081839084625,-0.021645106375217));
res += mul(Get(s1,0,-dy), float4x4(-0.102680943906307,-0.009908677078784,-0.109224498271942,-0.008361045271158,0.064447991549969,-0.009793294593692,0.235558182001114,-0.085672773420811,-0.134326606988907,-0.140516132116318,-0.020867353305221,-0.005197796504945,-0.054830040782690,0.028713058680296,-0.050378825515509,0.081687927246094));
res += mul(Get(s1,0,0), float4x4(-0.217701673507690,-0.078102864325047,-0.111603759229183,0.099467918276787,0.089848130941391,-0.094579003751278,0.030676096677780,0.022070342674851,-0.184421375393867,0.056348942220211,0.024782858788967,0.039862636476755,-0.119269214570522,-0.037200503051281,-0.143561542034149,0.074507437646389));
res += mul(Get(s1,0,dy), float4x4(-0.074363090097904,-0.052515681833029,0.019863294437528,0.037243839353323,0.009122676216066,-0.072431698441505,0.109614573419094,0.033648505806923,-0.263644963502884,-0.013311075977981,-0.048729848116636,-0.028507089242339,-0.095217131078243,-0.028541596606374,-0.134514048695564,-0.007861547172070));
res += mul(Get(s1,dx,-dy), float4x4(-0.101193457841873,0.057373426854610,-0.121527105569839,0.099731892347336,-0.073053725063801,-0.094458788633347,-0.071933433413506,-0.108286790549755,-0.130540803074837,-0.142947942018509,0.063642106950283,-0.009063649922609,0.009898680262268,-0.131165102124214,-0.033538751304150,-0.045227590948343));
res += mul(Get(s1,dx,0), float4x4(-0.092088311910629,0.152416929602623,-0.006814773194492,0.120649382472038,0.109710626304150,-0.029609341174364,0.014064013957977,-0.036137633025646,-0.233352884650230,-0.060648873448372,0.086010396480560,0.073290154337883,-0.042069487273693,-0.008050210773945,-0.058830559253693,-0.076573014259338));
res += mul(Get(s1,dx,dy), float4x4(-0.054341752082109,0.038111131638288,0.061995502561331,0.033652573823929,0.038689855486155,-0.051133994013071,0.050717063248158,0.035775937139988,-0.167103499174118,0.096753261983395,-0.108162097632885,-0.051439523696899,-0.032881595194340,0.063856109976768,-0.142940491437912,-0.078411884605885));
res += mul(Get(s2,-dx,-dy), float4x4(-0.024051696062088,0.043910704553127,0.273442745208740,0.031645715236664,0.062746532261372,0.014592462219298,-0.068914905190468,-0.060259573161602,0.100501857697964,0.108907505869865,-0.061549082398415,0.045343194156885,-0.064791120588779,0.087345875799656,-0.089790083467960,0.055429525673389));
res += mul(Get(s2,-dx,0), float4x4(0.021000724285841,-0.053888883441687,0.160199746489525,0.000880714564119,0.045479085296392,0.029583239927888,0.016291610896587,0.033875230699778,-0.114099502563477,0.168241709470749,-0.162842363119125,-0.018844204023480,-0.018535565584898,-0.063058212399483,-0.039732433855534,-0.006038271822035));
res += mul(Get(s2,-dx,dy), float4x4(-0.004321247339249,-0.112863652408123,0.089540690183640,-0.043126992881298,-0.017217200249434,-0.032728292047977,0.018146133050323,0.092755526304245,-0.102788552641869,0.113887995481491,-0.100213125348091,-0.071429446339607,-0.036812189966440,-0.247581854462624,0.060625415295362,-0.059567376971245));
res += mul(Get(s2,0,-dy), float4x4(0.045903410762548,0.014097728766501,0.131293967366219,-0.029000548645854,0.250747561454773,-0.024123096838593,0.021763663738966,0.014810064807534,0.246088042855263,0.218562230467796,-0.058164454996586,-0.007566677872092,0.000006136237971,0.152026206254959,0.070200271904469,-0.054770402610302));
res += mul(Get(s2,0,0), float4x4(0.059114523231983,0.137317761778831,0.075545392930508,-0.020219847559929,0.222216472029686,-0.005754055455327,0.025973008945584,-0.043840520083904,-0.152118712663651,0.028764097020030,-0.173264846205711,-0.160394713282585,-0.185835123062134,-0.082767739892006,-0.109288863837719,-0.158087715506554));
res += mul(Get(s2,0,dy), float4x4(-0.056137681007385,0.059617169201374,-0.028665238991380,-0.185443684458733,0.079018794000149,0.015980256721377,-0.016796441748738,-0.020171102136374,-0.139494717121124,0.060449376702309,-0.018289253115654,-0.043851625174284,-0.070513054728508,-0.034111291170120,-0.039023134857416,-0.113731212913990));
res += mul(Get(s2,dx,-dy), float4x4(0.048266123980284,-0.028450571000576,0.055624816566706,0.169833734631538,0.031570933759212,0.018440706655383,0.270555227994919,0.010231637395918,0.030828738585114,0.237011417746544,0.130155712366104,0.015564796514809,-0.030626451596618,0.235511749982834,-0.013692840002477,0.037988007068634));
res += mul(Get(s2,dx,0), float4x4(-0.061646480113268,-0.061018571257591,-0.033807005733252,0.137962311506271,0.064163655042648,-0.073160536587238,0.150494396686554,-0.085924923419952,0.085764102637768,-0.052486412227154,-0.014217394404113,-0.212831929326057,0.028515378013253,-0.010768301784992,-0.013992590829730,-0.150097489356995));
res += mul(Get(s2,dx,dy), float4x4(-0.126553460955620,0.090834967792034,-0.061594881117344,0.113101981580257,0.044742096215487,-0.099096134305000,0.001511130132712,-0.012451048940420,-0.095061838626862,-0.061582524329424,0.069927871227264,-0.085061393678188,-0.009665607474744,0.040213529020548,-0.023542337119579,-0.031648918986320));
res += mul(Get(s3,-dx,-dy), float4x4(0.004458113573492,0.008665132336318,-0.001160992193036,0.171064063906670,0.066205397248268,0.015493582002819,0.136035487055779,0.098204903304577,-0.119098708033562,0.060466557741165,0.042553726583719,0.085456721484661,0.155191138386726,-0.064248390495777,0.040046643465757,0.142132431268692));
res += mul(Get(s3,-dx,0), float4x4(0.201753333210945,-0.005519036669284,-0.034281075000763,0.135714679956436,0.027070863172412,0.000268532108748,0.034636527299881,0.057211339473724,0.034956771880388,-0.023345097899437,0.188841700553894,0.054335344582796,0.013986786827445,-0.086452186107635,0.114110395312309,0.043159242719412));
res += mul(Get(s3,-dx,dy), float4x4(0.071921579539776,-0.112174987792969,-0.033431090414524,-0.085028946399689,0.003605848178267,-0.094394080340862,0.037805575877428,-0.019078930839896,0.036246743053198,-0.092194825410843,0.111460201442242,0.040352277457714,0.043161787092686,-0.056802310049534,0.019140293821692,-0.012363305315375));
res += mul(Get(s3,0,-dy), float4x4(0.102439984679222,-0.024979820474982,-0.010794661007822,0.307490050792694,0.074631750583649,0.031843915581703,0.018747201189399,0.152069732546806,0.023988246917725,-0.003596512367949,-0.026875942945480,-0.070779576897621,0.078370317816734,-0.073531590402126,0.081624321639538,0.118822969496250));
res += mul(Get(s3,0,0), float4x4(0.174039885401726,0.028579518198967,0.106732718646526,-0.149351939558983,-0.099743708968163,0.147044047713280,-0.115812160074711,0.072291336953640,0.009710947051644,0.000266178627498,0.073767840862274,0.044158574193716,0.029103536158800,-0.011111899279058,0.057917747646570,-0.027189349755645));
res += mul(Get(s3,0,dy), float4x4(-0.045822877436876,-0.035276263952255,-0.069693051278591,-0.104219652712345,-0.044006995856762,0.043940573930740,-0.003465651767328,0.050086729228497,0.129090353846550,0.152622342109680,0.039403356611729,0.016941161826253,-0.020766166970134,-0.031867183744907,-0.059247855097055,0.002189016435295));
res += mul(Get(s3,dx,-dy), float4x4(0.089006543159485,-0.101566269993782,0.021446198225021,0.089459240436554,0.080388478934765,0.162584006786346,0.162856325507164,0.077904261648655,0.026419911533594,0.038898460566998,0.130759492516518,-0.000933200994041,0.052640918642282,-0.001409220392816,0.037739843130112,0.023766100406647));
res += mul(Get(s3,dx,0), float4x4(-0.027691805735230,0.079007446765900,-0.084727749228477,-0.144441634416580,0.025915399193764,0.005652427207679,0.105438493192196,-0.022440429776907,-0.052084345370531,-0.014207572676241,0.112110562622547,0.159367799758911,0.093363195657730,0.035564031451941,-0.099637262523174,-0.008238570764661));
res += mul(Get(s3,dx,dy), float4x4(-0.155318439006805,0.083756193518639,-0.150541037321091,0.125298306345940,0.102322071790695,0.055747132748365,0.030713070183992,-0.099356278777122,0.034689120948315,0.234558224678040,0.083683446049690,0.084210924804211,0.097442917525768,0.170719996094704,-0.020741790533066,0.025892285630107));
return max(float4(0,0,0,0), res);
}
