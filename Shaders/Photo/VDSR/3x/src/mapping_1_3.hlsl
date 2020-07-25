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
res += mul(Get(s0,-dx,-dy), float4x4(0.018016835674644,-0.054285846650600,-0.097339823842049,0.086631625890732,-0.249032795429230,0.140142828226089,-0.052477885037661,-0.112359389662743,-0.071999639272690,0.070144847035408,0.117532767355442,0.164382770657539,0.020308617502451,0.118822880089283,-0.003716361010447,0.118130385875702));
res += mul(Get(s0,-dx,0), float4x4(-0.023907024413347,-0.031357936561108,-0.100992485880852,0.176025912165642,0.060297869145870,0.128479287028313,-0.072007492184639,0.011898603290319,-0.001591800479218,0.083530917763710,-0.155775830149651,0.019699651747942,0.017248407006264,-0.162292093038559,-0.102334491908550,0.065485753118992));
res += mul(Get(s0,-dx,dy), float4x4(-0.087650351226330,-0.073174357414246,0.275025010108948,-0.159438222646713,0.012799095362425,0.060622200369835,0.182162985205650,0.041692029684782,0.064786218106747,-0.118028886616230,0.106177955865860,0.158263042569160,-0.132667332887650,-0.241320624947548,-0.225923359394073,0.069017745554447));
res += mul(Get(s0,0,-dy), float4x4(-0.084970690310001,-0.074611015617847,-0.295952141284943,0.019720578566194,0.064250044524670,-0.062755897641182,-0.064503990113735,-0.140532568097115,-0.058137871325016,0.145141780376434,0.106436520814896,0.096534736454487,-0.169321060180664,0.410869747400284,-0.072515137493610,-0.076863229274750));
res += mul(Get(s0,0,0), float4x4(-0.003935195505619,-0.052759595215321,0.106100574135780,-0.071568891406059,-0.099686071276665,-0.232866704463959,-0.202097594738007,0.055298883467913,-0.079334571957588,-0.272646784782410,-0.046003852039576,-0.015736900269985,-0.029385911300778,-0.102364175021648,-0.095374666154385,-0.270197749137878));
res += mul(Get(s0,0,dy), float4x4(-0.051700659096241,0.107286356389523,0.090988643467426,-0.042891107499599,-0.108721785247326,-0.192291930317879,0.093674905598164,-0.009466824121773,-0.128170296549797,-0.106341421604156,-0.203834906220436,-0.033688366413116,-0.020149094983935,-0.091499522328377,0.125587761402130,-0.187817171216011));
res += mul(Get(s0,dx,-dy), float4x4(0.163602456450462,0.026628334075212,-0.043188292533159,-0.127189576625824,-0.207518920302391,0.007884627208114,0.053125012665987,-0.133188933134079,-0.143998205661774,0.110628500580788,-0.094059817492962,0.176918864250183,0.011202937923372,0.069135941565037,-0.088846258819103,-0.041069492697716));
res += mul(Get(s0,dx,0), float4x4(-0.062020938843489,0.017981491982937,0.034400902688503,-0.045779466629028,-0.059100408107042,-0.020678967237473,0.128283590078354,-0.011224138550460,-0.129224583506584,-0.099425122141838,0.086526900529861,0.018710233271122,0.005481546744704,0.019565375521779,-0.054999534040689,0.053154788911343));
res += mul(Get(s0,dx,dy), float4x4(-0.026212908327579,-0.017867226153612,0.037282776087523,0.028746604919434,0.083749629557133,-0.100218005478382,0.052275493741035,0.216726452112198,-0.090633317828178,0.177711308002472,-0.018181832507253,0.059928193688393,-0.063561931252480,-0.142949074506760,0.222200021147728,0.049548536539078));
res += mul(Get(s1,-dx,-dy), float4x4(-0.125175833702087,0.214713066816330,0.009775735437870,0.098977722227573,0.088932350277901,-0.139942944049835,-0.132214635610580,0.105313301086426,-0.021778430789709,-0.115292005240917,0.011844417080283,0.006525428965688,0.168259397149086,-0.249451890587807,0.001745438436046,0.144426181912422));
res += mul(Get(s1,-dx,0), float4x4(0.059247549623251,0.045634184032679,-0.047475650906563,0.028057230636477,0.010194203816354,0.267146676778793,-0.060856018215418,-0.118449047207832,-0.216669723391533,-0.038283970206976,-0.301794171333313,0.067776992917061,0.107002317905426,0.146490544080734,0.116144612431526,-0.171633362770081));
res += mul(Get(s1,-dx,dy), float4x4(-0.272439420223236,0.006470816209912,0.044251557439566,-0.145309850573540,-0.006897667422891,-0.139853328466415,-0.059032391756773,0.165609300136566,-0.031582515686750,-0.020441470667720,0.036105521023273,0.021118776872754,0.001377394073643,-0.030360525473952,0.009592913091183,0.034659374505281));
res += mul(Get(s1,0,-dy), float4x4(0.025557272136211,-0.307238459587097,-0.265185981988907,0.030175017192960,-0.012559274211526,0.075008042156696,0.044239204376936,-0.200606241822243,-0.136380523443222,0.013391778804362,0.131415829062462,0.185996040701866,-0.049143783748150,0.087294951081276,-0.066325575113297,0.097612045705318));
res += mul(Get(s1,0,0), float4x4(0.036200486123562,-0.032247472554445,-0.029085962101817,-0.156742274761200,-0.078318051993847,0.161444991827011,-0.002426384016871,0.181435063481331,-0.164813891053200,-0.165940389037132,-0.099306643009186,0.098140187561512,-0.030807010829449,0.173771724104881,0.096842832863331,-0.124813653528690));
res += mul(Get(s1,0,dy), float4x4(-0.038456358015537,-0.097526736557484,-0.174171492457390,-0.030499359592795,0.050422500818968,-0.151587486267090,0.196339204907417,-0.126244664192200,0.158550009131432,-0.044429283589125,0.029250489547849,0.067562997341156,0.315439134836197,0.137281715869904,-0.072950214147568,0.170044481754303));
res += mul(Get(s1,dx,-dy), float4x4(-0.150772824883461,0.230848416686058,-0.026491120457649,0.056028716266155,0.064749911427498,0.062739998102188,0.138305544853210,0.124460950493813,-0.052970714867115,0.113633692264557,0.306527704000473,-0.031238999217749,-0.144175827503204,0.041826017200947,-0.131119921803474,-0.193049192428589));
res += mul(Get(s1,dx,0), float4x4(0.124514676630497,-0.143496856093407,-0.091425485908985,0.196517184376717,0.037969589233398,0.206733867526054,0.032274302095175,-0.113321892917156,-0.125476613640785,-0.170446023344994,0.001186677836813,-0.133396372199059,-0.049903266131878,-0.362224310636520,0.077116653323174,-0.070719830691814));
res += mul(Get(s1,dx,dy), float4x4(0.072428673505783,-0.009900807403028,-0.012018780224025,0.101250246167183,0.006269729696214,0.048036832362413,-0.266799449920654,-0.055272571742535,0.018077682703733,-0.187170892953873,-0.001776370336302,0.009852861985564,-0.061135835945606,-0.045367471873760,0.152164682745934,0.089351326227188));
res += mul(Get(s2,-dx,-dy), float4x4(-0.013936661183834,0.125397190451622,0.011852500960231,0.026547651737928,-0.006197541486472,-0.062189258635044,-0.186769187450409,-0.088517233729362,0.023831868544221,0.067010872066021,0.150503113865852,-0.114504441618919,0.015443683601916,0.100959695875645,-0.020149936899543,0.056455835700035));
res += mul(Get(s2,-dx,0), float4x4(0.008077254518867,-0.020943010225892,-0.057190313935280,0.043162088841200,0.041908990591764,0.171503677964211,0.147105500102043,0.171415671706200,-0.016338514164090,0.024178415536880,-0.027388282120228,-0.086781844496727,-0.001130685443059,0.003656501648948,-0.144584372639656,0.020978884771466));
res += mul(Get(s2,-dx,dy), float4x4(-0.075907833874226,0.037310849875212,-0.224374949932098,-0.058026272803545,-0.004309484269470,0.072533473372459,-0.107133381068707,-0.191394254565239,0.207395464181900,0.091399818658829,-0.089433237910271,-0.133864879608154,0.008132169023156,-0.190639138221741,0.035737860947847,-0.029574720188975));
res += mul(Get(s2,0,-dy), float4x4(0.138123080134392,-0.082462348043919,0.128087967634201,0.039479952305555,0.084492325782776,0.027556546032429,0.221577674150467,0.112468428909779,-0.005317606963217,0.067627973854542,0.228506922721863,0.056515667587519,0.097126141190529,0.012395309284329,-0.194557189941406,0.192808195948601));
res += mul(Get(s2,0,0), float4x4(0.168422669172287,-0.101133249700069,-0.068640485405922,-0.012497772462666,-0.129818633198738,0.055756747722626,-0.062927655875683,0.033479250967503,-0.061635714024305,0.017006628215313,-0.055278517305851,-0.139658927917480,-0.127005115151405,-0.080492854118347,0.124963641166687,-0.054077252745628));
res += mul(Get(s2,0,dy), float4x4(0.021297909319401,-0.222710520029068,0.065580219030380,0.044648505747318,0.098041199147701,-0.259491682052612,-0.028618592768908,0.042569521814585,-0.140268921852112,-0.141557782888412,-0.001340628834441,0.105612963438034,-0.046314593404531,0.151999324560165,0.140189394354820,0.085609972476959));
res += mul(Get(s2,dx,-dy), float4x4(-0.220254376530647,-0.104507111012936,0.019169280305505,-0.131690323352814,-0.175673127174377,-0.194906055927277,-0.078830070793629,-0.056215442717075,0.162905067205429,-0.076405927538872,0.032263632863760,-0.061912622302771,-0.061960283666849,0.069783315062523,-0.063514374196529,0.035106346011162));
res += mul(Get(s2,dx,0), float4x4(0.077586553990841,-0.121082186698914,0.064863726496696,-0.167659029364586,0.029940975829959,0.114447660744190,-0.096372596919537,0.042036369442940,-0.359927058219910,0.236001238226891,0.013193821534514,-0.090178579092026,-0.042756874114275,-0.015123318880796,0.025658598169684,-0.086165465414524));
res += mul(Get(s2,dx,dy), float4x4(-0.108426004648209,0.067529842257500,-0.105386860668659,-0.033826682716608,0.179834023118019,-0.025356650352478,-0.096990600228310,0.157970130443573,0.128959953784943,-0.012803607620299,-0.068454138934612,-0.244461119174957,0.015393090434372,0.060276016592979,0.119043499231339,-0.218235984444618));
res += mul(Get(s3,-dx,-dy), float4x4(-0.011157423257828,-0.032608654350042,0.119268342852592,-0.083154849708080,0.096982479095459,-0.011962460353971,0.026396375149488,0.051053926348686,-0.121558204293251,-0.004699083976448,-0.140033498406410,-0.154519021511078,0.131754904985428,-0.007476529106498,0.018440412357450,0.098399788141251));
res += mul(Get(s3,-dx,0), float4x4(0.008319151587784,-0.021764636039734,-0.031292539089918,0.088014960289001,-0.107638023793697,0.199628069996834,-0.120615109801292,-0.108998991549015,-0.103410609066486,-0.123761847615242,0.053418457508087,0.260705679655075,0.091742463409901,0.126209035515785,-0.000341681821737,-0.105834595859051));
res += mul(Get(s3,-dx,dy), float4x4(0.288962483406067,-0.033209793269634,-0.104034528136253,0.035090371966362,0.052565816789865,0.013072867877781,-0.160126030445099,-0.016421550884843,-0.080254718661308,0.095113202929497,0.108211323618889,-0.069285415112972,-0.156507626175880,0.069574281573296,-0.118970185518265,0.047512684017420));
res += mul(Get(s3,0,-dy), float4x4(-0.071532540023327,0.017773706465960,-0.043966740369797,-0.188512861728668,0.127748221158981,-0.084860168397427,-0.050471968948841,-0.032355159521103,0.109681770205498,-0.083870045840740,-0.058675549924374,0.044551137834787,-0.222638249397278,0.238874465227127,-0.084417700767517,-0.099779516458511));
res += mul(Get(s3,0,0), float4x4(0.181852430105209,-0.102267421782017,0.200181260704994,-0.079343833029270,0.142439410090446,-0.044630933552980,-0.084221869707108,-0.040395181626081,0.117962874472141,0.204834774136543,-0.032973285764456,0.172278195619583,-0.089838355779648,-0.108703322708607,0.154052942991257,-0.067727982997894));
res += mul(Get(s3,0,dy), float4x4(-0.108678333461285,-0.032661464065313,-0.018813693895936,-0.005455314181745,-0.069213844835758,-0.116637319326401,0.018945822492242,0.269573152065277,-0.017097907140851,0.066221393644810,-0.027401911094785,0.061911392956972,-0.061306688934565,-0.098343648016453,-0.078973524272442,0.049926031380892));
res += mul(Get(s3,dx,-dy), float4x4(-0.034619648009539,0.164112627506256,0.032842468470335,0.048376400023699,-0.153060436248779,0.055557563900948,0.155250042676926,0.163528665900230,-0.084952078759670,-0.115950338542461,0.038234110921621,-0.105382218956947,0.039834506809711,0.108705744147301,-0.092292398214340,-0.044598810374737));
res += mul(Get(s3,dx,0), float4x4(-0.151138618588448,0.148685246706009,0.032000262290239,-0.031723316758871,-0.211657881736755,0.132072269916534,0.001744765671901,-0.113599456846714,-0.055804658681154,0.125405222177505,-0.131590753793716,-0.021304145455360,0.103242814540863,-0.092955425381660,-0.029654039070010,0.038341861218214));
res += mul(Get(s3,dx,dy), float4x4(-0.055075701326132,-0.023287663236260,-0.132548570632935,0.125609770417213,0.008329540491104,0.141487523913383,0.033859603106976,-0.080181017518044,-0.069547027349472,0.110550686717033,-0.015064786188304,-0.042972445487976,0.136032357811928,-0.109266042709351,-0.145784363150597,-0.161648184061050));
return max(float4(0,0,0,0), res);
}
