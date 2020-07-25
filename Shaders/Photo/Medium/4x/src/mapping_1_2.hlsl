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
float4 res = float4(-0.0524342581629753,0.0041565066203475,0.0695069059729576,0.0253647919744253);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1634781509637833,0.0120570128783584,-0.0437153019011021,-0.1223059296607971,0.1121962144970894,0.0821567252278328,0.0298176445066929,-0.0428939647972584,0.0859668552875519,0.1019571796059608,0.0001186177905765,-0.1174627766013145,-0.0358066596090794,-0.0293395724147558,-0.1150096133351326,0.1001114398241043));
res += mul(Get(s1,-dx,-dy), float4x4(0.0187840834259987,-0.0268965978175402,-0.0581661798059940,-0.0961580500006676,-0.0213930830359459,-0.0018489448120818,-0.0122154671698809,0.0105124535039067,0.0828664004802704,0.0283458177000284,-0.1705772280693054,0.0419006161391735,-0.0104617681354284,-0.0595119222998619,0.0591331645846367,-0.1489032655954361));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1339094787836075,0.0566851943731308,0.0599167011678219,-0.1111529991030693,-0.0433246791362762,-0.0837755948305130,0.0630894750356674,-0.0826291739940643,0.1764353364706039,-0.0666185170412064,-0.0582030713558197,0.0072715901769698,-0.0370120517909527,0.0613510198891163,-0.0150274708867073,-0.2003179639577866));
res += mul(Get(s3,-dx,-dy), float4x4(0.0269255135208368,-0.1087431982159615,-0.1089195013046265,-0.1687917858362198,0.0250981710851192,0.0111377295106649,0.0965605080127716,0.0218377150595188,0.0170886665582657,-0.0788921490311623,0.0694990381598473,-0.0125704426318407,0.2201849222183228,-0.0190331060439348,-0.1098583936691284,-0.0716993957757950));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0571535117924213,-0.0290786903351545,0.0670706927776337,0.0800203382968903,0.0593221485614777,0.1469670087099075,0.0691734030842781,0.0342235080897808,0.1162861287593842,0.1040346547961235,0.0873281732201576,-0.0866377428174019,0.0258734375238419,0.1144718006253242,0.2052274793386459,-0.1531294584274292));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0503631085157394,0.1122675314545631,-0.0792345330119133,-0.0592166110873222,-0.0458775721490383,-0.0238943193107843,0.0860071554780006,-0.0690515711903572,-0.0276951696723700,0.0571369975805283,0.0904089882969856,0.1456450819969177,-0.0840016901493073,0.0036637173034251,-0.0037402154412121,-0.1195513829588890));
res += mul(Get(s0,-dx,0), float4x4(0.2532821893692017,0.0081186201423407,0.0277001839131117,0.0534622371196747,0.0445486344397068,-0.0094984378665686,-0.1353086233139038,-0.0276161916553974,0.0879542455077171,-0.0636221840977669,-0.1484490782022476,-0.0016266112215817,0.0611433051526546,0.0741008296608925,-0.0780925378203392,-0.2169614583253860));
res += mul(Get(s1,-dx,0), float4x4(-0.0413222350180149,-0.0713920667767525,-0.0789225697517395,-0.1486365199089050,0.0155348796397448,-0.0152828600257635,0.0584742911159992,0.1188978403806686,0.0343383215367794,0.0150933619588614,-0.0488118901848793,-0.2159089744091034,-0.1915938109159470,-0.0994525700807571,-0.1641393899917603,0.0527497678995132));
res += mul(Get(s2,-dx,0), float4x4(0.2080430239439011,0.0369390398263931,-0.0811086446046829,0.0300276316702366,-0.2016963064670563,-0.0644149854779243,-0.0536823272705078,0.0025501819327474,-0.0963505730032921,0.0278226044028997,0.0292466133832932,-0.0759867280721664,-0.0586039796471596,-0.0170254409313202,0.0486199781298637,0.0522565878927708));
res += mul(Get(s3,-dx,0), float4x4(0.0653289556503296,0.1894370466470718,-0.0239587873220444,-0.0783736035227776,-0.0110007114708424,-0.2224846631288528,-0.0091639850288630,-0.0094110202044249,0.1877454966306686,-0.0327853336930275,0.0283718649297953,0.1593009084463120,-0.2049164474010468,0.0597021877765656,0.0347331352531910,0.2869326770305634));
res += mul(Get(s4,-dx,0), float4x4(-0.0676205679774284,0.2323514819145203,0.0371972694993019,-0.2318854779005051,0.0960540771484375,-0.1842391937971115,-0.1074576154351234,-0.0811282172799110,0.0769611075520515,-0.0901253744959831,-0.0671262070536613,0.0751152262091637,-0.1857484281063080,0.0151870446279645,0.1028993204236031,0.0103613715618849));
res += mul(Get(s5,-dx,0), float4x4(0.1897599846124649,-0.1590020060539246,0.0180373638868332,-0.0019312476506457,-0.1214114278554916,-0.0325305387377739,0.0081691723316908,0.0269233211874962,0.0327183827757835,0.1133624613285065,0.0158901270478964,-0.2010470181703568,0.0451240539550781,-0.1539236754179001,0.0043241251260042,0.0343249253928661));
res += mul(Get(s0,-dx,dy), float4x4(0.1668215841054916,0.0620693452656269,-0.0572516433894634,0.0672482699155807,-0.0406769290566444,0.0339672937989235,0.0430301614105701,-0.0150693710893393,-0.0696252435445786,0.0043353848159313,0.0476707555353642,0.0785179212689400,-0.0697233080863953,-0.0028324094600976,-0.0181881822645664,-0.0824642702937126));
res += mul(Get(s1,-dx,dy), float4x4(0.0644705668091774,-0.0509032160043716,0.1053238734602928,0.1940336078405380,0.0039734486490488,-0.0210519619286060,-0.1100063547492027,-0.0187772754579782,0.0106886299327016,-0.1916396915912628,0.1352985650300980,0.0650211870670319,-0.1786020249128342,0.0593748725950718,0.0986857935786247,0.0178039427846670));
res += mul(Get(s2,-dx,dy), float4x4(-0.0118281589820981,-0.0886799991130829,0.0898987725377083,0.1111876145005226,-0.1443114578723907,-0.0344330221414566,-0.0577165484428406,-0.1346472650766373,-0.1353686153888702,-0.0687939897179604,0.0492642708122730,-0.0571593940258026,-0.0435246899724007,-0.0429849475622177,0.0723950937390327,0.1645547896623611));
res += mul(Get(s3,-dx,dy), float4x4(0.0202387850731611,0.1833022236824036,0.0867134407162666,-0.0878863334655762,-0.0710932761430740,-0.0184275601059198,0.0850682705640793,0.1046798527240753,0.0362053103744984,0.0598962455987930,0.1028778329491615,0.1032728701829910,0.0315917395055294,0.1356592327356339,0.0188328959047794,-0.0529942587018013));
res += mul(Get(s4,-dx,dy), float4x4(0.0309696085751057,0.0611580498516560,-0.0704625099897385,-0.0385077819228172,-0.0524985529482365,-0.0130513235926628,-0.1102299019694328,0.0908285677433014,0.0119348801672459,-0.1353789269924164,-0.1048664599657059,0.0282803587615490,0.2199722677469254,0.0268193632364273,-0.2705624997615814,0.1026056557893753));
res += mul(Get(s5,-dx,dy), float4x4(0.1151754260063171,0.1200611814856529,0.0500515177845955,-0.1079227179288864,-0.0017287038499489,0.0632048398256302,0.0444112792611122,-0.0023951425682753,0.0333791151642799,0.0274090375751257,0.0426363609731197,0.1417008638381958,-0.0434013903141022,0.0606102794408798,0.0223583020269871,-0.0004029398842249));
res += mul(Get(s0,0,-dy), float4x4(0.1055623143911362,-0.0616161823272705,-0.2160459905862808,-0.0218310728669167,-0.1489587128162384,-0.1040864139795303,0.0290080998092890,0.0612909458577633,-0.0527407787740231,-0.1830427497625351,0.1606595218181610,0.0982278063893318,-0.0036277179606259,0.0333324633538723,0.0492387190461159,0.1757481545209885));
res += mul(Get(s1,0,-dy), float4x4(-0.0145041840150952,0.1336615085601807,0.0007638676906936,-0.1310568600893021,0.0677272155880928,-0.0210133418440819,0.0300205349922180,-0.1164802536368370,-0.0531338602304459,-0.1152012646198273,-0.0186265315860510,0.1168966069817543,0.2240579277276993,0.2114181369543076,-0.0241575818508863,0.0810942947864532));
res += mul(Get(s2,0,-dy), float4x4(-0.1277812868356705,-0.0130693288519979,0.0641683191061020,0.0586861036717892,-0.0966832190752029,0.1304193884134293,-0.2298413664102554,0.0898984968662262,0.1233140677213669,-0.0439860522747040,0.0338096469640732,0.0657065212726593,0.0874078199267387,0.0929993987083435,-0.0821116864681244,-0.1016857028007507));
res += mul(Get(s3,0,-dy), float4x4(-0.0450596511363983,0.0380069464445114,0.1112636253237724,0.1532394289970398,-0.0628653615713120,-0.0090559106320143,-0.0590214431285858,0.0415038168430328,-0.0119482977315784,-0.1301159411668777,0.0220446940511465,0.1988670527935028,-0.0196246113628149,-0.0123759917914867,-0.0445288643240929,0.1235240399837494));
res += mul(Get(s4,0,-dy), float4x4(0.1854020357131958,0.1209344491362572,0.0525856465101242,0.0163581017404795,-0.0380005761981010,0.0541705042123795,0.0275370366871357,-0.0807399153709412,0.1237740293145180,0.1710089594125748,-0.2895573079586029,-0.3555669784545898,-0.0198974851518869,-0.0204993411898613,-0.0777096673846245,0.1473525166511536));
res += mul(Get(s5,0,-dy), float4x4(0.1101456508040428,-0.1453060358762741,0.0057292543351650,-0.0899273976683617,0.0108316820114851,-0.0596805028617382,0.1456819921731949,0.0109190167859197,0.0162922162562609,-0.1007788628339767,0.0935185477137566,0.0696406885981560,-0.0606687180697918,-0.0525982938706875,-0.0785484090447426,0.0404520109295845));
res += mul(Get(s0,0,0), float4x4(-0.3901021778583527,0.2310306131839752,0.2531509697437286,-0.1602305769920349,0.0581664927303791,0.3511147499084473,0.1754394769668579,-0.0106570692732930,-0.2917789220809937,-0.1812507063150406,0.0733550563454628,-0.0339226163923740,-0.2400373518466949,-0.2606804370880127,0.3075139224529266,0.4886122643947601));
res += mul(Get(s1,0,0), float4x4(-0.1215528845787048,-0.2370047718286514,0.0753048509359360,0.4560193419456482,-0.1750679463148117,-0.2407405674457550,0.0600261650979519,0.0160789955407381,0.5595853328704834,-0.2045492082834244,-0.2776994705200195,0.1557574272155762,-0.1804704517126083,-0.1294259577989578,0.1537817269563675,0.0087709138169885));
res += mul(Get(s2,0,0), float4x4(0.3466479480266571,-0.1263614296913147,-0.1056110858917236,0.0623287074267864,0.4181583523750305,0.3080628216266632,-0.3953160941600800,-0.4626374542713165,0.0516417883336544,0.1771658211946487,-0.0995140001177788,-0.2512857615947723,0.0203318204730749,0.1231039017438889,-0.0450368933379650,-0.0307826027274132));
res += mul(Get(s3,0,0), float4x4(-0.1001057997345924,-0.0051579442806542,0.0202712211757898,0.1611688882112503,0.6987076401710510,-0.1807649731636047,-0.3062328994274139,0.0522393882274628,-0.2619738876819611,0.1556818485260010,-0.0321568734943867,0.0304373446851969,0.2103392183780670,0.4042584598064423,-0.3104025125503540,-0.5183489322662354));
res += mul(Get(s4,0,0), float4x4(0.0043314709328115,-0.1842675060033798,-0.3240590095520020,-0.4186260104179382,-0.0585038438439369,0.2690025269985199,0.2074711769819260,-0.2591594755649567,0.1466448605060577,-0.7247762680053711,0.1098381131887436,0.7546921372413635,-0.5236357450485229,-0.0990942344069481,0.2946454882621765,0.1691051274538040));
res += mul(Get(s5,0,0), float4x4(-0.1645307540893555,0.0942503064870834,0.0155754461884499,-0.0030045397579670,-0.2044518291950226,0.0364010483026505,-0.0184963457286358,0.1671485304832458,-0.4898835420608521,-0.0132569056004286,0.0177726820111275,0.2090694159269333,0.3360833227634430,0.1693647354841232,-0.2240648120641708,-0.2464760839939117));
res += mul(Get(s0,0,dy), float4x4(-0.0998224690556526,-0.0188065841794014,-0.1803844273090363,0.0006982414051890,-0.1983875483274460,-0.0745810866355896,0.0739933773875237,0.0598116517066956,-0.0029672423843294,-0.0718436837196350,-0.0630348920822144,-0.0347941964864731,0.0122622102499008,-0.1161437109112740,0.0904835462570190,-0.0103774834424257));
res += mul(Get(s1,0,dy), float4x4(-0.0240635201334953,0.0987748578190804,-0.0382308512926102,-0.1363574564456940,-0.0785220488905907,0.1130703538656235,-0.1113105639815331,-0.1334961801767349,0.0019613765180111,-0.0852624848484993,-0.1086133196949959,-0.1482886224985123,0.0361378304660320,-0.0111284768208861,0.0887811705470085,0.1285819858312607));
res += mul(Get(s2,0,dy), float4x4(-0.0703019723296165,-0.0762014910578728,0.0590842887759209,-0.0349089875817299,0.0094596082344651,-0.1272601634263992,0.0589705407619476,0.0853734388947487,0.0677842423319817,-0.1051942110061646,0.1918347030878067,0.1719434559345245,-0.1108145415782928,-0.0014725476503372,-0.0472255609929562,0.0502625517547131));
res += mul(Get(s3,0,dy), float4x4(-0.0536388158798218,0.0346473008394241,-0.0060507259331644,-0.0263365861028433,-0.0018942481838167,0.0642196312546730,0.1082602739334106,0.0939912199974060,0.1442808359861374,-0.1498269587755203,-0.1829489916563034,-0.1075009927153587,-0.1728754341602325,0.0213965345174074,0.2724440991878510,0.2378651350736618));
res += mul(Get(s4,0,dy), float4x4(-0.0265433713793755,0.0363143645226955,-0.0576165430247784,-0.0133106401190162,-0.0070807328447700,-0.0784465894103050,-0.0691781044006348,-0.0753738880157471,-0.0880758091807365,0.1801793873310089,0.1311575174331665,-0.2722897529602051,0.1190308630466461,-0.0630973353981972,0.0374268516898155,0.1266375184059143));
res += mul(Get(s5,0,dy), float4x4(-0.0454310290515423,0.2024109214544296,-0.0642170310020447,-0.1344897747039795,-0.0221236236393452,0.1841109693050385,0.0790218412876129,-0.0333150327205658,0.1540022492408752,0.0118704214692116,-0.1256537884473801,0.0054083322174847,0.0569608993828297,-0.0970874801278114,-0.0877003669738770,0.0123186288401484));
res += mul(Get(s0,dx,-dy), float4x4(0.0293496642261744,-0.0571512691676617,0.1484977602958679,-0.0309275258332491,0.0942009687423706,0.0698052644729614,-0.0054972260259092,0.0336892195045948,-0.0298373755067587,0.0212556906044483,-0.0696345865726471,-0.0014984571607783,0.0242558047175407,0.0304988715797663,0.0121877770870924,-0.1769252568483353));
res += mul(Get(s1,dx,-dy), float4x4(0.0320050269365311,-0.2003932595252991,0.1527318507432938,-0.0054664816707373,-0.0193998385220766,0.0325873121619225,0.0304302033036947,0.1134833022952080,0.0710827559232712,0.0498463474214077,-0.0326566621661186,-0.0180317834019661,0.0231071300804615,0.0903446897864342,0.0797319263219833,-0.0473180077970028));
res += mul(Get(s2,dx,-dy), float4x4(-0.0204519946128130,-0.0613096468150616,0.0632141456007957,0.0162666998803616,0.0445571988821030,0.0879434347152710,-0.0190794188529253,0.0096626617014408,-0.0766098201274872,0.0614361278712749,0.0551767982542515,0.0288543999195099,-0.0561520569026470,-0.0235048588365316,0.0892703011631966,-0.1175192072987556));
res += mul(Get(s3,dx,-dy), float4x4(-0.1597857028245926,-0.0431319288909435,0.0634851157665253,0.0199031643569469,-0.1039645001292229,-0.0987100750207901,0.0062680314294994,0.0747295394539833,-0.0209602154791355,-0.0381024517118931,0.0629478916525841,-0.0219135470688343,0.0806903317570686,-0.0689261630177498,-0.0727869793772697,-0.1422506719827652));
res += mul(Get(s4,dx,-dy), float4x4(-0.0837197005748749,0.0539385229349136,-0.0112328482791781,0.0053699826821685,-0.0544479340314865,-0.0961568877100945,-0.0612452886998653,-0.0596701055765152,0.1696483641862869,-0.0539255738258362,-0.1362694501876831,-0.0014643374597654,0.1167362481355667,0.1612741798162460,-0.0029111569747329,-0.0435454100370407));
res += mul(Get(s5,dx,-dy), float4x4(0.0700714141130447,-0.0589654594659805,-0.0035951626487076,0.0505648776888847,-0.0810236409306526,-0.0352627113461494,0.0999036133289337,0.0887924656271935,0.0519937984645367,-0.0957457348704338,-0.1107822582125664,0.0167683493345976,-0.0214729383587837,0.0971666425466537,-0.0019759645219892,0.0520615912973881));
res += mul(Get(s0,dx,0), float4x4(0.0687790140509605,0.1738397032022476,0.0779719501733780,0.0985654443502426,0.0454951189458370,-0.0198760479688644,0.0810161158442497,0.1232184320688248,0.1687834113836288,-0.0984174832701683,-0.0234411340206861,0.0656959861516953,0.0537353120744228,-0.0577753484249115,-0.0033665876835585,-0.1412096470594406));
res += mul(Get(s1,dx,0), float4x4(0.0380635745823383,0.1597152650356293,-0.2121044546365738,-0.1052188873291016,0.1603039205074310,-0.0911326110363007,-0.1184191852807999,-0.0225391741842031,-0.0391178578138351,0.1205471307039261,0.1193734183907509,0.1683660149574280,0.0377795025706291,-0.0167440511286259,-0.1230503544211388,-0.1812290996313095));
res += mul(Get(s2,dx,0), float4x4(-0.0535309202969074,-0.0005418329383247,-0.0552587509155273,-0.0118555491790175,-0.0092195170000196,-0.1666283309459686,-0.0714793279767036,-0.1970392763614655,0.0981609299778938,-0.2102063894271851,-0.2139796167612076,-0.0903536826372147,-0.0758384242653847,0.1654022634029388,0.1120854318141937,-0.1367809623479843));
res += mul(Get(s3,dx,0), float4x4(-0.0349554866552353,-0.2673784494400024,0.0707965418696404,0.0128510668873787,0.0638543069362640,0.0191320739686489,-0.0616187527775764,-0.2485909759998322,0.0036391587927938,-0.1015657112002373,-0.1300734281539917,-0.1919919252395630,-0.2088734209537506,-0.2316837757825851,0.1070504933595657,0.1034598872065544));
res += mul(Get(s4,dx,0), float4x4(0.1742238551378250,0.0929716825485229,0.0436264164745808,0.0732789784669876,0.0366870760917664,-0.0655338242650032,-0.0981373861432076,0.0659991800785065,0.1388180553913116,-0.0101720942184329,0.2355252802371979,0.0216517969965935,0.0051265349611640,0.1159972772002220,0.0635788068175316,-0.1965970993041992));
res += mul(Get(s5,dx,0), float4x4(-0.1917865425348282,0.0167936179786921,-0.0095691047608852,0.2152104824781418,-0.1193341761827469,-0.0831786468625069,-0.0373633913695812,-0.0816962197422981,0.1337052732706070,-0.0145872430875897,-0.0061197713948786,-0.1823698729276657,-0.0362244024872780,-0.3098092079162598,0.1031809374690056,-0.1266983002424240));
res += mul(Get(s0,dx,dy), float4x4(-0.0695955306291580,-0.0815675258636475,0.0082719260826707,0.0641287341713905,-0.0929663404822350,-0.1244162023067474,-0.0671202763915062,-0.0057929572649300,0.0554606430232525,0.0115251103416085,0.0791032090783119,0.0307954363524914,0.0737515911459923,0.1126325875520706,-0.0752270594239235,0.0091135241091251));
res += mul(Get(s1,dx,dy), float4x4(0.0155861284583807,0.0279656946659088,-0.0198289714753628,-0.0534966029226780,0.1182115077972412,0.1057794019579887,0.0846977233886719,0.1248927265405655,0.0839725658297539,-0.0594622418284416,-0.0875908806920052,0.0305852852761745,0.0131721645593643,0.0513601936399937,-0.0551120638847351,0.0038793492130935));
res += mul(Get(s2,dx,dy), float4x4(0.0493037924170494,-0.0609106458723545,-0.0059455339796841,0.0078817969188094,0.0869888737797737,0.0890208631753922,0.0119775002822280,0.0577332936227322,0.0515435002744198,0.1236232966184616,0.0637965947389603,0.0911844447255135,0.0593293532729149,-0.1184778138995171,-0.0215085372328758,0.2027517855167389));
res += mul(Get(s3,dx,dy), float4x4(-0.0417533554136753,0.0433879978954792,-0.1613563895225525,0.0527163110673428,-0.0818879827857018,0.0661769583821297,0.0142313241958618,0.0167333539575338,-0.0713154375553131,-0.0177397932857275,-0.1279013454914093,-0.1350156217813492,-0.0222921110689640,-0.0174055583775043,0.1170147061347961,0.0702601298689842));
res += mul(Get(s4,dx,dy), float4x4(-0.0203471183776855,-0.1063711196184158,-0.0826331004500389,0.0479491949081421,0.0578731372952461,0.0435181073844433,0.1527390480041504,0.0529782399535179,0.0185646396130323,0.2099317461252213,-0.1749109029769897,-0.0181437730789185,-0.2164755165576935,-0.2022176384925842,-0.1946747750043869,0.0097817936912179));
res += mul(Get(s5,dx,dy), float4x4(-0.0829293206334114,-0.0277245715260506,0.0628518387675285,0.1048295125365257,0.0516924038529396,0.0739607065916061,0.0138057321310043,-0.0009856050601229,0.0620751418173313,-0.0223099701106548,-0.0116930678486824,-0.0552633926272392,0.0449883006513119,0.0873083695769310,0.0100721707567573,0.2527647316455841));
res = max(float4(0, 0, 0, 0), res) + float4(0.9984027743339539,1.7232357263565063,1.9934455156326294,-0.4957989454269409) * min(float4(0, 0, 0, 0), res);
return res;
}