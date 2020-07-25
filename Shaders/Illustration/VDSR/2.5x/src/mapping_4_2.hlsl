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
res += mul(Get(s0,-dx,-dy), float4x4(0.028111381456256,-0.188001960515976,0.027787031605840,0.067055128514767,-0.082716546952724,-0.177362769842148,-0.053973849862814,-0.010877858847380,-0.089423142373562,0.047516174614429,0.064906947314739,-0.024936124682426,-0.114949546754360,0.066088333725929,0.084972366690636,0.145468026399612));
res += mul(Get(s0,-dx,0), float4x4(0.005780666135252,0.103832207620144,-0.008737511001527,-0.021462026983500,0.197188213467598,0.070601858198643,0.039246652275324,-0.087022386491299,0.005857767537236,0.025166044011712,0.068557411432266,0.009029714390635,0.027475215494633,-0.070470012724400,-0.101260401308537,0.255686253309250));
res += mul(Get(s0,-dx,dy), float4x4(-0.014520426280797,0.053208388388157,0.100931696593761,-0.049232885241508,-0.109549477696419,-0.103464141488075,-0.014290684834123,-0.007715330924839,0.017808690667152,0.128021061420441,-0.227381840348244,-0.171650335192680,-0.022925913333893,-0.134443193674088,-0.029281126335263,0.217508450150490));
res += mul(Get(s0,0,-dy), float4x4(0.132428020238876,-0.060248140245676,-0.229086011648178,-0.040188293904066,0.031020585447550,-0.076372958719730,0.210243567824364,-0.014722296968102,0.167695239186287,0.017730332911015,-0.085305310785770,-0.101127371191978,0.100469544529915,0.000671198533382,-0.200452685356140,0.124588571488857));
res += mul(Get(s0,0,0), float4x4(0.060448281466961,0.125397205352783,0.196630790829659,-0.084202222526073,-0.036234509199858,0.009673524647951,0.077717036008835,0.076675847172737,0.053508996963501,0.116611316800117,-0.082092441618443,-0.231830328702927,-0.163911014795303,0.239733085036278,-0.111607804894447,0.019133398309350));
res += mul(Get(s0,0,dy), float4x4(-0.011823915876448,0.038371030241251,0.123296447098255,0.048242408782244,0.040660854429007,0.035114917904139,-0.168075978755951,0.176054224371910,-0.127195760607719,0.136848196387291,-0.024355659261346,-0.053483542054892,-0.027207331731915,0.016562880948186,0.091129809617996,-0.069770812988281));
res += mul(Get(s0,dx,-dy), float4x4(-0.097095005214214,0.100303553044796,0.130099490284920,0.175928175449371,-0.047909315675497,-0.102012269198895,0.086572095751762,0.025464631617069,0.110668554902077,0.072733320295811,0.025840301066637,0.132012650370598,0.029056232422590,0.137132659554482,-0.014887745492160,0.075011931359768));
res += mul(Get(s0,dx,0), float4x4(0.091109320521355,-0.038851257413626,-0.102774865925312,-0.010296434164047,-0.026094052940607,-0.064711734652519,-0.011773106642067,-0.142300814390182,0.050571803003550,-0.090760804712772,-0.018988752737641,0.099259003996849,0.018865386024117,-0.010329869575799,-0.353584706783295,-0.115906476974487));
res += mul(Get(s0,dx,dy), float4x4(0.099125869572163,-0.123832814395428,0.115117169916630,0.053452756255865,0.167857959866524,-0.041111558675766,-0.117503188550472,0.011834055185318,0.136245965957642,0.115024767816067,0.096835359930992,-0.062272999435663,-0.055535767227411,-0.110525809228420,0.023050321266055,0.093149751424789));
res += mul(Get(s1,-dx,-dy), float4x4(0.040552929043770,-0.023928107693791,0.006790689658374,-0.032032057642937,-0.002463107928634,-0.009391767904162,-0.116668477654457,-0.150960072875023,0.077481724321842,-0.033759303390980,-0.153998360037804,-0.185275718569756,0.045367218554020,-0.130103036761284,-0.106683075428009,-0.104678615927696));
res += mul(Get(s1,-dx,0), float4x4(-0.063270717859268,0.129170209169388,0.050250854343176,-0.225218281149864,-0.032347187399864,-0.066721938550472,-0.103830061852932,-0.033442225307226,0.116766043007374,0.030632058158517,-0.114613793790340,0.068324193358421,0.064350210130215,0.147434487938881,-0.084942251443863,0.042854093015194));
res += mul(Get(s1,-dx,dy), float4x4(-0.139916464686394,-0.042255394160748,0.125373527407646,0.110679902136326,-0.161346256732941,-0.043234847486019,0.119405746459961,0.180416926741600,-0.033818263560534,-0.022907363250852,0.005879573523998,-0.167178496718407,-0.181544929742813,0.090790040791035,0.091582097113132,-0.026313288137317));
res += mul(Get(s1,0,-dy), float4x4(-0.013084895908833,-0.026525938883424,0.032729115337133,-0.032077684998512,0.136009693145752,0.076473452150822,-0.092507101595402,0.010783453471959,0.151125758886337,0.010017386637628,0.033439315855503,0.133724689483643,-0.113738536834717,0.069163076579571,-0.057943653315306,-0.090276733040810));
res += mul(Get(s1,0,0), float4x4(-0.120252735912800,0.105743825435638,0.129214912652969,0.055317193269730,-0.066748268902302,0.081025652587414,0.080377116799355,0.096011191606522,0.079842813313007,0.019478838890791,0.203330606222153,0.036863148212433,0.069702968001366,0.129235535860062,-0.035020560026169,0.129625782370567));
res += mul(Get(s1,0,dy), float4x4(-0.065312325954437,0.001031099935062,-0.043739866465330,-0.140018582344055,-0.213874161243439,-0.011578408069909,-0.036152351647615,-0.054417591542006,0.038953505456448,0.184338048100471,0.081895887851715,0.075257323682308,-0.109659440815449,-0.083039373159409,0.128795355558395,0.015105829574168));
res += mul(Get(s1,dx,-dy), float4x4(0.075564041733742,0.057269558310509,-0.030969254672527,0.079974710941315,0.206461489200592,-0.063647165894508,0.188257023692131,-0.087000034749508,-0.028967978432775,0.024867901578546,0.121263287961483,0.027551311999559,-0.007453205529600,-0.161237478256226,-0.103380352258682,-0.096775397658348));
res += mul(Get(s1,dx,0), float4x4(-0.083278238773346,0.056918010115623,0.079643100500107,0.066678635776043,0.167480364441872,-0.114103578031063,-0.034129116684198,0.189806520938873,0.128517568111420,0.050143469125032,0.086518041789532,0.026765068992972,-0.060542400926352,-0.130131155252457,-0.020503303036094,-0.037231612950563));
res += mul(Get(s1,dx,dy), float4x4(-0.075733356177807,-0.047217249870300,0.039875086396933,0.060079365968704,-0.059607606381178,-0.039117254316807,-0.034404505044222,-0.204705551266670,0.141314029693604,-0.006169589702040,-0.146286666393280,-0.010062162764370,-0.197196528315544,0.017696041613817,-0.116123519837856,0.029805615544319));
res += mul(Get(s2,-dx,-dy), float4x4(0.029432499781251,-0.149747475981712,0.116331011056900,-0.130825504660606,-0.246809080243111,0.164029657840729,-0.036523941904306,-0.153165131807327,0.074270166456699,0.082470759749413,0.059338610619307,-0.058051306754351,0.088801711797714,-0.103535421192646,0.192048355937004,0.051365893334150));
res += mul(Get(s2,-dx,0), float4x4(-0.229690805077553,-0.200515344738960,0.191146314144135,0.099221058189869,0.220945969223976,-0.060314323753119,-0.200472399592400,0.003046019235626,-0.102275438606739,-0.038244117051363,-0.089663073420525,0.112700402736664,-0.081802479922771,-0.085845857858658,-0.086946912109852,0.228250771760941));
res += mul(Get(s2,-dx,dy), float4x4(-0.019969098269939,0.039339840412140,-0.196447238326073,-0.054608911275864,-0.070361077785492,0.193119525909424,-0.095670357346535,-0.179620310664177,0.027832815423608,0.137113705277443,0.165364146232605,0.095940075814724,-0.075931280851364,-0.087712571024895,-0.071142904460430,0.026172956451774));
res += mul(Get(s2,0,-dy), float4x4(0.020164649933577,-0.023146413266659,-0.020074157044291,-0.022709997370839,-0.022727953270078,-0.115397147834301,0.102508231997490,0.093189291656017,-0.166332259774208,-0.163774088025093,-0.182944849133492,-0.162842571735382,0.036826755851507,0.039874173700809,0.038956262171268,-0.079377278685570));
res += mul(Get(s2,0,0), float4x4(-0.061359465122223,0.035404831171036,0.117571905255318,-0.132874071598053,0.014687048271298,-0.141839668154716,0.137006253004074,-0.171297922730446,-0.148061886429787,-0.023143116384745,0.142868459224701,0.053637083619833,0.011828939430416,-0.028752205893397,-0.221694141626358,-0.037210259586573));
res += mul(Get(s2,0,dy), float4x4(-0.068579889833927,-0.094954073429108,0.035213474184275,-0.112409166991711,-0.026258200407028,-0.059020847082138,-0.081666171550751,0.037163816392422,-0.013142392039299,-0.291157245635986,0.035943992435932,0.063915379345417,-0.018462987616658,0.008319051936269,-0.013874611817300,-0.090580560266972));
res += mul(Get(s2,dx,-dy), float4x4(0.053346548229456,-0.194216623902321,-0.017497278749943,-0.253050744533539,-0.206651344895363,0.045447681099176,-0.067944429814816,-0.050186689943075,0.162300273776054,0.048552639782429,-0.030019005760550,-0.232235282659531,-0.056528475135565,0.084832742810249,-0.149646967649460,-0.070401005446911));
res += mul(Get(s2,dx,0), float4x4(-0.051503725349903,-0.044205948710442,-0.063724912703037,-0.037794519215822,-0.100099302828312,-0.034157801419497,-0.044615630060434,0.178560271859169,0.003960707690567,0.003269177163020,0.001146237016656,-0.162548974156380,-0.142813488841057,0.051552187651396,0.010228433646262,0.060856882482767));
res += mul(Get(s2,dx,dy), float4x4(-0.185180902481079,-0.084788061678410,-0.131437838077545,-0.042705837637186,-0.050317868590355,0.042501982301474,0.027343662455678,0.124988235533237,0.000396634655772,-0.083866335451603,-0.193214729428291,0.052621200680733,0.095314309000969,0.178840368986130,-0.060565408319235,-0.014975680038333));
res += mul(Get(s3,-dx,-dy), float4x4(-0.173346742987633,0.003810141235590,-0.027848780155182,-0.196886390447617,-0.045109450817108,-0.122698009014130,0.164294138550758,-0.119624562561512,0.031009554862976,-0.064126193523407,0.164058059453964,-0.091379776597023,-0.060779824852943,-0.065643414855003,-0.045216374099255,0.038153700530529));
res += mul(Get(s3,-dx,0), float4x4(0.123217806220055,0.118289418518543,0.132811084389687,0.126823484897614,0.025922935456038,0.030217373743653,0.123210355639458,-0.037794500589371,0.053281530737877,-0.045331001281738,-0.014443041756749,0.029559817165136,-0.157444566488266,-0.034675315022469,-0.011715310625732,0.093215487897396));
res += mul(Get(s3,-dx,dy), float4x4(0.154379621148109,0.038694694638252,0.021971220150590,0.053725376725197,-0.032141510397196,0.040339983999729,-0.273965805768967,-0.074231252074242,0.005739556159824,-0.019431335851550,0.219137325882912,-0.090169578790665,-0.103006482124329,-0.260883837938309,-0.064344346523285,-0.021211752668023));
res += mul(Get(s3,0,-dy), float4x4(-0.054709292948246,-0.231428653001785,-0.008398709818721,0.077727951109409,-0.001431001466699,-0.074370287358761,-0.065574869513512,-0.130606874823570,0.051663685590029,-0.004780086223036,-0.212309390306473,0.060491412878036,-0.048847373574972,-0.118972934782505,0.074955224990845,0.256306707859039));
res += mul(Get(s3,0,0), float4x4(0.047288194298744,0.075043320655823,0.162171304225922,-0.173193290829659,0.098669208586216,0.036226127296686,0.113910846412182,0.200332209467888,0.122573971748352,0.174746125936508,0.073490656912327,-0.188844442367554,-0.068445727229118,-0.041018269956112,-0.114868760108948,-0.108042791485786));
res += mul(Get(s3,0,dy), float4x4(0.033096477389336,0.043598517775536,0.146545156836510,-0.121424086391926,-0.123930238187313,0.017888430505991,-0.007578509394079,-0.198352724313736,0.126221269369125,-0.016006471589208,-0.042206145823002,-0.118284285068512,-0.044632557779551,0.048073131591082,0.008444784209132,0.078906729817390));
res += mul(Get(s3,dx,-dy), float4x4(0.032529287040234,-0.008527335710824,0.107242941856384,0.071728453040123,0.050808589905500,0.178338602185249,-0.178322464227676,0.076982885599136,0.037437021732330,0.038246147334576,0.057861287146807,0.090701490640640,-0.027202347293496,0.088594391942024,0.034377392381430,-0.112109147012234));
res += mul(Get(s3,dx,0), float4x4(-0.221774727106094,0.132930129766464,0.158498331904411,0.176837265491486,-0.100772395730019,0.096272401511669,-0.082209534943104,0.234543845057487,0.036906581372023,-0.043207012116909,-0.130333170294762,-0.024761557579041,-0.034727405756712,-0.063646972179413,0.056280311197042,-0.076528422534466));
res += mul(Get(s3,dx,dy), float4x4(-0.035828605294228,-0.032443080097437,0.155692934989929,0.086782664060593,-0.088810108602047,-0.113610275089741,0.035742979496717,0.089883804321289,0.151078313589096,-0.135683670639992,0.070486739277840,-0.116240687668324,-0.132014289498329,-0.151693075895309,-0.004521327558905,0.205199941992760));
return max(float4(0,0,0,0), res);
}