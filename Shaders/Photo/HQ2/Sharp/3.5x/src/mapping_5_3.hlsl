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
res += mul(Get(s0,-dx,-dy), float4x4(0.025233035907149,-0.065574727952480,0.022167544811964,-0.033323071897030,0.012489753775299,0.087665662169456,-0.065543539822102,0.008666920475662,-0.002188155194744,-0.083619050681591,0.165063947439194,0.065459661185741,0.002265669638291,0.039933271706104,0.007185503374785,0.067520581185818));
res += mul(Get(s0,-dx,0), float4x4(-0.081196732819080,0.140946328639984,-0.086385637521744,0.133270263671875,0.070763945579529,0.042941059917212,0.065317578613758,-0.003402170725167,-0.056170806288719,0.038665268570185,0.038090046495199,0.011586963199079,0.108262784779072,0.027274385094643,0.004572026897222,0.011637158691883));
res += mul(Get(s0,-dx,dy), float4x4(0.032489612698555,-0.132154539227486,-0.004249708261341,0.098918326199055,-0.035546790808439,-0.072537057101727,-0.097824364900589,0.088177680969238,-0.137405902147293,0.069139078259468,-0.100210599601269,-0.019775550812483,0.071188718080521,0.048103738576174,-0.030654653906822,0.037539146840572));
res += mul(Get(s0,0,-dy), float4x4(0.022973945364356,0.017761105671525,-0.036245685070753,0.011883121915162,0.005057039670646,-0.104499287903309,0.080432251095772,0.046761393547058,0.021105023100972,0.115463957190514,0.049474712461233,0.022374857217073,-0.095748424530029,-0.040814366191626,0.036634605377913,-0.081328712403774));
res += mul(Get(s0,0,0), float4x4(0.168062791228294,-0.058588519692421,-0.017688337713480,0.099060781300068,0.044454749673605,-0.049547988921404,-0.067704066634178,0.015094079077244,0.012021989561617,0.033977657556534,-0.000369203684386,-0.104209065437317,-0.161785408854485,0.086381390690804,-0.071128480136395,0.038207307457924));
res += mul(Get(s0,0,dy), float4x4(-0.069788321852684,-0.027628298848867,0.058331988751888,-0.036489747464657,-0.026052154600620,0.039165537804365,-0.038608077913523,-0.049323651939631,0.042958278208971,0.030908839777112,-0.066562220454216,0.151304602622986,-0.075121432542801,0.072682730853558,0.041487682610750,0.035367812961340));
res += mul(Get(s0,dx,-dy), float4x4(0.053696218878031,-0.158553421497345,-0.083039872348309,0.068554043769836,0.032410733401775,-0.093253597617149,-0.023521302267909,0.077217787504196,0.066271059215069,-0.082213133573532,-0.062776498496532,0.101941846311092,0.048041753470898,-0.025406558066607,-0.135544821619987,0.117457352578640));
res += mul(Get(s0,dx,0), float4x4(-0.137813389301300,0.045523207634687,-0.240537703037262,0.041790388524532,-0.165455967187881,-0.026491060853004,0.149135708808899,0.105701327323914,-0.094616331160069,-0.166082352399826,-0.182518690824509,-0.128182247281075,-0.010831821709871,-0.055594548583031,-0.020596332848072,-0.098224341869354));
res += mul(Get(s0,dx,dy), float4x4(0.114694535732269,-0.003842327510938,-0.046793434768915,-0.086070440709591,-0.018052356317639,-0.185090348124504,-0.107936643064022,0.048014167696238,0.006103346124291,0.082851164042950,-0.039555896073580,-0.110031597316265,-0.023676685988903,-0.011032078415155,0.029104501008987,0.059133738279343));
res += mul(Get(s1,-dx,-dy), float4x4(-0.012732249684632,0.064819619059563,0.138470247387886,-0.143204554915428,-0.110535442829132,-0.006378499325365,-0.057383716106415,-0.059670448303223,-0.024184526875615,-0.035167180001736,0.074178464710712,-0.091858610510826,-0.021453360095620,0.056717060506344,-0.046114511787891,0.020692232996225));
res += mul(Get(s1,-dx,0), float4x4(-0.031446516513824,0.103611841797829,0.118738278746605,-0.073345012962818,-0.017598543316126,-0.020807461813092,0.100881651043892,-0.051645174622536,-0.087737031280994,0.040086910128593,-0.024453645572066,-0.132820039987564,-0.100292876362801,0.078227870166302,-0.059144943952560,-0.019533222541213));
res += mul(Get(s1,-dx,dy), float4x4(0.082663089036942,0.086325824260712,0.062471278011799,0.049153923988342,-0.055901516228914,0.062766306102276,0.087887659668922,0.176639959216118,-0.099145084619522,-0.001957700122148,-0.024024462327361,-0.047134846448898,0.061052370816469,0.065768480300903,-0.010542769916356,0.119416549801826));
res += mul(Get(s1,0,-dy), float4x4(0.176206246018410,-0.159810140728951,0.111856430768967,0.039670839905739,-0.143354430794716,0.009241354651749,-0.144958391785622,0.028475558385253,0.009080165065825,-0.043490674346685,-0.072035782039165,0.029465062543750,-0.020881220698357,-0.084805637598038,0.018860789015889,0.006058640778065));
res += mul(Get(s1,0,0), float4x4(0.042338054627180,0.021937739104033,0.115237347781658,-0.038136243820190,0.060811050236225,0.064385227859020,0.028935072943568,0.093578509986401,0.143378391861916,0.041902694851160,-0.178573742508888,0.170608162879944,-0.302416145801544,-0.008950454182923,-0.042971774935722,0.104506820440292));
res += mul(Get(s1,0,dy), float4x4(-0.019302543252707,-0.258209496736526,-0.048874553292990,0.072272703051567,-0.010281982831657,-0.031110441312194,-0.047702927142382,0.035803083330393,0.042363129556179,-0.068496197462082,0.018818542361259,-0.063081972301006,0.160293772816658,0.035141441971064,-0.046305984258652,0.042366482317448));
res += mul(Get(s1,dx,-dy), float4x4(0.132608354091644,-0.134718149900436,-0.118451662361622,-0.156365171074867,0.133258581161499,-0.082024067640305,-0.109008722007275,-0.142436176538467,0.056986331939697,0.076553829014301,-0.108364187180996,0.005745446309447,-0.022102925926447,-0.095517471432686,-0.030581012368202,0.062799133360386));
res += mul(Get(s1,dx,0), float4x4(-0.009707036428154,-0.075785338878632,0.087864018976688,0.034645572304726,0.027906043455005,-0.109424009919167,0.051825821399689,-0.123278819024563,-0.026177734136581,0.107606552541256,-0.132546246051788,0.208885937929153,0.004663700703532,-0.018290013074875,-0.029064625501633,-0.139445006847382));
res += mul(Get(s1,dx,dy), float4x4(-0.031739749014378,-0.003400193527341,-0.064664952456951,0.024741653352976,0.036192603409290,0.073943443596363,-0.084051117300987,0.027316413819790,0.020703170448542,0.155389517545700,0.006215135566890,-0.084902182221413,-0.038438465446234,-0.118585281074047,-0.093984559178352,-0.051481951028109));
res += mul(Get(s2,-dx,-dy), float4x4(-0.007262616418302,-0.022378515452147,-0.128208056092262,-0.099570356309414,0.254148632287979,0.007441794499755,-0.009467212483287,-0.096842862665653,0.177950441837311,-0.006960541009903,-0.122725382447243,-0.077794753015041,-0.034947849810123,0.039850477129221,0.004151381086558,-0.006742999423295));
res += mul(Get(s2,-dx,0), float4x4(-0.026752360165119,0.019159264862537,-0.092695154249668,-0.125240355730057,-0.146997630596161,0.076138094067574,0.097257472574711,-0.090071544051170,0.167470231652260,0.012385830283165,0.143160432577133,0.085260562598705,-0.007993571460247,-0.006366158835590,-0.096568994224072,0.070381730794907));
res += mul(Get(s2,-dx,dy), float4x4(0.003308738581836,0.028640182688832,0.043053023517132,0.085055872797966,-0.114494293928146,-0.008962478488684,0.119048468768597,0.035850331187248,-0.101911716163158,0.018244834616780,0.092586375772953,0.009604291990399,-0.040300812572241,-0.047036480158567,-0.026189638301730,-0.088307663798332));
res += mul(Get(s2,0,-dy), float4x4(-0.042557518929243,0.058752600103617,-0.001951660262421,0.100746817886829,-0.104861460626125,-0.063053369522095,-0.016062697395682,-0.049336284399033,-0.056225240230560,-0.020188011229038,0.082552939653397,-0.078435257077217,-0.010537399910390,-0.058440275490284,-0.015987817198038,0.078165210783482));
res += mul(Get(s2,0,0), float4x4(-0.105340361595154,0.081081420183182,0.056466478854418,0.003185120411217,-0.125600710511208,-0.042509954422712,-0.030944740399718,0.040649607777596,0.054800059646368,-0.130727678537369,0.067077822983265,-0.015356491319835,0.004730437882245,-0.113881617784500,-0.034533135592937,0.063908390700817));
res += mul(Get(s2,0,dy), float4x4(-0.037797793745995,-0.018088793382049,0.076375357806683,-0.060109116137028,-0.036034822463989,-0.053730379790068,0.012089048512280,-0.064037412405014,0.056900992989540,-0.051015850156546,0.104045279324055,-0.030348991975188,-0.075858272612095,-0.066004127264023,-0.049390364438295,0.059804417192936));
res += mul(Get(s2,dx,-dy), float4x4(0.056216552853584,0.080942712724209,-0.062738209962845,0.093738250434399,-0.005649619270116,-0.095324851572514,-0.103986233472824,0.129601791501045,-0.079523541033268,-0.088367499411106,-0.068722248077393,-0.036269139498472,0.143738359212875,-0.052752323448658,-0.015805995091796,0.005417692475021));
res += mul(Get(s2,dx,0), float4x4(-0.002226914511994,0.084717169404030,-0.111070096492767,0.143215224146843,-0.016168192028999,0.099307358264923,-0.006858391221613,-0.010817703790963,-0.123745344579220,0.050807088613510,-0.010887161828578,0.037798110395670,0.060639750212431,-0.009067504666746,0.004254959989339,-0.172282367944717));
res += mul(Get(s2,dx,dy), float4x4(0.123812027275562,-0.013365100137889,-0.175463035702705,0.061232034116983,-0.152466446161270,-0.174942106008530,-0.009813321754336,0.001180786872283,0.019300246611238,-0.043860547244549,-0.023543810471892,0.276472806930542,-0.227858781814575,0.035511057823896,0.117406718432903,-0.015001377090812));
res += mul(Get(s3,-dx,-dy), float4x4(-0.060630153864622,0.018860297277570,-0.017800455912948,0.051227677613497,0.100466251373291,-0.039729349315166,-0.105933226644993,0.060361415147781,0.029246101155877,0.018176423385739,0.146670937538147,-0.094020321965218,-0.035104174166918,-0.140224948525429,0.081426113843918,-0.213566288352013));
res += mul(Get(s3,-dx,0), float4x4(0.025583207607269,0.071872197091579,0.017897551879287,-0.136653736233711,-0.201898470520973,-0.015275904908776,0.075923986732960,-0.088143855333328,0.090274892747402,-0.001266490318812,-0.041489716619253,0.034279439598322,-0.049417387694120,-0.019518896937370,0.134471759200096,0.113988265395164));
res += mul(Get(s3,-dx,dy), float4x4(0.062183301895857,0.003855663817376,-0.135872229933739,0.000946794229094,-0.083888925611973,-0.078443057835102,-0.069889761507511,-0.120209947228432,0.004119100049138,-0.006453341804445,-0.113747350871563,0.070460677146912,-0.033822618424892,0.095840848982334,0.146147608757019,-0.046815220266581));
res += mul(Get(s3,0,-dy), float4x4(-0.084278382360935,0.085821665823460,0.025403460487723,0.090367548167706,0.027146972715855,-0.017953116446733,-0.010672373697162,0.027239121496677,0.029222942888737,-0.166533470153809,-0.066288262605667,-0.065790034830570,0.089882291853428,-0.133327141404152,-0.108228415250778,-0.063197128474712));
res += mul(Get(s3,0,0), float4x4(0.136963680386543,-0.015013857744634,-0.006320558488369,0.004985873121768,0.066361613571644,0.014722753316164,0.005762042012066,-0.008850520476699,0.096618607640266,0.109043993055820,-0.064579620957375,0.148475378751755,-0.138548672199249,-0.146676808595657,0.010078147985041,0.055755704641342));
res += mul(Get(s3,0,dy), float4x4(-0.014371204189956,-0.024243736639619,-0.081678487360477,0.154414668679237,-0.127968952059746,0.129499167203903,0.066698320209980,-0.158579468727112,-0.066799283027649,0.038530349731445,0.017113355919719,0.017240794375539,0.088710725307465,-0.004206994548440,0.073191031813622,-0.021212587133050));
res += mul(Get(s3,dx,-dy), float4x4(-0.118822023272514,0.068414822220802,0.022016232833266,-0.002739397808909,0.116480074822903,-0.037441026419401,0.033126521855593,-0.063790753483772,0.152668073773384,-0.034298252314329,0.060944028198719,-0.173282369971275,0.026137419044971,-0.113473437726498,0.004541212692857,0.168445199728012));
res += mul(Get(s3,dx,0), float4x4(-0.047840613871813,0.026311190798879,-0.047070737928152,0.123432867228985,-0.095122888684273,-0.036242213100195,-0.134689539670944,-0.028607564046979,0.035054329782724,-0.056746199727058,0.021224241703749,0.029498783871531,-0.092220179736614,-0.026953667402267,0.103193208575249,0.156000643968582));
res += mul(Get(s3,dx,dy), float4x4(-0.056178778409958,0.011354761198163,-0.040279410779476,0.050247903913260,-0.037188287824392,0.017510551959276,0.111160680651665,-0.085913054645061,-0.165549695491791,-0.068512253463268,0.007027206476778,0.109197996556759,0.121439307928085,-0.063939698040485,-0.028380796313286,0.035105507820845));
res = max(float4(0,0,0,0), res);
return res;
}
