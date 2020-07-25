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
res += mul(Get(s0,-dx,-dy), float4x4(0.015379398129880,-0.081425204873085,0.031307518482208,0.073680676519871,0.102776221930981,-0.175950095057487,0.066847808659077,0.044795244932175,-0.166242510080338,0.123261183500290,-0.050202719867229,0.091923251748085,-0.033672686666250,0.003585954895243,0.028967376798391,-0.222256943583488));
res += mul(Get(s0,-dx,0), float4x4(0.001764227054082,-0.011618000455201,-0.189773127436638,0.091615401208401,0.019013900309801,0.159269273281097,-0.058785393834114,0.002286197384819,-0.121211677789688,-0.018974566832185,0.066986784338951,0.093322701752186,0.012827153317630,-0.078158617019653,-0.125295758247375,-0.100781202316284));
res += mul(Get(s0,-dx,dy), float4x4(0.243983864784241,-0.133947595953941,0.024092897772789,0.131926238536835,0.009751942008734,-0.067638278007507,-0.007971932180226,-0.071948900818825,0.033981949090958,-0.026195907965302,0.018954508006573,0.027858821675181,0.007834644988179,0.001459737075493,-0.086655125021935,-0.278433471918106));
res += mul(Get(s0,0,-dy), float4x4(-0.034419048577547,-0.069902852177620,0.017216337844729,-0.129423916339874,-0.026795297861099,-0.067092470824718,0.094089925289154,0.155638143420219,-0.057613130658865,0.126791551709175,0.068002738058567,0.150573268532753,-0.046432688832283,-0.053325358778238,-0.156895101070404,0.073408819735050));
res += mul(Get(s0,0,0), float4x4(-0.024635376408696,-0.147784054279327,-0.088385924696922,0.178806111216545,0.062827229499817,0.014860323630273,0.024306531995535,-0.113098464906216,0.106167815625668,-0.092443317174911,0.047788094729185,-0.027760110795498,-0.147648885846138,-0.086094282567501,0.040935359895229,-0.147066071629524));
res += mul(Get(s0,0,dy), float4x4(0.224033445119858,-0.192499101161957,0.027225732803345,0.020852942019701,-0.104269102215767,0.090588755905628,0.147532328963280,0.094311907887459,0.015138153918087,0.051282159984112,-0.025758795440197,0.113481603562832,0.125547945499420,0.084120795130730,-0.103468798100948,0.004599713254720));
res += mul(Get(s0,dx,-dy), float4x4(0.012117991223931,-0.139184921979904,-0.173403263092041,0.079855464398861,0.048724032938480,0.037267860025167,-0.228864282369614,-0.052273608744144,0.054361809045076,0.076823309063911,0.090549096465111,0.000698019866832,0.076145917177200,-0.004555010702461,-0.197427108883858,0.024417890235782));
res += mul(Get(s0,dx,0), float4x4(-0.171688795089722,0.096810184419155,0.134766042232513,-0.044756252318621,0.058888945728540,-0.200613319873810,0.041557900607586,-0.005793381482363,-0.205712482333183,0.025546398013830,0.025822257623076,0.201068237423897,-0.042708944529295,-0.000218329354539,-0.017062470316887,-0.112583145499229));
res += mul(Get(s0,dx,dy), float4x4(0.020114794373512,0.022950189188123,0.109882161021233,-0.031452357769012,-0.058847710490227,-0.142601788043976,-0.093153640627861,-0.165768593549728,-0.088334374129772,-0.090817116200924,-0.101878494024277,-0.007057661190629,-0.084341764450073,0.155016139149666,-0.049852382391691,-0.031907405704260));
res += mul(Get(s1,-dx,-dy), float4x4(0.017464319244027,-0.123976290225983,0.156800583004951,0.160245031118393,-0.113056771457195,-0.161887317895889,0.042623069137335,-0.051947928965092,0.042698618024588,0.035089634358883,-0.164695098996162,0.082995846867561,-0.131227016448975,0.030431181192398,0.108289346098900,0.162095427513123));
res += mul(Get(s1,-dx,0), float4x4(-0.148031353950500,-0.036205224692822,0.000154762587044,-0.049896612763405,0.030168609693646,0.016596404835582,0.138402506709099,0.119736447930336,-0.058349493891001,0.025126285851002,-0.077421002089977,-0.191975459456444,-0.043610904365778,-0.049418587237597,0.154322728514671,-0.064099952578545));
res += mul(Get(s1,-dx,dy), float4x4(0.090323016047478,-0.081659235060215,0.006265461910516,0.016163125634193,-0.063807360827923,-0.047060202807188,-0.061918932944536,-0.185124233365059,0.002534528961405,-0.031618352979422,0.111457079648972,-0.106032252311707,0.217027276754379,-0.004454868379980,0.030970513820648,-0.122665554285049));
res += mul(Get(s1,0,-dy), float4x4(-0.022943854331970,0.205650553107262,-0.046103790402412,-0.152362689375877,0.183970466256142,0.034740556031466,0.042334716767073,-0.247372582554817,-0.073472268879414,-0.039189245551825,0.109976820647717,0.076507329940796,-0.021003969013691,0.090091861784458,0.069516003131866,0.133679062128067));
res += mul(Get(s1,0,0), float4x4(0.070379257202148,0.062683612108231,-0.164578914642334,-0.094387933611870,0.123431488871574,0.105997733771801,0.035555414855480,-0.105992339551449,-0.009433151222765,0.055459376424551,0.025015464052558,0.018050879240036,0.132034450769424,0.042711637914181,-0.095939300954342,-0.013762610033154));
res += mul(Get(s1,0,dy), float4x4(-0.045700937509537,-0.150948107242584,-0.037379283457994,0.134351253509521,-0.046480841934681,0.108552888035774,-0.035997878760099,0.060284871608019,0.031965795904398,-0.015216074883938,-0.061304830014706,0.093245990574360,-0.105260387063026,0.035123541951180,0.070724323391914,-0.062939263880253));
res += mul(Get(s1,dx,-dy), float4x4(-0.069169297814369,0.055580254644156,-0.187667384743690,-0.060549858957529,0.156011834740639,-0.106760524213314,-0.036048173904419,0.087489232420921,-0.063861742615700,0.116754844784737,0.071235455572605,-0.068195156753063,0.150068327784538,0.061077315360308,0.136519402265549,-0.007671525236219));
res += mul(Get(s1,dx,0), float4x4(0.039424426853657,0.053811397403479,0.021872270852327,0.002118262927979,0.047436505556107,0.040436677634716,-0.065841823816299,-0.067449100315571,0.001006734441034,0.006484581623226,0.094410836696625,0.005635617300868,-0.059470701962709,-0.161225289106369,0.066865466535091,0.013666504994035));
res += mul(Get(s1,dx,dy), float4x4(0.067216709256172,-0.022369636222720,0.046462625265121,0.097008399665356,-0.134220302104950,-0.076699689030647,0.129859536886215,0.139137446880341,-0.104684665799141,-0.117241539061069,0.088915728032589,0.136304780840874,-0.083302445709705,0.018973270431161,0.189742475748062,0.008650202304125));
res += mul(Get(s2,-dx,-dy), float4x4(0.016905995085835,0.132934018969536,-0.197722136974335,-0.207067087292671,-0.148319572210312,0.152744486927986,-0.072315543889999,-0.115479752421379,0.128354251384735,-0.002588505158201,-0.044441714882851,-0.106214292347431,-0.069159820675850,-0.117686919867992,-0.041290938854218,-0.285430252552032));
res += mul(Get(s2,-dx,0), float4x4(0.030875151976943,-0.237014427781105,-0.083499699831009,-0.040369857102633,-0.312363147735596,-0.050320938229561,-0.095034636557102,-0.035640612244606,-0.048278100788593,-0.003460406092927,-0.006802216637880,-0.005041176918894,0.008765919134021,-0.216230154037476,-0.132799729704857,0.126081347465515));
res += mul(Get(s2,-dx,dy), float4x4(0.045339971780777,-0.117854170501232,0.074239179491997,-0.103935949504375,0.045179467648268,-0.103230252861977,-0.204630449414253,0.076204769313335,0.216458439826965,-0.068312466144562,-0.048125121742487,0.102439165115356,0.122054003179073,-0.095815397799015,0.023894598707557,0.115179285407066));
res += mul(Get(s2,0,-dy), float4x4(0.000131627108203,0.017861561849713,0.063263222575188,0.040498156100512,0.115654870867729,0.091177709400654,0.018664604052901,-0.089689493179321,0.200416386127472,0.067131303250790,0.026286980137229,-0.173575535416603,0.058617345988750,-0.071922920644283,0.005305266007781,-0.221113055944443));
res += mul(Get(s2,0,0), float4x4(-0.090002462267876,-0.039214819669724,0.110656253993511,-0.124818757176399,0.007962015457451,0.108401849865913,0.162759423255920,0.133974403142929,-0.105202943086624,-0.071927063167095,0.063286915421486,-0.089905969798565,-0.043657775968313,-0.001482884283178,0.027877088636160,-0.022467186674476));
res += mul(Get(s2,0,dy), float4x4(0.240780383348465,-0.102975815534592,0.059892650693655,-0.050017166882753,0.054667484015226,0.079882137477398,-0.008552548475564,-0.130836129188538,-0.090938255190849,-0.166645348072052,0.060502689331770,0.113792054355145,0.088796049356461,0.098881185054779,0.029006322845817,0.153733432292938));
res += mul(Get(s2,dx,-dy), float4x4(-0.067462220788002,-0.034297510981560,-0.035111643373966,-0.071123115718365,0.081027239561081,-0.124700047075748,0.142469972372055,-0.086543224751949,0.096964195370674,-0.106342576444149,-0.030131831765175,-0.247373461723328,0.110656380653381,0.022999873384833,0.094521187245846,-0.104110904037952));
res += mul(Get(s2,dx,0), float4x4(0.093842156231403,-0.130059555172920,-0.020794313400984,0.030913090333343,0.014550850726664,0.086894571781158,0.004007219336927,-0.063000619411469,-0.009831073693931,-0.038561154156923,0.139513641595840,-0.047523099929094,0.074821740388870,0.028102671727538,0.178562909364700,0.004877519328147));
res += mul(Get(s2,dx,dy), float4x4(-0.187292903661728,-0.014252533204854,0.313778102397919,0.125659570097923,-0.038755014538765,0.037000454962254,-0.117490224540234,0.022704789415002,-0.060671556740999,-0.011955179274082,-0.144965723156929,0.035528909415007,-0.014170141890645,0.080608174204826,0.087169803678989,-0.027930837124586));
res += mul(Get(s3,-dx,-dy), float4x4(-0.172649905085564,-0.007646101992577,0.077636547386646,-0.102101109921932,0.063652254641056,-0.136547178030014,-0.044337514787912,0.025972859933972,-0.049373731017113,0.309871822595596,0.095742575824261,-0.088149033486843,0.168381720781326,0.072029843926430,-0.114777110517025,0.032093431800604));
res += mul(Get(s3,-dx,0), float4x4(0.091642878949642,0.026581151410937,0.065490476787090,0.013938715681434,-0.058325141668320,0.168415427207947,-0.008514584973454,-0.032556183636189,-0.099100433290005,0.035635486245155,-0.019369492307305,0.113080896437168,-0.086884699761868,0.152094915509224,-0.056879818439484,-0.030126547440886));
res += mul(Get(s3,-dx,dy), float4x4(0.198157623410225,0.228357061743736,-0.008342563174665,0.076565966010094,0.085167385637760,-0.333619952201843,0.138257533311844,-0.002254936844110,-0.113401651382446,-0.017384177073836,-0.031791094690561,0.049112595617771,0.003398369532079,0.131954714655876,-0.138445734977722,-0.051835477352142));
res += mul(Get(s3,0,-dy), float4x4(0.018438912928104,-0.121650226414204,-0.030782742425799,-0.008763179183006,0.015759022906423,-0.041877917945385,-0.182316556572914,-0.100385069847107,0.019465247169137,-0.119492277503014,0.120000101625919,0.065242387354374,-0.001237212563865,-0.065102837979794,-0.018346035853028,0.080359227955341));
res += mul(Get(s3,0,0), float4x4(0.092300206422806,-0.085835389792919,0.138196811079979,0.118720613420010,-0.163103848695755,0.035866454243660,-0.008011216297746,-0.113105788826942,-0.036148611456156,0.037301871925592,0.067255504429340,-0.299031585454941,0.068274237215519,-0.006934021133929,-0.049661867320538,-0.118442185223103));
res += mul(Get(s3,0,dy), float4x4(0.301062077283859,-0.081395164132118,0.073535196483135,0.197014063596725,0.059213142842054,0.045134559273720,0.079127855598927,0.084140762686729,-0.022551609203219,-0.133098304271698,-0.224906101822853,-0.072138398885727,-0.080832995474339,-0.188647359609604,0.085738539695740,-0.170995965600014));
res += mul(Get(s3,dx,-dy), float4x4(-0.077663153409958,-0.117936603724957,0.126290962100029,-0.029932316392660,0.021859630942345,0.308953195810318,-0.099315926432610,0.150776684284210,0.112848326563835,-0.039108596742153,-0.011026469990611,-0.061805408447981,0.149641752243042,-0.056926861405373,-0.221710860729218,-0.026413505896926));
res += mul(Get(s3,dx,0), float4x4(0.108942359685898,0.094735011458397,0.015475371852517,0.015840142965317,0.032675512135029,0.080329701304436,-0.062401514500380,-0.124785661697388,-0.025910653173923,-0.216553792357445,0.138827949762344,0.057723701000214,0.055340681225061,-0.060873575508595,0.070553138852119,-0.014012536965311));
res += mul(Get(s3,dx,dy), float4x4(0.168765380978584,0.231316253542900,-0.163485780358315,0.081821337342262,-0.095022164285183,0.008651668205857,-0.072452209889889,0.023239351809025,-0.133713573217392,-0.065401390194893,-0.128554269671440,0.170190781354904,-0.084920562803745,-0.139853537082672,-0.041292771697044,-0.107565961778164));
return max(float4(0,0,0,0), res);
}
