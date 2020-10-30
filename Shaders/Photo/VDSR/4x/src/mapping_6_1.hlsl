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
res += mul(Get(s0,-dx,-dy), float4x4(-0.045003887265921,-0.009683175943792,0.002399691846222,-0.059671759605408,0.122141070663929,0.046729583293200,-0.067252121865749,-0.081027902662754,0.023214993998408,0.223342061042786,0.206067010760307,-0.173006907105446,-0.229029834270477,-0.062595844268799,-0.004086877219379,0.015859240666032));
res += mul(Get(s0,-dx,0), float4x4(0.080031856894493,0.045085065066814,0.063311427831650,-0.073777385056019,-0.094995766878128,-0.127122923731804,-0.042898245155811,-0.064464911818504,-0.009223923087120,0.155965149402618,-0.029451806098223,-0.029294194653630,-0.051571890711784,0.047335650771856,-0.044105958193541,-0.006419172044843));
res += mul(Get(s0,-dx,dy), float4x4(-0.152962833642960,0.016875540837646,-0.091851294040680,-0.052109189331532,-0.134122684597969,-0.120356194674969,-0.078368417918682,-0.196264863014221,-0.043666820973158,0.177693158388138,0.004314610734582,-0.114729203283787,0.136791214346886,0.038925260305405,-0.084039025008678,-0.087246350944042));
res += mul(Get(s0,0,-dy), float4x4(0.015368943102658,-0.094920516014099,-0.088277310132980,-0.165710255503654,0.085042499005795,0.124673642218113,0.087059743702412,-0.055130165070295,0.131239399313927,0.053065802901983,0.215556904673576,0.086785808205605,-0.137565344572067,-0.038747020065784,-0.067681737244129,-0.122022487223148));
res += mul(Get(s0,0,0), float4x4(0.062705256044865,-0.045283962041140,-0.047130443155766,-0.124041430652142,0.017740864306688,-0.089791215956211,0.125432655215263,0.133794829249382,-0.052997656166553,0.002971130423248,0.023227563127875,0.077558569610119,-0.014822673983872,0.005666702985764,-0.124277643859386,-0.048433590680361));
res += mul(Get(s0,0,dy), float4x4(-0.115153580904007,0.058199368417263,-0.091459572315216,-0.046261511743069,0.034569565206766,-0.059177260845900,-0.116267904639244,-0.194081038236618,-0.058723129332066,0.115798473358154,-0.102132409811020,-0.088345341384411,-0.054607100784779,-0.056096933782101,0.115211591124535,-0.059269994497299));
res += mul(Get(s0,dx,-dy), float4x4(0.071737244725227,-0.083137214183807,-0.029130743816495,-0.133473113179207,0.087906800210476,0.102982498705387,-0.058803990483284,-0.114729203283787,-0.076377421617508,0.007955386303365,-0.062439989298582,0.233094260096550,-0.227746829390526,-0.096496760845184,0.023132750764489,-0.140079110860825));
res += mul(Get(s0,dx,0), float4x4(-0.064594775438309,-0.066184349358082,-0.134334385395050,0.014128532260656,-0.060707978904247,-0.144837707281113,-0.128664359450340,0.026439735665917,-0.067108109593391,-0.190700054168701,-0.021768406033516,0.011424541473389,-0.092497952282429,-0.085593231022358,-0.104177922010422,-0.113107591867447));
res += mul(Get(s0,dx,dy), float4x4(-0.093594908714294,0.003230739384890,-0.148316323757172,0.004633068572730,0.340872406959534,-0.150057524442673,-0.139400452375412,0.269247859716415,-0.025939930230379,0.172190651297569,-0.136829003691673,-0.153881385922432,-0.096332252025604,0.014712211675942,0.043940901756287,-0.046091124415398));
res += mul(Get(s1,-dx,-dy), float4x4(0.249203085899353,0.101708985865116,-0.158443614840508,-0.195617556571960,-0.024942245334387,0.022430596873164,0.044470302760601,-0.078334659337997,-0.070759050548077,-0.108297988772392,0.288223415613174,0.029581137001514,-0.024229066446424,0.025419034063816,-0.183406189084053,0.217727392911911));
res += mul(Get(s1,-dx,0), float4x4(-0.039520133286715,0.188120052218437,-0.077583149075508,-0.128037244081497,0.146403208374977,0.042439997196198,0.027564078569412,-0.046419847756624,0.038356456905603,-0.149920925498009,-0.020498964935541,-0.093168549239635,0.046471185982227,0.059805147349834,-0.034610372036695,-0.034960862249136));
res += mul(Get(s1,-dx,dy), float4x4(-0.030884180217981,0.029982494190335,0.100465178489685,-0.085930034518242,-0.014050893485546,-0.018033469095826,-0.130068510770798,-0.086663983762264,0.025600763037801,0.114654511213303,-0.128124371170998,-0.031484428793192,0.108491025865078,0.189018979668617,0.036421224474907,-0.181757867336273));
res += mul(Get(s1,0,-dy), float4x4(0.136538818478584,-0.009982414543629,0.153670594096184,0.114389561116695,0.142024487257004,-0.097427092492580,-0.015663478523493,-0.229589641094208,0.100342348217964,0.024466762319207,-0.225826099514961,0.097607620060444,-0.066823452711105,0.097654961049557,0.051059480756521,0.136621505022049));
res += mul(Get(s1,0,0), float4x4(-0.000127272185637,-0.127985522150993,-0.014506097882986,-0.039897613227367,0.163293510675430,0.029065933078527,0.096658907830715,-0.087932355701923,-0.029063140973449,-0.039985522627831,-0.148042097687721,0.031346883624792,-0.018940698355436,-0.089494340121746,0.002734554931521,-0.109879754483700));
res += mul(Get(s1,0,dy), float4x4(0.049840226769447,0.015248264186084,-0.029169093817472,-0.088102586567402,-0.047487121075392,0.062806673347950,0.003011937718838,-0.096463158726692,-0.193573087453842,0.090615019202232,-0.070053011178970,-0.178655087947845,0.057849545031786,0.072968579828739,0.095615647733212,-0.261360764503479));
res += mul(Get(s1,dx,-dy), float4x4(-0.007145070936531,-0.024704696610570,0.128042876720428,0.178355306386948,0.050661694258451,-0.098537243902683,-0.028200626373291,0.158098682761192,0.188428729772568,-0.086760714650154,-0.042611096054316,0.131666541099548,0.018381256610155,0.024336256086826,-0.062162049114704,0.071629285812378));
res += mul(Get(s1,dx,0), float4x4(0.041122376918793,-0.014750869013369,0.018466448411345,-0.005930966697633,0.042867522686720,-0.090818576514721,-0.051239367574453,0.217499539256096,0.031437993049622,-0.093579091131687,0.038846794515848,-0.062724441289902,-0.065208591520786,-0.090139694511890,0.072197750210762,0.034043926745653));
res += mul(Get(s1,dx,dy), float4x4(0.038415182381868,-0.062349777668715,-0.021028175950050,-0.049489736557007,-0.005328904371709,0.049193177372217,-0.054563045501709,0.032101083546877,-0.126913264393806,0.149935707449913,-0.048240508884192,-0.089982971549034,-0.142671972513199,0.071819022297859,0.465078979730606,-0.130025461316109));
res += mul(Get(s2,-dx,-dy), float4x4(-0.135061696171761,0.028030935674906,-0.078778997063637,-0.149864077568054,0.005504468455911,0.007803057786077,-0.020642319694161,0.054809086024761,-0.058513410389423,-0.042621452361345,0.087564975023270,-0.098084338009357,-0.127507597208023,-0.062201529741287,0.001931176520884,-0.149367988109589));
res += mul(Get(s2,-dx,0), float4x4(0.004602923057973,-0.022017249837518,-0.015563330613077,0.062010992318392,0.060371078550816,0.009846772998571,0.111641690135002,0.056126244366169,0.043162599205971,-0.107766926288605,-0.012061635963619,0.040688656270504,-0.010372661054134,0.050241187214851,0.049000289291143,-0.088968664407730));
res += mul(Get(s2,-dx,dy), float4x4(-0.077833242714405,-0.003013226669282,-0.109833456575871,-0.098540283739567,0.043701313436031,-0.039156276732683,0.020413143560290,0.056097794324160,0.098418556153774,0.118591226637363,0.111648894846439,-0.083530783653259,-0.068781547248363,-0.051042102277279,0.056018576025963,-0.215265512466431));
res += mul(Get(s2,0,-dy), float4x4(0.003234287723899,0.018099600449204,-0.117970310151577,-0.082477539777756,-0.072046220302582,0.021877776831388,0.002519374713302,-0.010038995184004,-0.067191086709499,-0.056685429066420,0.075246728956699,-0.035435639321804,0.025308459997177,0.049082905054092,-0.077593795955181,-0.011845603585243));
res += mul(Get(s2,0,0), float4x4(-0.061739090830088,-0.158313348889351,-0.009297452867031,0.216257140040398,0.006678941193968,0.087443195283413,0.106432817876339,0.167314440011978,-0.116526782512665,-0.107269763946533,-0.017306728288531,0.003630420891568,0.011831533163786,0.108379013836384,-0.063700973987579,-0.038772217929363));
res += mul(Get(s2,0,dy), float4x4(-0.058010060340166,0.045369911938906,-0.039363853633404,0.132883384823799,-0.038496617227793,-0.021347060799599,-0.031355254352093,0.100055277347565,0.067148745059967,-0.062752425670624,-0.026956539601088,0.018974035978317,0.148312419652939,-0.057291366159916,-0.074894763529301,-0.102959923446178));
res += mul(Get(s2,dx,-dy), float4x4(-0.003057979745790,0.036762285977602,0.004093789961189,-0.118355482816696,0.020077900961041,0.042787555605173,0.034519981592894,-0.101140923798084,0.048204388469458,-0.140135839581490,0.031950414180756,-0.044861312955618,-0.081740364432335,0.007722740992904,-0.142614111304283,0.134886547923088));
res += mul(Get(s2,dx,0), float4x4(-0.089797213673592,-0.192046523094177,0.016556465998292,-0.017907936125994,0.144757539033890,0.116516277194023,0.049031008034945,0.213974297046661,0.068709723651409,0.011068715713918,0.031604286283255,-0.002873551333323,-0.059444662183523,-0.189432084560394,-0.042113889008760,0.027782838791609));
res += mul(Get(s2,dx,dy), float4x4(-0.201832130551338,-0.034142162650824,0.045073084533215,-0.148279339075089,-0.087767183780670,-0.024254105985165,-0.010626927018166,0.041832294315100,-0.059526156634092,-0.111602276563644,-0.059102110564709,-0.101826593279839,-0.029850091785192,0.230538561940193,0.032042741775513,-0.045814789831638));
res += mul(Get(s3,-dx,-dy), float4x4(-0.117794796824455,-0.025565555319190,0.043033584952354,-0.003811493050307,-0.049945086240768,-0.001349530182779,0.062983773648739,-0.036017458885908,-0.057089891284704,0.040399912744761,0.068390145897865,0.154027909040451,0.103922024369240,-0.079078018665314,-0.045439075678587,0.065467812120914));
res += mul(Get(s3,-dx,0), float4x4(0.088101230561733,-0.074896693229675,-0.047775160521269,-0.060181159526110,0.087054699659348,0.068977206945419,0.076039858162403,-0.092841938138008,0.005040388554335,0.072305411100388,-0.049390397965908,-0.034747689962387,-0.075220666825771,0.018955830484629,-0.033801142126322,0.086668141186237));
res += mul(Get(s3,-dx,dy), float4x4(-0.148450836539268,-0.037605296820402,-0.153634548187256,-0.121867693960667,0.027067156508565,0.023465555161238,-0.004620294552296,-0.146557837724686,-0.084712706506252,0.110078290104866,0.041464585810900,-0.105235993862152,-0.066566906869411,-0.091652490198612,0.015029077418149,0.175519466400146));
res += mul(Get(s3,0,-dy), float4x4(-0.063413947820663,0.044867303222418,0.014276251196861,-0.129137575626373,-0.135556727647781,0.080624938011169,-0.005175003781915,0.131205543875694,-0.126915767788887,-0.070350483059883,-0.012300666421652,0.104962483048439,-0.074365071952343,-0.109349936246872,-0.013412007130682,0.012411190196872));
res += mul(Get(s3,0,0), float4x4(0.061107952147722,0.078141361474991,0.084509462118149,-0.023805428296328,0.229821443557739,0.100668713450432,0.132526069879532,0.128429576754570,-0.045594666153193,-0.007457636762410,-0.085356533527374,0.103333242237568,-0.064514547586441,-0.054418537765741,-0.059802956879139,0.077889092266560));
res += mul(Get(s3,0,dy), float4x4(0.110537692904472,-0.060269840061665,-0.034900769591331,-0.114258497953415,0.132318004965782,0.060279753059149,-0.037552885711193,-0.146230503916740,-0.047473434358835,0.008496682159603,0.075713232159615,-0.129670903086662,0.189685136079788,-0.085906147956848,0.007897331379354,0.211121961474419));
res += mul(Get(s3,dx,-dy), float4x4(-0.021901197731495,0.006780399009585,0.131353244185448,0.136689826846123,0.029605766758323,0.072638258337975,-0.106721743941307,0.032489072531462,-0.215970173478127,-0.123461008071899,-0.013214723207057,-0.001706281094812,-0.040119148790836,-0.059421855956316,-0.026114676147699,-0.036085762083530));
res += mul(Get(s3,dx,0), float4x4(-0.056635592132807,-0.050813063979149,0.094453819096088,0.009805288165808,-0.018939975649118,0.053211349993944,0.011550945229828,0.113130919635296,0.015869876369834,-0.096945986151695,-0.072383075952530,0.104355469346046,0.073997393250465,0.000688276486471,-0.003275288036093,-0.110159441828728));
res += mul(Get(s3,dx,dy), float4x4(0.276145249605179,-0.060153506696224,0.081857822835445,0.113510668277740,-0.067900165915489,0.003929813392460,-0.022286919876933,0.211770057678223,0.027178654447198,-0.115138635039330,-0.146583646535873,-0.017752435058355,0.188884720206261,-0.057727947831154,0.161447256803513,0.076418757438660));
return max(float4(0,0,0,0), res);
}
