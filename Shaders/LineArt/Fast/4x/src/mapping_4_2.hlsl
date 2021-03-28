sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.235524162650108,-0.143208682537079,-0.166819959878922,-0.082470178604126);
res += mul(Get(s0,-dx,-dy), float4x4(0.068002976477146,0.123543202877045,0.122076526284218,-0.122919738292694,-0.037195783108473,0.068878322839737,0.028860380873084,-0.334959477186203,-0.351049065589905,-0.260588645935059,-0.097148783504963,-0.434481978416443,-0.126072719693184,-0.102701470255852,-0.016774540767074,-0.109554678201675));
res += mul(Get(s0,-dx,0), float4x4(-0.023547688499093,-0.029946509748697,0.056937720626593,-0.028478691354394,-0.169848620891571,-0.257312476634979,0.016400314867496,-0.111610949039459,0.008257940411568,-0.284044027328491,0.155083253979683,-0.125934153795242,0.107432536780834,0.009699518792331,0.152239665389061,0.268953889608383));
res += mul(Get(s0,-dx,dy), float4x4(0.008574362844229,-0.016825603321195,-0.062053434550762,-0.061167120933533,-0.026566963642836,0.019095810130239,-0.036786545068026,-0.010940009728074,-0.004294795915484,0.026191612705588,0.044514387845993,0.176714390516281,0.021668646484613,0.086323127150536,0.050695613026619,-0.105273038148880));
res += mul(Get(s0,0,-dy), float4x4(-0.001703091431409,-0.040198173373938,-0.048121750354767,-0.063321158289909,0.374105960130692,0.331297039985657,0.027913503348827,-0.141832709312439,-1.122763872146606,-0.223040536046028,-0.234639152884483,-0.894999861717224,0.436755031347275,0.322772800922394,-0.185602918267250,-0.089865446090698));
res += mul(Get(s0,0,0), float4x4(0.032882615923882,0.074297070503235,0.092441201210022,-0.065012000501156,-0.235040828585625,-0.061920568346977,0.020634708926082,-0.333016037940979,-0.446700513362885,-0.848102688789368,-1.464867234230042,0.067814171314240,-0.141706958413124,-0.145523905754089,-0.230518117547035,0.214395403862000));
res += mul(Get(s0,0,dy), float4x4(-0.061115313321352,-0.090529151260853,0.039428383111954,0.253987401723862,-0.172717645764351,-0.139062836766243,-0.078901544213295,0.336587935686111,-0.024060135707259,0.045993857085705,-0.122322238981724,-0.055086158216000,-0.010828827507794,0.051318582147360,-0.056154407560825,-0.179437160491943));
res += mul(Get(s0,dx,-dy), float4x4(-0.525684237480164,-0.409536659717560,-0.036927055567503,0.011452938430011,0.131703600287437,0.071063220500946,0.131382510066032,-0.157272681593895,-0.106088027358055,-0.041216939687729,-0.088663868606091,-0.140797436237335,0.083236210048199,0.050643533468246,0.090831100940704,-0.244696781039238));
res += mul(Get(s0,dx,0), float4x4(0.516034066677094,0.434391170740128,-0.026471594348550,-0.140546515583992,0.054425016045570,-0.008940443396568,0.585965275764465,-0.097142808139324,0.124087519943714,0.020948711782694,-0.621745824813843,-0.039097990840673,0.185733973979950,0.055206377059221,0.170453384518623,0.015853399410844));
res += mul(Get(s0,dx,dy), float4x4(-0.175964698195457,-0.196231931447983,-0.078186266124249,0.191012650728226,-0.048540327697992,-0.052091911435127,0.204812690615654,0.154126867651939,0.002452031010762,-0.003274649847299,-0.130354553461075,0.120048515498638,-0.058518126606941,-0.057951804250479,-0.004161184187979,0.094639368355274));
res += mul(Get(s1,-dx,-dy), float4x4(0.073029629886150,0.118557281792164,0.004503219854087,0.061606444418430,0.045029718428850,0.084711298346519,-0.012162124738097,0.024758599698544,0.049530688673258,-0.028116988018155,0.027124255895615,0.141387984156609,-0.120718367397785,-0.042091004550457,-0.093065604567528,-0.140770792961121));
res += mul(Get(s1,-dx,0), float4x4(0.047416802495718,0.015124127268791,-0.199383497238159,0.020966693758965,-0.078669100999832,-0.033149428665638,-0.014434137381613,0.048740472644567,-0.000852448574733,0.020849689841270,0.054270491003990,0.144064813852310,0.015328190289438,0.113137751817703,-0.102027751505375,-0.098793581128120));
res += mul(Get(s1,-dx,dy), float4x4(-0.010899977758527,0.052531387656927,0.017060443758965,-0.123943693935871,-0.024596868082881,0.016811706125736,-0.031985383480787,-0.034715704619884,0.002676649950445,-0.013634533621371,-0.042312920093536,0.024333842098713,-0.022476356476545,-0.081560194492340,-0.045032251626253,0.200607433915138));
res += mul(Get(s1,0,-dy), float4x4(-0.659927129745483,-0.776745557785034,0.074544191360474,-0.768112897872925,-0.524887561798096,0.393193632364273,0.069305427372456,0.076581388711929,-0.269400477409363,-0.148561269044876,-0.004215753171593,0.068135820329189,0.122077792882919,0.121764272451401,0.251520663499832,-0.426322907209396));
res += mul(Get(s1,0,0), float4x4(-0.042420979589224,-0.821834802627563,0.503149926662445,0.596219480037689,-0.226406633853912,0.190010622143745,0.038374986499548,-0.559232652187347,0.692420899868011,0.747780799865723,0.008983587846160,-0.320542663335800,-0.098589219152927,-0.193923711776733,0.381319016218185,0.005899232812226));
res += mul(Get(s1,0,dy), float4x4(0.029670670628548,0.226170361042023,0.047369014471769,-0.439799934625626,-0.053061135113239,-0.068467877805233,-0.011064030230045,0.248536005616188,0.174304157495499,-0.336773395538330,0.086321368813515,0.348780244588852,-0.020123608410358,0.024276884272695,0.225488260388374,0.090731866657734));
res += mul(Get(s1,dx,-dy), float4x4(-0.034608967602253,0.028026081621647,-0.037797406315804,-0.022255085408688,0.182072713971138,0.278278738260269,0.055430080741644,-0.179017856717110,-0.131774857640266,-0.054233003407717,-0.056027911603451,-0.026284692808986,-0.100578874349594,-0.067527793347836,-0.035741768777370,0.084172710776329));
res += mul(Get(s1,dx,0), float4x4(0.198601558804512,0.088571466505527,0.683235824108124,0.215945795178413,-0.136284291744232,0.004196259193122,0.222850054502487,-0.027168294414878,0.287838816642761,0.074783213436604,-0.125728711485863,0.068739816546440,-0.184821337461472,-0.112059421837330,-0.377422064542770,-0.172587230801582));
res += mul(Get(s1,dx,dy), float4x4(-0.017681218683720,0.058787334710360,-0.034660600125790,-0.290715306997299,0.015838341787457,-0.016109287738800,-0.002653916366398,0.152634337544441,0.126317724585533,0.044532619416714,-0.035004492849112,0.248357802629471,0.139109283685684,0.076860211789608,-0.047438722103834,0.088058821856976));
res += mul(Get(s2,-dx,-dy), float4x4(-0.015152504667640,-0.013459994457662,0.054720271378756,-0.060666356235743,-0.004836022388190,-0.030034011229873,-0.037546239793301,0.140846744179726,0.019594222307205,-0.022156553342938,-0.040934171527624,-0.008277456276119,0.063880614936352,0.103999651968479,0.059373114258051,-0.180551663041115));
res += mul(Get(s2,-dx,0), float4x4(-0.084143526852131,-0.011930900625885,-0.157335445284843,-0.099068194627762,0.070245727896690,0.066753134131432,-0.057512588799000,-0.117844775319099,0.064253881573677,0.107318155467510,-0.088608756661415,-0.006965445820242,0.001297269598581,-0.061590742319822,0.068758070468903,0.135503619909286));
res += mul(Get(s2,-dx,dy), float4x4(0.022803485393524,-0.021129257977009,-0.061820667237043,0.030824882909656,-0.019655006006360,0.028280258178711,-0.015510319732130,-0.010307744145393,-0.022077333182096,-0.059247061610222,-0.070837691426277,0.046509150415659,0.022386014461517,0.019371824339032,0.016385236755013,0.012769900262356));
res += mul(Get(s2,0,-dy), float4x4(-0.230359360575676,-0.097010090947151,0.047971908003092,0.256012111902237,0.324264317750931,0.368490129709244,0.037212692201138,-0.159549355506897,-0.150049209594727,-0.109284766018391,0.052917197346687,-0.226236701011658,0.499232143163681,0.567632079124451,-0.056911151856184,0.485196679830551));
res += mul(Get(s2,0,0), float4x4(0.329188197851181,0.514936029911041,0.248336315155029,-0.251963555812836,0.099038578569889,0.096638731658459,0.039394985884428,-0.157823488116264,-0.044385079294443,-0.054785944521427,0.053132269531488,-0.045343630015850,-0.292882591485977,-0.348763078451157,-0.265937238931656,0.328732430934906));
res += mul(Get(s2,0,dy), float4x4(-0.063642933964729,-0.165961816906929,0.069083973765373,0.425513446331024,0.050933308899403,0.144713819026947,-0.009496037848294,-0.194354102015495,0.085678637027740,-0.023072294890881,0.125243857502937,0.114667519927025,0.045225147157907,0.068881332874298,-0.021224759519100,-0.231868803501129));
res += mul(Get(s2,dx,-dy), float4x4(-0.034463055431843,0.082694202661514,0.062585674226284,0.199665367603302,0.104667946696281,0.218556851148605,-0.185842484235764,-0.317041099071503,-0.250821202993393,-0.244565486907959,0.081872984766960,-0.021054502576590,0.175425305962563,0.074091255664825,0.144202828407288,0.320710837841034));
res += mul(Get(s2,dx,0), float4x4(-0.000231580212130,-0.002717337105423,0.292475372552872,-0.287595629692078,-0.000687802559696,-0.128766551613808,-0.385181277990341,0.131638467311859,-0.272239685058594,-0.118803128600121,-0.118378758430481,-0.412276893854141,-0.101850561797619,0.046253882348537,0.241628885269165,-0.078556373715401));
res += mul(Get(s2,dx,dy), float4x4(-0.019677139818668,0.001020339201204,0.014912751503289,0.029797861352563,0.033743556588888,0.074112504720688,-0.070959351956844,-0.229680314660072,0.056859757751226,0.024138752371073,-0.148405298590660,0.089146226644516,0.018477700650692,0.036745820194483,0.053271580487490,0.001636722008698));
res = max(float4(0, 0, 0, 0), res) + float4(0.014138780534267,0.011553823016584,0.001182935433462,0.034193512052298) * min(float4(0, 0, 0, 0), res);
return res;
}