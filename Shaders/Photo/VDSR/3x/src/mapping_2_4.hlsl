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
res += mul(Get(s0,-dx,-dy), float4x4(0.090436354279518,-0.183482989668846,-0.015000414103270,0.066026046872139,-0.128060594201088,0.130483627319336,0.072287701070309,0.138857871294022,-0.009134144522250,0.030176501721144,0.080357879400253,0.010164435021579,-0.077328875660896,-0.045869860798120,0.146886393427849,0.022741526365280));
res += mul(Get(s0,-dx,0), float4x4(-0.141448691487312,-0.123557113111019,0.261841684579849,0.184313282370567,-0.080431304872036,0.095486514270306,-0.019178323447704,0.129059106111526,-0.115093909204006,-0.069593712687492,0.141482815146446,-0.093320533633232,0.040814965963364,-0.002637089230120,-0.333741068840027,0.191147267818451));
res += mul(Get(s0,-dx,dy), float4x4(0.055422458797693,-0.173896759748459,0.031540058553219,0.046167280524969,-0.001384551869705,0.037572193890810,0.166452407836914,0.025385182350874,-0.114098317921162,-0.067839227616787,-0.051670633256435,-0.268245935440063,0.113899953663349,-0.044931408017874,0.203003048896790,0.035714313387871));
res += mul(Get(s0,0,-dy), float4x4(-0.162899121642113,0.020022613927722,-0.005449778866023,0.026458814740181,0.116567835211754,-0.122191131114960,0.244429811835289,0.388906568288803,-0.067319899797440,0.119500972330570,-0.091355197131634,0.067629545927048,-0.024437470361590,-0.134813025593758,-0.120882041752338,-0.196475774049759));
res += mul(Get(s0,0,0), float4x4(-0.003880727337673,0.177579343318939,0.177529945969582,0.248220041394234,-0.254406899213791,0.182877957820892,-0.195771679282188,-0.212123289704323,0.263288080692291,-0.148226037621498,0.158585667610168,0.002436548005790,-0.035198152065277,0.270837038755417,-0.105707228183746,0.245084285736084));
res += mul(Get(s0,0,dy), float4x4(0.033170424401760,-0.004961216822267,-0.031739320605993,0.035684142261744,0.085544154047966,0.244208142161369,-0.025018610060215,-0.152101874351501,-0.098397910594940,-0.167639434337616,0.124307282269001,0.220264852046967,0.283672422170639,0.213010013103485,-0.147165358066559,-0.017599927261472));
res += mul(Get(s0,dx,-dy), float4x4(0.217253386974335,-0.057023439556360,0.090232715010643,0.306914299726486,0.073436371982098,0.063408263027668,-0.199343711137772,0.214065819978714,-0.097820818424225,-0.106247797608376,-0.012106216512620,-0.059495553374290,0.066047586500645,0.150263875722885,-0.033256761729717,0.154921814799309));
res += mul(Get(s0,dx,0), float4x4(0.194219797849655,-0.077217847108841,0.193456798791885,-0.040603004395962,-0.071337595582008,0.065851666033268,-0.001926190685481,-0.083305776119232,-0.092839196324348,0.183035671710968,-0.014201859943569,-0.039254892617464,0.055272012948990,0.236038714647293,0.121009089052677,-0.083479106426239));
res += mul(Get(s0,dx,dy), float4x4(0.023252487182617,-0.048699215054512,-0.072304114699364,0.015493348240852,0.203866884112358,0.039946336299181,0.081907585263252,-0.119320772588253,0.358584284782410,0.116809107363224,0.018293067812920,-0.114953309297562,-0.039300434291363,-0.147482559084892,0.069046370685101,-0.090387612581253));
res += mul(Get(s1,-dx,-dy), float4x4(0.111070364713669,-0.042928498238325,0.035585615783930,-0.103731028735638,0.104641512036324,-0.054250963032246,0.031660348176956,-0.047794610261917,-0.047063678503036,-0.121032468974590,0.036625634878874,-0.012120240367949,0.081062152981758,0.033428229391575,-0.024306325241923,0.288665026426315));
res += mul(Get(s1,-dx,0), float4x4(-0.025736289098859,-0.153085798025131,0.188965007662773,0.013674262911081,0.102662041783333,0.070108771324158,-0.002354609780014,-0.123085357248783,0.041439279913902,0.089466989040375,0.069763593375683,-0.224459692835808,0.141592696309090,0.034582246094942,0.067571073770523,-0.086705930531025));
res += mul(Get(s1,-dx,dy), float4x4(-0.021358618512750,0.036046311259270,0.107852607965469,0.095801673829556,0.042153831571341,0.181673020124435,0.016240149736404,0.072036340832710,0.047800060361624,-0.090515188872814,-0.010132129304111,-0.055668447166681,-0.072006180882454,-0.198621422052383,-0.129164069890976,0.174983397126198));
res += mul(Get(s1,0,-dy), float4x4(-0.093397386372089,0.146561741828918,-0.091235719621181,-0.051797956228256,-0.066878594458103,-0.139157786965370,0.149797827005386,-0.111982263624668,0.141935810446739,0.032282613217831,0.239215582609177,0.046645719558001,0.256313025951385,0.365189850330353,0.039638079702854,0.138788476586342));
res += mul(Get(s1,0,0), float4x4(0.111249580979347,0.109503030776978,-0.218965873122215,-0.112051188945770,-0.000486352830194,-0.124018825590611,0.110272459685802,-0.019555617123842,-0.105937443673611,-0.141652524471283,0.034630943089724,0.005065108649433,0.074731864035130,0.045396842062473,-0.057301796972752,-0.141164049506187));
res += mul(Get(s1,0,dy), float4x4(-0.067081689834595,-0.034359697252512,0.331402987241745,0.300567060709000,-0.086567856371403,0.145549431443214,-0.013626745902002,-0.043984558433294,0.109962850809097,-0.076214052736759,-0.146888196468353,0.116362862288952,-0.088496387004852,-0.092310056090355,-0.072489693760872,-0.118940591812134));
res += mul(Get(s1,dx,-dy), float4x4(0.017599768936634,-0.115003280341625,-0.184015288949013,0.030053731054068,0.005589198321104,-0.015346081927419,0.047785475850105,0.013073087669909,0.060666430741549,-0.023843478411436,0.085342608392239,-0.066041886806488,-0.004163664765656,0.022011643275619,-0.043656840920448,0.112543307244778));
res += mul(Get(s1,dx,0), float4x4(-0.025981515645981,-0.315268307924271,0.243799939751625,0.066528759896755,-0.020338639616966,0.102097190916538,-0.041758537292480,0.002682330552489,-0.015377630479634,-0.251531302928925,-0.138666361570358,-0.112674549221992,0.194365635514259,-0.118426620960236,-0.029971797019243,0.051790662109852));
res += mul(Get(s1,dx,dy), float4x4(-0.020255321636796,-0.090093933045864,-0.030764495953918,0.007381505798548,0.043500516563654,0.034199476242065,0.016404842957854,0.092351622879505,-0.057611972093582,0.033248063176870,0.023485718294978,0.110351249575615,-0.159310981631279,-0.145168408751488,-0.242269575595856,-0.032733585685492));
res += mul(Get(s2,-dx,-dy), float4x4(0.192788302898407,0.039058454334736,-0.092491120100021,0.089173212647438,0.043304827064276,-0.090174213051796,0.061158310621977,0.014019856229424,0.208788380026817,0.124967649579048,0.023320646956563,0.007496224250644,-0.280113756656647,-0.031911280006170,-0.060768567025661,-0.098587863147259));
res += mul(Get(s2,-dx,0), float4x4(0.073540583252907,-0.054958280175924,0.211719706654549,-0.034186359494925,0.086938515305519,0.043913122266531,0.115145564079285,-0.014558256603777,0.027262320742011,-0.172619938850403,-0.157313942909241,-0.138650506734848,-0.099824555218220,0.160969242453575,-0.120087727904320,-0.135788604617119));
res += mul(Get(s2,-dx,dy), float4x4(0.149611502885818,0.061860669404268,-0.001263884478249,0.032360952347517,-0.121989198029041,0.014745958149433,-0.073134221136570,-0.089192584156990,-0.091991506516933,0.104562483727932,-0.111287191510201,-0.102165415883064,-0.001636815257370,0.155940398573875,-0.034810390323400,-0.062314871698618));
res += mul(Get(s2,0,-dy), float4x4(-0.012531118467450,-0.013897553086281,0.028999179601669,-0.058783486485481,-0.172940805554390,0.069218836724758,0.008235817775130,-0.133723571896553,-0.020162496715784,-0.177967905998230,-0.045960158109665,-0.232979893684387,-0.012324702925980,-0.171142414212227,0.040637075901031,-0.052140094339848));
res += mul(Get(s2,0,0), float4x4(-0.182986453175545,0.019110199064016,0.024658946320415,0.117649748921394,-0.039403326809406,0.009308442473412,0.287823259830475,0.048321079462767,-0.013855134136975,0.219105020165443,0.050912871956825,-0.181817993521690,-0.056452624499798,0.105957344174385,0.033237785100937,0.169346898794174));
res += mul(Get(s2,0,dy), float4x4(0.099342197179794,-0.072645239531994,-0.124502494931221,-0.136735901236534,0.148521378636360,-0.013025817461312,0.052184019237757,-0.093526326119900,0.094029113650322,0.137029930949211,-0.026246219873428,0.113512732088566,0.118258148431778,0.054782848805189,-0.012405638583004,0.075144968926907));
res += mul(Get(s2,dx,-dy), float4x4(0.074456699192524,-0.024389674887061,0.054754715412855,0.105649553239346,-0.184845983982086,-0.103290200233459,0.041831310838461,0.146686136722565,-0.052384395152330,0.124383680522442,-0.069426096975803,0.029330478981137,0.098181352019310,-0.089005507528782,-0.099987961351871,-0.016703482717276));
res += mul(Get(s2,dx,0), float4x4(0.144982174038887,0.051110789179802,0.165903538465500,-0.050943210721016,-0.066377766430378,0.058719824999571,-0.038904462009668,-0.055876526981592,0.090135000646114,-0.224204391241074,-0.228522792458534,-0.006181517150253,-0.030515618622303,-0.054232630878687,-0.033650938421488,0.151781663298607));
res += mul(Get(s2,dx,dy), float4x4(-0.128420859575272,-0.123030200600624,-0.084189139306545,-0.003558110212907,-0.020035821944475,0.046127922832966,-0.031746804714203,0.037991132587194,0.129301652312279,-0.013014649040997,0.073718115687370,0.096376344561577,0.011240472085774,-0.223761186003685,0.018438952043653,-0.196257814764977));
res += mul(Get(s3,-dx,-dy), float4x4(-0.061809442937374,-0.055187445133924,0.148380964994431,-0.020085884258151,0.152641683816910,-0.009628316387534,0.009204701520503,0.056108508259058,-0.073374696075916,0.017063401639462,-0.179708957672119,0.001446043141186,-0.079960353672504,0.110547311604023,-0.251612424850464,0.010094356723130));
res += mul(Get(s3,-dx,0), float4x4(-0.063861519098282,-0.020082276314497,0.083834372460842,-0.142795622348785,0.179645106196404,-0.048863798379898,-0.102593548595905,0.082481905817986,-0.030449680984020,-0.001998968888074,0.074330203235149,0.137816786766052,0.127065166831017,0.190340876579285,-0.104325480759144,0.213045328855515));
res += mul(Get(s3,-dx,dy), float4x4(-0.153865039348602,0.158761709928513,-0.070635199546814,-0.046555098146200,0.080881610512733,0.174214676022530,0.104241386055946,0.000657148892060,-0.116251535713673,0.036407824605703,0.106230191886425,-0.130541667342186,-0.022988531738520,-0.005786350928247,0.052995786070824,0.031756643205881));
res += mul(Get(s3,0,-dy), float4x4(0.107603572309017,-0.009955219924450,-0.086123436689377,0.016867136582732,-0.132453158497810,0.193075701594353,0.094049818813801,0.147281914949417,0.113494284451008,-0.122986398637295,-0.042949933558702,-0.005511703900993,0.052208170294762,0.058587182313204,0.122929520905018,-0.062434658408165));
res += mul(Get(s3,0,0), float4x4(-0.011710025370121,-0.042123030871153,0.135810777544975,-0.081520475447178,-0.110932812094688,0.131461396813393,-0.034817390143871,-0.059929493814707,-0.020491091534495,-0.087284676730633,0.006532604340464,0.059884358197451,-0.026419371366501,-0.089408665895462,0.006236020009965,0.105448633432388));
res += mul(Get(s3,0,dy), float4x4(-0.141823858022690,-0.086219079792500,-0.064572609961033,0.003634895430878,-0.056158255785704,0.004411128349602,-0.076862610876560,0.018125938251615,0.092719808220863,-0.064671970903873,-0.216573446989059,0.115719117224216,0.015523904934525,0.160035893321037,0.020215803757310,0.137808650732040));
res += mul(Get(s3,dx,-dy), float4x4(0.080731041729450,0.082141406834126,0.132761165499687,0.036884766072035,0.122843086719513,0.005561548285186,-0.207612484693527,-0.047329366207123,-0.004865198396146,0.039879549294710,0.021690804511309,0.205146372318268,-0.123930133879185,0.076059617102146,0.099516652524471,-0.164043173193932));
res += mul(Get(s3,dx,0), float4x4(0.240446850657463,-0.005969618912786,0.201642438769341,-0.098507404327393,0.064677506685257,-0.081276461482048,-0.065206214785576,0.006629017647356,-0.158223301172256,0.049746770411730,0.113279469311237,0.072154000401497,-0.068251535296440,-0.040784399956465,-0.141111984848976,0.026171855628490));
res += mul(Get(s3,dx,dy), float4x4(0.004150614142418,-0.020622679963708,-0.125404521822929,0.166233927011490,0.122890554368496,0.123551629483700,0.176484867930412,-0.037718303501606,-0.093374043703079,0.094751417636871,0.057943530380726,-0.005791498348117,0.076373301446438,-0.364270627498627,0.086314558982849,-0.082022935152054));
return max(float4(0,0,0,0), res);
}