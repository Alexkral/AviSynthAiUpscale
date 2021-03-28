sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.040579948574305,-0.441841185092926,0.128353342413902,-0.154336512088776);
res += mul(Get(s0,-dx,-dy), float4x4(0.026200097054243,0.349696844816208,-0.013967999257147,-0.101890243589878,-0.130886986851692,-0.006859368178993,0.090479977428913,-0.096003420650959,0.078594960272312,0.195094883441925,0.083199083805084,0.073566623032093,0.094665482640266,0.017929267138243,-0.221906051039696,0.122237674891949));
res += mul(Get(s0,-dx,0), float4x4(-0.110153503715992,0.183453038334846,-0.013950432650745,0.220332637429237,-0.170081853866577,0.176701307296753,0.108576290309429,0.099413782358170,0.018257353454828,-0.061637420207262,0.131062686443329,-0.003213427960873,-0.030158067122102,0.055919997394085,0.046729478985071,-0.016242766752839));
res += mul(Get(s0,-dx,dy), float4x4(0.089212648570538,-0.044623091816902,0.085617296397686,0.071540609002113,0.182652115821838,-0.103703051805496,-0.004930873867124,-0.087674692273140,-0.100303374230862,0.145726472139359,-0.133391916751862,0.089416168630123,-0.253119051456451,-0.058430101722479,0.107250191271305,-0.083541132509708));
res += mul(Get(s0,0,-dy), float4x4(0.384552240371704,-0.329412966966629,-0.054228644818068,0.245853558182716,0.030197726562619,-0.184964016079903,-0.317326366901398,0.138715237379074,0.193486511707306,-0.366703420877457,-0.115530341863632,0.109419703483582,-0.004867389332503,0.326714068651199,0.198538780212402,0.186534970998764));
res += mul(Get(s0,0,0), float4x4(-0.430253148078918,0.140298545360565,-0.126586511731148,0.531499445438385,-0.527521729469299,0.132669985294342,0.402130633592606,-0.214396178722382,-0.814776241779327,0.143057674169540,-0.549067914485931,0.151678666472435,0.394425272941589,-0.395380973815918,0.278586357831955,-0.222306832671165));
res += mul(Get(s0,0,dy), float4x4(0.344281911849976,0.004830773454159,-0.091476842761040,-0.117388755083084,0.141412228345871,0.085740864276886,-0.166477218270302,0.292727828025818,-0.232224583625793,0.186013102531433,-0.085037097334862,-0.052705261856318,-0.216340392827988,0.172654196619987,-0.036619488149881,-0.241893917322159));
res += mul(Get(s0,dx,-dy), float4x4(-0.217407777905464,0.138469219207764,0.211456835269928,0.042503181844950,0.043398261070251,0.166542574763298,-0.224297523498535,0.100506216287613,0.106985777616501,0.135990843176842,-0.297463595867157,0.148302540183067,-0.069157697260380,0.110664993524551,-0.202400952577591,0.098166078329086));
res += mul(Get(s0,dx,0), float4x4(-0.003751176409423,0.175844520330429,0.175753548741341,-0.606851160526276,0.219664305448532,-0.231339767575264,0.037059035152197,-0.141744092106819,-0.042052526026964,-0.081250138580799,0.445071041584015,-0.276468127965927,0.173893779516220,-0.265957325696945,-0.530950725078583,0.439898163080215));
res += mul(Get(s0,dx,dy), float4x4(-0.091451883316040,-0.029793651774526,0.003621120471507,0.154789403080940,-0.148480996489525,0.014115685597062,0.142146095633507,-0.069667309522629,-0.057761084288359,0.043529838323593,0.138121709227562,-0.196086481213570,0.221153631806374,-0.270402014255524,0.132287383079529,0.014348409138620));
res += mul(Get(s1,-dx,-dy), float4x4(0.145313322544098,0.166531220078468,0.163042500615120,-0.098153091967106,-0.025914184749126,0.161811321973801,-0.168945312500000,-0.030821435153484,-0.201647177338600,0.072493307292461,0.149480536580086,-0.018130680546165,-0.089716158807278,0.048616852611303,-0.035127412527800,-0.062949948012829));
res += mul(Get(s1,-dx,0), float4x4(-0.015826066955924,0.363755553960800,0.049197871237993,0.081107094883919,-0.265698045492172,0.032432854175568,-0.218525469303131,0.095320843160152,-0.175620928406715,-0.307981401681900,-0.203443139791489,0.169889032840729,-0.089783035218716,-0.182799324393272,-0.179383307695389,0.122015923261642));
res += mul(Get(s1,-dx,dy), float4x4(0.098371967673302,-0.044170685112476,-0.084510087966919,-0.034756064414978,0.097028248012066,-0.359742760658264,0.061918511986732,0.163748696446419,0.138733342289925,-0.224692121148109,0.149476692080498,-0.050143975764513,0.220174267888069,-0.045925378799438,0.017925817519426,0.171626135706902));
res += mul(Get(s1,0,-dy), float4x4(0.023577589541674,-0.293609887361526,0.073578789830208,0.067416988313198,-0.111308820545673,-0.103283293545246,0.142860159277916,0.139901429414749,-0.106532499194145,-0.157901078462601,-0.102214075624943,-0.202531442046165,0.006745726335794,-0.045044410973787,-0.344034641981125,-0.082044824957848));
res += mul(Get(s1,0,0), float4x4(0.716807484626770,-1.002151131629944,0.201177641749382,-0.178314015269279,0.269352704286575,-0.147912979125977,-0.030771804973483,-0.056401971727610,-0.067358650267124,0.212878718972206,0.528020501136780,-0.055637512356043,-0.462026238441467,0.384660542011261,-0.121709503233433,0.101057276129723));
res += mul(Get(s1,0,dy), float4x4(-1.102996468544006,0.153925850987434,-0.097518362104893,-0.261852264404297,0.314966350793839,0.150225728750229,-0.008445743471384,-0.346206277608871,0.282902777194977,-0.248496055603027,0.196119681000710,-0.180935472249985,0.531023025512695,0.136629208922386,0.217021301388741,-0.287891685962677));
res += mul(Get(s1,dx,-dy), float4x4(-0.082633599638939,0.121503069996834,0.114532425999641,-0.124775208532810,0.018805203959346,0.041949253529310,0.001920085982420,-0.087701611220837,0.039901580661535,0.106626965105534,0.014105577953160,-0.193226456642151,-0.000261514389422,0.023639917373657,0.219239309430122,0.200146540999413));
res += mul(Get(s1,dx,0), float4x4(-0.127149790525436,0.095869906246662,-0.373642593622208,1.015135169029236,-0.204889565706253,-0.298985034227371,0.263391196727753,-0.226674586534500,-0.156869873404503,0.102644972503185,0.176114261150360,0.195850968360901,-0.247074455022812,0.243447557091713,0.286504089832306,-0.390939235687256));
res += mul(Get(s1,dx,dy), float4x4(0.228978544473648,0.218748033046722,0.230717256665230,-0.141886278986931,0.039852719753981,0.158620506525040,-0.138500586152077,0.067907705903053,0.231455266475677,-0.034691207110882,-0.080357857048512,-0.058688126504421,0.160908386111259,0.032701335847378,0.042562101036310,-0.035782303661108));
res += mul(Get(s2,-dx,-dy), float4x4(-0.399924725294113,0.790289282798767,-0.227895453572273,0.036112200468779,-0.099476836621761,0.191839143633842,-0.154584214091301,-0.233677491545677,0.024256190285087,0.122132554650307,0.274013102054596,-0.018880479037762,0.131400242447853,-0.061963118612766,0.453774988651276,0.188625738024712));
res += mul(Get(s2,-dx,0), float4x4(-0.177027791738510,1.528488516807556,-0.198687642812729,-0.082235157489777,-0.086289271712303,-0.074974000453949,-0.096756905317307,-0.135556042194366,0.107763320207596,0.061940249055624,-0.116712711751461,0.128163412213326,-0.308376997709274,0.043903652578592,0.051236633211374,-0.165313422679901));
res += mul(Get(s2,-dx,dy), float4x4(0.799003601074219,-0.801316261291504,-0.153677120804787,-0.079177014529705,0.301790118217468,0.295269906520844,-0.054747782647610,-0.406558990478516,0.045319352298975,0.044323608279228,0.023687127977610,-0.005848465021700,0.113905668258667,0.036613851785660,-0.036220643669367,0.101315900683403));
res += mul(Get(s2,0,-dy), float4x4(-0.060001377016306,0.108418986201286,-0.046949766576290,1.100295782089233,0.132510066032410,-0.063148684799671,0.442799866199493,-0.247147947549820,0.134626567363739,-0.096593089401722,-0.011015825904906,-0.143242672085762,-0.021694514900446,0.122179247438908,-0.237657874822617,-0.083604112267494));
res += mul(Get(s2,0,0), float4x4(-0.054380882531404,1.363386750221252,0.617911636829376,-0.344712734222412,-0.162070348858833,-0.101196981966496,0.544178068637848,-0.435044288635254,-0.303400516510010,-0.071468539535999,-0.227080404758453,0.254961997270584,0.064934283494949,0.362704724073410,-0.024485247209668,0.383839428424835));
res += mul(Get(s2,0,dy), float4x4(0.124752461910248,-0.053598035126925,0.144738972187042,0.357550054788589,0.529189586639404,0.072540812194347,-0.277627259492874,-0.083756782114506,-0.006394860800356,-0.035529777407646,0.056227721273899,-0.014527974650264,-0.316668123006821,-0.356640309095383,-0.018141422420740,0.160849586129189));
res += mul(Get(s2,dx,-dy), float4x4(-0.038222048431635,-0.614679634571075,-0.440704524517059,0.723932147026062,0.037410605698824,0.152820363640785,-0.161076292395592,-0.099400483071804,0.099201910197735,-0.204641744494438,-1.381855964660645,0.040092155337334,-0.047194458544254,-0.022280335426331,0.002565928967670,-0.000107933032268));
res += mul(Get(s2,dx,0), float4x4(-0.099298797547817,-0.420194447040558,0.414084076881409,1.546429634094238,-0.182538211345673,0.283302634954453,0.286849319934845,0.408999323844910,-0.275569260120392,-0.083662666380405,-0.356374800205231,0.263426274061203,0.095251820981503,-0.122616268694401,-0.195301085710526,0.159198448061943));
res += mul(Get(s2,dx,dy), float4x4(-0.217961341142654,-0.263646095991135,-0.223290100693703,0.516898334026337,-0.063548579812050,0.226234927773476,-0.091538920998573,0.380549281835556,-0.075503379106522,0.147316053509712,-0.176420345902443,-0.007736994419247,0.075893506407738,-0.346809238195419,0.085054248571396,-0.000340209080605));
res = max(float4(0, 0, 0, 0), res) + float4(-0.060977183282375,-0.006842598319054,-0.003168559400365,-0.040526092052460) * min(float4(0, 0, 0, 0), res);
return res;
}