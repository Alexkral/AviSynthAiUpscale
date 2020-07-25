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
res += mul(Get(s0,-dx,-dy), float4x4(-0.071943126618862,-0.114193521440029,0.082483224570751,0.343234866857529,-0.080561041831970,-0.094096057116985,-0.060126014053822,-0.120753258466721,0.207146197557449,0.283678740262985,-0.044860940426588,-0.084769129753113,-0.174506381154060,-0.040130041539669,0.119589321315289,-0.027665404602885));
res += mul(Get(s0,-dx,0), float4x4(0.076106250286102,-0.057622779160738,0.059585254639387,-0.036787491291761,-0.093516066670418,0.190439239144325,-0.237777590751648,0.046052064746618,-0.010462425649166,-0.046684775501490,0.122987829148769,0.114108622074127,-0.121823914349079,0.089039169251919,0.263344734907150,-0.069987587630749));
res += mul(Get(s0,-dx,dy), float4x4(0.020760076120496,-0.120163701474667,0.067214392125607,-0.028847618028522,0.016360320150852,-0.021861428394914,-0.224789187312126,-0.181724280118942,-0.007719286717474,-0.201408177614212,0.209873035550117,0.016903487965465,0.135999277234077,0.055957946926355,0.109347827732563,0.111890353262424));
res += mul(Get(s0,0,-dy), float4x4(-0.192579805850983,0.138259753584862,-0.024747449904680,-0.060676835477352,0.018475746735930,0.130059063434601,-0.177196308970451,0.031347565352917,0.007321505341679,0.106289006769657,-0.188280448317528,0.062809400260448,0.120534069836140,-0.087457127869129,-0.084244906902313,0.135289475321770));
res += mul(Get(s0,0,0), float4x4(0.085131965577602,0.078301839530468,0.031919639557600,-0.221211373806000,0.134275451302528,0.180271312594414,-0.153261154890060,-0.068171150982380,0.026542769744992,-0.089546024799347,-0.129627823829651,-0.252468615770340,-0.089839227497578,-0.027989206835628,0.134340912103653,0.002639216138050));
res += mul(Get(s0,0,dy), float4x4(-0.130965247750282,-0.112970247864723,-0.049467422068119,-0.144916906952858,-0.199774622917175,-0.217467427253723,-0.185761258006096,-0.071162253618240,0.024366602301598,-0.190825939178467,0.134408622980118,0.033521622419357,-0.046432841569185,-0.102820701897144,-0.150190278887749,-0.119067616760731));
res += mul(Get(s0,dx,-dy), float4x4(-0.090450718998909,-0.107866339385509,-0.152066946029663,0.116979517042637,-0.051192127168179,-0.164793416857719,0.037173438817263,-0.046888798475266,0.073084317147732,0.085417062044144,-0.048726014792919,-0.111113846302032,0.140412136912346,-0.086897507309914,-0.160293906927109,0.010889502242208));
res += mul(Get(s0,dx,0), float4x4(-0.100735343992710,-0.029250441119075,0.015541846863925,-0.093703083693981,-0.048709485679865,0.128887444734573,0.058607965707779,0.038242612034082,0.016141355037689,-0.129879832267761,0.058384913951159,-0.058211833238602,0.133248388767242,-0.021127371117473,0.185818448662758,-0.142377078533173));
res += mul(Get(s0,dx,dy), float4x4(0.176813423633575,0.129058331251144,-0.006872335914522,-0.009737279266119,0.052082367241383,-0.105351634323597,0.033533960580826,0.009164979681373,0.127713084220886,-0.003217132296413,0.012988765724003,-0.070969879627228,0.005418376065791,-0.017714407294989,-0.231572046875954,-0.050421629101038));
res += mul(Get(s1,-dx,-dy), float4x4(0.181597381830215,0.122680053114891,-0.077556349337101,0.005250855349004,-0.053428392857313,0.058186121284962,0.061265695840120,-0.060943849384785,0.058208461850882,-0.153173103928566,-0.132192790508270,0.049537554383278,-0.062706381082535,0.088606253266335,0.059610515832901,0.029294621199369));
res += mul(Get(s1,-dx,0), float4x4(0.010055624879897,0.187969550490379,-0.112621009349823,0.189193889498711,-0.225021943449974,-0.219012007117271,-0.069792769849300,-0.024662273004651,0.094513982534409,0.059204582124949,-0.016130901873112,-0.237183555960655,0.105021961033344,-0.137276038527489,0.214428752660751,0.101766765117645));
res += mul(Get(s1,-dx,dy), float4x4(-0.041349340230227,-0.026533065363765,-0.013092911802232,0.146651118993759,0.084785446524620,-0.132323607802391,0.059546764940023,0.298716396093369,0.127435654401779,-0.156551495194435,0.080238744616508,-0.075729757547379,0.031950503587723,0.081718876957893,0.101108640432358,0.267620146274567));
res += mul(Get(s1,0,-dy), float4x4(-0.174894839525223,0.050695657730103,-0.108375132083893,-0.079515583813190,0.022301970049739,0.060528978705406,-0.040082931518555,-0.054034136235714,0.081424713134766,0.155762702226639,-0.310113757848740,0.116548977792263,-0.188195094466209,-0.179557055234909,-0.139615908265114,-0.110597595572472));
res += mul(Get(s1,0,0), float4x4(0.116664156317711,0.056616928428411,-0.090076811611652,-0.026609320193529,-0.060633644461632,0.209302470088005,0.024437995627522,-0.016151228919625,-0.020378006622195,0.168540537357330,-0.248733505606651,-0.068030640482903,0.109420187771320,0.088589288294315,-0.128905504941940,0.064355932176113));
res += mul(Get(s1,0,dy), float4x4(0.048962965607643,0.080857113003731,0.044444639235735,-0.036444641649723,-0.156005561351776,-0.076029814779758,-0.020310096442699,-0.115614235401154,-0.003360841888934,0.151055231690407,-0.049706935882568,-0.069744497537613,0.008945768699050,-0.023699617013335,0.137737661600113,-0.178601652383804));
res += mul(Get(s1,dx,-dy), float4x4(0.060625847429037,0.012529754079878,-0.028159484267235,0.160237714648247,-0.145558848977089,0.118559867143631,-0.186588376760483,-0.176271542906761,0.099256478250027,-0.190868601202965,0.130358114838600,-0.138887658715248,-0.166213467717171,0.061717111617327,0.007022014819086,-0.088745653629303));
res += mul(Get(s1,dx,0), float4x4(0.151187464594841,0.036400508135557,-0.176705852150917,0.051345199346542,-0.076019085943699,-0.056946434080601,0.052925959229469,0.100543402135372,0.033391647040844,-0.058195609599352,-0.062905333936214,-0.004363266285509,0.221499860286713,-0.050611447542906,0.056346789002419,-0.139898046851158));
res += mul(Get(s1,dx,dy), float4x4(-0.120029725134373,-0.033030454069376,-0.078069351613522,-0.071476958692074,-0.198210284113884,0.051117677241564,0.034517817199230,-0.152528956532478,0.084962442517281,-0.061552587896585,0.013134904205799,0.091890513896942,0.105098731815815,-0.027095025405288,0.087579667568207,0.024049609899521));
res += mul(Get(s2,-dx,-dy), float4x4(0.215467959642410,-0.203486427664757,-0.122742384672165,-0.030758371576667,-0.108653366565704,-0.087186977267265,-0.027674129232764,-0.165707975625992,0.056508030742407,-0.077008306980133,0.129882812500000,0.091773711144924,0.065522789955139,0.058039259165525,0.059333994984627,0.036894574761391));
res += mul(Get(s2,-dx,0), float4x4(0.004154175519943,0.020927200093865,-0.205674290657043,0.058592025190592,-0.071080476045609,-0.085257455706596,0.138167515397072,0.176548406481743,-0.043033402413130,-0.062365747988224,0.062658116221428,-0.064759090542793,0.098227024078369,-0.008941508829594,0.012499404139817,-0.163871318101883));
res += mul(Get(s2,-dx,dy), float4x4(0.157641679048538,0.101292707026005,-0.113024808466434,-0.034290358424187,-0.205276310443878,0.081587426364422,-0.048938449472189,-0.129948973655701,-0.104956470429897,-0.015350722707808,-0.167902484536171,0.165217086672783,0.027805291116238,-0.078630775213242,0.073562018573284,0.088648304343224));
res += mul(Get(s2,0,-dy), float4x4(-0.166645660996437,0.108200185000896,-0.213433325290680,0.034959480166435,0.221617445349693,-0.100157223641872,-0.072936058044434,0.161299034953117,-0.182088792324066,-0.002859876956791,0.072542525827885,0.181263878941536,-0.001951192505658,-0.011359796859324,0.072464302182198,0.092372372746468));
res += mul(Get(s2,0,0), float4x4(-0.008973658084869,-0.020016282796860,0.005106448195875,0.001192972646095,-0.170125424861908,-0.045768097043037,-0.043463736772537,0.020149838179350,0.012003877200186,-0.049093354493380,-0.017440093681216,0.041141159832478,0.092901878058910,-0.035218045115471,-0.207427784800529,0.152001187205315));
res += mul(Get(s2,0,dy), float4x4(-0.065348871052265,0.007340247277170,-0.013544381596148,-0.068641513586044,0.145213618874550,0.048781622201204,0.075314566493034,-0.147971644997597,0.084502667188644,0.032245386391878,-0.111318171024323,-0.018922202289104,0.022766254842281,-0.010179636068642,-0.170199617743492,0.239001914858818));
res += mul(Get(s2,dx,-dy), float4x4(-0.054239068180323,-0.141964286565781,0.223809257149696,-0.023034602403641,0.116891562938690,-0.230862736701965,0.064373955130577,-0.058070722967386,-0.035541880875826,-0.080839499831200,-0.102282367646694,0.103564314544201,0.116346940398216,0.027316613122821,-0.095327816903591,-0.002591561060399));
res += mul(Get(s2,dx,0), float4x4(-0.127062976360321,-0.018773375079036,-0.038956359028816,-0.071436829864979,-0.114474341273308,-0.073314882814884,-0.011635516770184,-0.222048982977867,-0.161325156688690,-0.012594277039170,0.036196317523718,0.058018952608109,0.097034431993961,-0.144043996930122,-0.129395633935928,0.152918681502342));
res += mul(Get(s2,dx,dy), float4x4(-0.052285358309746,-0.120643712580204,0.033202458173037,-0.005897200666368,-0.095052644610405,-0.148909285664558,0.079184859991074,-0.117561094462872,0.030066110193729,-0.024877978488803,-0.218022301793098,-0.095678828656673,-0.028804009780288,-0.057538259774446,0.149276852607727,0.111841790378094));
res += mul(Get(s3,-dx,-dy), float4x4(-0.030420342460275,0.121420904994011,-0.175511583685875,0.019943760707974,-0.110859535634518,-0.178884878754616,-0.096930190920830,0.142049178481102,-0.063010156154633,-0.213272705674171,0.131044656038284,-0.117165192961693,0.090517349541187,-0.202008306980133,-0.182795971632004,-0.085532031953335));
res += mul(Get(s3,-dx,0), float4x4(-0.077011264860630,-0.126048177480698,-0.113060601055622,0.162003889679909,0.121393717825413,0.072144292294979,-0.061139345169067,0.113250590860844,-0.087125681340694,-0.024711150676012,-0.150520846247673,-0.140377566218376,-0.034052964299917,0.249450907111168,-0.021827492862940,0.153693810105324));
res += mul(Get(s3,-dx,dy), float4x4(0.094755008816719,-0.069971866905689,0.046339951455593,0.107673458755016,-0.263269275426865,0.065959878265858,-0.033552147448063,0.052816022187471,-0.021354222670197,0.047547940164804,-0.096505664288998,-0.003173916367814,0.089518718421459,-0.043556243181229,0.013362207449973,-0.104247182607651));
res += mul(Get(s3,0,-dy), float4x4(-0.177095860242844,-0.250501096248627,0.157977774739265,-0.060875579714775,0.087058477103710,0.126055091619492,0.042823784053326,0.057032775133848,-0.029547533020377,0.069817528128624,-0.018968550488353,0.097128830850124,0.064364507794380,-0.038655601441860,0.148569375276566,0.205254957079887));
res += mul(Get(s3,0,0), float4x4(-0.109931498765945,-0.147478431463242,0.082839548587799,0.076633617281914,-0.116297401487827,-0.112397380173206,0.014642662368715,0.118254810571671,-0.136953234672546,0.017655445262790,0.163254365324974,-0.000925548200030,-0.205620452761650,0.088862389326096,-0.087293095886707,-0.070439219474792));
res += mul(Get(s3,0,dy), float4x4(0.056867443025112,0.047185067087412,0.013583928346634,0.166301697492599,-0.086288481950760,-0.032528612762690,-0.065347202122211,-0.011558809317648,0.130619734525681,-0.021084601059556,0.036416064947844,-0.075673863291740,-0.091561399400234,-0.209401622414589,-0.045315217226744,0.116288013756275));
res += mul(Get(s3,dx,-dy), float4x4(0.140273675322533,0.024160429835320,0.000438764691353,0.000653986993711,0.068075403571129,-0.133513286709785,0.049770127981901,0.194905504584312,0.043816011399031,-0.030940320342779,-0.003170158481225,-0.025224110111594,-0.130256205797195,-0.117462649941444,0.010621078312397,-0.300929993391037));
res += mul(Get(s3,dx,0), float4x4(-0.007268407382071,-0.160517767071724,0.021477170288563,0.073261752724648,0.136070027947426,0.010588270612061,0.009560487233102,0.139927104115486,0.042282979935408,0.136436954140663,0.024229755625129,0.081989109516144,-0.072102941572666,-0.079881578683853,0.044154863804579,-0.118509076535702));
res += mul(Get(s3,dx,dy), float4x4(0.160359323024750,0.122673064470291,-0.033463425934315,-0.121756225824356,-0.057356353849173,-0.156064808368683,-0.030581520870328,0.037182055413723,0.027640162035823,0.052062083035707,0.044734582304955,-0.177147150039673,-0.078990831971169,0.039541851729155,-0.195346653461456,-0.018373625352979));
return max(float4(0,0,0,0), res);
}
