sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.157547488808632,0.012571278959513,-0.355070710182190,-0.134119942784309);
res += mul(Get(s0,-dx,-dy), float4x4(-0.068880438804626,0.009311420843005,0.033234771341085,0.057956419885159,-0.017275307327509,-0.021942107006907,0.164288818836212,0.060886152088642,-0.042348630726337,-0.356862515211105,-0.155885457992554,-0.306491643190384,-0.117448918521404,-0.156912848353386,0.156744778156281,-0.016057988628745));
res += mul(Get(s0,-dx,0), float4x4(-0.043632622808218,0.039179533720016,0.240156173706055,0.049225013703108,-0.009484418667853,-0.108136519789696,-0.211299270391464,0.025039616972208,-0.113856911659241,0.023431010544300,0.299602448940277,-0.358251065015793,-0.158598154783249,-0.329241394996643,-0.087458856403828,-0.068796135485172));
res += mul(Get(s0,-dx,dy), float4x4(0.038713991641998,-0.138428732752800,0.050040457397699,0.022359408438206,0.083580322563648,-0.051298882812262,-0.193000957369804,-0.057257208973169,-0.115046881139278,-0.111033163964748,0.125437334179878,0.009359412826598,0.033015783876181,-0.147660762071609,0.203119128942490,-0.078230611979961));
res += mul(Get(s0,0,-dy), float4x4(0.117515899240971,0.139667913317680,0.063013538718224,0.002582739107311,0.177283212542534,0.187179937958717,0.087377220392227,0.084447719156742,-0.138083562254906,0.115873940289021,0.406666219234467,-0.395939767360687,-0.151843726634979,-0.092520624399185,-0.158284947276115,-0.234843343496323));
res += mul(Get(s0,0,0), float4x4(0.160482928156853,-0.046787437051535,-0.418658643960953,-0.046309676021338,-0.245415329933167,-0.271271079778671,-0.269304990768433,-0.340540736913681,0.047882739454508,-0.126704275608063,-0.368728041648865,0.028757931664586,-0.028867093846202,-0.073379062116146,-0.008883840404451,0.061512231826782));
res += mul(Get(s0,0,dy), float4x4(0.207060977816582,-0.004382463172078,-0.257342815399170,0.102689027786255,-0.024512208998203,-0.023559097200632,-0.026496348902583,-0.014984341338277,-0.006944417487830,-0.000032041418308,0.147634640336037,-0.200857713818550,0.188763216137886,-0.146487563848495,0.045830585062504,0.019106326624751));
res += mul(Get(s0,dx,-dy), float4x4(-0.002527918433771,-0.126692801713943,0.078275389969349,-0.091503851115704,0.061048466712236,0.065780080854893,-0.219507813453674,0.079218246042728,-0.107726037502289,0.099166475236416,0.191896662116051,-0.350516021251678,0.041360847651958,-0.039453096687794,0.104913890361786,-0.090740263462067));
res += mul(Get(s0,dx,0), float4x4(-0.057525813579559,-0.143095031380653,-0.075694061815739,0.154132440686226,0.110278949141502,-0.156638711690903,0.265658020973206,-0.071938209235668,0.099969528615475,-0.114885717630386,0.019077397882938,-0.035538773983717,-0.131214350461960,-0.043893702328205,0.187075257301331,0.099644586443901));
res += mul(Get(s0,dx,dy), float4x4(-0.031042762100697,-0.042523354291916,-0.172124370932579,0.195256173610687,0.008444191887975,-0.045977093279362,0.156642287969589,0.033270370215178,0.106024794280529,0.195604145526886,0.379204452037811,0.105536095798016,-0.100300185382366,-0.194744825363159,-0.053118083626032,0.011521068401635));
res += mul(Get(s1,-dx,-dy), float4x4(0.058292135596275,0.066270865499973,0.064947016537189,-0.080224864184856,0.064644359052181,-0.092553742229939,-0.052396930754185,0.067090563476086,0.112785398960114,0.058010067790747,-0.110617816448212,0.131599843502045,-0.006747209932655,0.094027794897556,0.062620475888252,0.008664008229971));
res += mul(Get(s1,-dx,0), float4x4(0.174600258469582,0.114069513976574,-0.065661631524563,0.029909521341324,-0.049696877598763,0.218840762972832,0.289439678192139,0.009246150031686,0.074220530688763,-0.161108732223511,-0.120430432260036,0.074866883456707,-0.072263263165951,0.050828352570534,-0.010107642970979,-0.047791600227356));
res += mul(Get(s1,-dx,dy), float4x4(0.223262891173363,-0.011667530052364,-0.014794308692217,0.103346213698387,-0.024983374401927,-0.203591674566269,0.003603396005929,-0.465870857238770,0.037082064896822,0.081493251025677,-0.052546642720699,0.263408213853836,-0.111055485904217,0.142538323998451,0.058329194784164,0.187753140926361));
res += mul(Get(s1,0,-dy), float4x4(-0.035190183669329,-0.050579592585564,0.042505454272032,0.257466554641724,0.052930697798729,-0.213550850749016,-0.162519484758377,-0.000834241393022,0.079135216772556,-0.006541971117258,-0.264525055885315,0.081289194524288,0.029292726889253,-0.138131722807884,-0.028313688933849,0.125854656100273));
res += mul(Get(s1,0,0), float4x4(-0.015275736339390,0.017588706687093,0.282554894685745,-0.070244081318378,0.097105175256729,0.105955980718136,0.238184943795204,0.153785735368729,0.039777439087629,0.135734438896179,0.225477367639542,-0.042270023375750,-0.120514504611492,0.126680880784988,-0.165117084980011,0.124417886137962));
res += mul(Get(s1,0,dy), float4x4(0.170927211642265,0.099444769322872,0.047996222972870,0.069601349532604,-0.029426949098706,0.049762830138206,-0.115721508860588,0.052431389689445,0.144508659839630,0.131983190774918,0.011160026304424,0.033644709736109,-0.019412130117416,-0.060850389301777,-0.064360737800598,0.030704801902175));
res += mul(Get(s1,dx,-dy), float4x4(-0.026017822325230,-0.069414146244526,-0.093076482415199,0.202129274606705,0.010848701931536,0.071404650807381,0.024080375209451,-0.131316855549812,0.030943503603339,0.053110055625439,0.109138175845146,0.007639740128070,-0.015294101089239,-0.130044102668762,-0.072988145053387,-0.126925975084305));
res += mul(Get(s1,dx,0), float4x4(-0.109437063336372,0.192300215363503,0.267836511135101,0.016078833490610,0.046066831797361,0.262249827384949,0.146654874086380,-0.003112461417913,-0.029344877228141,-0.157733678817749,0.128504484891891,-0.113081716001034,0.231425970792770,0.033565405756235,-0.068681143224239,-0.062357816845179));
res += mul(Get(s1,dx,dy), float4x4(-0.019324852153659,-0.144936606287956,0.140446037054062,0.194224148988724,-0.048295296728611,0.081443719565868,0.053338117897511,-0.270604401826859,-0.114954061806202,-0.060470618307590,0.097640909254551,0.114416569471359,-0.071953281760216,-0.089687399566174,-0.054289292544127,0.019739184528589));
res += mul(Get(s2,-dx,-dy), float4x4(-0.023712843656540,0.028308738023043,0.060670878738165,-0.159798637032509,-0.115189351141453,-0.105604931712151,0.178516954183578,-0.182005137205124,-0.016933053731918,0.204267606139183,0.190766528248787,-0.121444180607796,-0.043928604573011,0.071157947182655,-0.124294742941856,0.103912532329559));
res += mul(Get(s2,-dx,0), float4x4(-0.060731653124094,-0.055045656859875,0.112458139657974,-0.003592598717660,-0.014291872270405,0.045704346150160,0.161390379071236,-0.121669068932533,-0.123791247606277,-0.312177240848541,-0.252500295639038,-0.017257571220398,-0.105302222073078,0.122970864176750,0.162759751081467,0.172182232141495));
res += mul(Get(s2,-dx,dy), float4x4(0.051997434347868,-0.066110357642174,-0.154663607478142,-0.155465707182884,-0.080315180122852,-0.212797477841377,0.220051646232605,-0.218036785721779,-0.129955813288689,-0.048673801124096,-0.173562422394753,0.392410457134247,-0.018249619752169,-0.164124503731728,0.088120721280575,-0.243569239974022));
res += mul(Get(s2,0,-dy), float4x4(0.055599644780159,-0.003739113686606,-0.177405804395676,-0.116302475333214,-0.020207677036524,0.038943268358707,0.064368940889835,-0.345788002014160,0.107074379920959,0.093091167509556,-0.058666639029980,0.200929835438728,-0.016050620004535,-0.010941125452518,0.141514584422112,-0.139230385422707));
res += mul(Get(s2,0,0), float4x4(0.077527776360512,-0.609752237796783,0.072160117328167,0.146940723061562,-0.073257945477962,0.207325488328934,0.438494294881821,-0.153225064277649,-0.033373169600964,0.117310903966427,-0.259079128503799,-0.114807337522507,0.086983658373356,0.269416779279709,0.105505406856537,0.143832445144653));
res += mul(Get(s2,0,dy), float4x4(0.002185307443142,-0.060327734798193,-0.108291558921337,0.023149413987994,-0.068611420691013,0.080253183841705,0.051304448395967,-0.063093997538090,0.016287455335259,0.152143031358719,0.247390255331993,0.206261217594147,-0.053712662309408,-0.377188146114349,-0.005654925480485,0.199172109365463));
res += mul(Get(s2,dx,-dy), float4x4(-0.025908028706908,-0.109012648463249,-0.254349261522293,-0.030369240790606,-0.087191589176655,-0.123529501259327,0.219044506549835,-0.127905189990997,-0.193586945533752,0.016664842143655,-0.007101739291102,-0.103243812918663,-0.068710476160049,0.050204534083605,0.263983428478241,0.302489787340164));
res += mul(Get(s2,dx,0), float4x4(-0.100272759795189,-0.122045740485191,-0.175081446766853,-0.055408086627722,0.154187887907028,-0.158886924386024,0.024237906560302,0.019208258017898,0.003144463058561,-0.065308876335621,0.043279036879539,0.145904377102852,0.007090501487255,-0.069403596222401,-0.069643363356590,-0.152360722422600));
res += mul(Get(s2,dx,dy), float4x4(0.108336172997952,-0.083764016628265,0.147951945662498,-0.167700365185738,0.028410138562322,-0.112750910222530,0.123674027621746,-0.274471968412399,-0.036225829273462,0.027586724609137,0.082831457257271,0.076105721294880,-0.032010477036238,-0.257396101951599,-0.152534753084183,-0.115020856261253));
res += mul(Get(s3,-dx,-dy), float4x4(-0.036772124469280,-0.033126708120108,-0.034367758780718,-0.191455870866776,-0.051993366330862,-0.266899287700653,-0.231255501508713,-0.072417974472046,0.000303913548123,0.191137433052063,-0.001568791805767,-0.135997697710991,-0.010843581520021,0.100092008709908,0.319125086069107,0.185342997312546));
res += mul(Get(s3,-dx,0), float4x4(-0.130733773112297,-0.083775304257870,0.135683938860893,-0.169957399368286,0.006066618021578,0.114780142903328,-0.059568017721176,-0.003437666920945,0.063340082764626,0.096502527594566,0.003214543918148,0.040464222431183,-0.210992172360420,0.107626631855965,0.166201233863831,0.130980774760246));
res += mul(Get(s3,-dx,dy), float4x4(0.073716789484024,0.025239977985620,0.056337270885706,-0.224865347146988,0.047158043831587,-0.137483239173889,-0.068643294274807,-0.096524626016617,-0.030308969318867,-0.036894369870424,-0.006060962565243,-0.153148934245110,0.068293780088425,-0.070647343993187,-0.194060251116753,-0.234114438295364));
res += mul(Get(s3,0,-dy), float4x4(-0.044534567743540,-0.055091679096222,0.211383774876595,-0.083605423569679,-0.025989828631282,0.147682920098305,0.326336681842804,-0.231393828988075,-0.111933268606663,0.215433195233345,0.009239141829312,0.169253811240196,0.173703357577324,-0.131920322775841,0.007303583435714,-0.065252289175987));
res += mul(Get(s3,0,0), float4x4(0.173437014222145,-0.062348395586014,-0.063672311604023,-0.426731437444687,0.012835402972996,-0.037750199437141,-0.045959737151861,0.173309817910194,0.025245569646358,0.099769167602062,0.026923166587949,0.115901976823807,0.112681247293949,0.213458046317101,-0.123126864433289,-0.118006899952888));
res += mul(Get(s3,0,dy), float4x4(0.049329966306686,-0.000320878200000,0.046862009912729,-0.026775352656841,0.103673681616783,0.031572207808495,0.062254186719656,-0.004317240323871,-0.311879962682724,-0.106849677860737,-0.153981998562813,0.173638403415680,-0.131104573607445,0.010403033345938,-0.375221878290176,0.182378754019737));
res += mul(Get(s3,dx,-dy), float4x4(-0.192870602011681,-0.270779013633728,0.100022956728935,-0.227920338511467,-0.029173662886024,-0.049408990889788,0.068260587751865,0.159935131669044,0.083139769732952,0.050299655646086,-0.153231501579285,0.163291409611702,0.071524076163769,-0.127945974469185,-0.231116414070129,0.178264036774635));
res += mul(Get(s3,dx,0), float4x4(-0.080129250884056,-0.152898013591766,0.066299535334110,0.046054240316153,-0.024428822100163,-0.145754978060722,-0.104405969381332,-0.085267856717110,0.087141126394272,0.400132745504379,0.124718114733696,0.103089369833469,-0.058454092592001,-0.064657092094421,-0.009049560874701,-0.032330356538296));
res += mul(Get(s3,dx,dy), float4x4(0.002120154676959,-0.219173774123192,0.022917974740267,-0.121678285300732,0.043947022408247,0.194264143705368,-0.011155107058585,-0.079418115317822,-0.155157655477524,0.045413091778755,0.001428568502888,0.030675616115332,-0.055114600807428,0.211829587817192,-0.011018982157111,0.102789737284184));
res += mul(Get(s4,-dx,-dy), float4x4(0.009915045462549,0.003606638172641,-0.037576764822006,0.130610629916191,-0.081501603126526,-0.205313846468925,-0.006713833659887,0.090997472405434,0.019629580900073,0.120144046843052,0.068400375545025,0.008287946693599,0.151230841875076,0.206450000405312,-0.253639847040176,0.112763836979866));
res += mul(Get(s4,-dx,0), float4x4(-0.097007870674133,-0.007693649735302,0.206804662942886,-0.113293893635273,0.095243588089943,0.085225328803062,0.033267084509134,0.316915184259415,-0.016998916864395,0.232751697301865,0.012934844940901,-0.147812560200691,0.265869557857513,0.175001502037048,-0.050613056868315,-0.028993124142289));
res += mul(Get(s4,-dx,dy), float4x4(0.127663567662239,0.118116840720177,0.176336660981178,-0.124864429235458,-0.006924685556442,-0.044260676950216,-0.164249122142792,0.169974431395531,-0.071813791990280,0.013796472921968,-0.097583748400211,0.117130972445011,0.135048866271973,0.121273934841156,-0.059926833957434,-0.127039879560471));
res += mul(Get(s4,0,-dy), float4x4(0.052554130554199,0.064046718180180,0.058571938425303,-0.088495142757893,-0.175515264272690,0.034417845308781,-0.248532414436340,-0.378482222557068,0.046056896448135,-0.017434157431126,-0.149490162730217,-0.107747420668602,0.100181378424168,-0.001518801087514,0.061398059129715,0.028991056606174));
res += mul(Get(s4,0,0), float4x4(-0.204676941037178,0.064215436577797,0.011093595065176,0.083394221961498,0.013944209553301,0.199270009994507,0.438807219266891,-0.314094394445419,0.091052480041981,0.269096195697784,-0.037816349416971,0.253878057003021,0.088793456554413,0.105261832475662,0.272099703550339,-0.398164600133896));
res += mul(Get(s4,0,dy), float4x4(0.045017112046480,0.297861933708191,0.179942727088928,-0.355682343244553,-0.111626818776131,-0.231235161423683,-0.238459482789040,0.244312271475792,-0.006695931311697,0.305482655763626,-0.004431933630258,0.333142429590225,-0.172542721033096,-0.302941143512726,-0.392872244119644,0.144614592194557));
res += mul(Get(s4,dx,-dy), float4x4(-0.040036264806986,0.048727832734585,0.117503054440022,-0.059293676167727,-0.117165222764015,-0.313174605369568,-0.249837905168533,0.324448138475418,0.023087739944458,0.139958694577217,-0.026420151814818,0.030779575929046,0.040083017200232,-0.138505890965462,0.022723186761141,-0.209951549768448));
res += mul(Get(s4,dx,0), float4x4(-0.031209625303745,0.114896468818188,0.204575151205063,0.021273387596011,0.068942904472351,0.185514837503433,-0.254332691431046,-0.070225343108177,-0.004621226806194,0.097742281854153,-0.206943243741989,0.282337248325348,-0.022468512877822,0.019275430589914,0.080604836344719,-0.308494359254837));
res += mul(Get(s4,dx,dy), float4x4(-0.255741119384766,-0.031094176694751,-0.060299705713987,-0.105524249374866,0.094177328050137,-0.037959925830364,0.018396357074380,0.095080539584160,-0.099680386483669,0.170406401157379,-0.028546739369631,0.030681308358908,-0.158411204814911,-0.077900961041451,0.033504474908113,0.273544073104858));
res += mul(Get(s5,-dx,-dy), float4x4(-0.145942062139511,0.142556548118591,0.463313519954681,-0.174445971846581,-0.075838096439838,-0.061009928584099,-0.086035743355751,-0.054829940199852,-0.001839448348619,0.044259350746870,-0.005079228430986,0.018850455060601,-0.057496711611748,0.022046558558941,-0.017442895099521,-0.019167490303516));
res += mul(Get(s5,-dx,0), float4x4(0.349250406026840,0.091151528060436,0.118666075170040,-0.052698727697134,-0.022396946325898,0.045534472912550,0.165563121438026,-0.162093505263329,-0.007924683392048,0.105348654091358,0.090371467173100,0.092016629874706,0.067565582692623,-0.087008573114872,0.042380053550005,0.023028520867229));
res += mul(Get(s5,-dx,dy), float4x4(0.161044985055923,0.056644417345524,0.203209474682808,-0.030539918690920,0.057538136839867,-0.011297305114567,0.215970709919930,-0.046667709946632,-0.156215146183968,0.105030849575996,0.023615421727300,-0.141374275088310,0.012674844823778,-0.059535592794418,0.020826671272516,0.016678526997566));
res += mul(Get(s5,0,-dy), float4x4(-0.163566991686821,0.236520782113075,0.183664694428444,-0.168751895427704,-0.096465378999710,-0.133632913231850,0.070229351520538,-0.086057364940643,0.174153521656990,-0.038437873125076,0.163897216320038,0.173248708248138,-0.094018138945103,0.072752468287945,-0.081884562969208,-0.044035211205482));
res += mul(Get(s5,0,0), float4x4(-0.177518874406815,-0.142349556088448,0.279277563095093,0.160403862595558,0.121119432151318,0.071678489446640,-0.192277878522873,0.146440699696541,0.096832960844040,0.060993425548077,0.071009889245033,0.304746836423874,-0.206693828105927,-0.136820867657661,0.141351267695427,0.088025964796543));
res += mul(Get(s5,0,dy), float4x4(-0.093197882175446,0.022361278533936,-0.208383217453957,0.182439401745796,-0.082941398024559,-0.184580370783806,-0.146945118904114,-0.133871883153915,-0.082360573112965,0.004149616695940,0.040587175637484,0.051036946475506,0.017110748216510,-0.259989887475967,-0.153413981199265,-0.094296216964722));
res += mul(Get(s5,dx,-dy), float4x4(0.051865119487047,0.078091241419315,0.037574712187052,0.098207078874111,-0.120916962623596,0.124763511121273,0.124616146087646,-0.075719535350800,0.050472669303417,0.014502391219139,-0.165630191564560,-0.104344092309475,-0.158624336123466,-0.143338277935982,0.327519357204437,-0.151568681001663));
res += mul(Get(s5,dx,0), float4x4(-0.087644673883915,0.118806228041649,-0.245270475745201,-0.235393479466438,-0.082046523690224,0.229385390877724,-0.132017016410828,0.279053121805191,0.132375180721283,0.243491336703300,-0.103661403059959,-0.003049507737160,-0.131768271327019,-0.379346817731857,0.213538125157356,0.044728886336088));
res += mul(Get(s5,dx,dy), float4x4(-0.034006118774414,0.186858445405960,-0.028029734268785,0.039638094604015,-0.012058440595865,-0.014798488467932,-0.137609049677849,-0.010855621658266,-0.065394900739193,0.079029016196728,-0.048153407871723,0.050063844770193,-0.104200571775436,-0.441986113786697,-0.196528196334839,0.083194784820080));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.842887222766876,0.128504961729050,-0.053854364901781,0.233859062194824) * min(float4(0, 0, 0, 0), res);
return res;
}
