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
res += mul(Get(s0,-dx,-dy), float4x4(0.064880885183811,0.126139760017395,0.017036277800798,-0.008335144259036,-0.054878357797861,-0.064290553331375,0.026314998045564,0.001540833967738,0.035689257085323,0.205982297658920,0.030754670500755,-0.081630170345306,-0.061254326254129,0.071027494966984,0.055389206856489,-0.089883707463741));
res += mul(Get(s0,-dx,0), float4x4(-0.022751560434699,0.039438065141439,0.118982657790184,0.058152601122856,-0.014419171959162,-0.047576092183590,0.011372586712241,-0.054432868957520,-0.138225167989731,0.209978595376015,0.022310182452202,-0.026442287489772,-0.135093212127686,0.108210623264313,-0.030637657269835,-0.044446922838688));
res += mul(Get(s0,-dx,dy), float4x4(-0.048750985413790,-0.019122701138258,0.034118689596653,0.035376723855734,0.013264993205667,-0.030236255377531,0.106525599956512,0.050373420119286,-0.165009364485741,0.164158582687378,0.059519913047552,0.000521391921211,-0.005173675715923,0.114695288240910,-0.093529395759106,0.115920111536980));
res += mul(Get(s0,0,-dy), float4x4(-0.003830702509731,0.107626572251320,-0.024277603253722,0.019610393792391,-0.070761710405350,0.101129047572613,0.068158507347107,-0.032907634973526,-0.071680165827274,0.020002124831080,0.060897052288055,-0.147061690688133,0.057204566895962,0.086391165852547,0.064749881625175,-0.051289740949869));
res += mul(Get(s0,0,0), float4x4(0.025893406942487,0.092046983540058,0.084516584873199,0.034410897642374,-0.006888352334499,0.112258180975914,-0.027002070099115,-0.039077591150999,-0.053397394716740,-0.106386139988899,0.045601893216372,-0.067045480012894,-0.020235164090991,0.008091249503195,-0.019636003300548,-0.012908277101815));
res += mul(Get(s0,0,dy), float4x4(0.033872734755278,0.062571860849857,0.063295349478722,0.051477793604136,-0.066364936530590,0.114458218216896,-0.099811814725399,-0.061340082436800,-0.016985107213259,0.005663469433784,0.197079494595528,-0.013498768210411,0.074786700308323,0.133502840995789,0.013446078635752,0.129883527755737));
res += mul(Get(s0,dx,-dy), float4x4(0.052713409066200,0.102039366960526,0.056849189102650,-0.006213710643351,0.009508424438536,0.017093405127525,0.111809432506561,0.029688259586692,-0.141707703471184,0.052832465618849,0.068923667073250,-0.078189216554165,-0.047789178788662,-0.000667236512527,-0.075747773051262,-0.055390641093254));
res += mul(Get(s0,dx,0), float4x4(0.000768600380979,0.041273649781942,0.105665661394596,0.093557499349117,0.121565386652946,0.060311090201139,0.131629437208176,0.009191440418363,-0.041457965970039,0.100821115076542,-0.004024915397167,-0.065421514213085,-0.072225764393806,-0.020499221980572,-0.051166448742151,0.011748055927455));
res += mul(Get(s0,dx,dy), float4x4(-0.088688530027866,0.007947989739478,0.017491815611720,0.030790939927101,-0.019642839208245,-0.027467360720038,0.082580216228962,-0.045508146286011,-0.030248237773776,0.111004300415516,0.140326812863350,0.062735401093960,0.061194740235806,-0.041955403983593,-0.003586505306885,0.109619088470936));
res += mul(Get(s1,-dx,-dy), float4x4(0.067072115838528,-0.075782820582390,0.083786040544510,0.015000930055976,-0.040567133575678,-0.000278328603599,-0.047749526798725,-0.020917063578963,0.073023572564125,0.033945493400097,-0.089774899184704,-0.031775869429111,0.014201811514795,-0.078820273280144,-0.129663705825806,-0.043130118399858));
res += mul(Get(s1,-dx,0), float4x4(-0.005593366920948,-0.159495592117310,0.102467454969883,-0.085685804486275,-0.176627099514008,-0.098745055496693,-0.006839688867331,0.077686108648777,-0.018992761150002,-0.034344356507063,-0.079021520912647,-0.091744728386402,-0.149051427841187,-0.037668984383345,0.094991780817509,0.113278090953827));
res += mul(Get(s1,-dx,dy), float4x4(-0.072988629341125,-0.095309577882290,-0.001175436424091,0.049161307513714,-0.080428265035152,-0.054927144199610,0.017285620793700,0.031195987015963,-0.032032087445259,-0.005015930160880,-0.004574028775096,0.057494722306728,-0.142361477017403,-0.066302306950092,-0.060737304389477,-0.266775816679001));
res += mul(Get(s1,0,-dy), float4x4(-0.059884130954742,0.122037999331951,0.262119323015213,0.071652106940746,0.240218624472618,-0.032912567257881,0.079314649105072,0.041632335633039,0.020209966227412,0.002402349375188,0.027379710227251,-0.052708562463522,0.175182566046715,0.071342863142490,-0.024995123967528,-0.086178533732891));
res += mul(Get(s1,0,0), float4x4(0.008098473772407,0.056582141667604,-0.055134996771812,-0.000755929213483,0.115114167332649,-0.086064547300339,0.218263551592827,0.226826742291451,0.048480924218893,0.047598604112864,-0.026484278962016,-0.076660968363285,-0.148591503500938,-0.061454791575670,0.275015383958817,-0.041720420122147));
res += mul(Get(s1,0,dy), float4x4(-0.066389977931976,0.081744484603405,-0.136826023459435,-0.055063176900148,0.137972429394722,-0.042685959488153,0.104101359844208,0.056221749633551,0.059999905526638,0.080886393785477,0.025355786085129,-0.010789465159178,0.009772669523954,-0.142964527010918,0.050768673419952,-0.113987796008587));
res += mul(Get(s1,dx,-dy), float4x4(0.025217447429895,0.041544269770384,0.207433998584747,0.126317501068115,-0.019531421363354,0.108303539454937,-0.106226049363613,-0.028048517182469,0.044148109853268,-0.137224152684212,0.019006505608559,-0.117734640836716,-0.193783178925514,0.066742487251759,-0.081465266644955,-0.117290325462818));
res += mul(Get(s1,dx,0), float4x4(0.152283996343613,0.108157351613045,0.220563545823097,0.128497496247292,-0.017279785126448,0.004773674998432,0.063227765262127,0.002306974725798,0.103761956095695,-0.050312284380198,0.139743059873581,-0.089586533606052,-0.255254685878754,-0.091128818690777,0.074149720370770,-0.020297974348068));
res += mul(Get(s1,dx,dy), float4x4(0.093703679740429,0.010269461199641,-0.022523175925016,-0.074120342731476,-0.043637879192829,0.061395421624184,0.001399937900715,-0.075215823948383,0.156414315104485,0.026914678514004,0.160673752427101,0.066147111356258,-0.108782224357128,-0.021207595244050,0.002925893990323,-0.056284546852112));
res += mul(Get(s2,-dx,-dy), float4x4(-0.105562850832939,-0.053758967667818,-0.019426213577390,-0.109269231557846,-0.015926381573081,0.023505924269557,-0.004459212068468,0.099175617098808,-0.027750277891755,-0.018753860145807,0.010111453942955,0.000079964956967,0.014892448671162,-0.122242212295532,-0.021215997636318,0.034057296812534));
res += mul(Get(s2,-dx,0), float4x4(-0.022496255114675,0.023722602054477,-0.114912711083889,-0.049178183078766,-0.084101527929306,0.013453049585223,-0.070438422262669,-0.035557925701141,-0.083038896322250,-0.040606103837490,0.172268554568291,0.056016538292170,0.139533683657646,-0.184607982635498,0.017559956759214,-0.043812319636345));
res += mul(Get(s2,-dx,dy), float4x4(0.025163512676954,0.032790388911963,0.033866208046675,0.015822688117623,-0.028486538678408,0.044470071792603,-0.023712810128927,0.067383170127869,-0.032069321721792,-0.040881309658289,0.072068259119987,0.042954027652740,-0.042945299297571,-0.165610343217850,0.044618271291256,0.031010959297419));
res += mul(Get(s2,0,-dy), float4x4(0.116510085761547,0.202097326517105,0.060306593775749,0.043210215866566,0.054630368947983,0.088396832346916,0.202024117112160,0.056796867400408,-0.086581319570541,-0.083182483911514,0.164549589157104,-0.043134991079569,-0.055535960942507,-0.140436694025993,-0.057721138000488,0.061342876404524));
res += mul(Get(s2,0,0), float4x4(0.158013597130775,0.183223307132721,-0.202285706996918,-0.083973281085491,0.007517431396991,0.005965048447251,0.118924669921398,0.100438155233860,-0.122163683176041,-0.076529875397682,0.106074914336205,0.030818410217762,0.166601881384850,-0.007746176794171,-0.056951619684696,-0.042453069239855));
res += mul(Get(s2,0,dy), float4x4(0.006596884690225,0.154200628399849,0.136344924569130,-0.091233201324940,-0.012930196709931,-0.031582321971655,0.023423945531249,0.021873515099287,0.188755854964256,-0.064887374639511,0.074019625782967,-0.040128070861101,-0.074334450066090,-0.176259368658066,0.071354620158672,0.142433226108551));
res += mul(Get(s2,dx,-dy), float4x4(0.124980323016644,-0.142575427889824,0.218930140137672,0.084299162030220,-0.045122370123863,0.011296642944217,-0.017377870157361,0.007848632521927,-0.050853241235018,0.036262355744839,0.042941559106112,-0.003759290557355,-0.039575468748808,-0.127827599644661,0.026860833168030,0.035702027380466));
res += mul(Get(s2,dx,0), float4x4(0.216409236192703,-0.114041738212109,0.222418650984764,-0.023055700585246,-0.030120082199574,-0.053591590374708,0.225549072027206,0.186116054654121,-0.179733350872993,-0.059685733169317,-0.078940324485302,-0.006180447526276,0.158104777336121,-0.045379210263491,-0.009581942111254,0.012093023397028));
res += mul(Get(s2,dx,dy), float4x4(-0.048807725310326,-0.054565332829952,0.145160406827927,-0.114451766014099,0.025543497875333,-0.002858383581042,0.086096845567226,-0.043828349560499,0.003657600376755,-0.081089809536934,0.032243315130472,0.096839740872383,-0.027828637510538,-0.092788256704807,0.072730533778667,0.085784643888474));
res += mul(Get(s3,-dx,-dy), float4x4(0.049507826566696,-0.154407441616058,0.104723647236824,-0.105382755398750,0.163066819310188,0.095075644552708,0.066605150699615,-0.007930229417980,0.060345325618982,-0.032237261533737,0.079586379230022,0.194473221898079,0.067005001008511,0.011416732333601,-0.021273583173752,0.049009568989277));
res += mul(Get(s3,-dx,0), float4x4(0.163444355130196,-0.050422716885805,0.182931751012802,0.023555207997561,0.126392737030983,-0.028830166906118,0.231813013553619,0.208878159523010,-0.000654981471598,-0.025475077331066,0.027798371389508,0.008266923949122,-0.041426237672567,-0.023577380925417,-0.033267565071583,0.060312148183584));
res += mul(Get(s3,-dx,dy), float4x4(0.007785083260387,0.012727157212794,0.190997794270515,-0.009884383529425,0.064593046903610,0.006545746233314,0.047215633094311,0.033366501331329,0.036619380116463,0.030181851238012,-0.032632365822792,0.046555664390326,-0.001720479223877,0.061298355460167,-0.084958493709564,-0.081217013299465));
res += mul(Get(s3,0,-dy), float4x4(0.011627288535237,-0.233602061867714,-0.001824880600907,-0.144578158855438,0.186930343508720,-0.048599924892187,0.033333081752062,0.053978443145752,-0.084812261164188,-0.025620516389608,0.102646186947823,0.000786207907367,0.139378279447556,0.009246853180230,-0.151721835136414,0.034475646913052));
res += mul(Get(s3,0,0), float4x4(0.058846365660429,-0.252157062292099,0.099758699536324,-0.002338066697121,-0.152923062443733,-0.121950455009937,-0.019317016005516,0.041719254106283,-0.108935534954071,-0.022499162703753,-0.020935555920005,-0.043286669999361,0.239898532629013,0.061513513326645,-0.100663490593433,0.064214281737804));
res += mul(Get(s3,0,dy), float4x4(0.136922061443329,-0.003508421592414,0.173533394932747,-0.043076317757368,-0.074295759201050,-0.051457319408655,-0.014805586077273,-0.018406147137284,-0.112882182002068,0.081493087112904,-0.145229309797287,0.051690831780434,0.101620517671108,0.009282664395869,0.018547380343080,0.067174844443798));
res += mul(Get(s3,dx,-dy), float4x4(0.005878924392164,0.130380704998970,-0.037506483495235,-0.083316415548325,0.120601214468479,0.065122582018375,-0.083532571792603,-0.001905432203785,0.006869899109006,-0.077384822070599,0.014878477901220,0.041938286274672,-0.060184720903635,-0.110149040818214,-0.064023800194263,-0.083046093583107));
res += mul(Get(s3,dx,0), float4x4(0.039532568305731,0.041301716119051,-0.118892669677734,-0.065347328782082,-0.082307614386082,0.071883633732796,-0.141282364726067,0.027148313820362,0.130033493041992,-0.026813011616468,-0.063800826668739,0.120769836008549,0.038217708468437,-0.028231849893928,-0.000930611044168,0.079293921589851));
res += mul(Get(s3,dx,dy), float4x4(-0.019972018897533,0.229134783148766,-0.062552459537983,-0.007696513086557,-0.131309881806374,-0.013747848570347,-0.060454241931438,-0.018898846581578,0.068986900150776,-0.023581108078361,0.195185735821724,0.003526164917275,-0.010285434313118,-0.015454679727554,0.042058601975441,0.090113461017609));
return max(float4(0,0,0,0), res);
}
