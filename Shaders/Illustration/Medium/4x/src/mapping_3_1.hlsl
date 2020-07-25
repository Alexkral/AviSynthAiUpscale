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
float4 res = float4(0.0196242053061724,0.0080503085628152,-0.0599447004497051,0.0324811674654484);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0703152120113373,-0.2186796516180038,-0.0343742184340954,-0.2241159081459045,-0.0487669408321381,0.2086780518293381,0.0512398406863213,0.0856591537594795,-0.0453917793929577,-0.0041298149153590,-0.2982108891010284,0.0692897439002991,-0.0791544765233994,0.1374776661396027,-0.0091067636385560,-0.0198074094951153));
res += mul(Get(s1,-dx,-dy), float4x4(0.3945045769214630,-0.3546040952205658,-0.4856997430324554,-0.3092282712459564,-0.0975187569856644,-0.3058086037635803,0.1040480807423592,0.1376781612634659,0.0529602095484734,-0.2137245982885361,-0.0900436863303185,-0.1731898337602615,0.0140855861827731,-0.1403089910745621,-0.0780452340841293,0.2071094661951065));
res += mul(Get(s2,-dx,-dy), float4x4(0.0211289636790752,-0.3684263229370117,-0.0408111587166786,0.0145588535815477,-0.0663247406482697,-0.1222418248653412,-0.0309952739626169,-0.0891214832663536,0.1007510498166084,-0.1942885369062424,0.1240512877702713,-0.0802845060825348,0.0377318859100342,-0.5434352755546570,0.1883947402238846,-0.4971686899662018));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0578862018883228,-0.1328430473804474,0.0501127876341343,-0.0342599637806416,-0.0664516836404800,-0.0728456079959869,0.0031786104664207,0.0139651708304882,-0.0314808487892151,0.1816898584365845,-0.0175352040678263,0.3127064406871796,-0.1018966510891914,-0.1872261613607407,0.1041470542550087,0.1619107723236084));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0305907353758812,-0.4053527712821960,-0.0897289291024208,0.0120902098715305,0.1095050945878029,0.0538253746926785,0.1160251796245575,0.0873732194304466,0.0377483442425728,-0.0677035897970200,0.1033191680908203,-0.0485050491988659,-0.0124282725155354,0.0933081880211830,-0.0476351901888847,0.2000005394220352));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0493262708187103,0.0234478525817394,-0.1108679026365280,-0.0831925421953201,-0.0415454022586346,0.0356678478419781,0.1933211833238602,0.0730005726218224,-0.0646715089678764,0.3798297941684723,-0.2315301746129990,-0.0741132795810699,0.0280402358621359,-0.0359745919704437,-0.0713784471154213,-0.0630980432033539));
res += mul(Get(s0,-dx,0), float4x4(-0.1472892463207245,0.1974910646677017,-0.4111790955066681,0.0191211346536875,0.0119419852271676,-0.0010304480092600,-0.2053484022617340,-0.0913913622498512,-0.1404588371515274,-0.2218765914440155,-0.0546442680060863,0.3536201417446136,0.0541040375828743,-0.4458267688751221,0.5757566094398499,-0.0819581747055054));
res += mul(Get(s1,-dx,0), float4x4(0.0154981100931764,-0.1192816644906998,0.0404204875230789,0.1358002275228500,-0.2056769877672195,0.2140888869762421,-0.0079012764617801,-0.0902323946356773,0.0455156043171883,0.0842655152082443,0.2102162241935730,0.0929394215345383,-0.0582205690443516,-0.1008682474493980,0.3300211727619171,-0.0765434131026268));
res += mul(Get(s2,-dx,0), float4x4(0.3032276630401611,-0.7697553634643555,-0.3613313138484955,-0.6626585125923157,0.0095538115128875,0.0081182438880205,0.0731665715575218,0.1560779064893723,0.1544030755758286,-0.1176498159766197,0.0993586033582687,-0.5241706371307373,-0.1562088578939438,0.1342226266860962,-0.2741678357124329,0.4971721172332764));
res += mul(Get(s3,-dx,0), float4x4(0.0490079037845135,0.2077575474977493,0.0013385941274464,-0.0148676633834839,-0.0829431191086769,0.3836205899715424,-0.2990682125091553,0.3246901631355286,0.1039500236511230,-0.2215085476636887,0.2894953787326813,-0.0789483413100243,0.0170708503574133,-0.2652343511581421,-0.3265232741832733,-0.1473919302225113));
res += mul(Get(s4,-dx,0), float4x4(-0.0019266579765826,-0.1086254492402077,-0.0998772755265236,-0.0218190439045429,0.2344019562005997,-0.0022987818811089,-0.2078668475151062,0.0462443940341473,0.0547214075922966,0.0793347656726837,0.3162927925586700,-0.1677375882863998,0.0547786913812160,-0.0763790085911751,0.2388490289449692,0.2013409137725830));
res += mul(Get(s5,-dx,0), float4x4(-0.0495656169950962,0.0668615847826004,-0.5011147260665894,0.0371317490935326,0.0588919892907143,-0.0996554419398308,0.1274308860301971,-0.3907188177108765,0.0979203432798386,-0.2157611101865768,-0.0095555754378438,0.0671345219016075,-0.1184895187616348,0.0007242752471939,-0.3116522729396820,-0.0743215158581734));
res += mul(Get(s0,-dx,dy), float4x4(0.0547294095158577,0.1115267425775528,-0.0143490601330996,-0.1393854022026062,-0.0209247730672359,-0.0192052703350782,-0.0413850322365761,0.0114943031221628,-0.0386655516922474,0.1727321892976761,-0.0770151466131210,-0.1502119302749634,-0.0753661096096039,-0.1608047783374786,0.1761554479598999,0.0713594108819962));
res += mul(Get(s1,-dx,dy), float4x4(-0.0888275429606438,0.1601820141077042,-0.0581699274480343,-0.3349895179271698,-0.0521807745099068,-0.1227170005440712,0.1000077426433563,0.2206321805715561,-0.0393084175884724,-0.0138237606734037,-0.1248073726892471,0.0262829381972551,-0.0688583776354790,-0.2075700014829636,-0.0503723062574863,-0.0321948379278183));
res += mul(Get(s2,-dx,dy), float4x4(-0.0241528637707233,0.1689215749502182,-0.1294052600860596,-0.4101813435554504,-0.0646549686789513,0.0060433344915509,0.1363926231861115,0.2201864570379257,0.0138506442308426,0.1898413151502609,-0.1025651246309280,-0.0566501542925835,-0.0613797977566719,0.1082364469766617,-0.0648223608732224,-0.2626063823699951));
res += mul(Get(s3,-dx,dy), float4x4(-0.0264624580740929,0.0952180474996567,0.0893293246626854,-0.0403357408940792,0.0923392623662949,-0.1252477169036865,-0.0014557819813490,0.1967833936214447,0.0382069908082485,0.0374186858534813,-0.0381003208458424,-0.1537038832902908,0.0010430653346702,-0.0714508891105652,-0.0062510236166418,-0.1507449150085449));
res += mul(Get(s4,-dx,dy), float4x4(-0.0306906253099442,-0.0511051639914513,0.0223050732165575,0.0818000659346581,-0.0258605647832155,-0.0265783909708261,-0.0136781064793468,0.0841602385044098,-0.0064113498665392,0.0158074758946896,0.0387502275407314,0.1013505384325981,-0.0299083311110735,0.0152562372386456,-0.0833826661109924,-0.0498897470533848));
res += mul(Get(s5,-dx,dy), float4x4(-0.0677070617675781,0.1694802492856979,-0.1720680296421051,-0.0874477177858353,-0.0689263716340065,0.1483044028282166,0.0754775702953339,-0.0926632881164551,-0.0399758853018284,-0.1451974809169769,-0.0542581714689732,0.1543656289577484,-0.0443453267216682,-0.0216039735823870,-0.4602236151695251,0.0404286608099937));
res += mul(Get(s0,0,-dy), float4x4(-0.0864621475338936,-0.1879683434963226,-0.2594305574893951,-0.1207382604479790,-0.0251857060939074,-0.2546860873699188,-0.0793595835566521,-0.0465975590050220,0.0874642208218575,-0.0723888725042343,0.1190760135650635,-0.1807875335216522,-0.1109941154718399,-0.0402580015361309,-0.3530265390872955,0.0509580932557583));
res += mul(Get(s1,0,-dy), float4x4(0.1445867121219635,-0.0913146659731865,-0.3189506828784943,0.0128228338435292,0.1125411540269852,0.3001710176467896,0.1953106820583344,-0.2030074894428253,-0.0412077754735947,0.3270092308521271,-0.0836452841758728,-0.1519182771444321,0.1389368623495102,0.1832080930471420,-0.0488337427377701,-0.6186667084693909));
res += mul(Get(s2,0,-dy), float4x4(-0.0014515217626467,0.0464015640318394,0.0819755420088768,0.1163050308823586,0.0155178438872099,-0.2047493010759354,0.0979134142398834,0.0025001273024827,0.1087062731385231,0.0361062213778496,0.0965633466839790,0.0709541216492653,-0.1784025281667709,-0.3060235977172852,0.0270890425890684,-0.2771506309509277));
res += mul(Get(s3,0,-dy), float4x4(-0.0558778084814548,-0.3016516268253326,0.1931799054145813,-0.1473670452833176,-0.2761006057262421,0.2319050133228302,-0.1109309867024422,0.2083382755517960,0.0381650030612946,0.0579484850168228,-0.0005094982334413,0.0396325811743736,-0.2162616848945618,-0.2345883697271347,0.2241543829441071,0.2898277640342712));
res += mul(Get(s4,0,-dy), float4x4(-0.0181094929575920,-0.4666585326194763,0.1574949324131012,-0.1214136108756065,-0.0323943533003330,-0.0061549735255539,-0.0379488244652748,0.0651766806840897,-0.0018600178882480,0.3557222783565521,-0.1113250106573105,-0.2855962514877319,0.0775844082236290,0.4836217761039734,0.2455336898565292,0.0607680715620518));
res += mul(Get(s5,0,-dy), float4x4(-0.0695834010839462,-0.3084931969642639,-0.0430069565773010,-0.0234874114394188,0.0091605260968208,-0.1284248530864716,-0.0805357471108437,0.0636584311723709,0.0900215581059456,0.3470537066459656,0.1787076294422150,-0.3341351449489594,-0.0203860457986593,-0.2552893459796906,-0.1320255100727081,0.1184135302901268));
res += mul(Get(s0,0,0), float4x4(-0.3358477354049683,-0.1531039476394653,0.1399247944355011,0.4767872691154480,-0.0873102173209190,-0.0922911688685417,-0.0834440067410469,-0.0719724819064140,-0.2448771148920059,-0.0676317214965820,-0.4422729313373566,-0.0482764132320881,-0.0967100933194160,0.2703439891338348,-0.6457985639572144,0.7044014334678650));
res += mul(Get(s1,0,0), float4x4(0.1201476678252220,-0.2469543516635895,-0.1139125749468803,-0.0364141501486301,-0.0850910469889641,0.3450179696083069,0.0532475747168064,0.1254805028438568,0.1269933134317398,0.1151763275265694,-0.3828967213630676,0.2353519648313522,-0.0800017490983009,0.4176620543003082,-0.6046710014343262,0.0507947951555252));
res += mul(Get(s2,0,0), float4x4(0.0903873294591904,0.1309011131525040,0.1795466244220734,-0.2351435124874115,0.4120639264583588,0.0223051179200411,0.0346162207424641,-0.4988458454608917,-0.0338744781911373,-0.1714628040790558,0.2424113899469376,-0.3564678132534027,0.0234562214463949,0.0075877886265516,-0.5191168785095215,0.0581632964313030));
res += mul(Get(s3,0,0), float4x4(-0.8935937881469727,0.1914660036563873,-0.1384009271860123,-0.2016205936670303,0.0660292357206345,0.2422051876783371,-0.0965832173824310,-0.2548534274101257,0.0301917716860771,-0.2503040432929993,-0.4022820293903351,0.2522712051868439,-0.0178954619914293,-0.2457147985696793,0.2714193463325500,0.0190249700099230));
res += mul(Get(s4,0,0), float4x4(0.1360153257846832,-0.2019335925579071,-0.1993685066699982,-0.5263839364051819,0.1168100833892822,0.0306855328381062,-0.3407622575759888,0.1438510864973068,0.1684443950653076,0.0544258803129196,-0.2275178730487823,-0.2471891343593597,0.0400683507323265,0.2657742202281952,0.1313217878341675,0.2828535437583923));
res += mul(Get(s5,0,0), float4x4(-0.1416312456130981,-0.7200642824172974,0.2140246629714966,-0.2662320435047150,0.1709903627634048,-0.1381139308214188,0.1556901633739471,-0.9176037311553955,0.2188580930233002,-0.5292116999626160,0.0255779903382063,0.0023151575587690,0.0033355178311467,0.4246535599231720,0.2296473830938339,-0.6101372838020325));
res += mul(Get(s0,0,dy), float4x4(0.0172021407634020,0.0606899634003639,-0.1240489780902863,-0.0712178125977516,-0.0594856776297092,-0.0655694380402565,0.0686189308762550,0.1222296655178070,0.0257708057761192,0.1352263689041138,0.1229634582996368,-0.5079093575477600,-0.0075859571807086,0.0534070916473866,0.2364507317543030,0.0299073923379183));
res += mul(Get(s1,0,dy), float4x4(0.0436028577387333,-0.1488053053617477,0.0510974489152431,0.0769260525703430,-0.0141689786687493,-0.0192551966756582,-0.0317051932215691,-0.0779574960470200,0.0357781946659088,0.0876361355185509,0.0368004217743874,-0.0342453047633171,0.0969815254211426,0.1894080340862274,-0.0265812166035175,0.3222240507602692));
res += mul(Get(s2,0,dy), float4x4(0.0220103003084660,0.0489806868135929,-0.0216146502643824,-0.0093078296631575,0.0528377927839756,-0.0702108964323997,-0.0517139881849289,0.1337093263864517,0.0230144727975130,0.2165093421936035,-0.0266689490526915,0.1376055926084518,0.0128022814169526,0.1611624211072922,0.1739628762006760,-0.2162557989358902));
res += mul(Get(s3,0,dy), float4x4(-0.0649325624108315,-0.0425957441329956,-0.1441826969385147,0.2548536062240601,0.0521597638726234,-0.1067839786410332,0.0581115633249283,0.1275120079517365,-0.0742271915078163,0.0678230747580528,-0.0656482279300690,-0.1326223909854889,-0.0108536286279559,-0.2316398322582245,0.1547697782516479,-0.2469636052846909));
res += mul(Get(s4,0,dy), float4x4(-0.0041317949071527,-0.0010683126747608,0.1823302507400513,0.0381797440350056,0.1656317114830017,-0.0647046640515327,-0.0138101540505886,0.1067157834768295,0.0397487580776215,-0.0193469189107418,-0.0330700911581516,0.1017601341009140,0.0150965787470341,0.0896529331803322,-0.0785231590270996,-0.2598736286163330));
res += mul(Get(s5,0,dy), float4x4(-0.0790962949395180,0.1794776618480682,-0.0487508364021778,-0.3958262801170349,-0.0308658480644226,0.0150283062830567,0.0174022335559130,-0.0921337381005287,-0.0933991670608521,-0.1220207288861275,0.0419420264661312,0.1037674918770790,0.1032150313258171,0.1909257471561432,-0.0780587345361710,0.2904930412769318));
res += mul(Get(s0,dx,-dy), float4x4(-0.0117908753454685,-0.0143412984907627,0.1357308328151703,-0.0260605923831463,0.0656761974096298,0.0563311353325844,0.0335828885436058,-0.1309825181961060,-0.0511125102639198,-0.1261439919471741,0.0044598584063351,0.1656108498573303,-0.0346629433333874,0.1446008533239365,0.0853185281157494,0.0590115934610367));
res += mul(Get(s1,dx,-dy), float4x4(-0.0249526202678680,-0.0686811134219170,0.0865747630596161,0.0142922913655639,-0.0678195133805275,-0.0628228336572647,0.0810972601175308,0.2210146784782410,-0.0576748326420784,0.0701701417565346,0.1713151782751083,-0.0286738555878401,-0.0135825211182237,-0.0341512560844421,0.0657333657145500,-0.2741489708423615));
res += mul(Get(s2,dx,-dy), float4x4(-0.0120955854654312,0.0459207184612751,-0.0798790976405144,0.0529638715088367,-0.0468175224959850,-0.3130819499492645,-0.0253493003547192,0.1324129998683929,0.0916245281696320,0.1797701865434647,-0.0739346742630005,0.2368232607841492,0.0024681070353836,0.0825732871890068,0.1222993358969688,0.0258615091443062));
res += mul(Get(s3,dx,-dy), float4x4(0.0297041758894920,-0.0327091775834560,-0.0913501679897308,-0.1451671570539474,-0.0433066487312317,0.0852094069123268,0.1143037080764771,0.3368331193923950,0.0064913854002953,-0.0515445470809937,-0.0705820918083191,-0.0257737860083580,0.0921112298965454,0.0148157635703683,-0.1116605624556541,0.0504959896206856));
res += mul(Get(s4,dx,-dy), float4x4(-0.0299767330288887,-0.1255061924457550,0.1219103187322617,0.0058030397631228,0.0403098016977310,0.0589288808405399,-0.1536637842655182,-0.0603493303060532,0.0810689702630043,0.0384680330753326,0.1360352635383606,-0.1555198282003403,0.0667498409748077,0.0188411250710487,-0.1508455127477646,0.1231201440095901));
res += mul(Get(s5,dx,-dy), float4x4(-0.0245211552828550,-0.0207484457641840,-0.1502103060483932,-0.1088521406054497,-0.0856992751359940,0.1363743543624878,-0.0755509510636330,0.0315371640026569,-0.1382672935724258,0.0568141154944897,-0.1468712538480759,-0.0358604490756989,-0.0016446814406663,0.0987147018313408,-0.1781491786241531,0.1042307913303375));
res += mul(Get(s0,dx,0), float4x4(0.1411776989698410,-0.0739966705441475,-0.0068563190288842,-0.1394528299570084,0.1029208004474640,0.0507994107902050,0.1615340262651443,0.1969194412231445,0.1148609444499016,-0.0016059783520177,0.2932624518871307,0.0579139925539494,0.1289031356573105,0.2097361385822296,0.0732184126973152,-0.1015693172812462));
res += mul(Get(s1,dx,0), float4x4(-0.1163247972726822,0.0409653149545193,-0.0379346385598183,0.0113194705918431,-0.0859718173742294,0.0481278151273727,0.0527817532420158,-0.0351044051349163,0.0856700986623764,-0.0747825205326080,0.0771174728870392,-0.0088229347020388,0.0176804009824991,0.0083862040191889,0.2358911037445068,0.0165964141488075));
res += mul(Get(s2,dx,0), float4x4(-0.0464437454938889,-0.1216307058930397,-0.2051484733819962,0.0445440262556076,-0.0120061924681067,-0.0406325869262218,-0.1349322497844696,0.1860359758138657,0.0401311740279198,-0.0078012323938310,0.0784154385328293,-0.2539222538471222,0.2197306454181671,0.2401646673679352,0.1579785943031311,-0.3735445439815521));
res += mul(Get(s3,dx,0), float4x4(-0.0162411238998175,0.0025179251097143,0.1649716943502426,0.1197238713502884,-0.1372245699167252,-0.1902361661195755,-0.0633010938763618,0.3305523097515106,0.0135559812188148,0.1581888645887375,0.0125238262116909,-0.2777915298938751,0.1010108366608620,-0.1111431568861008,-0.0320046544075012,-0.3420922458171844));
res += mul(Get(s4,dx,0), float4x4(-0.0155653329566121,0.2030882984399796,-0.1263033300638199,-0.0591737926006317,0.0752098932862282,0.0610545389354229,-0.0854568704962730,0.3780111372470856,0.1489856392145157,0.0819568336009979,0.2419306635856628,-0.2342418283224106,0.0550327263772488,-0.1577992886304855,0.2035722136497498,-0.1227354556322098));
res += mul(Get(s5,dx,0), float4x4(-0.1220671162009239,-0.2143227756023407,-0.2486076354980469,-0.0702173411846161,-0.1257619112730026,-0.0784263759851456,-0.3268838822841644,-0.1966919004917145,-0.1070062145590782,0.1879515945911407,-0.0418192073702812,-0.2184729874134064,-0.0365558043122292,0.2315982431173325,0.1729183942079544,-0.3526634871959686));
res += mul(Get(s0,dx,dy), float4x4(0.0049825427122414,-0.0155491754412651,-0.1060002297163010,0.0663786381483078,-0.0319009646773338,-0.1612326800823212,-0.1310585141181946,-0.1842272877693176,0.0371956415474415,0.0563353598117828,0.1614550650119781,0.1118082404136658,-0.1024611145257950,-0.0255113095045090,-0.0701834857463837,-0.0338691882789135));
res += mul(Get(s1,dx,dy), float4x4(-0.0105189373716712,0.0827006474137306,0.1011726185679436,-0.1200102567672729,0.0492897443473339,0.0566634088754654,0.1186929270625114,0.0399962589144707,-0.0554503872990608,-0.0079113868996501,-0.0220665968954563,-0.0454318337142467,-0.0833814442157745,-0.2695621550083160,0.2171178311109543,-0.0512266457080841));
res += mul(Get(s2,dx,dy), float4x4(-0.0171358156949282,-0.0528933480381966,0.0002441318647470,-0.1550328582525253,0.0308445636183023,-0.1135489195585251,0.0970688760280609,0.0552181713283062,0.0299639645963907,-0.0001559588126838,-0.1029095277190208,-0.1006840169429779,0.1067697554826736,0.0707038268446922,-0.0675446242094040,0.3226777911186218));
res += mul(Get(s3,dx,dy), float4x4(0.0373499430716038,0.0958494469523430,-0.0947395786643028,0.1105819642543793,0.0011919940588996,-0.0309329815208912,0.0780683755874634,-0.0239570345729589,-0.0003141069901176,0.0409336239099503,0.0399753563106060,0.2924851775169373,-0.0373548530042171,0.0361467972397804,-0.2934169769287109,0.0234660506248474));
res += mul(Get(s4,dx,dy), float4x4(0.0594540126621723,0.0735600143671036,0.0814296230673790,0.0431349016726017,0.0536605566740036,-0.0070556951686740,-0.2724064290523529,-0.0402363389730453,-0.0324757508933544,-0.0973341017961502,0.0013188563752919,0.2064052522182465,-0.0171626526862383,0.0425528734922409,-0.0282822828739882,-0.0637192130088806));
res += mul(Get(s5,dx,dy), float4x4(-0.0757648646831512,0.1828066557645798,-0.0047409231774509,0.0302352514117956,-0.0131695363670588,-0.0558473020792007,-0.0956746637821198,0.0324622243642807,0.0345512926578522,0.4332535862922668,-0.1916709393262863,0.1056905835866928,0.0161897055804729,-0.0713624507188797,-0.1774585247039795,-0.1132108643651009));
res = max(float4(0, 0, 0, 0), res) + float4(0.8802530765533447,0.1316327899694443,0.2452471852302551,0.0540339499711990) * min(float4(0, 0, 0, 0), res);
return res;
}