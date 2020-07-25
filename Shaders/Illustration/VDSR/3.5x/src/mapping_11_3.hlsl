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
res += mul(Get(s0,-dx,-dy), float4x4(0.112915530800819,0.108757540583611,-0.097215376794338,-0.169637098908424,0.127530559897423,0.023323783650994,-0.069748580455780,-0.069619111716747,0.236024439334869,0.318675547838211,-0.070822887122631,0.055588781833649,0.005582984071225,-0.035474970936775,-0.074718542397022,0.023337127640843));
res += mul(Get(s0,-dx,0), float4x4(0.085076712071896,-0.100291937589645,0.073061108589172,0.071906976401806,0.066793195903301,0.040812045335770,-0.169959694147110,-0.039244007319212,0.006616176106036,0.192117184400558,-0.122938692569733,0.137608751654625,-0.010698952712119,0.040528826415539,0.199968993663788,-0.035199262201786));
res += mul(Get(s0,-dx,dy), float4x4(0.084341883659363,0.103096932172775,0.189648389816284,-0.044475410133600,-0.127473160624504,0.223644256591797,0.036834452301264,-0.086087189614773,0.006497240159661,0.270974069833755,-0.167779490351677,-0.042928010225296,-0.033649753779173,0.013843567110598,-0.063892789185047,-0.350431442260742));
res += mul(Get(s0,0,-dy), float4x4(-0.179587855935097,-0.021526541560888,0.009086410515010,-0.130449935793877,-0.034533422440290,-0.070994466543198,-0.013177679851651,0.074147537350655,-0.039317350834608,0.096901744604111,-0.077391564846039,0.237473309040070,0.134835138916969,0.034254785627127,0.085358515381813,0.037022445350885));
res += mul(Get(s0,0,0), float4x4(0.096591487526894,0.123252727091312,0.142105802893639,0.039586801081896,0.237528160214424,0.009911470115185,-0.087277069687843,-0.145215600728989,0.030468815937638,0.171397656202316,0.017507117241621,-0.076731175184250,0.105049394071102,-0.231213226914406,0.038436200469732,-0.021871000528336));
res += mul(Get(s0,0,dy), float4x4(0.028767362236977,0.077264755964279,0.077353775501251,0.117725588381290,0.031240273267031,-0.167005091905594,-0.076027780771255,-0.015984617173672,-0.103952951729298,0.210124328732491,-0.056254167109728,0.216421350836754,0.073580048978329,0.192255958914757,-0.017408071085811,0.067633830010891));
res += mul(Get(s0,dx,-dy), float4x4(0.006310255266726,0.017006125301123,0.041172314435244,-0.163983657956123,0.140568941831589,0.011383006349206,-0.106138356029987,0.071747101843357,-0.022563658654690,0.115013703703880,-0.046482145786285,0.071711346507072,0.195870801806450,0.065137945115566,0.082744158804417,0.025689123198390));
res += mul(Get(s0,dx,0), float4x4(-0.094847373664379,-0.004191132262349,0.092703282833099,0.043747469782829,-0.012601136229932,-0.080367937684059,-0.032245382666588,-0.223793506622314,-0.303860157728195,-0.109733074903488,0.026106428354979,0.235567748546600,0.087804660201073,-0.057165075093508,-0.066717669367790,0.129716649651527));
res += mul(Get(s0,dx,dy), float4x4(-0.105772554874420,0.116391919553280,0.014377735555172,-0.112627252936363,0.167277842760086,-0.072749964892864,0.004066969268024,0.057104978710413,-0.090831696987152,0.173635333776474,-0.169771462678909,0.171737641096115,-0.012967613525689,-0.085549995303154,-0.002071417169645,-0.175093650817871));
res += mul(Get(s1,-dx,-dy), float4x4(-0.016259793192148,0.074833810329437,-0.052870973944664,0.060201242566109,-0.127651840448380,-0.296735614538193,0.013560579158366,0.111126162111759,-0.005764149129391,0.209537401795387,0.048268381506205,0.025483930483460,0.068969234824181,0.036622092127800,-0.249469384551048,0.050861969590187));
res += mul(Get(s1,-dx,0), float4x4(0.037602555006742,-0.118800863623619,-0.118098102509975,0.065885603427887,-0.110618233680725,-0.128352120518684,0.220302417874336,0.112336792051792,-0.100520819425583,-0.025860436260700,0.089764036238194,-0.020023310557008,-0.054335188120604,0.162920713424683,-0.082185104489326,-0.089900106191635));
res += mul(Get(s1,-dx,dy), float4x4(0.024105396121740,0.080629818141460,-0.048517405986786,0.199933916330338,0.079583734273911,-0.099565535783768,0.160772860050201,0.049253717064857,0.061239965260029,-0.087057024240494,-0.068447746336460,-0.036617916077375,0.254178822040558,-0.050093747675419,0.091021604835987,-0.084980562329292));
res += mul(Get(s1,0,-dy), float4x4(-0.176025554537773,-0.290487676858902,-0.014702348969877,-0.005017254035920,0.025258809328079,-0.163358494639397,-0.172246485948563,0.140760302543640,-0.178395509719849,0.131589502096176,0.086569584906101,0.132308274507523,0.060674805194139,0.101549267768860,-0.101249642670155,-0.101638451218605));
res += mul(Get(s1,0,0), float4x4(-0.140640124678612,-0.193824008107185,-0.121735244989395,0.222525447607040,0.062099628150463,0.082120306789875,0.091803409159184,0.026383738964796,-0.197335794568062,0.038676522672176,-0.024054357782006,-0.044896993786097,0.043416824191809,0.151476114988327,-0.061446506530046,0.032079622149467));
res += mul(Get(s1,0,dy), float4x4(-0.125489905476570,0.041721411049366,0.050940953195095,-0.127008035778999,0.024091234430671,0.002022248925641,-0.071813344955444,0.161914154887199,-0.053913637995720,-0.142148241400719,0.075200378894806,-0.111286588013172,-0.039030764251947,-0.090111620724201,-0.194785028696060,-0.053616125136614));
res += mul(Get(s1,dx,-dy), float4x4(-0.253902971744537,0.115081109106541,0.120206184685230,-0.075566001236439,-0.094416685402393,-0.041207760572433,0.006171920336783,0.091419011354446,-0.048735465854406,0.218869537115097,-0.009631553664804,0.142417386174202,-0.013331752270460,0.065073154866695,0.012584243901074,-0.160025238990784));
res += mul(Get(s1,dx,0), float4x4(-0.126612767577171,-0.198412388563156,-0.084398239850998,0.076583087444305,0.038109738379717,-0.180771008133888,-0.141949042677879,0.025575008243322,0.130101218819618,0.014344729483128,0.176361173391342,0.015242990106344,0.003990672063082,-0.015935909003019,-0.066194541752338,-0.120035715401173));
res += mul(Get(s1,dx,dy), float4x4(0.324018865823746,0.075171768665314,0.014410823583603,-0.112180665135384,0.167521744966507,0.210003986954689,-0.124636001884937,0.271230041980743,-0.128109768033028,-0.235927388072014,-0.090416543185711,0.148488640785217,0.024649944156408,0.164542496204376,0.027513030916452,-0.101305745542049));
res += mul(Get(s2,-dx,-dy), float4x4(0.009559170342982,-0.211885407567024,0.053787466138601,0.254479646682739,0.093629337847233,-0.119289018213749,0.077403329312801,-0.050867039710283,0.197791486978531,0.093326054513454,0.039328400045633,0.058676399290562,0.001114443060942,0.167028978466988,0.039634864777327,0.057219639420509));
res += mul(Get(s2,-dx,0), float4x4(0.024964993819594,-0.069972999393940,-0.070108704268932,-0.002349337795749,0.120204418897629,-0.000220752990572,0.190992355346680,-0.051276821643114,-0.043186165392399,0.016524819657207,-0.096860826015472,0.316138476133347,-0.081438958644867,-0.194108277559280,-0.048077188432217,-0.080469854176044));
res += mul(Get(s2,-dx,dy), float4x4(0.080944031476974,0.035425242036581,-0.099504679441452,0.031412698328495,0.160819888114929,-0.143891379237175,0.050804104655981,0.067512392997742,0.126627460122108,-0.013382804580033,-0.179861590266228,-0.173318013548851,0.211673438549042,0.022058326750994,0.040016289800406,-0.094159267842770));
res += mul(Get(s2,0,-dy), float4x4(0.179612457752228,0.032648626714945,0.047240629792213,-0.129947111010551,-0.045992519706488,-0.166095420718193,-0.040694829076529,-0.164593458175659,-0.070667609572411,-0.020023921504617,-0.142496317625046,-0.094954796135426,0.109561264514923,-0.041211627423763,-0.080985352396965,-0.054468829184771));
res += mul(Get(s2,0,0), float4x4(-0.050751421600580,-0.069538556039333,0.014711841009557,-0.025899801403284,-0.021217448636889,0.095859155058861,0.065664410591125,-0.114255197346210,-0.000869572162628,0.038682326674461,-0.254006892442703,0.008855059742928,0.040101438760757,-0.062378518283367,-0.129489392042160,0.044757533818483));
res += mul(Get(s2,0,dy), float4x4(0.017286216840148,0.084041602909565,0.069275431334972,-0.088993273675442,0.003452026518062,0.042851302772760,-0.051192127168179,0.135582432150841,-0.113946735858917,-0.030077207833529,-0.170852348208427,-0.111183725297451,-0.114883407950401,0.042703300714493,0.102980613708496,-0.105788409709930));
res += mul(Get(s2,dx,-dy), float4x4(0.006283009424806,0.033515091985464,0.041880190372467,-0.024859882891178,0.033593494445086,0.000148719773279,-0.089552335441113,-0.034103583544493,-0.119461812078953,-0.018871216103435,0.133910536766052,0.011258788406849,0.057058919221163,-0.086379997432232,-0.145272523164749,-0.064547926187515));
res += mul(Get(s2,dx,0), float4x4(0.055820100009441,0.095950469374657,0.025612562894821,-0.146079003810883,-0.039868246763945,0.136876747012138,-0.065560869872570,-0.042022511363029,0.066274493932724,0.089938282966614,-0.100580394268036,-0.063733324408531,-0.154501676559448,0.168600261211395,-0.152177989482880,-0.019547447562218));
res += mul(Get(s2,dx,dy), float4x4(-0.059365838766098,0.058537043631077,-0.022465799003839,-0.048779468983412,0.052565362304449,0.114809669554234,0.004567695781589,0.123544037342072,0.059383414685726,-0.116835407912731,-0.180421561002731,-0.150464653968811,0.110219806432724,-0.042035847902298,-0.121887311339378,-0.070273898541927));
res += mul(Get(s3,-dx,-dy), float4x4(0.001509048743173,-0.029930183663964,0.018176395446062,0.029026567935944,-0.231998056173325,-0.113813526928425,0.211495354771614,-0.099542610347271,0.007580570410937,0.026097908616066,0.045661516487598,0.188050180673599,-0.196732804179192,-0.131899431347847,-0.226130515336990,-0.079197093844414));
res += mul(Get(s3,-dx,0), float4x4(0.015403646975756,-0.081946782767773,-0.026417849585414,0.131700202822685,-0.090556405484676,-0.150733143091202,0.174227580428123,-0.093453824520111,-0.132640630006790,-0.062560856342316,-0.072037920355797,-0.002497074194252,-0.040699489414692,-0.031636651605368,0.103275060653687,-0.038347568362951));
res += mul(Get(s3,-dx,dy), float4x4(-0.068331427872181,-0.005698061082512,-0.052666202187538,0.085991404950619,-0.178733512759209,-0.239523291587830,0.184989035129547,0.261784911155701,-0.154387131333351,0.077711597084999,0.125535592436790,-0.101298764348030,-0.149762675166130,-0.236650377511978,-0.145764574408531,-0.108941033482552));
res += mul(Get(s3,0,-dy), float4x4(-0.074991106987000,0.051725920289755,-0.075644746422768,-0.089041545987129,0.020474502816796,0.026726452633739,0.146198764443398,-0.023687856271863,0.062770962715149,-0.076671682298183,-0.135834857821465,0.050437986850739,0.080493144690990,0.158308506011963,-0.238407626748085,-0.042396027594805));
res += mul(Get(s3,0,0), float4x4(-0.011917436495423,0.120526954531670,0.138906449079514,-0.032887838780880,-0.156808450818062,0.089550845324993,0.025412831455469,0.080951683223248,-0.044012855738401,-0.023654168471694,0.000531887810212,0.036838352680206,0.027363467961550,0.020172633230686,-0.046873748302460,-0.115652188658714));
res += mul(Get(s3,0,dy), float4x4(-0.063643567264080,0.196793332695961,-0.057022035121918,-0.273966729640961,-0.116681009531021,-0.088409975171089,0.006652439013124,-0.114187195897102,-0.049197923392057,0.025419658049941,-0.092326104640961,-0.227599844336510,0.038085162639618,-0.067755632102489,-0.187336951494217,0.060948856174946));
res += mul(Get(s3,dx,-dy), float4x4(0.158378422260284,0.146948918700218,0.082570791244507,0.016086382791400,0.032380990684032,-0.100584171712399,0.179494619369507,-0.058004472404718,-0.045174736529589,0.002556837163866,0.235728695988655,-0.064358383417130,0.046011656522751,0.187989786267281,-0.095861077308655,-0.021195258945227));
res += mul(Get(s3,dx,0), float4x4(0.008855110965669,-0.009941956028342,0.102492295205593,-0.042208824306726,0.020969195291400,0.035952899605036,-0.004166797734797,-0.179325029253960,0.264862716197968,0.003064314601943,0.058028668165207,-0.124313071370125,-0.104409784078598,0.023171095177531,-0.082444041967392,-0.073036842048168));
res += mul(Get(s3,dx,dy), float4x4(-0.002905783709139,-0.022502589970827,-0.010795335285366,-0.064502105116844,-0.177558571100235,0.179213166236877,-0.003507449757308,-0.137913540005684,0.004359965212643,-0.244752809405327,-0.078516624867916,-0.124643929302692,0.157835647463799,-0.096856616437435,-0.193387120962143,-0.040252417325974));
return max(float4(0,0,0,0), res);
}
