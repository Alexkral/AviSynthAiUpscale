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
res += mul(Get(s0,-dx,-dy), float4x4(0.118339151144028,0.068538971245289,0.054685708135366,0.123737923800945,0.128502681851387,0.020897230133414,0.061868641525507,0.055224627256393,-0.014537866227329,-0.025952048599720,0.095495738089085,-0.026520600542426,-0.177218779921532,0.016891194507480,-0.027892693877220,-0.056231006979942));
res += mul(Get(s0,-dx,0), float4x4(-0.041502743959427,0.223716080188751,0.045391090214252,-0.099491223692894,0.001133305369876,-0.075172156095505,-0.014749383553863,0.051198571920395,-0.213227629661560,-0.043703582137823,-0.070176579058170,-0.257679790258408,-0.183396801352501,-0.181885585188866,0.165093407034874,-0.145969852805138));
res += mul(Get(s0,-dx,dy), float4x4(-0.286523044109344,0.074210338294506,-0.033386923372746,-0.119047127664089,-0.129386901855469,-0.202636033296585,0.133469775319099,0.089544296264648,-0.075223088264465,-0.171775996685028,0.085987254977226,0.036554008722305,-0.375804722309113,0.149815246462822,0.112537026405334,-0.189257934689522));
res += mul(Get(s0,0,-dy), float4x4(0.083077244460583,-0.131134435534477,0.122834973037243,-0.019886761903763,-0.017738338559866,0.069875396788120,0.066897355020046,-0.007920345291495,-0.226791188120842,-0.126393392682076,-0.204104110598564,-0.099989205598831,0.024137197062373,-0.088254004716873,0.046494536101818,0.195432662963867));
res += mul(Get(s0,0,0), float4x4(0.006986981257796,0.167383790016174,0.222729086875916,-0.129695296287537,-0.054987128823996,-0.033506445586681,-0.083350509405136,-0.051959846168756,-0.270098149776459,-0.080351330339909,-0.163850098848343,-0.178012087941170,-0.025974908843637,-0.120054513216019,0.067472837865353,0.306372731924057));
res += mul(Get(s0,0,dy), float4x4(-0.270122647285461,-0.078227125108242,-0.063521400094032,0.000110016306280,-0.141236722469330,-0.144382283091545,0.053824607282877,-0.007572961505502,-0.086322978138924,-0.126286476850510,0.065779559314251,0.156743273139000,-0.200690358877182,0.100153326988220,0.092775382101536,0.329071134328842));
res += mul(Get(s0,dx,-dy), float4x4(0.154709249734879,-0.016325730830431,-0.052023243159056,-0.040668386965990,-0.073193572461605,-0.161387592554092,-0.034277468919754,0.004833768121898,-0.070109985768795,-0.310383886098862,-0.164504110813141,-0.102698192000389,0.042577315121889,0.193228513002396,-0.162019953131676,0.062098089605570));
res += mul(Get(s0,dx,0), float4x4(0.040383737534285,0.205590009689331,0.157929047942162,-0.044146366417408,-0.024157054722309,-0.004703466780484,0.021558890119195,-0.059997189790010,-0.123904660344124,-0.184740856289864,-0.105581641197205,-0.205467969179153,0.012586058117449,0.066156052052975,-0.198497056961060,-0.142728269100189));
res += mul(Get(s0,dx,dy), float4x4(-0.323334008455276,0.038915138691664,-0.023374725133181,0.117258660495281,-0.060729332268238,-0.018298016861081,0.056817699223757,-0.052839070558548,0.009067749604583,-0.003293915186077,-0.168012216687202,-0.105004698038101,-0.029100984334946,-0.120666287839413,-0.183481052517891,-0.023431744426489));
res += mul(Get(s1,-dx,-dy), float4x4(-0.201522246003151,0.500865995883942,-0.204177081584930,-0.207341372966766,0.032278012484312,-0.150385290384293,0.001135778496973,-0.224460259079933,0.103105954825878,0.125229239463806,-0.131739214062691,-0.119379222393036,0.029085511341691,0.127027362585068,0.135609850287437,0.153050333261490));
res += mul(Get(s1,-dx,0), float4x4(-0.206311315298080,-0.073685303330421,-0.163776680827141,-0.130562424659729,-0.034983463585377,-0.071453683078289,-0.070033438503742,0.071325860917568,-0.066155910491943,0.116550877690315,-0.192746728658676,-0.101449891924858,0.036080475896597,-0.088701978325844,-0.013695095665753,0.066619038581848));
res += mul(Get(s1,-dx,dy), float4x4(0.005337221082300,-0.188998922705650,0.291837692260742,-0.073144316673279,0.004308184143156,-0.064315222203732,-0.000988625921309,0.056890573352575,0.165991425514221,-0.243127495050430,-0.024235259741545,-0.009873271919787,0.176369100809097,-0.131938666105270,-0.101795911788940,-0.112382791936398));
res += mul(Get(s1,0,-dy), float4x4(-0.145591855049133,0.062577977776527,-0.170214638113976,-0.004665061365813,0.293606609106064,0.091920144855976,-0.009314989671111,0.016526330262423,0.023822959512472,0.075506508350372,0.003122113412246,-0.028991786763072,0.228183895349503,0.092197693884373,0.199048608541489,0.145945146679878));
res += mul(Get(s1,0,0), float4x4(-0.161197513341904,-0.166134163737297,-0.012845234014094,-0.176664069294930,-0.139712333679199,0.057917416095734,-0.130276352167130,-0.135144189000130,-0.042140617966652,0.205263674259186,-0.096168972551823,-0.082763835787773,-0.010682753287256,-0.012475810945034,0.005728717427701,0.033865272998810));
res += mul(Get(s1,0,dy), float4x4(-0.197635665535927,-0.113270625472069,-0.027788739651442,-0.117010988295078,-0.013971563428640,-0.082572087645531,0.101278334856033,0.174951463937759,0.249094456434250,0.185971930623055,0.166425257921219,-0.111446291208267,0.182709902524948,-0.071019403636456,-0.074955254793167,-0.148187950253487));
res += mul(Get(s1,dx,-dy), float4x4(-0.213502258062363,0.144285783171654,0.099077120423317,0.056768029928207,-0.021808542311192,-0.150763735175133,0.006782593671232,-0.065392054617405,0.061654426157475,0.243815645575523,0.002260661218315,-0.019527543336153,0.258580982685089,0.073408924043179,0.153332978487015,0.164094313979149));
res += mul(Get(s1,dx,0), float4x4(-0.100046440958977,-0.019130134955049,0.183668151497841,0.077759496867657,-0.249387025833130,-0.109082967042923,-0.114597097039223,-0.164206653833389,-0.233614936470985,-0.122470729053020,-0.194093510508537,-0.082289941608906,-0.066479027271271,-0.016672451049089,-0.114046148955822,-0.025725170969963));
res += mul(Get(s1,dx,dy), float4x4(0.045639101415873,-0.301383912563324,-0.076257616281509,-0.091087132692337,-0.100369974970818,-0.071745194494724,0.127489656209946,0.087580323219299,0.018797401338816,-0.175838828086853,0.032266404479742,-0.097271472215652,0.180054858326912,-0.042339354753494,-0.080010272562504,-0.109997712075710));
res += mul(Get(s2,-dx,-dy), float4x4(-0.075124628841877,-0.044300470501184,-0.061982259154320,0.077762208878994,0.071389868855476,-0.166566267609596,-0.238694995641708,0.132336840033531,-0.165864080190659,-0.026458734646440,-0.104552216827869,0.124264210462570,0.169818967580795,0.168040677905083,-0.158281475305557,-0.180714070796967));
res += mul(Get(s2,-dx,0), float4x4(0.093212053179741,0.129894793033600,-0.023004138842225,-0.080234937369823,0.099801830947399,0.098325960338116,-0.054059565067291,-0.173573628067970,-0.151264846324921,-0.104355923831463,-0.022391963750124,-0.004178870934993,-0.035351678729057,-0.053059495985508,-0.012642102316022,0.100798659026623));
res += mul(Get(s2,-dx,dy), float4x4(0.088134624063969,-0.170430913567543,0.089730739593506,-0.166397184133530,0.075688481330872,-0.110267780721188,0.017732329666615,0.097801998257637,-0.136589407920837,-0.258902937173843,0.250988960266113,-0.038302816450596,-0.194863572716713,-0.002872367622331,-0.023316271603107,-0.196790680289268));
res += mul(Get(s2,0,-dy), float4x4(0.024857606738806,0.413041353225708,-0.162478759884834,0.066172294318676,0.091014124453068,-0.047486983239651,-0.134513229131699,0.061525218188763,-0.292290389537811,0.005724151618779,0.026756344363093,-0.024353735148907,-0.085894674062729,0.004719046875834,-0.201932966709137,-0.171613931655884));
res += mul(Get(s2,0,0), float4x4(0.136593654751778,0.034124806523323,-0.069737434387207,-0.092471882700920,0.070405326783657,0.242208793759346,-0.071248456835747,0.094876490533352,-0.302123248577118,0.203539803624153,0.067484386265278,0.140701547265053,-0.136001661419868,-0.122646734118462,0.011317970231175,0.014134085737169));
res += mul(Get(s2,0,dy), float4x4(-0.023176113143563,-0.227880090475082,-0.028349321335554,-0.175144240260124,-0.022197257727385,0.089501805603504,0.046102926135063,-0.066539742052555,0.044555708765984,0.051615536212921,0.450404435396194,-0.078003451228142,-0.066016227006912,-0.091483533382416,-0.061673305928707,0.160904422402382));
res += mul(Get(s2,dx,-dy), float4x4(-0.186656460165977,0.008417033590376,-0.222281396389008,-0.129805877804756,0.045826777815819,0.224648267030716,-0.099304221570492,0.059752415865660,-0.015919657424092,-0.033840261399746,-0.118944957852364,-0.179987981915474,0.048846136778593,-0.050803028047085,-0.162278801202774,-0.158206850290298));
res += mul(Get(s2,dx,0), float4x4(0.050002165138721,-0.000883248285390,-0.236411124467850,-0.043013591319323,-0.026909342035651,0.251202225685120,0.021849391981959,0.486041516065598,0.057579927146435,-0.051825422793627,-0.075630329549313,-0.209833621978760,0.011125748977065,-0.168024346232414,-0.025348382070661,-0.075461827218533));
res += mul(Get(s2,dx,dy), float4x4(0.064696930348873,-0.168953165411949,0.123638428747654,-0.151004999876022,-0.026261853054166,-0.024256702512503,0.031164379790425,-0.094544075429440,0.229414135217667,-0.113190881907940,0.155289739370346,0.026372525840998,0.247428476810455,-0.275382339954376,0.058669921010733,0.382756859064102));
res += mul(Get(s3,-dx,-dy), float4x4(0.066356875002384,-0.214601308107376,-0.025711502879858,0.000448903942015,-0.034721788018942,-0.069946981966496,-0.006511375308037,-0.076261036098003,0.176891580224037,0.179808422923088,0.077564202249050,0.026331255212426,-0.245800495147705,0.198513478040695,-0.134238153696060,-0.279878348112106));
res += mul(Get(s3,-dx,0), float4x4(0.093318462371826,0.032089985907078,-0.073919452726841,-0.130826145410538,-0.118066094815731,-0.013750314712524,0.057570703327656,0.028385376557708,0.390626043081284,0.034440573304892,-0.099084801971912,-0.084897138178349,-0.075733631849289,0.005863247904927,0.098246909677982,-0.079631604254246));
res += mul(Get(s3,-dx,dy), float4x4(0.144641190767288,-0.079674698412418,0.236548677086830,-0.197409510612488,-0.058034274727106,-0.029110597446561,0.053642563521862,0.057446558028460,0.329266786575317,-0.309435635805130,-0.145961225032806,-0.043333869427443,0.204746246337891,-0.053828056901693,0.212167799472809,-0.142508760094643));
res += mul(Get(s3,0,-dy), float4x4(0.071321099996567,-0.118611127138138,-0.078492112457752,0.150157555937767,0.136318758130074,-0.184073269367218,0.161308392882347,-0.084862783551216,0.024119954556227,0.051961932331324,0.263076692819595,0.048558264970779,-0.029955657199025,0.315732508897781,-0.279957115650177,-0.096015475690365));
res += mul(Get(s3,0,0), float4x4(0.217661261558533,-0.054022468626499,-0.090296477079391,0.101607151329517,-0.012096846476197,-0.156075105071068,-0.039166625589132,0.097731254994869,-0.159206077456474,-0.140861675143242,0.002186095807701,-0.133171081542969,0.100704327225685,-0.142230823636055,0.019479027017951,-0.024599036201835));
res += mul(Get(s3,0,dy), float4x4(0.000056258362747,-0.028817215934396,-0.027599947527051,0.041699055582285,-0.047733243554831,-0.115081556141376,-0.046681735664606,0.339150756597519,-0.065375983715057,-0.300585150718689,-0.262877851724625,-0.194039076566696,0.206401258707047,-0.233378469944000,0.494483470916748,-0.113770678639412));
res += mul(Get(s3,dx,-dy), float4x4(-0.148110046982765,0.003605420468375,-0.130767390131950,0.053690973669291,0.052319619804621,-0.184730783104897,0.071987137198448,-0.104008443653584,0.053702481091022,-0.101490862667561,0.164588525891304,0.158388018608093,0.235606670379639,0.145607456564903,-0.240949749946594,0.074380099773407));
res += mul(Get(s3,dx,0), float4x4(-0.098144553601742,0.069982774555683,0.020257607102394,-0.013069088570774,-0.007448068354279,-0.171401053667068,-0.052684780210257,-0.056612756103277,-0.427051335573196,-0.245852246880531,-0.013031125068665,-0.137523531913757,0.200415417551994,-0.007690623402596,0.127285853028297,0.011170056648552));
res += mul(Get(s3,dx,dy), float4x4(0.022503705695271,0.055047567933798,0.105749927461147,-0.232536390423775,-0.048499964177608,-0.026514699682593,-0.050603929907084,0.187877222895622,-0.058578543365002,-0.257417798042297,0.006935434881598,-0.222574979066849,0.037111539393663,-0.077065043151379,0.192330539226532,-0.050282005220652));
return max(float4(0,0,0,0), res);
}
