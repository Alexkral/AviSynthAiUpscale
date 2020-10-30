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
res += mul(Get(s0,-dx,-dy), float4x4(-0.067581571638584,-0.042392048984766,0.020227387547493,0.134429901838303,0.024776557460427,-0.051400877535343,0.050832852721214,-0.053290601819754,0.069178663194180,-0.041582282632589,-0.008106239140034,0.076040886342525,-0.009859460406005,0.056229185312986,-0.025731857866049,-0.074780955910683));
res += mul(Get(s0,-dx,0), float4x4(0.086512431502342,-0.065579675137997,-0.046246677637100,0.091960415244102,0.016083803027868,-0.056092862039804,0.091882757842541,-0.072767294943333,-0.012932088226080,0.086880631744862,-0.000451424159110,-0.047990363091230,-0.069303780794144,0.036555387079716,0.082628570497036,-0.041027601808310));
res += mul(Get(s0,-dx,dy), float4x4(0.011059930548072,0.015787277370691,-0.085436590015888,0.021218731999397,-0.011055137030780,-0.035405799746513,0.008767645806074,-0.049615073949099,-0.117351457476616,0.083997815847397,0.124718613922596,-0.088726654648781,0.105832107365131,0.015165731310844,-0.030675474554300,0.054513424634933));
res += mul(Get(s0,0,-dy), float4x4(-0.008937398903072,0.056546323001385,-0.034791313111782,-0.093147784471512,-0.062847219407558,-0.079407878220081,-0.021900538355112,0.069216839969158,-0.013603971339762,0.027427487075329,-0.000790296588093,0.021564276888967,0.043437466025352,-0.017199937254190,0.005177699960768,-0.022490153089166));
res += mul(Get(s0,0,0), float4x4(-0.004473219159991,0.147608488798141,0.051656764000654,-0.132750481367111,-0.024142595008016,-0.072902806103230,0.004854368977249,-0.043124340474606,0.140281185507774,0.031151890754700,0.143187999725342,0.035204097628593,-0.087211459875107,-0.048563487827778,-0.041376177221537,0.016197312623262));
res += mul(Get(s0,0,dy), float4x4(0.019920691847801,0.141157031059265,0.169926181435585,-0.040392141789198,0.008936805650592,-0.069126419723034,0.068052053451538,-0.048618517816067,-0.110953740775585,0.040635243058205,0.080177329480648,0.046500694006681,0.096405841410160,-0.087627187371254,-0.059274010360241,-0.077202059328556));
res += mul(Get(s0,dx,-dy), float4x4(0.068807974457741,-0.004932408686727,-0.027154089882970,-0.133116647601128,0.084366790950298,0.106635056436062,0.019500100985169,-0.093014277517796,-0.077601999044418,-0.044582728296518,0.180607199668884,0.092903882265091,0.005541023798287,0.030921371653676,-0.083279274404049,0.044634986668825));
res += mul(Get(s0,dx,0), float4x4(-0.047807473689318,-0.093360766768456,0.049772415310144,-0.042892813682556,0.043930225074291,0.133365884423256,-0.032584089785814,-0.057563036680222,0.133800774812698,0.015774697065353,0.081680603325367,0.135581418871880,-0.158673554658890,0.048737701028585,0.073008276522160,0.027093736454844));
res += mul(Get(s0,dx,dy), float4x4(0.021916663274169,-0.071749716997147,0.081052891910076,0.007358693983406,0.019293488934636,-0.003363285213709,-0.011188523843884,-0.030275547876954,-0.133910581469536,-0.055879760533571,-0.048566505312920,-0.028672756627202,-0.055178031325340,-0.045966502279043,0.044112738221884,-0.067417450249195));
res += mul(Get(s1,-dx,-dy), float4x4(-0.038884341716766,-0.020680237561464,0.053734134882689,0.055789940059185,-0.027526386082172,0.106761887669563,0.031634300947189,0.013125154189765,-0.018754249438643,-0.060607671737671,-0.125448867678642,-0.026610698550940,0.082309722900391,0.038190767168999,0.004356933292001,0.074494734406471));
res += mul(Get(s1,-dx,0), float4x4(0.108182296156883,-0.042949270457029,-0.031614154577255,0.033844433724880,-0.029789689928293,-0.004493201617151,0.049137525260448,-0.008986508473754,-0.025531789287925,-0.021599575877190,0.008348505944014,-0.014180487021804,0.140044853091240,0.056903865188360,0.033755533397198,-0.041519600898027));
res += mul(Get(s1,-dx,dy), float4x4(-0.115199454128742,-0.005269201938063,-0.004685709718615,0.044296707957983,-0.000398242875235,-0.054180365055799,0.001995727419853,0.004250873345882,-0.030226944014430,-0.004174577537924,-0.015121242962778,0.025021275505424,-0.012757635675371,0.008634238503873,0.035151392221451,0.058129571378231));
res += mul(Get(s1,0,-dy), float4x4(0.035484038293362,0.034602407366037,0.030177542939782,-0.068853951990604,-0.016305403783917,0.036175027489662,0.076593153178692,0.047813840210438,-0.037486013025045,-0.034860670566559,-0.107466973364353,0.039002735167742,0.010096867568791,0.023028165102005,-0.045538209378719,-0.031639639288187));
res += mul(Get(s1,0,0), float4x4(0.018525548279285,0.039276368916035,0.026986060664058,-0.005152013618499,-0.003165008500218,-0.032160393893719,0.012347642332315,0.076543450355530,0.046136725693941,-0.028629224747419,-0.079962186515331,0.046667043119669,0.138637021183968,0.013553494587541,-0.094374082982540,-0.067034564912319));
res += mul(Get(s1,0,dy), float4x4(-0.051613513380289,-0.005976040381938,0.049760535359383,0.018933417275548,-0.030335018411279,-0.007650874089450,-0.049231406301260,0.067236892879009,0.040706858038902,0.015522914007306,-0.130928367376328,-0.018927603960037,0.065404385328293,-0.068515196442604,-0.101987168192863,0.001208288827911));
res += mul(Get(s1,dx,-dy), float4x4(0.030304513871670,-0.010101920925081,-0.029650410637259,-0.039062138646841,-0.026253545656800,-0.044226586818695,-0.033527109771967,0.012046011164784,0.013361223042011,-0.035006165504456,-0.043871048837900,0.020271578803658,-0.022190675139427,0.001632585073821,0.139282613992691,-0.061333663761616));
res += mul(Get(s1,dx,0), float4x4(-0.110573276877403,-0.048386495560408,-0.015891745686531,-0.053119339048862,-0.013584425672889,-0.054194990545511,-0.066736929118633,-0.004059379454702,0.009817887097597,-0.095056734979153,0.096181988716125,0.146570473909378,0.102655082941055,-0.033822678029537,0.114956296980381,0.069294676184654));
res += mul(Get(s1,dx,dy), float4x4(-0.021892236545682,-0.009810482151806,-0.062873333692551,0.002798006404191,-0.014939527027309,-0.005267589353025,-0.057737339287996,-0.000850859330967,0.042986016720533,-0.058860000222921,0.259373962879181,-0.072765134274960,-0.028573861345649,-0.016013139858842,-0.012131980620325,0.099900819361210));
res += mul(Get(s2,-dx,-dy), float4x4(0.063968345522881,0.089232333004475,-0.038689795881510,0.180460944771767,0.006177509669214,-0.034631792455912,-0.106653608381748,-0.069138526916504,-0.018683852627873,0.003667450044304,0.019856542348862,-0.042118303477764,-0.177326157689095,-0.054070692509413,-0.009611753746867,-0.032356936484575));
res += mul(Get(s2,-dx,0), float4x4(-0.026215031743050,0.134511634707451,0.029876947402954,0.224413186311722,-0.055919904261827,-0.150849014520645,-0.004198354668915,-0.053139932453632,-0.060457251966000,-0.006638621445745,-0.024636965245008,0.046204715967178,-0.055872038006783,0.112502068281174,0.004269709344953,-0.068002127110958));
res += mul(Get(s2,-dx,dy), float4x4(-0.119096539914608,0.060598179697990,0.005614721216261,0.038814056664705,-0.051254265010357,0.123545184731483,-0.142554268240929,-0.067412324249744,-0.000198456109501,-0.164619579911232,-0.083714567124844,0.094637744128704,-0.172313705086708,0.050773411989212,-0.011706680059433,0.064733400940895));
res += mul(Get(s2,0,-dy), float4x4(-0.101322986185551,-0.047458060085773,0.032637592405081,-0.097090527415276,-0.006976503413171,-0.090257011353970,-0.040079496800900,0.255904346704483,-0.009223357774317,0.005720313172787,-0.010668397881091,0.022823462262750,-0.178268164396286,-0.155105024576187,0.039591751992702,-0.050745498389006));
res += mul(Get(s2,0,0), float4x4(0.034521531313658,0.016055814921856,0.004756302107126,-0.134487047791481,-0.076540499925613,-0.074727758765221,-0.092004343867302,0.078689172863960,0.010430912487209,0.017924515530467,-0.061842676252127,-0.038900457322598,-0.072103269398212,0.059545870870352,-0.046818282455206,0.169624492526054));
res += mul(Get(s2,0,dy), float4x4(-0.161176651716232,0.182346269488335,0.000134529502247,0.219270318746567,-0.074359267950058,0.061902415007353,0.038946781307459,-0.018701283261180,0.182206526398659,-0.058183971792459,-0.017975371330976,-0.020422218367457,-0.064685098826885,0.140133962035179,-0.074812084436417,-0.030838249251246));
res += mul(Get(s2,dx,-dy), float4x4(0.027669832110405,-0.007962617091835,-0.033922012895346,0.044823359698057,-0.022986972704530,0.097303010523319,0.146352320909500,-0.123344309628010,-0.002349161542952,-0.068923383951187,-0.018319403752685,0.021618902683258,-0.235395729541779,0.075932160019875,0.056510295718908,-0.025632457807660));
res += mul(Get(s2,dx,0), float4x4(0.003416401334107,0.033420618623495,-0.053333271294832,-0.001012792810798,0.046114206314087,0.041462827473879,0.075754798948765,-0.049062952399254,-0.058550745248795,-0.022009683772922,0.004343622829765,0.044188085943460,-0.091490447521210,-0.056639965623617,0.064586229622364,-0.075194954872131));
res += mul(Get(s2,dx,dy), float4x4(-0.026402931660414,-0.018730426207185,-0.138313606381416,0.018359566107392,0.001627476071008,0.016560114920139,-0.046170663088560,-0.065934829413891,0.165871664881706,-0.015616403892636,-0.097250096499920,0.068697646260262,-0.122163705527782,-0.066407114267349,-0.029317153617740,-0.042627617716789));
res += mul(Get(s3,-dx,-dy), float4x4(-0.030690452083945,0.151178598403931,0.047781027853489,-0.082637637853622,-0.002879152307287,-0.010439234785736,-0.057102195918560,-0.094619341194630,-0.117919750511646,0.013812899589539,-0.083787888288498,-0.098105341196060,-0.048580382019281,0.200572058558464,-0.080390237271786,0.002801332622766));
res += mul(Get(s3,-dx,0), float4x4(0.145495161414146,0.022981239482760,0.036967098712921,-0.057159271091223,-0.113772794604301,0.000239340544795,0.021165439859033,0.009466546587646,0.056976489722729,0.053406242281199,-0.055259484797716,-0.123502686619759,0.028906282037497,0.376364082098007,0.101130053400993,-0.047531746327877));
res += mul(Get(s3,-dx,dy), float4x4(-0.165861994028091,0.040728349238634,-0.057603828608990,0.037157941609621,-0.024476472288370,0.101133733987808,0.049861371517181,-0.108098194003105,-0.014962503686547,-0.001023643417284,-0.069164894521236,-0.108149513602257,0.046063270419836,0.168259009718895,0.195755735039711,-0.027937088161707));
res += mul(Get(s3,0,-dy), float4x4(-0.019463455304503,-0.015972916036844,-0.004970749840140,-0.031327992677689,-0.126284986734390,-0.065975017845631,-0.016756739467382,-0.045450896024704,-0.070922777056694,-0.023642851039767,-0.016609624028206,-0.058196652680635,0.033922474831343,-0.140016779303551,-0.080325186252594,-0.155304774641991));
res += mul(Get(s3,0,0), float4x4(0.181505605578423,-0.036391437053680,0.028715532273054,-0.046298339962959,-0.099421307444572,0.033934567123652,0.076655864715576,-0.084327556192875,0.126540541648865,0.049066126346588,0.020879156887531,-0.077016636729240,0.115308687090874,-0.079851374030113,0.067146152257919,0.064297214150429));
res += mul(Get(s3,0,dy), float4x4(-0.114952810108662,-0.018196620047092,-0.059508346021175,0.013940878212452,-0.081789523363113,-0.005797234829515,0.043638009577990,0.027559490874410,0.162792012095451,0.025761321187019,-0.051294285804033,-0.059582293033600,-0.025674471631646,-0.100785166025162,-0.096508584916592,0.034305609762669));
res += mul(Get(s3,dx,-dy), float4x4(-0.067045599222183,-0.061846446245909,-0.010617571882904,-0.010494670830667,-0.044036552309990,-0.002372221555561,0.048385336995125,-0.065985046327114,0.043656840920448,-0.054826498031616,0.033782973885536,0.050129387527704,-0.085313960909843,0.106506988406181,0.058857422322035,-0.068929567933083));
res += mul(Get(s3,dx,0), float4x4(0.210223108530045,0.121404953300953,-0.058151572942734,0.059690691530704,0.064057342708111,-0.065093718469143,-0.006143559701741,-0.039378777146339,-0.048240847885609,-0.084828615188599,0.109692879021168,0.088176615536213,0.078481011092663,0.016721846535802,0.019354665651917,-0.163606524467468));
res += mul(Get(s3,dx,dy), float4x4(-0.033732101321220,0.018476421013474,-0.050237324088812,0.010499598458409,0.072324290871620,-0.124514505267143,-0.009209843352437,-0.087880186736584,0.116478040814400,-0.040419917553663,-0.000541151734069,-0.014697075821459,-0.033028967678547,0.097046181559563,-0.009161791764200,-0.128489524126053));
return max(float4(0,0,0,0), res);
}
