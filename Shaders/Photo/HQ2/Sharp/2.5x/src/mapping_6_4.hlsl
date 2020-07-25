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
res += mul(Get(s0,-dx,-dy), float4x4(-0.043595276772976,-0.168454140424728,-0.162544414401054,0.045741263777018,-0.146987244486809,-0.131411314010620,0.080222554504871,0.117909155786037,-0.149474009871483,-0.162860125303268,0.058067943900824,0.146455392241478,-0.026398682966828,0.056813206523657,0.029228130355477,0.136493921279907));
res += mul(Get(s0,-dx,0), float4x4(-0.141281932592392,0.038410782814026,-0.269176512956619,-0.216008499264717,-0.170787945389748,-0.050407715141773,-0.077470049262047,0.139617189764977,-0.103625528514385,-0.036550950258970,-0.112500868737698,-0.102456271648407,-0.002110669855028,-0.058849122375250,0.109319202601910,-0.085380427539349));
res += mul(Get(s0,-dx,dy), float4x4(-0.037277899682522,0.028487289324403,-0.045587588101625,-0.068591229617596,-0.122478954493999,0.079942964017391,-0.097015768289566,0.182795852422714,-0.156285881996155,0.089286468923092,0.156083688139915,0.070741303265095,-0.006342610344291,-0.089331597089767,-0.181940510869026,-0.147793918848038));
res += mul(Get(s0,0,-dy), float4x4(0.087350025773048,-0.021111907437444,0.074194200336933,0.115911617875099,-0.034649208188057,-0.012781049124897,0.085396468639374,0.111241646111012,0.008004817180336,-0.043781314045191,0.152449622750282,-0.153810337185860,-0.136156007647514,-0.296748906373978,0.118884816765785,0.051701303571463));
res += mul(Get(s0,0,0), float4x4(0.184558704495430,-0.196272671222687,-0.003207019995898,0.039235841482878,-0.055944807827473,-0.030606059357524,-0.031389907002449,0.020272407680750,0.033227644860744,0.090026274323463,0.127859756350517,-0.031088843941689,0.055200412869453,-0.155049756169319,-0.052367322146893,0.153066992759705));
res += mul(Get(s0,0,dy), float4x4(0.036444392055273,0.049517467617989,-0.027026884257793,0.160255908966064,0.121882833540440,0.027978109195828,-0.070222236216068,-0.067773506045341,-0.098628535866737,-0.087215453386307,0.010658544488251,-0.002974647562951,0.090651907026768,0.087756320834160,-0.176184132695198,0.122966162860394));
res += mul(Get(s0,dx,-dy), float4x4(0.002061133040115,0.090732894837856,-0.014351361431181,0.101812146604061,0.020426001399755,-0.091299898922443,-0.116989180445671,-0.072089150547981,-0.019901644438505,-0.011307965964079,-0.043738104403019,-0.057078894227743,0.026199188083410,0.205210193991661,-0.027632798999548,0.086950935423374));
res += mul(Get(s0,dx,0), float4x4(0.037681370973587,-0.008210616186261,0.040550924837589,0.021600294858217,-0.049481347203255,-0.057748097926378,-0.105536647140980,-0.089283987879753,0.065226688981056,-0.075494349002838,0.107656128704548,0.111283488571644,0.041850648820400,0.039501536637545,-0.094418287277222,0.034445252269506));
res += mul(Get(s0,dx,dy), float4x4(0.011817388236523,-0.039149068295956,0.041719969362020,0.089412264525890,0.094606608152390,-0.145923867821693,-0.036456957459450,-0.007538675330579,0.023415490984917,0.046890988945961,0.002255785744637,-0.027514278888702,0.056980978697538,0.003263944759965,-0.089311346411705,0.158596873283386));
res += mul(Get(s1,-dx,-dy), float4x4(0.032463453710079,0.033344466239214,-0.097927555441856,0.155632421374321,0.025140268728137,0.008637546561658,-0.061373632401228,0.103202231228352,0.025379022583365,0.000275794125628,0.130779817700386,-0.003958268556744,-0.058288369327784,0.125252321362495,-0.030013337731361,-0.247589498758316));
res += mul(Get(s1,-dx,0), float4x4(-0.043798010796309,-0.191982969641685,0.063248433172703,-0.010709846392274,-0.128475695848465,0.005626767873764,0.072860203683376,0.110760025680065,-0.012390560470521,-0.091699667274952,-0.097499869763851,-0.088962495326996,0.120910048484802,-0.064450114965439,0.049562193453312,0.100444972515106));
res += mul(Get(s1,-dx,dy), float4x4(0.031299792230129,0.090886533260345,-0.076252683997154,0.047878809273243,-0.060605734586716,0.142253682017326,0.042045298963785,0.019103748723865,0.080260515213013,0.076239228248596,-0.146370843052864,-0.081568993628025,0.034376904368401,0.059807132929564,-0.157858654856682,-0.047973208129406));
res += mul(Get(s1,0,-dy), float4x4(0.059481259435415,0.001071505830623,-0.058118492364883,-0.108949840068817,0.100040763616562,-0.235870376229286,0.061601858586073,0.095570512115955,-0.008665547706187,0.019481081515551,-0.031871609389782,-0.031356014311314,-0.021270260214806,0.132026910781860,-0.146427765488625,0.055166777223349));
res += mul(Get(s1,0,0), float4x4(0.161756530404091,-0.104956679046154,0.015639081597328,0.026677610352635,0.119854405522346,0.037748787552118,-0.050926715135574,0.047007419168949,-0.110840320587158,-0.134781330823898,0.211300402879715,0.030981160700321,-0.096718832850456,0.066784486174583,-0.364072173833847,0.041467815637589));
res += mul(Get(s1,0,dy), float4x4(-0.194458723068237,-0.015444332733750,-0.140087947249413,0.128345623612404,0.063052386045456,-0.148292630910873,0.191075935959816,0.045490331947803,-0.038605395704508,0.056233197450638,-0.026768701151013,-0.142366722226143,-0.195692077279091,0.110437303781509,0.008219816721976,-0.054054163396358));
res += mul(Get(s1,dx,-dy), float4x4(-0.174201294779778,-0.009444419294596,0.092343471944332,0.023052664473653,-0.151805728673935,0.017553044483066,-0.048454560339451,-0.017153121531010,-0.010727927088737,0.069182835519314,-0.076808683574200,0.022444218397141,0.112213276326656,-0.064289174973965,0.149074390530586,0.064666636288166));
res += mul(Get(s1,dx,0), float4x4(0.076501108705997,-0.008390313945711,-0.270433157682419,-0.093381039798260,0.047681983560324,0.155372992157936,0.000632317154668,-0.042201012372971,-0.158924669027328,-0.107938207685947,0.001533250091597,-0.025390090420842,0.156453713774681,0.067251108586788,0.025011276826262,0.089136429131031));
res += mul(Get(s1,dx,dy), float4x4(0.126678317785263,0.083989992737770,-0.039403162896633,0.101392790675163,-0.207158669829369,-0.176622062921524,-0.070676840841770,-0.152544990181923,0.019638553261757,-0.066244833171368,0.023732500150800,-0.174036428332329,0.000448322331067,0.126739203929901,0.012766800820827,0.021502692252398));
res += mul(Get(s2,-dx,-dy), float4x4(-0.068014934659004,0.095831513404846,0.086259558796883,0.048554755747318,0.095152355730534,-0.090165086090565,-0.019825955852866,0.028965549543500,-0.042144443839788,-0.010581628419459,-0.131265461444855,0.107708968222141,-0.021934138610959,-0.086469069123268,0.010887908749282,-0.047987438738346));
res += mul(Get(s2,-dx,0), float4x4(0.136516645550728,0.174371242523193,-0.034967258572578,0.071285948157310,-0.047063492238522,0.020362924784422,-0.077959261834621,0.044778000563383,0.016140298917890,-0.022251488640904,0.075552314519882,0.086975611746311,0.134609416127205,0.054821036756039,-0.026484517380595,0.082591407001019));
res += mul(Get(s2,-dx,dy), float4x4(0.036968000233173,-0.179631456732750,-0.061995908617973,0.045729193836451,-0.186357215046883,0.062552303075790,0.043893892318010,-0.079689800739288,-0.110751874744892,-0.271179795265198,-0.062130812555552,-0.071456432342529,0.020101318135858,-0.117233619093895,-0.318435132503510,0.154628187417984));
res += mul(Get(s2,0,-dy), float4x4(-0.008529943414032,0.062577620148659,0.027939427644014,-0.150153264403343,0.058348111808300,0.002788732526824,0.046547267585993,0.079696305096149,0.031965669244528,-0.043297465890646,-0.065505325794220,0.156427189707756,0.157328844070435,0.074992045760155,-0.064091220498085,-0.082526214420795));
res += mul(Get(s2,0,0), float4x4(0.252508997917175,0.014276676811278,0.074631109833717,0.141196817159653,0.079634904861450,-0.049763999879360,0.099847890436649,0.064136065542698,-0.038224626332521,0.049711689352989,-0.058087725192308,-0.127136915922165,-0.024217108264565,0.129443317651749,0.036617353558540,-0.092942424118519));
res += mul(Get(s2,0,dy), float4x4(0.036058027297258,0.022815620526671,0.108659863471985,-0.203399732708931,0.059389207512140,0.100466229021549,0.137025609612465,0.007595910225064,0.196853563189507,0.057892050594091,-0.093610107898712,-0.072443753480911,-0.112943984568119,0.068614602088928,0.043532062321901,0.074242599308491));
res += mul(Get(s2,dx,-dy), float4x4(-0.019903732463717,0.106797076761723,-0.113762728869915,-0.076437287032604,0.076734445989132,0.161335408687592,0.151373729109764,0.048010993748903,-0.010738864541054,-0.218329459428787,-0.037527650594711,0.099366486072540,0.043120283633471,-0.035911321640015,0.030938632786274,0.057577379047871));
res += mul(Get(s2,dx,0), float4x4(-0.050961457192898,-0.000011748612451,-0.024195780977607,0.050675082951784,-0.032120525836945,0.044052664190531,-0.204531833529472,-0.009048430249095,0.042820975184441,-0.039973963052034,0.111605219542980,-0.207569003105164,0.123862981796265,-0.013394509442151,-0.109283722937107,0.220101311802864));
res += mul(Get(s2,dx,dy), float4x4(-0.000306991569232,0.062841288745403,-0.192632243037224,-0.076139070093632,0.035511814057827,-0.122057236731052,0.004007551819086,-0.105827242136002,0.050516135990620,0.072995826601982,0.078715302050114,-0.092915304005146,0.065014593303204,-0.074127160012722,-0.009229532442987,0.002098209923133));
res += mul(Get(s3,-dx,-dy), float4x4(0.077977545559406,-0.066641978919506,-0.074194602668285,0.123353883624077,0.072889924049377,-0.140307411551476,-0.039170384407043,0.135681524872780,-0.047283496707678,-0.011454045772552,-0.050067149102688,0.051485452800989,0.075001001358032,-0.063424289226532,-0.116737522184849,0.004680435173213));
res += mul(Get(s3,-dx,0), float4x4(0.037558492273092,0.041103627532721,0.122984342277050,-0.084209486842155,0.112288102507591,-0.021548788994551,0.065334744751453,-0.054613940417767,0.102826580405235,0.098566211760044,0.077498108148575,-0.196024626493454,-0.125153556466103,-0.050064813345671,-0.022338023409247,-0.044777121394873));
res += mul(Get(s3,-dx,dy), float4x4(0.052682347595692,-0.011130150407553,0.142498046159744,-0.102884069085121,-0.016523996368051,0.177797839045525,-0.006901893764734,-0.128186658024788,0.140352621674538,-0.039719287306070,-0.109772309660912,-0.049124144017696,-0.001305240439251,0.087290011346340,0.130929082632065,0.128464087843895));
res += mul(Get(s3,0,-dy), float4x4(-0.125018015503883,-0.005418017972261,0.090791046619415,0.103220574557781,-0.116569235920906,-0.037630964070559,0.062106613069773,-0.127793803811073,0.052355773746967,-0.055645044893026,0.064724259078503,-0.002093542832881,-0.031351849436760,0.005717686843127,0.006033037323505,-0.084550306200981));
res += mul(Get(s3,0,0), float4x4(0.002578192856163,0.063376426696777,-0.012846815399826,0.004698801320046,-0.045241132378578,-0.136206030845642,-0.070940211415291,0.042329348623753,-0.072291903197765,-0.151957303285599,-0.093717806041241,0.139407292008400,0.073061801493168,0.020804816856980,-0.103462196886539,0.225041583180428));
res += mul(Get(s3,0,dy), float4x4(0.101835921406746,0.035046875476837,0.066897198557854,-0.083116434514523,-0.083240620791912,0.004674064926803,0.025372020900249,-0.033509861677885,-0.021144036203623,-0.050264388322830,0.108351953327656,0.022423734888434,0.135241493582726,0.016564073041081,0.091622650623322,-0.018929800018668));
res += mul(Get(s3,dx,-dy), float4x4(0.147566780447960,0.005654122214764,-0.090932190418243,0.160942375659943,-0.008405036292970,-0.064296819269657,-0.069770961999893,0.066862925887108,-0.173778131604195,0.142896026372910,0.008967099711299,-0.151524111628532,-0.031619779765606,-0.007663574535400,-0.010842667892575,-0.090569734573364));
res += mul(Get(s3,dx,0), float4x4(-0.062105972319841,0.079278141260147,0.144092619419098,0.111877806484699,-0.171142727136612,0.068296872079372,-0.136729881167412,0.115936055779457,0.121888116002083,0.027684617787600,-0.014323878102005,0.168697416782379,0.130637630820274,-0.167566418647766,0.089343532919884,-0.128808483481407));
res += mul(Get(s3,dx,dy), float4x4(0.080286532640457,-0.014728993177414,0.080924198031425,0.029119087383151,-0.068490579724312,0.106978602707386,-0.070041097700596,0.054100923240185,-0.182609915733337,-0.070374928414822,-0.122924514114857,0.067706957459450,-0.150721177458763,0.140721514821053,-0.056261233985424,-0.027824338525534));
res = max(float4(0,0,0,0), res);
return res;
}