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
res += mul(Get(s0,-dx,-dy), float4x4(0.044556874781847,-0.012849839404225,-0.032427947968245,-0.007234035991132,0.035576805472374,0.090019136667252,0.012613243423402,-0.011949512176216,-0.008820530958474,0.043839361518621,-0.020956706255674,-0.032675858587027,-0.032441280782223,-0.032529052346945,-0.034616388380527,0.018949531018734));
res += mul(Get(s0,-dx,0), float4x4(0.036430981010199,-0.002353069605306,-0.007076995912939,-0.025976730510592,-0.000731465581339,-0.015975313261151,-0.004349287133664,0.007558887824416,0.081819258630276,0.003011013614014,0.023580191656947,-0.082587584853172,-0.023802962154150,-0.031125800684094,-0.057600051164627,0.067088633775711));
res += mul(Get(s0,-dx,dy), float4x4(0.005655640736222,0.028953423723578,0.016457149758935,0.045504320412874,-0.006834203377366,-0.040693793445826,-0.008462404832244,0.031134409829974,0.054601505398750,0.030104964971542,0.012633237056434,-0.130431100726128,-0.040679827332497,-0.026721976697445,-0.058175381273031,0.059301171451807));
res += mul(Get(s0,0,-dy), float4x4(-0.035546060651541,-0.017560105770826,-0.020055409520864,-0.054864734411240,0.003471847623587,0.058210667222738,0.016367765143514,0.005406341981143,0.027853148058057,0.052452929317951,-0.013757536187768,-0.060453541576862,-0.026434509083629,-0.005179059226066,-0.010581783950329,0.021782523021102));
res += mul(Get(s0,0,0), float4x4(-0.048332739621401,0.003518295940012,0.015664514154196,-0.054888512939215,0.074113495647907,0.001902180258185,0.011110306717455,-0.021952725946903,-0.002549851778895,-0.045998789370060,0.056464828550816,-0.005875376053154,0.008034382946789,0.066709280014038,0.028986966237426,-0.017278138548136));
res += mul(Get(s0,0,dy), float4x4(-0.060114026069641,-0.001081398455426,0.036197222769260,-0.012232726439834,0.056716255843639,0.022787271067500,0.100590616464615,-0.084781244397163,-0.010295307263732,-0.002925720298663,-0.022045742720366,-0.052892319858074,-0.040550481528044,0.044235013425350,0.007973778061569,0.021879816427827));
res += mul(Get(s0,dx,-dy), float4x4(-0.001031965832226,-0.005230151116848,-0.018611660227180,-0.069283790886402,-0.041911426931620,0.023783285170794,-0.025057980790734,0.058600105345249,-0.073110438883305,0.069711081683636,-0.010998956859112,-0.079499244689941,-0.042131643742323,0.038528013974428,-0.015447964891791,-0.003711432218552));
res += mul(Get(s0,dx,0), float4x4(0.119229450821877,0.097201429307461,0.027483860030770,-0.072518944740295,-0.035165995359421,0.010644085705280,-0.009490867145360,0.044900551438332,-0.018350703641772,-0.083569057285786,0.078694455325603,-0.058618340641260,-0.061223436146975,0.033569101244211,0.019760891795158,-0.041887849569321));
res += mul(Get(s0,dx,dy), float4x4(0.093487605452538,0.130899235606194,0.068653084337711,-0.010308255441487,-0.119637310504913,-0.012678028084338,0.055925562977791,-0.083457209169865,0.005253444425762,-0.051167305558920,0.007866281084716,-0.020237009972334,-0.066252328455448,-0.023107847198844,0.002481367439032,-0.001288360566832));
res += mul(Get(s1,-dx,-dy), float4x4(0.000434165907791,0.036623027175665,0.010502520017326,0.013178376480937,-0.003288422245532,-0.047058459371328,0.067464493215084,-0.011584492400289,-0.057794183492661,0.047361679375172,-0.004893878009170,-0.013369700871408,0.045337960124016,0.028619969263673,0.030515307560563,0.012587437406182));
res += mul(Get(s1,-dx,0), float4x4(-0.003858100390062,0.000932479277253,0.024178946390748,0.015634737908840,-0.023869330063462,0.009466280229390,0.045069105923176,-0.042374253273010,-0.036653608083725,0.015836561098695,-0.007992210797966,-0.015110847540200,0.069119073450565,-0.033375721424818,0.039733853191137,-0.077383041381836));
res += mul(Get(s1,-dx,dy), float4x4(0.009534709155560,-0.035721734166145,-0.038410980254412,-0.024482471868396,-0.046034365892410,0.035903576761484,0.038826659321785,-0.018353758379817,-0.030789757147431,0.026074660941958,0.029554970562458,-0.064936749637127,-0.011868235655129,-0.011249592527747,0.001385153736919,-0.047253508120775));
res += mul(Get(s1,0,-dy), float4x4(-0.057041347026825,-0.089007265865803,0.032022047787905,0.007313116919249,-0.006033123470843,0.012999671511352,0.137611642479897,-0.038137596100569,-0.022131767123938,0.063017994165421,-0.027479531243443,-0.038884907960892,-0.035625264048576,0.072481691837311,0.099405914545059,-0.020076617598534));
res += mul(Get(s1,0,0), float4x4(-0.005399752408266,-0.029173938557506,-0.028293572366238,0.031953416764736,-0.096331633627415,-0.049317643046379,-0.020328443497419,-0.023388134315610,-0.019970105960965,0.016324944794178,-0.018651543185115,-0.036253143101931,-0.047158665955067,-0.078873783349991,0.031637445092201,-0.059470169246197));
res += mul(Get(s1,0,dy), float4x4(0.026995640248060,0.012500033713877,0.055898912250996,-0.053351610898972,-0.051775161176920,-0.011082571931183,-0.034575533121824,0.038004007190466,-0.046441730111837,-0.035021662712097,-0.028567774221301,-0.004646521061659,-0.016437213867903,-0.039972227066755,-0.002768977079540,0.013765620067716));
res += mul(Get(s1,dx,-dy), float4x4(-0.026186682283878,-0.067748107016087,0.010695080272853,-0.037863276898861,0.055633723735809,0.009615032002330,0.081399850547314,-0.078551694750786,-0.057080853730440,0.009186794981360,-0.029888121411204,-0.003412768011913,-0.043878532946110,0.016948526725173,0.048804719001055,-0.030398605391383));
res += mul(Get(s1,dx,0), float4x4(-0.056971147656441,-0.048520110547543,-0.003277436131611,-0.027124281972647,0.057499408721924,-0.029874088242650,0.056872576475143,-0.089881911873817,-0.070140652358532,-0.036931607872248,-0.033620577305555,-0.001552799134515,-0.017683116719127,-0.038015127182007,-0.022197199985385,0.032172255218029));
res += mul(Get(s1,dx,dy), float4x4(-0.073082953691483,0.003955144435167,0.007823949679732,0.008900290355086,0.027054430916905,-0.010884786024690,-0.009055589325726,-0.068595282733440,-0.069478303194046,-0.088986091315746,-0.053647737950087,0.043591238558292,-0.041024528443813,-0.041826236993074,-0.002465072786435,0.001667737611569));
res += mul(Get(s2,-dx,-dy), float4x4(-0.010834474116564,0.005054324399680,-0.028298605233431,0.038711443543434,0.008153634145856,0.076691262423992,-0.098161771893501,0.001198128215037,-0.034137010574341,0.070411480963230,0.012045430950820,0.022179067134857,0.033299032598734,-0.032484427094460,-0.003090880811214,-0.029727803543210));
res += mul(Get(s2,-dx,0), float4x4(0.011999185197055,0.033461414277554,-0.059659995138645,0.033769484609365,0.163035184144974,0.075165770947933,-0.071433223783970,0.050075225532055,-0.017858058214188,0.021749524399638,0.016663463786244,0.077158987522125,0.033766172826290,-0.051681172102690,0.046938516199589,0.016347268596292));
res += mul(Get(s2,-dx,dy), float4x4(0.077177494764328,0.026114294305444,0.044084966182709,0.038450285792351,0.017090816050768,0.036303799599409,-0.086265161633492,-0.008874006569386,-0.000431547814514,0.032462723553181,-0.008756483905017,0.056107945740223,-0.021630825474858,-0.008021573536098,-0.017555491998792,0.006668154615909));
res += mul(Get(s2,0,-dy), float4x4(-0.155422270298004,-0.018902109935880,-0.003060584189370,0.070094309747219,0.042101524770260,0.047035284340382,-0.018973033875227,-0.043623231351376,-0.018216913565993,0.039046909660101,0.007461412344128,-0.029449302703142,0.007029412314296,-0.026026226580143,-0.003329650964588,-0.039792656898499));
res += mul(Get(s2,0,0), float4x4(-0.071569569408894,0.055414874106646,-0.010918120853603,-0.032182753086090,0.127235338091850,0.085334829986095,0.009467794559896,0.012144003063440,0.099001690745354,0.034150578081608,0.019137093797326,0.003890763502568,0.079942412674427,0.005991565994918,0.078416377305984,-0.044172376394272));
res += mul(Get(s2,0,dy), float4x4(0.063922375440598,0.048044200986624,0.050879653543234,-0.047575149685144,0.006755375768989,0.009555531665683,0.001582501223311,0.004938055761158,0.083161577582359,-0.028996123000979,-0.003060479648411,0.026587849482894,-0.002830502344295,0.017019005492330,-0.008734299801290,-0.040601890534163));
res += mul(Get(s2,dx,-dy), float4x4(-0.013249121606350,-0.056479379534721,-0.007338381838053,0.074861519038677,-0.256295084953308,0.011865871958435,-0.079289242625237,0.079725317656994,0.039824694395065,0.088802881538868,0.034082397818565,-0.100941367447376,-0.034533023834229,-0.044557385146618,0.007191242184490,0.007529420778155));
res += mul(Get(s2,dx,0), float4x4(0.093199685215950,0.030204765498638,-0.003369381884113,0.082855157554150,-0.228422164916992,-0.018077477812767,-0.060340397059917,0.017197657376528,0.074896857142448,0.050438597798347,0.049321696162224,-0.036700561642647,0.035597093403339,-0.005018584895879,0.024250913411379,-0.033389739692211));
res += mul(Get(s2,dx,dy), float4x4(-0.128172963857651,-0.101349331438541,-0.039916194975376,0.022314706817269,-0.053337793797255,0.003494997741655,-0.027327360585332,0.015193853527308,-0.064840756356716,-0.066965200006962,0.025986418128014,-0.040048789232969,0.040846694260836,0.031220225617290,0.003808164037764,-0.052943874150515));
res += mul(Get(s3,-dx,-dy), float4x4(-0.036720372736454,0.046482216566801,0.048574924468994,-0.016240485012531,0.059255868196487,0.041342273354530,-0.015749780461192,-0.040083300322294,0.022213235497475,0.094100154936314,0.024508032947779,-0.079678907990456,0.054106011986732,0.014424837194383,-0.044622078537941,0.066499136388302));
res += mul(Get(s3,-dx,0), float4x4(-0.039539121091366,0.056166782975197,0.021864308044314,-0.010194256901741,0.031984541565180,-0.035444002598524,0.003404687391594,0.036222051829100,-0.020018197596073,0.023145182058215,-0.010184267535806,-0.042388234287500,0.158884018659592,-0.027616413310170,0.053052876144648,0.062522217631340));
res += mul(Get(s3,-dx,dy), float4x4(-0.039947699755430,-0.060882672667503,0.047276817262173,-0.005924048367888,0.029466593638062,-0.061648909002542,-0.012100473977625,0.058422472327948,-0.026451654732227,-0.028534691780806,-0.013551270589232,0.030090743675828,0.069639541208744,-0.035184714943171,-0.015178266912699,0.023024655878544));
res += mul(Get(s3,0,-dy), float4x4(-0.046393223106861,0.054043632000685,0.090730458498001,0.001004582620226,0.016139140352607,0.047766160219908,0.072536610066891,-0.053002070635557,-0.042422235012054,0.092118434607983,-0.005147038958967,-0.003369305282831,0.007392860483378,0.064632616937160,0.043879609555006,0.034848801791668));
res += mul(Get(s3,0,0), float4x4(-0.035330414772034,0.034567508846521,-0.017701223492622,0.013020110316575,0.026967380195856,0.009342666715384,0.026398045942187,0.085469111800194,-0.124129109084606,0.012770821340382,-0.029864374548197,-0.002490886254236,0.010098042897880,-0.075969778001308,0.074147261679173,0.038537427783012));
res += mul(Get(s3,0,dy), float4x4(0.074376970529556,-0.096637368202209,-0.005244523286819,0.051399149000645,0.037658955901861,-0.010338569059968,0.016058379784226,0.061845920979977,-0.019875738769770,-0.088818885385990,-0.051389485597610,0.036368217319250,0.018330955877900,-0.113362990319729,0.004763337783515,0.083479270339012));
res += mul(Get(s3,dx,-dy), float4x4(0.000920231745113,0.051317665725946,0.075155317783356,0.022699423134327,-0.028937596827745,0.023255474865437,0.067418046295643,0.039724245667458,-0.087669700384140,-0.053728237748146,-0.001546070794575,0.007064937148243,-0.036729294806719,0.068273328244686,0.025874808430672,0.009093180298805));
res += mul(Get(s3,dx,0), float4x4(0.078876212239265,-0.112320527434349,0.040290888398886,-0.024725651368499,-0.013151877559721,0.018002524971962,0.127329230308533,0.072491578757763,0.073843605816364,0.012137578800321,-0.033892467617989,0.082850895822048,0.003178336890414,-0.024567635729909,0.009996591135859,0.022444069385529));
res += mul(Get(s3,dx,dy), float4x4(0.025799600407481,-0.102106645703316,0.003714404068887,0.005686248652637,0.026693413034081,-0.013984646648169,0.006978501565754,0.063642404973507,-0.003802990075201,-0.165215268731117,-0.053745150566101,0.103908307850361,-0.028152845799923,-0.043723396956921,-0.005774890072644,0.023199239745736));
res = max(float4(0,0,0,0), res);
return res;
}
