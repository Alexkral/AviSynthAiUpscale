sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.000246185198193,-0.000562763074413,-0.000648089800961,0.000122600977193);
res += mul(Get(s0,-dx,-dy), float4x4(-0.023010924458504,-0.000576049438678,0.016280217096210,0.011437131091952,-0.004431128501892,-0.049643963575363,-0.032915350049734,0.002657530596480,-0.007689800579101,-0.005082089453936,-0.001600416144356,-0.002101309131831,-0.002011764328927,0.003100509289652,0.005506692919880,0.003456922248006));
res += mul(Get(s0,-dx,0), float4x4(0.006672277580947,0.036666363477707,0.041724219918251,-0.000460041890619,-0.013332131318748,0.014550733380020,0.063191629946232,0.062747344374657,-0.007362643256783,-0.000560129992664,0.013167970813811,0.002899508224800,-0.009936917573214,-0.015242390334606,-0.017252109944820,-0.011920567601919));
res += mul(Get(s0,-dx,dy), float4x4(-0.000107559448224,0.001738589606248,-0.000157032554853,-0.006604856811464,0.001309438142926,0.001531230635010,0.000061408529291,-0.007537218742073,0.001705067115836,0.001729620853439,0.003453797893599,0.002020030748099,-0.000712541048415,-0.003311116015539,-0.006478790659457,-0.007913152687252));
res += mul(Get(s0,0,-dy), float4x4(0.049532875418663,0.003405841533095,-0.016471572220325,-0.007190804462880,-0.023915966972709,-0.009809065610170,0.001183809130453,0.003286115359515,0.011554363183677,-0.007503152359277,-0.008774688467383,-0.005579532124102,0.004440212622285,0.002140347613022,0.004460059106350,0.004316486418247));
res += mul(Get(s0,0,0), float4x4(-0.012426999397576,-0.012348975054920,0.026204170659184,0.069376394152641,0.004943806678057,0.001183057902381,-0.008842951618135,-0.019746968522668,-0.040020830929279,-0.060069173574448,0.016760854050517,0.047381483018398,0.031739756464958,0.038236323744059,0.032151907682419,0.018091531470418));
res += mul(Get(s0,0,dy), float4x4(0.001074032392353,-0.000836257822812,-0.002359665231779,-0.001688722055405,0.001382185146213,0.002920790575445,0.002789933700114,0.001759781618603,-0.003226102096960,-0.001916837762110,0.018246551975608,0.023684399202466,-0.007024475373328,-0.009325644001365,-0.004559198394418,0.009333614259958));
res += mul(Get(s0,dx,-dy), float4x4(-0.000213217703276,0.000988426734693,-0.000787673110608,-0.002859595231712,0.002477724105120,0.001193027244881,0.000789770740084,0.001050773775205,-0.002939227968454,0.001759642036632,0.000241332149017,-0.000672184163705,-0.002633660333231,-0.003738837083802,-0.005334496032447,-0.003467808710411));
res += mul(Get(s0,dx,0), float4x4(-0.000266531307716,0.002309315837920,0.000076614924183,-0.002575248945504,0.001409295364283,0.003572606015950,0.004375468473881,0.004038257058710,0.003700231201947,0.007433984894305,0.002009461633861,-0.007978127337992,-0.006895087659359,-0.012851796112955,-0.013327157124877,-0.010129325091839));
res += mul(Get(s0,dx,dy), float4x4(0.001349022961222,0.002282197121531,0.000913142925128,-0.000711605185643,-0.000255231105257,-0.001471275929362,-0.001350894104689,0.000177960639121,0.002162128454074,0.000489715894219,-0.002574862446636,-0.000450517632999,0.000715565693099,0.004512279760092,0.006965661421418,0.003242238191888));
res += mul(Get(s1,-dx,-dy), float4x4(0.035490613430738,0.005069908685982,-0.009880374185741,-0.001845855847932,-0.005943389609456,0.000429617473856,0.004450134467334,0.003125055925921,0.012098864652216,0.017456784844398,0.014075945131481,0.005693566519767,0.002263684291393,0.000158596667461,-0.000972725276370,-0.001502996310592));
res += mul(Get(s1,-dx,0), float4x4(0.040661174803972,-0.004377731587738,-0.060673773288727,-0.005518286954612,-0.008881571702659,-0.016922781243920,-0.020236087962985,-0.016357656568289,0.006180413533002,0.001886715879664,-0.000546401774045,0.003210267052054,0.060824003070593,0.030649432912469,0.002683692844585,0.001539688557386));
res += mul(Get(s1,-dx,dy), float4x4(-0.002511597704142,-0.005006667226553,-0.009459219872952,0.005705961491913,-0.005362478084862,-0.005104367621243,-0.003907624632120,-0.003799614030868,0.005067321471870,0.007868531160057,0.010510457679629,0.010073210112751,-0.004088758025318,-0.007548767141998,0.009372721426189,0.046443168073893));
res += mul(Get(s1,0,-dy), float4x4(0.019222702831030,0.002873308723792,-0.001518113771453,-0.000151803731569,-0.012363554909825,0.001758227008395,0.012067808769643,0.010215876623988,0.001920136972331,0.005857984535396,0.003388480516151,0.001444283057936,-0.006205599755049,-0.005265443120152,-0.003035533474758,-0.001230285270140));
res += mul(Get(s1,0,0), float4x4(0.022639723494649,0.006542641669512,-0.027477433905005,0.000987948384136,0.040816858410835,0.021491626277566,-0.001048124860972,-0.015360963530838,-0.036393735557795,-0.034191962331533,-0.023336121812463,-0.010238385759294,0.021448742598295,0.054426398128271,0.042590096592903,0.004436919931322));
res += mul(Get(s1,0,dy), float4x4(0.000108204279968,0.000268771895207,-0.004137467592955,-0.001757398713380,-0.004683871753514,0.001270043896511,0.017817663028836,0.036000788211823,0.007416012231261,0.008009920828044,-0.001326628727838,-0.020669823512435,0.005385393276811,0.008459425531328,0.004285301081836,-0.001268461346626));
res += mul(Get(s1,dx,-dy), float4x4(-0.001637018867768,-0.000741235911846,0.001003160723485,0.000024274801035,-0.004228796809912,-0.001015079091303,0.000543200119864,0.000568610790651,0.006775076966733,0.000775929423980,-0.003973730839789,-0.003148263553157,-0.003092552535236,0.001308753155172,0.004855235107243,0.004362968262285));
res += mul(Get(s1,dx,0), float4x4(-0.003103051567450,-0.000149001774844,0.000036557208659,0.000255222956184,-0.005728443618864,-0.005891121923923,-0.005355440080166,-0.005543656181544,0.003221923485398,0.002272047568113,0.003733416553587,0.006539113819599,0.000852109573316,-0.005674946587533,-0.005877234973013,-0.002830052748322));
res += mul(Get(s1,dx,dy), float4x4(0.000550846743863,0.000322560430504,-0.001668759039603,-0.005002672318369,-0.001964011695236,-0.003903953358531,-0.004432893823832,-0.004981775302440,0.000442589225713,0.002599540166557,0.005505377892405,0.006434792652726,-0.000140459887916,-0.000003689972118,0.000875275058206,0.001900265458971));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025600424036384,0.004602777771652,0.011037860997021,0.002777122426778,0.013136023655534,-0.000271085446002,-0.006625796668231,-0.005284419283271,-0.016077902168036,-0.010162523947656,-0.005526836495847,0.000047762765462,-0.002748447703198,0.000631320173852,0.001770201371983,0.000023481397875));
res += mul(Get(s2,-dx,0), float4x4(-0.005112910177559,0.015073011629283,0.020445924252272,-0.018556557595730,-0.044394068419933,0.004812571685761,0.040494378656149,0.031008252874017,-0.030935507267714,-0.062388066202402,-0.075103573501110,-0.049960676580667,-0.003093634732068,-0.005941015668213,-0.006430966313928,-0.004192587919533));
res += mul(Get(s2,-dx,dy), float4x4(-0.003115118714049,-0.004168400075287,-0.000994703965262,0.000080357967818,0.006111817434430,0.004822826012969,-0.015578833408654,-0.047211244702339,-0.004132431931794,-0.007806519512087,-0.009937605820596,-0.010286315344274,-0.000922047300264,-0.000092477930593,0.000411538028857,-0.001014324370772));
res += mul(Get(s2,0,-dy), float4x4(-0.027566803619266,0.036419983953238,0.024995878338814,0.000775256834459,-0.003299815347418,0.008291301317513,-0.001645999262109,-0.004502372816205,-0.014584767632186,0.000286002788926,0.006101704202592,0.001407361007296,-0.002074616029859,-0.005800933111459,-0.003520904574543,0.000408411928220));
res += mul(Get(s2,0,0), float4x4(0.017009496688843,0.032317962497473,0.000973922375124,-0.062919050455093,0.054258015006781,0.030693560838699,-0.025672480463982,-0.037820070981979,-0.001285393140279,0.005329527892172,-0.000653716851957,-0.014178168959916,0.000229754601605,0.013810068368912,0.018073758110404,0.009818593971431));
res += mul(Get(s2,0,dy), float4x4(-0.005517207086086,-0.009063762612641,-0.003558131400496,0.007699725218117,-0.001596763846464,-0.009188113734126,-0.010494353249669,0.017575163394213,0.001575104077347,0.001380266272463,-0.004922148771584,-0.011076659895480,-0.001357323257253,-0.003183612134308,-0.006606511771679,-0.008346139453351));
res += mul(Get(s2,dx,-dy), float4x4(-0.001195494085550,-0.006795131135732,-0.004351199604571,0.001834318274632,-0.001833913498558,0.002717185765505,0.007938574068248,0.006317520514131,0.001553560490720,0.001738734077662,0.002277551684529,0.002899950137362,-0.018081661313772,-0.005760109517723,0.004231907427311,0.006134287919849));
res += mul(Get(s2,dx,0), float4x4(-0.002731567481533,-0.002661294303834,0.005444137379527,0.005938419140875,-0.007407465018332,-0.004953888710588,0.000287634262349,0.000796124571934,-0.003019044874236,-0.003577101510018,-0.003177914069965,-0.001018370152451,-0.018500728532672,-0.040812760591507,-0.046632654964924,-0.034984018653631));
res += mul(Get(s2,dx,dy), float4x4(0.000931234506425,0.001942546805367,0.002085068961605,0.001802633982152,0.000856939586811,-0.002242467133328,-0.005819644778967,-0.006893482990563,0.000318836391671,-0.001629325444810,-0.001504237065092,-0.000998203875497,-0.002384230727330,-0.001125068170950,0.001264344900846,-0.000806496478617));
return res;
}
