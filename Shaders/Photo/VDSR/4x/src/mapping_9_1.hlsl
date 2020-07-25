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
res += mul(Get(s0,-dx,-dy), float4x4(-0.146703854203224,0.058903664350510,-0.024466786533594,0.014155804179609,0.102303192019463,-0.075655497610569,-0.099675208330154,-0.056892484426498,-0.097560666501522,-0.060544226318598,0.175376012921333,0.184003815054893,-0.126112833619118,-0.160832494497299,-0.038734532892704,-0.106080755591393));
res += mul(Get(s0,-dx,0), float4x4(0.127555429935455,0.078633829951286,0.011468838900328,-0.123877681791782,-0.148195534944534,-0.062913857400417,0.028560495004058,0.280419260263443,-0.055692203342915,0.215370982885361,0.235765233635902,0.108747698366642,0.008734301663935,0.094039350748062,0.063929982483387,0.013963482342660));
res += mul(Get(s0,-dx,dy), float4x4(0.033556859940290,0.093992166221142,-0.156551197171211,-0.173948302865028,0.195970356464386,0.013550112955272,-0.035386953502893,-0.108643315732479,-0.033609550446272,-0.071426518261433,-0.021160235628486,0.034048549830914,-0.003079133341089,-0.000203344068723,-0.066369391977787,-0.029765577986836));
res += mul(Get(s0,0,-dy), float4x4(-0.047436203807592,-0.100005678832531,-0.065477654337883,-0.048252124339342,0.042117372155190,-0.150436326861382,0.037967983633280,-0.250625938177109,-0.128769069910049,0.002133829286322,0.145908668637276,0.012685676105320,-0.127783313393593,-0.014169821515679,-0.079403974115849,-0.095999643206596));
res += mul(Get(s0,0,0), float4x4(0.107734732329845,0.068160727620125,-0.044974371790886,-0.021538779139519,0.017184400931001,-0.050335086882114,-0.200932681560516,0.021682210266590,-0.207705721259117,0.116093926131725,0.002314699348062,-0.010518336668611,-0.188169986009598,0.106605917215347,-0.064677737653255,0.078135266900063));
res += mul(Get(s0,0,dy), float4x4(-0.106749765574932,0.068737834692001,-0.167342856526375,-0.016033660620451,0.107521653175354,-0.101357169449329,0.081231221556664,0.001400924054906,0.029967168346047,-0.090261466801167,0.073088362812996,0.223168686032295,-0.039572719484568,0.071330450475216,0.020948857069016,-0.044936936348677));
res += mul(Get(s0,dx,-dy), float4x4(-0.094474576413631,0.145327940583229,0.193202704191208,-0.102942682802677,-0.163244843482971,0.021857921034098,-0.165679782629013,-0.071058779954910,-0.233764410018921,-0.182809159159660,-0.009258531965315,-0.025764200836420,0.252189457416534,-0.028675105422735,-0.005925259552896,-0.053979739546776));
res += mul(Get(s0,dx,0), float4x4(0.221540719270706,0.074682638049126,-0.203770011663437,0.018320405855775,-0.019787747412920,0.063284642994404,0.155480131506920,-0.113408192992210,0.036833699792624,-0.153025433421135,0.063738904893398,0.055757831782103,-0.043150652199984,0.129573270678520,-0.024019777774811,0.151308715343475));
res += mul(Get(s0,dx,dy), float4x4(0.075420565903187,0.096463620662689,0.037647780030966,0.067922182381153,0.157209634780884,-0.201550140976906,-0.244890555739403,0.153524130582809,-0.121049046516418,-0.072183333337307,-0.122444897890091,0.027919990941882,0.102651104331017,0.034583095461130,0.250036269426346,-0.060673270374537));
res += mul(Get(s1,-dx,-dy), float4x4(0.137865930795670,0.031948000192642,0.106093145906925,-0.010223749093711,0.044433560222387,0.227224707603455,0.140818238258362,0.072032086551189,-0.193277537822723,0.074732929468155,-0.190293148159981,-0.196598395705223,0.077128760516644,-0.002138583222404,-0.005963275209069,0.011688302271068));
res += mul(Get(s1,-dx,0), float4x4(0.066234081983566,-0.067600443959236,-0.129843086004257,0.066460832953453,-0.064148530364037,0.022558528929949,-0.015362871810794,0.082736447453499,-0.014895713888109,0.010001163929701,-0.019297976046801,0.072310537099838,-0.266063183546066,-0.128632500767708,-0.053795449435711,0.070257328450680));
res += mul(Get(s1,-dx,dy), float4x4(-0.154506593942642,-0.199808180332184,-0.116497419774532,-0.047379255294800,-0.101524882018566,-0.162109822034836,-0.316802769899368,-0.096183255314827,0.059863571077585,0.022122645750642,0.007759979926050,-0.119874060153961,0.102511078119278,-0.062642835080624,-0.053081654012203,0.117331944406033));
res += mul(Get(s1,0,-dy), float4x4(-0.090905241668224,-0.065084740519524,0.089260838925838,-0.095159560441971,0.158015012741089,-0.074403472244740,0.216998472809792,-0.001811778172851,0.071694500744343,-0.019598264247179,0.028092162683606,-0.002753700129688,0.011598106473684,0.041347548365593,0.087898440659046,-0.018893934786320));
res += mul(Get(s1,0,0), float4x4(0.126044005155563,-0.012895301915705,-0.152685761451721,-0.044443901628256,0.013013630174100,0.003199456259608,-0.108554847538471,-0.101497054100037,0.176201954483986,0.021391509100795,-0.100970461964607,-0.109933115541935,-0.058492008596659,0.035390835255384,0.039256040006876,-0.144832149147987));
res += mul(Get(s1,0,dy), float4x4(-0.032642204314470,0.090315639972687,-0.012099525891244,0.028174426406622,-0.093125611543655,0.029380779713392,-0.015750689432025,0.104026257991791,0.000390431465348,0.074024721980095,-0.043082438409328,-0.106902882456779,0.182492628693581,-0.194244623184204,0.093168176710606,0.143780007958412));
res += mul(Get(s1,dx,-dy), float4x4(0.188576161861420,-0.080490827560425,0.116577364504337,0.094482280313969,-0.056074418127537,-0.065049886703491,-0.077741026878357,-0.036721941083670,0.015941752120852,-0.083298914134502,0.100823156535625,0.057943340390921,0.266749262809753,-0.033108051866293,0.146874099969864,-0.067633077502251));
res += mul(Get(s1,dx,0), float4x4(-0.081837259232998,0.071251064538956,-0.197841823101044,0.028028929606080,-0.117523536086082,0.057955078780651,0.061429444700480,0.061153233051300,-0.088546209037304,0.260978996753693,-0.088116429746151,-0.055111233144999,-0.029087157920003,-0.068481557071209,-0.080201350152493,-0.026706174015999));
res += mul(Get(s1,dx,dy), float4x4(-0.004685258958489,-0.062411375343800,0.013145709410310,-0.016331311315298,-0.038983829319477,0.099552266299725,0.057667098939419,0.020693482831120,-0.130813136696815,0.091842465102673,-0.128855019807816,-0.159540727734566,-0.029329920187593,0.099284842610359,0.032987512648106,0.174789682030678));
res += mul(Get(s2,-dx,-dy), float4x4(-0.081974975764751,0.055757381021976,-0.158028289675713,0.001995019847527,-0.075614467263222,-0.022739803418517,-0.129572719335556,0.019100997596979,0.000890606956091,0.079329073429108,-0.102574266493320,-0.128462716937065,-0.109871193766594,0.118504703044891,0.126313850283623,0.081260979175568));
res += mul(Get(s2,-dx,0), float4x4(-0.247200161218643,0.087113685905933,0.157747507095337,-0.021312937140465,-0.146752074360847,-0.058028910309076,-0.142793923616409,-0.055130433291197,-0.082735769450665,0.176653087139130,-0.107720673084259,0.070703476667404,-0.020033432170749,-0.089854933321476,-0.072336308658123,-0.146196812391281));
res += mul(Get(s2,-dx,dy), float4x4(0.005785776302218,-0.043358307331800,-0.024253616109490,-0.121342860162258,0.148592785000801,-0.178996592760086,0.160320416092873,-0.058952890336514,0.089317232370377,-0.060481250286102,0.118466064333916,-0.049725905060768,0.098934002220631,-0.045407891273499,-0.038927122950554,-0.024001577869058));
res += mul(Get(s2,0,-dy), float4x4(0.136667802929878,-0.087898209691048,-0.125728249549866,-0.060299657285213,-0.021770823746920,0.020458914339542,0.040240395814180,-0.097929082810879,0.122710958123207,-0.144042581319809,-0.013867342844605,-0.066629655659199,0.086803659796715,-0.185285538434982,-0.011239130981266,0.063457757234573));
res += mul(Get(s2,0,0), float4x4(-0.051031190901995,0.078455522656441,0.127838969230652,0.073466330766678,0.150795340538025,-0.084433622658253,0.307624906301498,0.047361988574266,0.209058076143265,0.144322946667671,-0.137325629591942,0.149067506194115,0.142023250460625,-0.136576980352402,0.153792962431908,0.012511940672994));
res += mul(Get(s2,0,dy), float4x4(0.153606563806534,0.238102227449417,0.038534391671419,0.013322907499969,-0.114141516387463,-0.164211764931679,-0.088218644261360,-0.043073579668999,0.014076423831284,-0.068532109260559,0.093010373413563,0.172986775636673,-0.084160834550858,0.144294276833534,0.252671211957932,-0.035454705357552));
res += mul(Get(s2,dx,-dy), float4x4(0.041935089975595,-0.034360345453024,0.024955790489912,0.084755569696426,-0.127473130822182,-0.256617486476898,-0.111017167568207,-0.118055231869221,-0.096800021827221,0.034956656396389,-0.112208306789398,-0.182933300733566,0.068227715790272,0.042333785444498,0.048912640661001,-0.097915269434452));
res += mul(Get(s2,dx,0), float4x4(-0.106222830712795,0.106417328119278,0.045544989407063,0.127216085791588,0.033872589468956,0.071121156215668,0.046218741685152,0.055821269750595,0.157360285520554,-0.030954042449594,0.040552578866482,-0.017022442072630,0.034489467740059,0.150741904973984,0.021790679544210,0.067765004932880));
res += mul(Get(s2,dx,dy), float4x4(0.057133320719004,-0.073862820863724,0.052918769419193,0.176620364189148,-0.151039645075798,-0.002554659731686,0.043536812067032,0.067308366298676,-0.037153460085392,-0.116792298853397,-0.046174507588148,0.166604995727539,0.149297669529915,-0.116346813738346,0.130323126912117,-0.042453885078430));
res += mul(Get(s3,-dx,-dy), float4x4(-0.005988636519760,0.043811377137899,-0.060771465301514,-0.053924914449453,-0.052359543740749,-0.057939499616623,0.143819227814674,0.083443693816662,-0.069344729185104,0.182232692837715,0.082108937203884,-0.080800943076611,-0.166232943534851,-0.008361762389541,-0.052360013127327,-0.017333529889584));
res += mul(Get(s3,-dx,0), float4x4(-0.251408249139786,0.143235191702843,-0.091853089630604,0.006166080012918,-0.116134494543076,-0.132558524608612,0.046026565134525,-0.023511318489909,-0.030672337859869,0.103729501366615,-0.086711339652538,-0.089780926704407,-0.135500431060791,0.146223917603493,-0.051106266677380,-0.153065666556358));
res += mul(Get(s3,-dx,dy), float4x4(-0.264041841030121,-0.090306326746941,-0.058973811566830,-0.014781026169658,-0.080631062388420,-0.102553330361843,0.116286113858223,-0.197849750518799,0.036555897444487,0.147043868899345,-0.060712203383446,-0.133124515414238,0.091814503073692,-0.083757162094116,-0.073453739285469,0.030893705785275));
res += mul(Get(s3,0,-dy), float4x4(0.047745086252689,-0.056108806282282,-0.100323602557182,0.095045201480389,-0.158659338951111,0.050086732953787,-0.121965393424034,-0.233645558357239,0.183865278959274,0.296335756778717,0.167126014828682,0.148309618234634,-0.045695614069700,-0.119782298803329,0.015261434018612,-0.001054747961462));
res += mul(Get(s3,0,0), float4x4(-0.001561402459629,0.076757110655308,-0.080254897475243,-0.023185599595308,-0.180826067924500,-0.224109679460526,0.155694767832756,-0.135557070374489,-0.077693238854408,-0.026771007105708,-0.056466318666935,-0.120171487331390,-0.218123286962509,0.104059033095837,-0.024592563509941,0.167705252766609));
res += mul(Get(s3,0,dy), float4x4(0.104381345212460,-0.072112627327442,-0.065401263535023,-0.058884691447020,0.049779072403908,-0.030074838548899,-0.045121509581804,0.120456956326962,-0.049109008163214,-0.035121373832226,0.102759957313538,0.048251654952765,-0.113217517733574,-0.081355616450310,0.099535614252090,0.084464929997921));
res += mul(Get(s3,dx,-dy), float4x4(-0.076402664184570,-0.119101554155350,-0.000095557967143,-0.052370376884937,-0.076333709061146,-0.078627780079842,-0.133584246039391,-0.078659795224667,0.003700106637552,-0.210141837596893,0.074876584112644,0.050829496234655,0.091862179338932,0.036791078746319,-0.008916381746531,-0.141445264220238));
res += mul(Get(s3,dx,0), float4x4(-0.106272153556347,0.010669887997210,0.100744277238846,-0.168127357959747,0.106926381587982,0.115679726004601,0.024996437132359,0.017922218888998,0.130901113152504,0.042323030531406,-0.210059940814972,-0.002920094178990,-0.189884826540947,-0.134523868560791,0.054409101605415,-0.135221377015114));
res += mul(Get(s3,dx,dy), float4x4(0.124305292963982,-0.106013007462025,-0.215973705053329,0.005527368746698,-0.076512575149536,0.093755386769772,-0.031998194754124,0.026297852396965,-0.106506071984768,-0.061688110232353,0.151340067386627,0.074460223317146,0.095169506967068,-0.042811684310436,-0.093911871314049,-0.007832046598196));
return max(float4(0,0,0,0), res);
}
