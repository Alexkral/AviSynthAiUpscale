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
res += mul(Get(s0,-dx,-dy), float4x4(0.013456165790558,0.012120685540140,-0.063413232564926,-0.198190048336983,0.102662451565266,-0.077918425202370,-0.241414353251457,0.027403892949224,-0.091172106564045,0.013446290045977,-0.165873587131500,-0.052917178720236,-0.148018613457680,0.060923147946596,0.092888996005058,0.003559313016012));
res += mul(Get(s0,-dx,0), float4x4(0.011801316402853,0.067876122891903,-0.063481576740742,-0.023548275232315,0.192138135433197,0.154567152261734,-0.127659454941750,0.069625318050385,0.079119153320789,0.073731757700443,-0.056128535419703,0.152372002601624,0.174519777297974,0.142431691288948,-0.097618483006954,-0.201839491724968));
res += mul(Get(s0,-dx,dy), float4x4(-0.025884268805385,0.102618627250195,0.000113780959509,0.146816819906235,0.191579252481461,0.020849812775850,0.107440039515495,0.143317103385925,-0.178471744060516,-0.125247612595558,-0.019159300252795,0.050927549600601,0.105177961289883,0.098731949925423,-0.043319407850504,0.036375012248755));
res += mul(Get(s0,0,-dy), float4x4(-0.097880743443966,0.029527083039284,-0.013780018314719,-0.009806449525058,0.099056690931320,-0.062674254179001,0.069032579660416,-0.141461700201035,-0.226316601037979,-0.033614035695791,-0.038590501993895,0.132951542735100,-0.133737027645111,0.112052716314793,-0.061254512518644,-0.063816495239735));
res += mul(Get(s0,0,0), float4x4(-0.004828188102692,0.151234284043312,-0.085682518780231,-0.138457044959068,0.165631890296936,-0.046643890440464,0.062089536339045,-0.123905763030052,-0.042504929006100,-0.196249082684517,-0.075157761573792,0.003575264709070,0.162994787096977,-0.036798126995564,0.176936015486717,-0.075023338198662));
res += mul(Get(s0,0,dy), float4x4(-0.001623937394470,0.105000197887421,0.024381455034018,0.017170742154121,0.212107062339783,-0.080193579196930,0.019563995301723,0.000627692788839,-0.095565110445023,-0.017476191744208,-0.129061460494995,-0.191607430577278,0.040251515805721,0.058045133948326,0.033509880304337,0.002182095544413));
res += mul(Get(s0,dx,-dy), float4x4(0.010974510572851,0.049943294376135,-0.009001095779240,0.164667710661888,0.298382610082626,-0.170409724116325,-0.014050041325390,-0.051681611686945,-0.092117093503475,0.004595871083438,0.027239484712481,-0.021873679012060,-0.086943328380585,0.012867056764662,0.043190885335207,0.017945695668459));
res += mul(Get(s0,dx,0), float4x4(0.195621415972710,-0.098512485623360,-0.005269336048514,-0.136719226837158,-0.023547576740384,-0.119543656706810,0.125277429819107,0.013589285314083,-0.047594279050827,0.050815675407648,0.085378654301167,-0.013582900166512,-0.011384081095457,-0.100897409021854,0.053640954196453,0.027047123759985));
res += mul(Get(s0,dx,dy), float4x4(-0.098356984555721,0.048682864755392,0.027492895722389,0.025463862344623,0.084858350455761,-0.100518122315407,-0.075843587517738,0.024096908047795,0.087458528578281,-0.031047776341438,0.039698541164398,0.175735935568810,-0.021948765963316,0.184789806604385,-0.098403438925743,0.008934943005443));
res += mul(Get(s1,-dx,-dy), float4x4(0.057874813675880,-0.096751570701599,-0.122347339987755,-0.158897563815117,-0.022174529731274,0.097758620977402,0.023427871987224,-0.024971514940262,0.016572328284383,0.112082883715630,-0.156081780791283,-0.080935835838318,0.048200294375420,0.034365586936474,-0.005287524778396,0.012901049107313));
res += mul(Get(s1,-dx,0), float4x4(0.069049380719662,0.024964984506369,-0.144083619117737,-0.023805797100067,0.068015590310097,0.129042923450470,-0.168967664241791,-0.027510840445757,-0.100016750395298,0.180271029472351,-0.034578651189804,-0.081472851336002,0.076364003121853,-0.071132846176624,0.111879490315914,-0.112638726830482));
res += mul(Get(s1,-dx,dy), float4x4(0.024291941896081,0.189742952585220,-0.003773903241381,-0.095270574092865,-0.042922358959913,0.092301167547703,0.023363724350929,0.006262522190809,-0.146905556321144,-0.001111703459173,-0.184561446309090,-0.162007540464401,0.120903789997101,0.067173711955547,-0.073303714394569,-0.104571163654327));
res += mul(Get(s1,0,-dy), float4x4(-0.027863357216120,-0.011652546934783,-0.068297550082207,0.090691782534122,0.030308201909065,0.055506005883217,0.136793002486229,-0.053824368864298,-0.018158135935664,0.200230240821838,0.001711082179099,-0.078767687082291,0.031878851354122,-0.011622208170593,0.094440698623657,-0.066808283329010));
res += mul(Get(s1,0,0), float4x4(0.109232209622860,-0.050488989800215,0.043545190244913,0.050467792898417,-0.128864601254463,-0.120301529765129,-0.093001760542393,0.013982212170959,-0.076498717069626,-0.046465408056974,0.104108326137066,0.056543592363596,0.111279085278511,-0.124615892767906,0.110711805522442,0.149363711476326));
res += mul(Get(s1,0,dy), float4x4(0.188092857599258,0.143841877579689,0.034540545195341,-0.014285417273641,-0.071897402405739,0.097107142210007,-0.033050004392862,0.120766393840313,-0.164403676986694,0.081273086369038,-0.163069054484367,0.042689125984907,-0.074178457260132,0.052775207906961,-0.104022741317749,0.189432591199875));
res += mul(Get(s1,dx,-dy), float4x4(0.007726039737463,0.076654583215714,0.019226487725973,0.034807894378901,0.114513367414474,0.036441788077354,-0.023840622976422,0.025094326585531,-0.084691092371941,-0.033533088862896,0.212107822299004,-0.177632838487625,-0.018050797283649,0.088716208934784,0.011496997438371,-0.047358177602291));
res += mul(Get(s1,dx,0), float4x4(-0.106096602976322,-0.125792518258095,0.067343458533287,0.005919458344579,-0.070570737123489,-0.068983249366283,-0.063193336129189,-0.053547929972410,-0.024788482114673,-0.082103520631790,-0.042924843728542,0.095290638506413,0.134385451674461,0.004872095771134,0.057256896048784,0.111670635640621));
res += mul(Get(s1,dx,dy), float4x4(0.028541194275022,0.117727741599083,-0.095994397997856,-0.093467593193054,0.030300151556730,-0.005167814437300,0.015511204488575,0.110618069767952,-0.093802206218243,0.009817773476243,0.048538785427809,0.155834451317787,-0.024158051237464,-0.089718528091908,-0.016850749030709,-0.135953217744827));
res += mul(Get(s2,-dx,-dy), float4x4(-0.152204260230064,-0.009270616807044,-0.227433219552040,0.029618000611663,-0.140376955270767,0.013222349807620,0.103345148265362,-0.144281417131424,-0.167459726333618,-0.011246646754444,-0.253214567899704,-0.046404048800468,0.069611258804798,0.110339790582657,0.108963377773762,0.055926024913788));
res += mul(Get(s2,-dx,0), float4x4(0.026678284630179,0.101065851747990,0.073618680238724,-0.032695300877094,0.107355639338493,0.128538116812706,-0.177190020680428,-0.068234175443649,0.110146731138229,0.107123032212257,0.206160023808479,-0.100781276822090,0.002391917398199,0.031104363501072,0.025061223655939,-0.011167419143021));
res += mul(Get(s2,-dx,dy), float4x4(-0.034387100487947,-0.028656447306275,0.101713530719280,-0.129282593727112,-0.001963535323739,0.111168026924133,0.199076890945435,0.082502081990242,-0.055993866175413,0.032846432179213,-0.193997502326965,-0.052996989339590,-0.103562608361244,-0.170008942484856,0.127675443887711,-0.202086269855499));
res += mul(Get(s2,0,-dy), float4x4(-0.127847298979759,0.164273455739021,0.121146403253078,-0.134589642286301,-0.004400569014251,0.079599164426327,0.172572195529938,-0.101847924292088,0.128010064363480,0.180534020066261,-0.043258093297482,0.061166293919086,0.132123082876205,0.013914810493588,0.158846616744995,-0.143571138381958));
res += mul(Get(s2,0,0), float4x4(0.093948110938072,0.257392227649689,-0.074009381234646,0.014996401965618,0.059117235243320,-0.016073150560260,0.056807570159435,0.129203796386719,0.051024068146944,-0.183112695813179,0.040278922766447,0.122327387332916,0.021065624430776,0.064783222973347,0.101636447012424,-0.063348390161991));
res += mul(Get(s2,0,dy), float4x4(0.052553940564394,0.248429417610168,0.103274963796139,0.054609622806311,-0.186783820390701,0.056303948163986,-0.035609435290098,0.016627321019769,-0.024998467415571,-0.015261909924448,-0.062968462705612,-0.248416393995285,-0.164106354117393,0.099053144454956,0.053459364920855,-0.066093273460865));
res += mul(Get(s2,dx,-dy), float4x4(-0.128216654062271,0.073022879660130,-0.106684811413288,0.007417577318847,-0.113129980862141,-0.209942147135735,-0.101585105061531,-0.023939920589328,0.079139828681946,0.021566962823272,0.088483236730099,-0.022877678275108,0.121696867048740,-0.031558774411678,0.035994138568640,-0.047777589410543));
res += mul(Get(s2,dx,0), float4x4(0.057473525404930,-0.000533548998646,-0.096178829669952,-0.119818843901157,-0.081256553530693,-0.075571224093437,-0.185151562094688,-0.120854258537292,-0.143292412161827,-0.056757211685181,0.156593531370163,0.076630324125290,-0.072165988385677,0.167334645986557,-0.021171206608415,-0.264189064502716));
res += mul(Get(s2,dx,dy), float4x4(0.060605622828007,-0.023139283061028,-0.028701571747661,0.049299299716949,0.116772577166557,-0.031053738668561,-0.014542883262038,0.164856374263763,0.030509179458022,-0.004801209084690,0.085399143397808,0.013126120902598,0.060118567198515,0.093921817839146,-0.027722442522645,-0.026439711451530));
res += mul(Get(s3,-dx,-dy), float4x4(0.245204806327820,0.075709678232670,0.127098530530930,-0.190400272607803,0.015285761095583,-0.122677750885487,0.104573130607605,0.015803214162588,-0.023970335721970,-0.167602270841599,-0.020757509395480,-0.183507487177849,0.050406571477652,-0.015025888569653,-0.159309640526772,-0.076445505023003));
res += mul(Get(s3,-dx,0), float4x4(0.056554090231657,0.018985860049725,-0.075822927057743,0.192254692316055,-0.093729346990585,-0.101940840482712,-0.095507994294167,-0.203398585319519,0.042130179703236,0.012799023650587,0.091974183917046,0.107877023518085,-0.205987066030502,0.098858810961246,-0.147853836417198,0.090842716395855));
res += mul(Get(s3,-dx,dy), float4x4(-0.045031346380711,-0.123413361608982,-0.117114953696728,0.081024073064327,0.026588635519147,-0.119220420718193,0.026999652385712,0.198130667209625,-0.009677589870989,-0.092352576553822,-0.265322178602219,-0.021969977766275,-0.109111197292805,0.001369668287225,-0.052047230303288,0.088939122855663));
res += mul(Get(s3,0,-dy), float4x4(0.035350032150745,0.058232240378857,-0.089251533150673,-0.012338244356215,-0.043310031294823,0.081071875989437,-0.231427535414696,0.060999248176813,0.018357917666435,-0.033085536211729,0.103661932051182,0.075850322842598,-0.012809411622584,0.136169373989105,0.222230419516563,0.070409685373306));
res += mul(Get(s3,0,0), float4x4(-0.177436679601669,-0.138776704668999,-0.074138849973679,0.159082517027855,0.043148953467607,0.348348587751389,-0.105532519519329,0.006586177740246,-0.019903393462300,-0.162666246294975,0.038182720541954,0.015427308157086,0.020053930580616,0.061677146703005,0.073246926069260,-0.085891708731651));
res += mul(Get(s3,0,dy), float4x4(-0.075011469423771,0.069942064583302,-0.107687063515186,-0.038388963788748,-0.024187071248889,-0.016237501055002,0.167233809828758,0.050241760909557,-0.204922035336494,-0.169497162103653,0.076954945921898,-0.040601685643196,0.021696368232369,-0.168250560760498,-0.068460382521152,-0.062028702348471));
res += mul(Get(s3,dx,-dy), float4x4(0.259364426136017,0.001889016013592,-0.157980620861053,0.042843759059906,-0.073216490447521,0.069042310118675,-0.196608141064644,0.016395587474108,-0.002755604218692,-0.051018398255110,0.041706949472427,0.132753401994705,0.050306644290686,0.078093543648720,-0.025904737412930,-0.012787329964340));
res += mul(Get(s3,dx,0), float4x4(-0.037110626697540,-0.026082314550877,0.182985439896584,-0.049792729318142,0.176156342029572,0.152805209159851,-0.008545419201255,0.165422752499580,0.041487324982882,-0.136346012353897,0.065873555839062,-0.123232260346413,-0.047795124351978,-0.024656496942043,0.074286863207817,-0.008790032006800));
res += mul(Get(s3,dx,dy), float4x4(-0.010874298401177,-0.005312558729202,0.036068383604288,-0.116284787654877,-0.157541215419769,0.076054081320763,0.211103826761246,0.033385381102562,-0.067109607160091,-0.112435817718506,0.003156807506457,-0.047698516398668,-0.163974046707153,-0.206699177622795,0.128116235136986,-0.011920656077564));
return max(float4(0,0,0,0), res);
}