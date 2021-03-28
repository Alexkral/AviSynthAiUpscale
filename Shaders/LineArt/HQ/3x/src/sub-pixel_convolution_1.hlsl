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
float3 res = float3(-0.000907270063180,-0.000295428850222,-0.000121629083878);
res += mul(Get(s0,-dx,-dy), float4x3(0.000098410906503,0.000776491651777,0.000381249788916,-0.001481030136347,-0.011505733244121,-0.003156009595841,-0.005329291801900,-0.001355806598440,0.000261736917309,0.001963552320376,0.000150394858792,-0.000476620538393));
res += mul(Get(s0,-dx,0), float4x3(-0.003904166165739,-0.000635827658698,0.000013329629837,-0.010075189173222,0.005173097364604,0.020575668662786,-0.015167018398643,0.014682665467262,0.007924603298306,0.002088121837005,0.003566960804164,0.003976482432336));
res += mul(Get(s0,-dx,dy), float4x3(0.000171346546267,-0.001871848478913,-0.004997546784580,0.003090451704338,0.001960986992344,-0.004941930994391,-0.001010089181364,0.000520910776686,-0.012330231256783,-0.000005460388820,0.000331187300617,0.001856220420450));
res += mul(Get(s0,0,-dy), float4x3(0.000182731775567,-0.001346305478364,0.000278678809991,-0.001809521927498,0.001827332074754,-0.003233504714444,-0.003668450517580,0.001703882240690,0.001284086029045,0.003533199662343,0.002138581359759,-0.000137067763717));
res += mul(Get(s0,0,0), float4x3(0.004973168019205,-0.021125275641680,-0.005701897200197,0.000405525701353,-0.003090064972639,-0.009886231273413,0.028209401294589,0.011400284245610,-0.011507414281368,0.007249397691339,0.007083843927830,0.007424598094076));
res += mul(Get(s0,0,dy), float4x3(-0.004582821391523,0.009360990487039,0.028598809614778,0.000811649020761,0.001458498882130,-0.000468060228741,-0.001655476982705,-0.006782308686525,0.005788921844214,0.001550499699079,0.003235285170376,0.004333655349910));
res += mul(Get(s0,dx,-dy), float4x3(0.001088849734515,-0.000679975375533,-0.000992141664028,0.002800091402605,0.002490317681804,0.001174514065497,-0.001384865259752,-0.000450781895779,0.000418453855673,-0.000234597304370,-0.000205435106182,-0.000543707050383));
res += mul(Get(s0,dx,0), float4x3(0.009589852765203,0.007696006912738,0.001973842969164,0.000995023874566,0.001588519196957,0.003522892249748,-0.004206623416394,-0.003228958463296,-0.003583851736039,-0.001759835518897,-0.001373901148327,-0.000205970936804));
res += mul(Get(s0,dx,dy), float4x3(0.004584221169353,0.001894703251310,-0.000016157082428,-0.000959124881774,-0.001263817655854,0.000569517898839,0.001526287058368,0.002042088424787,-0.001757467980497,0.000226717951591,-0.000188587320736,-0.001422368455678));
res += mul(Get(s1,-dx,-dy), float4x3(-0.008158098906279,0.000343611842254,0.002643367275596,0.001114505692385,0.001170764910057,-0.000184573393199,0.001463364576921,0.000255167658906,-0.000120783734019,-0.007366958539933,-0.003026043297723,-0.000553396821488));
res += mul(Get(s1,-dx,0), float4x3(0.001012191059999,0.002665212843567,-0.001023255754262,0.006965251173824,-0.005926148034632,-0.002526477444917,0.000871703494340,0.002814857056364,0.002753067994490,-0.003648902289569,-0.010034843347967,-0.012882197275758));
res += mul(Get(s1,-dx,dy), float4x3(-0.001113995560445,-0.001650271471590,-0.001068277982995,-0.004244210664183,-0.007103528827429,0.013995973393321,0.000669239438139,0.000283425528323,0.000487452809466,0.000388798478525,0.002101400867105,0.001928972080350));
res += mul(Get(s1,0,-dy), float4x3(-0.006533961743116,0.013301685452461,0.006098961923271,-0.000138182163937,0.000797632907052,-0.000221011374379,0.006110572721809,0.002681759884581,-0.000124065278214,-0.001859647920355,0.001037660171278,0.001004029996693));
res += mul(Get(s1,0,0), float4x3(0.012103377841413,0.007909831590950,-0.015251656994224,-0.003523982828483,-0.006975580006838,-0.001125871320255,-0.010543604381382,-0.003822447033599,0.004674185533077,-0.017713455483317,-0.017133759334683,-0.008925388567150));
res += mul(Get(s1,0,dy), float4x3(-0.001279881573282,-0.001388701493852,-0.000186932520592,-0.003663694486022,-0.005591639783233,0.009571075439453,0.003783431136981,0.001265477039851,-0.005468572024256,0.000556726707146,-0.002312779892236,-0.008839352987707));
res += mul(Get(s1,dx,-dy), float4x3(0.000706739258021,-0.002952363342047,-0.001758546219207,0.000319605635013,0.000324828695739,0.000080221616372,0.004817565437406,0.001298903138377,0.000131795080961,0.000826158095151,0.000570230593439,0.000357759359758));
res += mul(Get(s1,dx,0), float4x3(-0.003172616474330,-0.001662138383836,0.003683786606416,0.002172035630792,-0.000338847050443,-0.001178754959255,0.003472996875644,0.007887783460319,0.008983966894448,0.002119942568243,0.001623770454898,0.001032082480378));
res += mul(Get(s1,dx,dy), float4x3(0.000371540168999,0.000201045550057,-0.000889815972187,-0.000142916993354,-0.000864387373440,0.002825963543728,-0.000781097623985,-0.002003623172641,-0.001277237082832,0.001128193456680,0.001839885953814,0.002265272662044));
res += mul(Get(s2,-dx,-dy), float4x3(-0.001729315961711,0.001183095271699,0.001032027648762,0.001686103176326,-0.002893612254411,-0.001909579499625,0.015861785039306,-0.001436466001906,-0.002612131182104,0.004064789041877,0.002126016421244,0.002424649894238));
res += mul(Get(s2,-dx,0), float4x3(-0.000213900595554,0.004555016290396,-0.001582832424901,-0.018138403072953,0.005974009167403,0.007870850153267,-0.004280010238290,-0.013612505979836,0.010672753676772,0.001360668800771,0.005109515972435,0.007279429584742));
res += mul(Get(s2,-dx,dy), float4x3(0.001130107790232,-0.000945837877225,-0.008366747759283,0.002391544403508,0.005854405928403,-0.005720402114093,0.000267858849838,-0.003835808951408,-0.002970781177282,0.002104141749442,0.000288362731226,-0.000735555076972));
res += mul(Get(s2,0,-dy), float4x3(-0.007767165079713,0.001936180517077,0.003072478342801,0.005163847003132,-0.001877978327684,-0.002454377710819,-0.014779382385314,-0.007609472144395,0.004985633771867,-0.015978936105967,-0.003695874707773,0.000744166667573));
res += mul(Get(s2,0,0), float4x3(0.029805120080709,-0.002678697230294,-0.017055671662092,-0.012771654874086,0.002917130943388,0.011672980152071,0.000254631740972,0.021966509521008,0.012801934033632,-0.011292974464595,-0.023883230984211,-0.030236605554819));
res += mul(Get(s2,0,dy), float4x3(-0.010111103765666,-0.011066871695220,0.017027070745826,-0.000404479593271,0.005721136927605,0.003635414876044,-0.002449906896800,-0.000689413107466,-0.002236550906673,-0.003746531205252,-0.004181920550764,-0.004255370702595));
res += mul(Get(s2,dx,-dy), float4x3(0.000202671275474,-0.000163162505487,-0.000242883950705,0.000494174542837,0.000128376777866,-0.000015975245333,-0.001463994616643,-0.000934402749408,0.000635394128039,0.001142312074080,0.000316097924951,0.000034184733522));
res += mul(Get(s2,dx,0), float4x3(-0.002830148441717,0.002134218811989,0.002022766275331,-0.001692549674772,-0.000357516953954,-0.000855241203681,-0.002102853963152,-0.003900026902556,-0.001644100178964,0.000402444478823,0.002115444513038,0.002614552387968));
res += mul(Get(s2,dx,dy), float4x3(0.001319452538155,0.001433299854398,-0.005766514223069,0.001091977348551,-0.000221941605560,-0.001694091944955,0.000841529748868,0.001027807360515,0.000115656126582,0.000247315154411,-0.000355724157998,-0.000332500785589));
res += mul(Get(s3,-dx,-dy), float4x3(-0.003738002851605,-0.000911656592507,0.000153181506903,-0.001454370911233,-0.002574630780146,0.002706894185394,0.004256553482264,-0.000446478079539,-0.000347162364051,0.000632769544609,-0.000629572488833,-0.000525504758116));
res += mul(Get(s3,-dx,0), float4x3(-0.011723672971129,-0.012728740461171,-0.009077068418264,0.001095794490539,-0.001362250884995,0.001339103910141,0.003381395014003,0.001991254976019,-0.004659862257540,0.003048589918762,0.002350959694013,0.002165033016354));
res += mul(Get(s3,-dx,dy), float4x3(0.000785835669376,-0.001504623913206,-0.006070470903069,-0.000774249376263,0.000067760796810,0.003001607954502,-0.000503818504512,-0.001703831600025,-0.001749911927618,-0.000110090317321,0.001420487067662,0.001601775642484));
res += mul(Get(s3,0,-dy), float4x3(0.006528607103974,0.000807769421954,-0.001040961127728,0.018062900751829,0.011125514283776,-0.002083972562104,0.007210193667561,0.008079471066594,-0.004177789203823,-0.002003492787480,0.010439074598253,0.002580112544820));
res += mul(Get(s3,0,0), float4x3(0.018304483965039,0.020362995564938,0.013459199108183,0.000319066049997,-0.019854405894876,-0.010823532007635,0.013378950767219,0.014048986136913,-0.035654846578836,0.023937705904245,-0.014970422722399,-0.041642487049103));
res += mul(Get(s3,0,dy), float4x3(-0.001992813544348,0.001534758252092,0.008641836233437,0.001623739139177,0.000517332169693,0.003251981921494,-0.001391757978126,-0.000653265859000,-0.003811302827671,-0.005238844081759,-0.001776548451744,0.013860572129488));
res += mul(Get(s3,dx,-dy), float4x3(-0.001778351725079,-0.000426378683187,0.000022286716558,-0.005047500599176,0.003240744816139,-0.000106342842628,0.000092555659648,-0.000750738370698,0.001333276624791,0.003738772589713,0.001566845807247,0.003549263114110));
res += mul(Get(s3,dx,0), float4x3(-0.005329903215170,-0.006000285036862,-0.004347541369498,0.007339364849031,0.000016429949028,-0.013305388391018,-0.000848773343023,-0.000705111538991,0.001940954709426,-0.002386827487499,-0.005235900636762,0.005419684108347));
res += mul(Get(s3,dx,dy), float4x3(0.000198776338948,-0.000686775252689,-0.002415023976937,0.000958215678111,0.002877383492887,0.005147376097739,-0.000326657609548,-0.000619344005827,0.000245993665885,0.001071292208508,-0.000453964254120,0.000109726548544));
res += mul(Get(s4,-dx,-dy), float4x3(-0.000008929746400,0.000790358462837,-0.000078423385276,0.004013302270323,-0.004389994777739,-0.000522177666426,-0.010615840554237,0.005552760325372,0.000200714857783,0.003716928651556,0.002127695130184,0.001200852799229));
res += mul(Get(s4,-dx,0), float4x3(-0.001849052612670,0.005278328433633,0.003188592847437,-0.007594553288072,-0.005036195740104,0.013529701158404,0.022522190585732,0.013828728348017,-0.020714772865176,0.012759076431394,0.010127582587302,0.007720960769802));
res += mul(Get(s4,-dx,dy), float4x3(-0.000761409872212,-0.000969685788732,-0.004629448987544,0.002253512851894,0.001427325187251,-0.001444467925467,0.000461054733023,0.000073406801675,0.004016266204417,-0.000519544933923,0.003506902139634,0.008111008442938));
res += mul(Get(s4,0,-dy), float4x3(0.009287759661674,-0.000344889995176,-0.000299207837088,-0.026149546727538,0.001349620637484,0.003145780880004,0.000610425428022,-0.003704078029841,-0.002652429975569,-0.000600789324380,-0.002908689202741,-0.000507337797899));
res += mul(Get(s4,0,0), float4x3(-0.034646853804588,-0.001415105885826,0.027260487899184,-0.011404834687710,0.011665461584926,0.013224216178060,0.003043573582545,0.013448100537062,0.014171781018376,0.022531410679221,0.020028788596392,0.010277521796525));
res += mul(Get(s4,0,dy), float4x3(0.000214951316593,0.002705986378714,-0.014787466265261,0.001569437794387,0.001250736997463,-0.001969164237380,-0.001380723435432,-0.000999825890176,0.000708337116521,0.001887480146252,0.007396677508950,0.015282708220184));
res += mul(Get(s4,dx,-dy), float4x3(-0.000100514189398,-0.000892074487638,0.000241770816501,0.003302940167487,-0.000994779169559,0.000427611026680,-0.001644692849368,0.001226754509844,0.001400317880325,-0.001706955605187,-0.000964626728091,0.000246150535531));
res += mul(Get(s4,dx,0), float4x3(-0.008001586422324,-0.009300780482590,0.000945492938627,-0.000570080068428,-0.003831638954580,0.001717276521958,0.000247963907896,-0.001098214648664,-0.002824143506587,-0.000206530356081,-0.000644450366963,-0.002166911959648));
res += mul(Get(s4,dx,dy), float4x3(-0.000694334972650,-0.001321217161603,-0.000800839916337,0.000340433645761,-0.000775069172960,-0.000733879394829,-0.000508457538672,0.000625249638688,0.000657164957374,-0.001683097681962,-0.001810937188566,-0.001263012294658));
res += mul(Get(s5,-dx,-dy), float4x3(-0.001092283288017,0.000309945316985,-0.000443228869699,-0.005260585807264,0.003981544170529,0.003923137672246,0.001251776935533,-0.000216651023948,-0.000030465489544,-0.004890797194093,-0.004443881567568,-0.001028405851685));
res += mul(Get(s5,-dx,0), float4x3(-0.001218630117364,0.000373131100787,0.000155396337504,0.009105913341045,-0.004821533802897,-0.014650336466730,-0.002306851092726,0.001338875386864,0.003037189831957,0.001127027091570,0.003327748971060,0.000492630410008));
res += mul(Get(s5,-dx,dy), float4x3(-0.000924374675378,-0.000265081442194,-0.001944455550984,-0.002639204030856,-0.000764898839407,0.008172804489732,0.002892538206652,0.001007839920931,-0.003777735168114,-0.002943589584902,-0.004055227153003,-0.003015713766217));
res += mul(Get(s5,0,-dy), float4x3(0.011046987026930,-0.005358893889934,-0.000250830344157,-0.007134844083339,0.004347654059529,0.004164921585470,-0.000014721272237,-0.001110231038183,0.000407554180128,-0.002136616269127,-0.007109256461263,-0.002910220995545));
res += mul(Get(s5,0,0), float4x3(0.019635314121842,-0.039038259536028,0.014122001826763,0.011240387335420,0.000188261212315,-0.010870490223169,-0.026263479143381,0.000753592990804,0.007161662913859,0.012018730863929,0.018377732485533,0.009913748130202));
res += mul(Get(s5,0,dy), float4x3(-0.001082326984033,-0.007956954650581,0.013737552799284,-0.003652699291706,-0.000924870022573,0.010742907412350,-0.019618358463049,0.031561024487019,0.004206346813589,-0.002857056912035,-0.003502425737679,-0.000484996795421));
res += mul(Get(s5,dx,-dy), float4x3(0.001129953889176,0.001022650511004,-0.002042892621830,0.000998784904368,-0.000209678881220,0.000572159828153,0.000416973925894,0.000049665435654,0.000298742059385,-0.001726097310893,-0.001035078894347,0.000465744262328));
res += mul(Get(s5,dx,0), float4x3(0.001569575746544,-0.003612871514633,0.002663850318640,-0.002098871394992,-0.000922121515032,0.001107230200432,0.000867101072799,0.000223851224291,-0.000394050468458,-0.003461944404989,-0.003638698952273,-0.002540173707530));
res += mul(Get(s5,dx,dy), float4x3(-0.001471482450143,0.000001466824415,-0.000969809421804,0.000265260110609,-0.000566685164813,-0.001999579835683,0.001829243032262,0.000267291645287,-0.002700761426240,0.000570603122469,0.000347396824509,-0.001569789834321));
return float4(res, 0);
}