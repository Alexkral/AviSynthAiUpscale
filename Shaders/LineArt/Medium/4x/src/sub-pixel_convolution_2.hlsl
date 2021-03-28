sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.000719971081708,0.000128219951876,-0.000934311479796,-0.000508763361722);
res += mul(Get(s0,-dx,-dy), float4x4(-0.002169518265873,-0.001443498185836,0.000162331823958,-0.000684009981342,0.002327466616407,-0.000162007476320,-0.001739282160997,-0.002962131518871,-0.000947278575040,0.000666720152367,0.001525716856122,0.002022524829954,-0.001361413742416,0.000440863688709,0.001599365612492,0.001353036961518));
res += mul(Get(s0,-dx,0), float4x4(0.001156714279205,0.000563827634323,0.002617676742375,0.003252448979765,0.000948821601924,0.002234775340185,0.001503652427346,0.001485075685196,0.000931982707698,0.000622900668532,-0.001246711355634,-0.003726075403392,0.002153923735023,0.001182441134006,-0.000028453190680,-0.000885279849172));
res += mul(Get(s0,-dx,dy), float4x4(0.000530266843271,0.001470022252761,0.000699782103766,0.000601555337198,-0.000418117473600,-0.000549211166799,-0.001985378097743,-0.001956516411155,-0.004522493109107,-0.003610531101003,-0.001384132774547,0.000020274525014,0.000713054381777,0.001564683974721,0.001512424089015,0.001725303474814));
res += mul(Get(s0,0,-dy), float4x4(0.001217295066454,0.002253093058243,0.001671924022958,0.001821076381020,0.044241767376661,0.024280490353703,-0.006029131356627,-0.008940367959440,0.002484423806891,0.000354191724909,0.000742462987546,0.001219360390678,-0.003669048426673,-0.000850651413202,0.000364960695151,0.001798913697712));
res += mul(Get(s0,0,0), float4x4(-0.017542041838169,-0.017181551083922,-0.012709871865809,-0.007393342442811,-0.000854884798173,-0.011242992244661,-0.018436031416059,0.011323705315590,0.051982868462801,0.040597788989544,0.023684252053499,0.012314433231950,-0.026549302041531,-0.023163387551904,-0.017169427126646,-0.012788655236363));
res += mul(Get(s0,0,dy), float4x4(-0.000502258655615,-0.001744463806972,-0.004122821148485,-0.009766180999577,0.005464200861752,0.006261575035751,0.000285237532808,-0.006287555675954,-0.000414834154071,0.010403456166387,0.027560643851757,0.042741447687149,0.005108239594847,-0.000637673831079,-0.006206416990608,-0.013402082957327));
res += mul(Get(s0,dx,-dy), float4x4(0.001909866463393,0.000019764020180,-0.000890698400326,-0.000353099836502,-0.016342619433999,0.020996609702706,0.014189736917615,-0.000167438527569,0.002866168972105,0.002049286849797,-0.000019641998733,-0.002093211980537,-0.001863088458776,0.002707327948883,0.003035516943783,0.000268584233709));
res += mul(Get(s0,dx,0), float4x4(0.004775082226843,0.004295285325497,0.004388342145830,0.003344013355672,0.005081412382424,0.009484804235399,-0.017843246459961,-0.052609588950872,0.005443795118481,0.001802618848160,0.002909009344876,0.006005383562297,-0.039185058325529,-0.045245081186295,-0.035202659666538,-0.017216190695763));
res += mul(Get(s0,dx,dy), float4x4(0.001318270107731,0.002243936993182,0.002522380556911,0.004213362932205,-0.001890858635306,-0.001921322895214,-0.000135502181365,0.001492382376455,0.001029699225910,0.003930311184376,0.006109631620347,0.005348731763661,0.000918183301110,0.000347742403392,-0.005126475356519,-0.017354957759380));
res += mul(Get(s1,-dx,-dy), float4x4(-0.002843814669177,-0.000759739661589,0.000506497162860,0.000283834262518,-0.012935929931700,-0.008750143460929,-0.003519084071741,-0.000564149231650,-0.001498245983385,-0.001018651528284,-0.000731375999749,0.000647616514470,0.005372573621571,0.005284128710628,-0.004040475469083,-0.003716075327247));
res += mul(Get(s1,-dx,0), float4x4(-0.000770121230744,-0.001220623729751,0.000537155312486,-0.000581436790526,-0.001319326343946,-0.003531815484166,-0.011671274900436,-0.014464585110545,0.003172411117703,0.003636292181909,0.002721371129155,0.000224768125918,-0.000040651309973,-0.000262257730355,0.002414147136733,0.002194646513090));
res += mul(Get(s1,-dx,dy), float4x4(-0.001186709501781,0.001110270619392,-0.002035822486505,-0.003738141385838,-0.001515224692412,-0.001907803933136,-0.000615968019702,-0.001391202793457,-0.000905360735487,-0.001143003581092,-0.001599816954695,-0.000024276268960,0.002777275629342,0.002749659353867,-0.000881182961166,-0.003069178666919));
res += mul(Get(s1,0,-dy), float4x4(0.004994704388082,-0.001927561592311,-0.002767412224784,-0.002701831283048,0.000352400733391,-0.006970495916903,-0.003701281268150,-0.000243107657298,-0.054169911891222,-0.034113310277462,-0.012122776359320,-0.001638880930841,-0.020528798922896,-0.026443280279636,0.000859096064232,0.001767516834661));
res += mul(Get(s1,0,0), float4x4(-0.003913806285709,0.024147115647793,0.010770646855235,0.008440067060292,0.022690933197737,0.045034814625978,0.037036575376987,0.021444259211421,-0.006383588537574,-0.025991894304752,-0.055767763406038,-0.069730743765831,-0.028702471405268,-0.025172095745802,0.038150984793901,0.043523356318474));
res += mul(Get(s1,0,dy), float4x4(0.025609839707613,0.040122341364622,-0.016009407117963,-0.057917781174183,-0.004992102272809,-0.009135943837464,-0.007680366281420,-0.004791750572622,-0.004075751174241,-0.001879779738374,0.002207302255556,0.002495429478586,0.003503492334858,0.003640048205853,-0.001674587256275,-0.004184549674392));
res += mul(Get(s1,dx,-dy), float4x4(0.001056342152879,-0.002446283353493,-0.003428172552958,-0.002301901113242,-0.004359955433756,-0.001120232394896,-0.000891651725397,-0.001298639923334,-0.012570972554386,-0.005479048937559,0.000469460763270,0.002949624788016,-0.011169002391398,-0.000918956531677,0.002839633962139,0.002662347396836));
res += mul(Get(s1,dx,0), float4x4(-0.001506692147814,0.001016483874992,0.002648653695360,0.002485198434442,-0.010495058260858,-0.006554152816534,-0.007977670058608,-0.007969896309078,-0.006720522418618,-0.011804745532572,-0.017074696719646,-0.018795032054186,-0.002671800786629,0.000274734367849,0.007645801641047,-0.002733124187216));
res += mul(Get(s1,dx,dy), float4x4(0.000718550814781,0.004182554315776,-0.001163694891147,-0.006549240555614,-0.001800751313567,-0.003673962084576,-0.005133366212249,-0.010685254819691,0.001322120428085,0.000188050078577,-0.000314306351356,-0.000371551781427,0.001135504571721,0.001240751706064,-0.001664045383222,-0.000370604480850));
res += mul(Get(s2,-dx,-dy), float4x4(-0.003810670226812,-0.001026097568683,0.001406022463925,0.001671544625424,-0.006324570626020,-0.001976446248591,-0.000766126089729,-0.000925720029045,-0.005484223831445,-0.006697971839458,-0.004936757497489,-0.001840330078267,-0.021113704890013,-0.007391781080514,0.011235008016229,0.003671871498227));
res += mul(Get(s2,-dx,0), float4x4(0.007342178374529,0.006238996051252,-0.005878138355911,-0.009122724644840,-0.027266383171082,-0.013499741442502,0.025969831272960,0.009260149672627,0.004553111735731,0.012795155867934,0.016835493966937,0.007240301929414,-0.013556020334363,-0.001570521155372,0.019261557608843,0.006951164454222));
res += mul(Get(s2,-dx,dy), float4x4(-0.003388676792383,-0.001029643230140,0.002062375424430,0.003407570067793,0.003960022237152,0.003392110345885,0.007269493304193,0.004014687146991,-0.000564992718864,-0.003589307656512,-0.007271840237081,-0.004468096885830,-0.000218435670831,-0.000345264241332,0.001175331417471,-0.003432597266510));
res += mul(Get(s2,0,-dy), float4x4(0.028326096013188,-0.000771226361394,-0.010684174485505,-0.009047647938132,-0.010814733803272,0.001648453413509,0.000669097527862,0.001034269924276,0.019538674503565,0.003661159193143,-0.004330032970756,-0.003426464740187,0.037401694804430,0.002445910358801,-0.006710312794894,-0.000276901380857));
res += mul(Get(s2,0,0), float4x4(-0.005292805843055,-0.065164923667908,-0.025930970907211,0.041486855596304,-0.028981098905206,0.003334661247209,0.031184650957584,-0.006379755679518,0.008898000232875,0.026337133720517,0.034136351197958,0.030809717252851,0.002651258371770,-0.043050393462181,-0.033305313438177,0.035867124795914));
res += mul(Get(s2,0,dy), float4x4(0.001095814863220,0.001857860945165,0.011033778078854,0.029550030827522,-0.001863119308837,0.000307123787934,0.012371326796710,0.003355532884598,0.001041349256411,-0.001294071436860,-0.001159789157100,0.000483281532070,-0.003766576526687,-0.000852765573654,0.006242754403502,0.016423933207989));
res += mul(Get(s2,dx,-dy), float4x4(0.001590982079506,0.005830746609718,0.002416510833427,-0.000772322353441,0.001985532464460,-0.000419826101279,-0.000739287876058,-0.001373893581331,-0.000898344384041,-0.001585186342709,-0.000653080700431,0.000391547975596,-0.001594553003088,-0.000230565769016,-0.000456882582512,0.000470071274322));
res += mul(Get(s2,dx,0), float4x4(-0.001515926211141,-0.001629608683288,-0.001413950929418,-0.002089970046654,-0.001636468339711,-0.002003363100812,0.001246391911991,0.003734878730029,-0.000763038697187,-0.002068479312584,-0.002401550067589,-0.002351760398597,-0.006073259282857,-0.006374368444085,-0.006112872157246,-0.003766106208786));
res += mul(Get(s2,dx,dy), float4x4(-0.003445354523137,-0.007656141184270,-0.002527033444494,0.002034581033513,0.001260288059711,0.000349715643097,-0.001651300932281,-0.001096131512895,-0.000347444351064,-0.001179637736641,-0.001969832926989,0.000015186906239,0.000233907398069,0.006119623780251,0.008934629149735,0.001204234547913));
res += mul(Get(s3,-dx,-dy), float4x4(0.014149930328131,-0.004119181539863,-0.009988327510655,-0.002296990482137,-0.012888569384813,-0.001147745875642,0.002899732207879,-0.000744961434975,-0.000677062256727,-0.000964100356214,-0.001025676378049,-0.000560424348805,-0.005395903252065,0.004521412774920,0.005842171143740,0.001851563691162));
res += mul(Get(s3,-dx,0), float4x4(-0.003808356821537,-0.004692626651376,-0.003941302187741,0.007391468621790,0.012523663230240,-0.003941716626287,-0.024806205183268,-0.027050776407123,-0.000951850612182,-0.002415074501187,-0.002420746954158,-0.001969087636098,0.001895770779811,0.002908172318712,-0.001111479825340,-0.007597304414958));
res += mul(Get(s3,-dx,dy), float4x4(0.001634797081351,0.001908883103170,-0.000358189863618,-0.002239838941023,-0.001229324494489,-0.000979136792012,0.003180747618899,0.010646255686879,0.002706016879529,0.002199037466198,0.000731943931896,0.000273003766779,-0.000990808475763,-0.001243985840119,-0.001652723061852,-0.000490023288876));
res += mul(Get(s3,0,-dy), float4x4(0.055333293974400,-0.006135181058198,-0.032361973077059,-0.003469621995464,-0.002253446727991,-0.001857473514974,0.000205494638067,-0.000989740015939,0.006146328058094,0.003018466057256,-0.000423137040343,-0.002260513370857,0.019345039501786,0.030581902712584,-0.010570236481726,-0.011936267837882));
res += mul(Get(s3,0,0), float4x4(-0.009541232138872,-0.014727391302586,-0.019186925143003,0.022716654464602,0.015608336776495,0.018528169021010,0.012981501407921,0.002650272566825,-0.023252539336681,-0.016163723543286,-0.002964264946058,0.008604132570326,0.015325325541198,0.043364997953176,-0.020313350483775,-0.058332491666079));
res += mul(Get(s3,0,dy), float4x4(0.004351208917797,0.006437171250582,0.002694907598197,-0.005656340159476,-0.000161240634043,0.002514209365472,0.006870815064758,0.011585325002670,0.003547846805304,0.000746002653614,-0.008565267547965,-0.019123991951346,-0.000987552339211,-0.002733001485467,0.000806991418358,-0.002648549154401));
res += mul(Get(s3,dx,-dy), float4x4(-0.001833640970290,-0.000571518845391,-0.001510377158411,0.000075341609772,-0.001363557297736,0.000435010384535,0.001078013447113,0.001458313432522,0.008917231112719,0.004678738303483,-0.000067544060585,-0.001814574818127,-0.004109090659767,0.001532850321382,0.004587497096509,0.001915921457112));
res += mul(Get(s3,dx,0), float4x4(0.001499048783444,0.001623303745873,0.001881084754132,-0.002080433070660,-0.005364184733480,-0.004300153348595,-0.003297010902315,-0.002547671785578,0.010086928494275,0.012379406020045,0.013934096321464,0.013215029612184,-0.001949968514964,-0.002179189352319,0.002281612949446,0.000861962034833));
res += mul(Get(s3,dx,dy), float4x4(0.000340447790222,0.000653553695884,0.000339573511155,0.001568508916534,-0.001379289664328,-0.000882154679857,-0.000920418882743,-0.003296500304714,-0.000065674226789,0.001758700236678,0.003137622959912,0.004895116202533,-0.000710371998139,-0.001252987422049,-0.000312853546347,0.001792059279978));
res += mul(Get(s4,-dx,-dy), float4x4(0.001898124697618,-0.005729665514082,0.004059763159603,0.004752719774842,-0.001930398168042,0.001434651319869,0.002963391132653,0.002473571104929,0.000994492787868,-0.001313933404163,-0.002579377964139,-0.002170710824430,0.006984880194068,0.003788496134803,-0.000830428791232,-0.001650002901442));
res += mul(Get(s4,-dx,0), float4x4(0.005840338766575,-0.000561097462196,-0.002743054646999,0.010133831761777,0.000640802434646,0.000779452442657,-0.002067919354886,-0.003104856936261,-0.000955901865382,0.000957516545895,0.002956667682156,0.002537095686421,0.004936146549881,0.005151323508471,-0.002783263102174,-0.001124936505221));
res += mul(Get(s4,-dx,dy), float4x4(-0.005758353974670,-0.005092635750771,0.001111279358156,0.006211997475475,0.002564501482993,-0.000321800325764,-0.003349274862558,-0.002638758858666,-0.000285936344881,-0.000827851239592,-0.000864374858793,-0.000728551705834,-0.002155427820981,-0.001697841449641,-0.003841916797683,-0.001330284052528));
res += mul(Get(s4,0,-dy), float4x4(-0.033841129392385,-0.007165392395109,0.008210220374167,0.004902999848127,-0.003669231664389,-0.003875811584294,-0.004234330262989,-0.003479807870463,0.001393100945279,0.003708539996296,0.005857716780156,0.004349086899310,0.013169932179153,-0.000467711623060,-0.008845144882798,-0.008503470569849));
res += mul(Get(s4,0,0), float4x4(-0.001919610076584,0.026777826249599,0.035747081041336,-0.012418733909726,-0.042919836938381,0.012686435133219,0.043568227440119,0.012663330882788,0.018743317574263,0.010775852017105,0.004927602130920,0.002656046766788,-0.048488393425941,-0.009618221782148,0.026364946737885,0.025150818750262));
res += mul(Get(s4,0,dy), float4x4(-0.003596209920943,-0.005732224788517,-0.003256384050474,-0.000292740587611,0.014076041989028,0.012035013176501,-0.004663976375014,-0.035174712538719,-0.001951109734364,0.002195573644713,0.005893596448004,0.012619690038264,0.010505979880691,0.013136875815690,0.000743991404306,-0.029948337003589));
res += mul(Get(s4,dx,-dy), float4x4(-0.005338148679584,-0.002739277668297,0.000670283858199,0.003388216253370,0.007776831276715,-0.000896553567145,-0.007332589942962,-0.005720003973693,-0.003877792274579,-0.000706296530552,0.000740537536331,0.001503644394688,-0.000439005496446,0.001304705045186,0.003274546004832,0.002421495271847));
res += mul(Get(s4,dx,0), float4x4(-0.004130390938371,-0.004540078807622,-0.003820771584287,-0.005514434073120,0.010473449714482,0.007161947898567,-0.009531293064356,-0.003910751082003,-0.006211056374013,-0.009104903787374,-0.013312892057002,-0.013318637385964,0.007609575986862,-0.000111411376565,-0.006274281535298,-0.003253092756495));
res += mul(Get(s4,dx,dy), float4x4(0.003833117894828,0.004333718679845,0.002523207105696,-0.001531740068458,-0.001102889887989,0.002503303345293,-0.001391681144014,-0.002400843426585,0.002118201926351,0.002304320689291,0.002196507295594,-0.001338393543847,0.003608163911849,0.003001615637913,0.005296272691339,0.008939428254962));
res += mul(Get(s5,-dx,-dy), float4x4(0.007524728775024,0.006794414948672,0.004241973627359,0.001257053576410,-0.003946551121771,0.017154125496745,0.006179946009070,0.005563609767705,-0.005642308387905,-0.003294909838587,0.000491564627737,0.003111968049780,-0.000808260403574,0.000721268879715,0.001285676262341,0.000819565262645));
res += mul(Get(s5,-dx,0), float4x4(0.007274515926838,0.005225702188909,0.002258342225105,0.003843698184937,0.023594211786985,0.026911849156022,-0.028096744790673,-0.054455481469631,0.009462893009186,0.007422236725688,0.003768318099901,-0.005092442035675,0.008971506729722,-0.004281281027943,-0.004377974197268,-0.003288905136287));
res += mul(Get(s5,-dx,dy), float4x4(-0.000628416950349,0.001305755926296,0.004397167824209,0.006597268395126,-0.004499848932028,-0.005714289378375,-0.000023666812922,0.005473013967276,-0.003987738862634,-0.003590969834477,0.003553984919563,0.009724162518978,0.000089304201538,-0.010766917839646,-0.008489374071360,0.013418366201222));
res += mul(Get(s5,0,-dy), float4x4(0.004968673456460,-0.000034851451346,-0.002192451385781,-0.001047230442055,0.019355978816748,0.009838615544140,0.001155488891527,-0.004075361881405,-0.004215310793370,0.002476948779076,0.007329311221838,0.007069652434438,-0.007689500693232,0.003295840695500,0.005529609508812,0.004207925871015));
res += mul(Get(s5,0,0), float4x4(0.022006187587976,0.027717206627131,0.024779684841633,0.016039444133639,-0.006799741648138,-0.018494712188840,-0.003749937284738,0.020943216979504,0.007011220324785,-0.002510223304853,-0.010972697287798,-0.009785043075681,0.029605878517032,-0.016073256731033,-0.014030343852937,-0.011038230732083));
res += mul(Get(s5,0,dy), float4x4(-0.001585748745129,-0.001503503648564,0.001007232232951,0.008161583915353,0.001898168935440,0.003848066320643,-0.000893179967534,-0.002439099829644,-0.007970207370818,-0.007720749825239,0.000221531547140,0.008286374621093,-0.001245747786015,-0.034861229360104,-0.012818499468267,0.055155992507935));
res += mul(Get(s5,dx,-dy), float4x4(-0.001407572301105,-0.001785322441719,-0.001778720645234,-0.000230870035011,0.001710897544399,0.001237880671397,-0.000692893925589,-0.001121501205489,-0.001378160319291,-0.000857756473124,-0.001073514926247,-0.001286509446800,0.000443525757873,0.000051041442930,0.000658727309201,0.000626684108283));
res += mul(Get(s5,dx,0), float4x4(0.002468089805916,0.004052339121699,0.003615380963311,0.000708670413587,0.003874778049067,0.005171107128263,0.003958526533097,0.001755075296387,0.000877539918292,-0.000586414593272,-0.001457440783270,-0.003150242380798,0.000747907964978,0.002680297242478,0.000630300026387,-0.000533758837264));
res += mul(Get(s5,dx,dy), float4x4(-0.001485528424382,-0.001578037743457,-0.001731036929414,-0.000756732537411,-0.001110660261475,-0.001479967264459,-0.001404384151101,0.000506952754222,0.001709226868115,0.001556011731736,0.001135991071351,0.001991804689169,0.000458254682599,0.001670106314123,-0.001478462596424,-0.002977628493682));
return res;
}
