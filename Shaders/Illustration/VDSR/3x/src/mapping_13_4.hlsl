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
res += mul(Get(s0,-dx,-dy), float4x4(-0.012798333540559,0.066977925598621,0.018423903733492,0.005863334517926,-0.043050069361925,0.000071116694016,-0.024243954569101,0.189425870776176,-0.029956301674247,0.040658582001925,0.042543411254883,0.001249457593076,-0.028374399989843,0.092111907899380,0.168964117765427,-0.182376757264137));
res += mul(Get(s0,-dx,0), float4x4(0.057424630969763,0.067853994667530,0.180185049772263,-0.022895857691765,0.055142275989056,0.087832108139992,0.205504611134529,0.087066121399403,-0.025171684101224,-0.259713113307953,0.020871102809906,-0.093704991042614,-0.044394660741091,0.077922448515892,0.152506411075592,0.079742111265659));
res += mul(Get(s0,-dx,dy), float4x4(-0.024486744776368,-0.037663754075766,-0.001802639686503,0.034160964190960,0.048067662864923,0.029394570738077,0.162679448723793,0.013410617597401,0.026928458362818,0.104215756058693,0.125260919332504,0.109791629016399,0.020843978971243,0.314012706279755,0.009358109906316,0.033342152833939));
res += mul(Get(s0,0,-dy), float4x4(0.118633322417736,0.004401466343552,-0.117798335850239,0.089537106454372,0.042348090559244,0.019655456766486,0.017159616574645,0.187516674399376,0.230989634990692,0.076076790690422,-0.132230699062347,-0.024367064237595,-0.102676048874855,-0.050164557993412,-0.180980682373047,-0.073337785899639));
res += mul(Get(s0,0,0), float4x4(0.115674167871475,-0.032372485846281,0.222032904624939,0.081101290881634,0.060376849025488,-0.009402833878994,0.117266505956650,0.101104021072388,0.060890045017004,-0.202718690037727,-0.103404775261879,-0.171559050679207,-0.068194679915905,-0.133011162281036,-0.043398901820183,0.030925918370485));
res += mul(Get(s0,0,dy), float4x4(-0.084130130708218,-0.006938614416867,0.138703197240829,0.027012072503567,0.107184059917927,0.047566115856171,-0.112218998372555,0.108965724706650,0.025422524660826,-0.134328976273537,0.095975533127785,-0.022196948528290,-0.069835335016251,-0.041372187435627,0.158950299024582,0.059983372688293));
res += mul(Get(s0,dx,-dy), float4x4(0.043721593916416,0.020471634343266,-0.330992162227631,0.010188634507358,0.002815285697579,0.075884938240051,0.165383368730545,0.057503875344992,-0.051374353468418,0.193909436464310,-0.036321654915810,0.025323200970888,0.108553618192673,0.009047819301486,-0.075497806072235,-0.062900103628635));
res += mul(Get(s0,dx,0), float4x4(-0.125364705920219,0.014667801558971,0.099706731736660,0.082922779023647,0.001768345246091,0.201798856258392,-0.087789781391621,0.063889965415001,-0.261407017707825,0.009986453689635,0.200362846255302,-0.229898720979691,-0.025621388107538,-0.233049392700195,-0.013115891255438,0.011003862135112));
res += mul(Get(s0,dx,dy), float4x4(-0.033195421099663,0.118382595479488,0.230200201272964,0.074950493872166,-0.080523632466793,-0.023666188120842,-0.220431491732597,-0.006408247165382,0.061524990946054,-0.053509250283241,-0.058400299400091,-0.253740698099136,-0.172512680292130,0.130192741751671,-0.192571610212326,-0.057832263410091));
res += mul(Get(s1,-dx,-dy), float4x4(0.098938383162022,0.078302867710590,0.017305027693510,0.021287333220243,-0.257948547601700,0.006290071178228,-0.022448236122727,-0.104681596159935,-0.114964947104454,-0.055330693721771,-0.031983606517315,-0.003029457991943,-0.023427480831742,-0.035570308566093,-0.184013113379478,-0.125299021601677));
res += mul(Get(s1,-dx,0), float4x4(0.074168838560581,-0.105743996798992,-0.001015163608827,0.040129166096449,0.102081269025803,0.082214102149010,-0.061009753495455,-0.031661070883274,-0.059983480721712,0.114624239504337,0.268596470355988,0.031502753496170,0.063544809818268,-0.044281136244535,0.018137713894248,-0.033671248704195));
res += mul(Get(s1,-dx,dy), float4x4(0.045284196734428,-0.097810305655003,0.087713427841663,0.035199783742428,-0.051373586058617,-0.130681067705154,0.110985711216927,0.150564312934875,-0.083430953323841,-0.106444001197815,0.011605487205088,-0.087499849498272,-0.016380220651627,-0.192496091127396,-0.101093359291553,0.064409963786602));
res += mul(Get(s1,0,-dy), float4x4(0.091588273644447,0.040549840778112,-0.130806222558022,-0.021461362019181,-0.148921340703964,-0.018793098628521,-0.023823782801628,-0.082037791609764,0.032787743955851,-0.011232502758503,-0.049346391111612,-0.019773926585913,0.042375851422548,0.016200419515371,-0.260662376880646,-0.208490505814552));
res += mul(Get(s1,0,0), float4x4(0.039284400641918,0.013996908441186,0.001398381893523,-0.053166013211012,-0.133881703019142,-0.067537739872932,-0.044277746230364,-0.122927933931351,0.122542724013329,0.001633701729588,0.111269108951092,0.150024473667145,-0.094264969229698,-0.126294508576393,0.016252795234323,-0.231556996703148));
res += mul(Get(s1,0,dy), float4x4(0.046496547758579,-0.177742362022400,-0.049966953694820,0.083736121654510,0.137919545173645,-0.127568677067757,-0.052249919623137,-0.073767229914665,-0.031255833804607,-0.003056728048250,-0.200474917888641,-0.033901825547218,0.150655537843704,-0.162910521030426,0.055355366319418,-0.077238455414772));
res += mul(Get(s1,dx,-dy), float4x4(0.164248198270798,0.039896003901958,-0.064081706106663,-0.030088949948549,0.054757356643677,0.059552721679211,-0.001658015768044,-0.332991689443588,-0.043342202901840,0.116310529410839,-0.149599418044090,-0.037398621439934,-0.136730790138245,0.056420151144266,-0.045171290636063,-0.118919223546982));
res += mul(Get(s1,dx,0), float4x4(0.130656972527504,0.093459345400333,0.152853310108185,0.036956138908863,0.154452785849571,-0.014739123173058,0.123846493661404,-0.186323821544647,-0.021510535851121,-0.034000463783741,0.240543767809868,0.023310676217079,0.060185674577951,0.071764342486858,0.315164804458618,-0.257030993700027));
res += mul(Get(s1,dx,dy), float4x4(0.063875786960125,-0.202709019184113,-0.194629237055779,0.027883466333151,0.094192348420620,-0.067213669419289,-0.144403740763664,-0.048800833523273,-0.036578480154276,-0.035078916698694,-0.099636398255825,-0.053975004702806,-0.108342394232750,-0.076371639966965,-0.076713643968105,-0.281024545431137));
res += mul(Get(s2,-dx,-dy), float4x4(0.027816994115710,-0.069909147918224,0.107257992029190,-0.024824697524309,0.062358036637306,-0.007144664414227,-0.189279749989510,-0.371501535177231,-0.077617697417736,-0.099347040057182,-0.254888445138931,0.189400970935822,-0.068025372922421,0.066603876650333,-0.126987040042877,-0.029701266437769));
res += mul(Get(s2,-dx,0), float4x4(0.005599405150861,-0.147277191281319,0.067255467176437,-0.059321176260710,-0.045589733868837,-0.061590202152729,-0.081271901726723,-0.147431656718254,-0.147887215018272,0.010735020972788,0.343553155660629,-0.007739716209471,-0.102176502346992,0.031530734151602,-0.080097705125809,-0.015460516326129));
res += mul(Get(s2,-dx,dy), float4x4(-0.067630209028721,0.070468887686729,-0.023160675540566,-0.098084457218647,-0.146869525313377,-0.076199740171432,-0.023563237860799,-0.140678271651268,-0.100654460489750,-0.098259679973125,0.048540197312832,-0.096838429570198,-0.117739111185074,-0.098347313702106,0.051500909030437,0.023460410535336));
res += mul(Get(s2,0,-dy), float4x4(-0.041771054267883,0.005997626576573,0.061288911849260,0.177370801568031,0.063535034656525,-0.142608731985092,-0.091811195015907,-0.238007590174675,-0.106717348098755,-0.054458390921354,-0.181274458765984,0.083966642618179,-0.199622035026550,0.131549149751663,-0.054901883006096,-0.004920781124383));
res += mul(Get(s2,0,0), float4x4(-0.113075971603394,-0.028764855116606,0.144290104508400,0.225183680653572,-0.067135095596313,0.091917015612125,0.006816984154284,-0.161082491278648,-0.007895608432591,0.015280967578292,0.050219006836414,0.101654380559921,-0.025338735431433,-0.070828214287758,-0.176059395074844,0.035812344402075));
res += mul(Get(s2,0,dy), float4x4(-0.090537309646606,-0.060167882591486,0.008238550275564,0.146981745958328,-0.024984201416373,0.032523646950722,0.043014243245125,-0.035254113376141,-0.055731724947691,0.009241294115782,0.121458545327187,-0.019710166379809,0.107166901230812,-0.172112509608269,-0.198405638337135,0.020916994661093));
res += mul(Get(s2,dx,-dy), float4x4(0.117367230355740,-0.032337430864573,0.088395938277245,0.175159171223640,-0.042345102876425,-0.252433508634567,-0.094045914709568,-0.140111133456230,0.002320253290236,0.162459164857864,-0.172927409410477,0.116545513272285,0.011138821952045,0.359502941370010,-0.096924103796482,0.026200810447335));
res += mul(Get(s2,dx,0), float4x4(-0.213053345680237,0.081626057624817,0.055725950747728,0.115539900958538,-0.144851833581924,-0.106548771262169,-0.009975759312510,0.035875689238310,0.045019552111626,0.025621725246310,-0.049486488103867,0.128074482083321,0.148272231221199,-0.214779779314995,0.062983453273773,-0.104084908962250));
res += mul(Get(s2,dx,dy), float4x4(-0.171639814972878,0.024236304685473,-0.027107687667012,-0.074506439268589,0.103208780288696,-0.049540389329195,0.050547573715448,0.055189147591591,-0.022686680778861,0.014000363647938,-0.062023274600506,0.061736155301332,0.220853120088577,-0.190847575664520,-0.024686675518751,0.121735379099846));
res += mul(Get(s3,-dx,-dy), float4x4(0.076110057532787,-0.093340270221233,-0.093659713864326,-0.082318432629108,-0.052219737321138,-0.120389960706234,-0.086486101150513,-0.022195817902684,-0.019508695229888,0.054413259029388,-0.035114798694849,-0.071892678737640,-0.032197535037994,-0.038679484277964,0.095163159072399,-0.070578485727310));
res += mul(Get(s3,-dx,0), float4x4(0.001155176316388,0.088409282267094,0.337660193443298,-0.048188339918852,-0.056381180882454,0.034837946295738,-0.026843022555113,0.052271511405706,-0.070754863321781,0.071560442447662,-0.192816734313965,0.023614833131433,-0.149123206734657,0.098469205200672,0.160968557000160,-0.092261403799057));
res += mul(Get(s3,-dx,dy), float4x4(0.050871379673481,-0.071992389857769,-0.124285124242306,-0.061270266771317,-0.006467598024756,0.138236328959465,-0.061015479266644,-0.013811901211739,0.018111599609256,0.034661214798689,0.037495393306017,-0.055490944534540,0.014216572977602,-0.103939168155193,0.034826647490263,0.161051690578461));
res += mul(Get(s3,0,-dy), float4x4(-0.018968887627125,-0.001275870832615,-0.019961597397923,0.074552841484547,0.078158348798752,0.019262801855803,0.016396690160036,-0.139139369130135,-0.034456104040146,-0.058792050927877,-0.017550559714437,-0.125363156199455,-0.092936433851719,0.024721378460526,-0.127964735031128,-0.049681957811117));
res += mul(Get(s3,0,0), float4x4(-0.025168240070343,0.062812708318233,-0.076903685927391,0.194202288985252,-0.086821459233761,-0.088118262588978,-0.122106015682220,0.022003814578056,-0.175693005323410,0.013171635568142,-0.010229215957224,-0.107731327414513,0.068610236048698,0.086357697844505,-0.085936069488525,-0.071622379124165));
res += mul(Get(s3,0,dy), float4x4(-0.060164667665958,0.137364313006401,-0.151653498411179,-0.005167006049305,-0.057598862797022,-0.016067938879132,0.037287760525942,0.033076632767916,0.133686646819115,0.069864414632320,-0.237387761473656,-0.297173142433167,0.112342931330204,-0.119674943387508,-0.001576831797138,0.077262438833714));
res += mul(Get(s3,dx,-dy), float4x4(-0.047934785485268,0.160137310624123,-0.043513450771570,0.189762383699417,0.203815713524818,0.020409146323800,-0.167925760149956,0.251903176307678,-0.047577120363712,0.027419671416283,-0.045862808823586,-0.133482038974762,0.163041725754738,-0.070847138762474,-0.038694679737091,-0.033825881779194));
res += mul(Get(s3,dx,0), float4x4(0.013347155414522,0.021566962823272,0.018204942345619,0.231355935335159,0.037287149578333,0.083456136286259,-0.136040747165680,-0.001578972791322,0.046997506171465,-0.063753023743629,-0.081620216369629,-0.178312093019485,-0.071387775242329,-0.078949205577374,-0.039866562932730,-0.230141669511795));
res += mul(Get(s3,dx,dy), float4x4(-0.014004871249199,-0.024184726178646,0.019587229937315,0.112122736871243,-0.083810657262802,0.007726118434221,-0.029753573238850,0.017242589965463,0.146789610385895,-0.044407371431589,-0.171706050634384,-0.269827455282211,-0.004164289683104,-0.111568540334702,0.160940051078796,-0.078588113188744));
return max(float4(0,0,0,0), res);
}
