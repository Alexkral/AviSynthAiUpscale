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
res += mul(Get(s0,-dx,-dy), float4x4(-0.001739993225783,0.004543856717646,0.006457633338869,-0.021928397938609,0.098741158843040,-0.076987199485302,-0.045460291206837,-0.086950570344925,0.000513866951223,0.000284486653982,-0.001284716767259,-0.001328785554506,-0.003282217774540,0.008734927512705,0.000172834435944,-0.031433347612619));
res += mul(Get(s0,-dx,0), float4x4(0.000449882994872,0.006106470245868,-0.004645804408938,-0.007914314046502,0.135298430919647,-0.037352044135332,-0.027754353359342,-0.044869426637888,0.000013879617654,0.000302242406178,0.000547304400243,-0.001182319596410,-0.003445107722655,0.011474850587547,-0.006989842746407,-0.016277056187391));
res += mul(Get(s0,-dx,dy), float4x4(-0.001788118504919,0.002132473280653,-0.036785736680031,-0.041264574974775,0.106674239039421,0.033728908747435,-0.023065593093634,-0.048419311642647,0.000403996265959,-0.000324726017425,0.000006595614195,0.000651243783068,-0.008798554539680,0.027324695140123,-0.014134170487523,-0.012056211009622));
res += mul(Get(s0,0,-dy), float4x4(-0.004297416191548,0.007936503738165,0.016859479248524,0.009165672585368,0.008989326655865,-0.029549833387136,-0.040843039751053,-0.066959552466869,0.000366408115951,0.000726499827579,-0.000253341160715,0.000133735215059,-0.015475269407034,-0.010046308860183,0.014165224507451,-0.029505781829357));
res += mul(Get(s0,0,0), float4x4(-0.029238566756248,-0.017219217494130,0.005964544136077,0.052048210054636,-0.023590657860041,-0.039984598755836,-0.019408842548728,-0.034239552915096,0.000584005785640,-0.000110854613013,0.000525970361196,0.000252400524914,-0.021459143608809,-0.025270970538259,-0.003258690237999,-0.002880231710151));
res += mul(Get(s0,0,dy), float4x4(-0.009214129298925,-0.031929906457663,-0.020198574289680,-0.000921096128877,0.005376857705414,0.013233542442322,-0.009449226781726,-0.042148713022470,-0.000094289869594,-0.000574206584133,-0.001257823430933,0.000550498079974,-0.000378341763280,0.019564867019653,-0.005767097696662,-0.008378125727177));
res += mul(Get(s0,dx,-dy), float4x4(-0.002361675957218,0.008498489856720,0.059863384813070,0.028684075921774,0.019462663680315,0.009511980228126,-0.010856086388230,0.006738757714629,-0.000710555643309,-0.000483366427943,-0.000121137956739,-0.000938326760661,0.005371642764658,0.012442613020539,0.018232401460409,-0.018100529909134));
res += mul(Get(s0,dx,0), float4x4(-0.015212774276733,-0.006509785540402,0.065078139305115,0.069808758795261,0.009034152142704,0.001958177890629,0.025352099910378,0.053510602563620,0.000297415361274,0.000328235269990,-0.000017023929104,-0.000849906937219,-0.012902867980301,-0.018167112022638,0.004720170516521,0.007410310674459));
res += mul(Get(s0,dx,dy), float4x4(0.004276022315025,-0.029513301327825,0.018473224714398,0.036580592393875,0.029142908751965,0.010453321970999,0.019274748861790,0.019007645547390,-0.000798842054792,-0.000921546539757,0.000097443764389,-0.000110279208457,0.003574018599465,-0.018349312245846,0.003254870884120,0.011048306711018));
res += mul(Get(s1,-dx,-dy), float4x4(0.000442433054559,-0.003069179365411,0.002095102099702,0.003438352840021,0.024230223149061,-0.023859720677137,0.023231247439981,0.019053202122450,-0.033308055251837,-0.069582723081112,-0.024873629212379,0.001398670719936,-0.058423444628716,0.007843880914152,-0.012231986038387,0.059496935456991));
res += mul(Get(s1,-dx,0), float4x4(-0.008498802781105,-0.032012589275837,0.036615014076233,0.028832526877522,-0.032317209988832,-0.063933007419109,-0.034216087311506,-0.020246613770723,-0.076918952167034,-0.075419761240482,0.024609794840217,0.073190592229366,-0.068232566118240,0.002796140033752,0.033434826880693,0.089134722948074));
res += mul(Get(s1,-dx,dy), float4x4(0.002028117189184,-0.006998396478593,0.037103891372681,0.017371470108628,-0.014423677697778,-0.046836301684380,-0.027719076722860,0.004022503737360,-0.053194355219603,-0.028495330363512,0.027372507378459,0.062607698142529,-0.014248803257942,0.012000712566078,-0.028186798095703,0.020323712378740));
res += mul(Get(s1,0,-dy), float4x4(-0.001538731041364,-0.005203626584262,0.001518778037280,0.006278990767896,-0.011132204905152,-0.052418854087591,0.012788494117558,0.026348207145929,-0.020813683047891,-0.020698113366961,0.021798184141517,-0.012193960137665,0.017333339899778,0.002096544718370,0.014579351060092,0.000134038855322));
res += mul(Get(s1,0,0), float4x4(0.010045033879578,-0.018155384808779,0.037817686796188,0.013916138559580,-0.071471147239208,-0.076339133083820,-0.003761401167139,0.021016696467996,-0.011560398153961,-0.011237394995987,0.039509065449238,-0.013909450732172,0.117800816893578,0.036694552749395,-0.013203805312514,-0.084749758243561));
res += mul(Get(s1,0,dy), float4x4(0.013157824985683,0.005309492815286,0.025141097605228,-0.008498433046043,0.041839320212603,-0.000310157978674,-0.003784246975556,-0.037683855742216,-0.008012621663511,-0.011734604835510,0.023507338017225,-0.008182483725250,0.027758317068219,-0.040788862854242,-0.043287500739098,-0.060680203139782));
res += mul(Get(s1,dx,-dy), float4x4(-0.000978673924692,-0.001787713496014,0.002159086754546,0.008249510079622,-0.033865217119455,-0.016607966274023,0.025189926847816,0.033408805727959,0.012426281347871,0.050764366984367,-0.016623076051474,-0.011194935999811,0.020077975466847,0.099628880620003,-0.028165390715003,-0.012879363261163));
res += mul(Get(s1,dx,0), float4x4(0.027964362874627,-0.001163195003755,0.030174929648638,-0.006799473892897,-0.071615554392338,-0.020613331347704,0.037785634398460,0.076758250594139,0.048477027565241,0.060476504266262,-0.025081306695938,-0.036945413798094,0.061104148626328,0.074583977460861,-0.073743566870689,-0.103612363338470));
res += mul(Get(s1,dx,dy), float4x4(0.021804757416248,0.011881269514561,0.015852106735110,-0.015682734549046,0.052583310753107,0.040756098926067,-0.015364997088909,0.015349661931396,0.026755202561617,0.028879536315799,-0.044746935367584,-0.045314863324165,-0.021828586235642,-0.065746784210205,-0.090192548930645,-0.067745335400105));
res += mul(Get(s2,-dx,-dy), float4x4(0.005170825868845,0.028578076511621,0.008685049600899,0.018118120729923,-0.049293652176857,-0.047761384397745,-0.016152815893292,0.019130894914269,-0.063921242952347,-0.042939867824316,0.003933880012482,0.024659147486091,-0.027230666950345,0.046983595937490,-0.009272335097194,-0.043360989540815));
res += mul(Get(s2,-dx,0), float4x4(0.005344699136913,0.010679778642952,0.011353535577655,0.035662975162268,-0.209972232580185,-0.075816623866558,0.091348461806774,0.257149010896683,-0.087443135678768,-0.036047548055649,0.027736283838749,0.113527469336987,-0.039931114763021,0.030076215043664,0.004936564248055,0.022960245609283));
res += mul(Get(s2,-dx,dy), float4x4(0.000231451791478,-0.009193143807352,0.001130674267188,0.000263594032731,-0.093443609774113,0.010428110137582,0.033719487488270,0.183978289365768,-0.035333149135113,0.006142003461719,0.039940897375345,0.071353606879711,-0.019947424530983,0.046593755483627,0.032086465507746,0.016021344810724));
res += mul(Get(s2,0,-dy), float4x4(0.000710370950401,0.062319546937943,0.004322089720517,0.012978482991457,-0.024280063807964,-0.033097840845585,0.033485155552626,-0.028404599055648,-0.046079587191343,-0.036578685045242,0.020343320444226,-0.077718392014503,-0.000739109993447,-0.031833179295063,-0.021114699542522,-0.039282090961933));
res += mul(Get(s2,0,0), float4x4(0.010639945045114,0.034267459064722,0.007752740755677,0.017361024394631,0.125836700201035,0.090723760426044,0.067070215940475,-0.078086823225021,-0.072075314819813,-0.053982451558113,0.060259670019150,0.012857814319432,-0.043051104992628,-0.044702343642712,0.037646003067493,0.104679957032204));
res += mul(Get(s2,0,dy), float4x4(-0.004630809184164,0.000753704516683,0.003250028938055,0.001867991406471,0.006987410131842,-0.044776245951653,-0.024478480219841,-0.069779746234417,-0.032333951443434,0.015299977734685,0.037945382297039,-0.030327804386616,-0.022002881392837,0.026879183948040,0.042551852762699,0.083531752228737));
res += mul(Get(s2,dx,-dy), float4x4(0.007367570418864,0.066436670720577,0.000978897209279,0.010237773880363,0.044014748185873,0.121952190995216,-0.021296899765730,-0.002503336174414,-0.026775838807225,-0.023952664807439,0.024718692526221,-0.000177367095603,-0.014896973967552,-0.088426604866982,0.024318715557456,-0.012779424898326));
res += mul(Get(s2,dx,0), float4x4(0.022277209907770,0.039102446287870,0.000217668173718,0.010109312832355,0.211767628788948,0.272795170545578,-0.109411485493183,-0.166595876216888,-0.036866284906864,-0.076339192688465,0.043835535645485,0.043512694537640,-0.071839638054371,-0.099480338394642,0.077824838459492,0.062953799962997));
res += mul(Get(s2,dx,dy), float4x4(-0.001500642625615,-0.000950088549871,0.004537377040833,0.004031095188111,0.025789054110646,-0.030486609786749,-0.150440946221352,-0.153582230210304,-0.053967166692019,-0.045030515640974,0.021546674892306,0.042016763240099,-0.033075876533985,-0.013598259538412,0.061890617012978,0.055318526923656));
res += mul(Get(s3,-dx,-dy), float4x4(-0.019073761999607,-0.006630797404796,-0.007461808621883,-0.013564200140536,-0.019304122775793,0.024523533880711,0.026966765522957,0.043115615844727,0.015729384496808,-0.004035609774292,-0.006170392502099,-0.028936835005879,-0.005552022717893,0.023740254342556,-0.002220136346295,0.091801844537258));
res += mul(Get(s3,-dx,0), float4x4(-0.016382813453674,-0.007880080491304,-0.007193908561021,-0.012324212118983,-0.018109040334821,0.036545448005199,0.022255089133978,0.012430774979293,0.013656106777489,-0.006159072276205,-0.009869461879134,-0.016839690506458,-0.001551677007228,-0.045704226940870,-0.026463173329830,-0.012688140384853));
res += mul(Get(s3,-dx,dy), float4x4(-0.001315459143370,-0.003269525943324,-0.007842930033803,-0.012285136617720,-0.034375675022602,0.023562671616673,0.025183681398630,-0.014181046746671,0.004192448686808,0.000995071604848,-0.010588350705802,-0.019828550517559,-0.000929046538658,0.002443258883432,0.007575294002891,-0.026922667399049));
res += mul(Get(s3,0,-dy), float4x4(-0.010288556106389,0.002603146480396,-0.004458961542696,-0.000510903948452,-0.011106872931123,-0.012275659479201,0.021672826260328,0.013352793641388,0.008903712965548,0.003067652694881,-0.001249549211934,-0.019175067543983,0.034732293337584,-0.023630574345589,-0.010258182883263,0.004501746501774));
res += mul(Get(s3,0,0), float4x4(-0.008840515278280,-0.002302489941940,-0.002909147646278,0.007357533555478,-0.006499618757516,-0.007740811444819,0.056036874651909,0.016659136861563,-0.002813815139234,-0.005400778725743,-0.002257697517052,-0.006521028932184,-0.025085354223847,-0.096071332693100,-0.050607286393642,-0.065068967640400));
res += mul(Get(s3,0,dy), float4x4(-0.001513406052254,-0.005673005245626,0.000871164957061,-0.001518327160738,-0.011329637840390,-0.032963875681162,0.042242929339409,-0.002722678240389,-0.007677642628551,-0.008278092369437,0.003272587666288,-0.001807078137062,-0.005780591629446,0.017472466453910,-0.017120352014899,-0.014209699817002));
res += mul(Get(s3,dx,-dy), float4x4(-0.007399955764413,-0.005485084839165,0.025546833872795,0.023517342284322,-0.006666644476354,-0.031885776668787,0.053852479904890,0.050682049244642,0.010777580551803,0.016162523999810,-0.003058728761971,-0.007841650396585,0.069990463554859,-0.039430797100067,-0.032483797520399,-0.028737707063556));
res += mul(Get(s3,dx,0), float4x4(-0.006865723524243,-0.002532607875764,0.022681400179863,0.025129981338978,-0.007300749886781,-0.037045691162348,0.099836133420467,0.046396140009165,-0.002225676318631,0.015213362872601,0.000191554339835,0.000177730165888,-0.046318177133799,-0.116180025041103,-0.014621023088694,0.009967164136469));
res += mul(Get(s3,dx,dy), float4x4(-0.002677425276488,-0.009311070665717,0.016174601390958,0.008561832830310,-0.020832519978285,-0.026232173666358,0.076412156224251,0.034741032868624,0.002765140729025,0.004204909317195,0.007431021891534,0.003059745533392,-0.004037863109261,-0.035014960914850,0.045240487903357,0.070344001054764));
return max(float4(0,0,0,0), res);
}
