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
res += mul(Get(s0,-dx,-dy), float4x4(0.078846156597137,-0.090806201100349,-0.006226821802557,0.025053035467863,0.022692097350955,-0.013315110467374,-0.010584561154246,-0.014506870880723,0.089144825935364,-0.031987853348255,0.017101956531405,0.031561464071274,0.036840688437223,0.044849012047052,0.000071646783908,-0.014581032097340));
res += mul(Get(s0,-dx,0), float4x4(0.058947972953320,-0.127005860209465,-0.002164472360164,0.044143863022327,0.057559069246054,-0.017054114490747,0.039036456495523,0.010917343199253,-0.006206600926816,-0.020386042073369,0.040970802307129,0.042935088276863,-0.017613917589188,0.024990512058139,-0.004860031884164,-0.021370172500610));
res += mul(Get(s0,-dx,dy), float4x4(-0.008987305685878,-0.053347516804934,-0.008183392696083,0.026743557304144,0.033229026943445,-0.007190912030637,0.035201173275709,0.021257476881146,0.002763286465779,-0.030418524518609,-0.018184635788202,0.033794142305851,0.010212600231171,0.072288453578949,-0.010612190701067,-0.015106526203454));
res += mul(Get(s0,0,-dy), float4x4(0.020435614511371,-0.097688682377338,-0.000715965579730,-0.032773479819298,-0.011934264563024,-0.010786632075906,0.000013982695236,-0.012515068985522,0.062714599072933,-0.014074895530939,0.025374185293913,0.004986517596990,0.019626474007964,0.007086507510394,0.000586238689721,-0.023168550804257));
res += mul(Get(s0,0,0), float4x4(-0.011608315631747,-0.131479412317276,-0.003271155524999,-0.023215135559440,0.013103228062391,-0.005290819797665,0.011396273970604,0.003709460841492,-0.002008872106671,-0.067478708922863,0.044206537306309,-0.014862259849906,-0.004041645675898,0.021887751296163,0.002138908719644,0.001370533136651));
res += mul(Get(s0,0,dy), float4x4(-0.040193680673838,-0.079677380621433,-0.042542781680822,-0.001660486101173,0.068802900612354,-0.036099955439568,0.042680084705353,-0.004840188194066,-0.006398023571819,-0.036729488521814,-0.009057693183422,0.003170980839059,-0.007896065711975,0.043402846902609,0.004056282807142,0.025590224191546));
res += mul(Get(s0,dx,-dy), float4x4(0.004914899822325,-0.045287407934666,0.010226693004370,-0.005804387386888,0.026427321135998,-0.001306299120188,-0.000953534734435,0.004779082257301,0.024088118225336,-0.009115818887949,0.017010286450386,0.000339108635671,0.026529606431723,0.025414211675525,0.021151365712285,0.024676106870174));
res += mul(Get(s0,dx,0), float4x4(-0.060859780758619,-0.066952623426914,-0.020753212273121,-0.013628396205604,-0.025557266548276,0.030538702383637,-0.012803570367396,-0.001756861107424,-0.038858618587255,-0.078912749886513,0.039314191788435,-0.009380880743265,-0.019684843719006,0.017349468544126,0.028249338269234,0.056584183126688));
res += mul(Get(s0,dx,dy), float4x4(-0.019600823521614,-0.038204118609428,-0.065155796706676,-0.009769547730684,0.058146197348833,0.032288264483213,0.028906278312206,0.000101955898572,-0.012399813160300,-0.051427129656076,-0.008257937617600,-0.000937150791287,-0.012891276739538,0.091589115560055,-0.005287208128721,0.053406342864037));
res += mul(Get(s1,-dx,-dy), float4x4(-0.014025818556547,0.134256258606911,0.042292926460505,-0.006150676403195,-0.111207000911236,-0.020070625469089,0.055512409657240,0.031848300248384,-0.006087629124522,0.170458167791367,-0.013327365741134,-0.034889057278633,0.099179789423943,0.120484143495560,0.010796103626490,-0.044584523886442));
res += mul(Get(s1,-dx,0), float4x4(-0.027875848114491,0.183757424354553,-0.029166078194976,-0.060672707855701,-0.060078047215939,0.003469751682132,0.000002109678462,-0.024493832141161,-0.132951840758324,0.353699684143066,-0.032304681837559,-0.082724407315254,-0.056252755224705,0.174687102437019,-0.025554159656167,-0.017817508429289));
res += mul(Get(s1,-dx,dy), float4x4(0.019762668758631,-0.000970646389760,-0.028158508241177,-0.051179490983486,-0.046658024191856,0.012282429262996,-0.011496166698635,-0.023607471957803,-0.049656309187412,0.070545680820942,-0.059988841414452,-0.112680584192276,0.017625300213695,0.000340338301612,-0.060071039944887,-0.047367487102747));
res += mul(Get(s1,0,-dy), float4x4(0.035618916153908,-0.041935395449400,0.058845330029726,0.091080620884895,-0.130712732672691,-0.067864708602428,0.034755814820528,0.045380309224129,0.397255480289459,-0.037194717675447,0.054487533867359,0.003677397500724,0.273179918527603,-0.012452944181859,0.067332431674004,0.021819442510605));
res += mul(Get(s1,0,0), float4x4(-0.069772519171238,-0.023959586396813,-0.063660494983196,0.054095160216093,-0.122672282159328,-0.060990456491709,-0.004772849846631,0.023853318765759,-0.043668329715729,-0.019682167097926,-0.006444584112614,0.130692377686501,-0.085244938731194,-0.046011622995138,-0.029697211459279,0.059761129319668));
res += mul(Get(s1,0,dy), float4x4(-0.046958010643721,-0.062919616699219,-0.027922533452511,-0.027785308659077,-0.106489814817905,-0.027990175411105,-0.011690781451762,0.013658043928444,-0.123315677046776,-0.070446282625198,-0.085770443081856,0.022704983130097,-0.010241325013340,0.014266363345087,-0.075454607605934,-0.016117444261909));
res += mul(Get(s1,dx,-dy), float4x4(0.016631396487355,-0.028380151838064,0.031591929495335,-0.048056188970804,-0.097793005406857,-0.006343504413962,0.015144652687013,-0.043649572879076,0.131198987364769,-0.116854660212994,0.038889341056347,-0.070217199623585,0.066728524863720,-0.030916173011065,0.041618000715971,-0.017388461157680));
res += mul(Get(s1,dx,0), float4x4(0.003831376088783,-0.001059853588231,-0.055396527051926,-0.008717122487724,-0.092671036720276,-0.013806330040097,-0.000437129667262,0.005795656703413,-0.073755070567131,-0.164822831749916,0.009584913030267,-0.054698493331671,-0.079547055065632,-0.075170904397964,-0.014732019044459,-0.048405636101961));
res += mul(Get(s1,dx,dy), float4x4(0.033026162534952,0.011578858830035,-0.021555306389928,0.009762217290699,-0.064659804105759,-0.035052672028542,-0.012235985137522,0.038347002118826,-0.066053986549377,-0.081465132534504,-0.078788854181767,-0.021875334903598,0.006326276343316,0.040383238345385,-0.056593023240566,-0.031537774950266));
res += mul(Get(s2,-dx,-dy), float4x4(0.021480627357960,0.115925148129463,0.068568885326385,-0.000668338674586,-0.013020021840930,-0.003024397185072,-0.000332662806613,0.002408586908132,0.097419038414955,0.031151231378317,0.021182039752603,0.024684250354767,0.008205889724195,0.053547546267509,0.016019226983190,0.023246573284268));
res += mul(Get(s2,-dx,0), float4x4(-0.038219235837460,0.054748602211475,0.005491342395544,-0.019018080085516,-0.005236686673015,-0.013296282850206,0.015130277723074,0.008119169622660,-0.046266738325357,-0.026243234053254,-0.027086550369859,0.041267592459917,-0.002283756155521,0.093447923660278,0.021827738732100,0.013986444100738));
res += mul(Get(s2,-dx,dy), float4x4(-0.078508958220482,-0.066306196153164,0.002635989803821,-0.027468165382743,-0.002150084357709,-0.011644955724478,-0.002074296120554,0.012855743989348,-0.039881333708763,-0.027555879205465,-0.012523692101240,-0.002751746680588,-0.001478827791288,0.034189444035292,0.002392061054707,0.005390877369791));
res += mul(Get(s2,0,-dy), float4x4(-0.009633759967983,0.011229533702135,0.062601178884506,0.052643857896328,-0.009471557103097,0.009883760474622,-0.000219906651182,0.002900441875681,0.096694447100163,-0.020336896181107,0.049968101084232,-0.049721196293831,0.104589350521564,-0.055105637758970,0.027737287804484,0.061060070991516));
res += mul(Get(s2,0,0), float4x4(-0.134875744581223,-0.003564592450857,-0.013802546076477,0.038138817995787,0.018303636461496,-0.000904565677047,0.003918924834579,-0.003455189755186,-0.043975062668324,-0.077752090990543,-0.018505843356252,-0.036839485168457,-0.023278975859284,-0.044110145419836,0.007888322696090,0.102777227759361));
res += mul(Get(s2,0,dy), float4x4(-0.178805783390999,-0.022441374137998,-0.002375215291977,-0.015404423698783,0.028263004496694,-0.004993261769414,-0.003261200385168,-0.002478885697201,-0.077730037271976,-0.023947767913342,-0.013216417282820,0.000384461134672,-0.069530785083771,-0.117134422063828,-0.000646101194434,0.048201873898506));
res += mul(Get(s2,dx,-dy), float4x4(0.065828844904900,0.037435635924339,0.036925304681063,-0.059828236699104,0.006386035587639,0.005389438010752,-0.003093040781096,-0.000053129631851,0.035978976637125,-0.051496021449566,0.024361724033952,-0.032268475741148,0.031366497278214,0.034605350345373,0.017458952963352,0.018691448494792));
res += mul(Get(s2,dx,0), float4x4(-0.031927566975355,0.026881491765380,-0.006711053662002,-0.036001138389111,0.001837042160332,-0.004339135717601,0.004552501253784,-0.006667433306575,-0.043098047375679,-0.107073381543159,-0.006851325277239,-0.044415198266506,-0.026869656518102,0.035307042300701,0.006210902705789,0.049144424498081));
res += mul(Get(s2,dx,dy), float4x4(-0.036480568349361,0.014551026746631,-0.004063363652676,-0.000703079218511,0.034197915345430,-0.009784786030650,-0.001340829883702,0.001849567168392,-0.056166049093008,-0.039663635194302,-0.012532393448055,-0.014742625877261,-0.033152543008327,0.000660825287923,-0.009258926846087,0.048342429101467));
res += mul(Get(s3,-dx,-dy), float4x4(-0.031974740326405,0.000968383275904,0.015453417785466,0.015702405944467,0.007981522940099,-0.012080137617886,-0.000791628728621,0.010644223541021,0.102495640516281,-0.035694282501936,0.032521210610867,0.044893119484186,0.034492783248425,-0.015997420996428,-0.023240795359015,-0.024564633145928));
res += mul(Get(s3,-dx,0), float4x4(0.001401658868417,0.084274441003799,0.000961449462920,-0.001577445189469,-0.085384756326675,0.069761261343956,0.047418627887964,0.013196841813624,-0.032111898064613,-0.051287338137627,-0.013230190612376,0.061246801167727,0.053693436086178,-0.042817827314138,0.041550211608410,-0.009939653798938));
res += mul(Get(s3,-dx,dy), float4x4(-0.013279059901834,0.018069995567203,0.000876842008438,-0.003387650940567,-0.034763418138027,0.024677379056811,-0.001974733546376,0.003145397175103,-0.042089305818081,0.014510401524603,-0.038738783448935,0.048027731478214,0.027301436290145,-0.031503967940807,0.008515601977706,0.011548914946616));
res += mul(Get(s3,0,-dy), float4x4(-0.018592080101371,-0.030295833945274,0.014624371193349,0.006815818604082,0.012859618291259,-0.022882442921400,0.022211467847228,-0.003447188297287,0.016603099182248,-0.055094067007303,-0.000345035805367,-0.014029381796718,0.006518441252410,-0.026057412847877,-0.031173747032881,-0.015692016109824));
res += mul(Get(s3,0,0), float4x4(-0.003406216856092,0.021424468606710,0.000238039545366,0.014385586604476,-0.074527248740196,0.008449018001556,0.039001874625683,0.015520099550486,-0.043808951973915,-0.060154795646667,-0.030114572495222,-0.014684898778796,0.047430086880922,-0.014916799962521,0.036392487585545,-0.004726896062493));
res += mul(Get(s3,0,dy), float4x4(-0.000418012030423,0.010893754661083,0.004249237943441,0.010108547285199,-0.043701894581318,-0.002492984291166,-0.003914032597095,0.011017291806638,-0.041303381323814,-0.015177937224507,-0.045094430446625,0.013624554499984,0.037897448986769,-0.020824901759624,0.038227375596762,0.013915783725679));
res += mul(Get(s3,dx,-dy), float4x4(-0.002424039412290,-0.033224660903215,-0.004935645498335,-0.010994127951562,0.017254719510674,-0.028031438589096,0.001369271893054,-0.007837057113647,0.016295880079269,0.009779657237232,-0.014506213366985,-0.014207989908755,0.085654780268669,-0.026631729677320,-0.018953436985612,0.005057941190898));
res += mul(Get(s3,dx,0), float4x4(0.000209227990126,-0.001260426826775,0.001585999503732,-0.004899711813778,-0.072185270488262,-0.060825277119875,0.049793399870396,-0.019342109560966,-0.002154265297577,0.015587333589792,-0.023872792720795,-0.022626422345638,0.032612845301628,-0.001703435205854,0.014510654844344,0.013410357758403));
res += mul(Get(s3,dx,dy), float4x4(-0.004404671955854,0.008703405037522,-0.004198253154755,0.011126876808703,-0.027293490245938,-0.032410051673651,-0.003867221297696,0.009057034738362,-0.013893367722631,-0.027063075453043,-0.031526394188404,-0.023147298023105,0.074787996709347,-0.011020737700164,0.016070354729891,0.006640636362135));
return max(float4(0,0,0,0), res);
}
