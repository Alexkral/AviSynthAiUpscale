sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.177704080939293,0.011282077990472,0.000118852825835,-0.115640722215176);
res += mul(Get(s0,-dx,-dy), float4x4(-0.034081384539604,0.019225271418691,-0.022003866732121,-0.046397585421801,0.028399191796780,0.007997908629477,-0.096046693623066,0.055169183760881,-0.006465725600719,-0.131261244416237,0.008733220398426,0.001226815162227,-0.067210122942924,0.035902194678783,0.003665979020298,0.063303656876087));
res += mul(Get(s0,-dx,0), float4x4(-0.056986931711435,0.043289110064507,-0.124546580016613,0.140068069100380,0.061932999640703,-0.085901379585266,0.029686974361539,-0.065606892108917,-0.060222212225199,0.052991487085819,-0.140081778168678,-0.015134345740080,-0.019487828016281,0.014505106024444,-0.061489518731833,0.115677304565907));
res += mul(Get(s0,-dx,dy), float4x4(0.058962509036064,-0.056060325354338,-0.005497062113136,0.066519290208817,-0.001485658925958,0.093157455325127,-0.034282129257917,-0.043856527656317,-0.066992275416851,-0.212340250611305,-0.004781484138221,0.084901489317417,-0.015826361253858,-0.221883982419968,0.147382289171219,-0.013325358740985));
res += mul(Get(s0,0,-dy), float4x4(0.175872787833214,-0.092716954648495,-0.059117164462805,-0.189604550600052,-0.195319965481758,-0.204876050353050,0.074097901582718,-0.053804468363523,0.175216972827911,-0.247004777193069,-0.067808456718922,-0.131700694561005,-0.139210730791092,0.354819238185883,0.073937669396400,-0.028120556846261));
res += mul(Get(s0,0,0), float4x4(0.194710180163383,0.149096384644508,-0.039352644234896,-0.227555871009827,0.073613844811916,0.265672504901886,-0.148684084415436,0.079615198075771,-0.113357424736023,-0.113710284233093,0.321971684694290,-0.066567465662956,0.081970289349556,-0.129758253693581,-0.029619539156556,0.196517735719681));
res += mul(Get(s0,0,dy), float4x4(-0.133534461259842,-0.294586300849915,-0.083253063261509,0.057343903928995,0.059435848146677,-0.079619728028774,-0.108064852654934,0.004509204998612,-0.137431651353836,-0.252655148506165,0.305752038955688,-0.072953850030899,-0.071302466094494,0.001244528801180,0.157602369785309,-0.100295990705490));
res += mul(Get(s0,dx,-dy), float4x4(-0.025660132989287,-0.176614165306091,-0.017500417307019,-0.158158794045448,-0.081746362149715,-0.058851394802332,-0.076327919960022,0.017316639423370,0.134409189224243,0.209428265690804,-0.066224791109562,0.097471535205841,-0.036247871816158,-0.088634401559830,-0.151651784777641,0.113884128630161));
res += mul(Get(s0,dx,0), float4x4(0.141033023595810,0.013378920964897,-0.145635902881622,0.203525215387344,-0.063362188637257,0.223500937223434,0.134870901703835,0.027114493772388,0.086627297103405,-0.193979337811470,-0.171145200729370,0.099694676697254,0.122449167072773,0.209835037589073,0.245322585105896,0.459246635437012));
res += mul(Get(s0,dx,dy), float4x4(0.068253003060818,-0.232688903808594,-0.328544735908508,-0.111963771283627,0.049915999174118,0.006402230821550,0.007353980559856,0.009916388429701,0.015949020162225,0.010970814153552,-0.290599018335342,-0.142542228102684,-0.068683072924614,0.320251077413559,-0.195642471313477,0.103676341474056));
res += mul(Get(s1,-dx,-dy), float4x4(-0.056796949356794,-0.045007072389126,0.115983396768570,-0.034094925969839,0.187734842300415,0.002254052087665,0.033650122582912,0.023125872015953,0.194718703627586,-0.005706585943699,-0.120146974921227,0.270923942327499,0.046126700937748,-0.045218300074339,0.032759536057711,0.093549638986588));
res += mul(Get(s1,-dx,0), float4x4(0.052850633859634,0.138763979077339,0.138101905584335,0.059899937361479,-0.039874907582998,-0.089017197489738,0.159066781401634,-0.494538456201553,0.009442840702832,0.004367456771433,-0.137560099363327,0.095259070396423,0.106749251484871,-0.116683870553970,-0.036007992923260,0.078693263232708));
res += mul(Get(s1,-dx,dy), float4x4(-0.073799684643745,-0.091484084725380,0.041996210813522,0.038921449333429,-0.115220107138157,-0.086924083530903,0.106335528194904,0.055202394723892,-0.007402466144413,-0.078831076622009,-0.054911911487579,0.028912063688040,-0.002382057253271,-0.125075891613960,0.118006840348244,-0.025234131142497));
res += mul(Get(s1,0,-dy), float4x4(0.052847560495138,0.326818257570267,-0.151136726140976,-0.173994749784470,0.078599855303764,0.439746022224426,0.094896942377090,-0.014126953668892,-0.079423591494560,0.125906318426132,-0.198590219020844,-0.146721318364143,0.609247028827667,0.340606331825256,0.084973730146885,0.280450940132141));
res += mul(Get(s1,0,0), float4x4(-0.079013839364052,-0.668333411216736,-0.220399111509323,-0.645711362361908,-0.258957803249359,-0.278575390577316,-0.128538489341736,-0.131028398871422,0.109589345753193,-0.110380575060844,-0.024950578808784,0.241445705294609,-0.257926613092422,0.076499439775944,0.515987873077393,-0.053409390151501));
res += mul(Get(s1,0,dy), float4x4(0.048223100602627,0.015025155618787,0.054048527032137,-0.118436701595783,-0.214504435658455,-0.500024139881134,-0.272604674100876,0.159387007355690,-0.005839634221047,-0.017162134870887,-0.100077040493488,0.020651625469327,-0.036393612623215,0.114038795232773,0.352925866842270,0.089346207678318));
res += mul(Get(s1,dx,-dy), float4x4(-0.173181504011154,0.128978684544563,0.082997672259808,-0.128557786345482,0.003959233406931,0.059422101825476,0.031527042388916,0.110044755041599,0.071735195815563,0.402108043432236,0.366204142570496,0.287498444318771,0.170898720622063,0.355751633644104,-0.060689676553011,-0.023673437535763));
res += mul(Get(s1,dx,0), float4x4(-0.086699627339840,-0.042344123125076,-0.105745837092400,-0.113154187798500,0.147143751382828,0.463481485843658,0.081008188426495,0.814640581607819,-0.046034529805183,0.121549136936665,0.555447936058044,0.100091278553009,-0.010947558097541,-0.084450766444206,-0.423173457384109,-0.369034111499786));
res += mul(Get(s1,dx,dy), float4x4(-0.098272375762463,0.015629224479198,-0.152193889021873,0.100842349231243,-0.076856434345245,-0.112277284264565,0.017576977610588,-0.038323946297169,0.044548485428095,0.038091342896223,0.142158523201942,0.023162830621004,-0.077749639749527,0.078656889498234,-0.322407186031342,-0.049872949719429));
res += mul(Get(s2,-dx,-dy), float4x4(-0.136385396122932,-0.039151359349489,-0.044966395944357,0.130173191428185,-0.045410513877869,-0.062522664666176,0.025536008179188,0.020519463345408,-0.257389634847641,0.107129588723183,0.168685421347618,0.336911559104919,0.034448437392712,-0.038957871496677,-0.037740137428045,-0.028326964005828));
res += mul(Get(s2,-dx,0), float4x4(-0.212534680962563,-0.132748425006866,-0.010034928098321,0.087777152657509,-0.330886155366898,-0.076834745705128,-0.047878049314022,0.162978470325470,0.024247677996755,0.149077445268631,-0.158490136265755,0.188779339194298,-0.011747724376619,0.203154414892197,0.093212828040123,-0.144134312868118));
res += mul(Get(s2,-dx,dy), float4x4(0.000550045631826,0.054323811084032,0.017815202474594,0.026116283610463,0.001366947544739,-0.145072683691978,0.020659664645791,-0.181308850646019,0.068209141492844,0.059228658676147,-0.013559503480792,0.196119368076324,-0.076761260628700,0.150754988193512,0.063650466501713,-0.075740814208984));
res += mul(Get(s2,0,-dy), float4x4(-0.445302933454514,-0.036445453763008,0.108805418014526,0.152978688478470,0.007366287056357,-0.206505283713341,-0.037253115326166,0.025781229138374,-0.055270161479712,-0.172299638390541,0.267724215984344,0.079299174249172,0.133524224162102,-0.074281662702560,-0.036624208092690,0.043038487434387));
res += mul(Get(s2,0,0), float4x4(0.104845210909843,-0.061441186815500,-0.258843749761581,-0.414124935865402,-0.928816616535187,0.247950509190559,0.134635820984840,-0.024695675820112,0.065607927739620,0.210206344723701,0.194310218095779,-0.028454175218940,-0.072636336088181,0.340183913707733,-0.106290549039841,0.210473492741585));
res += mul(Get(s2,0,dy), float4x4(0.011927877552807,-0.110324017703533,-0.145549565553665,-0.033636357635260,0.133900910615921,-0.431036621332169,-0.038750663399696,0.124037995934486,0.054446842521429,0.132067427039146,0.195064872503281,0.077059492468834,-0.124971948564053,0.296972274780273,-0.181122198700905,-0.065879814326763));
res += mul(Get(s2,dx,-dy), float4x4(-0.094459407031536,-0.082745619118214,-0.317944169044495,-0.029183495789766,-0.007068033330142,-0.008243781514466,-0.021949695423245,0.009533495642245,-0.030651258304715,0.020166354253888,0.209154188632965,0.225234821438789,-0.126038208603859,0.018993696197867,-0.005874687340111,-0.017721373587847));
res += mul(Get(s2,dx,0), float4x4(-0.014824779704213,-0.091897971928120,-0.060232028365135,0.134793102741241,-0.211810648441315,-0.057473678141832,-0.141270533204079,-0.037361893802881,0.013571013696492,0.044423438608646,0.219085350632668,0.123509123921394,-0.061211884021759,0.011586776934564,0.069495402276516,-0.163932070136070));
res += mul(Get(s2,dx,dy), float4x4(-0.021933004260063,-0.014419171959162,0.045468993484974,0.057673383504152,-0.044573541730642,-0.137360543012619,-0.040785003453493,-0.033081151545048,0.039752852171659,0.020935570821166,0.310555338859558,-0.001685554627329,0.033897381275892,0.162932574748993,-0.003869931213558,-0.245748311281204));
res = max(float4(0, 0, 0, 0), res) + float4(-0.195181936025620,0.550405263900757,-0.476365029811859,0.536177635192871) * min(float4(0, 0, 0, 0), res);
return res;
}