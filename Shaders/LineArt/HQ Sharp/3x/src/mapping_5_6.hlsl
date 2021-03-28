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
float4 res = float4(-0.059013284742832,-0.093280620872974,0.261123299598694,-0.167676195502281);
res += mul(Get(s0,-dx,-dy), float4x4(-0.380195289850235,-0.049108613282442,-0.007607777137309,0.016792546957731,0.018387295305729,0.004538199864328,-0.015199670568109,-0.044984061270952,-0.036611240357161,0.088808670639992,-0.086215272545815,-0.099973268806934,-0.118181802332401,0.159670248627663,-0.259289473295212,0.361639082431793));
res += mul(Get(s0,-dx,0), float4x4(-0.172110304236412,0.100955747067928,-0.043027311563492,-0.078781008720398,-0.020134555175900,0.071473792195320,-0.074068002402782,-0.013832387514412,-0.143436849117279,-0.015933923423290,-0.192523211240768,-0.060299519449472,-0.542118370532990,0.146411880850792,-0.244416907429695,0.193600967526436));
res += mul(Get(s0,-dx,dy), float4x4(-0.137097686529160,0.015337691642344,0.036452364176512,0.080900564789772,-0.095466457307339,-0.108884036540985,0.187360003590584,0.030833084136248,-0.008493479341269,-0.099530480802059,-0.237524792551994,-0.054117139428854,0.049247894436121,0.002927516819909,-0.145551130175591,0.169479221105576));
res += mul(Get(s0,0,-dy), float4x4(0.149463325738907,-0.028993576765060,0.018049387261271,0.012333040125668,0.014361254870892,-0.033526122570038,-0.058682009577751,0.015631010755897,0.213623955845833,0.102879263460636,-0.191951349377632,-0.083876535296440,-0.393832236528397,0.128946587443352,-0.192338511347771,0.248359784483910));
res += mul(Get(s0,0,0), float4x4(0.391826510429382,0.103637665510178,-0.074589595198631,0.208276644349098,-0.286957144737244,0.171760737895966,0.154384627938271,0.109847210347652,0.151235684752464,-0.024660699069500,-0.143572032451630,-0.070611335337162,-0.358250826597214,0.236450657248497,0.033154491335154,0.367658764123917));
res += mul(Get(s0,0,dy), float4x4(0.185024335980415,-0.036715257912874,0.208461835980415,0.072484396398067,0.129987701773643,0.109444826841354,0.121263720095158,0.022045698016882,0.059160523116589,-0.012953775934875,-0.053295042365789,-0.124577522277832,0.004371135029942,0.070047408342361,-0.022328991442919,0.216054722666740));
res += mul(Get(s0,dx,-dy), float4x4(0.265791803598404,0.115944832563400,-0.053646698594093,-0.180166110396385,-0.031691368669271,0.141545280814171,0.101936459541321,0.093348525464535,0.141285181045532,0.094282366335392,-0.096795678138733,-0.155957296490669,-0.169398456811905,-0.025997417047620,-0.072270542383194,0.157059669494629));
res += mul(Get(s0,dx,0), float4x4(0.163382351398468,0.033231046050787,-0.222544491291046,-0.181818366050720,0.097250021994114,0.196285709738731,0.145424067974091,0.108600743114948,0.072826176881790,-0.169525027275085,-0.227590441703796,-0.095284245908260,-0.243999481201172,0.048389971256256,-0.017172794789076,0.235430717468262));
res += mul(Get(s0,dx,dy), float4x4(0.231055915355682,-0.000815995445009,0.009848335757852,-0.107623644173145,-0.029843175783753,0.049582578241825,-0.072862595319748,0.044280834496021,-0.014254759065807,0.023391669616103,-0.171890333294868,0.067331083118916,0.085372231900692,-0.049123201519251,-0.082423150539398,0.163635388016701));
res += mul(Get(s1,-dx,-dy), float4x4(-0.191755801439285,0.159964144229889,-0.075368762016296,-0.097946472465992,-0.194405481219292,0.123334154486656,-0.140492424368858,0.108005113899708,0.174491673707962,0.147680446505547,0.010352456942201,-0.084202267229557,0.278952270746231,-0.051847897469997,0.028651896864176,-0.090525887906551));
res += mul(Get(s1,-dx,0), float4x4(-0.030669484287500,0.025453636422753,-0.193815633654594,0.078282497823238,-0.095018424093723,0.140442505478859,-0.085774585604668,0.051712200045586,0.233690515160561,0.272539883852005,0.061537686735392,-0.002926921006292,-0.010999946855009,0.039625827223063,0.122430227696896,0.033784378319979));
res += mul(Get(s1,-dx,dy), float4x4(-0.061768442392349,0.116974160075188,-0.044098764657974,0.021788254380226,-0.030389063060284,0.133497849106789,0.053655125200748,0.209994897246361,-0.072283655405045,0.069049187004566,-0.036428466439247,0.154031828045845,0.085126653313637,0.081174664199352,0.030740400776267,-0.151484534144402));
res += mul(Get(s1,0,-dy), float4x4(-0.180873036384583,0.089712053537369,0.103217773139477,-0.024008424952626,0.105027049779892,-0.059526894241571,-0.066562481224537,-0.208288505673409,0.321082472801208,-0.089491330087185,-0.004602020140737,0.174029603600502,-0.069238513708115,-0.112898722290993,0.016754353418946,-0.212370589375496));
res += mul(Get(s1,0,0), float4x4(-0.151027187705040,0.088499046862125,-0.077850103378296,0.063927337527275,0.112003654241562,0.052046608179808,-0.166417419910431,-0.088289923965931,0.084535554051399,-0.362931877374649,0.066467784345150,-0.437127560377121,0.109176479279995,-0.412503331899643,0.038502022624016,-0.180929198861122));
res += mul(Get(s1,0,dy), float4x4(-0.035688284784555,0.083376288414001,0.055293940007687,0.271983265876770,0.076324395835400,0.042168814688921,-0.162149697542191,0.082071505486965,0.109926328063011,0.179241195321083,0.027917299419641,-0.071116000413895,-0.237682595849037,-0.093918770551682,0.032785661518574,0.049906335771084));
res += mul(Get(s1,dx,-dy), float4x4(0.248017862439156,-0.030678827315569,-0.079175621271133,0.014194858260453,-0.393128365278244,0.055692646652460,-0.116945795714855,0.065862692892551,0.007099000737071,0.161931663751602,0.060669254511595,0.170862168073654,-0.023102065548301,-0.042323101311922,-0.048297502100468,-0.207409575581551));
res += mul(Get(s1,dx,0), float4x4(0.031918097287416,-0.184522941708565,-0.103689372539520,0.002758093411103,-0.151463821530342,0.083714812994003,-0.022253723815084,0.158465534448624,0.013962364755571,-0.128859996795654,-0.072941370308399,-0.177400305867195,0.107400767505169,-0.024400522932410,-0.184335514903069,0.169829756021500));
res += mul(Get(s1,dx,dy), float4x4(0.203428491950035,-0.045794866979122,0.118675991892815,0.081270836293697,-0.004728655796498,0.004063289612532,0.009781389497221,0.266770690679550,-0.214636489748955,-0.026904117316008,-0.049249138683081,0.048659294843674,-0.023091888055205,-0.015209986828268,-0.059196401387453,0.007263750303537));
res += mul(Get(s2,-dx,-dy), float4x4(0.119083896279335,-0.110718868672848,-0.084794566035271,-0.139310300350189,-0.093896403908730,-0.056019999086857,-0.031781144440174,-0.039089594036341,-0.131558671593666,0.016060009598732,0.071665875613689,-0.024123139679432,-0.045304641127586,-0.097184211015701,-0.056706406176090,0.032209903001785));
res += mul(Get(s2,-dx,0), float4x4(0.184874698519707,-0.220663666725159,0.209444791078568,-0.307354360818863,0.064055375754833,0.024261295795441,0.145564362406731,-0.075589299201965,0.052120704203844,0.043800134211779,-0.044672038406134,-0.064211919903755,0.239756017923355,-0.029264803975821,-0.193956479430199,-0.003994718194008));
res += mul(Get(s2,-dx,dy), float4x4(0.043819595128298,0.006508409045637,0.152501270174980,-0.037564720958471,0.281894117593765,-0.035127591341734,-0.060630168765783,-0.034556526690722,0.117928452789783,0.056548655033112,-0.049217648804188,-0.070392429828644,-0.093015439808369,0.053296092897654,0.035182788968086,0.027341144159436));
res += mul(Get(s2,0,-dy), float4x4(0.029440710321069,-0.024892501533031,-0.004697070922703,0.148351460695267,-0.138031393289566,0.002720486838371,0.131142854690552,-0.113162025809288,0.050976380705833,0.005589547101408,0.073719918727875,-0.037244305014610,0.100936211645603,0.021314997226000,0.079609088599682,-0.014131450094283));
res += mul(Get(s2,0,0), float4x4(0.219454541802406,-0.062893785536289,0.171433046460152,-0.060969118028879,-0.118594631552696,-0.077153272926807,-0.083447270095348,0.095642678439617,0.028434630483389,0.186468809843063,-0.009239158593118,-0.033925540745258,0.241500794887543,-0.187079191207886,-0.176823109388351,0.151889368891716));
res += mul(Get(s2,0,dy), float4x4(0.151671230792999,0.082367435097694,0.139289557933807,-0.119765810668468,-0.024635083973408,-0.011306897737086,0.059348996728659,0.023001616820693,-0.040716391056776,-0.063274197280407,-0.267006546258926,-0.188153922557831,0.047976892441511,0.126745045185089,0.224172487854958,0.014607379212976));
res += mul(Get(s2,dx,-dy), float4x4(-0.069534011185169,0.030376793816686,-0.028757262974977,0.244135111570358,0.258120268583298,0.118642926216125,0.149918928742409,-0.023132409900427,0.088648557662964,0.029650630429387,-0.017309086397290,-0.020983509719372,-0.008362960070372,-0.043332520872355,0.046047933399677,-0.021536003798246));
res += mul(Get(s2,dx,0), float4x4(-0.054793246090412,0.105928808450699,-0.049478862434626,0.077805250883102,0.250880837440491,0.136846065521240,0.093272812664509,0.077938064932823,-0.053070306777954,0.123871535062790,0.054817121475935,-0.014381246641278,0.155965805053711,-0.150195151567459,-0.069025322794914,-0.153232261538506));
res += mul(Get(s2,dx,dy), float4x4(-0.066113211214542,-0.054123856127262,-0.115613572299480,0.072279930114746,0.004040869418532,0.054972387850285,-0.040509819984436,-0.140985086560249,0.013816297985613,-0.025782262906432,0.045088365674019,-0.102252081036568,0.016157958656549,-0.013309657573700,-0.052063409239054,-0.088170729577541));
res += mul(Get(s3,-dx,-dy), float4x4(0.057722829282284,0.048087716102600,0.034183379262686,0.161965459585190,0.080711133778095,-0.062642715871334,0.081525675952435,-0.145351603627205,-0.029475467279553,0.000509272154886,0.113673962652683,-0.144979834556580,-0.240850970149040,-0.156485289335251,-0.080659680068493,-0.078310057520866));
res += mul(Get(s3,-dx,0), float4x4(0.021826840937138,-0.037171460688114,-0.081715658307076,0.095655068755150,-0.044233646243811,-0.069107159972191,0.151131242513657,-0.010698024183512,0.036769915372133,-0.278445571660995,-0.219017684459686,0.056377880275249,-0.096008345484734,-0.145437598228455,0.037784557789564,-0.009873686358333));
res += mul(Get(s3,-dx,dy), float4x4(0.000538754335139,-0.024161092936993,-0.086761727929115,0.194838732481003,-0.030725089833140,-0.127352878451347,0.117384135723114,-0.030737260356545,0.150557294487953,0.054464492946863,0.187007814645767,-0.050495587289333,-0.169125631451607,-0.048198632895947,-0.076351687312126,-0.004441104829311));
res += mul(Get(s3,0,-dy), float4x4(0.195868849754333,-0.114449121057987,0.028508607298136,0.026207493618131,0.128294229507446,-0.014996394515038,0.007883567363024,-0.090021729469299,0.024549897760153,0.128809794783592,0.031954541802406,-0.352734655141830,0.029589101672173,-0.052803646773100,0.014988379552960,0.025541309267282));
res += mul(Get(s3,0,0), float4x4(-0.178799271583557,-0.117737099528313,-0.015114700421691,-0.204467654228210,-0.049421492964029,0.162716224789619,0.101164989173412,-0.017102690413594,-0.154317721724510,0.178415447473526,0.108407102525234,0.050019230693579,0.294729679822922,0.053780741989613,-0.079195201396942,0.165471002459526));
res += mul(Get(s3,0,dy), float4x4(0.282119780778885,0.047762949019670,0.150835439562798,-0.114543661475182,-0.058280874043703,-0.149464726448059,0.036602709442377,0.031372096389532,0.174053087830544,0.081713892519474,-0.153681397438049,0.137342900037766,0.185579493641853,0.047808855772018,0.157930284738541,-0.087747618556023));
res += mul(Get(s3,dx,-dy), float4x4(0.027010664343834,-0.071170188486576,-0.036495719105005,-0.016501087695360,0.202646926045418,-0.023834550753236,0.029650498181581,0.049074880778790,0.022734066471457,-0.018192304298282,-0.145139321684837,0.026553928852081,-0.059832032769918,0.183090582489967,0.143796622753143,-0.097858712077141));
res += mul(Get(s3,dx,0), float4x4(-0.132847905158997,-0.218620046973228,-0.069664396345615,0.170399934053421,-0.090347096323967,0.138318389654160,0.284257709980011,0.175348833203316,0.019434658810496,-0.005237366072834,0.095012500882149,-0.060526177287102,0.107130602002144,0.100536853075027,-0.062153007835150,0.198166981339455));
res += mul(Get(s3,dx,dy), float4x4(0.098220728337765,0.101594209671021,-0.185065045952797,-0.066439837217331,0.036922506988049,0.055767193436623,0.186357170343399,0.001370882266201,0.019047850742936,-0.050126198679209,0.094617813825607,0.090764626860619,0.159479588270187,-0.054030887782574,0.093620009720325,-0.148599594831467));
res += mul(Get(s4,-dx,-dy), float4x4(-0.170060709118843,-0.042145635932684,-0.035570926964283,-0.020421804860234,-0.129762306809425,-0.008931437507272,-0.089372538030148,0.036566995084286,-0.289350628852844,-0.061623111367226,-0.120569206774235,0.079652421176434,0.185947567224503,-0.213401898741722,0.033508066087961,-0.052837800234556));
res += mul(Get(s4,-dx,0), float4x4(-0.049816079437733,-0.010087666101754,-0.089423894882202,-0.120545484125614,0.406288474798203,-0.079225212335587,-0.089819997549057,-0.044266518205404,-0.010028746910393,-0.065995939075947,-0.009022945538163,-0.002318196697161,0.271961599588394,-0.143246531486511,0.053403478115797,0.125236049294472));
res += mul(Get(s4,-dx,dy), float4x4(0.039303958415985,0.033995971083641,-0.356419116258621,0.013314245268703,0.041673172265291,-0.049309588968754,0.221391931176186,-0.173731952905655,-0.087860226631165,-0.041625846177340,0.168489888310432,0.045915979892015,-0.010108454152942,0.030974041670561,-0.016344921663404,0.041358202695847));
res += mul(Get(s4,0,-dy), float4x4(-0.163471177220345,0.007879233919084,-0.064146399497986,-0.104430139064789,-0.179446369409561,0.284765928983688,-0.243876680731773,0.301891803741455,0.188330128788948,-0.143555745482445,-0.073840752243996,0.045216530561447,0.071047201752663,-0.210349261760712,-0.011320365592837,0.121043041348457));
res += mul(Get(s4,0,0), float4x4(-0.355708003044128,-0.480871886014938,0.098966479301453,-0.263130247592926,-0.105799250304699,-0.068404406309128,-0.062153507024050,-0.174665868282318,-0.009175099432468,-0.247829079627991,-0.060808211565018,-0.237091094255447,0.064478032290936,-0.225324824452400,-0.130286529660225,0.234299466013908));
res += mul(Get(s4,0,dy), float4x4(-0.083004981279373,-0.301330804824829,-0.036874670535326,0.290744185447693,-0.051262173801661,-0.097100965678692,-0.084773622453213,-0.113056793808937,-0.007841300219297,-0.025971379131079,0.102888502180576,0.106711409986019,0.126287683844566,0.030643969774246,0.121229082345963,0.018104212358594));
res += mul(Get(s4,dx,-dy), float4x4(0.108467578887939,0.068170480430126,0.033580109477043,-0.098490767180920,-0.000650816189591,-0.002366473199800,-0.030650814995170,0.074484400451183,0.280972450971603,-0.000634642667137,-0.047045279294252,-0.065037012100220,-0.033118113875389,0.101704247295856,-0.028768997639418,0.086395718157291));
res += mul(Get(s4,dx,0), float4x4(0.234451010823250,0.193341970443726,-0.021107530221343,-0.081494376063347,0.008144911378622,0.203190639615059,0.091513521969318,0.058946859091520,0.109673880040646,0.040272980928421,-0.242625400424004,-0.082028493285179,-0.042726647108793,-0.012663089670241,0.169212132692337,-0.172292217612267));
res += mul(Get(s4,dx,dy), float4x4(0.068379275500774,-0.041877292096615,0.012508823536336,0.012670110911131,0.009697366505861,0.089880995452404,-0.118817731738091,-0.133774086833000,0.030273277312517,-0.013722124509513,-0.137781366705894,0.047498553991318,0.089097231626511,0.032320063561201,0.064895361661911,-0.066530883312225));
res += mul(Get(s5,-dx,-dy), float4x4(-0.308498501777649,-0.199699535965919,-0.017258070409298,0.032728236168623,0.048192564398050,0.035338103771210,0.061994973570108,0.024047480896115,-0.168807953596115,-0.086217530071735,-0.068893134593964,-0.049339711666107,0.272123545408249,0.133107587695122,0.067237265408039,0.009192488156259));
res += mul(Get(s5,-dx,0), float4x4(-0.051654756069183,-0.243700757622719,0.177178695797920,-0.155220940709114,0.173662662506104,-0.039874915033579,-0.031118232756853,0.144722014665604,-0.138996466994286,-0.281163722276688,-0.214877665042877,-0.103993065655231,-0.338068336248398,0.388046741485596,-0.038405369967222,0.503303170204163));
res += mul(Get(s5,-dx,dy), float4x4(-0.038164593279362,0.053492773324251,0.026253588497639,0.084579616785049,-0.075369641184807,0.101572029292583,-0.060143236070871,0.090463660657406,0.108630053699017,-0.054752077907324,-0.047379206866026,-0.036195475608110,-0.074326977133751,-0.218694865703583,-0.115286402404308,0.001275731250644));
res += mul(Get(s5,0,-dy), float4x4(0.028316488489509,-0.005385270807892,0.033212099224329,-0.051439672708511,0.046667736023664,0.025303322821856,0.115673854947090,0.146560549736023,-0.147899895906448,0.007099568843842,-0.037058040499687,0.032204158604145,0.315608739852905,0.130863577127457,0.119261860847473,-0.030276838690042));
res += mul(Get(s5,0,0), float4x4(0.003735127858818,-0.201631948351860,0.183225780725479,-0.219563871622086,0.185437232255936,-0.039809137582779,0.059506095945835,0.095339097082615,-0.063023254275322,0.117943771183491,-0.156053647398949,0.444810867309570,0.157578140497208,0.338321715593338,-0.206711441278458,0.471342504024506));
res += mul(Get(s5,0,dy), float4x4(0.145092695951462,0.017418555915356,0.016809981316328,0.024237925186753,0.060330841690302,0.060239590704441,0.131021976470947,0.090936914086342,0.140574276447296,0.022051943466067,-0.201667472720146,-0.019921176135540,-0.064184322953224,-0.231724500656128,-0.056823000311852,-0.161646500229836));
res += mul(Get(s5,dx,-dy), float4x4(0.003622379619628,-0.069542489945889,0.086889006197453,0.049495801329613,0.125528723001480,0.086989670991898,-0.026296326890588,-0.117020554840565,-0.013914082199335,-0.045574050396681,0.016664333641529,-0.007857972756028,0.053527772426605,0.077904723584652,0.014123882167041,-0.058687061071396));
res += mul(Get(s5,dx,0), float4x4(-0.171900212764740,-0.097603410482407,-0.040886301547289,-0.110669530928135,0.206468403339386,0.049460534006357,0.053691223263741,0.083019636571407,-0.020781226456165,0.045041363686323,-0.057263936847448,0.144619166851044,0.060528472065926,0.264016240835190,-0.055474374443293,0.217146664857864));
res += mul(Get(s5,dx,dy), float4x4(0.005964151117951,0.038900773972273,-0.017953308299184,-0.026220627129078,-0.013916178606451,0.119279347360134,0.121765606105328,0.176031664013863,0.066478863358498,0.052003450691700,-0.029162418097258,-0.106718890368938,0.003806862747297,-0.033661216497421,-0.036998517811298,-0.034616839140654));
res = max(float4(0, 0, 0, 0), res) + float4(0.450314462184906,0.062379904091358,-0.108824111521244,0.165833041071892) * min(float4(0, 0, 0, 0), res);
return res;
}