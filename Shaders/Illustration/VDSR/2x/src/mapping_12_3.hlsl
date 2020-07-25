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
res += mul(Get(s0,-dx,-dy), float4x4(0.074900001287460,0.117538832128048,0.018461320549250,-0.004606312606484,-0.008411007933319,-0.052315197885036,0.033129204064608,-0.140068650245667,0.076849497854710,0.088233701884747,0.086035944521427,-0.117756411433220,-0.050428483635187,-0.162179961800575,-0.042880285531282,-0.046980857849121));
res += mul(Get(s0,-dx,0), float4x4(0.032649677246809,-0.070780821144581,-0.053550511598587,-0.004795579705387,0.106505945324898,0.038350902497768,0.085209280252457,-0.126192659139633,-0.117797657847404,-0.083704456686974,0.082248397171497,-0.156641677021980,-0.038869611918926,0.018886247649789,0.017219820991158,-0.090797327458858));
res += mul(Get(s0,-dx,dy), float4x4(0.202183544635773,-0.111912637948990,-0.104783222079277,0.027326414361596,-0.098932966589928,0.041719123721123,-0.026514878496528,0.133670359849930,-0.085452847182751,-0.068896383047104,0.046335041522980,-0.058186981827021,-0.053904723376036,-0.025851232931018,0.003488091286272,0.027283225208521));
res += mul(Get(s0,0,-dy), float4x4(0.020033420994878,-0.085981510579586,0.038517456501722,0.118331640958786,0.055799540132284,-0.038914300501347,0.051646366715431,0.058331284672022,0.179261580109596,0.044637534767389,-0.032659150660038,-0.068489924073219,0.104945607483387,-0.078680232167244,0.012753547169268,-0.052767038345337));
res += mul(Get(s0,0,0), float4x4(-0.041274476796389,0.041893947869539,-0.136584147810936,0.110981009900570,-0.034487050026655,-0.105675131082535,0.039709802716970,0.023483080789447,0.284875541925430,-0.149594202637672,0.139040976762772,-0.127403378486633,-0.101741649210453,0.022006398066878,0.021497623994946,0.115600809454918));
res += mul(Get(s0,0,dy), float4x4(0.032990194857121,-0.060647778213024,-0.171923309564590,0.060384500771761,-0.048482969403267,-0.073239676654339,0.199340716004372,0.068405933678150,-0.042081031948328,-0.097474694252014,0.000175529770786,0.159633561968803,-0.099650673568249,0.002139979274943,-0.103356339037418,0.070130944252014));
res += mul(Get(s0,dx,-dy), float4x4(0.008707371540368,0.126969784498215,0.075104370713234,-0.023057520389557,0.001517592812888,0.105042159557343,0.079026244580746,0.003997313324362,-0.080866090953350,-0.037513423711061,-0.116785570979118,-0.020040478557348,0.078374728560448,0.052921567112207,0.034068420529366,0.068879887461662));
res += mul(Get(s0,dx,0), float4x4(0.023109925910830,-0.060609929263592,-0.079610608518124,0.039154417812824,0.023389786481857,0.029777547344565,-0.025164114311337,-0.126162141561508,0.047008946537971,0.025429120287299,-0.175198733806610,-0.048660285770893,0.019809260964394,-0.033707082271576,-0.006850958801806,0.001028829137795));
res += mul(Get(s0,dx,dy), float4x4(0.027650952339172,0.053714975714684,0.053010702133179,0.021999882534146,-0.122317597270012,-0.072975382208824,-0.044112339615822,-0.084635056555271,-0.037312351167202,-0.105884976685047,0.047362782061100,0.035636104643345,0.076530501246452,-0.182894885540009,0.015830876305699,0.114950679242611));
res += mul(Get(s1,-dx,-dy), float4x4(0.097154125571251,0.148308798670769,0.158250853419304,-0.027601253241301,0.071606867015362,-0.135918706655502,0.035217788070440,0.045729760080576,-0.061379499733448,-0.145854130387306,-0.121410645544529,-0.003715706523508,0.065940275788307,-0.042776741087437,0.096831992268562,-0.005864083766937));
res += mul(Get(s1,-dx,0), float4x4(0.059212628751993,-0.137319609522820,0.011965814977884,-0.037404395639896,0.089142620563507,-0.076662182807922,0.120356425642967,-0.138846457004547,0.035426177084446,0.131387859582901,0.066102147102356,-0.093883216381073,-0.202451795339584,0.103655882179737,-0.001415380625986,0.039629198610783));
res += mul(Get(s1,-dx,dy), float4x4(0.046514581888914,-0.004782127216458,-0.079086750745773,0.140981554985046,-0.025494847446680,-0.005759321618825,0.003884306177497,-0.041254080832005,0.010221382603049,0.046010743826628,0.057564765214920,0.093071460723877,0.166569471359253,0.026641977950931,0.035402618348598,-0.080923460423946));
res += mul(Get(s1,0,-dy), float4x4(0.078655853867531,-0.027511987835169,0.003113882616162,0.028448875993490,-0.095400184392929,0.117118373513222,-0.014476670883596,0.143296658992767,0.217153161764145,-0.005967805162072,-0.011945691891015,-0.043793383985758,0.032600987702608,-0.149565115571022,0.003242268459871,-0.045569892972708));
res += mul(Get(s1,0,0), float4x4(0.111287057399750,0.045357290655375,-0.079292058944702,-0.095389373600483,-0.133439704775810,0.090688072144985,0.041477680206299,-0.046693623065948,0.135128006339073,-0.057628124952316,0.107715025544167,-0.164420574903488,0.075894027948380,0.146386444568634,0.173765987157822,0.074835076928139));
res += mul(Get(s1,0,dy), float4x4(0.129868000745773,-0.044340979307890,0.065298348665237,0.057816419750452,0.047931000590324,-0.098686128854752,0.091197676956654,0.113077841699123,0.045494839549065,-0.049753893166780,-0.056930471211672,-0.019980365410447,0.064608596265316,-0.100564867258072,0.068684019148350,0.071119002997875));
res += mul(Get(s1,dx,-dy), float4x4(-0.164679393172264,-0.052209448069334,0.029570981860161,0.064948201179504,-0.150276869535446,0.048599179834127,-0.045103468000889,0.012349892407656,0.079150736331940,0.005382452625781,-0.031706038862467,0.207084700465202,-0.037396077066660,-0.088084556162357,-0.002898206235841,0.013901270925999));
res += mul(Get(s1,dx,0), float4x4(-0.006448913365602,0.024295467883348,-0.155252709984779,0.034451492130756,0.032617814838886,0.058969456702471,-0.149400472640991,-0.047022014856339,-0.087273016571999,-0.117616541683674,-0.023969523608685,0.130099579691887,-0.167557835578918,-0.021287161856890,0.157661870121956,-0.135508224368095));
res += mul(Get(s1,dx,dy), float4x4(-0.058020249009132,0.148418217897415,0.105936907231808,0.131353721022606,-0.059582378715277,-0.053112696856260,0.075138404965401,-0.013725154101849,-0.168411031365395,0.061293657869101,-0.072670787572861,-0.274081796407700,0.065701127052307,-0.094158098101616,-0.000246106646955,0.050076629966497));
res += mul(Get(s2,-dx,-dy), float4x4(-0.130786627531052,0.027167217805982,0.033301532268524,0.032034378498793,0.091327227652073,-0.132706433534622,0.048321057111025,-0.035960424691439,-0.002780960407108,-0.021854180842638,-0.165564849972725,0.035700604319572,0.032798405736685,-0.143442079424858,-0.035747103393078,0.117922112345695));
res += mul(Get(s2,-dx,0), float4x4(-0.056932821869850,-0.127022892236710,-0.025870798155665,0.169498845934868,0.007230026181787,0.083699122071266,-0.057719551026821,-0.058925949037075,0.076878771185875,-0.079361908137798,-0.150815427303314,-0.115773275494576,-0.092036113142967,-0.143708392977715,-0.127385556697845,-0.160166069865227));
res += mul(Get(s2,-dx,dy), float4x4(0.017549194395542,0.072674661874771,0.015023256652057,0.061765130609274,-0.113961137831211,0.164750620722771,-0.075547955930233,-0.139549463987350,-0.001180925173685,0.107368543744087,-0.082489036023617,-0.106287680566311,-0.112180046737194,0.164460524916649,0.107494197785854,-0.007315753027797));
res += mul(Get(s2,0,-dy), float4x4(-0.010564855299890,0.053259931504726,-0.085115082561970,-0.096007950603962,-0.034718148410320,0.171136841177940,-0.199635162949562,0.065754108130932,0.005549950525165,-0.083321489393711,-0.058943945914507,-0.063222683966160,0.136714041233063,0.003440862754360,-0.078333184123039,-0.051515959203243));
res += mul(Get(s2,0,0), float4x4(0.000978918047622,-0.063080817461014,0.122980982065201,0.068534731864929,0.030315518379211,0.049470823258162,0.052869733422995,-0.164040327072144,0.093447141349316,-0.127643525600433,-0.069913722574711,0.042528826743364,-0.057825192809105,-0.116163380444050,-0.013693007640541,-0.166408658027649));
res += mul(Get(s2,0,dy), float4x4(0.170384049415588,0.079325392842293,0.079514399170876,-0.003130900207907,-0.018135264515877,-0.042757358402014,-0.016540627926588,0.170059949159622,0.015345143154263,-0.056016944348812,-0.112961903214455,-0.008718137629330,-0.021816104650497,0.075882308185101,-0.192826688289642,-0.082823231816292));
res += mul(Get(s2,dx,-dy), float4x4(-0.008915496058762,0.135593980550766,0.071963742375374,-0.001043783035129,-0.034682542085648,-0.242057085037231,-0.040745809674263,-0.057276535779238,-0.137453079223633,0.085738815367222,-0.140112802386284,0.195474267005920,0.105336278676987,0.025257907807827,0.091221146285534,0.007966389879584));
res += mul(Get(s2,dx,0), float4x4(0.111943915486336,-0.077600017189980,0.057319756597281,0.010003606788814,-0.261706382036209,-0.023490708321333,0.048814818263054,-0.012208366766572,-0.302087098360062,0.057296317070723,0.148918509483337,-0.064107060432434,-0.054619647562504,-0.115192942321301,-0.028982155025005,0.158831715583801));
res += mul(Get(s2,dx,dy), float4x4(0.047798059880733,0.002136364812031,0.053133152425289,-0.003883491270244,0.069740377366543,0.067124061286449,0.296752184629440,-0.022258689627051,-0.070062763988972,-0.097023770213127,-0.068679042160511,-0.129037708044052,0.070725239813328,0.006990764755756,-0.007304995320737,-0.038925293833017));
res += mul(Get(s3,-dx,-dy), float4x4(0.072976544499397,-0.046394858509302,0.261977434158325,0.081301160156727,-0.035847350955009,-0.007059208583087,0.109248936176300,-0.067171990871429,-0.062751896679401,0.022373059764504,0.024454599246383,-0.048216678202152,0.187894880771637,0.040552292019129,-0.055791988968849,0.007375485729426));
res += mul(Get(s3,-dx,0), float4x4(0.033013861626387,0.033500947058201,-0.069004841148853,0.112933069467545,0.049249432981014,-0.176583856344223,0.000601847073995,0.113908514380455,0.047783762216568,-0.035894017666578,-0.135149419307709,0.093317143619061,0.093848869204521,0.079811736941338,0.005975431296974,-0.106770299375057));
res += mul(Get(s3,-dx,dy), float4x4(-0.051587957888842,0.241350010037422,0.206652730703354,0.089951284229755,-0.034789532423019,0.036773409694433,0.054637972265482,-0.116975821554661,0.050242036581039,-0.207377538084984,-0.063861578702927,0.032744880765676,-0.127358466386795,-0.028122283518314,0.143400698900223,-0.118199095129967));
res += mul(Get(s3,0,-dy), float4x4(0.216050490736961,0.069552920758724,-0.061941627413034,-0.125384300947189,-0.062703192234039,0.083439894020557,0.121953211724758,0.077789634466171,-0.086430884897709,-0.162066668272018,0.020603384822607,-0.012330984696746,0.126942977309227,0.020194133743644,-0.189893320202827,-0.280276805162430));
res += mul(Get(s3,0,0), float4x4(0.020629849284887,0.070136800408363,0.162601962685585,-0.014613289386034,0.026009436696768,-0.074144609272480,0.000226701333304,0.008026544936001,0.021972835063934,-0.160257980227470,-0.068248435854912,-0.035033345222473,0.045136444270611,0.001997864572331,-0.154248431324959,0.042299490422010));
res += mul(Get(s3,0,dy), float4x4(0.035110305994749,0.015293853357434,-0.072318293154240,-0.171442314982414,-0.049333747476339,-0.022639330476522,0.048758599907160,0.077347300946712,-0.143565744161606,0.010239065624774,0.162533476948738,-0.121739253401756,0.056439034640789,-0.089719995856285,-0.011835799552500,0.007454808335751));
res += mul(Get(s3,dx,-dy), float4x4(0.054355546832085,-0.057591576129198,0.173617288470268,0.054483473300934,0.105890989303589,0.017372246831656,0.000041482417146,0.125568255782127,0.141981989145279,0.090644039213657,0.043332718312740,0.067397214472294,0.141040250658989,-0.023348985239863,0.054197780787945,0.002654660493135));
res += mul(Get(s3,dx,0), float4x4(0.036575660109520,-0.082565039396286,-0.157505020499229,0.127335131168365,0.175474137067795,0.078399814665318,-0.120194643735886,0.407130956649780,-0.049776021391153,-0.098931469023228,-0.052703566849232,0.125941619277000,0.298984497785568,-0.005735059734434,-0.018025645986199,0.031136622652411));
res += mul(Get(s3,dx,dy), float4x4(-0.110959447920322,-0.166275501251221,0.091361746191978,-0.019382964819670,-0.058218564838171,-0.089867062866688,-0.115239903330803,0.054665777832270,0.009133834391832,-0.099997475743294,0.002493964741006,-0.129974931478500,0.256505191326141,0.113170251250267,0.050294917076826,-0.030904563143849));
return max(float4(0,0,0,0), res);
}