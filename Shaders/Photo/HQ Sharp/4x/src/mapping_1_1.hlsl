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
float4 res = float4(-0.216533586382866,0.123702801764011,-0.042089637368917,-0.100128993391991);
res += mul(Get(s0,-dx,-dy), float4x4(-0.010869612917304,0.009820383973420,0.033163491636515,-0.141121476888657,0.030219061300159,-0.087994545698166,0.005803058855236,-0.185858994722366,0.057269312441349,0.047026127576828,-0.027067046612501,-0.038438215851784,0.039832379668951,-0.032604839652777,0.095410600304604,0.076238095760345));
res += mul(Get(s0,-dx,0), float4x4(-0.261196166276932,0.054149109870195,-0.060106344521046,-0.153929308056831,-0.082074955105782,-0.008526188321412,0.002035951940343,-0.108604855835438,0.194503918290138,0.028704792261124,-0.056176181882620,0.180786684155464,-0.231178864836693,0.130529671907425,-0.058815840631723,-0.094289198517799));
res += mul(Get(s0,-dx,dy), float4x4(0.015463081188500,-0.010541438125074,-0.049303259700537,0.075921483337879,-0.036261182278395,-0.051055878400803,0.023225924000144,0.016464013606310,0.158169552683830,-0.045732676982880,-0.039721548557281,0.209818124771118,0.087106928229332,0.016468049958348,-0.029412267729640,0.240868300199509));
res += mul(Get(s0,0,-dy), float4x4(0.092020854353905,0.056145783513784,-0.037794336676598,-0.002349715912715,-0.028993699699640,-0.000661843107082,-0.031306762248278,0.086177282035351,-0.004971739836037,-0.151484787464142,-0.060545615851879,0.113367214798927,0.073088996112347,0.041780699044466,-0.021147774532437,0.008443140424788));
res += mul(Get(s0,0,0), float4x4(-0.011815582402050,-0.289723485708237,0.082051828503609,0.103420041501522,0.046609509736300,-0.197216764092445,0.055986173450947,0.030933845788240,0.007010046858341,0.223700195550919,-0.002318253507838,0.070899367332458,0.008928136900067,-0.331851840019226,0.177257552742958,0.066614553332329));
res += mul(Get(s0,0,dy), float4x4(0.041681010276079,0.175388380885124,-0.098242178559303,0.061567250639200,0.017528487369418,0.062218375504017,0.033330827951431,-0.007825061678886,-0.044623605906963,0.138468220829964,-0.117518052458763,-0.067050896584988,0.003157027997077,0.236785978078842,-0.192598387598991,0.028307884931564));
res += mul(Get(s0,dx,-dy), float4x4(0.028012759983540,-0.058464646339417,-0.101416014134884,-0.050781425088644,-0.013419910334051,-0.006875998806208,-0.040380455553532,-0.001490512862802,-0.048181146383286,0.032069120556116,-0.094164915382862,0.037308204919100,0.024194641038775,-0.041922587901354,-0.020522985607386,0.012877424247563));
res += mul(Get(s0,dx,0), float4x4(-0.046235393732786,-0.023961737751961,0.014300643466413,-0.034619316458702,-0.056234426796436,0.081572867929935,-0.030635090544820,-0.001590624102391,0.093450479209423,-0.075315035879612,0.019630013033748,-0.032542299479246,-0.058843001723289,0.156716376543045,0.054447576403618,-0.118116021156311));
res += mul(Get(s0,dx,dy), float4x4(0.017211202532053,-0.096855401992798,-0.091889329254627,0.033938325941563,-0.019669706001878,-0.066282913088799,0.050382982939482,0.036095142364502,0.003215095726773,-0.053838390856981,0.047519654035568,0.031609192490578,0.002084655454382,0.038281351327896,-0.104871913790703,-0.055869456380606));
res += mul(Get(s1,-dx,-dy), float4x4(0.052102070301771,-0.055748362094164,0.092899687588215,-0.108208157122135,0.016989784315228,0.041692364960909,-0.028288198634982,-0.139266625046730,0.024257710203528,0.068000860512257,-0.019715184345841,-0.125938743352890,-0.058855555951595,0.006963645108044,0.088108055293560,-0.173091739416122));
res += mul(Get(s1,-dx,0), float4x4(0.009983568452299,0.103441916406155,0.046801373362541,-0.049717761576176,-0.017626749351621,0.009858939796686,-0.020809149369597,-0.063120231032372,-0.000407119427109,-0.023434313014150,-0.038714103400707,-0.007758072577417,-0.217506244778633,-0.011896894313395,0.005950913764536,-0.164963319897652));
res += mul(Get(s1,-dx,dy), float4x4(0.025046119466424,0.110100805759430,-0.014177568256855,-0.042850051075220,-0.007933082059026,-0.019636426120996,0.008677448146045,0.057330362498760,-0.013335910625756,-0.007581889163703,-0.014030734077096,0.087026223540306,-0.083567455410957,-0.028351867571473,0.032454568892717,0.037091653794050));
res += mul(Get(s1,0,-dy), float4x4(-0.084603875875473,-0.075000859797001,0.029454123228788,0.075161427259445,-0.004051601979882,0.060940388590097,0.003524303436279,-0.003458053106442,-0.027598751708865,0.038615930825472,-0.064053036272526,0.010138274170458,0.002861731220037,-0.002078106626868,-0.153467774391174,-0.038777820765972));
res += mul(Get(s1,0,0), float4x4(0.031410481780767,0.140325263142586,0.127464830875397,0.074961930513382,0.004872480873019,-0.127593159675598,0.020638996735215,-0.007355453446507,0.024902500212193,-0.031716629862785,-0.014059024862945,0.019989805296063,-0.047710124403238,-0.161384150385857,0.170639395713806,0.147006466984749));
res += mul(Get(s1,0,dy), float4x4(0.029171658679843,0.063768602907658,0.025744387879968,0.015073903836310,-0.026167867705226,0.058594830334187,0.003138385945931,0.034046251326799,-0.026888471096754,0.015804983675480,-0.022119367495179,0.051973100751638,-0.052402969449759,0.034575246274471,0.001407309318893,0.061345420777798));
res += mul(Get(s1,dx,-dy), float4x4(0.034470491111279,0.018728179857135,-0.039426576346159,0.048993833363056,-0.017636734992266,-0.014867698773742,-0.048171199858189,0.023408966138959,0.018503412604332,0.017287615686655,-0.073917977511883,-0.006455366499722,-0.018727449700236,-0.030420152470469,-0.067340485751629,0.022919556125998));
res += mul(Get(s1,dx,0), float4x4(0.002638669917360,0.026886725798249,0.120380610227585,0.005478333681822,0.025547804310918,-0.026702376082540,0.022128621116281,0.016524368897080,-0.023785727098584,0.047554679214954,-0.020954472944140,0.029666796326637,0.083523057401180,0.065702632069588,0.103818692266941,0.071719460189342));
res += mul(Get(s1,dx,dy), float4x4(-0.006257287692279,0.066140294075012,0.110547050833702,0.063903093338013,0.025997523218393,-0.020937597379088,-0.018508553504944,0.027622252702713,0.033361349254847,0.023147877305746,-0.003700302913785,0.064605720341206,-0.046965792775154,0.102049566805363,0.002826357493177,0.019114062190056));
res += mul(Get(s2,-dx,-dy), float4x4(-0.019276330247521,-0.048402275890112,-0.005455886013806,-0.055289357900620,0.020097473636270,0.050679683685303,0.086232021450996,-0.177832260727882,-0.191696539521217,0.024043694138527,0.077631168067455,-0.089465662837029,-0.080113969743252,0.099631503224373,0.066467709839344,-0.176978379487991));
res += mul(Get(s2,-dx,0), float4x4(-0.319161474704742,-0.111639648675919,-0.015455385670066,0.069990873336792,0.013571415096521,-0.083930887281895,-0.052722651511431,0.023503841832280,-0.112196698784828,-0.002698504365981,0.071026355028152,0.040334194898605,-0.616405308246613,0.199869289994240,0.026435839012265,-0.373580038547516));
res += mul(Get(s2,-dx,dy), float4x4(-0.066297300159931,0.010675053112209,-0.080109246075153,0.093748234212399,-0.006423830986023,0.022106828168035,-0.024935763329268,0.206686720252037,-0.118629582226276,0.143079102039337,-0.004088216926903,0.044383943080902,-0.210602894425392,-0.011414092034101,0.045721583068371,-0.062697172164917));
res += mul(Get(s2,0,-dy), float4x4(0.058818295598030,0.101241886615753,-0.102890163660049,-0.006965284235775,-0.036421306431293,-0.039124350994825,-0.101164795458317,-0.024832073599100,-0.041379839181900,-0.155874162912369,-0.137871861457825,0.080489940941334,-0.001993299461901,0.244263172149658,-0.185199499130249,-0.263564974069595));
res += mul(Get(s2,0,0), float4x4(-0.031750909984112,-0.148421257734299,0.017529165372252,0.108979992568493,0.169827327132225,0.009967829100788,0.022883210331202,0.170194908976555,0.032101441174746,0.062091942876577,0.071684576570988,0.005153871607035,-0.010554453358054,-0.500223815441132,0.178478598594666,0.107002764940262));
res += mul(Get(s2,0,dy), float4x4(0.034916561096907,0.066346049308777,-0.169300302863121,0.051193684339523,0.042900908738375,0.004690766334534,-0.108629934489727,-0.123681202530861,-0.023056371137500,-0.218123078346252,0.032311875373125,0.031672433018684,0.064533703029156,0.064989879727364,0.034554280340672,0.066626586019993));
res += mul(Get(s2,dx,-dy), float4x4(0.052267432212830,0.070676639676094,0.072586461901665,0.066942401230335,0.007955961860716,0.022326398640871,-0.150378346443176,0.024819415062666,0.043657895177603,-0.009300831705332,0.128539413213730,0.143742635846138,-0.000921819824725,0.112264700233936,-0.140273630619049,-0.004440776072443));
res += mul(Get(s2,dx,0), float4x4(-0.011442182585597,0.072731345891953,0.086860910058022,0.074170552194118,-0.037903886288404,0.227963402867317,-0.093143433332443,-0.041136071085930,0.029868604615331,0.162629544734955,0.087613426148891,0.025259707123041,-0.054382666945457,0.220967367291451,0.097453564405441,-0.000285221787635));
res += mul(Get(s2,dx,dy), float4x4(-0.023460922762752,0.020505387336016,-0.043763134628534,0.004341769032180,-0.033881776034832,0.067431189119816,0.058444965630770,-0.010883253067732,0.033019579946995,0.045576814562082,0.133466348052025,-0.056406486779451,0.011644552461803,0.040897242724895,-0.046548072248697,-0.061766326427460));
res += mul(Get(s3,-dx,-dy), float4x4(-0.093675509095192,0.033356517553329,-0.009829642251134,0.034341823309660,0.073998801410198,0.063843913376331,-0.051866430789232,0.021313531324267,-0.063899606466293,-0.045321930199862,0.060565147548914,0.055128201842308,0.004640671424568,-0.032208699733019,0.044863779097795,-0.054938975721598));
res += mul(Get(s3,-dx,0), float4x4(0.030923305079341,0.121125183999538,0.017495054751635,0.031961623579264,-0.042754754424095,-0.093977145850658,-0.059560943394899,-0.018413646146655,-0.056888546794653,-0.027483304962516,-0.061947558075190,0.038751486688852,-0.051825676113367,-0.092064917087555,-0.018427601084113,-0.014877729117870));
res += mul(Get(s3,-dx,dy), float4x4(-0.005760065279901,0.063860036432743,-0.009425545111299,0.122435584664345,0.076959937810898,-0.062261912971735,0.032474808394909,-0.100351072847843,-0.045800395309925,0.012342689558864,-0.054928503930569,0.038119696080685,-0.040084641426802,0.010952523909509,0.018447013571858,0.063609980046749));
res += mul(Get(s3,0,-dy), float4x4(-0.083142600953579,-0.163905322551727,-0.127402618527412,0.148092225193977,0.035854943096638,0.071131408214569,-0.139289140701294,-0.116146214306355,-0.034265711903572,-0.125060871243477,-0.068492777645588,-0.025830805301666,0.012077196501195,0.001215667696670,-0.032178521156311,-0.034677002578974));
res += mul(Get(s3,0,0), float4x4(0.148504063487053,-0.127147480845451,0.186355859041214,0.063270181417465,0.055006675422192,-0.208586841821671,0.015419692732394,0.035449065268040,-0.065454728901386,-0.072154484689236,-0.021780887618661,0.032112073153257,0.039253603667021,-0.124515093863010,-0.047664444893599,0.030295733362436));
res += mul(Get(s3,0,dy), float4x4(0.028059953823686,0.070338182151318,-0.027614135295153,-0.072347223758698,-0.046450197696686,0.104760341346264,-0.058842930942774,-0.046779543161392,-0.057758189737797,-0.021119963377714,-0.076723732054234,0.006849976722151,-0.031016180291772,0.001428096555173,0.010638320818543,-0.037917695939541));
res += mul(Get(s3,dx,-dy), float4x4(-0.053423792123795,-0.121196448802948,-0.206418320536613,0.036425024271011,0.166267082095146,0.187391296029091,0.101144224405289,0.075204782187939,0.005302148405463,0.003144129645079,-0.117802783846855,0.046241372823715,0.028972843661904,0.009056337177753,0.007914781570435,-0.037602256983519));
res += mul(Get(s3,dx,0), float4x4(-0.026787949725986,0.110001370310783,0.001592778949998,-0.089234583079815,-0.056041952222586,0.171054974198341,0.022456541657448,-0.039701074361801,-0.040764093399048,-0.052526500076056,-0.029393455013633,0.040628612041473,-0.055506341159344,-0.008441324345767,-0.079154707491398,0.005857575219125));
res += mul(Get(s3,dx,dy), float4x4(-0.036606781184673,0.014660824090242,-0.067625261843204,-0.037890285253525,0.020390896126628,-0.004605279304087,-0.016824893653393,-0.069309145212173,-0.046946708112955,-0.091342352330685,0.007040412630886,0.022306842729449,0.005737219471484,-0.097370840609074,-0.021816331893206,0.030206046998501));
res += mul(Get(s4,-dx,-dy), float4x4(-0.058733772486448,0.036473006010056,0.041417691856623,-0.020230539143085,-0.008664194494486,0.032054509967566,-0.044964250177145,0.079866379499435,-0.050411053001881,0.054955240339041,-0.097053304314613,-0.007165516261011,-0.132279321551323,0.091137461364269,0.005207757931203,0.154836878180504));
res += mul(Get(s4,-dx,0), float4x4(0.145505681633949,-0.099853187799454,-0.039344001561403,0.119061186909676,0.105946801602840,-0.033648602664471,-0.038966741412878,0.019104907289147,0.115847691893578,-0.123300932347775,0.021367004141212,0.162375256419182,0.271780699491501,-0.119803152978420,0.028409175574780,0.085719563066959));
res += mul(Get(s4,-dx,dy), float4x4(0.010783641599119,0.028339110314846,0.049337830394506,-0.052061207592487,-0.002272489015013,0.060810379683971,-0.063177637755871,-0.032751686871052,0.008504856377840,0.042045701295137,0.019169718027115,0.077159360051155,0.067339405417442,0.023060860112309,-0.030276428908110,-0.091166086494923));
res += mul(Get(s4,0,-dy), float4x4(-0.026727262884378,-0.128219336271286,0.074982382357121,0.092838346958160,-0.009994569234550,-0.065403945744038,-0.062553815543652,0.049354325979948,-0.033259585499763,-0.080252870917320,-0.115563318133354,0.162984758615494,0.043335348367691,-0.261456489562988,-0.021235108375549,0.073518320918083));
res += mul(Get(s4,0,0), float4x4(0.014203505590558,0.249774992465973,-0.055148299783468,-0.023239661008120,0.013461318798363,0.110451944172382,-0.041572142392397,0.006222982425243,-0.033620785921812,0.168715015053749,-0.093805454671383,-0.077917106449604,-0.216657415032387,0.353778868913651,-0.143632665276527,-0.182891473174095));
res += mul(Get(s4,0,dy), float4x4(-0.004473302979022,-0.265073329210281,0.065344184637070,-0.090007610619068,0.017332952469587,-0.086057014763355,-0.008479755371809,-0.001364960800856,-0.065879590809345,-0.161802083253860,-0.000816967221908,0.007569764275104,0.040407236665487,-0.076519317924976,-0.038408581167459,0.080344699323177));
res += mul(Get(s4,dx,-dy), float4x4(-0.014877804554999,-0.094264253973961,0.003307809587568,-0.162139594554901,0.021714255213737,-0.002980908844620,-0.040615882724524,-0.077459201216698,0.019706245511770,0.064669743180275,0.073897585272789,0.027217479422688,0.013667592778802,0.105374440550804,-0.077911943197250,-0.083814471960068));
res += mul(Get(s4,dx,0), float4x4(-0.048530649393797,-0.173560664057732,-0.129322826862335,-0.157750010490417,-0.080101832747459,0.032030332833529,-0.056118920445442,0.038017503917217,-0.024438148364425,-0.073629215359688,0.028944777324796,-0.018936812877655,0.029227096587420,-0.212206497788429,0.093036524951458,0.040322985500097));
res += mul(Get(s4,dx,dy), float4x4(-0.008586608804762,-0.168893471360207,0.057273119688034,0.039897482842207,-0.046872351318598,-0.046702601015568,0.043860692530870,0.037990335375071,0.096749641001225,0.101774759590626,0.018763914704323,0.112865962088108,-0.023279432207346,0.111731633543968,0.055955100804567,0.067966677248478));
res += mul(Get(s5,-dx,-dy), float4x4(0.010170978493989,0.054984506219625,0.000827798736282,0.086463734507561,-0.071339100599289,-0.037808399647474,-0.050000671297312,-0.021346533671021,-0.100708216428757,0.017787264660001,-0.009425517171621,-0.091297537088394,0.012062927708030,0.071964956820011,-0.030528681352735,-0.012738697230816));
res += mul(Get(s5,-dx,0), float4x4(0.215094685554504,0.033630609512329,-0.063798710703850,0.074148386716843,0.082200177013874,0.039421349763870,-0.010958204977214,-0.014064455404878,0.210440889000893,-0.026017919182777,-0.008608213625848,0.379773378372192,0.073189720511436,0.015438671223819,-0.022246651351452,-0.012102188542485));
res += mul(Get(s5,-dx,dy), float4x4(0.016341825947165,0.014369529671967,-0.029473355039954,-0.069321520626545,-0.059694439172745,0.013651189394295,0.058254770934582,-0.065436713397503,0.026788678020239,-0.092208579182625,0.105832308530807,0.049708422273397,0.057489834725857,-0.000091298737971,-0.018406966701150,-0.052128661423922));
res += mul(Get(s5,0,-dy), float4x4(-0.051771268248558,-0.014780028723180,0.068042561411858,-0.018804354593158,-0.115830063819885,-0.129528805613518,-0.071063302457333,-0.002456316957250,-0.098061919212341,-0.186053544282913,-0.095299735665321,0.191877275705338,0.003695513354614,0.044606816023588,-0.023407600820065,-0.104112543165684));
res += mul(Get(s5,0,0), float4x4(-0.036929506808519,0.045885428786278,-0.111090667545795,-0.000678404292557,-0.015639517456293,-0.015416895970702,0.004621884785593,-0.035344708710909,0.136531114578247,0.201951757073402,-0.105356439948082,-0.083717800676823,-0.045936938375235,0.098184414207935,-0.056403253227472,-0.023445375263691));
res += mul(Get(s5,0,dy), float4x4(0.045355796813965,-0.063326649367809,0.005243038758636,-0.075315125286579,-0.132030054926872,-0.070381015539169,0.081909507513046,-0.009762124158442,-0.040256492793560,-0.075594186782837,0.064737617969513,-0.165589421987534,-0.036173265427351,-0.007295060437173,0.003541036043316,0.027202591300011));
res += mul(Get(s5,dx,-dy), float4x4(-0.069302044808865,-0.088194511830807,-0.063405260443687,0.038438890129328,-0.063711851835251,0.088069163262844,-0.080218367278576,0.068995624780655,-0.009873929433525,0.010336701758206,0.092499084770679,-0.046942140907049,-0.018563322722912,-0.099821835756302,-0.022362111136317,-0.001819180673920));
res += mul(Get(s5,dx,0), float4x4(0.038438469171524,-0.011049007065594,-0.085771672427654,0.005686786491424,-0.003947408869863,0.052339758723974,-0.051862824708223,0.010741517879069,-0.088737227022648,0.074881672859192,-0.092746630311012,-0.130360364913940,0.055902510881424,-0.132380142807961,0.025756886228919,0.102174602448940));
res += mul(Get(s5,dx,dy), float4x4(-0.087940350174904,-0.051660437136889,-0.051909200847149,-0.038462385535240,-0.089061804115772,0.110984854400158,0.017316881567240,0.054152995347977,0.048567540943623,-0.071990847587585,0.204167395830154,-0.076933249831200,0.021994534879923,-0.099619172513485,0.012071277946234,0.018058121204376));
res = max(float4(0, 0, 0, 0), res) + float4(-0.011663204990327,0.919860303401947,0.011145100928843,-0.063963904976845) * min(float4(0, 0, 0, 0), res);
return res;
}