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
res += mul(Get(s0,-dx,-dy), float4x4(0.037697274237871,-0.023230172693729,0.023879192769527,-0.034009184688330,0.032549832016230,0.070140995085239,0.090406507253647,0.064304508268833,-0.078800983726978,-0.017856735736132,-0.092056728899479,0.052284754812717,0.076492324471474,-0.078817509114742,0.077266186475754,-0.003492856631055));
res += mul(Get(s0,-dx,0), float4x4(0.039501421153545,-0.028434345498681,0.011830734089017,-0.064576588571072,0.025376640260220,-0.039823953062296,0.136259332299232,-0.029285132884979,0.040162790566683,-0.009132632054389,0.126728400588036,-0.002286927308887,-0.007724701892585,-0.200884670019150,0.145509034395218,-0.111288040876389));
res += mul(Get(s0,-dx,dy), float4x4(0.110594525933266,0.016545455902815,-0.002419305033982,-0.125493973493576,-0.020537670701742,0.051954198628664,0.031559251248837,-0.054112799465656,0.034530054777861,0.025195041671395,0.024720180779696,-0.026180868968368,0.051448542624712,-0.080776453018188,-0.080703005194664,0.146906360983849));
res += mul(Get(s0,0,-dy), float4x4(0.066837295889854,0.015183039940894,-0.060289222747087,-0.048229340463877,-0.072250075638294,-0.003345500677824,0.080964118242264,0.013213074766099,0.005532565992326,0.027064990252256,0.048004552721977,0.114920400083065,0.002704791724682,-0.068169698119164,-0.137210220098495,0.079531721770763));
res += mul(Get(s0,0,0), float4x4(0.244359403848648,-0.007459513843060,0.072098240256310,-0.035388763993979,0.057890020310879,0.078633174300194,0.083660848438740,-0.002523273695260,-0.021846737712622,-0.049406398087740,-0.058761861175299,-0.008016208186746,-0.069726958870888,-0.032476246356964,-0.037229303270578,0.015274991281331));
res += mul(Get(s0,0,dy), float4x4(0.051585357636213,0.073320709168911,0.060445815324783,-0.160761252045631,0.059655252844095,-0.027171349152923,0.004446725361049,0.080316036939621,-0.118373796343803,0.008119329810143,0.106425195932388,0.035205461084843,0.024750646203756,0.037458732724190,0.020471623167396,0.096995696425438));
res += mul(Get(s0,dx,-dy), float4x4(0.070829406380653,-0.021222824230790,-0.011777435429394,-0.111056342720985,0.035124648362398,0.000161381671205,0.020724726840854,0.054418377578259,0.062115605920553,-0.066315934062004,-0.018843149766326,0.015899041667581,-0.002666648244485,-0.009880863130093,-0.027015883475542,-0.001259328913875));
res += mul(Get(s0,dx,0), float4x4(0.066018328070641,-0.055349651724100,-0.066654644906521,-0.022246405482292,0.054495379328728,0.006198128219694,-0.010102889500558,0.080551765859127,0.042752344161272,-0.024787522852421,-0.002029776806012,-0.029197024181485,-0.022523475810885,0.044346906244755,-0.016272667795420,-0.064979873597622));
res += mul(Get(s0,dx,dy), float4x4(0.024931952357292,0.034223090857267,0.081030823290348,-0.001408777548932,-0.105347163975239,0.113885283470154,-0.010693485848606,0.091095052659512,0.082039020955563,-0.015746783465147,0.054946888238192,0.001704470836557,-0.121958218514919,0.043476518243551,-0.053498879075050,0.042908031493425));
res += mul(Get(s1,-dx,-dy), float4x4(-0.032031409442425,0.004806877579540,0.080221928656101,0.002401001984254,-0.038067284971476,-0.149232909083366,0.031406097114086,-0.014543786644936,0.070892103016376,0.076312936842442,-0.136867910623550,0.070810563862324,-0.007009010761976,0.040225766599178,-0.010001790709794,-0.015456646680832));
res += mul(Get(s1,-dx,0), float4x4(0.074274942278862,-0.029995208606124,-0.036389764398336,0.088805370032787,-0.038375098258257,-0.052515931427479,0.025432838127017,-0.017761528491974,0.027798227965832,-0.005889012478292,0.058049015700817,-0.040945224463940,0.081468813121319,0.116799145936966,0.044284518808126,0.077148579061031));
res += mul(Get(s1,-dx,dy), float4x4(0.029964687302709,0.035935141146183,-0.033686239272356,-0.035288311541080,-0.045004073530436,-0.078848876059055,0.004406279884279,0.086201556026936,0.013605327345431,0.094242386519909,0.106357425451279,0.006615411955863,0.068104356527328,-0.053044632077217,0.033053722232580,-0.057341087609529));
res += mul(Get(s1,0,-dy), float4x4(-0.027569513767958,0.039200939238071,0.027446778491139,-0.053419739007950,-0.088395319879055,0.046468347311020,0.027975000441074,-0.050445929169655,-0.021067366003990,0.066200308501720,0.024455390870571,-0.023930555209517,-0.032143231481314,-0.040641035884619,-0.135748356580734,-0.004105389583856));
res += mul(Get(s1,0,0), float4x4(0.026784839108586,-0.134919151663780,0.018321644514799,0.098268561065197,0.098004467785358,0.011235825717449,0.144528865814209,-0.146462470293045,-0.020315831527114,-0.031683512032032,-0.025471175089478,-0.026524838060141,0.063421368598938,0.035410005599260,-0.005020016338676,0.010322804562747));
res += mul(Get(s1,0,dy), float4x4(0.088205106556416,-0.154229313135147,-0.066760972142220,-0.007831545546651,-0.084559120237827,0.044853322207928,-0.042604882270098,-0.014569662511349,0.050790358334780,0.115536972880363,0.038103707134724,0.063963778316975,-0.072055675089359,0.024844912812114,-0.028128124773502,0.098577573895454));
res += mul(Get(s1,dx,-dy), float4x4(0.058486010879278,-0.064576581120491,-0.053017970174551,-0.056364633142948,-0.067570097744465,0.044016089290380,-0.006652232259512,0.065265238285065,-0.124586015939713,0.081721797585487,-0.058910433202982,0.038338746875525,-0.015835981816053,0.038735218346119,-0.025492073968053,0.037035193294287));
res += mul(Get(s1,dx,0), float4x4(-0.094564147293568,-0.169688045978546,-0.077719770371914,0.078403674066067,-0.044785678386688,0.006347019225359,0.037898764014244,-0.065908938646317,0.031065380200744,0.022228604182601,0.024980042129755,0.061834163963795,0.076640531420708,0.033987089991570,-0.022378038614988,-0.076373480260372));
res += mul(Get(s1,dx,dy), float4x4(0.067739240825176,-0.057985797524452,-0.136599257588387,0.043947160243988,-0.119982875883579,-0.105649359524250,-0.026371523737907,-0.090763293206692,-0.093817546963692,-0.027211772277951,-0.083866856992245,-0.045500505715609,-0.107432588934898,-0.068690530955791,-0.049423214048147,-0.110145308077335));
res += mul(Get(s2,-dx,-dy), float4x4(0.048142202198505,0.121553227305412,-0.027897654101253,0.062940508127213,-0.032253600656986,-0.143345311284065,0.030569233000278,-0.058807749301195,0.013595622032881,-0.084682688117027,-0.001784997992218,0.052421145141125,-0.065967194736004,-0.043882172554731,-0.081962473690510,0.039733808487654));
res += mul(Get(s2,-dx,0), float4x4(0.011603799648583,0.012738931924105,-0.005334347952157,-0.044108118861914,-0.125405684113503,-0.138205945491791,0.038770884275436,-0.027547754347324,-0.003193487413228,0.027147976681590,0.019628420472145,-0.022494211792946,0.120666995644569,-0.070145875215530,-0.013325488194823,-0.038089640438557));
res += mul(Get(s2,-dx,dy), float4x4(-0.053566146641970,0.001675521139987,-0.025817802175879,0.106588073074818,0.030194357037544,-0.074066728353500,-0.011578663252294,-0.034012239426374,-0.003359315218404,0.080703966319561,0.097281351685524,0.025659816339612,0.000149206229253,0.048850510269403,-0.018160691484809,-0.012288253754377));
res += mul(Get(s2,0,-dy), float4x4(0.064932845532894,-0.011056564748287,0.048277154564857,0.047115810215473,0.012967051006854,0.108084224164486,0.074691973626614,0.005175071302801,0.006153313443065,-0.074350997805595,-0.033138781785965,0.108746565878391,-0.131473198533058,0.104218937456608,0.074641130864620,0.049608610570431));
res += mul(Get(s2,0,0), float4x4(0.010751155205071,0.041525110602379,0.009376429021358,-0.032904967665672,-0.074022546410561,0.108997948467731,-0.149222552776337,0.093854919075966,0.037787754088640,-0.013981036841869,0.008180027827621,0.218398794531822,0.035219654440880,-0.066891126334667,0.018352299928665,0.140152961015701));
res += mul(Get(s2,0,dy), float4x4(0.047224923968315,0.064318262040615,-0.054295592010021,0.040167048573494,0.022653657943010,0.100269973278046,-0.002715162932873,-0.094102308154106,0.108095027506351,-0.069344222545624,0.020287314429879,0.148493483662605,-0.085988655686378,-0.069041043519974,-0.063532076776028,0.043259736150503));
res += mul(Get(s2,dx,-dy), float4x4(0.013080961070955,0.043494939804077,-0.024268407374620,0.078740835189819,-0.003713679732755,0.095319949090481,0.015890762209892,-0.107038974761963,-0.012614499777555,-0.055082526057959,0.033891353756189,-0.099170848727226,-0.023482622578740,-0.025684475898743,0.044865097850561,-0.036756001412868));
res += mul(Get(s2,dx,0), float4x4(0.024008838459849,0.017157584428787,0.043374244123697,0.119214296340942,0.026722442358732,0.084016889333725,0.079865053296089,-0.080927319824696,-0.008234906010330,-0.061213262379169,-0.000248330354225,0.045649215579033,0.048790082335472,-0.027815029025078,0.014955691993237,0.008898192085326));
res += mul(Get(s2,dx,dy), float4x4(0.079082109034061,-0.026702150702477,0.035012759268284,0.085413292050362,0.016735730692744,0.036335833370686,0.004313950892538,0.022323140874505,-0.067635469138622,0.101910762488842,0.027871880680323,0.083794966340065,0.099816136062145,-0.012113911099732,0.042706992477179,0.039419956505299));
res += mul(Get(s3,-dx,-dy), float4x4(0.063700124621391,0.014459480531514,-0.038695611059666,0.007254640106112,0.144097328186035,-0.088799744844437,-0.027102177962661,0.031754065304995,0.019246356561780,-0.054240811616182,-0.062821239233017,-0.081630103290081,0.016893098130822,0.055572878569365,-0.156646236777306,-0.021319102495909));
res += mul(Get(s3,-dx,0), float4x4(-0.083002135157585,0.029385013505816,-0.078532390296459,-0.108856178820133,0.037972118705511,0.026270249858499,-0.050390034914017,-0.043719723820686,0.084534123539925,-0.002510460559279,-0.029471985995770,0.043280858546495,0.007101221475750,0.017570734024048,-0.065734609961510,-0.115771770477295));
res += mul(Get(s3,-dx,dy), float4x4(0.081701390445232,0.028922287747264,0.073223106563091,-0.026777751743793,0.151450186967850,-0.023449586704373,0.052980203181505,0.106490597128868,-0.070084899663925,-0.033162385225296,0.166842311620712,0.062069185078144,0.015070725232363,-0.040031168609858,-0.038073323667049,-0.071153268218040));
res += mul(Get(s3,0,-dy), float4x4(-0.035529084503651,0.064124010503292,-0.025840833783150,0.127721846103668,0.041233655065298,0.020507471635938,-0.083352774381638,-0.044729914516211,0.020652977749705,-0.093067727982998,0.013063754886389,0.046577528119087,0.220137134194374,0.219935998320580,0.159762263298035,0.115793935954571));
res += mul(Get(s3,0,0), float4x4(0.155312731862068,0.032518811523914,-0.084120891988277,-0.038746561855078,-0.050064302980900,-0.045552171766758,0.034747507423162,-0.045932754874229,-0.029392441734672,0.061390735208988,-0.020999815315008,-0.142331287264824,0.049416497349739,0.070950642228127,-0.036320064216852,0.168271288275719));
res += mul(Get(s3,0,dy), float4x4(-0.088974297046661,0.037699472159147,-0.096334889531136,-0.008123984560370,-0.076360829174519,0.074800357222557,-0.051156729459763,-0.042230710387230,0.048989292234182,-0.035318620502949,0.085624948143959,-0.069523289799690,-0.215207651257515,-0.006251357495785,0.082273915410042,-0.030040601268411));
res += mul(Get(s3,dx,-dy), float4x4(-0.033168040215969,-0.020896987989545,-0.060620486736298,-0.023831428959966,0.143468096852303,-0.057673946022987,0.009817406535149,0.106092371046543,-0.042839892208576,0.018815098330379,0.071878872811794,-0.022550666704774,0.052414387464523,-0.059266828000546,-0.136173844337463,-0.071079440414906));
res += mul(Get(s3,dx,0), float4x4(0.126953795552254,-0.025515159592032,0.034698385745287,0.069724828004837,0.062754653394222,-0.081347264349461,0.004281607456505,0.018268685787916,-0.015416643582284,-0.044970504939556,-0.046150814741850,-0.116318486630917,0.126523494720459,0.022575100883842,-0.070622891187668,-0.084912694990635));
res += mul(Get(s3,dx,dy), float4x4(-0.019396735355258,-0.008029734715819,-0.004011475946754,-0.083327762782574,0.023970896378160,-0.090348780155182,-0.084400676190853,-0.130445972084999,0.022521339356899,0.005466914270073,-0.096989035606384,-0.054559871554375,0.136371508240700,0.020207744091749,-0.073643282055855,-0.021693909540772));
return max(float4(0,0,0,0), res);
}