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
res += mul(Get(s0,-dx,-dy), float4x4(0.007929198443890,0.007066524121910,-0.000170024926774,-0.024970985949039,-0.000714650494047,-0.028601873666048,0.088198184967041,-0.065955191850662,-0.007043775636703,0.001715941587463,0.007766998372972,-0.014078425243497,0.011405489407480,-0.020492156967521,-0.029346873983741,0.094483584165573));
res += mul(Get(s0,-dx,0), float4x4(-0.000754856155254,-0.002670501125976,0.011612868867815,0.000985242077149,-0.011015797033906,-0.038406655192375,-0.039008744060993,0.019152285531163,0.004681212827563,0.011298767291009,0.040246706455946,-0.024111824110150,-0.003491878742352,-0.058329887688160,0.051265936344862,-0.067793853580952));
res += mul(Get(s0,-dx,dy), float4x4(0.000221482099732,-0.010425628162920,0.016387529671192,-0.021613191813231,0.006633505225182,-0.005544804967940,-0.091703765094280,-0.012929650954902,-0.002592512639239,0.003709350945428,0.035567246377468,-0.059268802404404,-0.017380235716701,0.009804452769458,-0.021127376705408,0.021587179973722));
res += mul(Get(s0,0,-dy), float4x4(0.019199360162020,-0.010467171669006,-0.005446889903396,-0.000266021670541,-0.013956721872091,0.005144744180143,0.069026835262775,-0.064548514783382,0.002664477797225,-0.016563277691603,-0.005789870861918,-0.006455846596509,0.014928240329027,-0.038777001202106,-0.008419290184975,0.073636576533318));
res += mul(Get(s0,0,0), float4x4(-0.001604266697541,0.010030662640929,0.023362211883068,-0.018644273281097,-0.015988690778613,0.015150854364038,-0.075192697346210,0.098122023046017,-0.009133275598288,-0.011888624168932,0.025864124298096,-0.024153869599104,-0.017148977145553,-0.065328478813171,0.087994419038296,-0.240612879395485));
res += mul(Get(s0,0,dy), float4x4(0.006517348345369,-0.011284092441201,0.026489334180951,-0.044131819158792,-0.009423906914890,0.049595985561609,-0.096412383019924,0.087236158549786,-0.016100112348795,-0.006551172118634,0.027071088552475,-0.062800735235214,0.006092121358961,0.025422492995858,-0.018562510609627,0.056597385555506));
res += mul(Get(s0,dx,-dy), float4x4(0.009366481564939,-0.011966279707849,-0.000619857164565,0.004280186258256,0.007434402126819,0.060671515762806,0.046312548220158,-0.043045960366726,0.005197656806558,0.005664172116667,0.004510498605669,-0.007313217967749,0.009018238633871,-0.042184133082628,-0.001188463880681,0.089623942971230));
res += mul(Get(s0,dx,0), float4x4(-0.002456168876961,0.001817423384637,0.032079562544823,-0.013694659806788,-0.008263953961432,0.057038731873035,-0.049782559275627,0.054375708103180,0.005965915042907,-0.003545240266249,0.021750200539827,-0.024724759161472,-0.020621104165912,-0.042084012180567,0.049226965755224,-0.001639158581384));
res += mul(Get(s0,dx,dy), float4x4(0.005470392294228,-0.014946534298360,0.008103875443339,-0.039821356534958,-0.007694070693105,0.099477112293243,-0.074415937066078,0.073556438088417,-0.005761406384408,0.002428400330245,0.022371366620064,-0.053167577832937,0.001525221858174,0.053731728345156,-0.040496464818716,0.012714532203972));
res += mul(Get(s1,-dx,-dy), float4x4(0.011783655732870,0.003032216336578,-0.001527573214844,-0.004127057269216,0.000270061224001,0.009572803042829,0.003245860105380,-0.005487991962582,-0.002095829229802,-0.012210661545396,0.007392391096801,0.000190122445929,-0.003893434768543,0.012481762096286,-0.007550011854619,-0.024494707584381));
res += mul(Get(s1,-dx,0), float4x4(-0.005439300555736,0.003243670566007,-0.003466460620984,0.000289574876660,0.009478199295700,-0.012068561278284,0.011871342547238,-0.002355397213250,-0.000848564144690,-0.008795198053122,0.022086836397648,0.010066089220345,0.000622206367552,0.017237324267626,0.006837636232376,0.002874806988984));
res += mul(Get(s1,-dx,dy), float4x4(0.004754085093737,-0.003273004433140,-0.003932191524655,0.008882300928235,0.006129771936685,-0.001103570102714,0.006821884308010,-0.019115786999464,0.005624587181956,0.005396071821451,-0.010725956410170,0.017339786514640,-0.022035839036107,0.017713226377964,0.018474778160453,-0.011082431301475));
res += mul(Get(s1,0,-dy), float4x4(-0.003998423926532,0.004420212935656,-0.007448775228113,0.002716318937019,-0.009743171744049,0.010215006768703,-0.003659981768578,-0.015435063280165,-0.002823481569067,-0.012727471999824,-0.002721787197515,0.003916254267097,-0.004967242013663,0.030939353629947,-0.008480261079967,-0.002655568299815));
res += mul(Get(s1,0,0), float4x4(0.006152636837214,-0.004455249756575,-0.001108933123760,-0.000951899157371,0.002850915072486,0.003644105978310,-0.002312897471711,-0.014425066299736,0.006604831665754,0.006980028934777,-0.001980349421501,-0.020637126639485,-0.001016270136461,0.006947666872293,-0.001242372207344,-0.008537611924112));
res += mul(Get(s1,0,dy), float4x4(-0.005270417779684,-0.027812633663416,0.009114197455347,0.014113150537014,0.005301254335791,0.012244297191501,0.004433067515492,0.004870465956628,-0.000033023356082,-0.007528841029853,0.012099882587790,0.010485501028597,-0.010555106215179,0.002346366411075,0.014430574141443,0.012511106207967));
res += mul(Get(s1,dx,-dy), float4x4(-0.004185017198324,0.001124294591136,0.001140045933425,0.002628544578329,0.002048406051472,-0.007185650523752,-0.015060110017657,-0.019453058019280,-0.014186815358698,0.009320736862719,-0.016813782975078,0.004560485482216,0.004482317250222,0.016564462333918,0.001096229767427,0.002451045438647));
res += mul(Get(s1,dx,0), float4x4(-0.014249909669161,0.009263793006539,-0.008429795503616,0.007350332569331,-0.022439027205110,0.004875402897596,-0.001502631697804,-0.014804099686444,0.013509900309145,0.005581263452768,-0.012965268455446,0.004855121020228,0.003172543365508,0.009696333669126,-0.006917197722942,-0.006956175435334));
res += mul(Get(s1,dx,dy), float4x4(-0.000461807474494,-0.003607989754528,0.008873959071934,-0.016583701595664,0.008296871557832,0.000403433630709,-0.024060804396868,-0.023765504360199,-0.000021553982151,0.006751990411431,0.000057802637457,-0.002321671927348,-0.004952998831868,0.014698405750096,0.008139508776367,0.006401698105037));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000610269955359,-0.009772508405149,-0.006098653655499,-0.006782883312553,-0.008011085912585,0.011046525090933,0.005166017450392,0.002521089278162,-0.007792542222887,0.003346167039126,0.004824263975024,-0.020182250067592,-0.011431357823312,-0.004081625491381,0.000371742469724,-0.008530917577446));
res += mul(Get(s2,-dx,0), float4x4(0.000810043187812,-0.001424726564437,-0.007589877583086,-0.021167006343603,0.005793377291411,-0.000729081744794,0.005920621566474,0.013133504427969,-0.000154085224494,0.008093315176666,0.008595323190093,-0.005523301661015,0.018129084259272,0.005521266721189,-0.004153193905950,0.011154098436236));
res += mul(Get(s2,-dx,dy), float4x4(-0.009067604318261,-0.009827904403210,-0.004581789020449,-0.004486564546824,0.000203847434022,-0.010351327247918,-0.015885427594185,0.001101126545109,0.006891747470945,0.004760211333632,-0.001196117606014,0.019190391525626,0.003630838124081,0.026545427739620,0.006223919335753,0.015578881837428));
res += mul(Get(s2,0,-dy), float4x4(0.004123257473111,0.004346048925072,-0.006336883641779,-0.001147007336840,-0.013776794075966,-0.008849631063640,-0.005620972719043,-0.000715132220648,-0.000854924146552,-0.002368130721152,0.003858367446810,-0.009719193913043,-0.004319375380874,0.027890132740140,0.004793195519596,-0.041800715029240));
res += mul(Get(s2,0,0), float4x4(0.007524501066655,-0.003928310237825,-0.004859753418714,-0.008926346898079,0.004771531093866,0.001769412891008,-0.017945442348719,0.017193093895912,0.013663636520505,0.002944163512439,0.019870473071933,-0.001209176029079,-0.001646819640882,0.024396013468504,-0.020615380257368,-0.020402146503329));
res += mul(Get(s2,0,dy), float4x4(0.002455232432112,-0.007117805536836,-0.006168155465275,-0.019241863861680,0.009768646210432,0.002920150756836,0.001055207569152,-0.001057651010342,0.003713259240612,0.022510400041938,0.005816091783345,-0.003584473161027,-0.001291587599553,0.022293858230114,0.011174947954714,-0.005739491898566));
res += mul(Get(s2,dx,-dy), float4x4(0.000952227856033,0.005105857737362,0.001492489012890,0.002681506564841,0.003901610849425,-0.010813089087605,0.000719945353922,0.012191449292004,-0.002077802317217,0.007664482574910,-0.004888481460512,0.013281409628689,0.000443112920038,0.030550384894013,-0.007176001090556,-0.018520327284932));
res += mul(Get(s2,dx,0), float4x4(-0.002579682506621,0.012833663262427,-0.000785520998761,0.004700678400695,0.001841167686507,0.003539212979376,-0.000369036744814,-0.008319388143718,-0.003028777893633,-0.000118320873298,-0.007759477943182,-0.021508241072297,0.010100209154189,-0.001040908857249,0.003396056126803,0.011860876344144));
res += mul(Get(s2,dx,dy), float4x4(0.010563507676125,-0.010030693374574,0.004100331570953,-0.000906919711269,-0.007541832514107,0.000935295945965,0.003915712237358,0.007076026871800,0.026666559278965,-0.008832230232656,0.009695578366518,-0.005080137867481,-0.008302528411150,0.000039044527512,0.002982585458085,0.016923716291785));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007903167977929,-0.017221987247467,0.000719428528100,-0.009142182767391,0.001716252067126,-0.008554941974580,-0.045664131641388,0.016464034095407,-0.012194137088954,-0.073610030114651,-0.090365625917912,0.161805585026741,0.014773414470255,0.001904359203763,0.014500561170280,-0.012815499678254));
res += mul(Get(s3,-dx,0), float4x4(-0.001409352407791,-0.017735635861754,-0.001659850357100,-0.013546755537391,0.001795446383767,-0.010535432957113,-0.033401302993298,0.141425505280495,-0.010940771549940,-0.145214945077896,0.129500731825829,-0.098275259137154,-0.010389702394605,-0.000346322834957,0.004377946723253,0.002711137756705));
res += mul(Get(s3,-dx,dy), float4x4(0.000812854035757,0.010202170349658,-0.004974222276360,-0.008858315646648,0.011839377693832,-0.048789095133543,0.002462278585881,-0.030927201732993,0.015053119510412,0.030350198969245,-0.047028753906488,-0.068876743316650,-0.008949363604188,0.003098641289398,0.003521425649524,-0.003583172103390));
res += mul(Get(s3,0,-dy), float4x4(0.012279290705919,0.028440469875932,0.005455537233502,0.008165946230292,-0.015640622004867,-0.035028062760830,-0.023725785315037,0.006243644282222,0.016917752102017,-0.123396821320057,-0.050328049808741,0.130012556910515,-0.000447892030934,0.006123504135758,0.004676808137447,-0.042099509388208));
res += mul(Get(s3,0,0), float4x4(0.001190044800751,0.015076266601682,-0.012252202257514,-0.007894421927631,-0.009169849567115,-0.008267641067505,-0.040856610983610,0.100143358111382,-0.003536863252521,-0.145410329103470,0.171299055218697,-0.294905990362167,-0.001421975437552,0.015499033965170,0.002318972256035,-0.033049929887056));
res += mul(Get(s3,0,dy), float4x4(0.001768526039086,0.013644136488438,-0.010612580925226,-0.017954761162400,-0.016482895240188,-0.009141175076365,-0.005011623725295,-0.186229184269905,-0.001327103353105,0.102995872497559,-0.120589353144169,0.355578213930130,-0.002988921944052,-0.010493759065866,0.004387194290757,-0.002718150615692));
res += mul(Get(s3,dx,-dy), float4x4(-0.002628583926708,-0.006738272961229,-0.004798721056432,0.005796840880066,-0.008579014800489,-0.014250266365707,0.010138059966266,-0.033701799809933,0.003485592780635,-0.077626183629036,-0.005812406074256,0.251718044281006,0.013396652415395,0.007461489178240,-0.001234034425579,-0.020748587325215));
res += mul(Get(s3,dx,0), float4x4(-0.000368071399862,0.000175705368747,-0.004785906523466,0.009678550064564,0.001811055350117,0.004685480613261,-0.023170644417405,0.020835205912590,-0.015671316534281,-0.051981635391712,0.101062692701817,-0.269249618053436,0.007534157484770,0.018909407779574,0.002884665736929,-0.003759889863431));
res += mul(Get(s3,dx,dy), float4x4(-0.008161564357579,0.005264627281576,0.000573387718759,0.006977996323258,0.002455739537254,-0.013843654654920,-0.032318968325853,-0.039772786200047,-0.000724311918020,0.203972667455673,-0.111741088330746,0.015446226112545,-0.004483957774937,-0.007894632406533,-0.008763759396970,-0.025906452909112));
res = max(float4(0,0,0,0), res);
return res;
}
