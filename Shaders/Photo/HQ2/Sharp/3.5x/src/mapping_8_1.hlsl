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
res += mul(Get(s0,-dx,-dy), float4x4(0.037949714809656,-0.081067688763142,0.183386743068695,0.043477367609739,0.043298814445734,-0.161268144845963,0.043570298701525,0.026558969169855,0.091165564954281,0.060094099491835,-0.002024445682764,-0.002562047680840,-0.035706039518118,0.084174267947674,-0.010449049994349,-0.080412700772285));
res += mul(Get(s0,-dx,0), float4x4(0.038198009133339,-0.096064217388630,0.027480214834213,-0.169344797730446,-0.004687506239861,-0.022549310699105,-0.016129065304995,0.004335565026850,-0.096090413630009,0.032108586281538,-0.031291570514441,-0.050495881587267,0.019744904711843,-0.011575821787119,0.042690724134445,-0.129466056823730));
res += mul(Get(s0,-dx,dy), float4x4(-0.050954978913069,-0.039528664201498,-0.058993961662054,-0.014715832658112,0.045745600014925,0.015262912958860,-0.005873307120055,-0.019004825502634,-0.061476893723011,0.027620228007436,0.017034523189068,-0.085211984813213,-0.116381756961346,0.116698659956455,-0.014201116748154,-0.119577802717686));
res += mul(Get(s0,0,-dy), float4x4(-0.004058880265802,-0.005899642594159,-0.027531709522009,0.162221297621727,0.020235523581505,0.050133265554905,-0.037615116685629,-0.038974486291409,0.024783670902252,0.011866523884237,-0.015166128985584,0.124685928225517,-0.056939188390970,-0.001002252567559,0.010030902922153,-0.027227878570557));
res += mul(Get(s0,0,0), float4x4(0.002996244700626,0.035713486373425,0.058598954230547,0.026661286130548,-0.032675877213478,-0.024793516844511,-0.031863763928413,-0.034310992807150,-0.080211073160172,-0.033727478235960,0.005969485267997,0.045313581824303,0.052655130624771,-0.037292651832104,-0.008012101985514,0.051287457346916));
res += mul(Get(s0,0,dy), float4x4(-0.001474169199355,-0.067911863327026,0.034595359116793,-0.058668941259384,-0.083736717700958,-0.053306512534618,-0.064379200339317,-0.050886761397123,0.043073836714029,-0.045711606740952,0.008715318515897,-0.016853079199791,0.124124944210052,0.112990416586399,0.187868371605873,-0.221095904707909));
res += mul(Get(s0,dx,-dy), float4x4(-0.139781609177589,0.102859593927860,0.062852814793587,-0.014892344363034,0.104810893535614,0.050085451453924,-0.167025625705719,0.061180654913187,-0.017019076272845,-0.004530516918749,-0.015823582187295,0.086830534040928,-0.011681702919304,0.039190042763948,0.088245756924152,0.048983342945576));
res += mul(Get(s0,dx,0), float4x4(0.041737955063581,0.068528063595295,0.149686828255653,0.076352529227734,-0.011812431737781,0.078622333705425,-0.018567789345980,0.077112108469009,0.044149018824100,0.034626591950655,0.075027838349342,0.033343233168125,-0.058350458741188,0.020952699705958,-0.085308760404587,-0.042594593018293));
res += mul(Get(s0,dx,dy), float4x4(0.024018516764045,-0.027279216796160,-0.091386228799820,-0.028814744204283,-0.052034363150597,-0.027092905715108,-0.106634117662907,-0.086085312068462,-0.033697206526995,-0.100023396313190,0.083022885024548,0.005588354077190,-0.049200035631657,-0.075452119112015,0.006896572653204,0.018339373171329));
res += mul(Get(s1,-dx,-dy), float4x4(0.052183970808983,-0.105837605893612,0.073821924626827,0.034379318356514,-0.050544451922178,0.018102016299963,0.098940595984459,-0.109876185655594,-0.048747550696135,0.011497215367854,-0.031741939485073,-0.019991209730506,0.002835643710569,0.017583940178156,-0.036622289568186,0.065562069416046));
res += mul(Get(s1,-dx,0), float4x4(-0.032771799713373,0.026130380108953,-0.040122028440237,0.052928235381842,-0.017406452447176,-0.052092600613832,-0.101682037115097,0.043042484670877,-0.129730835556984,0.088214419782162,0.052979405969381,-0.114292934536934,-0.106781564652920,-0.020638257265091,0.026799915358424,-0.105739846825600));
res += mul(Get(s1,-dx,dy), float4x4(0.054178707301617,-0.064206726849079,0.063938327133656,0.090976200997829,-0.020098857581615,0.109030164778233,-0.013073603622615,0.076710924506187,-0.035634756088257,-0.069944791495800,-0.045932967215776,-0.005654213950038,-0.077227041125298,-0.051811069250107,0.065023474395275,-0.005527613218874));
res += mul(Get(s1,0,-dy), float4x4(0.081923544406891,-0.009803201071918,-0.165757715702057,-0.075717799365520,0.021896570920944,-0.013394430279732,-0.165186613798141,-0.037062302231789,0.012143942527473,-0.007492944598198,0.158769845962524,0.037882421165705,0.055032353848219,0.189195767045021,-0.018101038411260,0.047261439263821));
res += mul(Get(s1,0,0), float4x4(0.053904611617327,0.028381684795022,-0.000100001569081,-0.166141316294670,0.046281173825264,-0.109305158257484,-0.049502417445183,0.033174268901348,0.138884469866753,0.140237569808960,-0.104538314044476,0.096712924540043,0.113574847579002,0.018152384087443,-0.136863619089127,-0.053143378347158));
res += mul(Get(s1,0,dy), float4x4(0.060562677681446,-0.127716183662415,0.094374485313892,0.049093775451183,-0.042407758533955,-0.045852344483137,-0.030037390068173,0.132035419344902,0.060108002275229,-0.007061403710395,0.029649319127202,-0.085956342518330,0.025723673403263,-0.047622252255678,0.027429325506091,-0.113074071705341));
res += mul(Get(s1,dx,-dy), float4x4(0.031296450644732,0.053423158824444,-0.140207245945930,-0.083739094436169,0.009801050648093,0.027469471096992,-0.065505862236023,-0.012037545442581,-0.105434179306030,-0.029020151123405,-0.003888503648341,-0.094085253775120,0.021737199276686,0.113462574779987,0.021847864612937,0.114605903625488));
res += mul(Get(s1,dx,0), float4x4(0.107663847506046,0.041384339332581,-0.118789792060852,0.081500619649887,-0.016499198973179,0.081386424601078,-0.081838876008987,-0.008380039595068,0.046270392835140,-0.014343382790685,-0.104766599833965,0.083214111626148,0.020757714286447,0.034684043377638,0.090945601463318,0.039243858307600));
res += mul(Get(s1,dx,dy), float4x4(0.080616720020771,-0.039897717535496,-0.133139714598656,-0.093534812331200,0.046362593770027,-0.056256666779518,-0.142131105065346,0.099125981330872,0.052916690707207,-0.030797492712736,-0.010960036888719,0.010756654664874,0.072467565536499,-0.048244602978230,0.032692287117243,-0.141383111476898));
res += mul(Get(s2,-dx,-dy), float4x4(0.029071586206555,-0.108197793364525,0.057230640202761,-0.065254978835583,0.019680643454194,-0.058384787291288,-0.013449195772409,-0.112082563340664,-0.123914688825607,-0.015648769214749,-0.062670953571796,0.111731059849262,0.041777137666941,-0.026378948241472,0.062610246241093,0.197910815477371));
res += mul(Get(s2,-dx,0), float4x4(-0.084244497120380,0.032457906752825,0.058042161166668,0.125833109021187,-0.075139842927456,-0.087035678327084,0.003349294653162,0.070795707404613,0.111991792917252,0.077915303409100,-0.030158622190356,-0.083545252680779,-0.037758708000183,0.016875112429261,0.139475181698799,-0.044247820973396));
res += mul(Get(s2,-dx,dy), float4x4(-0.038936819881201,0.017974354326725,-0.019239911809564,-0.040988083928823,0.093362286686897,-0.099952176213264,0.033565051853657,0.011064872145653,0.036760363727808,-0.043569542467594,-0.015731042250991,0.078474633395672,-0.007970139384270,-0.017609316855669,0.004043299704790,0.061550159007311));
res += mul(Get(s2,0,-dy), float4x4(0.063085272908211,0.029613956809044,0.000122578319861,0.126124113798141,-0.034012328833342,0.162759050726891,0.051029302179813,0.002044692635536,0.046769864857197,0.024173157289624,-0.049506410956383,0.106511861085892,0.085983686149120,0.014685816131532,0.107179239392281,0.128794208168983));
res += mul(Get(s2,0,0), float4x4(0.059487748891115,-0.151138305664063,-0.009239233098924,-0.048565685749054,-0.032929971814156,0.002019343897700,-0.060046844184399,0.026269558817148,-0.066056698560715,0.005066576879472,0.025384688749909,0.129211783409119,0.099897019565105,-0.070032730698586,-0.017971184104681,0.128977626562119));
res += mul(Get(s2,0,dy), float4x4(0.041888933628798,0.045180737972260,-0.009589984081686,0.069083333015442,-0.035916950553656,-0.038587123155594,0.035548020154238,0.148236751556396,-0.041774515062571,-0.082183778285980,0.063329435884953,0.045948907732964,-0.135514348745346,0.003489804686978,-0.023596832528710,-0.050045870244503));
res += mul(Get(s2,dx,-dy), float4x4(-0.001197644858621,0.054131858050823,0.070322819054127,0.000626321125310,0.131095141172409,-0.072116836905479,-0.067785389721394,-0.026923108845949,0.015111397951841,-0.010249204002321,-0.039156116545200,0.080905050039291,0.036882355809212,0.039017591625452,-0.150448337197304,0.076080612838268));
res += mul(Get(s2,dx,0), float4x4(0.031666290014982,0.098169550299644,0.041981082409620,0.071997053921223,0.075309045612812,0.119483061134815,0.017174106091261,-0.098315007984638,-0.087854415178299,0.028404243290424,-0.044040516018867,0.074200823903084,0.028860300779343,0.013370385393500,0.030168127268553,-0.096333213150501));
res += mul(Get(s2,dx,dy), float4x4(-0.081559240818024,0.030008142814040,-0.040356438606977,-0.059023719280958,-0.059240199625492,0.086521863937378,-0.011176394298673,-0.048545442521572,-0.005831058602780,-0.014437923207879,-0.012795061804354,0.031788501888514,-0.107984878122807,0.099215649068356,0.021301878616214,-0.117804758250713));
res += mul(Get(s3,-dx,-dy), float4x4(0.041284743696451,0.223602026700974,0.100994713604450,0.041488025337458,-0.022173374891281,0.016903085634112,-0.089916847646236,-0.100214004516602,-0.025945307686925,0.131079092621803,0.017740290611982,-0.034656330943108,0.114647790789604,-0.019024657085538,-0.011612556874752,0.035659208893776));
res += mul(Get(s3,-dx,0), float4x4(-0.048293106257915,0.088493555784225,-0.105794474482536,0.024533387273550,-0.089001618325710,-0.044954415410757,0.061087280511856,0.015462695620954,-0.038315594196320,0.094316326081753,-0.079848341643810,0.011284699663520,0.115163959562778,-0.015895141288638,-0.062414176762104,0.036313120275736));
res += mul(Get(s3,-dx,dy), float4x4(-0.014388592913747,-0.092155940830708,0.041184887290001,-0.117612019181252,0.050848867744207,-0.005902432836592,0.121533334255219,0.174503728747368,0.089270494878292,-0.062812373042107,-0.042371526360512,0.024068374186754,0.187381371855736,-0.063103325664997,0.016490006819367,0.009554016403854));
res += mul(Get(s3,0,-dy), float4x4(-0.067128829658031,0.069993324577808,0.163653180003166,0.108082689344883,0.038038767874241,-0.023004101589322,0.172574028372765,0.014831158332527,-0.015126843005419,0.092422939836979,0.077370770275593,-0.001764930202626,-0.053542833775282,-0.115086495876312,-0.031963195651770,0.031545657664537));
res += mul(Get(s3,0,0), float4x4(0.030910795554519,0.103508822619915,0.111872114241123,-0.004482079297304,0.063214905560017,-0.045035667717457,0.077919371426105,0.085827641189098,-0.047838255763054,0.067621968686581,0.145417690277100,0.029314137995243,-0.328511327505112,-0.074597425758839,0.034949962049723,-0.130069017410278));
res += mul(Get(s3,0,dy), float4x4(0.032753754407167,0.087734028697014,0.022632865235209,-0.115648850798607,-0.005140528082848,0.059315692633390,0.031643152236938,-0.041265804320574,0.055846799165010,-0.017147058621049,-0.028343889862299,-0.044407539069653,0.190455153584480,-0.083031244575977,-0.008804626762867,0.130739733576775));
res += mul(Get(s3,dx,-dy), float4x4(0.082405440509319,0.002777319634333,0.038875978440046,0.093679703772068,0.012363092973828,-0.004015234764665,-0.005712104495615,0.047991938889027,0.047091301530600,-0.043590344488621,0.010497833602130,0.056302811950445,-0.002007725182921,-0.045384727418423,0.088128492236137,0.098039574921131));
res += mul(Get(s3,dx,0), float4x4(-0.046932749450207,0.187083631753922,0.018633063882589,-0.006313858088106,0.020445737987757,-0.003287219675258,-0.148216113448143,-0.058787502348423,-0.033505875617266,-0.031625330448151,0.023298092186451,-0.038825638592243,0.086224876344204,-0.107595823705196,0.116378903388977,0.108518391847610));
res += mul(Get(s3,dx,dy), float4x4(-0.005263689439744,-0.028021860867739,0.148712098598480,0.048556126654148,-0.018426420167089,0.000948015425820,-0.096535481512547,0.028682570904493,0.101306870579720,-0.043485902249813,0.063066072762012,-0.018901895731688,0.077465027570724,-0.055160239338875,0.003162790788338,-0.141771823167801));
res = max(float4(0,0,0,0), res);
return res;
}
