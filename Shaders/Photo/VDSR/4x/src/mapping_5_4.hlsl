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
res += mul(Get(s0,-dx,-dy), float4x4(-0.025690315291286,0.051111754029989,0.164227843284607,0.019565250724554,-0.062796257436275,-0.176202535629272,0.182351171970367,0.098027519881725,0.078657746315002,0.037956882268190,0.083972796797752,-0.024591336026788,-0.103848412632942,0.035244520753622,-0.067532539367676,-0.043229632079601));
res += mul(Get(s0,-dx,0), float4x4(-0.073723033070564,-0.004832458682358,0.074806556105614,0.061275616288185,0.153384581208229,-0.093562968075275,0.016528204083443,0.026869874447584,0.246914118528366,0.018629584461451,0.079470373690128,0.042534839361906,-0.188094943761826,0.045729909092188,-0.060817681252956,0.055935598909855));
res += mul(Get(s0,-dx,dy), float4x4(0.041869912296534,0.058475770056248,0.160537719726563,0.093550965189934,0.252523094415665,-0.137072324752808,0.009960478171706,0.063561685383320,-0.050286475569010,-0.137856289744377,0.142427027225494,0.016684463247657,0.266226798295975,0.030232924968004,-0.045888759195805,0.588150203227997));
res += mul(Get(s0,0,-dy), float4x4(0.066310897469521,-0.101342670619488,0.012034655548632,-0.013986285775900,0.165933087468147,-0.052527856081724,-0.061956293880939,-0.043861102312803,-0.042748585343361,0.050882831215858,0.035941299051046,-0.091642826795578,-0.077407024800777,-0.001729538547806,-0.166031584143639,-0.040731225162745));
res += mul(Get(s0,0,0), float4x4(0.128539353609085,-0.103097088634968,-0.128232002258301,0.052073586732149,-0.138085216283798,0.058838453143835,-0.026495648548007,-0.079927057027817,-0.088396176695824,-0.033118881285191,-0.007110596168786,0.011864109896123,0.026249490678310,0.021426104009151,-0.069476030766964,-0.080993801355362));
res += mul(Get(s0,0,dy), float4x4(0.019470991566777,0.034902762621641,0.115948401391506,0.091071814298630,-0.143465384840965,-0.129926681518555,-0.224795058369637,-0.134497627615929,0.081294439733028,-0.079679995775223,-0.132097616791725,-0.092635475099087,0.014174610376358,-0.138084232807159,0.194775938987732,-0.084898896515369));
res += mul(Get(s0,dx,-dy), float4x4(-0.110102675855160,0.182616829872131,-0.119398579001427,-0.124015972018242,0.125543147325516,-0.100159533321857,-0.025949105620384,-0.085170812904835,-0.048574775457382,0.117272131145000,-0.105358652770519,-0.093392848968506,-0.012196955271065,-0.061403803527355,0.116880819201469,-0.001629776903428));
res += mul(Get(s0,dx,0), float4x4(-0.175149530172348,0.034823745489120,-0.000852262601256,-0.096781127154827,-0.066922366619110,0.056048028171062,-0.016509272158146,-0.022883115336299,-0.173313438892365,-0.039888799190521,-0.142320796847343,0.014685237780213,-0.112032093107700,-0.080235131084919,0.154094353318214,0.055630143731833));
res += mul(Get(s0,dx,dy), float4x4(-0.092479184269905,0.207731068134308,-0.157630309462547,0.007173161022365,-0.184809356927872,-0.104895927011967,-0.127254158258438,-0.070002824068069,0.127044349908829,-0.070697970688343,-0.245478913187981,-0.113502360880375,-0.000117588606372,0.068229369819164,-0.064040847122669,0.237728461623192));
res += mul(Get(s1,-dx,-dy), float4x4(-0.067917615175247,-0.070944830775261,0.107451327145100,0.059755243360996,-0.098280563950539,-0.044428229331970,0.229097023606300,0.082143001258373,-0.045054156333208,0.010730857029557,0.161294519901276,-0.077573813498020,-0.015494910068810,-0.070100076496601,0.038329329341650,0.032068155705929));
res += mul(Get(s1,-dx,0), float4x4(-0.025271799415350,-0.058363519608974,0.040769387036562,0.047554612159729,0.024289332330227,-0.116994149982929,0.131356805562973,-0.014002315700054,-0.044005535542965,0.011919846758246,0.057037577033043,-0.059634882956743,-0.006163259968162,-0.069154813885689,-0.001442899229005,-0.074147187173367));
res += mul(Get(s1,-dx,dy), float4x4(-0.069565072655678,-0.043003030121326,0.075251914560795,0.097333326935768,-0.021843547001481,-0.118613287806511,0.047104865312576,-0.170174673199654,0.058976802974939,-0.097534507513046,-0.043935418128967,-0.074339948594570,0.107105411589146,-0.124658674001694,-0.121314443647861,-0.080280445516109));
res += mul(Get(s1,0,-dy), float4x4(0.109195232391357,-0.019587436690927,0.285346806049347,0.065282583236694,-0.135352522134781,0.119946472346783,-0.094866223633289,0.058187630027533,-0.090386770665646,-0.042864616960287,0.094680011272430,-0.043454196304083,-0.060505289584398,-0.094686165452003,0.084639303386211,-0.095686629414558));
res += mul(Get(s1,0,0), float4x4(0.055333521217108,-0.027951953932643,0.076424598693848,0.031782660633326,-0.022359341382980,0.117399498820305,-0.163310959935188,0.036696907132864,0.067538626492023,-0.005124283023179,-0.110729455947876,0.002257025334984,-0.107733622193336,-0.023184085264802,0.272797733545303,-0.263883739709854));
res += mul(Get(s1,0,dy), float4x4(0.010669439099729,-0.042256042361259,-0.083668068051338,-0.000475830631331,-0.059271402657032,0.275508821010590,-0.117584958672523,-0.058590386062860,0.041035909205675,-0.061692886054516,-0.203035920858383,-0.138933643698692,-0.181872442364693,-0.051819819957018,-0.000075691437814,-0.043461076915264));
res += mul(Get(s1,dx,-dy), float4x4(-0.122828640043736,0.089024581015110,0.166708111763000,-0.002366733737290,0.032238733023405,-0.122067905962467,0.044123392552137,0.008501037023962,-0.091850839555264,-0.112278066575527,0.082332409918308,0.041075456887484,0.008737510070205,-0.058873392641544,0.115003295242786,0.071438550949097));
res += mul(Get(s1,dx,0), float4x4(0.032280500978231,0.068235695362091,-0.011945393867791,-0.071366928517818,0.255064070224762,-0.055519036948681,-0.082387164235115,0.151642724871635,-0.060066580772400,0.193915843963623,-0.107198551297188,0.006344875786453,-0.012996660545468,-0.020131526514888,0.022181700915098,0.038133829832077));
res += mul(Get(s1,dx,dy), float4x4(0.015794616192579,0.080360367894173,-0.172866985201836,-0.109484978020191,0.065146408975124,0.069805942475796,-0.089417867362499,0.177168771624565,-0.015471995808184,0.182130008935928,-0.129803076386452,-0.155763491988182,-0.119018346071243,0.009951359592378,-0.211590439081192,0.205997183918953));
res += mul(Get(s2,-dx,-dy), float4x4(0.003808214794844,-0.023544086143374,0.133255749940872,-0.043855078518391,0.204982757568359,0.207345843315125,0.038716085255146,-0.038046054542065,0.068089604377747,0.077472172677517,0.021811643615365,-0.033376276493073,-0.075694173574448,-0.081878356635571,0.206959784030914,-0.162469759583473));
res += mul(Get(s2,-dx,0), float4x4(-0.055428840219975,-0.026887090876698,0.064307697117329,-0.098515100777149,0.048972249031067,-0.041360612958670,-0.073653861880302,-0.031066430732608,0.057821057736874,0.142241969704628,-0.087727561593056,-0.036471251398325,-0.046603463590145,-0.014589237049222,0.043938022106886,0.044930212199688));
res += mul(Get(s2,-dx,dy), float4x4(-0.054789334535599,-0.031742956489325,-0.077780954539776,-0.103731945157051,0.117810070514679,0.035463143140078,-0.104762457311153,-0.114559479057789,0.020931210368872,0.085586406290531,-0.217764541506767,-0.051558125764132,0.039326485246420,0.046082306653261,-0.052913371473551,0.013131172396243));
res += mul(Get(s2,0,-dy), float4x4(0.081163942813873,0.043682832270861,-0.017951792106032,0.026339881122112,0.107965737581253,0.126227140426636,0.035971976816654,-0.069963783025742,0.027234543114901,-0.005473800934851,-0.091480158269405,-0.182995945215225,0.007352978456765,-0.087256066501141,0.080248214304447,-0.073027558624744));
res += mul(Get(s2,0,0), float4x4(0.126879379153252,-0.126959010958672,0.112033247947693,-0.014004019089043,-0.062725722789764,-0.148301675915718,0.069109052419662,-0.069305896759033,-0.034407518804073,-0.012176897376776,-0.179457768797874,-0.052163891494274,-0.016690816730261,-0.084544643759727,-0.009530961513519,-0.025122648105025));
res += mul(Get(s2,0,dy), float4x4(0.003005192615092,-0.114618226885796,0.056100089102983,-0.186337426304817,-0.010515849106014,-0.134423211216927,-0.036310542374849,-0.094897940754890,-0.042945064604282,-0.028596380725503,-0.090596832334995,-0.051580898463726,0.038251925259829,0.017336636781693,-0.084460705518723,-0.116667397320271));
res += mul(Get(s2,dx,-dy), float4x4(-0.059891115874052,0.260525912046432,-0.177394941449165,0.002141353441402,-0.050220102071762,0.091251119971275,0.121859014034271,0.009081780910492,0.030125908553600,-0.030706480145454,-0.071520939469337,0.149190872907639,-0.005177962128073,0.072348438203335,-0.026794604957104,-0.100308828055859));
res += mul(Get(s2,dx,0), float4x4(-0.043693482875824,-0.023940145969391,-0.054934538900852,0.010594191029668,-0.017600262537599,-0.104399017989635,0.024412008002400,-0.036559242755175,0.218542218208313,-0.079287692904472,-0.125292763113976,0.072939015924931,-0.016165597364306,-0.070272408425808,-0.095426894724369,-0.038125470280647));
res += mul(Get(s2,dx,dy), float4x4(0.034879893064499,-0.032541792839766,-0.109874375164509,-0.115453749895096,0.042618423700333,-0.080876998603344,-0.044590994715691,-0.054024800658226,0.318427711725235,-0.053539950400591,-0.132213339209557,-0.045936949551105,-0.024717582389712,-0.046613462269306,-0.166885614395142,-0.080946318805218));
res += mul(Get(s3,-dx,-dy), float4x4(0.064948409795761,-0.012400363571942,0.087357595562935,0.097493715584278,0.117797344923019,0.028148105368018,0.057697620242834,-0.031540978699923,0.016739459708333,0.138886302709579,-0.017859475687146,-0.002278038999066,-0.085900641977787,-0.095923759043217,-0.001911590225063,0.045335687696934));
res += mul(Get(s3,-dx,0), float4x4(-0.017302423715591,-0.014121112413704,-0.071387082338333,-0.005607694853097,0.040615145117044,-0.010778211988509,0.087002940475941,-0.077492319047451,0.003224964719266,0.050767552107573,-0.114259377121925,-0.010055358521640,0.196464121341705,-0.025029165670276,0.005861500743777,-0.000195962857106));
res += mul(Get(s3,-dx,dy), float4x4(-0.193083181977272,-0.057776466012001,0.000304419430904,0.031628284603357,0.217552691698074,0.009790823794901,-0.041979435831308,-0.176113829016685,-0.087349034845829,0.010972729884088,0.000646020867862,0.028457839041948,0.001932557555847,-0.139161542057991,-0.067045003175735,-0.088368512690067));
res += mul(Get(s3,0,-dy), float4x4(0.036534313112497,0.080830760300159,-0.095512755215168,0.109565734863281,0.056803718209267,0.023025317117572,0.057365544140339,-0.087759144604206,0.086464367806911,0.066514842212200,0.113464832305908,0.023825028911233,-0.254484146833420,-0.076590858399868,-0.134694293141365,0.206992566585541));
res += mul(Get(s3,0,0), float4x4(-0.035056415945292,0.069934427738190,-0.075306840240955,0.115772843360901,-0.055152613669634,-0.015729345381260,-0.020138917490840,-0.094982758164406,0.018358623608947,-0.032423015683889,-0.092837542295456,-0.132804900407791,-0.020752141252160,-0.035528324544430,-0.009970683604479,0.190035790205002));
res += mul(Get(s3,0,dy), float4x4(-0.123033940792084,0.008011262863874,-0.007794823031873,0.024076534435153,0.018964767456055,-0.055245380848646,-0.078117005527020,-0.074357546865940,-0.065581135451794,-0.077821440994740,-0.086808986961842,0.000209575286135,0.099218517541885,-0.043575789779425,-0.096236757934093,0.004387961234897));
res += mul(Get(s3,dx,-dy), float4x4(0.056593041867018,0.041891906410456,-0.054852142930031,0.273706585168839,-0.140623614192009,0.008172987028956,-0.097043015062809,-0.190502718091011,0.002213800558820,0.231700927019119,0.053957171738148,-0.054023649543524,-0.122727654874325,-0.029860388487577,-0.149756431579590,0.136404931545258));
res += mul(Get(s3,dx,0), float4x4(-0.096649929881096,0.039086371660233,-0.047749750316143,0.043822012841702,-0.170745626091957,-0.018506513908505,-0.074941024184227,-0.091606631875038,-0.048481300473213,0.067545413970947,-0.077799201011658,-0.020357247442007,-0.143582805991173,-0.038215830922127,0.032683704048395,-0.000441107054939));
res += mul(Get(s3,dx,dy), float4x4(-0.082701712846756,-0.043705217540264,-0.023998521268368,0.004135846626014,-0.074383758008480,-0.112249225378036,0.033017959445715,-0.067643761634827,-0.127503484487534,-0.041113261133432,-0.086134165525436,-0.029649851843715,-0.148406371474266,-0.065910071134567,0.122722253203392,0.038553293794394));
return max(float4(0,0,0,0), res);
}
