sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.052567366510630,0.010239592753351,-0.106580279767513,-0.092140421271324);
res += mul(Get(s0,-dx,-dy), float4x4(-0.011182990856469,0.017703892663121,0.165908128023148,-0.167569488286972,-0.147896662354469,0.127471730113029,0.111221209168434,-0.075876504182816,0.035618666559458,-0.106180354952812,-0.147975534200668,0.037686228752136,-0.025335699319839,-0.120975323021412,1.164641737937927,-0.227266237139702));
res += mul(Get(s0,-dx,0), float4x4(-0.445058524608612,-0.219472333788872,0.097560562193394,0.015717208385468,0.240806654095650,-0.218519955873489,-0.153413310647011,0.190998360514641,-0.194823682308197,0.385664045810699,0.024359902366996,-0.040681619197130,-0.316023230552673,-0.532838702201843,0.062743589282036,0.048562698066235));
res += mul(Get(s0,-dx,dy), float4x4(-0.079650245606899,-0.079925164580345,0.097123272716999,0.121858477592468,-0.196755915880203,-0.663792490959167,-0.163610488176346,-0.062619902193546,-0.063312172889709,0.226183205842972,-0.049800243228674,-0.263295501470566,0.068743959069252,-0.023294458165765,0.026689447462559,-0.074444837868214));
res += mul(Get(s0,0,-dy), float4x4(-0.169135555624962,0.137653023004532,-0.034903828054667,0.000545201415662,0.154598191380501,-0.084456443786621,-0.068117789924145,-0.212048813700676,0.085756540298462,-0.027942361310124,0.058539055287838,0.005643970333040,-0.297572195529938,0.399843513965607,0.196829408407211,-0.374450176954269));
res += mul(Get(s0,0,0), float4x4(0.419973164796829,-0.267582774162292,-0.447410821914673,-0.424380719661713,-0.311732798814774,0.041395314037800,0.671255350112915,0.299343198537827,0.098718538880348,-0.200296342372894,-0.019088109955192,0.008683798834682,-0.131922885775566,-0.253323435783386,0.076601050794125,0.205724686384201));
res += mul(Get(s0,0,dy), float4x4(0.116949774324894,0.275207728147507,0.141206309199333,0.212018355727196,0.153418630361557,-0.190814435482025,0.145320266485214,-0.223135843873024,-0.180217698216438,0.428181588649750,0.121434412896633,0.060914017260075,-0.058413054794073,0.077146135270596,0.048323571681976,-0.065782956779003));
res += mul(Get(s0,dx,-dy), float4x4(0.071208752691746,0.015490721911192,-0.054677486419678,0.023997912183404,-0.072293892502785,0.009023157879710,0.147113487124443,-0.199255794286728,-0.087204851210117,0.064682982861996,0.045019317418337,-0.135429605841637,-0.011118103750050,0.068113118410110,0.019871905446053,-0.112069994211197));
res += mul(Get(s0,dx,0), float4x4(0.100642837584019,0.155867829918861,0.010778633877635,0.161247536540031,0.317626804113388,0.126792535185814,-0.250316351652145,-0.048788551241159,0.163080260157585,-0.585085391998291,0.049916658550501,0.219423130154610,0.062872655689716,0.009999264962971,-0.008841246366501,-0.014419060200453));
res += mul(Get(s0,dx,dy), float4x4(0.101412124931812,-0.039870932698250,-0.032396532595158,0.091435424983501,0.165393382310867,0.484632313251495,-0.014074556529522,0.149140074849129,0.144043162465096,0.084834396839142,-0.081516236066818,0.140771657228470,-0.035651814192533,0.103507846593857,-0.032875429838896,0.048504266887903));
res += mul(Get(s1,-dx,-dy), float4x4(-0.052073583006859,0.147955149412155,0.033605959266424,0.133527338504791,-0.237564697861671,0.086857430636883,-0.089425519108772,0.338256925344467,-0.024641957134008,0.370032072067261,-0.049586061388254,-0.325198441743851,-0.122998312115669,-0.139151766896248,-0.064884953200817,-0.161403283476830));
res += mul(Get(s1,-dx,0), float4x4(0.869954109191895,-0.588238775730133,-0.237984806299210,-0.204461202025414,-0.050603982061148,-0.125230833888054,0.328673779964447,0.477123081684113,0.254645586013794,-0.344767391681671,-0.193869367241859,-0.092119969427586,-0.236409321427345,0.103789888322353,-0.163140863180161,0.180881664156914));
res += mul(Get(s1,-dx,dy), float4x4(0.057762127369642,0.119407169520855,0.192378103733063,-0.098485112190247,-0.020138291642070,-0.010327707044780,-0.142311692237854,0.133325561881065,-0.074109211564064,0.198619499802589,0.014860129915178,-0.099082209169865,-0.131817251443863,0.248490765690804,0.026568075641990,0.146012082695961));
res += mul(Get(s1,0,-dy), float4x4(0.031197944656014,0.149638995528221,-0.196058288216591,-0.086740717291832,-0.014135482721031,0.018636813387275,0.004955993965268,0.786328673362732,0.116147749125957,0.103631392121315,-0.188961938023567,0.265612423419952,0.141667932271957,-0.123724900186062,-0.382366806268692,-0.010108002461493));
res += mul(Get(s1,0,0), float4x4(-0.263097614049911,-0.119429878890514,0.462358891963959,0.362275242805481,-0.467303544282913,-0.004349512979388,-0.172689020633698,-0.002528569893911,-0.248062342405319,0.042455852031708,0.080825887620449,0.055269543081522,0.149098247289658,-0.253618657588959,0.086400344967842,-0.018573366105556));
res += mul(Get(s1,0,dy), float4x4(-0.298967480659485,-0.173981189727783,0.148355096578598,-0.365027159452438,-0.155848428606987,0.453089296817780,-0.393429309129715,-0.349013388156891,-0.053491093218327,-0.135888010263443,-0.020282605662942,0.094864882528782,0.112466573715210,-0.080838702619076,-0.094184286892414,0.164555549621582));
res += mul(Get(s1,dx,-dy), float4x4(-0.075074747204781,-0.003941744100302,0.123342961072922,-0.050049435347319,0.451220929622650,-0.211653530597687,0.051620144397020,0.227380916476250,0.147908687591553,0.040862094610929,0.155839577317238,0.072161704301834,0.011352185159922,0.205239027738571,-0.228851348161697,-0.085927456617355));
res += mul(Get(s1,dx,0), float4x4(0.096083231270313,0.211491674184799,-0.118657603859901,-0.039851799607277,0.022542100399733,0.052408520132303,-0.072021208703518,0.095940746366978,0.096607625484467,0.062045264989138,-0.145358070731163,-0.029499135911465,0.013918769545853,-0.102918811142445,-0.333039969205856,0.281462550163269));
res += mul(Get(s1,dx,dy), float4x4(0.001789301284589,-0.011299212463200,0.055957123637199,-0.195522382855415,0.111178264021873,-0.180229648947716,-0.276992857456207,0.305874943733215,0.035440910607576,-0.031575061380863,0.005999859422445,-0.174177244305611,0.033189006149769,-0.055638935416937,-0.112001106142998,-0.113758772611618));
res += mul(Get(s2,-dx,-dy), float4x4(0.038291573524475,-0.169925034046173,0.140287652611732,-0.156237199902534,0.094549380242825,-0.075508914887905,-0.090105220675468,-0.081883721053600,-0.032594356685877,0.185070484876633,-0.011255699209869,-0.077992141246796,-0.182451441884041,-0.211032465100288,0.246503904461861,0.392593592405319));
res += mul(Get(s2,-dx,0), float4x4(-0.477559566497803,0.287977635860443,0.101892225444317,0.131207138299942,-0.411688834428787,0.107956551015377,0.218451648950577,0.096901677548885,-0.480948895215988,0.246553882956505,0.165691584348679,0.045408383011818,-0.808547914028168,0.076051644980907,0.401636034250259,1.558870553970337));
res += mul(Get(s2,-dx,dy), float4x4(-0.153393149375916,0.568837165832520,0.121851414442062,0.031879436224699,-0.057818401604891,-0.073749199509621,-0.371096134185791,-0.347165971994400,-0.209438905119896,0.108843795955181,0.072788387537003,0.318088650703430,-0.124638356268406,0.551941990852356,-0.113977357745171,0.652904570102692));
res += mul(Get(s2,0,-dy), float4x4(0.140715166926384,-0.203716978430748,0.239415556192398,0.206167042255402,-0.083011366426945,0.100523300468922,-0.046457190066576,-0.167514637112617,0.163412362337112,-0.180397510528564,-0.120451986789703,-0.105995446443558,0.257028579711914,-0.358127504587173,0.614479064941406,-0.098753236234188));
res += mul(Get(s2,0,0), float4x4(0.255960077047348,-0.334645599126816,-0.489939600229263,-0.102658480405807,0.083354189991951,0.079392224550247,-0.281630456447601,-0.088715299963951,0.404090702533722,-0.420587092638016,-0.603166699409485,-0.292625933885574,1.059891343116760,-0.656280696392059,0.838979959487915,0.441321194171906));
res += mul(Get(s2,0,dy), float4x4(-0.220639124512672,0.147461935877800,0.239024490118027,0.014127945527434,-0.676522254943848,-0.007007681299001,2.080608606338501,-0.338928103446960,0.190885528922081,0.357848852872849,0.107396103441715,0.354792475700378,-0.187473416328430,0.376916229724884,0.889846324920654,0.147137835621834));
res += mul(Get(s2,dx,-dy), float4x4(-0.128056630492210,0.218563362956047,0.064368881285191,-0.069205060601234,-0.078614629805088,0.098370097577572,0.093726232647896,-0.156923577189445,-0.030199283733964,-0.178986772894859,0.306393146514893,0.023118373006582,-0.127238661050797,0.378685206174850,0.362573415040970,-0.354268044233322));
res += mul(Get(s2,dx,0), float4x4(-0.017762755975127,-0.011943876743317,-0.109230905771255,0.054288294166327,0.226197034120560,-0.084391579031944,0.208698913455009,0.087626948952675,0.195775166153908,-0.313440352678299,-0.131124168634415,0.103165209293365,0.195157602429390,0.043640177696943,-0.596542179584503,0.041993282735348));
res += mul(Get(s2,dx,dy), float4x4(0.106277212500572,-0.170607969164848,-0.129506558179855,-0.198764503002167,0.650237441062927,-0.038344964385033,0.101029910147190,-0.145980015397072,-0.064865738153458,0.031347673386335,0.199729204177856,0.020183958113194,0.064321950078011,-0.166173174977303,0.014498719945550,-0.835747539997101));
res = max(float4(0, 0, 0, 0), res) + float4(-0.581175506114960,-0.312684357166290,0.207074195146561,0.662635505199432) * min(float4(0, 0, 0, 0), res);
return res;
}