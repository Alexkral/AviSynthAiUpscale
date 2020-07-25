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
res += mul(Get(s0,-dx,-dy), float4x4(0.137563481926918,-0.073779337108135,0.106194503605366,-0.127513572573662,-0.099797695875168,0.087360315024853,-0.047453019768000,0.030060907825828,-0.209961637854576,-0.030201651155949,-0.042015004903078,0.041399396955967,0.032170902937651,-0.140370577573776,-0.115050859749317,-0.125675648450851));
res += mul(Get(s0,-dx,0), float4x4(-0.000473528518341,-0.062553614377975,0.188111186027527,0.121832743287086,0.015958633273840,0.143439695239067,-0.017067149281502,0.028542337939143,0.165734723210335,0.038462553173304,0.041107900440693,-0.120457172393799,0.045549321919680,0.009125153534114,-0.217872247099876,0.148306339979172));
res += mul(Get(s0,-dx,dy), float4x4(-0.018646536394954,-0.114615611732006,-0.121999055147171,0.093030169606209,0.068589977920055,0.074869334697723,-0.162588030099869,0.161800786852837,0.089602380990982,0.114675395190716,0.097367361187935,0.043397929519415,-0.142263546586037,0.019333869218826,0.058269549161196,0.207911118865013));
res += mul(Get(s0,0,-dy), float4x4(-0.057567365467548,-0.150895550847054,0.024997942149639,-0.050528805702925,-0.163908526301384,0.087526291608810,-0.165531173348427,0.003682085080072,0.034384090453386,0.011104363948107,-0.089977085590363,0.101980499923229,0.056883107870817,0.050833567976952,-0.040886543691158,-0.097830273211002));
res += mul(Get(s0,0,0), float4x4(-0.078733175992966,0.128387570381165,0.018773524090648,-0.012870838865638,0.052798971533775,0.029624659568071,-0.114797234535217,0.160987287759781,-0.146190017461777,0.275269865989685,0.019871171563864,0.108405746519566,0.111316278576851,-0.099386908113956,0.059546303004026,0.057168822735548));
res += mul(Get(s0,0,dy), float4x4(0.159609884023666,0.052084434777498,0.052261862903833,-0.091212451457977,0.012395399622619,0.098310917615891,0.136941969394684,0.203503727912903,-0.039285313338041,0.067233130335808,-0.183242991566658,-0.070297673344612,-0.008705189451575,-0.045610085129738,-0.052294552326202,0.152182102203369));
res += mul(Get(s0,dx,-dy), float4x4(-0.053761504590511,-0.079761110246181,0.045295253396034,0.227438434958458,0.061756510287523,-0.177760481834412,-0.380054414272308,-0.005433050449938,-0.015592928975821,0.040970716625452,-0.188316702842712,0.052204895764589,-0.135143876075745,-0.155961126089096,0.185770064592361,-0.052159246057272));
res += mul(Get(s0,dx,0), float4x4(-0.091707035899162,0.187487214803696,-0.105160988867283,0.040715321898460,0.087824165821075,-0.076412841677666,-0.016498500481248,0.085771240293980,0.123467132449150,-0.016917875036597,0.184549987316132,0.127563446760178,0.043772924691439,0.012160939164460,-0.204487338662148,0.078136816620827));
res += mul(Get(s0,dx,dy), float4x4(-0.014257075265050,0.128213867545128,0.068110458552837,0.086547397077084,0.056208543479443,-0.340690642595291,-0.041861686855555,-0.045188199728727,0.058117181062698,0.084448635578156,0.148657441139221,-0.017059545964003,-0.092819333076477,0.153619840741158,-0.007761487271637,0.009262269362807));
res += mul(Get(s1,-dx,-dy), float4x4(-0.014514269307256,-0.045009009540081,0.004248123150319,-0.080540642142296,-0.040619868785143,0.072606876492500,0.030228622257710,-0.030983943492174,-0.023162377998233,0.210564628243446,0.190552666783333,0.058980416506529,-0.117221646010876,-0.070023693144321,0.092496670782566,-0.007270228117704));
res += mul(Get(s1,-dx,0), float4x4(0.140215039253235,0.081292413175106,0.157309383153915,-0.075796462595463,0.032343488186598,0.009516689926386,-0.089436709880829,-0.102775223553181,-0.071539327502251,0.026691326871514,-0.055677313357592,-0.109764717519283,0.069665253162384,0.122372284531593,-0.008086316287518,0.077532753348351));
res += mul(Get(s1,-dx,dy), float4x4(-0.021052623167634,0.007813643664122,-0.011565543711185,-0.195057287812233,-0.012040299363434,0.042597550898790,-0.205476179718971,-0.035059891641140,-0.076310291886330,0.049728047102690,0.134306997060776,0.000988808576949,-0.018699118867517,-0.097442723810673,0.085528947412968,-0.234948933124542));
res += mul(Get(s1,0,-dy), float4x4(-0.015919080004096,-0.041165493428707,-0.116430602967739,-0.065746344625950,0.044671081006527,-0.060373876243830,0.099378176033497,0.160835057497025,-0.078703254461288,-0.111144110560417,-0.036514822393656,-0.035956270992756,0.092331871390343,0.028575418516994,-0.026940939947963,0.035152584314346));
res += mul(Get(s1,0,0), float4x4(0.086166195571423,-0.093642294406891,-0.040006969124079,0.075996153056622,0.038411356508732,0.136843845248222,-0.074058786034584,0.167002156376839,-0.062595106661320,-0.067327000200748,-0.052709735929966,0.135798856616020,0.017951687797904,-0.007055574096739,0.101023092865944,-0.047257404774427));
res += mul(Get(s1,0,dy), float4x4(-0.223361775279045,0.074175760149956,-0.087780050933361,-0.111121758818626,0.088707558810711,0.133834287524223,0.008190108463168,0.140565767884254,-0.198967352509499,-0.181623324751854,-0.005367445759475,-0.147680059075356,-0.031280133873224,-0.073351703584194,0.059476692229509,-0.131629616022110));
res += mul(Get(s1,dx,-dy), float4x4(-0.087692201137543,-0.134991213679314,-0.090463034808636,0.176561683416367,-0.227859914302826,-0.001203087274916,0.091764070093632,0.213769733905792,-0.037668969482183,-0.032125070691109,-0.066826306283474,0.099399462342262,-0.041571561247110,-0.092265672981739,0.048298969864845,0.018044594675303));
res += mul(Get(s1,dx,0), float4x4(-0.001632651197724,-0.011686179786921,0.021570980548859,0.209268674254417,-0.137330234050751,-0.004472331609577,-0.151318058371544,-0.008861608803272,-0.129837736487389,0.004230719991028,0.105192132294178,-0.064583159983158,-0.096165500581264,-0.163548871874809,-0.052292495965958,0.035524204373360));
res += mul(Get(s1,dx,dy), float4x4(-0.140781134366989,-0.125815927982330,0.119235463440418,0.124967604875565,0.064361259341240,-0.036639586091042,-0.009801771491766,-0.034492246806622,-0.191815227270126,-0.097724951803684,0.051701165735722,-0.059816181659698,0.029935335740447,-0.069507241249084,0.092015765607357,-0.119331724941730));
res += mul(Get(s2,-dx,-dy), float4x4(0.088967204093933,0.023822898045182,0.200338393449783,-0.039274424314499,0.018672728911042,-0.077631868422031,0.185661137104034,0.325594097375870,0.100678011775017,-0.036504492163658,0.020543923601508,0.257485270500183,-0.124097399413586,-0.149900183081627,0.137172877788544,-0.025630606338382));
res += mul(Get(s2,-dx,0), float4x4(-0.070115350186825,0.199369192123413,-0.004451490938663,-0.005503510124981,0.081466287374496,-0.012952000834048,-0.244414880871773,-0.058930348604918,0.026623276993632,-0.035153985023499,0.012098894454539,-0.130352050065994,-0.120716981589794,0.097753934562206,-0.080032043159008,-0.007505027577281));
res += mul(Get(s2,-dx,dy), float4x4(0.100827135145664,0.008232779800892,0.061400178819895,0.024315474554896,0.005127497017384,0.184439331293106,0.056632082909346,-0.045349910855293,0.037326082587242,0.006624920293689,-0.103022426366806,-0.065600775182247,0.010205349884927,-0.041189175099134,-0.088913746178150,0.004053211770952));
res += mul(Get(s2,0,-dy), float4x4(-0.099638417363167,-0.182766065001488,0.074658811092377,-0.053948510438204,0.048765558749437,0.215081334114075,-0.002061769133434,0.049229051917791,-0.023045221343637,0.140169888734818,-0.066208250820637,0.171725809574127,-0.054216705262661,0.051002293825150,0.079744145274162,0.109032511711121));
res += mul(Get(s2,0,0), float4x4(-0.160005271434784,-0.360490679740906,0.085941024124622,0.045694086700678,0.050801821053028,0.057300634682178,-0.051242250949144,-0.025803176686168,0.346211105585098,-0.189278960227966,0.031082889065146,0.150399118661880,0.059197515249252,-0.091745361685753,-0.115191213786602,-0.063367091119289));
res += mul(Get(s2,0,dy), float4x4(0.129915058612823,-0.011737862601876,-0.055324435234070,-0.197221159934998,-0.039469081908464,0.306915193796158,-0.063361659646034,-0.039719555526972,0.017198260873556,-0.156950905919075,-0.063531927764416,-0.154885694384575,-0.051964115351439,-0.115013286471367,0.062706746160984,0.063704259693623));
res += mul(Get(s2,dx,-dy), float4x4(0.101310044527054,-0.077012620866299,0.101671621203423,-0.043868966400623,-0.093126386404037,-0.041720278561115,0.135559603571892,-0.046473938971758,0.135228678584099,-0.325912863016129,0.021608006209135,-0.008743035607040,0.161486446857452,-0.001571964821778,0.005797549616545,0.170564189553261));
res += mul(Get(s2,dx,0), float4x4(0.053998302668333,0.135817319154739,-0.011517816223204,0.101395942270756,0.107979483902454,-0.111150361597538,0.051103662699461,0.092738881707191,0.204005792737007,-0.065787136554718,-0.018033016473055,-0.010028828866780,-0.074175849556923,0.012742931023240,0.025582812726498,-0.103636763989925));
res += mul(Get(s2,dx,dy), float4x4(-0.016770137473941,0.113223858177662,0.024885477498174,0.030134104192257,-0.053602617233992,-0.100982978940010,0.065006896853447,-0.199296608567238,-0.020231984555721,-0.091427966952324,0.064722068607807,-0.046396274119616,-0.050828833132982,0.034338399767876,-0.023326098918915,-0.075765103101730));
res += mul(Get(s3,-dx,-dy), float4x4(0.009096658788621,-0.067769482731819,-0.077678799629211,-0.114363901317120,0.054585125297308,0.018565731123090,0.183662608265877,-0.246519997715950,-0.164102405309677,-0.047483675181866,-0.004399864468724,-0.001668917364441,0.062415745109320,0.004785371944308,0.071408048272133,0.059994183480740));
res += mul(Get(s3,-dx,0), float4x4(-0.026078691706061,-0.206885308027267,0.152773216366768,-0.093768469989300,0.254030078649521,0.007999972440302,-0.097084566950798,0.109134651720524,-0.115223102271557,-0.206633031368256,0.018924865871668,-0.172199606895447,-0.045035023242235,-0.106959030032158,0.042822066694498,-0.066519185900688));
res += mul(Get(s3,-dx,dy), float4x4(-0.017814401537180,0.016836317256093,0.185444921255112,0.001723700435832,0.005256551783532,0.128972411155701,-0.113962583243847,0.137593880295753,-0.038936406373978,0.035653203725815,-0.098738223314285,-0.075618840754032,0.010929144918919,-0.029553970322013,0.208048552274704,-0.111752100288868));
res += mul(Get(s3,0,-dy), float4x4(0.073527373373508,-0.108481928706169,0.024009531363845,0.048910912126303,-0.039543166756630,-0.148002251982689,0.177181154489517,-0.149890780448914,-0.256061851978302,0.060610074549913,0.034230660647154,0.098629377782345,-0.003881272161379,-0.038795761764050,0.009164649061859,0.011161751113832));
res += mul(Get(s3,0,0), float4x4(0.073724873363972,-0.086867012083530,0.029004143550992,0.108150251209736,0.216283097863197,0.118961744010448,-0.072183571755886,0.059516586363316,0.091570176184177,-0.035441029816866,0.060526702553034,-0.249223306775093,-0.136421531438828,-0.065165810286999,0.091840729117393,-0.112053617835045));
res += mul(Get(s3,0,dy), float4x4(0.028108859434724,0.160256922245026,0.044093992561102,0.002521676709875,-0.066389083862305,-0.121581293642521,0.112172409892082,0.079036332666874,0.297483712434769,-0.051874957978725,-0.193228542804718,-0.202036231756210,-0.141696989536285,0.120587997138500,0.038244441151619,-0.130231767892838));
res += mul(Get(s3,dx,-dy), float4x4(-0.027468562126160,0.189133197069168,0.157949417829514,0.050898086279631,0.164151579141617,0.146244019269943,-0.024300359189510,-0.155680388212204,-0.144459098577499,0.052690651267767,-0.053858879953623,-0.139558255672455,-0.074890092015266,-0.018025711178780,-0.015175429172814,-0.070571973919868));
res += mul(Get(s3,dx,0), float4x4(0.132554307579994,0.032458502799273,-0.059449687600136,-0.050478387624025,0.030821336433291,0.133745208382607,0.080008633434772,0.213672712445259,-0.010685541667044,0.024251759052277,0.002611583098769,-0.049952704459429,0.057000312954187,0.003070869250223,0.095671586692333,-0.111903667449951));
res += mul(Get(s3,dx,dy), float4x4(-0.024339301511645,0.052491765469313,-0.051483005285263,0.134001880884171,-0.059137735515833,0.042165644466877,0.070970185101032,0.110904708504677,0.147621035575867,-0.188560947775841,0.035026282072067,-0.309242695569992,-0.008524333126843,-0.037201352417469,-0.111602753400803,0.048279657959938));
return max(float4(0,0,0,0), res);
}