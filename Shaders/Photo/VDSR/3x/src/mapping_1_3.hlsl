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
res += mul(Get(s0,-dx,-dy), float4x4(-0.000002553172180,0.000012624886040,-0.000018421338609,0.000011579286365,0.000006972679330,-0.000006802758890,-0.000012168768990,0.000008035303836,-0.000004148681455,-0.000026058394724,0.000012001292816,-0.000004120625817,-0.000013310767827,0.000003735595328,0.000000390042743,0.000026971169063));
res += mul(Get(s0,-dx,0), float4x4(-0.000001172134262,-0.000005035484264,0.000000487649402,-0.000002360006874,-0.000009469542420,0.000008700671060,0.000011627831555,-0.000006095780464,0.000023135424271,-0.000011200100744,-0.000014890172679,0.000020410283469,0.000002471841071,-0.000001586828716,-0.000009863743799,0.000007577442830));
res += mul(Get(s0,-dx,dy), float4x4(0.000016103876987,0.000022867796361,-0.000003065805458,0.000005212032193,-0.000011117457689,-0.000004196583177,-0.000014029765225,0.000011226065908,-0.000028610840673,-0.000015867388356,0.000000510485563,0.000000988406555,-0.000011880446436,-0.000008380430700,0.000002815640300,-0.000024439756089));
res += mul(Get(s0,0,-dy), float4x4(0.000008315502782,0.000025159633879,0.000005434018931,0.000015996653019,0.000017677188225,-0.000008103658729,-0.000015347417502,-0.000006369102266,-0.000006466635568,0.000016751342628,0.000021469399144,0.000012752630937,-0.000020068799131,-0.000033029042243,-0.000011634016118,-0.000020032770408));
res += mul(Get(s0,0,0), float4x4(-0.000010161184946,-0.000000041465206,-0.000001985654080,0.000011937923773,0.000014193579773,-0.000005849501122,-0.000010640879736,0.000010519423995,-0.000008440852980,0.000011151129002,-0.000005105041964,-0.000002442123105,0.000001789073053,0.000005335568403,-0.000004335473477,-0.000006128329915));
res += mul(Get(s0,0,dy), float4x4(-0.000002135695468,-0.000000796255392,-0.000003352145086,0.000019498100301,-0.000005657248494,-0.000001314751444,0.000014029382328,0.000023136208256,-0.000000217110568,0.000006916615803,0.000013299036254,0.000012309331396,-0.000008750167581,0.000003646081041,-0.000010761300473,-0.000005194394362));
res += mul(Get(s0,dx,-dy), float4x4(0.000034422326280,-0.000003450365739,0.000002153409696,-0.000000017100906,0.000017263844711,-0.000007875057236,0.000003642924185,0.000013203967683,0.000004612678822,0.000009754507118,0.000000589780768,-0.000000133731305,-0.000020633633540,0.000006927849427,0.000011402955352,0.000003025251317));
res += mul(Get(s0,dx,0), float4x4(0.000022409618396,0.000000609315521,-0.000013342943021,0.000005523262189,0.000033486805478,0.000016043761207,-0.000005082879852,-0.000004147796062,0.000010482630387,-0.000004856924079,-0.000006947130714,-0.000006905656392,-0.000003390845222,0.000029573948268,0.000014872859538,-0.000000523974677));
res += mul(Get(s0,dx,dy), float4x4(-0.000021337002181,0.000001067037033,-0.000010001347619,0.000000557285375,0.000012304067241,0.000014175902834,0.000004776819424,0.000010463809303,-0.000001051820163,0.000015258302483,-0.000012598572539,0.000009111038707,-0.000016759069695,-0.000021571337129,0.000015742129108,-0.000007790728887));
res += mul(Get(s1,-dx,-dy), float4x4(0.000009361113371,0.000004107677341,0.000002852175612,-0.000003537420071,-0.000161232906976,-0.000328115304001,0.000337650417350,-0.000025251041734,0.022002007812262,0.129405453801155,-0.270641833543777,0.003739641979337,0.090623773634434,-0.277720957994461,0.020548295229673,-0.006819789763540));
res += mul(Get(s1,-dx,0), float4x4(-0.000007060471034,0.000013134163964,-0.000014120319065,-0.000009693582797,-0.000030740673537,-0.000091362824605,0.000353277078830,-0.000027852776839,0.025306602939963,0.007316511590034,-0.194425702095032,0.005994577426463,0.148489877581596,-0.010000776499510,0.087648749351501,-0.012907300144434));
res += mul(Get(s1,-dx,dy), float4x4(-0.000002474870598,0.000012240698197,0.000009627010513,0.000003572998139,-0.000080036013969,0.000310593401082,0.000116590977996,0.000105698178231,0.023023342713714,-0.056125946342945,-0.219627022743225,0.004731247667223,0.073762498795986,0.075314462184906,0.002395452233031,0.007771809119731));
res += mul(Get(s1,0,-dy), float4x4(-0.000007708120393,0.000025268900572,-0.000009062780009,0.000026657626222,-0.000173412670847,0.000039944239688,0.000102113030152,-0.000017408439817,-0.100502163171768,-0.102030828595161,-0.002260664245114,-0.001140446984209,0.080697394907475,-0.337035298347473,-0.014517597854137,-0.000507989432663));
res += mul(Get(s1,0,0), float4x4(-0.000003870175988,0.000010745858162,0.000002411637524,0.000017281248802,-0.000023920856620,-0.000298664584989,0.000199224276002,-0.000053390169342,-0.024228565394878,-0.133738458156586,0.000694537826348,0.001081471680664,0.070190422236919,-0.017879912629724,0.078548900783062,-0.009656364098191));
res += mul(Get(s1,0,dy), float4x4(-0.000018474021999,0.000005244710792,0.000007786759852,-0.000003198957756,-0.000076043259469,0.000234430670389,-0.000007313623883,0.000142495569889,-0.028643278405070,0.079635374248028,-0.010432952083647,0.000568557006773,0.107219636440277,0.095988035202026,-0.022268177941442,0.003277777926996));
res += mul(Get(s1,dx,-dy), float4x4(-0.000006285550171,-0.000004602294212,-0.000018154267309,0.000000523955919,-0.000076325857663,0.000938726007007,-0.000094421455287,-0.000030859970138,-0.001803288003430,0.142510220408440,-0.033995628356934,0.001659734058194,0.034539129585028,-0.118802338838577,-0.064348697662354,0.001685450552031));
res += mul(Get(s1,dx,0), float4x4(-0.000004164149686,0.000016815029085,-0.000008940232874,-0.000002146056204,-0.000014537018615,0.000152356646140,0.000006165580999,-0.000024432991268,-0.006770661100745,0.026158973574638,-0.017590600997210,-0.000006947444035,-0.117140613496304,0.001617985544726,0.093302905559540,-0.009781083092093));
res += mul(Get(s1,dx,dy), float4x4(-0.000003227911975,-0.000016451922420,-0.000006219860552,-0.000002201646339,-0.000016350057194,0.000159394199727,-0.000236512074480,0.000137752213050,-0.009173131547868,-0.013462207280099,-0.042190451174974,-0.000639650155790,0.106937743723392,0.027833232656121,0.076572492718697,-0.002090006601065));
res += mul(Get(s2,-dx,-dy), float4x4(0.000002473993391,-0.000001066450409,-0.000008006108146,-0.000000426341416,0.164592504501343,0.143432378768921,0.222090438008308,-0.007591410074383,-0.162928894162178,0.314442366361618,0.554022073745728,-0.084093965590000,-0.000000288724806,-0.000023310542019,-0.000011164743228,-0.000015369050743));
res += mul(Get(s2,-dx,0), float4x4(0.000000921806475,0.000000930662054,-0.000000189180668,0.000000027722894,0.122942902147770,-0.106589138507843,0.237376749515533,-0.006272330414504,0.008469388820231,-0.576324224472046,0.532545030117035,-0.084688276052475,0.000006138792742,-0.000008541307579,-0.000017036722056,-0.000002045858764));
res += mul(Get(s2,-dx,dy), float4x4(-0.000002614245204,-0.000013582393876,-0.000001665023433,0.000008027788681,0.107730530202389,0.189698189496994,0.155514821410179,-0.005963368341327,-0.093179948627949,0.095562718808651,0.612643420696259,-0.009122177027166,0.000009947786566,0.000001426075983,0.000011210602679,-0.000002359368636));
res += mul(Get(s2,0,-dy), float4x4(-0.000002528257028,0.000007343971902,0.000013893936739,0.000002378855015,-0.162267938256264,-0.260908961296082,-0.015592990443110,-0.009895606897771,0.001351163606159,1.456485986709595,-0.217661455273628,-0.044126778841019,-0.000000863984383,0.000022363296011,0.000005835383035,0.000013372100511));
res += mul(Get(s2,0,0), float4x4(-0.000015973957488,-0.000003676893812,0.000028592967283,0.000009091964785,-0.037997830659151,-0.284277379512787,-0.061705436557531,-0.008746635168791,0.450226515531540,-0.219124451279640,-0.509941279888153,-0.029208200052381,-0.000029204000384,0.000021754412955,-0.000014333886611,-0.000017834589016));
res += mul(Get(s2,0,dy), float4x4(-0.000005719684850,-0.000016597146896,0.000002696531965,-0.000013445369405,-0.005627741571516,0.022195370867848,-0.180363014340401,-0.006828768644482,0.353069454431534,-0.475656747817993,-0.265420496463776,0.058866206556559,-0.000010865502190,0.000003070455932,-0.000012746349967,0.000009385789781));
res += mul(Get(s2,dx,-dy), float4x4(-0.000014517123418,0.000004002874903,0.000007567971352,-0.000005859382327,-0.006046985276043,0.323597699403763,0.095698989927769,0.033700097352266,-0.181752577424049,-0.252464860677719,-0.178201869130135,-0.000591167656239,-0.000001431718033,0.000004661876574,-0.000023748189051,-0.000010051359823));
res += mul(Get(s2,dx,0), float4x4(-0.000017263208065,-0.000007031278983,0.000009221170330,-0.000001777151965,-0.011783513240516,-0.085444055497646,0.060130637139082,0.038845952600241,-0.468514531850815,-0.361877351999283,-0.322441160678864,0.008174409158528,-0.000010134452168,0.000010654663129,-0.000009896448319,-0.000012234839232));
res += mul(Get(s2,dx,dy), float4x4(0.000015566200091,-0.000002267807758,0.000009752806363,-0.000000126120099,0.059953995049000,-0.051002092659473,0.046165701001883,0.044114172458649,-0.331148028373718,0.091229319572449,-0.130339130759239,0.109870694577694,0.000010124647815,0.000009932255125,0.000007619407370,-0.000005054823305));
res += mul(Get(s3,-dx,-dy), float4x4(0.003731479402632,-0.093342900276184,0.015174473635852,0.001357146422379,-0.000004411459031,0.000010683143046,0.000001908747890,-0.000007114045729,-0.000020249932277,-0.000012436728866,-0.000013645980289,-0.000003138463626,0.000001073114277,-0.000013032070456,-0.000002579366083,-0.000006015517556));
res += mul(Get(s3,-dx,0), float4x4(0.066392414271832,0.135797709226608,0.012110454961658,-0.007290980778635,0.000009681853044,-0.000013362327081,0.000013145864614,-0.000021626496164,-0.000001591816840,-0.000012733966287,-0.000000506889648,-0.000002630554263,-0.000021137135263,0.000006731436315,0.000011560709936,0.000003181930424));
res += mul(Get(s3,-dx,dy), float4x4(0.058895170688629,0.081091895699501,0.001180652994663,0.040463913232088,0.000013707916878,0.000017808413759,0.000000486888894,0.000005686915756,-0.000020118508473,0.000001918402404,0.000008889478522,0.000014615974578,-0.000014009916413,0.000020958497771,0.000007841536899,-0.000003627962997));
res += mul(Get(s3,0,-dy), float4x4(-0.013195190578699,-0.078256487846375,0.021208902820945,-0.001338572241366,0.000012349699318,-0.000012844902813,-0.000002460733185,-0.000007852310773,0.000006266159289,-0.000011744967196,-0.000021095152988,-0.000016912701540,-0.000005383474672,-0.000006360595762,0.000001312497943,0.000002696634965));
res += mul(Get(s3,0,0), float4x4(0.049575459212065,0.000518303713761,-0.006357034668326,-0.007443785667419,-0.000021700667276,-0.000045245375077,-0.000005369458449,-0.000010404150999,-0.000012844786397,-0.000008927470844,-0.000005090566901,-0.000005845527539,-0.000001602466455,0.000015769453967,-0.000010360121451,0.000015552459445));
res += mul(Get(s3,0,dy), float4x4(0.067521318793297,0.041120845824480,-0.016180131584406,0.050206519663334,-0.000015192188584,0.000034651129681,0.000000982901497,-0.000002535760359,0.000003417527296,-0.000021030948119,0.000002409393801,0.000010230185580,0.000025093389922,0.000016053394575,0.000002356338427,0.000008573079867));
res += mul(Get(s3,dx,-dy), float4x4(-0.019471220672131,0.110512606799603,0.103183373808861,-0.002552591497079,-0.000012315445019,-0.000014388544514,0.000002016897270,-0.000017293645215,0.000002876719918,0.000022835021809,0.000011669906598,0.000002586504024,-0.000011449278645,-0.000005213641543,0.000004702309070,-0.000013772650163));
res += mul(Get(s3,dx,0), float4x4(-0.017611084505916,0.097517751157284,0.035536851733923,-0.006542046554387,0.000007628699223,-0.000019835006242,-0.000008290972801,0.000002334428700,-0.000002633547638,0.000022413427359,-0.000014906503566,-0.000003464021574,-0.000007202747838,-0.000000720469870,0.000020631392545,0.000001417528210));
res += mul(Get(s3,dx,dy), float4x4(0.003547092434019,0.020801587030292,-0.052647292613983,0.056583605706692,0.000000801678937,0.000031505907828,-0.000008794293535,-0.000026091878681,-0.000015841524146,-0.000001276284706,-0.000002534544365,0.000019606459318,0.000013252977624,0.000009193094229,-0.000002163387762,0.000023922661057));
return max(float4(0,0,0,0), res);
}
