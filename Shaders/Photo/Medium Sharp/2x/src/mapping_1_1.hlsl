sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.001831743866205,-0.032207619398832,-0.172101810574532,0.084841936826706);
res += mul(Get(s0,-dx,-dy), float4x4(-0.044845417141914,-0.159569069743156,-0.014287752099335,-0.169291719794273,0.100561171770096,-0.046618111431599,-0.123842231929302,-0.007911648601294,-0.030299700796604,0.058331813663244,0.037586111575365,-0.179511234164238,0.165944635868073,0.077534526586533,0.016475465148687,-0.077793627977371));
res += mul(Get(s0,-dx,0), float4x4(-0.061202097684145,0.017373682931066,-0.016817096620798,0.155116334557533,-0.208144620060921,-0.157496273517609,-0.192742928862572,0.064908973872662,0.018326753750443,-0.157680347561836,0.196835562586784,0.205738231539726,0.094823241233826,0.086903147399426,-0.095334678888321,-0.066276773810387));
res += mul(Get(s0,-dx,dy), float4x4(-0.068774051964283,0.032058972865343,-0.060277312994003,-0.093573793768883,-0.020530490204692,0.171130821108818,-0.216629579663277,0.012834881432354,0.032920241355896,-0.055064771324396,-0.062620922923088,0.040704417973757,0.104916609823704,0.057574063539505,-0.027236450463533,-0.034489814192057));
res += mul(Get(s0,0,-dy), float4x4(-0.074847057461739,-0.076553791761398,-0.041430544108152,0.096145890653133,0.017462102696300,0.059933762997389,0.089003078639507,0.134207069873810,0.157877296209335,0.220232233405113,0.045083552598953,-0.021518494933844,-0.025088733062148,-0.015895593911409,0.271530836820602,0.073968268930912));
res += mul(Get(s0,0,0), float4x4(0.069791682064533,0.099198877811432,-0.070479296147823,0.031470496207476,-0.133939370512962,-0.239105686545372,-0.080945767462254,-0.072297394275665,0.032691959291697,-0.126889690756798,0.117953658103943,-0.054712872952223,0.017942532896996,0.029150703921914,0.291648685932159,0.007792911957949));
res += mul(Get(s0,0,dy), float4x4(-0.096558943390846,0.013530964963138,-0.066316671669483,0.059386134147644,-0.134444952011108,0.312527358531952,-0.051155541092157,-0.070828974246979,-0.119690679013729,-0.031989939510822,-0.002696586307138,-0.014945353381336,0.011959646828473,-0.065842352807522,0.179919674992561,0.031934309750795));
res += mul(Get(s0,dx,-dy), float4x4(0.125871807336807,0.005344753619283,0.117662280797958,0.005004986654967,-0.165293902158737,-0.162354588508606,0.101182088255882,-0.028805028647184,-0.058262091130018,0.097743920981884,0.052426472306252,0.039451204240322,-0.099660217761993,0.128397718071938,0.140245705842972,-0.179169490933418));
res += mul(Get(s0,dx,0), float4x4(0.133204177021980,0.111074149608612,-0.025661788880825,-0.052931595593691,0.266381412744522,0.001923173666000,0.091878801584244,-0.013407065533102,0.062598548829556,0.103183895349503,0.197968095541000,-0.063466951251030,-0.266930162906647,-0.154268190264702,-0.100392714142799,-0.088924065232277));
res += mul(Get(s0,dx,dy), float4x4(-0.050495218485594,0.069863177835941,0.000814694561996,0.010501619428396,0.243315652012825,0.064128294587135,0.033522669225931,0.040623798966408,0.018436724320054,-0.150265455245972,0.018984811380506,0.036328937858343,0.014777852222323,-0.127142578363419,-0.053594186902046,-0.132593795657158));
res += mul(Get(s1,-dx,-dy), float4x4(-0.037492163479328,-0.049962308257818,-0.053275983780622,-0.130698561668396,0.034846063703299,0.017823114991188,-0.048612419515848,0.167001754045486,-0.047902170568705,-0.121752493083477,-0.134176582098007,0.019227951765060,0.072695672512054,0.067373044788837,0.016704438254237,0.054128430783749));
res += mul(Get(s1,-dx,0), float4x4(-0.125642418861389,-0.028747897595167,-0.071476101875305,-0.246760368347168,-0.043913003057241,-0.058584045618773,-0.137331247329712,-0.031511727720499,-0.147844582796097,-0.085501372814178,0.037076361477375,0.015348673798144,-0.016490319743752,-0.012743827886879,0.131352260708809,0.063248492777348));
res += mul(Get(s1,-dx,dy), float4x4(0.055456411093473,-0.069991454482079,-0.063947513699532,-0.089361146092415,-0.064628042280674,-0.097169265151024,-0.064986504614353,0.154499456286430,-0.067316591739655,-0.052788477391005,0.039365123957396,-0.086027175188065,-0.072343640029430,0.128994509577751,0.018078243359923,-0.004203970078379));
res += mul(Get(s1,0,-dy), float4x4(0.055747244507074,0.066854618489742,0.161144345998764,0.278343379497528,-0.097938239574432,-0.195969223976135,-0.027446685358882,-0.047472976148129,0.136266306042671,0.038226950913668,-0.057750467211008,0.065959677100182,0.044450040906668,0.027510600164533,0.158002853393555,0.012642163783312));
res += mul(Get(s1,0,0), float4x4(0.068535119295120,-0.161425560712814,-0.058286327868700,-0.070967391133308,-0.139391914010048,0.064513064920902,0.051409851759672,-0.015052125789225,-0.085144676268101,-0.100715823471546,-0.115031316876411,0.042979426681995,0.066446632146835,0.096913002431393,0.048905439674854,-0.162378162145615));
res += mul(Get(s1,0,dy), float4x4(-0.066204331815243,0.003100353060290,-0.134386405348778,0.048135966062546,0.028347289189696,0.002946100896224,0.001717832521535,-0.088876128196716,0.111803919076920,0.187029957771301,-0.227016687393188,-0.089831002056599,0.018344011157751,0.007096189539880,-0.004644203465432,-0.033705856651068));
res += mul(Get(s1,dx,-dy), float4x4(-0.142297253012657,-0.215556487441063,0.043765526264906,-0.155780926346779,0.002230072394013,-0.057886544615030,-0.000632439972833,-0.087352260947227,-0.080916672945023,0.026869371533394,0.007867740467191,-0.172926291823387,-0.001790492678992,0.045479960739613,0.017567297443748,0.130384087562561));
res += mul(Get(s1,dx,0), float4x4(0.356921911239624,-0.111504092812538,0.075376994907856,-0.144848391413689,0.141947686672211,-0.139989018440247,0.070342496037483,-0.065361157059669,0.310435771942139,-0.221340537071228,0.158142730593681,-0.018661696463823,-0.046555452048779,0.176746010780334,0.179126977920532,0.001971634337679));
res += mul(Get(s1,dx,dy), float4x4(0.020376777276397,-0.143841922283173,0.079392112791538,-0.078447811305523,0.017497310414910,0.062914177775383,-0.048495538532734,-0.120018556714058,-0.080874741077423,0.016933707520366,0.054710194468498,0.033868163824081,-0.019989669322968,0.047180090099573,-0.197740837931633,0.082083635032177));
res += mul(Get(s2,-dx,-dy), float4x4(-0.001713312347420,-0.135556548833847,-0.084054201841354,-0.024327058345079,0.006035593338311,0.103879101574421,0.081237070262432,0.102658696472645,0.023988954722881,0.057442311197519,0.027509661391377,0.014705304987729,-0.015196722000837,0.006286637857556,0.032737076282501,0.016308601945639));
res += mul(Get(s2,-dx,0), float4x4(-0.191366791725159,-0.182584717869759,0.019961724057794,-0.104673542082310,0.011227053590119,0.092419810593128,-0.000819407228846,0.079901374876499,-0.078472137451172,-0.039661306887865,-0.011246540583670,-0.147354960441589,-0.100636020302773,0.015038099139929,-0.013866686262190,-0.180957868695259));
res += mul(Get(s2,-dx,dy), float4x4(-0.013876112177968,0.008321858011186,-0.042055327445269,-0.088334947824478,-0.001101252390072,-0.038769058883190,0.088849641382694,0.033481009304523,-0.018212128430605,0.014776072464883,0.004254336934537,0.202579692006111,-0.001818449585699,0.145456135272980,-0.052041430026293,0.010316331870854));
res += mul(Get(s2,0,-dy), float4x4(0.049504965543747,-0.045078683644533,0.245731100440025,-0.033888977020979,-0.011735693551600,0.082336708903313,0.018212368711829,-0.025800904259086,-0.116313025355339,-0.114949569106102,-0.006356385070831,-0.035040851682425,0.026963584125042,0.002566973678768,0.073039434850216,-0.175622418522835));
res += mul(Get(s2,0,0), float4x4(-0.064476333558559,-0.080128386616707,0.302429497241974,-0.078942835330963,0.065244153141975,0.080024018883705,-0.104742959141731,0.041755713522434,0.048255540430546,-0.113486528396606,-0.018683599308133,-0.199028566479683,0.053286146372557,-0.191422879695892,-0.064518071711063,0.138823285698891));
res += mul(Get(s2,0,dy), float4x4(0.003423077054322,-0.114972233772278,0.165401682257652,-0.172919407486916,-0.023985380306840,0.082255616784096,0.099385827779770,-0.056094408035278,-0.155598774552345,0.118691131472588,-0.110025592148304,-0.021126020699739,-0.221504777669907,0.164484366774559,-0.141542121767998,-0.057985141873360));
res += mul(Get(s2,dx,-dy), float4x4(-0.283369898796082,-0.054951254278421,-0.229058265686035,-0.190659686923027,-0.007956995628774,-0.004893743898720,-0.091127052903175,-0.020593965426087,0.087300442159176,0.032093919813633,-0.010827370919287,0.053394317626953,-0.167003348469734,-0.009358596056700,0.068017430603504,-0.107935845851898));
res += mul(Get(s2,dx,0), float4x4(-0.195381045341492,-0.157866060733795,-0.017181413248181,-0.127344012260437,-0.095054596662521,-0.036251574754715,-0.100832827389240,0.065008416771889,0.177624419331551,-0.141853213310242,0.001773522119038,-0.113718681037426,0.129578217864037,-0.111998192965984,-0.000490939244628,-0.126057624816895));
res += mul(Get(s2,dx,dy), float4x4(-0.063047759234905,0.315704345703125,-0.115789271891117,-0.172695025801659,0.018900997936726,0.109296195209026,-0.056926455348730,-0.059926215559244,0.033716931939125,-0.016988966614008,0.122332796454430,0.139023020863533,0.055903669446707,0.083549499511719,0.010727415792644,0.062396783381701));
res += mul(Get(s3,-dx,-dy), float4x4(-0.008162070065737,0.025112468749285,-0.064208671450615,-0.148068040609360,-0.006319610867649,0.094468377530575,-0.057306688278913,0.021884700283408,-0.094322383403778,-0.006768547929823,0.132518649101257,0.202081874012947,0.037340916693211,-0.027078550308943,0.021927753463387,-0.145810961723328));
res += mul(Get(s3,-dx,0), float4x4(0.165620341897011,0.098826095461845,-0.166425004601479,-0.059054039418697,-0.148092925548553,0.187560588121414,0.003356375265867,0.030789557844400,-0.197194650769234,0.018405692651868,-0.143611758947372,-0.072405524551868,0.045497998595238,-0.038813147693872,-0.003207675646991,-0.037236884236336));
res += mul(Get(s3,-dx,dy), float4x4(-0.005899856798351,0.007435966748744,-0.037059262394905,-0.001200096332468,-0.055428437888622,-0.069414705038071,0.005612667184323,-0.188797563314438,-0.013860869221389,0.066181227564812,-0.003983858507127,0.151332587003708,0.018610231578350,0.122221454977989,-0.021531593054533,0.181474119424820));
res += mul(Get(s3,0,-dy), float4x4(0.051453895866871,-0.002527506789193,-0.016203248873353,-0.015492170117795,0.004153931979090,-0.016961654648185,0.166475221514702,-0.268287688493729,0.024685082957149,-0.010530337691307,-0.083324797451496,-0.040918748825788,-0.051088221371174,0.019748685881495,0.068114921450615,0.046218432486057));
res += mul(Get(s3,0,0), float4x4(-0.003508792025968,0.149729579687119,-0.022772878408432,0.007101535331458,-0.346417665481567,0.066242903470993,0.160790041089058,0.081431090831757,-0.118662066757679,0.105493105947971,0.100389681756496,-0.094976589083672,0.019446037709713,-0.026651717722416,0.023293606936932,0.053180053830147));
res += mul(Get(s3,0,dy), float4x4(-0.005352380685508,-0.064501591026783,-0.081107825040817,-0.048161230981350,-0.019035024568439,-0.111148431897163,0.202488198876381,-0.077624745666981,0.084921203553677,0.115279465913773,-0.042407289147377,0.020794684067369,-0.267572790384293,-0.005940990522504,-0.048584688454866,-0.029725531116128));
res += mul(Get(s3,dx,-dy), float4x4(-0.070355743169785,0.003204782493412,-0.031271774321795,-0.026421597227454,0.015129989013076,0.037412457168102,-0.100694671273232,-0.226150318980217,-0.110847681760788,-0.031257491558790,0.094508163630962,-0.007991745136678,-0.001267018145882,0.091844834387302,-0.032019104808569,-0.023552941158414));
res += mul(Get(s3,dx,0), float4x4(-0.022080613300204,0.124925456941128,-0.027924703434110,0.027802752330899,0.101707570254803,-0.003829369787127,0.040630411356688,-0.069875478744507,-0.045666895806789,0.010212970897555,0.114543169736862,0.012971756048501,0.055283132940531,-0.067877501249313,0.011369316838682,-0.164904758334160));
res += mul(Get(s3,dx,dy), float4x4(0.058193519711494,0.100476570427418,-0.096513301134109,0.009395995177329,0.114175468683243,0.074332647025585,-0.102331139147282,-0.067817546427250,0.238781362771988,0.078286826610565,-0.097598433494568,-0.118207126855850,0.229669630527496,-0.085768915712833,-0.017003381624818,0.095622889697552));
res += mul(Get(s4,-dx,-dy), float4x4(-0.044650360941887,-0.016530551016331,-0.057734586298466,-0.109229244291782,-0.082873240113258,-0.050645079463720,0.013723153620958,-0.110153689980507,0.015127159655094,0.010679545812309,-0.021739237010479,-0.138895764946938,0.068010948598385,0.065495073795319,-0.040609370917082,0.138598725199699));
res += mul(Get(s4,-dx,0), float4x4(0.069281145930290,0.110523611307144,-0.170003831386566,-0.268713325262070,-0.018975257873535,0.005323352757841,-0.173276409506798,0.027806228026748,0.037003904581070,-0.009925018064678,0.171223446726799,0.046036981046200,-0.031293153762817,-0.290080219507217,-0.018809024244547,0.046658661216497));
res += mul(Get(s4,-dx,dy), float4x4(0.041365124285221,-0.030413543805480,0.002775299595669,0.111582010984421,-0.041926365345716,-0.154139265418053,-0.046233344823122,-0.023677263408899,0.044673644006252,0.033286303281784,0.100000657141209,0.027408979833126,-0.111502341926098,0.207193702459335,-0.059467472136021,0.044027328491211));
res += mul(Get(s4,0,-dy), float4x4(0.038332965224981,0.066174075007439,0.150301277637482,0.273996204137802,-0.107427157461643,0.085541389882565,0.045996196568012,0.021727744489908,0.024228446185589,0.098305426537991,-0.023021468892694,0.166306018829346,-0.138366371393204,-0.238777801394463,0.013480364345014,-0.164051175117493));
res += mul(Get(s4,0,0), float4x4(-0.317132383584976,-0.155078470706940,0.046601299196482,-0.058205023407936,-0.147234499454498,0.060175668448210,-0.168728440999985,0.041482895612717,-0.069135576486588,-0.053748577833176,-0.155651539564133,-0.115088596940041,0.234665960073471,-0.039123043417931,0.008496534079313,0.047630768269300));
res += mul(Get(s4,0,dy), float4x4(-0.022217076271772,0.084230400621891,-0.107154764235020,0.176662325859070,0.045860752463341,-0.135498106479645,0.038490187376738,-0.042477145791054,0.032002307474613,0.014085567556322,0.096116498112679,-0.057056423276663,0.116107925772667,0.187827140092850,-0.004710509907454,-0.043509848415852));
res += mul(Get(s4,dx,-dy), float4x4(-0.313231408596039,-0.121450878679752,-0.010213707573712,-0.164860591292381,0.018950734287500,0.080747723579407,0.014963331632316,-0.035886708647013,-0.204896301031113,-0.082484826445580,-0.086812391877174,0.023489566519856,0.014044154435396,0.024960909038782,0.001336524728686,0.005372741259634));
res += mul(Get(s4,dx,0), float4x4(0.488507479429245,0.054745942354202,-0.076801359653473,-0.058818608522415,-0.106244035065174,0.017955955117941,-0.159184932708740,0.025739958509803,0.112940125167370,0.029547154903412,0.014962167479098,0.143104195594788,0.074099272489548,-0.068052895367146,-0.042789824306965,-0.016203174367547));
res += mul(Get(s4,dx,dy), float4x4(0.005153483711183,0.004989283625036,0.178020164370537,0.104748442769051,0.069762088358402,-0.168019264936447,-0.120117612183094,0.033131156116724,-0.018050406128168,0.013779160566628,-0.038177069276571,-0.173669010400772,-0.048121221363544,-0.037201799452305,-0.140973031520844,-0.125653892755508));
res += mul(Get(s5,-dx,-dy), float4x4(0.033760316669941,0.036182239651680,0.026127509772778,-0.065870672464371,-0.075905941426754,0.076846480369568,0.114054769277573,-0.062405209988356,0.101431623101234,0.114386640489101,-0.103382281959057,-0.084891110658646,-0.006420408841223,-0.037487462162971,0.014404361136258,0.281163483858109));
res += mul(Get(s5,-dx,0), float4x4(-0.021313799545169,0.039977673441172,-0.065837986767292,-0.022034034132957,-0.003094600513577,-0.002740485128015,-0.040494870394468,-0.110452324151993,-0.159821346402168,-0.255285024642944,0.019710669294000,-0.236052781343460,0.116990797221661,0.035257212817669,0.037308283150196,-0.086535364389420));
res += mul(Get(s5,-dx,dy), float4x4(0.112210035324097,0.022169068455696,0.035114973783493,0.009984238073230,-0.127475351095200,0.027438551187515,-0.016465550288558,-0.061259649693966,-0.116995558142662,0.267783880233765,-0.030851647257805,-0.085166133940220,0.137948110699654,0.045455344021320,-0.107798434793949,0.009406016208231));
res += mul(Get(s5,0,-dy), float4x4(0.010007346048951,-0.084950737655163,0.128714561462402,0.030647706240416,-0.124123290181160,-0.020586514845490,-0.057698894292116,-0.228350043296814,-0.187583804130554,0.081474706530571,0.000482160918182,-0.118998058140278,-0.143135339021683,0.026152044534683,-0.073848389089108,0.075474418699741));
res += mul(Get(s5,0,0), float4x4(0.052445165812969,-0.027950404211879,-0.090464800596237,-0.014236527495086,-0.167497187852859,0.177234187722206,0.041286472231150,-0.081967733800411,0.242100879549980,0.383388340473175,0.214629814028740,0.055529840290546,-0.019461985677481,0.112107582390308,0.162585124373436,-0.030878467485309));
res += mul(Get(s5,0,dy), float4x4(0.035819981247187,-0.181239873170853,-0.019585739821196,-0.025690110400319,-0.051668539643288,0.068622581660748,-0.216543391346931,-0.029605584219098,-0.001355242100544,0.059244912117720,0.044631291180849,0.075420081615448,-0.018248733133078,-0.213114365935326,0.006931647658348,0.102529525756836));
res += mul(Get(s5,dx,-dy), float4x4(-0.053905829787254,-0.220640107989311,0.104333259165287,-0.050723716616631,-0.058087304234505,-0.049021810293198,0.242168456315994,0.121275715529919,0.054272931069136,0.108862072229385,-0.011538510210812,0.005661045666784,0.138535082340240,-0.030447980388999,-0.019641239196062,-0.030286522582173));
res += mul(Get(s5,dx,0), float4x4(-0.041222497820854,-0.044734258204699,0.037042964249849,0.025990873575211,-0.038551397621632,0.153295889496803,0.115478016436100,0.028927344828844,-0.040459565818310,-0.122092500329018,0.061383627355099,0.007717110682279,-0.284562230110168,0.045446060597897,0.017840955406427,-0.249000549316406));
res += mul(Get(s5,dx,dy), float4x4(-0.062770307064056,-0.126365214586258,0.008281020447612,-0.015932956710458,0.139784589409828,0.056760676205158,-0.045082554221153,0.031414773315191,0.115758471190929,0.029292924329638,0.008526389487088,0.001808343455195,0.091256357729435,-0.037001218646765,0.136708751320839,0.011316588148475));
res = max(float4(0, 0, 0, 0), res) + float4(-0.007272320333868,0.051259580999613,0.088011495769024,0.545043826103210) * min(float4(0, 0, 0, 0), res);
return res;
}