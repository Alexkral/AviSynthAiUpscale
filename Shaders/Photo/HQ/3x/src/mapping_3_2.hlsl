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
float4 res = float4(0.071061260998249,0.058771040290594,0.053506489843130,0.012293118983507);
res += mul(Get(s0,-dx,-dy), float4x4(-0.015442758798599,-0.071923978626728,0.077984325587749,-0.065124154090881,-0.086680941283703,-0.029043862596154,0.084851190447807,-0.009255971759558,0.003321544500068,-0.078195385634899,0.040740326046944,-0.159910485148430,-0.033789891749620,-0.034034397453070,0.111019857227802,-0.003648388898000));
res += mul(Get(s0,-dx,0), float4x4(0.018219593912363,-0.050427544862032,0.210892200469971,-0.063296303153038,-0.005880273878574,-0.073351763188839,0.093717783689499,0.046120289713144,-0.090392485260963,0.040740702301264,-0.088018842041492,0.035689208656549,-0.038391787558794,-0.058063309639692,-0.112994022667408,-0.019941417500377));
res += mul(Get(s0,-dx,dy), float4x4(0.053761806339025,-0.071583755314350,0.309818357229233,-0.051597174257040,-0.150450631976128,-0.125236764550209,0.061743341386318,0.030070256441832,-0.046558063477278,-0.005746660288423,-0.057195268571377,-0.046320501714945,-0.071507066488266,-0.074056513607502,0.003459963947535,0.004094949923456));
res += mul(Get(s0,0,-dy), float4x4(-0.091004751622677,-0.018339751288295,0.014070970006287,0.005277882330120,-0.093832321465015,-0.121743492782116,0.085008218884468,0.069417893886566,-0.025823144242167,-0.054505702108145,-0.008747986517847,-0.124656029045582,-0.007371943909675,-0.132963493466377,0.111597530543804,0.017613887786865));
res += mul(Get(s0,0,0), float4x4(0.071987435221672,-0.005193790886551,0.035263199359179,0.073907338082790,0.316383540630341,-0.337965667247772,-0.077380061149597,0.091244190931320,-0.022167999297380,0.045618239790201,-0.043979946523905,-0.059667322784662,-0.024752920493484,-0.141761541366577,-0.037960294634104,-0.000171306746779));
res += mul(Get(s0,0,dy), float4x4(0.038287613540888,0.016323886811733,0.037779785692692,-0.109494738280773,-0.007964625954628,-0.100764155387878,-0.031767480075359,-0.011425119824708,0.021250665187836,0.080448724329472,-0.089664123952389,0.096667774021626,-0.099411845207214,-0.044552456587553,0.155354514718056,0.081133030354977));
res += mul(Get(s0,dx,-dy), float4x4(-0.092126518487930,-0.026395937427878,0.122864693403244,0.287353247404099,0.003581792814657,-0.014339066110551,0.063902296125889,0.145090684294701,-0.111977607011795,-0.010027477517724,-0.055750563740730,-0.198121860623360,-0.023168843239546,-0.205115497112274,-0.141145646572113,-0.072646290063858));
res += mul(Get(s0,dx,0), float4x4(-0.077567316591740,-0.034506008028984,0.086927488446236,-0.042288158088923,0.034479342401028,-0.071061819791794,0.058635786175728,-0.022809410467744,-0.060561224818230,0.050878796726465,-0.044846314936876,0.079400472342968,-0.029739452525973,-0.264426708221436,-0.027601527050138,0.002427647355944));
res += mul(Get(s0,dx,dy), float4x4(0.053904470056295,0.041676864027977,0.215726554393768,-0.027038354426622,-0.065633490681648,-0.025568587705493,-0.049739591777325,0.044029835611582,0.061356525868177,0.035265598446131,0.017474137246609,-0.083848655223846,-0.036805201321840,-0.114945538341999,0.136377334594727,0.040621928870678));
res += mul(Get(s1,-dx,-dy), float4x4(0.038579456508160,-0.022120309993625,0.074027270078659,0.097075037658215,0.012910830788314,-0.141746044158936,-0.260415852069855,0.297711014747620,-0.055796790868044,-0.037877887487411,0.043138060718775,-0.016750220209360,-0.042543970048428,0.024887455627322,-0.032950773835182,0.166980430483818));
res += mul(Get(s1,-dx,0), float4x4(0.056690346449614,-0.086175389587879,-0.077751725912094,-0.042183093726635,0.101496458053589,-0.248887792229652,0.484526157379150,-0.073250167071819,0.064302861690521,-0.194266229867935,0.034574873745441,0.101739898324013,0.033934745937586,0.161094069480896,0.158891052007675,-0.065794289112091));
res += mul(Get(s1,-dx,dy), float4x4(0.003993897233158,0.012051205150783,0.020341975614429,-0.049654360860586,-0.086436301469803,0.041935957968235,-0.182101830840111,-0.052381940186024,0.016511790454388,0.042188800871372,0.054590247571468,-0.071148216724396,0.074209205806255,0.224122643470764,-0.047089483588934,0.000664039805997));
res += mul(Get(s1,0,-dy), float4x4(0.086188748478889,0.023887729272246,0.031418561935425,0.060148779302835,0.025712411850691,0.056234747171402,-0.469355165958405,0.402151644229889,0.047370884567499,-0.007459947373718,-0.077919654548168,0.026341309770942,-0.038678541779518,0.062163021415472,-0.138552948832512,0.124283656477928));
res += mul(Get(s1,0,0), float4x4(-0.093334712088108,-0.091843545436859,-0.068176336586475,-0.020430756732821,-0.186846941709518,0.110262036323547,0.216544285416603,0.011132327839732,0.033896718174219,-0.124090977013111,0.045233156532049,-0.153036296367645,-0.037959218025208,0.092818930745125,0.027185732498765,0.081874698400497));
res += mul(Get(s1,0,dy), float4x4(-0.085757046937943,-0.030659912154078,0.032761108130217,-0.096169978380203,0.113267533481121,0.032923135906458,-0.445337742567062,-0.016721783205867,0.096903353929520,0.001953148283064,-0.069300509989262,-0.036889772862196,-0.056168753653765,-0.089604347944260,-0.043254707008600,-0.116652943193913));
res += mul(Get(s1,dx,-dy), float4x4(0.002052943455055,0.033616073429585,0.050490882247686,0.114809036254883,-0.046097017824650,0.029487121850252,-0.120472885668278,0.036444332450628,-0.003288673004135,0.007306226529181,0.086117014288902,0.049100600183010,0.026790870353580,-0.098682217299938,0.022820988669991,0.169826284050941));
res += mul(Get(s1,dx,0), float4x4(0.036568198353052,0.001497058197856,-0.092754013836384,0.000728571903892,0.019110901281238,0.050656780600548,0.097243748605251,-0.046537578105927,-0.012899915687740,0.053390622138977,0.073119714856148,0.066780380904675,-0.028716180473566,-0.059426981955767,-0.079181604087353,0.093690879642963));
res += mul(Get(s1,dx,dy), float4x4(0.190762057900429,0.023497868329287,-0.084667272865772,0.056184202432632,0.042627882212400,0.054591037333012,-0.081381812691689,-0.005392840597779,-0.086526028811932,0.160468220710754,-0.031238473951817,0.060365509241819,0.080057360231876,-0.063443675637245,-0.076432861387730,-0.041854921728373));
res += mul(Get(s2,-dx,-dy), float4x4(0.043545741587877,-0.034559439867735,-0.040480211377144,-0.166665554046631,0.026123264804482,0.113497547805309,-0.121814675629139,-0.140302002429962,0.124306932091713,-0.008796975947917,-0.083543434739113,-0.053510729223490,0.016798615455627,-0.025697913020849,0.077778458595276,0.043545220047235));
res += mul(Get(s2,-dx,0), float4x4(0.049155060201883,0.030694754794240,-0.063041590154171,-0.132756844162941,0.059688389301300,-0.125675544142723,-0.072846084833145,-0.080667160451412,0.032389119267464,0.005847624968737,0.018454959616065,-0.078459583222866,0.066949419677258,0.005435909144580,-0.058290194720030,0.158110216259956));
res += mul(Get(s2,-dx,dy), float4x4(-0.015160681679845,-0.023899111896753,0.075887754559517,-0.078576542437077,-0.029662560671568,-0.056889977306128,0.167363867163658,-0.009883486665785,0.148785397410393,-0.004582513589412,-0.149105027318001,0.005207312293351,-0.022394083440304,-0.155971527099609,-0.068146280944347,0.072356380522251));
res += mul(Get(s2,0,-dy), float4x4(-0.047093506902456,-0.034720633178949,-0.101219154894352,-0.288729399442673,0.078561432659626,0.042422648519278,0.143519476056099,-0.052198026329279,0.025335844606161,0.009111398831010,-0.007681429386139,0.163100913167000,-0.071277238428593,0.078352324664593,0.097792647778988,-0.198100164532661));
res += mul(Get(s2,0,0), float4x4(-0.000856782309711,0.042869441211224,-0.551114618778229,-0.242099881172180,-0.162472531199455,0.077220194041729,-0.120672538876534,-0.144828900694847,0.104820184409618,0.032155357301235,0.020307306200266,0.107338719069958,-0.044092334806919,0.315838366746902,-0.031004799529910,-0.050286963582039));
res += mul(Get(s2,0,dy), float4x4(0.229455143213272,-0.019222458824515,0.112082049250603,-0.029029382392764,0.150463372468948,-0.068557925522327,0.007686859928071,0.031285494565964,0.148794874548912,-0.050380434840918,-0.094912327826023,-0.056975912302732,-0.022459276020527,-0.536421656608582,0.080231159925461,-0.067480176687241));
res += mul(Get(s2,dx,-dy), float4x4(-0.031589735299349,-0.081488713622093,-0.136644512414932,0.162020713090897,0.027585681527853,0.049871392548084,-0.068619430065155,0.012131994590163,0.038612063974142,-0.015986887738109,-0.016311427578330,0.105988144874573,0.021809399127960,-0.091695807874203,0.001024486031383,0.164471223950386));
res += mul(Get(s2,dx,0), float4x4(0.168867513537407,-0.845531344413757,-0.461790323257446,-0.150522962212563,-0.065491475164890,0.143567621707916,-0.025874974206090,0.113698042929173,0.088053718209267,-0.006394945550710,-0.019173605367541,0.166556745767593,-0.055908728390932,-0.259307682514191,-0.030430460348725,0.033908009529114));
res += mul(Get(s2,dx,dy), float4x4(-0.158921733498573,-0.012944979593158,0.035949852317572,0.015352437272668,0.074637003242970,-0.079957574605942,0.131324246525764,0.033712968230247,0.130152106285095,-0.007379491347820,-0.120336323976517,0.026750912889838,-0.019661176949739,-0.185726359486580,0.047717243432999,-0.043610271066427));
res += mul(Get(s3,-dx,-dy), float4x4(0.041819002479315,-0.002195245353505,-0.054427247494459,0.004716042894870,-0.034330412745476,-0.053798597306013,0.117372691631317,-0.185530498623848,-0.013700700365007,-0.032174915075302,-0.063301295042038,-0.034251842647791,-0.005919456481934,-0.088782899081707,0.065225094556808,-0.031726136803627));
res += mul(Get(s3,-dx,0), float4x4(-0.024528676643968,0.028981829062104,-0.039853997528553,-0.109977215528488,0.028288755565882,0.001876178197563,-0.102533556520939,-0.122029058635235,-0.040365315973759,0.013721400871873,-0.243558451533318,0.149012252688408,0.037595190107822,-0.070676304399967,-0.215224921703339,-0.104623094201088));
res += mul(Get(s3,-dx,dy), float4x4(-0.078697845339775,0.004393530078232,0.017355445772409,-0.045016974210739,0.014923503622413,0.030358072370291,0.014506534673274,0.025823580101132,0.000935985590331,-0.032536473125219,0.023410316556692,0.066561728715897,0.057870492339134,0.062458064407110,0.082130819559097,-0.105467170476913));
res += mul(Get(s3,0,-dy), float4x4(-0.028077328577638,0.070372194051743,0.048170130699873,0.106792412698269,-0.025063445791602,0.056779075413942,0.000386018335121,-0.009715791791677,0.035208664834499,-0.014046090655029,-0.156003773212433,-0.040025718510151,-0.006450101267546,-0.049190305173397,0.163082450628281,0.145651042461395));
res += mul(Get(s3,0,0), float4x4(-0.338681966066360,-0.072039388120174,0.012091011740267,0.009297163225710,0.006624485831708,0.067875750362873,0.246517732739449,0.066727414727211,0.139380514621735,-0.103917032480240,-0.156421482563019,-0.020087072625756,0.113341614603996,-0.140505462884903,0.060690503567457,-0.056277081370354));
res += mul(Get(s3,0,dy), float4x4(0.130491912364960,0.073067709803581,-0.043666206300259,0.066789627075195,0.119890399277210,0.026626078411937,0.101997122168541,-0.055539052933455,0.020685292780399,0.030975922942162,-0.056269310414791,-0.020346067845821,-0.177744284272194,-0.140771135687828,-0.014597457833588,-0.034063544124365));
res += mul(Get(s3,dx,-dy), float4x4(-0.095254175364971,0.067784979939461,0.048395793884993,0.192629009485245,0.078344203531742,-0.015803618356586,-0.042092073708773,-0.017154565081000,0.029869483783841,0.024505065754056,-0.253486961126328,0.024822093546391,-0.066229149699211,0.004862122237682,0.003675658255816,0.215804457664490));
res += mul(Get(s3,dx,0), float4x4(-0.126122415065765,-0.004543108399957,0.042227499186993,0.080025374889374,-0.088320143520832,0.061543088406324,-0.023119738325477,0.008494918234646,0.018305361270905,0.055667433887720,-0.131257295608521,0.025004832074046,0.020585848018527,0.006298540160060,0.078270122408867,0.100737258791924));
res += mul(Get(s3,dx,dy), float4x4(-0.016281573101878,-0.022934842854738,0.017364639788866,-0.046667307615280,-0.056903358548880,0.079288631677628,-0.005785484798253,-0.131844073534012,-0.035226006060839,-0.099084593355656,-0.181373834609985,-0.037450384348631,0.092641934752464,-0.125718906521797,-0.131100252270699,-0.167671710252762));
res += mul(Get(s4,-dx,-dy), float4x4(-0.075544364750385,0.036983728408813,-0.019998142495751,-0.039774253964424,0.056600559502840,0.082118541002274,-0.184040561318398,-0.081118196249008,-0.056370448321104,0.029234549030662,-0.027270216494799,0.014775305055082,-0.016969786956906,-0.041046824306250,0.022174196317792,-0.065236791968346));
res += mul(Get(s4,-dx,0), float4x4(-0.062982678413391,0.033995028585196,0.042875174432993,0.099002026021481,-0.012974849902093,0.047783087939024,0.086420483887196,-0.016366615891457,-0.079867444932461,0.019937919452786,0.116764776408672,-0.098497271537781,-0.025551127269864,-0.079875752329826,-0.135066092014313,-0.160729378461838));
res += mul(Get(s4,-dx,dy), float4x4(0.018900895491242,-0.058147538453341,0.061925176531076,0.071983695030212,0.048254624009132,-0.023979682475328,-0.041306987404823,0.066377460956573,-0.060414444655180,0.068493790924549,0.058961674571037,-0.019000951200724,-0.044178266078234,-0.007571521680802,0.112871199846268,-0.122042879462242));
res += mul(Get(s4,0,-dy), float4x4(0.013220283202827,0.042876232415438,0.184825971722603,-0.042445585131645,0.074648611247540,-0.089595645666122,-0.183358564972878,0.139819130301476,-0.033711131662130,0.045616939663887,-0.096799813210964,0.047349564731121,-0.069324970245361,0.027538362890482,0.029257925227284,0.069770388305187));
res += mul(Get(s4,0,0), float4x4(-0.191757619380951,0.201975867152214,-0.160693496465683,0.066146157681942,-0.200787633657455,0.195748910307884,0.082537561655045,-0.021003160625696,-0.070138715207577,0.117421269416809,-0.019527498632669,-0.323114901781082,0.103290781378746,-0.455686688423157,0.010176538489759,-0.098409079015255));
res += mul(Get(s4,0,dy), float4x4(0.068374179303646,0.012934911064804,0.000474740547361,-0.007724138442427,-0.208888769149780,0.109409421682358,-0.127831056714058,0.068210132420063,-0.157825753092766,0.062435481697321,0.010601916350424,0.034540988504887,-0.630240738391876,0.123430445790291,0.062919490039349,0.074330374598503));
res += mul(Get(s4,dx,-dy), float4x4(0.037041835486889,-0.064596757292747,-0.017297917976975,0.011093240231276,0.063764497637749,-0.033754255622625,-0.140662670135498,-0.040133066475391,0.006278424523771,0.042120438069105,-0.047194048762321,0.024995723739266,0.005459006410092,0.007302170619369,0.018257547169924,-0.011426979675889));
res += mul(Get(s4,dx,0), float4x4(-0.072365708649158,-0.104031167924404,-0.092272557318211,-0.145824953913689,0.080601111054420,-0.019757622852921,-0.123217619955540,-0.080277688801289,-0.116151519119740,0.144132092595100,0.028165344148874,0.103645212948322,0.019334575161338,-0.009094082750380,0.029058953747153,-0.186331868171692));
res += mul(Get(s4,dx,dy), float4x4(-0.093634136021137,-0.106628246605396,0.125550195574760,0.048192307353020,0.011492880992591,-0.116833589971066,-0.156565859913826,-0.034138076007366,-0.030606687068939,0.159207567572594,-0.187233850359917,0.006001893430948,-0.165502324700356,-0.024290064349771,0.009467703290284,-0.046233765780926));
res += mul(Get(s5,-dx,-dy), float4x4(0.050814684480429,0.053107634186745,-0.051693342626095,-0.082896888256073,-0.002349473768845,0.042783997952938,0.053837217390537,0.073317043483257,-0.103775262832642,-0.031706430017948,-0.041908524930477,-0.142150014638901,0.030764779075980,-0.049537669867277,0.024020167067647,0.053290627896786));
res += mul(Get(s5,-dx,0), float4x4(-0.036900997161865,0.072672396898270,-0.115510605275631,-0.054333534091711,0.107219099998474,0.000178020214662,0.018866565078497,0.071040816605091,0.032724950462580,-0.066408805549145,-0.044355221092701,-0.033645726740360,-0.055348135530949,0.080121785402298,-0.124513328075409,-0.010143855586648));
res += mul(Get(s5,-dx,dy), float4x4(0.014626869000494,0.100821085274220,-0.021385967731476,-0.060939639806747,-0.032126180827618,-0.010995138436556,0.018396111205220,-0.070162311196327,-0.026045218110085,-0.152974829077721,0.049204740673304,0.101399764418602,0.007424722891301,0.044630710035563,0.010593083687127,-0.033274594694376));
res += mul(Get(s5,0,-dy), float4x4(-0.079899966716766,-0.028073728084564,-0.041473496705294,0.076689980924129,0.039812128990889,0.127332061529160,0.017564987763762,0.064061313867569,0.121616825461388,-0.002884392859414,0.064234092831612,-0.100840605795383,0.125774770975113,-0.214635193347931,0.050087802112103,0.053820684552193));
res += mul(Get(s5,0,0), float4x4(0.282740443944931,-0.072233043611050,-0.010960757732391,0.004569794051349,-0.041612893342972,0.023726943880320,-0.093125276267529,-0.073497012257576,-0.252385884523392,-0.149145245552063,0.094613522291183,-0.043002787977457,0.050953116267920,0.044989529997110,-0.060883998870850,-0.031472973525524));
res += mul(Get(s5,0,dy), float4x4(-0.045508846640587,-0.009096806868911,0.041234750300646,-0.086565889418125,0.134237989783287,-0.040237654000521,0.056877240538597,-0.070584900677204,0.082675859332085,-0.101414091885090,-0.113402985036373,-0.046879917383194,-0.101348586380482,0.093729659914970,-0.020418534055352,0.025137703865767));
res += mul(Get(s5,dx,-dy), float4x4(0.022730797529221,0.016192574054003,0.085650831460953,0.056720234453678,0.023886073380709,0.056461658328772,-0.042872209101915,0.077515728771687,0.054072599858046,0.139069259166718,-0.108581416308880,0.045391507446766,-0.060494773089886,0.090026281774044,0.057578761130571,0.119550861418247));
res += mul(Get(s5,dx,0), float4x4(-0.038399651646614,0.211371153593063,-0.017049254849553,0.281764686107635,0.056477781385183,-0.071608997881413,-0.141751840710640,-0.028617635369301,0.066024385392666,0.124412596225739,-0.036482457071543,0.106002911925316,-0.005482706241310,-0.026515709236264,0.063955381512642,0.020280044525862));
res += mul(Get(s5,dx,dy), float4x4(0.003224392887205,0.108680993318558,-0.101502776145935,-0.075373277068138,-0.126881599426270,-0.146014645695686,-0.095967434346676,0.031956892460585,-0.069850236177444,0.001337531488389,0.083405070006847,0.041350513696671,0.004725169856101,-0.073792479932308,0.005878958385438,-0.046992640942335));
res = max(float4(0, 0, 0, 0), res) + float4(0.198631480336189,-0.061217069625854,0.004170816391706,-0.204144895076752) * min(float4(0, 0, 0, 0), res);
return res;
}