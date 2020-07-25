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
res += mul(Get(s0,-dx,-dy), float4x4(-0.012016760185361,0.096163272857666,0.001589582068846,-0.156195804476738,-0.008481822907925,0.163398727774620,0.053922541439533,-0.176564261317253,-0.018708031624556,0.117953576147556,0.026318402960896,0.028693802654743,0.078626319766045,0.028473962098360,-0.020392900332808,-0.039580281823874));
res += mul(Get(s0,-dx,0), float4x4(-0.167748257517815,-0.061476454138756,0.035285402089357,-0.086560718715191,-0.062620975077152,-0.060043662786484,-0.082365378737450,0.118076391518116,-0.045838352292776,0.064713023602962,-0.048668745905161,-0.012372769415379,0.039692353457212,0.096115857362747,0.204932183027267,0.001414134283550));
res += mul(Get(s0,-dx,dy), float4x4(0.076964206993580,0.013947511091828,-0.056920878589153,0.043510176241398,-0.011586427688599,-0.067326605319977,0.092321760952473,-0.024849710986018,-0.033047266304493,-0.000176957371878,-0.124178171157837,-0.026678189635277,-0.053801547735929,0.167843624949455,0.005028929095715,-0.145944818854332));
res += mul(Get(s0,0,-dy), float4x4(-0.009847978129983,0.104301907122135,0.167993351817131,-0.064480118453503,-0.069259710609913,-0.001464883913286,-0.036060258746147,0.043294053524733,0.107913210988045,-0.037793863564730,-0.093925729393959,0.042209293693304,0.114508680999279,-0.172507554292679,-0.124789893627167,-0.130533427000046));
res += mul(Get(s0,0,0), float4x4(-0.112914055585861,0.072822585701942,-0.025662658736110,0.031302262097597,0.011521445587277,0.032893549650908,-0.047335673123598,0.208708897233009,-0.059083715081215,-0.113393522799015,0.171466410160065,-0.117619678378105,0.032774455845356,-0.026421936228871,-0.072756275534630,0.042813405394554));
res += mul(Get(s0,0,dy), float4x4(-0.122054822742939,-0.086466141045094,0.073361687362194,-0.071522399783134,0.148297473788261,0.052279826253653,-0.057487878948450,0.037565443664789,0.017431294545531,0.102182850241661,-0.002728553023189,-0.109974183142185,-0.042115624994040,-0.005149875301868,-0.099239967763424,-0.105122536420822));
res += mul(Get(s0,dx,-dy), float4x4(-0.099834345281124,-0.014723214320838,-0.194681674242020,0.019565597176552,0.083009950816631,-0.112884037196636,-0.116526409983635,0.101267874240875,0.057794526219368,0.085403650999069,-0.100765615701675,0.106033220887184,-0.045425213873386,-0.124405041337013,0.134354114532471,0.012687888927758));
res += mul(Get(s0,dx,0), float4x4(-0.087474040687084,-0.015320017002523,0.104896508157253,-0.021220253780484,-0.047904241830111,-0.110804498195648,0.062582097947598,-0.026170985773206,-0.108252398669720,-0.018872790038586,-0.125115156173706,0.054402567446232,-0.051834106445313,-0.027816034853458,0.203038692474365,-0.155586674809456));
res += mul(Get(s0,dx,dy), float4x4(-0.014011893421412,0.100734889507294,-0.038294710218906,0.032397881150246,0.006500812247396,0.051068127155304,0.120519652962685,0.125326797366142,-0.154576838016510,0.040179379284382,-0.088740393519402,0.053430519998074,-0.112109273672104,0.080540128052235,0.156303614377975,-0.045308075845242));
res += mul(Get(s1,-dx,-dy), float4x4(0.276805490255356,-0.072702631354332,-0.040062058717012,-0.098689645528793,0.037509243935347,-0.006405559368432,-0.008252588100731,0.001709553180262,-0.017392365261912,0.053067993372679,0.085275754332542,0.074968524277210,-0.093963935971260,-0.018721202388406,0.083680056035519,-0.146733880043030));
res += mul(Get(s1,-dx,0), float4x4(-0.231864184141159,-0.210547640919685,0.119284734129906,0.052649661898613,0.157136321067810,-0.232832923531532,-0.125557288527489,-0.081161148846149,-0.059798475354910,0.189478173851967,0.166635617613792,0.015674958005548,-0.159360468387604,0.067489087581635,-0.044650644063950,0.075247302651405));
res += mul(Get(s1,-dx,dy), float4x4(0.027180587872863,-0.101993419229984,-0.002329796319827,0.000683094665874,-0.034340176731348,0.124423988163471,0.085658676922321,-0.115225940942764,-0.053946301341057,0.115026511251926,0.054467942565680,-0.097184367477894,-0.025917492806911,0.042108107358217,-0.077994331717491,0.080337457358837));
res += mul(Get(s1,0,-dy), float4x4(0.000823642534669,0.035065550357103,-0.016541747376323,0.023036738857627,-0.071943216025829,-0.023234294727445,-0.112916260957718,0.084966272115707,-0.130408465862274,-0.007411499507725,-0.128088161349297,0.020686708390713,0.059208173304796,-0.010531698353589,-0.097697101533413,0.093063719570637));
res += mul(Get(s1,0,0), float4x4(-0.130887001752853,-0.076363481581211,-0.107787303626537,-0.118498839437962,-0.160430118441582,-0.043895155191422,0.059847649186850,0.029101666063070,0.058959983289242,0.053741108626127,-0.024304794147611,-0.020877100527287,0.102103129029274,-0.221694394946098,0.042396314442158,-0.157238766551018));
res += mul(Get(s1,0,dy), float4x4(-0.015327461063862,0.094477385282516,-0.022037046030164,-0.119646020233631,0.067201778292656,-0.177755460143089,-0.006456118077040,-0.152277484536171,-0.045032955706120,0.021105678752065,0.113530814647675,0.019443279132247,0.122421272099018,-0.141076877713203,0.036591093987226,0.034550502896309));
res += mul(Get(s1,dx,-dy), float4x4(0.040253475308418,-0.044157925993204,-0.080415762960911,-0.128378003835678,-0.065997712314129,0.008616697043180,-0.115856736898422,0.173976093530655,0.062659956514835,0.039176959544420,0.046260681003332,-0.035749502480030,-0.041384469717741,0.120633043348789,-0.039012871682644,-0.103162445127964));
res += mul(Get(s1,dx,0), float4x4(0.103255018591881,0.024241549894214,-0.021316811442375,0.107400663197041,0.127501741051674,-0.023932773619890,-0.185999214649200,-0.190443217754364,-0.173767000436783,-0.212592333555222,-0.063038669526577,0.055924996733665,-0.099394761025906,0.002532471669838,-0.144001618027687,0.093677870929241));
res += mul(Get(s1,dx,dy), float4x4(0.010579087771475,-0.062504060566425,-0.063515484333038,0.059467870742083,-0.009374787099659,-0.136353045701981,-0.033382043242455,-0.004591378849000,0.031482260674238,-0.092290505766869,0.023389158770442,-0.044878121465445,0.303951084613800,-0.003708594013005,0.019233040511608,0.104858271777630));
res += mul(Get(s2,-dx,-dy), float4x4(-0.056487325578928,-0.035399809479713,-0.025650881230831,0.101097814738750,0.009710540995002,0.079310871660709,-0.128167152404785,0.005466776434332,-0.017640542238951,-0.102900527417660,-0.056252300739288,0.137472599744797,0.018403962254524,-0.112345926463604,-0.111859224736691,0.010479052551091));
res += mul(Get(s2,-dx,0), float4x4(-0.071610517799854,0.292190045118332,0.008459744043648,0.181390687823296,-0.079146988689899,-0.133637964725494,-0.013368831947446,0.081576406955719,-0.206531196832657,-0.194247782230377,-0.187394812703133,0.006853583268821,0.041529148817062,0.095226623117924,0.138132080435753,-0.126126483082771));
res += mul(Get(s2,-dx,dy), float4x4(0.048069011420012,-0.069060847163200,0.142941847443581,-0.144004687666893,-0.042874842882156,0.068571314215660,0.014813506044447,-0.147401154041290,0.021779602393508,0.162386775016785,-0.222998067736626,0.028452575206757,0.038673151284456,0.187575161457062,0.060708586126566,-0.077520787715912));
res += mul(Get(s2,0,-dy), float4x4(-0.109496310353279,-0.014452847652137,0.030580071732402,0.037848498672247,-0.068314068019390,0.062379267066717,0.170054361224174,-0.070453852415085,0.093184120953083,0.024740772321820,0.059841174632311,-0.088148355484009,0.047972530126572,-0.044527322053909,0.007889130152762,-0.114035598933697));
res += mul(Get(s2,0,0), float4x4(-0.067928552627563,0.054395973682404,-0.083440952003002,0.157086730003357,0.006926333997399,0.165953546762466,0.071448937058449,0.017934644594789,0.126430541276932,0.059894025325775,0.033513769507408,-0.167354360222816,0.075387738645077,-0.069460056722164,-0.075843781232834,-0.236576810479164));
res += mul(Get(s2,0,dy), float4x4(-0.154290795326233,0.133687213063240,0.215225115418434,0.001968750031665,-0.073624633252621,-0.111359015107155,-0.009106304496527,0.011481301859021,0.023548373952508,0.014814535155892,-0.034284625202417,-0.232330933213234,0.098487026989460,0.032793410122395,-0.020600022748113,0.099338412284851));
res += mul(Get(s2,dx,-dy), float4x4(-0.021311691030860,-0.013181705959141,-0.067798867821693,0.002060020109639,0.015964610502124,0.035763263702393,-0.151945039629936,-0.081963881850243,0.147410139441490,0.105222269892693,0.081850297749043,0.197701707482338,-0.102592378854752,-0.082962945103645,0.081689618527889,-0.103554800152779));
res += mul(Get(s2,dx,0), float4x4(-0.114304386079311,0.097269453108311,-0.049391187727451,-0.070994220674038,-0.097307667136192,-0.012973017990589,0.003718421561643,0.041366547346115,0.068388588726521,0.162725061178207,0.022545909509063,0.060283735394478,-0.135642573237419,-0.057806152850389,-0.182899251580238,0.043942701071501));
res += mul(Get(s2,dx,dy), float4x4(0.039358526468277,0.100528150796890,0.055145405232906,0.110489696264267,0.051170241087675,-0.150000587105751,-0.101418040692806,-0.034009657800198,0.211062848567963,-0.053742125630379,-0.145074695348740,0.148765295743942,0.127930849790573,0.080744504928589,0.054986327886581,0.032400466501713));
res += mul(Get(s3,-dx,-dy), float4x4(0.093461781740189,0.002458749571815,-0.014585303142667,-0.063036814332008,-0.031126331537962,0.181189939379692,0.080157756805420,0.033896852284670,0.125451162457466,0.069541551172733,0.110493928194046,0.034311551600695,0.092819772660732,0.096552290022373,0.133982166647911,-0.119349539279938));
res += mul(Get(s3,-dx,0), float4x4(-0.086168885231018,0.067339152097702,-0.005611392669380,0.122430086135864,0.084019131958485,-0.124217599630356,0.040153410285711,0.099573314189911,0.080015763640404,-0.107040613889694,0.042218238115311,-0.027070598676801,-0.172793418169022,0.103847496211529,-0.002023464767262,0.112359963357449));
res += mul(Get(s3,-dx,dy), float4x4(-0.004519373178482,-0.065638974308968,-0.145916804671288,0.042891051620245,-0.025870652869344,-0.172782406210899,0.046813298016787,0.178348273038864,0.002741401782259,-0.080950051546097,0.079551391303539,-0.211231023073196,-0.035155344754457,0.006678263656795,-0.004394195973873,0.018219849094748));
res += mul(Get(s3,0,-dy), float4x4(0.184269905090332,0.091831535100937,0.175590485334396,-0.146513387560844,0.107568830251694,0.093791991472244,0.056318081915379,0.151496917009354,-0.089328914880753,0.092304050922394,-0.067595966160297,0.003727569710463,-0.205708906054497,-0.051727257668972,0.038374397903681,-0.097686007618904));
res += mul(Get(s3,0,0), float4x4(-0.117826730012894,0.063185751438141,0.050398051738739,-0.005431024357677,0.100367210805416,-0.076553784310818,-0.107350684702396,0.020326655358076,-0.129366800189018,0.133237063884735,0.078774839639664,-0.125526189804077,0.037325855344534,-0.038478560745716,-0.074412226676941,0.085862435400486));
res += mul(Get(s3,0,dy), float4x4(0.032254014164209,0.035830345004797,-0.068354092538357,0.040621962398291,-0.037545971572399,-0.187668710947037,0.068298444151878,0.146485611796379,0.110766194760799,0.112040542066097,-0.075451694428921,-0.061862882226706,-0.006873985752463,-0.107084088027477,0.163553789258003,0.234181582927704));
res += mul(Get(s3,dx,-dy), float4x4(-0.140751764178276,0.160406008362770,-0.007807794958353,-0.054742693901062,0.017112068831921,-0.006748134270310,-0.085629478096962,-0.166597411036491,0.201224207878113,0.055741637945175,-0.037404607981443,0.083459645509720,0.031604547053576,0.093208126723766,0.107896938920021,-0.262098908424377));
res += mul(Get(s3,dx,0), float4x4(0.014975252561271,0.152887225151062,-0.087086774408817,0.036805123090744,0.013727110810578,0.189186960458755,0.063942760229111,-0.007618359290063,0.027312172576785,-0.102700926363468,-0.027084400877357,-0.085392735898495,-0.044974707067013,-0.017555952072144,0.119983330368996,-0.051248185336590));
res += mul(Get(s3,dx,dy), float4x4(0.030057182535529,-0.138686537742615,0.044384762644768,0.132614672183990,0.088597498834133,0.093527570366859,-0.112189918756485,0.050310246646404,-0.006897109560668,-0.018613893538713,0.051262844353914,0.084614098072052,-0.192067116498947,0.041729170829058,0.024337189272046,-0.168156832456589));
res = max(float4(0,0,0,0), res);
return res;
}