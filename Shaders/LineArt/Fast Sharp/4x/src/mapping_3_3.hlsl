sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.175915196537971,-0.008152569644153,0.025399342179298,-0.088990718126297);
res += mul(Get(s0,-dx,-dy), float4x4(0.137493520975113,0.011755041778088,-0.034778971225023,0.038245301693678,0.219909504055977,0.080156274139881,-0.167094543576241,-0.117944560945034,-0.090596705675125,-0.172630220651627,-0.268036484718323,-0.342944115400314,-0.115685783326626,0.125631347298622,0.362811684608459,-0.073042280972004));
res += mul(Get(s0,-dx,0), float4x4(0.304567515850067,0.206326201558113,-0.040001135319471,0.358027845621109,-0.225415274500847,-0.124776087701321,-0.328614592552185,-0.086020953953266,0.186460033059120,0.012486152350903,-0.132529497146606,-0.193666249513626,-0.597162425518036,-0.061368159949780,0.970004200935364,-0.268014639616013));
res += mul(Get(s0,-dx,dy), float4x4(-0.215068414807320,-0.054315060377121,0.085411474108696,0.410704374313354,-0.050980739295483,-0.118463352322578,-0.198299065232277,-0.408704280853271,0.230859711766243,0.063630133867264,0.090822257101536,0.071511916816235,-0.184834554791451,-0.293535977602005,0.256883680820465,-0.423731237649918));
res += mul(Get(s0,0,-dy), float4x4(0.236866638064384,-0.008727500215173,0.009548326022923,0.125429049134254,0.153931334614754,0.317392796278000,-0.020438451319933,-0.144167482852936,0.199313521385193,0.037789952009916,0.280490785837173,-0.130203127861023,-0.146193742752075,0.017467612400651,0.167310610413551,-0.124879665672779));
res += mul(Get(s0,0,0), float4x4(-0.010420589707792,0.259490519762039,-0.152412489056587,-0.122675865888596,-0.035019073635340,-0.268091171979904,0.445405304431915,0.127098798751831,0.196150347590446,0.105675339698792,-0.345355778932571,0.225883722305298,-0.123447515070438,-0.199681550264359,0.110432557761669,0.490935802459717));
res += mul(Get(s0,0,dy), float4x4(0.300687998533249,0.251921564340591,0.021927213296294,0.315711349248886,0.027883419767022,-0.288088679313660,0.070002891123295,-0.109568826854229,0.054149325937033,0.143480330705643,-0.053459323942661,0.073872424662113,-0.006687812507153,0.027271542698145,0.125450849533081,-0.027368798851967));
res += mul(Get(s0,dx,-dy), float4x4(-0.141541287302971,0.071142695844173,-0.062305115163326,-0.099909104406834,0.163385033607483,-0.003800508333370,-0.114431172609329,-0.131763562560081,0.095100007951260,0.208457559347153,-0.121863529086113,-0.060055974870920,-0.062121111899614,-0.027735054492950,0.198573425412178,0.083570472896099));
res += mul(Get(s0,dx,0), float4x4(-0.040003269910812,-0.060037191957235,0.278531521558762,0.217058867216110,-0.028675530105829,-0.042126048356295,0.022376904264092,0.001323101925664,-0.228874295949936,0.219006791710854,0.085596762597561,0.234169825911522,0.022042788565159,0.074646651744843,0.214550107717514,-0.135983645915985));
res += mul(Get(s0,dx,dy), float4x4(-0.081467926502228,0.104565657675266,0.202516913414001,0.067714385688305,0.029479101300240,-0.050824578851461,-0.000499179703183,-0.072516649961472,-0.005208799149841,-0.266542136669159,0.340110331773758,0.026402726769447,0.076405227184296,-0.001217821147293,-0.027674181386828,-0.113862246274948));
res += mul(Get(s1,-dx,-dy), float4x4(0.205101698637009,0.078937530517578,0.053112935274839,-0.035852394998074,-0.074566237628460,0.008263230323792,0.002512856852263,0.200774565339088,-0.059500750154257,-0.365950733423233,-0.049675170332193,-0.023976145312190,0.182711541652679,0.162333145737648,-0.053462997078896,-0.126508682966232));
res += mul(Get(s1,-dx,0), float4x4(-0.179802253842354,-0.034222096204758,-0.017327995970845,0.154734656214714,-0.165836319327354,0.044015720486641,0.017761612311006,-0.373124867677689,-0.246737867593765,-0.032846894115210,-0.373379111289978,-0.121209613978863,0.019833130761981,-0.076579317450523,-0.096622556447983,0.174418985843658));
res += mul(Get(s1,-dx,dy), float4x4(-0.104589432477951,-0.152053937315941,-0.129024446010590,-0.450990140438080,-0.097361087799072,-0.007323340978473,0.147493973374367,-0.011702569201589,-0.120135016739368,-0.051881156861782,-0.156317830085754,-0.065569892525673,0.054498758167028,-0.082225054502487,-0.104400746524334,-0.041412957012653));
res += mul(Get(s1,0,-dy), float4x4(-0.162037134170532,0.170138984918594,0.115648038685322,-0.399997502565384,-0.051109600812197,0.079934619367123,0.023443138226867,0.268751263618469,0.016847271472216,-0.642112076282501,-0.157810792326927,-0.006492938846350,0.062292549759150,-0.267213344573975,-0.314625680446625,-0.065986141562462));
res += mul(Get(s1,0,0), float4x4(0.496104687452316,-0.060173016041517,-0.676482319831848,0.499926030635834,0.296085536479950,-0.051364447921515,-0.872094452381134,-0.251363515853882,0.208499133586884,0.125742644071579,0.491580605506897,-0.285153239965439,-0.072370119392872,0.452799379825592,-0.069627784192562,-0.349991589784622));
res += mul(Get(s1,0,dy), float4x4(-0.090031541883945,-0.033627141267061,0.191142424941063,0.079276852309704,0.166575103998184,0.242706909775734,-0.175682216882706,-0.000077851247624,-0.135603964328766,-0.020206848159432,0.174270719289780,-0.183119550347328,0.025929190218449,-0.353137671947479,0.071243532001972,-0.064960651099682));
res += mul(Get(s1,dx,-dy), float4x4(-0.192910522222519,0.019845532253385,0.313090443611145,-0.043753288686275,-0.129710167646408,0.194124057888985,0.195810496807098,-0.014637245796621,-0.282115221023560,-0.136518746614456,0.108728237450123,0.013308511115611,0.254684001207352,0.065499387681484,-0.052844915539026,-0.075914099812508));
res += mul(Get(s1,dx,0), float4x4(-0.803997159004211,-0.092748105525970,0.645672142505646,-0.168936669826508,-0.762493371963501,-0.114350818097591,0.592001676559448,0.537257373332977,0.179764345288277,-0.321318060159683,-0.044458866119385,-0.155745252966881,-0.021497296169400,-0.089829519391060,0.172816902399063,0.121854618191719));
res += mul(Get(s1,dx,dy), float4x4(-0.363975524902344,0.015125091187656,0.218456447124481,-0.058678019791842,-0.240580946207047,0.077670663595200,0.085399493575096,0.158760562539101,0.271609842777252,-0.084191672503948,0.095465727150440,0.124983802437782,-0.006010338198394,0.092026494443417,0.011654380708933,-0.104045018553734));
res += mul(Get(s2,-dx,-dy), float4x4(0.106260254979134,0.014653112739325,-0.298960596323013,-0.096983715891838,-0.132867112755775,-0.039325885474682,0.126574605703354,-0.362703353166580,-0.238285258412361,-0.187503084540367,-0.059944320470095,-0.131875127553940,0.053424350917339,0.084232449531555,0.140927001833916,0.335802823305130));
res += mul(Get(s2,-dx,0), float4x4(0.477145403623581,0.190811783075333,-0.381634593009949,0.856371879577637,0.065710194408894,-0.041629865765572,-0.081557907164097,-0.649526536464691,0.527912914752960,-0.010320785455406,-0.004625713918358,-0.172376215457916,0.585294187068939,0.195792362093925,-0.160568550229073,0.600132882595062));
res += mul(Get(s2,-dx,dy), float4x4(0.025315154343843,0.014163947664201,-0.040624640882015,0.154198676347733,0.028649685904384,0.055551897734404,0.044030796736479,-0.145202010869980,-0.071737810969353,0.050378352403641,-0.098517999053001,-0.120103128254414,-0.045029699802399,0.532772243022919,-0.100977964699268,0.630138039588928));
res += mul(Get(s2,0,-dy), float4x4(0.127461433410645,0.171799257397652,-0.213114693760872,-0.195721104741096,-0.163385570049286,-0.027421573176980,0.300048500299454,0.016540369018912,0.241652637720108,-0.087655760347843,-0.074581436812878,-0.036715518683195,0.117928050458431,0.346354365348816,0.007288096006960,0.152002811431885));
res += mul(Get(s2,0,0), float4x4(0.066504500806332,0.161335974931717,-0.486221641302109,-0.328013390302658,-0.230449870228767,0.034043341875076,-0.083523906767368,-0.384791165590286,0.097744442522526,-0.183414667844772,0.217944428324699,-0.083409607410431,-0.080751456320286,-0.011162210255861,-0.088644139468670,0.428540796041489));
res += mul(Get(s2,0,dy), float4x4(-0.072000585496426,0.019697163254023,-0.012055318802595,-0.088509716093540,-0.000967110157944,0.069455310702324,-0.056836575269699,-0.017432792112231,-0.148477941751480,0.046931196004152,-0.046023808419704,0.016613425686955,-0.027489792555571,0.651464521884918,-0.203047409653664,0.094692148268223));
res += mul(Get(s2,dx,-dy), float4x4(0.049317628145218,-0.071572892367840,0.157325685024261,0.005816269200295,-0.134735271334648,-0.164119347929955,-0.003908540122211,0.016247825697064,0.247759863734245,-0.000368383625755,-0.368095189332962,-0.281974673271179,-0.020627010613680,-0.016169030219316,0.095416590571404,-0.136471331119537));
res += mul(Get(s2,dx,0), float4x4(0.029550323262811,-0.014237325638533,0.274423748254776,0.170515239238739,-0.061010211706161,-0.120536066591740,-0.136442050337791,-0.112770318984985,0.282285183668137,0.054822180420160,-0.506097555160522,-0.275253295898438,-0.227684691548347,0.182463511824608,-0.366124361753464,0.078226499259472));
res += mul(Get(s2,dx,dy), float4x4(0.088910818099976,0.021705372259021,0.049833230674267,-0.114764519035816,-0.071731895208359,-0.104557506740093,-0.029056128114462,-0.055706247687340,-0.008558114990592,-0.135504379868507,-0.056601870805025,-0.295086264610291,-0.315767556428909,0.205546006560326,0.037663109600544,-0.006133652292192));
res = max(float4(0, 0, 0, 0), res) + float4(0.512230813503265,-0.384390950202942,0.128533452749252,-0.152776300907135) * min(float4(0, 0, 0, 0), res);
return res;
}
