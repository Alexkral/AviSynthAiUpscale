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
res += mul(Get(s0,-dx,-dy), float4x4(0.060957282781601,0.076562024652958,-0.145100817084312,-0.049936402589083,-0.142462581396103,-0.033965986222029,0.014433339238167,0.129426553845406,-0.099713370203972,-0.108514562249184,0.055226903408766,0.013622625730932,0.103329546749592,-0.025040274485946,-0.022893032059073,-0.058223735541105));
res += mul(Get(s0,-dx,0), float4x4(0.120291903614998,0.018095739185810,0.074859082698822,0.027537582442164,-0.009093721397221,-0.034257832914591,0.082317069172859,0.128343150019646,-0.127780616283417,-0.049579344689846,0.034203372895718,0.137811779975891,-0.155673056840897,-0.133769258856773,-0.048195302486420,-0.161602944135666));
res += mul(Get(s0,-dx,dy), float4x4(-0.035476770251989,0.033574935048819,0.099602729082108,0.128245860338211,-0.206395596265793,-0.017684493213892,-0.040437888354063,-0.086872808635235,-0.147911056876183,-0.008881509304047,0.079676702618599,0.122234866023064,-0.154556140303612,-0.172154784202576,-0.028889117762446,-0.012106849811971));
res += mul(Get(s0,0,-dy), float4x4(0.028537679463625,-0.052266001701355,-0.076368615031242,0.014367314055562,-0.058037646114826,-0.053894277662039,-0.008011946454644,0.010595267638564,-0.086973935365677,-0.044161528348923,-0.088329151272774,-0.058253537863493,0.022320643067360,0.050257295370102,0.118778198957443,-0.079654537141323));
res += mul(Get(s0,0,0), float4x4(0.029780924320221,-0.053154833614826,-0.009213809855282,0.036297459155321,0.016422884538770,0.031417075544596,0.134325593709946,-0.002903516171500,-0.127806156873703,0.009235662408173,-0.065993204712868,0.047513887286186,-0.112679339945316,-0.065799511969090,-0.059237457811832,-0.123736009001732));
res += mul(Get(s0,0,dy), float4x4(-0.130118355154991,0.068037427961826,-0.072868466377258,0.077577561140060,0.026826603338122,0.053652290254831,0.055940281599760,0.030765336006880,-0.206110283732414,-0.035414803773165,-0.008649872615933,0.079947903752327,-0.182933717966080,-0.108201183378696,-0.019630501046777,-0.009225767105818));
res += mul(Get(s0,dx,-dy), float4x4(0.020330451428890,-0.131939485669136,0.145930469036102,-0.097757689654827,-0.058673501014709,0.080497443675995,-0.087428413331509,0.085247382521629,0.051928728818893,-0.070297040045261,0.027767619118094,0.016628986224532,-0.007513273507357,0.047248251736164,0.049298033118248,-0.117474257946014));
res += mul(Get(s0,dx,0), float4x4(0.048915922641754,-0.019059948623180,0.008992088958621,-0.075357340276241,-0.043885793536901,-0.018503831699491,0.019546361640096,0.081725552678108,-0.116426341235638,-0.010972229763865,-0.098989970982075,0.097426429390907,0.050047971308231,-0.056439463049173,-0.007901240140200,-0.132397845387459));
res += mul(Get(s0,dx,dy), float4x4(-0.150766983628273,0.020206669345498,-0.008682298474014,0.032957348972559,-0.099619351327419,0.072399929165840,-0.066442817449570,-0.062894634902477,-0.204032093286514,0.019867347553372,-0.038695748895407,0.160424679517746,-0.042174197733402,0.065495468676090,0.028583457693458,0.001232307404280));
res += mul(Get(s1,-dx,-dy), float4x4(0.003426352282986,-0.052113436162472,-0.008345137350261,-0.024999091401696,0.078347414731979,0.031063944101334,0.042646706104279,-0.004713742528111,0.036069687455893,0.022273415699601,0.014683491550386,-0.019337845966220,-0.065620958805084,-0.025613002479076,0.062673017382622,0.022997625172138));
res += mul(Get(s1,-dx,0), float4x4(-0.040707401931286,-0.090368680655956,0.195180788636208,-0.037551425397396,-0.021140504628420,0.083414591848850,-0.094201505184174,-0.000568003626540,0.089689746499062,-0.127151727676392,-0.111470066010952,0.037698712199926,-0.071689367294312,-0.036172416061163,0.152971297502518,0.016512306407094));
res += mul(Get(s1,-dx,dy), float4x4(-0.047912191599607,-0.092600211501122,0.155090957880020,0.011793786659837,-0.006471003871411,0.172640800476074,-0.019086549058557,-0.052282493561506,0.066438570618629,-0.051266424357891,-0.124543271958828,0.016204772517085,0.019458528608084,0.157218426465988,0.089004322886467,-0.043378483504057));
res += mul(Get(s1,0,-dy), float4x4(0.057842504233122,-0.054788462817669,-0.068254493176937,-0.062391150742769,0.063409164547920,0.040533915162086,0.019428063184023,-0.013207498937845,-0.027173107489944,-0.064566127955914,0.171442016959190,0.198761656880379,-0.009785292670131,-0.061021845787764,-0.130955517292023,-0.219341412186623));
res += mul(Get(s1,0,0), float4x4(0.033445917069912,0.027877526357770,-0.137333527207375,-0.174565792083740,0.049541987478733,-0.072490982711315,0.019444318488240,0.012444858439267,0.142296731472015,-0.056888848543167,0.153736397624016,0.059079781174660,0.011502260342240,-0.102533444762230,0.183858022093773,-0.086893126368523));
res += mul(Get(s1,0,dy), float4x4(-0.004719248507172,-0.075212635099888,-0.005479425191879,-0.052884664386511,0.029721986502409,-0.014712619595230,0.014909170567989,-0.022403959184885,0.177772730588913,0.026748396456242,0.231736585497856,-0.037456329911947,-0.061816558241844,0.114675909280777,0.044465593993664,0.026138192042708));
res += mul(Get(s1,dx,-dy), float4x4(0.209369868040085,-0.100582614541054,0.024154173210263,-0.093327127397060,0.206828534603119,0.088526532053947,-0.026875685900450,-0.041568830609322,0.080789014697075,0.068343728780746,-0.100550957024097,0.030067127197981,0.033997230231762,-0.062010232359171,0.053239583969116,-0.105014689266682));
res += mul(Get(s1,dx,0), float4x4(0.083066210150719,-0.122384585440159,-0.001618237118237,-0.082861110568047,-0.075661025941372,0.112421222031116,-0.060863658785820,-0.078830003738403,-0.126435279846191,-0.002842802321538,-0.093998417258263,-0.008436962962151,0.006891914177686,0.098109841346741,0.230092510581017,-0.120242565870285));
res += mul(Get(s1,dx,dy), float4x4(0.061014067381620,-0.114636182785034,0.079961299896240,0.061540085822344,-0.101270951330662,0.118138492107391,-0.134849503636360,-0.020408399403095,0.140588209033012,0.055335912853479,0.024108942598104,-0.004797507543117,-0.060849290341139,0.173187553882599,-0.083457201719284,-0.097735971212387));
res += mul(Get(s2,-dx,-dy), float4x4(-0.070784769952297,-0.034132231026888,-0.174879148602486,0.054600987583399,-0.097494848072529,-0.035016436129808,-0.135478362441063,-0.026223376393318,0.191925644874573,0.095535978674889,0.036411900073290,0.004006399307400,0.009445657953620,-0.008572838269174,-0.220917433500290,-0.001682453206740));
res += mul(Get(s2,-dx,0), float4x4(-0.135171234607697,-0.196320101618767,0.099967516958714,-0.082745932042599,-0.061931416392326,-0.092363759875298,-0.166459828615189,0.070162013173103,0.080296717584133,0.085740454494953,0.116570450365543,0.032435957342386,-0.117597900331020,-0.026540514081717,0.257599353790283,-0.048113938421011));
res += mul(Get(s2,-dx,dy), float4x4(-0.162708565592766,-0.058851797133684,-0.104282386600971,0.037283349782228,-0.196413576602936,0.037783555686474,-0.089946329593658,-0.038647286593914,-0.004178693983704,0.168566018342972,0.038210708647966,0.079539284110069,-0.204036176204681,0.087059684097767,0.088225223124027,0.164342924952507));
res += mul(Get(s2,0,-dy), float4x4(0.113777704536915,0.043560001999140,0.123175591230392,-0.101863786578178,-0.020568368956447,-0.010603512637317,0.029308406636119,-0.129608631134033,-0.003921401686966,0.013759239576757,-0.042483825236559,-0.116101153194904,0.084566026926041,-0.056717138737440,-0.182947486639023,-0.038465883582830));
res += mul(Get(s2,0,0), float4x4(0.030700866132975,-0.053008027374744,0.168014690279961,-0.046995624899864,-0.112076044082642,-0.076430223882198,0.075484111905098,-0.031025741249323,-0.093716777861118,-0.040300618857145,0.120132900774479,-0.073662683367729,-0.114640004932880,0.006768024526536,0.139441832900047,-0.114571847021580));
res += mul(Get(s2,0,dy), float4x4(-0.113673008978367,-0.000436397735029,-0.005990771576762,0.125761017203331,-0.097888879477978,0.068463660776615,-0.057711698114872,0.142060533165932,0.025257783010602,0.030306059867144,0.005097247194499,-0.019351031631231,-0.092490345239639,0.148338928818703,-0.008232520893216,0.040805291384459));
res += mul(Get(s2,dx,-dy), float4x4(0.059605933725834,-0.058106157928705,-0.135619834065437,-0.156807869672775,0.197075605392456,0.162062004208565,0.116051726043224,-0.147704020142555,0.095500297844410,-0.127292126417160,-0.130237922072411,0.040179949253798,0.105020701885223,0.029451116919518,-0.184768348932266,-0.059823211282492));
res += mul(Get(s2,dx,0), float4x4(0.049546141177416,0.051343146711588,0.159979507327080,-0.128959044814110,0.023696359246969,0.050920423120260,-0.276358962059021,-0.037707313895226,-0.009859808720648,0.118178315460682,-0.058881521224976,-0.009673144668341,0.083072021603584,-0.000961127167102,0.192679643630981,-0.087410978972912));
res += mul(Get(s2,dx,dy), float4x4(0.037566900253296,0.165957078337669,0.070795744657516,-0.016304956749082,0.133752524852753,0.143749386072159,-0.031447064131498,0.049592778086662,0.084892377257347,0.123880714178085,-0.072275184094906,-0.023128757253289,-0.022648843005300,-0.041671544313431,-0.131466150283813,-0.046097099781036));
res += mul(Get(s3,-dx,-dy), float4x4(-0.050721514970064,-0.171784341335297,-0.119179993867874,0.059320740401745,0.070857934653759,0.063852973282337,0.041875395923853,0.205315396189690,-0.111713670194149,-0.051741689443588,0.000718577997759,-0.071640461683273,0.111914686858654,0.130783617496490,0.149117216467857,0.163171380758286));
res += mul(Get(s3,-dx,0), float4x4(-0.159345358610153,0.015989361330867,-0.115634061396122,-0.000941473525017,-0.027811024338007,-0.019651982933283,-0.067389257252216,0.088403701782227,0.054231800138950,-0.083086736500263,0.050354521721601,0.011360576376319,0.038431890308857,0.134073600172997,0.236369326710701,0.059288717806339));
res += mul(Get(s3,-dx,dy), float4x4(-0.217048004269600,0.055646840482950,-0.098741874098778,0.107395865023136,-0.042678587138653,0.090602323412895,-0.112788893282413,-0.046374659985304,0.026464361697435,-0.086122997105122,0.016775153577328,0.008400666527450,0.003681198228151,0.046119220554829,0.108783558011055,0.058334417641163));
res += mul(Get(s3,0,-dy), float4x4(0.028026102110744,-0.074875347316265,0.001535272458568,-0.044505380094051,0.069742180407047,0.023449275642633,-0.133589491248131,0.101708710193634,-0.034549560397863,-0.061838902533054,0.014478830620646,-0.105723842978477,-0.024184944108129,-0.022316452115774,-0.103194907307625,-0.030193688347936));
res += mul(Get(s3,0,0), float4x4(0.062726080417633,-0.038384336978197,0.030965775251389,0.006031195167452,0.040962602943182,-0.018955199047923,-0.077650502324104,0.206094980239868,0.100807398557663,-0.009909353218973,-0.070883795619011,0.034431684762239,-0.070430025458336,-0.121797464787960,-0.152707964181900,0.105560220777988));
res += mul(Get(s3,0,dy), float4x4(-0.101868137717247,0.103270001709461,0.017338620498776,-0.004605591762811,-0.041000604629517,-0.115238919854164,-0.143344640731812,0.090170189738274,0.045064564794302,0.046046555042267,0.016884164884686,0.044721528887749,-0.030201243236661,0.060288291424513,-0.034390594810247,-0.014839005656540));
res += mul(Get(s3,dx,-dy), float4x4(-0.177476793527603,0.112701199948788,-0.134079948067665,-0.139122113585472,-0.029123343527317,-0.123265802860260,-0.080253794789314,-0.005741001572460,-0.023422604426742,0.023540757596493,-0.068858213722706,-0.058557175099850,0.073757931590080,-0.100174203515053,-0.119261525571346,0.168759644031525));
res += mul(Get(s3,dx,0), float4x4(0.073371469974518,0.113721929490566,0.106316134333611,-0.086961701512337,0.090007536113262,-0.094384111464024,0.243753507733345,0.062142971903086,-0.000405290367780,-0.025511078536510,-0.144348844885826,-0.076350107789040,-0.083151265978813,-0.094241484999657,0.077731594443321,-0.067643478512764));
res += mul(Get(s3,dx,dy), float4x4(-0.005988197866827,0.110950097441673,0.055104125291109,0.016437573358417,-0.031578470021486,0.011208434589207,0.081511005759239,0.043124832212925,0.143638551235199,-0.018005931749940,-0.092802599072456,-0.079739160835743,-0.084018386900425,0.074991650879383,-0.182133167982101,0.085476875305176));
return max(float4(0,0,0,0), res);
}
