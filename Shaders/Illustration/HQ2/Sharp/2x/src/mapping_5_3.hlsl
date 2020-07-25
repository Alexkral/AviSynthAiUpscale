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
res += mul(Get(s0,-dx,-dy), float4x4(0.026524387300014,-0.013729651458561,-0.010851453989744,-0.009743161499500,-0.053937077522278,-0.046256612986326,-0.061324290931225,-0.004026755690575,-0.009841748513281,0.003133594291285,0.004199875518680,-0.038156721740961,-0.010971711017191,-0.011737553402781,-0.001191956573166,0.012761730700731));
res += mul(Get(s0,-dx,0), float4x4(0.101811774075031,0.014876789413393,0.057816825807095,-0.058914624154568,-0.034651856869459,-0.000212446539081,-0.031884398311377,0.050952803343534,-0.005982661154121,0.003749206662178,-0.006214795168489,0.024747015908360,-0.020071208477020,-0.015574700199068,0.011970033869147,-0.000676492229104));
res += mul(Get(s0,-dx,dy), float4x4(0.043313745409250,0.071268714964390,0.013314405456185,0.019186994060874,-0.030895141884685,-0.046832200139761,-0.018981460481882,-0.000330874114297,0.014043536037207,0.018671270459890,0.014689803123474,0.044031754136086,0.033923462033272,0.021435778588057,-0.021856613457203,-0.000649652036373));
res += mul(Get(s0,0,-dy), float4x4(0.033983796834946,-0.021817784756422,0.009583204053342,-0.009223136119545,-0.011783855035901,-0.070686832070351,-0.045726262032986,-0.010677479207516,0.049104299396276,-0.032912399619818,-0.011453136801720,-0.020474290475249,-0.008319526910782,-0.021429570391774,0.017635775730014,-0.024941682815552));
res += mul(Get(s0,0,0), float4x4(0.059778332710266,0.068965256214142,0.053501494228840,-0.027548575773835,-0.011711948551238,-0.017229771241546,-0.011460984125733,-0.076276399195194,0.118547908961773,0.004876297898591,0.016073377802968,0.021023377776146,-0.027269136160612,-0.026542218402028,-0.013478877954185,-0.018383407965302));
res += mul(Get(s0,0,dy), float4x4(-0.049159936606884,0.022675396874547,-0.044514633715153,0.083887092769146,-0.003604622557759,-0.033978052437305,-0.004971098154783,-0.001211116556078,0.063797235488892,0.011149193160236,0.011831168085337,0.049389462918043,0.032478943467140,0.022253997623920,0.021312236785889,0.011712717823684));
res += mul(Get(s0,dx,-dy), float4x4(-0.043570615351200,-0.005917372647673,-0.002362949773669,0.014839899726212,0.004114278126508,-0.016683695837855,-0.034801796078682,-0.076144099235535,0.039090320467949,-0.037172578275204,-0.014949876815081,-0.017480904236436,0.038021527230740,-0.028006901964545,-0.013070203363895,0.013323958963156));
res += mul(Get(s0,dx,0), float4x4(-0.124190919101238,0.043752703815699,0.009480829350650,-0.029576020315289,-0.004806871060282,-0.050341960042715,-0.005377488210797,-0.007851827889681,0.020925557240844,0.002452880144119,-0.003487564623356,0.033985048532486,0.092744909226894,-0.005100964102894,0.013114485889673,-0.023064298555255));
res += mul(Get(s0,dx,dy), float4x4(-0.044263541698456,0.017519146203995,-0.045658815652132,-0.046979900449514,0.052839804440737,-0.004157062619925,-0.002573187462986,0.060497600585222,-0.045117020606995,0.007977354340255,-0.021524744108319,0.067636094987392,0.016796311363578,0.030632009729743,0.004614438861609,0.006330990232527));
res += mul(Get(s1,-dx,-dy), float4x4(-0.035192128270864,0.004183351062238,-0.018086375668645,0.013158473186195,-0.022849528118968,0.015264160931110,0.025413567200303,0.059224925935268,0.059712983667850,-0.012506161816418,0.005963912699372,-0.005551168229431,0.005719853099436,0.007785324007273,-0.016553588211536,-0.006197852548212));
res += mul(Get(s1,-dx,0), float4x4(-0.015721715986729,-0.003071179147810,-0.022331515327096,0.050376296043396,-0.013583743013442,-0.021561907604337,0.003549572080374,-0.021819820627570,0.037100926041603,0.015954144299030,0.022129179909825,0.053718231618404,0.017527576535940,0.010070618242025,-0.011363318189979,0.012677229009569));
res += mul(Get(s1,-dx,dy), float4x4(0.003428224474192,0.014403791166842,-0.001839327276684,0.024136649444699,-0.023676203563809,0.000972650537733,-0.019767034798861,-0.003505415748805,0.014297132380307,0.024821985512972,0.042421694844961,0.015943793579936,-0.004860345274210,0.010378357954323,-0.003304933197796,0.015370134264231));
res += mul(Get(s1,0,-dy), float4x4(0.034044295549393,-0.010583359748125,0.000226885895245,-0.025405608117580,0.021161068230867,0.031994123011827,0.020178744569421,0.014374070800841,0.046101074665785,0.011514221318066,0.036588333547115,-0.008462543599308,0.006958585698158,0.012512888759375,0.013420883566141,0.011999109759927));
res += mul(Get(s1,0,0), float4x4(0.034804929047823,-0.030148353427649,0.024467596784234,0.020600639283657,0.001244460232556,-0.003435723250732,0.015209163539112,0.015569241717458,0.042554512619972,0.007948273792863,0.008265800774097,0.019239569082856,0.001970872515813,0.009173714555800,-0.006349074654281,0.032766770571470));
res += mul(Get(s1,0,dy), float4x4(-0.035870861262083,-0.014346763491631,-0.010076394304633,0.029711598530412,0.027491681277752,0.025694226846099,-0.001191536197439,-0.011398274451494,0.012090145610273,-0.031807269901037,0.038331225514412,0.093918167054653,0.008715688250959,0.008538343012333,-0.003439186140895,0.008270018734038));
res += mul(Get(s1,dx,-dy), float4x4(0.029763400554657,0.012780477292836,-0.021400714293122,-0.015306147746742,-0.049782745540142,0.016198853030801,-0.014656208455563,0.017756575718522,-0.016145804896951,0.008145176805556,0.009875661693513,0.041746925562620,0.014922560192645,0.024163981899619,-0.005929614882916,-0.019786931574345));
res += mul(Get(s1,dx,0), float4x4(-0.012244044803083,-0.007297411561012,0.021287901327014,0.003174981102347,-0.034036807715893,-0.005588072352111,-0.016133090481162,0.024735676124692,0.056658606976271,0.020014366135001,0.019061615690589,0.037390723824501,0.020028149709105,0.027575487270951,0.015249657444656,-0.009606380015612));
res += mul(Get(s1,dx,dy), float4x4(-0.042928040027618,0.021057764068246,0.005828625056893,0.023964179679751,0.003745828289539,0.027014212682843,-0.000452921987744,0.001778438570909,0.013733685016632,-0.016384350135922,0.060486651957035,0.046614911407232,0.004593790508807,0.025955647230148,-0.011888111010194,-0.005535873584449));
res += mul(Get(s2,-dx,-dy), float4x4(0.037119746208191,0.002641963306814,0.027897818014026,-0.070692598819733,0.042610723525286,0.038642533123493,-0.023009318858385,-0.009970042854548,-0.104471422731876,-0.032639201730490,-0.013807519339025,0.001292876200750,-0.016590960323811,0.050372034311295,-0.019895588979125,0.023744495585561));
res += mul(Get(s2,-dx,0), float4x4(0.028913239017129,0.009628237225115,-0.009963620454073,-0.014739716425538,-0.036976356059313,-0.009375554509461,-0.006720585282892,-0.006170826032758,-0.022738408297300,0.009418903850019,-0.018786679953337,-0.047415491193533,0.044718153774738,-0.015397178940475,-0.009731529280543,-0.002171737607569));
res += mul(Get(s2,-dx,dy), float4x4(0.061752099543810,0.025998804718256,0.006537460256368,0.054552104324102,-0.051386099308729,0.022240003570914,-0.017594391480088,-0.028809834271669,-0.023811519145966,0.004041509237140,0.058668009936810,-0.004417068324983,0.043554496020079,0.012612061575055,0.033521745353937,-0.005708296783268));
res += mul(Get(s2,0,-dy), float4x4(-0.031962480396032,-0.003678745357320,-0.002166366670281,-0.009329502470791,-0.059476546943188,0.029621185734868,0.030820451676846,0.009843789972365,-0.047503117471933,-0.069441542029381,0.008974010124803,0.007897190749645,0.078333154320717,-0.003264187369496,0.004230686929077,0.004765198566020));
res += mul(Get(s2,0,0), float4x4(-0.007778158411384,0.000981742166914,-0.016282804310322,0.041578985750675,-0.087247759103775,0.045995436608791,-0.030850814655423,0.022668890655041,0.095568872988224,0.010523917153478,-0.009228874929249,-0.002363335341215,0.023953787982464,0.024121688678861,0.041511658579111,0.003627825994045));
res += mul(Get(s2,0,dy), float4x4(-0.002806564327329,0.004140130709857,0.009613835252821,0.021317878738046,-0.015773044899106,0.022419974207878,0.008802795782685,-0.001752236741595,0.060797210782766,-0.002159581985325,0.045070242136717,-0.000163913020515,-0.076815925538540,-0.017817255109549,-0.004355134442449,0.021891139447689));
res += mul(Get(s2,dx,-dy), float4x4(-0.088232174515724,-0.023341432213783,-0.011412144638598,0.022464757785201,-0.017525726929307,-0.003328063292429,-0.009132804349065,0.028985461220145,0.012101381085813,-0.082877397537231,0.014549907296896,-0.029097642749548,0.025202911347151,-0.027360767126083,0.010944825597107,0.021593783050776));
res += mul(Get(s2,dx,0), float4x4(-0.056533474475145,0.006551853381097,-0.017971033230424,-0.072527036070824,-0.025864005088806,-0.016106158494949,-0.003151867073029,-0.030720731243491,0.022445047274232,0.011191146448255,0.032363999634981,-0.012053552083671,-0.059001546353102,0.007979140616953,-0.016187509521842,-0.011196968145669));
res += mul(Get(s2,dx,dy), float4x4(-0.044671703130007,0.006008894648403,-0.023222563788295,-0.003865567967296,0.046374499797821,0.015654388815165,-0.005916864611208,-0.038083691149950,-0.018810035660863,-0.008633712306619,-0.025098621845245,-0.020357722416520,-0.032471895217896,-0.040114726871252,-0.013212660327554,0.049623604863882));
res += mul(Get(s3,-dx,-dy), float4x4(-0.054933369159698,0.008784391917288,0.011537103913724,0.002876271959394,-0.032041624188423,-0.041231803596020,-0.002298606093973,0.000988961081021,0.065984800457954,0.040637277066708,-0.005869126878679,0.030680144205689,-0.004955242387950,-0.029281904920936,0.000709192478098,-0.003299006726593));
res += mul(Get(s3,-dx,0), float4x4(-0.034220349043608,0.008425543084741,0.009528914466500,-0.004335757344961,0.007894045673311,-0.015819543972611,0.014279087074101,0.016243226826191,0.023481702432036,-0.020055878907442,0.045944377779961,0.011565415188670,0.022917438298464,-0.005118736997247,-0.024375285953283,-0.003435805672780));
res += mul(Get(s3,-dx,dy), float4x4(-0.030947919934988,0.033013813197613,-0.005049489904195,0.058888211846352,-0.019385734573007,-0.016040656715631,0.012933550402522,-0.013623556122184,0.007835999131203,0.004057993646711,0.012560657225549,0.011584872379899,-0.009260692633688,0.008741609752178,-0.015900189056993,-0.038423493504524));
res += mul(Get(s3,0,-dy), float4x4(-0.093952342867851,-0.035947769880295,0.020594717934728,0.037014078348875,0.013280274346471,-0.026800790801644,-0.004144652746618,0.005843705032021,-0.011380143463612,0.070544809103012,0.043952539563179,-0.023509625345469,-0.040069092065096,0.015811383724213,-0.004822413902730,0.003741736756638));
res += mul(Get(s3,0,0), float4x4(-0.001312993932515,0.024924522265792,-0.012388001196086,-0.024984037503600,-0.035178788006306,0.007904146797955,0.015565748326480,0.003773209406063,-0.072096839547157,-0.016988135874271,0.002756392816082,0.039750974625349,-0.021184759214520,0.000930351787247,-0.018852118402719,-0.015951259061694));
res += mul(Get(s3,0,dy), float4x4(0.034839943051338,0.020147632807493,-0.014131614007056,0.038989823311567,-0.037217132747173,-0.003144350601360,0.000951575057115,0.020524978637695,0.016128925606608,0.008055160753429,0.003648518584669,0.036364119499922,-0.033555593341589,0.020077502354980,0.001960833789781,-0.006615348625928));
res += mul(Get(s3,dx,-dy), float4x4(0.000126173108583,-0.040234908461571,0.016303356736898,0.005037597846240,-0.010436577722430,-0.043813612312078,0.011996589601040,0.021345911547542,-0.035749219357967,0.012306394986808,0.016969367861748,0.005218441598117,0.008286853320897,0.001091568614356,-0.012787823565304,0.026923527941108));
res += mul(Get(s3,dx,0), float4x4(0.050792239606380,0.008308305405080,-0.026861710473895,0.055805560201406,-0.033028885722160,-0.023954449221492,0.020677380263805,0.012146628461778,0.012919521890581,-0.002194658853114,-0.018375191837549,0.044711392372847,0.007694218773395,0.013387958519161,0.004829223267734,0.016500951722264));
res += mul(Get(s3,dx,dy), float4x4(-0.003877934301272,0.020291119813919,-0.028070814907551,0.063854187726974,-0.027248673141003,-0.019890174269676,0.027098426595330,0.033254589885473,-0.003494195174426,0.003176912432536,0.046543005853891,0.011099864728749,-0.002454997738823,-0.021618640050292,-0.026340696960688,0.007252765819430));
return max(float4(0,0,0,0), res);
}
