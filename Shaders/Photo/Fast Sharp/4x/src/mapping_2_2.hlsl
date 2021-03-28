sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.152339622378349,0.096906490623951,0.001133278128691,0.158482849597931);
res += mul(Get(s0,-dx,-dy), float4x4(0.008638472296298,0.065778084099293,0.332867264747620,-0.272654980421066,0.141126826405525,-0.014426462352276,0.069377794861794,0.579159438610077,0.079199686646461,-0.009040656499565,-0.229904651641846,-0.447323411703110,0.038712564855814,-0.031271893531084,-0.090900979936123,-0.087805174291134));
res += mul(Get(s0,-dx,0), float4x4(0.020498676225543,0.006146339233965,0.236294612288475,0.301424831151962,0.127924457192421,-0.167619109153748,-0.577205657958984,-0.027287906035781,-0.134872227907181,-0.055841688066721,0.047761060297489,-0.253540396690369,-0.083720140159130,0.108778312802315,0.251172631978989,-0.166198179125786));
res += mul(Get(s0,-dx,dy), float4x4(0.024782232940197,-0.020432511344552,-0.110345177352428,-0.113824285566807,0.001623437856324,-0.200039759278297,0.046684548258781,0.101540625095367,0.024738980457187,0.018342152237892,-0.234247729182243,-0.101817950606346,0.069122612476349,-0.056863505393267,-0.245577543973923,-0.048969145864248));
res += mul(Get(s0,0,-dy), float4x4(0.003529263660312,-0.018623879179358,0.109779931604862,0.038026027381420,0.194582283496857,-0.250443935394287,-0.158520638942719,0.380864024162292,0.050228737294674,-0.004731130786240,0.124109946191311,-0.289951622486115,-0.261902183294296,-0.246154457330704,0.088747292757034,0.031885053962469));
res += mul(Get(s0,0,0), float4x4(0.167761012911797,0.141035884618759,-0.381094604730606,0.564204454421997,-0.113255321979523,-0.060855064541101,-0.232916653156281,-0.096024423837662,0.000350789836375,-0.147309929132462,0.116924546658993,-0.346970617771149,0.145699396729469,0.511954724788666,-0.493116766214371,0.291229724884033));
res += mul(Get(s0,0,dy), float4x4(-0.028620537370443,0.487375020980835,0.046989679336548,-0.025436617434025,-0.014784724451602,0.011243966408074,-0.081153273582458,0.163209632039070,-0.226358026266098,-0.096997298300266,0.048164721578360,-0.308523565530777,0.036088142544031,-0.679592132568359,-0.083064705133438,0.076930791139603));
res += mul(Get(s0,dx,-dy), float4x4(0.037171885371208,0.015977418050170,0.146440029144287,-0.110273748636246,0.037568643689156,0.076522924005985,-0.164779990911484,0.159381568431854,-0.012175984680653,-0.048390753567219,-0.030346125364304,-0.081921547651291,0.092321172356606,0.128388911485672,0.029124753549695,0.040254496037960));
res += mul(Get(s0,dx,0), float4x4(0.015033205039799,0.084595896303654,0.197511762380600,-0.139466822147369,0.093550249934196,0.140987753868103,-0.248916298151016,-0.053743399679661,-0.076391950249672,0.034224364906549,0.046625275164843,-0.046190213412046,-0.277506232261658,0.038199823349714,0.212522938847542,-0.300060033798218));
res += mul(Get(s0,dx,dy), float4x4(0.144891828298569,-0.048346262425184,0.095684386789799,-0.015343352220953,0.094981685280800,-0.090150073170662,-0.118823617696762,0.082971692085266,-0.031004950404167,0.044954966753721,0.158300384879112,-0.028816131874919,-0.062490589916706,-0.138366818428040,0.220006600022316,-0.176099225878716));
res += mul(Get(s1,-dx,-dy), float4x4(-0.060468550771475,0.030937433242798,0.328565239906311,-0.136933654546738,-0.020885929465294,-0.028080012649298,-0.187591210007668,0.053692106157541,0.124243639409542,-0.010751624591649,0.018265955150127,0.189881354570389,-0.061776250600815,0.052548892796040,0.075228631496429,0.000708362436853));
res += mul(Get(s1,-dx,0), float4x4(-0.162968099117279,-0.004115136340261,0.628725886344910,-0.161684215068817,-0.230537518858910,-0.059577085077763,-0.712329864501953,-0.252019464969635,0.069777376949787,0.009834618307650,0.073283754289150,-0.144808098673820,0.118270292878151,-0.142363861203194,-0.494919270277023,0.005905092693865));
res += mul(Get(s1,-dx,dy), float4x4(-0.052803214639425,-0.124250747263432,-0.078598797321320,-0.281657218933105,-0.099433220922947,-0.011862881481647,-0.011847767047584,0.031607743352652,-0.140785738825798,0.216930285096169,-0.232426837086678,-0.145477101206779,-0.125736817717552,-0.078754454851151,0.623797893524170,0.428004860877991));
res += mul(Get(s1,0,-dy), float4x4(0.120195239782333,0.235620960593224,-0.016818685457110,-0.166135489940643,-0.046447463333607,0.040213283151388,-0.355485349893570,-0.277680128812790,-0.192298427224159,-0.106508530676365,-0.029260812327266,0.188648983836174,0.049076277762651,0.077295243740082,-0.030337164178491,-0.170470461249352));
res += mul(Get(s1,0,0), float4x4(0.088030181825161,-0.031498763710260,-0.168859079480171,-0.049315914511681,0.261475592851639,0.113300278782845,0.256622970104218,-0.167000472545624,-0.209269911050797,0.343958705663681,0.146713420748711,-0.394209206104279,-0.125883430242538,-0.416340202093124,0.261639773845673,0.240838110446930));
res += mul(Get(s1,0,dy), float4x4(-0.186992213129997,-0.156496226787567,0.073480091989040,-0.143019378185272,-0.010118286125362,-0.169643059372902,0.519134044647217,0.002872986020520,0.229529961943626,-0.716766119003296,0.230631411075592,0.134838417172432,0.379670143127441,0.188894167542458,-0.496898323297501,0.296252340078354));
res += mul(Get(s1,dx,-dy), float4x4(-0.054225865751505,0.325288683176041,-0.111672848463058,-0.169464975595474,0.075707145035267,0.042574428021908,0.065905131399632,-0.055766399949789,-0.097417436540127,-0.081879079341888,0.102532252669334,0.044369462877512,0.020771512761712,0.008385105058551,-0.033911395817995,0.006006256677210));
res += mul(Get(s1,dx,0), float4x4(-0.034944493323565,-0.068009205162525,0.146964907646179,-0.095295526087284,0.064951695501804,-0.261779844760895,-0.065856114029884,-0.154160216450691,-0.025101521983743,0.039343044161797,0.079445637762547,-0.237973600625992,-0.067977420985699,-0.096711568534374,-0.083023943006992,0.004468900151551));
res += mul(Get(s1,dx,dy), float4x4(-0.108135625720024,-0.190484911203384,0.070568606257439,0.057293049991131,0.038368046283722,-0.129012450575829,0.205842196941376,0.067298799753189,0.012913639657199,-0.347787201404572,-0.045190408825874,-0.094945751130581,-0.268486559391022,-0.024543063715100,0.017704958096147,-0.127130895853043));
res += mul(Get(s2,-dx,-dy), float4x4(-0.188601866364479,0.072127453982830,0.138187274336815,-0.153713598847389,0.082776650786400,0.121635884046555,0.115815065801144,0.139913380146027,-0.241900518536568,0.018482610583305,0.088635824620724,-0.076784498989582,-0.091659545898438,-0.249487847089767,-0.109216839075089,0.139561384916306));
res += mul(Get(s2,-dx,0), float4x4(-0.028017465025187,-0.166883558034897,-0.205552250146866,0.301018506288528,-1.145034670829773,-0.226272270083427,0.238800927996635,-0.318766146898270,-0.066956587135792,0.028081929311156,0.350565671920776,-0.238793909549713,-0.512353062629700,-0.112607657909393,0.298221796751022,-0.848612964153290));
res += mul(Get(s2,-dx,dy), float4x4(0.035336192697287,-0.222176954150200,-0.279795080423355,-0.171739935874939,-0.097559787333012,0.152195155620575,-0.030398551374674,0.256865680217743,0.115326590836048,0.024817856028676,-0.317136168479919,-0.117053635418415,-0.126101702451706,0.198005735874176,0.042068488895893,-0.087896898388863));
res += mul(Get(s2,0,-dy), float4x4(0.205921083688736,0.289249420166016,-0.061382468789816,-0.292466521263123,0.093056395649910,0.087244547903538,-0.144553571939468,-0.163387611508369,0.282626330852509,0.286441326141357,-0.260610103607178,-0.128515705466270,-0.008096273057163,-0.074620254337788,0.275336354970932,0.150973707437515));
res += mul(Get(s2,0,0), float4x4(0.527085125446320,-0.459778606891632,-0.135795116424561,0.568663239479065,0.045971389859915,-0.049970559775829,-0.039882399141788,-0.229684412479401,0.352166742086411,0.297923147678375,0.111837364733219,0.248022869229317,0.164593607187271,0.008305230177939,0.365935504436493,0.294005066156387));
res += mul(Get(s2,0,dy), float4x4(0.014578958041966,-0.424497127532959,0.436130076646805,-0.018859297037125,-0.007526753470302,-0.242140725255013,-0.181698530912399,-0.145753622055054,-0.154898658394814,-0.048051811754704,0.051955036818981,-0.074069246649742,0.072141289710999,0.154661118984222,0.048587188124657,0.019773323088884));
res += mul(Get(s2,dx,-dy), float4x4(0.041030555963516,0.016045326367021,-0.041433330625296,0.133967116475105,0.090023122727871,0.054704159498215,0.017278166487813,0.026836119592190,0.125354200601578,0.102944634854794,-0.111849740147591,-0.013867491856217,-0.078389979898930,-0.124462202191353,0.070061057806015,0.071165390312672));
res += mul(Get(s2,dx,0), float4x4(-0.294011861085892,-0.055796835571527,0.056815128773451,-0.269323050975800,-0.137134850025177,0.007232790812850,0.195683687925339,-0.082299225032330,-0.194472581148148,0.064595185220242,0.093658819794655,0.087060004472733,0.138736829161644,0.043438706547022,-0.196343824267387,-0.069134764373302));
res += mul(Get(s2,dx,dy), float4x4(-0.103947110474110,-0.029247172176838,-0.057031102478504,-0.142273828387260,0.043554391711950,0.137953862547874,-0.078636206686497,-0.024847308173776,0.008089344017208,-0.073498688638210,0.174531981348991,-0.164385870099068,-0.082661703228951,-0.048127923160791,0.081345118582249,-0.106233298778534));
res = max(float4(0, 0, 0, 0), res) + float4(-0.448847621679306,-0.325093418359756,0.103579111397266,0.863402664661407) * min(float4(0, 0, 0, 0), res);
return res;
}
