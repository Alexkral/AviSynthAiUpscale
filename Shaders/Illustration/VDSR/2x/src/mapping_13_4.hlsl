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
res += mul(Get(s0,-dx,-dy), float4x4(-0.026205984875560,0.131484493613243,0.021146608516574,0.050393473356962,-0.049400322139263,0.107180356979370,-0.017815668135881,0.071689903736115,-0.072107262909412,-0.151891961693764,0.010910443030298,0.069254748523235,-0.001360942376778,-0.166591107845306,0.068356104195118,0.020207559689879));
res += mul(Get(s0,-dx,0), float4x4(0.228382751345634,0.104649357497692,0.028825009241700,-0.074400916695595,0.067167788743973,-0.038612153381109,-0.031111977994442,-0.142117515206337,0.011101039126515,0.059920363128185,-0.016011672094464,-0.072556629776955,0.049974936991930,-0.017313601449132,0.072248697280884,-0.009438646025956));
res += mul(Get(s0,-dx,dy), float4x4(0.052215225994587,-0.005040227901191,-0.005714520812035,-0.050783894956112,-0.010819506831467,-0.028984250500798,-0.066840402781963,-0.098731845617294,0.088400378823280,0.011351916007698,-0.016093781217933,0.024708479642868,-0.115602113306522,-0.011370951309800,0.092254966497421,0.202570468187332));
res += mul(Get(s0,0,-dy), float4x4(-0.061229005455971,-0.018281372264028,0.042053811252117,-0.022384265437722,-0.020296391099691,0.065174043178558,-0.023086218163371,-0.145516961812973,-0.022565189749002,-0.013087359257042,0.004682603757828,0.160173356533051,-0.004432624205947,-0.080275058746338,0.034570634365082,0.012226081453264));
res += mul(Get(s0,0,0), float4x4(-0.129964128136635,-0.051873762160540,-0.002758773276582,0.029338439926505,-0.044418606907129,0.159298256039619,-0.050579417496920,-0.055885389447212,-0.059960011392832,0.252348423004150,-0.177686721086502,-0.051033187657595,0.129180565476418,-0.099042028188705,0.047225780785084,0.038971971720457));
res += mul(Get(s0,0,dy), float4x4(0.080080382525921,-0.019390545785427,0.019722672179341,0.018376562744379,0.206955656409264,-0.017373748123646,-0.082774557173252,-0.093719244003296,0.192781165242195,0.171706601977348,0.106089748442173,-0.074307136237621,0.117604337632656,0.063783280551434,-0.098492100834846,-0.092093519866467));
res += mul(Get(s0,dx,-dy), float4x4(0.035313509404659,0.006490841973573,0.035951264202595,0.031840220093727,-0.034626614302397,0.043889220803976,0.095306389033794,0.005508694797754,-0.022266291081905,-0.151579588651657,0.019399845972657,0.009003427810967,0.118167437613010,-0.047140453010798,-0.023489180952311,0.109813615679741));
res += mul(Get(s0,dx,0), float4x4(0.069654539227486,0.142265945672989,-0.009140498936176,-0.026597857475281,-0.008245884440839,-0.106661774218082,-0.004757687915117,0.160881057381630,-0.100096322596073,0.082549557089806,-0.179206669330597,0.145399481058121,0.046772487461567,-0.120111435651779,-0.181548401713371,-0.076502762734890));
res += mul(Get(s0,dx,dy), float4x4(0.011766249313951,0.088344328105450,-0.078234903514385,0.117641784250736,-0.011154946871102,-0.084725573658943,-0.153726011514664,0.088977672159672,-0.089141845703125,-0.067717894911766,-0.094753302633762,-0.004343638196588,-0.006972302217036,-0.117804072797298,0.004109722562134,0.027813835069537));
res += mul(Get(s1,-dx,-dy), float4x4(0.092734597623348,-0.130922794342041,0.100818812847137,-0.186305284500122,-0.122224137187004,-0.101278498768806,-0.186538293957710,-0.103197917342186,0.069249622523785,0.047392290085554,0.151487305760384,-0.033713892102242,0.021031089127064,-0.101070374250412,0.130212306976318,0.033569779247046));
res += mul(Get(s1,-dx,0), float4x4(0.233851388096809,-0.112198695540428,-0.005651875864714,-0.062923327088356,-0.019926065579057,0.077737949788570,-0.052800368517637,-0.083622254431248,0.051478981971741,-0.192433759570122,0.176939636468887,-0.164497360587120,-0.104619100689888,0.055405445396900,0.156838297843933,-0.153235033154488));
res += mul(Get(s1,-dx,dy), float4x4(-0.009330440312624,0.101988688111305,0.062467519193888,-0.013894518837333,0.002204754389822,-0.015449271537364,-0.192994043231010,-0.012260495685041,0.062576040625572,-0.076336704194546,0.013560939580202,-0.086261555552483,-0.059749998152256,0.032051838934422,0.011592132039368,-0.098288148641586));
res += mul(Get(s1,0,-dy), float4x4(0.011433574371040,-0.052643656730652,-0.050634302198887,-0.085452049970627,0.053371276706457,-0.042953446507454,-0.113276563584805,-0.059500508010387,0.087469577789307,0.080652438104153,-0.044072654098272,0.214999765157700,-0.030670331791043,-0.086856476962566,0.136079668998718,-0.025448303669691));
res += mul(Get(s1,0,0), float4x4(-0.227923721075058,-0.051523279398680,0.085607707500458,-0.066233791410923,0.011431165970862,0.163809075951576,0.081482946872711,0.303567588329315,-0.055584497749805,0.061952479183674,0.092433430254459,-0.007669954095036,-0.011215060949326,0.040312618017197,0.079971849918365,-0.141402646899223));
res += mul(Get(s1,0,dy), float4x4(-0.147993683815002,0.003173427190632,0.022278195247054,-0.014837142080069,-0.103697925806046,-0.017555734142661,-0.190873622894287,0.082074567675591,0.034109808504581,0.003382572671399,0.033858582377434,0.026182884350419,-0.018145626410842,0.076805606484413,0.110488452017307,-0.052100848406553));
res += mul(Get(s1,dx,-dy), float4x4(0.152922019362450,-0.004790934268385,-0.096161581575871,0.229368060827255,0.174636483192444,-0.014377509243786,-0.142202958464622,0.024772530421615,0.192871376872063,0.042275100946426,-0.021226335316896,0.083666801452637,0.230849593877792,-0.031933389604092,-0.079812303185463,0.086301684379578));
res += mul(Get(s1,dx,0), float4x4(-0.292597919702530,-0.003662761067972,0.192603796720505,-0.053656265139580,0.027661664411426,0.101436056196690,-0.132920473814011,-0.053438775241375,-0.073835887014866,0.107095584273338,0.093112409114838,-0.159410879015923,0.112389698624611,-0.004619778599590,0.006607273593545,0.026247551664710));
res += mul(Get(s1,dx,dy), float4x4(-0.160976752638817,0.048049952834845,-0.009773776866496,-0.135399326682091,0.021733688190579,0.040279448032379,-0.305700629949570,0.058131441473961,-0.077876903116703,0.135597318410873,-0.194134041666985,0.070321403443813,0.040057435631752,-0.004586558323354,0.109584458172321,-0.159200847148895));
res += mul(Get(s2,-dx,-dy), float4x4(-0.097134247422218,0.064906351268291,0.020201640203595,-0.054206896573305,-0.064320072531700,0.098627544939518,-0.004152534995228,-0.008829485625029,-0.044105723500252,0.023244785144925,-0.082776017487049,0.085254520177841,-0.174462378025055,0.014775911346078,0.140146791934967,0.026940610259771));
res += mul(Get(s2,-dx,0), float4x4(0.018580272793770,-0.061345983296633,-0.025468898937106,-0.152616694569588,-0.099978283047676,0.107011735439301,0.006028666626662,0.013142069801688,-0.050953865051270,-0.077290803194046,0.018652010709047,0.084423355758190,0.085266694426537,0.028973829001188,-0.048613153398037,-0.058619592338800));
res += mul(Get(s2,-dx,dy), float4x4(-0.132820665836334,0.026414381340146,0.060087777674198,0.094354607164860,-0.113155066967010,-0.040408652275801,-0.100443512201309,-0.154109314084053,-0.028425000607967,-0.046651862561703,-0.100360855460167,-0.072364136576653,0.091245360672474,0.063630916178226,-0.203222602605820,-0.092328228056431));
res += mul(Get(s2,0,-dy), float4x4(-0.091866128146648,-0.158812165260315,0.039142392575741,-0.003100645961240,0.103003911674023,0.056413799524307,-0.026517190039158,0.132176190614700,-0.123987942934036,0.060008000582457,0.000464352924610,-0.068814799189568,-0.071147657930851,-0.296993881464005,0.039855044335127,0.060636263340712));
res += mul(Get(s2,0,0), float4x4(-0.008777052164078,-0.008313890546560,0.053511928766966,0.111386314034462,0.114508062601089,-0.008859470486641,0.070026561617851,-0.058493975549936,-0.044694107025862,-0.036522001028061,-0.045807257294655,0.205809682607651,0.030965961515903,0.004379530902952,0.107255049049854,0.091113843023777));
res += mul(Get(s2,0,dy), float4x4(0.068316817283630,0.071819074451923,-0.075736261904240,0.000850074866321,0.087968036532402,0.046769421547651,0.298103719949722,0.055939149111509,0.000831629324239,-0.033381428569555,-0.114611506462097,-0.071969769895077,0.174496009945869,0.109889455139637,-0.051673665642738,0.214601144194603));
res += mul(Get(s2,dx,-dy), float4x4(-0.053999543190002,-0.175340637564659,-0.082687586545944,0.093275748193264,-0.057471271604300,0.066781051456928,0.009802078828216,0.082860529422760,-0.101712919771671,-0.238079294562340,-0.077400505542755,-0.071025356650352,0.029602231457829,0.081843823194504,0.075313329696655,-0.079703643918037));
res += mul(Get(s2,dx,0), float4x4(0.121612600982189,-0.194834768772125,-0.237136587500572,0.131911084055901,0.031948938965797,0.173530355095863,0.026377724483609,0.009226993657649,0.109951503574848,-0.144719511270523,0.161197736859322,-0.033749509602785,0.110391147434711,0.190529361367226,0.204413473606110,0.015288312919438));
res += mul(Get(s2,dx,dy), float4x4(-0.042341131716967,-0.007711892481893,0.034367393702269,0.051514845341444,-0.076520666480064,-0.000142747012433,0.035810753703117,0.014383832924068,-0.081290863454342,-0.012082308530807,0.112198702991009,-0.033597353845835,0.064459405839443,0.104301951825619,0.075247012078762,0.108247436583042));
res += mul(Get(s3,-dx,-dy), float4x4(0.044849228113890,-0.155292913317680,0.070358768105507,-0.077474370598793,0.121358774602413,-0.005455604288727,-0.067337371408939,-0.085779622197151,0.067868553102016,0.019490251317620,-0.068598009645939,-0.030234782025218,-0.171090781688690,-0.150560498237610,-0.110068447887897,-0.071527615189552));
res += mul(Get(s3,-dx,0), float4x4(-0.001759022823535,-0.048513107001781,0.054643180221319,-0.024163814261556,-0.055791277438402,-0.094158090651035,-0.011538574472070,-0.139442324638367,0.075273029506207,0.057825662195683,0.094684183597565,0.043711807578802,0.080824591219425,-0.208194330334663,-0.059848383069038,0.161159560084343));
res += mul(Get(s3,-dx,dy), float4x4(-0.111577875912189,0.103801280260086,-0.068797409534454,0.015228974632919,0.131035506725311,-0.012381601147354,0.058820229023695,-0.157306179404259,0.112845435738564,0.032666608691216,0.034153949469328,-0.064989164471626,0.111406512558460,0.124988600611687,0.017958844080567,-0.010643579065800));
res += mul(Get(s3,0,-dy), float4x4(0.007001711055636,-0.009231604635715,0.029589992016554,-0.017266103997827,-0.061401929706335,-0.011976858600974,0.134134486317635,0.036876212805510,0.101428084075451,-0.030577585101128,0.041353434324265,-0.009797378443182,0.051590334624052,0.017158797010779,-0.016206441447139,-0.029968652874231));
res += mul(Get(s3,0,0), float4x4(-0.036199860274792,0.039540160447359,0.104251235723495,-0.089317880570889,-0.008865206502378,0.158525332808495,-0.012736405245960,0.038998086005449,-0.027668949216604,0.115091569721699,0.090369395911694,0.083073623478413,-0.000116770097520,-0.014996508136392,0.035152882337570,0.054990641772747));
res += mul(Get(s3,0,dy), float4x4(-0.036272406578064,0.075920715928078,-0.109485603868961,-0.155471488833427,-0.025539046153426,0.074372887611389,0.008332555182278,-0.004931256175041,-0.044534217566252,-0.096951887011528,-0.018247405067086,0.095927976071835,-0.007711451034993,0.161152303218842,0.006602529902011,-0.023911869153380));
res += mul(Get(s3,dx,-dy), float4x4(0.118632569909096,0.019018700346351,-0.095087692141533,-0.003175540594384,-0.127124160528183,-0.145891115069389,-0.032926555722952,-0.094736807048321,0.220331713557243,-0.098643735051155,-0.177371606230736,0.062273435294628,-0.006713051348925,0.164203211665154,0.007975513115525,0.117480464279652));
res += mul(Get(s3,dx,0), float4x4(0.013688489794731,0.011889901943505,0.087395101785660,0.137830883264542,-0.116134032607079,0.109866835176945,0.063371010124683,0.087785668671131,-0.023000596091151,-0.045371826738119,0.198828741908073,-0.001329541439191,0.082259349524975,0.090509049594402,0.116111248731613,-0.000670785026159));
res += mul(Get(s3,dx,dy), float4x4(0.030354924499989,0.020510256290436,-0.184587150812149,-0.074576668441296,-0.001014830311760,-0.123839773237705,-0.180051162838936,-0.109782330691814,-0.105061955749989,0.042992215603590,-0.044097639620304,0.026645291596651,0.166125953197479,0.073137387633324,0.026674499735236,0.108818717300892));
return max(float4(0,0,0,0), res);
}
