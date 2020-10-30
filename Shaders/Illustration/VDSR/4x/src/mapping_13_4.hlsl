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
res += mul(Get(s0,-dx,-dy), float4x4(-0.118952110409737,-0.080254621803761,-0.090771310031414,-0.226292818784714,0.184940487146378,-0.097190469503403,0.016509110108018,0.116395726799965,-0.221937716007233,0.027345627546310,0.103710621595383,0.270426392555237,-0.313830107450485,-0.142704248428345,0.222825780510902,-0.052251514047384));
res += mul(Get(s0,-dx,0), float4x4(-0.159764304757118,-0.106603831052780,-0.108825325965881,-0.153257504105568,0.007651994936168,-0.200832739472389,0.224216639995575,0.115167602896690,-0.088653944432735,0.139509081840515,-0.186362355947495,0.247806727886200,-0.082838974893093,-0.048329330980778,0.052228752523661,-0.143951848149300));
res += mul(Get(s0,-dx,dy), float4x4(-0.085231013596058,0.331928700208664,-0.065413102507591,-0.039871133863926,0.005301263649017,-0.090646915137768,-0.017338041216135,-0.159901410341263,-0.011980072595179,0.245752513408661,-0.054283387959003,-0.014593900181353,-0.090715162456036,-0.080066114664078,-0.078021049499512,-0.239442601799965));
res += mul(Get(s0,0,-dy), float4x4(-0.072668857872486,0.065067611634731,-0.078293167054653,-0.128844872117043,0.058877740055323,-0.104957945644855,-0.079973250627518,-0.035857476294041,-0.063197106122971,-0.130223780870438,0.046212539076805,0.068356461822987,-0.182284206151962,-0.005410946439952,-0.037915006279945,0.126014918088913));
res += mul(Get(s0,0,0), float4x4(-0.211777701973915,-0.065543711185455,-0.197655320167542,-0.250218242406845,0.108551263809204,-0.131607562303543,-0.006280012894422,-0.035464670509100,-0.127800881862640,-0.016050674021244,0.001290634507313,0.125365182757378,0.028262730687857,-0.007757978513837,0.099907644093037,0.116569295525551));
res += mul(Get(s0,0,dy), float4x4(-0.083001449704170,0.309084355831146,-0.107683584094048,-0.200707584619522,0.077247105538845,-0.107450373470783,0.136807352304459,0.320735424757004,-0.144979357719421,0.026260923594236,-0.078442193567753,-0.013335362076759,-0.025188222527504,-0.042441617697477,-0.130855217576027,0.045925412327051));
res += mul(Get(s0,dx,-dy), float4x4(-0.233106121420860,-0.216193482279778,-0.132723167538643,-0.069418899714947,-0.084213644266129,-0.041408170014620,-0.142647206783295,0.135588973760605,-0.164445579051971,-0.096484601497650,0.222767159342766,0.132170289754868,-0.206427648663521,-0.202762529253960,-0.039743144065142,0.058025233447552));
res += mul(Get(s0,dx,0), float4x4(0.108537741005421,-0.076815158128738,-0.086462214589119,-0.160051763057709,-0.031102815642953,0.186961770057678,-0.285573184490204,-0.046766862273216,-0.227486550807953,-0.056104078888893,-0.093445003032684,0.131588160991669,0.027201283723116,-0.052818272262812,-0.019819753244519,0.123401589691639));
res += mul(Get(s0,dx,dy), float4x4(0.207786753773689,0.395260602235794,-0.015540399588645,-0.167041227221489,-0.238887727260590,0.253164350986481,-0.212897494435310,0.170332103967667,-0.085392326116562,-0.074523568153381,-0.007171264849603,0.266192942857742,-0.036208849400282,0.315676122903824,-0.035239618271589,0.171514689922333));
res += mul(Get(s1,-dx,-dy), float4x4(-0.132266148924828,0.058582849800587,0.190181389451027,0.086041726171970,0.044832844287157,-0.051952984184027,0.001198857673444,0.026708465069532,-0.194376796483994,-0.072183966636658,-0.053803924471140,-0.133920431137085,-0.085269592702389,0.102405719459057,0.025681696832180,-0.088573060929775));
res += mul(Get(s1,-dx,0), float4x4(0.048876695334911,0.017398465424776,-0.040133912116289,0.287808001041412,0.015749696642160,0.179147586226463,-0.117102660238743,0.047699127346277,-0.324592322111130,-0.163832783699036,-0.183083012700081,0.056429553776979,-0.117737837135792,-0.062972843647003,0.074961081147194,0.013309294357896));
res += mul(Get(s1,-dx,dy), float4x4(0.033074520528316,0.035203561186790,-0.029930712655187,0.087826929986477,-0.087321065366268,0.008445296436548,-0.064945608377457,-0.122919559478760,0.146068722009659,0.294399380683899,0.038647875189781,-0.033809535205364,0.016017222777009,0.027070280164480,0.156385928392410,-0.040877223014832));
res += mul(Get(s1,0,-dy), float4x4(-0.019689314067364,-0.025162052363157,0.020427415147424,-0.068570621311665,-0.030054161325097,-0.015595049597323,-0.045382533222437,0.054069973528385,-0.185092225670815,-0.255493700504303,0.039956741034985,-0.045887634158134,0.070731833577156,0.252666860818863,0.035277608782053,0.134252995252609));
res += mul(Get(s1,0,0), float4x4(0.042560353875160,-0.066544204950333,-0.025037035346031,-0.055276818573475,0.021752472966909,-0.001673520426266,-0.211612075567245,0.143191695213318,-0.305726289749146,-0.127155125141144,-0.116321548819542,-0.016199463978410,0.021643005311489,-0.008157663978636,-0.031176241114736,-0.068058148026466));
res += mul(Get(s1,0,dy), float4x4(0.017857933416963,-0.031320039182901,0.046610098332167,-0.110576525330544,0.006403558887541,0.044221956282854,-0.107815101742744,-0.000197752102395,0.211752861738205,0.207556739449501,-0.152158260345459,0.042376298457384,0.179132744669914,0.040877163410187,-0.112928166985512,-0.041155036538839));
res += mul(Get(s1,dx,-dy), float4x4(-0.007232623174787,-0.058652214705944,0.281345635652542,-0.003961946349591,-0.020070340484381,0.067895404994488,0.013748737983406,0.010379599407315,-0.247141465544701,-0.128949865698814,0.553283572196960,-0.029739532619715,0.028257543221116,0.013283061794937,-0.174467861652374,0.487218230962753));
res += mul(Get(s1,dx,0), float4x4(0.179097488522530,0.012950593605638,-0.067494802176952,0.215986773371696,0.028404204174876,-0.124033369123936,-0.164595529437065,0.283374667167664,-0.284101337194443,0.037764858454466,-0.046339239925146,0.000449297542218,-0.103295810520649,0.234485149383545,-0.154070109128952,0.141336590051651));
res += mul(Get(s1,dx,dy), float4x4(0.198369577527046,0.008618600666523,0.215349927544594,-0.102457962930202,0.034294515848160,-0.084113940596581,0.044078335165977,0.132405176758766,-0.044285088777542,-0.014810237102211,-0.124201580882072,-0.067095823585987,0.043610319495201,-0.139333337545395,0.042798023670912,0.050489891320467));
res += mul(Get(s2,-dx,-dy), float4x4(-0.056988753378391,-0.067900300025940,0.324930042028427,0.185198783874512,-0.023748898878694,-0.081691518425941,0.030409639701247,-0.079972699284554,0.033714719116688,-0.040651451796293,-0.045517355203629,-0.040784802287817,-0.164800360798836,0.059904664754868,-0.041802853345871,0.271288096904755));
res += mul(Get(s2,-dx,0), float4x4(-0.004192738328129,-0.010019512847066,0.010321648791432,0.024687182158232,0.269930571317673,0.134286642074585,0.045319467782974,-0.126040980219841,-0.059446807950735,0.033420316874981,-0.096052162349224,-0.277645528316498,0.335963249206543,0.104028381407261,-0.043074142187834,-0.002565846778452));
res += mul(Get(s2,-dx,dy), float4x4(-0.143111944198608,0.039797268807888,-0.032678224146366,-0.104578323662281,0.325174868106842,-0.019528627395630,0.035254105925560,-0.229780510067940,0.231285601854324,-0.291922241449356,-0.063304655253887,-0.256455779075623,0.026844162493944,-0.167825892567635,-0.065421372652054,-0.258256524801254));
res += mul(Get(s2,0,-dy), float4x4(-0.105348780751228,-0.121572561562061,0.054716818034649,0.262081801891327,-0.023949321359396,-0.072353772819042,-0.043334640562534,-0.175093337893486,-0.209284171462059,0.053359337151051,0.036516547203064,0.032942745834589,-0.193307429552078,-0.065459281206131,-0.087587833404541,0.227027162909508));
res += mul(Get(s2,0,0), float4x4(0.005984387360513,0.069666177034378,0.205527156591415,0.308525115251541,0.020382929593325,-0.103119045495987,0.084162779152393,-0.114099130034447,0.145193144679070,-0.011889779940248,-0.091435842216015,-0.042439557611942,-0.136182636022568,0.215078547596931,-0.148261860013008,0.099456094205379));
res += mul(Get(s2,0,dy), float4x4(-0.074974775314331,0.058188162744045,-0.092045880854130,-0.075620248913765,0.227087393403053,0.083450160920620,0.181391358375549,-0.137616604566574,0.144788280129433,-0.152450755238533,0.028981788083911,-0.255478054285049,-0.136412113904953,0.140737041831017,0.100689820945263,-0.142236679792404));
res += mul(Get(s2,dx,-dy), float4x4(-0.118300363421440,-0.186957016587257,-0.194806039333344,-0.124432593584061,0.031346056610346,-0.019706655293703,0.381704121828079,-0.120323479175568,0.035233661532402,-0.126718610525131,0.096200272440910,0.027539085596800,0.238470971584320,-0.003526527900249,0.043607965111732,0.231438323855400));
res += mul(Get(s2,dx,0), float4x4(0.015049794688821,-0.134774565696716,-0.102893687784672,0.076598457992077,0.134147524833679,-0.019398694857955,-0.051120951771736,0.025340393185616,-0.040817402303219,-0.055144857615232,0.117744036018848,-0.013310972601175,0.397845655679703,0.037349540740252,0.164313241839409,0.085019759833813));
res += mul(Get(s2,dx,dy), float4x4(-0.020583452656865,-0.149699315428734,-0.109373666346073,0.227028891444206,0.194749891757965,-0.052590552717447,0.135770007967949,0.001770943286829,-0.217782691121101,-0.266236841678619,0.241358190774918,-0.112934768199921,0.260822445154190,0.146287575364113,0.112693823873997,-0.016344619914889));
res += mul(Get(s3,-dx,-dy), float4x4(-0.222108781337738,-0.003807322587818,-0.095274038612843,-0.193524599075317,0.070865646004677,0.091621376574039,-0.071236476302147,-0.206943973898888,0.064943172037601,0.061664525419474,-0.138210862874985,-0.109690710902214,0.070269770920277,-0.096127852797508,-0.097023777663708,-0.113712705671787));
res += mul(Get(s3,-dx,0), float4x4(-0.121235750615597,0.096041269600391,0.080428525805473,-0.174674332141876,-0.122112818062305,0.093184210360050,-0.039070855826139,-0.165572047233582,-0.003847592510283,0.124227114021778,0.017967147752643,-0.138693392276764,0.099734567105770,0.075200140476227,0.075395300984383,0.151194795966148));
res += mul(Get(s3,-dx,dy), float4x4(-0.070131041109562,0.146788686513901,-0.150248244404793,-0.033549685031176,-0.089448511600494,0.277329206466675,0.039525859057903,-0.289988905191422,0.041812084615231,-0.005553029943258,-0.105602860450745,-0.095297448337078,-0.170473828911781,-0.003423849819228,-0.035467736423016,-0.192746013402939));
res += mul(Get(s3,0,-dy), float4x4(-0.120289489626884,0.113391071557999,0.083867326378822,0.002206408884376,0.030128795653582,-0.034240286797285,0.056054212152958,-0.049091286957264,0.246382936835289,-0.054954674094915,-0.122592173516750,-0.141822278499603,0.035124089568853,-0.119910769164562,-0.156246587634087,-0.231406569480896));
res += mul(Get(s3,0,0), float4x4(-0.069961085915565,-0.048013880848885,0.009884470142424,-0.089012689888477,-0.135165035724640,0.123942576348782,-0.024174299091101,-0.045100379735231,-0.025924853980541,0.060401055961847,-0.081723801791668,0.061060983687639,-0.085787087678909,-0.066718459129333,0.058712460100651,-0.063219718635082));
res += mul(Get(s3,0,dy), float4x4(0.134284973144531,-0.038795407861471,-0.030354900285602,0.033658895641565,0.121269084513187,0.179365143179893,-0.060212299227715,-0.031578402966261,-0.015913775190711,-0.105789676308632,0.018623955547810,0.014094580896199,-0.132550165057182,-0.081608347594738,0.065630480647087,-0.126558691263199));
res += mul(Get(s3,dx,-dy), float4x4(0.033902585506439,-0.069308437407017,-0.149421125650406,0.338311076164246,0.043230414390564,-0.211964756250381,-0.143291890621185,0.074558138847351,0.417864650487900,0.027885952964425,0.091652654111385,0.140835419297218,-0.003672829130664,-0.073189638555050,-0.100207723677158,-0.044184040278196));
res += mul(Get(s3,dx,0), float4x4(-0.041967835277319,-0.027043029665947,-0.054323624819517,0.261666893959045,-0.075072780251503,-0.040059853345156,-0.135947003960609,-0.083035044372082,0.049279712140560,-0.088317036628723,0.182470515370369,0.041687015444040,-0.054293695837259,-0.044920351356268,-0.109216891229153,-0.122259989380836));
res += mul(Get(s3,dx,dy), float4x4(0.229554027318954,0.065649822354317,-0.126792669296265,0.130530506372452,0.093794800341129,0.106776662170887,-0.104202069342136,-0.065387509763241,0.237003952264786,-0.241208970546722,0.176903590559959,0.120118074119091,-0.014016251079738,-0.067320398986340,-0.322780698537827,-0.023794751614332));
return max(float4(0,0,0,0), res);
}
