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
float4 res = float4(0.160208299756050,-0.396047145128250,-0.118061043322086,0.049702927470207);
res += mul(Get(s0,-dx,-dy), float4x4(0.038444630801678,-0.040257327258587,-0.005397100932896,0.032636303454638,-0.089483901858330,0.004250356927514,-0.023179762065411,-0.007425185292959,-0.017744710668921,0.022972015663981,-0.029642261564732,0.085000827908516,0.006277990061790,-0.015235782600939,-0.029583817347884,-0.067148186266422));
res += mul(Get(s0,-dx,0), float4x4(0.117836333811283,-0.039958864450455,0.085979275405407,0.120062284171581,-0.069042950868607,0.085228532552719,0.028473291546106,-0.321936070919037,-0.125881716609001,0.038099016994238,-0.055895529687405,0.120250560343266,0.020126279443502,0.049419660121202,-0.051646705716848,-0.085212625563145));
res += mul(Get(s0,-dx,dy), float4x4(0.110434405505657,-0.014085934497416,0.012567916885018,-0.046113349497318,-0.022039690986276,0.035909850150347,-0.101220749318600,0.020073780789971,0.039770636707544,-0.019828272983432,-0.093758225440979,-0.016250245273113,-0.065619833767414,-0.003312920453027,0.024520011618733,-0.035630594938993));
res += mul(Get(s0,0,-dy), float4x4(-0.013917705975473,0.032954212278128,-0.057401485741138,-0.040036574006081,0.211321592330933,-0.020260650664568,-0.051582798361778,-0.097934558987617,-0.072732694447041,0.015550920739770,-0.053636562079191,0.086313761770725,-0.026538763195276,0.005198562052101,-0.008207021281123,-0.128671586513519));
res += mul(Get(s0,0,0), float4x4(0.037423450499773,0.143692851066589,0.041022989898920,-0.046912714838982,-0.073353044688702,-0.330273956060410,0.191022381186485,-0.001660528243519,-0.141806304454803,-0.010923937894404,-0.071489870548248,-0.070434600114822,-0.198029682040215,-0.035735379904509,0.055097833275795,0.316322386264801));
res += mul(Get(s0,0,dy), float4x4(-0.063384748995304,-0.060297142714262,-0.014589059166610,-0.039844896644354,-0.006215119268745,0.039255209267139,-0.108728900551796,0.255834996700287,0.023275442421436,0.026985900476575,-0.112924553453922,-0.123526141047478,-0.018319569528103,0.042156457901001,-0.085884086787701,0.145379230380058));
res += mul(Get(s0,dx,-dy), float4x4(-0.083464860916138,0.095509625971317,0.061751406639814,-0.050487961620092,-0.054574422538280,0.037763275206089,-0.096191272139549,0.034180372953415,0.030959744006395,-0.001930618425831,-0.021130863577127,-0.041302096098661,0.044965688139200,-0.020019982010126,-0.001126770512201,0.028789386153221));
res += mul(Get(s0,dx,0), float4x4(-0.137590304017067,0.003577525494620,-0.019021308049560,-0.023435350507498,-0.010126814246178,0.065006986260414,0.020217411220074,0.090716347098351,0.027850802987814,0.004791542422026,-0.088508911430836,-0.016097594052553,-0.232000574469566,-0.013166476041079,0.064959689974785,-0.122878089547157));
res += mul(Get(s0,dx,dy), float4x4(0.081823453307152,0.331866800785065,-0.130126848816872,-0.131886214017868,0.078929588198662,0.020585784688592,-0.044268108904362,-0.096110999584198,-0.030896047130227,-0.033953256905079,-0.108340516686440,0.036300674080849,-0.107732988893986,-0.002407363383099,-0.109851501882076,-0.036204766482115));
res += mul(Get(s1,-dx,-dy), float4x4(0.014766225591302,-0.003503424348310,0.017017900943756,0.045344378799200,-0.033678960055113,-0.046893101185560,-0.026592344045639,0.100330740213394,-0.097518041729927,-0.028951594606042,-0.077106729149818,0.093134365975857,0.037523336708546,0.088896699249744,-0.028794849291444,-0.039599232375622));
res += mul(Get(s1,-dx,0), float4x4(0.021673360839486,-0.083996027708054,0.008695644326508,0.066327139735222,0.001008249819279,0.029453361406922,0.118305921554565,0.003596289549023,-0.122511498630047,-0.012910514138639,-0.047381632030010,0.039471618831158,-0.052226338535547,0.020083256065845,0.028277238830924,0.036536436527967));
res += mul(Get(s1,-dx,dy), float4x4(-0.041934706270695,0.019244533032179,-0.009986424818635,-0.130391076207161,-0.002942607039586,-0.021615982055664,0.047594003379345,0.037062928080559,-0.034862063825130,-0.023983785882592,0.049378108233213,-0.039421640336514,0.100292541086674,0.094215787947178,-0.176833793520927,-0.139818683266640));
res += mul(Get(s1,0,-dy), float4x4(0.013418872840703,-0.003519189311191,0.137067466974258,-0.010758385993540,-0.355114310979843,0.010288542136550,-0.034247964620590,0.036684274673462,-0.069530509412289,0.024522567167878,-0.059080872684717,-0.014959095977247,-0.030353644862771,-0.045944515615702,0.000822770816740,-0.051027223467827));
res += mul(Get(s1,0,0), float4x4(-0.042275056242943,0.055565744638443,0.069080062210560,-0.099719680845737,-0.328551262617111,0.045173536986113,-0.020471503958106,-0.082154646515846,0.081973806023598,-0.066822759807110,0.063539154827595,0.080577559769154,0.112478405237198,0.129903301596642,-0.007401619572192,-0.356366664171219));
res += mul(Get(s1,0,dy), float4x4(0.129370197653770,-0.007564235944301,0.194318100810051,-0.141764685511589,-0.109830319881439,-0.052383780479431,0.102519400417805,-0.138544157147408,-0.108144842088223,-0.024891803041101,-0.085281141102314,0.018249766901135,0.032356590032578,-0.100918456912041,-0.090955913066864,-0.011900668963790));
res += mul(Get(s1,dx,-dy), float4x4(-0.011606400832534,-0.041415132582188,-0.000413687608670,0.127113074064255,-0.053361661732197,-0.031343948096037,0.046577606350183,-0.038414359092712,-0.073184236884117,-0.076858878135681,-0.002022987930104,0.073980763554573,-0.076125837862492,0.046847451478243,0.020299971103668,-0.136120662093163));
res += mul(Get(s1,dx,0), float4x4(0.040966928005219,0.008494268171489,-0.094727404415607,-0.079672999680042,-0.064475603401661,-0.174210906028748,-0.007391987834126,0.030506988987327,0.136640384793282,-0.014525801874697,0.059690032154322,-0.002056488301605,0.037104737013578,-0.048120457679033,0.009349795989692,0.092368796467781));
res += mul(Get(s1,dx,dy), float4x4(0.007522744126618,-0.052960455417633,-0.061167262494564,0.058342438191175,-0.074116021394730,-0.091810844838619,0.001072684768587,0.006602334789932,0.090956427156925,0.076286666095257,-0.077191062271595,-0.048351593315601,0.069466993212700,0.027539586648345,0.067060552537441,0.003667135257274));
res += mul(Get(s2,-dx,-dy), float4x4(0.028720242902637,-0.079049095511436,0.036588113754988,-0.061491776257753,-0.098500929772854,-0.044896297156811,-0.092697702348232,-0.016716774553061,0.074535101652145,0.094913601875305,-0.016143796965480,-0.043874397873878,0.021577248349786,-0.056009389460087,-0.042813926935196,-0.006866784300655));
res += mul(Get(s2,-dx,0), float4x4(0.054926272481680,-0.034611370414495,-0.125318735837936,-0.025528393685818,0.048857197165489,0.124647878110409,-0.040823943912983,0.030099989846349,0.113826371729374,0.010999553836882,0.014685790054500,0.050567992031574,0.025419704616070,-0.021005924791098,-0.008878331631422,-0.035880267620087));
res += mul(Get(s2,-dx,dy), float4x4(-0.096881970763206,-0.038142289966345,0.050380453467369,-0.045933015644550,0.027398603037000,0.046440564095974,0.008208908140659,0.075953237712383,0.111026450991631,0.057192221283913,-0.004181909374893,0.042768318206072,-0.054835241287947,-0.002244213363156,-0.047230150550604,-0.002526729367673));
res += mul(Get(s2,0,-dy), float4x4(0.151561453938484,0.020540136843920,0.057180315256119,-0.006166399922222,-0.060588814318180,0.235516414046288,0.048251371830702,0.031197337433696,-0.046580992639065,0.021419903263450,-0.023077655583620,0.043386083096266,0.010704949498177,0.024071365594864,-0.069556072354317,0.017278579995036));
res += mul(Get(s2,0,0), float4x4(-0.114477559924126,-0.010713350027800,-0.084659077227116,0.082205362617970,0.074900127947330,0.611803293228149,-0.112438857555389,0.101107716560364,-0.189248770475388,-0.067532606422901,0.069909632205963,-0.246609479188919,0.045179244130850,-0.021676642820239,-0.045455075800419,0.056583207100630));
res += mul(Get(s2,0,dy), float4x4(-0.056892111897469,-0.019361659884453,0.142991632223129,-0.029536418616772,0.061075285077095,0.214893102645874,-0.000320217688568,-0.063805803656578,-0.014311897568405,0.004764165729284,-0.113334432244301,-0.061146393418312,-0.046821776777506,-0.003135722596198,-0.000079214951256,0.090636923909187));
res += mul(Get(s2,dx,-dy), float4x4(-0.022164491936564,0.073875889182091,0.070777639746666,0.018467683345079,-0.011393854394555,0.016907978802919,0.085669852793217,0.030400412157178,-0.113289624452591,0.039597116410732,-0.087626636028290,-0.035930432379246,-0.007160105742514,-0.025426274165511,-0.080294243991375,0.016930595040321));
res += mul(Get(s2,dx,0), float4x4(-0.102169059216976,-0.021919000893831,0.022522948682308,-0.045366089791059,-0.025048648938537,0.199640765786171,-0.051284983754158,-0.073093771934509,0.009761013090611,0.021975180134177,0.074426449835300,-0.069179423153400,0.008482571691275,-0.026466244831681,-0.057834569364786,0.036126151680946));
res += mul(Get(s2,dx,dy), float4x4(-0.079997077584267,-0.049500882625580,0.043918516486883,0.153560131788254,-0.026183633133769,0.017008379101753,-0.034791350364685,-0.074825242161751,-0.063070788979530,-0.061087395995855,-0.108077883720398,0.258025288581848,-0.057165917009115,0.006545331329107,-0.037197299301624,0.091104067862034));
res += mul(Get(s3,-dx,-dy), float4x4(0.017872625961900,-0.064450502395630,-0.025947282090783,0.095784544944763,0.068809956312180,0.071164853870869,-0.055437371134758,0.108966648578644,-0.004946986213326,-0.069273099303246,0.005435926839709,-0.035938229411840,0.003632185980678,-0.003574853297323,0.064899116754532,-0.035045422613621));
res += mul(Get(s3,-dx,0), float4x4(-0.032593205571175,0.071558140218258,-0.032537136226892,-0.023848261684179,0.052124746143818,-0.016236873343587,0.047062810510397,-0.098780795931816,0.008018794469535,-0.000832647900097,0.004551293328404,0.045749440789223,0.002763700438663,-0.058831527829170,0.000929328554776,0.072931088507175));
res += mul(Get(s3,-dx,dy), float4x4(0.038948405534029,-0.070319652557373,-0.079709686338902,-0.003786814399064,0.059878718107939,0.087242588400841,-0.158044695854187,0.074007391929626,0.021442597731948,-0.067291885614395,0.011280475184321,-0.005601237062365,0.202573344111443,-0.060616686940193,0.134986177086830,0.008108635433018));
res += mul(Get(s3,0,-dy), float4x4(-0.169841051101685,0.004197167698294,-0.097878761589527,-0.061551380902529,0.027152899652719,-0.003151690820232,-0.065445579588413,0.009393149986863,-0.164989501237869,-0.065985776484013,-0.035144567489624,-0.035506099462509,-0.115294456481934,-0.017649039626122,0.078959934413433,-0.098349981009960));
res += mul(Get(s3,0,0), float4x4(-0.054880734533072,0.011080686002970,-0.017266459763050,-0.306886970996857,-0.137829467654228,-0.147180542349815,0.089341588318348,-0.006249785423279,-0.142963960766792,-0.023683952167630,-0.037601921707392,-0.181768953800201,-0.145375311374664,0.046170484274626,0.094107963144779,0.065401531755924));
res += mul(Get(s3,0,dy), float4x4(0.048942536115646,-0.042500633746386,0.109049148857594,0.026003085076809,-0.040682233870029,0.005821648519486,-0.169111490249634,-0.049931399524212,0.025525767356157,-0.084085419774055,-0.131052955985069,-0.133652150630951,0.172097310423851,-0.018749983981252,0.076212435960770,0.047915410250425));
res += mul(Get(s3,dx,-dy), float4x4(0.020240757614374,-0.033980920910835,0.041478499770164,0.093553692102432,0.064399227499962,-0.005820912308991,0.015289335511625,-0.014092292636633,0.059201084077358,-0.040840126574039,-0.007190526463091,-0.084655240178108,-0.011329003609717,-0.015067387372255,0.084600806236267,-0.041577238589525));
res += mul(Get(s3,dx,0), float4x4(0.016132673248649,-0.057056110352278,-0.117545537650585,0.004064423963428,-0.073925018310547,-0.080498211085796,-0.028601307421923,0.052531618624926,0.087034203112125,-0.132529556751251,0.073092095553875,-0.008299013599753,0.024776095524430,0.029552653431892,0.036722317337990,-0.002656720345840));
res += mul(Get(s3,dx,dy), float4x4(-0.046251419931650,-0.018333822488785,0.052207775413990,-0.008215145207942,-0.088584817945957,-0.023711308836937,-0.129433825612068,-0.090324632823467,-0.025356363505125,-0.057968385517597,-0.076406180858612,0.017492916435003,0.062817372381687,-0.046393245458603,0.070975162088871,0.030271364375949));
res += mul(Get(s4,-dx,-dy), float4x4(0.043159466236830,0.006123630795628,0.019052052870393,-0.020434847101569,0.045350626111031,0.123262017965317,0.101498514413834,-0.037020400166512,0.027020297944546,-0.003356059314683,-0.015453581698239,-0.053566928952932,-0.158338665962219,-0.003960567060858,-0.020163206383586,0.101301901042461));
res += mul(Get(s4,-dx,0), float4x4(-0.074521042406559,0.037309035658836,0.005730615463108,-0.015363177284598,-0.043537899851799,-0.058055236935616,0.040449034422636,-0.065958067774773,0.116306625306606,0.024974463507533,0.052073970437050,-0.011188944801688,0.038405664265156,0.010450243018568,0.022556876763701,0.018595274537802));
res += mul(Get(s4,-dx,dy), float4x4(-0.063038125634193,-0.070056639611721,-0.004781988449395,-0.018408944830298,-0.122653916478157,0.127203330397606,-0.072474651038647,0.022586857900023,-0.045864187180996,0.007823877036572,-0.008066509850323,0.097236610949039,0.091530799865723,-0.029160436242819,0.086229622364044,-0.044092856347561));
res += mul(Get(s4,0,-dy), float4x4(-0.078213758766651,0.065190017223358,0.021693099290133,-0.040329288691282,0.029424671083689,0.223822712898254,0.085817769169807,-0.070952035486698,-0.125473469495773,0.097244940698147,0.033236596733332,-0.151765897870064,-0.017250923439860,-0.009664055891335,-0.088181585073471,0.176913946866989));
res += mul(Get(s4,0,0), float4x4(-0.092188581824303,-0.040140222758055,-0.042912296950817,0.055386241525412,0.042711436748505,-0.220316991209984,0.073510773479939,0.046971909701824,0.063459426164627,-0.020826496183872,0.061844687908888,0.041518054902554,-0.080699987709522,0.186145275831223,0.014516807161272,-0.062559142708778));
res += mul(Get(s4,0,dy), float4x4(-0.009970370680094,0.083350598812103,-0.033956658095121,-0.009456344880164,-0.042169667780399,0.203573331236839,-0.138875573873520,0.037379942834377,0.091878198087215,0.157007187604904,0.033099364489317,0.038127355277538,0.033390890806913,0.022964764386415,0.190625220537186,0.066915214061737));
res += mul(Get(s4,dx,-dy), float4x4(-0.027232537046075,0.009557990357280,-0.064462676644325,-0.040272016078234,-0.048096425831318,0.067142650485039,-0.019916953518987,-0.027069045230746,0.005422856193036,0.001029334496707,-0.075252935290337,0.046694487333298,-0.017953854054213,-0.031244244426489,-0.006319852545857,-0.000505402975250));
res += mul(Get(s4,dx,0), float4x4(0.119848787784576,-0.027757177129388,0.036893140524626,-0.033696409314871,-0.039280924946070,-0.092111960053444,-0.108704708516598,0.032504834234715,-0.081300586462021,-0.036481328308582,-0.019408730790019,-0.194309845566750,0.073959313333035,0.064470529556274,0.182927906513214,-0.111163824796677));
res += mul(Get(s4,dx,dy), float4x4(-0.054255995899439,-0.041273795068264,-0.092533126473427,0.069282799959183,-0.073655933141708,0.020554115995765,-0.106482341885567,-0.117655716836452,-0.093220084905624,0.011096948757768,-0.021925682201982,0.023809464648366,-0.013055704534054,0.020023293793201,0.270024776458740,0.080718390643597));
res += mul(Get(s5,-dx,-dy), float4x4(-0.002211559796706,-0.002345979446545,-0.005206697154790,-0.009399754926562,0.152916252613068,-0.030583957210183,0.027237884700298,0.124023318290710,0.119530476629734,0.001916123786941,-0.110999658703804,0.075955994427204,-0.039053123444319,-0.017271246761084,0.036807179450989,0.013025331310928));
res += mul(Get(s5,-dx,0), float4x4(-0.003917099442333,-0.002087417291477,-0.003234177362174,-0.008339415304363,-0.079922467470169,0.007437541615218,-0.003532788949087,-0.062100403010845,-0.106675408780575,-0.086013220250607,0.226941227912903,-0.067717298865318,0.018347848206758,0.060926415026188,0.024738971143961,-0.012260387651622));
res += mul(Get(s5,-dx,dy), float4x4(-0.005943580996245,-0.002111643552780,0.001170620089397,-0.008233146741986,-0.028030088171363,-0.034310091286898,-0.026842277497053,-0.057940561324358,0.005912119057029,0.026045618578792,0.062594555318356,-0.041446320712566,-0.029610928148031,0.018498659133911,0.121658042073250,0.036088015884161));
res += mul(Get(s5,0,-dy), float4x4(0.002157716080546,-0.007027626503259,-0.004692730493844,-0.010814133100212,-0.021614134311676,0.246606692671776,-0.022015210241079,-0.023723036050797,-0.177580684423447,0.086566276848316,-0.162991479039192,-0.306418269872665,0.028109772130847,-0.054201751947403,-0.024714428931475,0.136588081717491));
res += mul(Get(s5,0,0), float4x4(0.000210226280615,-0.004870004486293,-0.002451051957905,-0.009332437999547,0.004818721208721,-0.029947783797979,0.102954700589180,0.013391531072557,-0.052924554795027,-0.076981671154499,0.280064702033997,0.037034228444099,-0.020659271627665,0.036520440131426,-0.030728548765182,0.091868855059147));
res += mul(Get(s5,0,dy), float4x4(-0.002684112871066,-0.003155833808705,0.002278782194480,-0.009550496935844,0.053450182080269,0.190631285309792,-0.122348457574844,0.051174201071262,-0.061349105089903,-0.008124748244882,0.250508159399033,0.074877336621284,-0.013444762676954,-0.069110803306103,0.129756420850754,-0.162873521447182));
res += mul(Get(s5,dx,-dy), float4x4(0.007834541611373,-0.010584593750536,-0.002647771267220,-0.012371188960969,-0.067447498440742,0.067593395709991,-0.050770640373230,-0.069640152156353,0.105882301926613,-0.043512415140867,-0.018399812281132,-0.096837677061558,-0.115964487195015,0.015906067565084,-0.004136708565056,0.150379478931427));
res += mul(Get(s5,dx,0), float4x4(0.008578812703490,-0.006024183705449,-0.003661548951641,-0.011227719485760,0.005483176093549,-0.098037324845791,0.071630544960499,-0.006395659409463,-0.037803288549185,-0.156667962670326,0.096817761659622,0.264797449111938,-0.003604000899941,0.047167725861073,0.065946213901043,-0.104815334081650));
res += mul(Get(s5,dx,dy), float4x4(0.004934773780406,-0.004185027442873,0.003432887140661,-0.011336073279381,0.066689893603325,-0.007679144386202,-0.023650320246816,-0.014289690181613,-0.010078966617584,0.008281526155770,0.034828029572964,-0.018428169190884,0.064945727586746,-0.006989053450525,-0.075618773698807,-0.001875844202004));
res = max(float4(0, 0, 0, 0), res) + float4(0.155812203884125,0.041948441416025,0.016010779887438,0.569836139678955) * min(float4(0, 0, 0, 0), res);
return res;
}