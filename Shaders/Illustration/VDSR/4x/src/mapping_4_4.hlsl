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
res += mul(Get(s0,-dx,-dy), float4x4(-0.107403263449669,-0.058661527931690,-0.130496680736542,-0.060408238321543,-0.014588934369385,0.216643497347832,-0.022104846313596,-0.034387405961752,-0.075558088719845,-0.194011375308037,-0.005903533659875,-0.041069082915783,0.451974838972092,-0.039352379739285,0.557922005653381,0.196873590350151));
res += mul(Get(s0,-dx,0), float4x4(-0.155806258320808,-0.045690748840570,-0.041514869779348,-0.098263479769230,-0.043598849326372,0.201081007719040,-0.061258051544428,0.017654424533248,-0.087455928325653,-0.113671950995922,-0.005381633993238,-0.068148389458656,0.165125578641891,-0.047633513808250,0.164602264761925,0.020370041951537));
res += mul(Get(s0,-dx,dy), float4x4(-0.131467461585999,0.077414825558662,-0.035837337374687,0.016542060300708,-0.018448580056429,-0.060118686407804,-0.070942290127277,-0.102449662983418,0.151686131954193,-0.124246455729008,0.019433265551925,-0.103159144520760,0.190343216061592,-0.304696232080460,-0.197883963584900,-0.129076331853867));
res += mul(Get(s0,0,-dy), float4x4(-0.036327175796032,0.022562924772501,-0.078235134482384,-0.040477242320776,-0.000188265767065,-0.173953056335449,0.003289559390396,-0.240309983491898,-0.101168945431709,-0.123298972845078,-0.025833498686552,0.084653683006763,-0.045685239136219,-0.029213439673185,-0.004865572787821,-0.012033027596772));
res += mul(Get(s0,0,0), float4x4(-0.023213729262352,0.040178950875998,-0.041271947324276,-0.131864055991173,-0.038903933018446,-0.093802601099014,-0.049249801784754,0.108480408787727,-0.242515936493874,0.084699928760529,0.007262001745403,-0.069558322429657,0.047736093401909,-0.184624508023262,-0.078321732580662,-0.081012435257435));
res += mul(Get(s0,0,dy), float4x4(-0.001919778180309,-0.257245182991028,-0.093120515346527,-0.024683181196451,-0.021590437740088,-0.273907840251923,-0.069996237754822,-0.186502560973167,0.004264133051038,0.156164586544037,0.145272642374039,-0.064841039478779,0.006233425345272,-0.439279586076736,-0.287011593580246,-0.146766662597656));
res += mul(Get(s0,dx,-dy), float4x4(-0.049389634281397,0.069647282361984,-0.157375171780586,0.054219160228968,0.011178203858435,0.115191042423248,0.029668707400560,0.028540330007672,-0.201539561152458,-0.133775845170021,-0.017234856262803,0.057690117508173,-0.347296029329300,0.155071690678596,-0.008168932050467,-0.125058054924011));
res += mul(Get(s0,dx,0), float4x4(-0.059902157634497,-0.056727558374405,-0.075809776782990,-0.081710062921047,0.051482107490301,-0.023194056004286,-0.072352930903435,0.352594733238220,-0.276837050914764,-0.079586021602154,0.052255067974329,-0.004212875850499,-0.327696442604065,0.048733420670033,0.186798155307770,-0.183407291769981));
res += mul(Get(s0,dx,dy), float4x4(-0.039620842784643,-0.369356811046600,-0.118092864751816,-0.079466193914413,-0.035790719091892,-0.134247526526451,-0.004409484099597,0.048131316900253,-0.059775102883577,-0.012876662425697,-0.123261548578739,-0.016758870333433,-0.373198896646500,0.516645193099976,-0.376579612493515,-0.182309105992317));
res += mul(Get(s1,-dx,-dy), float4x4(-0.083661787211895,-0.096598893404007,0.029965182766318,0.043323975056410,-0.053744174540043,0.137578293681145,-0.067860335111618,-0.011210828088224,-0.172513306140900,-0.240497201681137,-0.074552632868290,0.198568835854530,0.044273663312197,-0.147876590490341,-0.037761442363262,0.197409152984619));
res += mul(Get(s1,-dx,0), float4x4(-0.099619008600712,0.036248765885830,-0.014878668822348,-0.045799802988768,-0.061973996460438,0.090148001909256,-0.024854637682438,0.139273673295975,-0.217241376638412,0.005653021391481,-0.029883904382586,0.042362991720438,-0.063973292708397,-0.116732813417912,-0.061723701655865,0.098953992128372));
res += mul(Get(s1,-dx,dy), float4x4(0.075752057135105,0.029458107426763,-0.022226622328162,0.030089657753706,0.026994790881872,0.060204360634089,-0.135604098439217,-0.043700482696295,0.102173276245594,-0.072424232959747,0.002869209507480,-0.073041260242462,0.139229267835617,0.303392618894577,0.173606634140015,-0.054726675152779));
res += mul(Get(s1,0,-dy), float4x4(-0.021876964718103,0.002643819432706,-0.003613526700065,0.031413458287716,-0.040690198540688,0.117979459464550,-0.052073523402214,-0.022199906408787,-0.109813109040260,-0.128257319331169,0.089204728603363,0.125287160277367,-0.117133855819702,-0.101993858814240,0.091400414705276,0.088285043835640));
res += mul(Get(s1,0,0), float4x4(-0.082719147205353,0.091714113950729,-0.090798288583755,-0.151259392499924,-0.020095366984606,0.067554853856564,-0.090802848339081,0.008154095150530,-0.082388460636139,-0.028251264244318,-0.170346811413765,-0.156287118792534,-0.033088423311710,0.040917444974184,-0.093255348503590,-0.046955935657024));
res += mul(Get(s1,0,dy), float4x4(0.023911461234093,-0.166800945997238,-0.042963843792677,-0.119678907096386,0.009738435968757,-0.131257057189941,-0.089788325130939,-0.261973023414612,-0.111087046563625,0.011157647706568,0.004320244304836,-0.094544291496277,0.107974730432034,-0.093001648783684,-0.007965459488332,-0.175127297639847));
res += mul(Get(s1,dx,-dy), float4x4(0.000787827186286,0.021575681865215,-0.063922539353371,0.166502505540848,-0.088603124022484,0.095363564789295,-0.005298621486872,0.268493205308914,-0.072005063295364,-0.157107308506966,0.050568532198668,-0.003583517158404,-0.128736287355423,-0.187257811427116,0.197970539331436,-0.029127687215805));
res += mul(Get(s1,dx,0), float4x4(-0.096739195287228,0.066665060818195,-0.099918738007545,0.064952537417412,-0.022092783823609,0.008688542991877,0.021884629502892,0.116745635867119,-0.097540080547333,-0.134134575724602,-0.109692469239235,-0.292502582073212,-0.114301413297653,0.298527956008911,-0.150999471545219,-0.125476211309433));
res += mul(Get(s1,dx,dy), float4x4(-0.010096562094986,-0.160235494375229,-0.092511259019375,0.068266533315182,-0.120123311877251,-0.151772990822792,-0.067880518734455,0.130629152059555,-0.105597682297230,0.104133896529675,-0.196321934461594,-0.145871162414551,-0.113945290446281,0.248451083898544,-0.121664695441723,-0.227216854691505));
res += mul(Get(s2,-dx,-dy), float4x4(0.082612343132496,0.323380857706070,0.022028939798474,-0.054141342639923,-0.102663941681385,-0.096519276499748,-0.166298016905785,0.151552811264992,-0.041744545102119,0.019032659009099,-0.037143185734749,-0.000617173674982,-0.212770044803619,-0.054297193884850,-0.011551606468856,0.151034101843834));
res += mul(Get(s2,-dx,0), float4x4(-0.024122543632984,-0.113774634897709,0.013205271214247,-0.081206791102886,-0.139647081494331,-0.208224684000015,-0.148972302675247,-0.008161989971995,0.075370408594608,0.032245852053165,-0.044685162603855,-0.146995827555656,-0.030205722898245,0.139476716518402,-0.168984919786453,-0.134331837296486));
res += mul(Get(s2,-dx,dy), float4x4(-0.019255405291915,0.112079046666622,0.014164288528264,-0.007766719907522,-0.045645006000996,0.424094259738922,0.030329992994666,-0.203007131814957,0.179224386811256,-0.106070376932621,-0.140143126249313,0.044963140040636,-0.002108735730872,-0.072715818881989,-0.077425539493561,-0.008068745024502));
res += mul(Get(s2,0,-dy), float4x4(0.029577525332570,-0.042651582509279,0.003336203750223,-0.196046501398087,-0.145671844482422,-0.012012719176710,0.056884258985519,-0.000637999037281,-0.108140096068382,0.143416613340378,-0.101977653801441,0.141717806458473,-0.050980702042580,-0.059518966823816,-0.038715019822121,-0.063381820917130));
res += mul(Get(s2,0,0), float4x4(0.007930153049529,0.129516437649727,-0.033582437783480,-0.048238098621368,-0.109183967113495,0.014600732363760,0.062456291168928,0.010119022801518,0.074421264231205,0.133805200457573,-0.160221233963966,-0.174455776810646,0.048822779208422,0.143212601542473,-0.020617403090000,-0.021463235840201));
res += mul(Get(s2,0,dy), float4x4(0.056905433535576,-0.115772180259228,-0.027424640953541,0.150923788547516,-0.125832766294479,0.086331516504288,-0.124789424240589,-0.161732181906700,0.023383578285575,-0.101191394031048,-0.103599548339844,-0.047049425542355,-0.005225052125752,0.265831738710403,-0.002596087055281,-0.048331882804632));
res += mul(Get(s2,dx,-dy), float4x4(-0.026709236204624,-0.218582943081856,-0.011483890004456,-0.082161739468575,-0.150725603103638,-0.127384036779404,-0.051645152270794,-0.143154874444008,-0.056704383343458,0.025515833869576,-0.126168876886368,-0.038396593183279,-0.164450794458389,0.118511818349361,-0.071477979421616,-0.249163717031479));
res += mul(Get(s2,dx,0), float4x4(0.011803963221610,-0.050427936017513,-0.001975211082026,0.142315953969955,-0.278271466493607,-0.322334766387939,-0.053485922515392,-0.034124631434679,0.097198635339737,0.024033246561885,0.008584913797677,-0.099598705768585,0.006537095177919,0.047005362808704,-0.068549051880836,-0.124207459390163));
res += mul(Get(s2,dx,dy), float4x4(0.018174599856138,0.076224818825722,0.075491413474083,-0.063989169895649,-0.330262720584869,-0.099633485078812,-0.155596852302551,-0.233333274722099,-0.060626283288002,-0.076761454343796,0.039793685078621,-0.120504319667816,-0.129224941134453,-0.177619636058807,-0.045637190341949,-0.002955199917778));
res += mul(Get(s3,-dx,-dy), float4x4(-0.037533268332481,-0.244090571999550,-0.066771566867828,-0.190114364027977,-0.080922141671181,-0.091182954609394,-0.025221662595868,-0.071025304496288,0.210641920566559,-0.016504630446434,-0.130717411637306,0.209719851613045,-0.121734432876110,-0.131518498063087,-0.157172098755836,-0.031195785850286));
res += mul(Get(s3,-dx,0), float4x4(-0.081409446895123,-0.149198919534683,-0.156404018402100,0.040740337222815,-0.355164289474487,-0.130786553025246,-0.047910422086716,-0.051926828920841,0.215238854289055,-0.161661773920059,0.246456667780876,0.122191980481148,0.063354551792145,-0.113121300935745,0.014364734292030,-0.045146826654673));
res += mul(Get(s3,-dx,dy), float4x4(0.252281725406647,-0.250964909791946,-0.142412856221199,-0.267803400754929,0.191197365522385,-0.121682971715927,0.202272742986679,-0.055529013276100,0.086524143815041,-0.157810762524605,0.218289539217949,0.017849411815405,0.156832829117775,-0.112562574446201,-0.086417086422443,-0.003881324781105));
res += mul(Get(s3,0,-dy), float4x4(-0.105136834084988,-0.148063823580742,0.025888705626130,0.204453140497208,0.128159254789352,0.026413537561893,0.030527299270034,-0.034652527421713,0.197027400135994,-0.085834242403507,0.486635088920593,0.068272389471531,0.000000523347808,-0.126215487718582,0.192062720656395,-0.052783470600843));
res += mul(Get(s3,0,0), float4x4(-0.103159308433533,-0.150388807058334,-0.052991099655628,0.224262148141861,-0.183688491582870,0.033579893410206,-0.034146498888731,-0.055649839341640,-0.167296081781387,-0.067748762667179,0.260089784860611,0.053622514009476,-0.115951076149940,-0.121536403894424,0.037388753145933,-0.057427305728197));
res += mul(Get(s3,0,dy), float4x4(0.009031180292368,0.021715210750699,0.177113533020020,-0.043966844677925,-0.421786129474640,0.051090843975544,0.000156105568749,-0.016220688819885,-0.094360008835793,0.054731123149395,-0.025711802765727,-0.108647949993610,0.007246579974890,-0.283982872962952,0.048397265374660,-0.052879303693771));
res += mul(Get(s3,dx,-dy), float4x4(-0.228231102228165,-0.055096138268709,-0.027880059555173,0.078793644905090,0.131551146507263,-0.025125212967396,0.374112427234650,-0.074648857116699,0.078448362648487,-0.214656114578247,0.185808479785919,0.047937616705894,0.889508068561554,-0.236973851919174,-0.200844749808311,-0.095883287489414));
res += mul(Get(s3,dx,0), float4x4(-0.247152432799339,-0.179076954722404,0.183298274874687,-0.176984459161758,0.011209752410650,0.095104724168777,0.057683173567057,-0.114159084856510,-0.077517107129097,-0.206156656146049,0.016805296763778,-0.071032717823982,0.278195500373840,-0.156449660658836,-0.200291931629181,-0.085206344723701));
res += mul(Get(s3,dx,dy), float4x4(-0.025439487770200,-0.127632990479469,0.073306307196617,-0.118335030972958,-0.163334220647812,-0.036853082478046,0.042562607675791,-0.086911231279373,0.117677204310894,-0.105696298182011,0.099892005324364,-0.047096882015467,0.243430823087692,-0.215699091553688,-0.050106115639210,-0.148706689476967));
return max(float4(0,0,0,0), res);
}
