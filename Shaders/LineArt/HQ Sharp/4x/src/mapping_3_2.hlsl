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
float4 res = float4(0.023009309545159,-0.017200604081154,-0.172460243105888,0.132697612047195);
res += mul(Get(s0,-dx,-dy), float4x4(-0.244819253683090,-0.031967625021935,-0.027657188475132,-0.239363104104996,-0.240011051297188,0.051832329481840,-0.142155259847641,-0.024212991818786,-0.081380933523178,-0.003719874890521,-0.098085582256317,-0.132390648126602,-0.055444892495871,0.046467084437609,0.016499053686857,0.004015739541501));
res += mul(Get(s0,-dx,0), float4x4(-0.272596150636673,0.124068312346935,0.205821648240089,0.054143242537975,0.055138509720564,-0.109762892127037,-0.123526223003864,0.296092271804810,-0.146943777799606,-0.034969784319401,0.055454924702644,0.008559474721551,0.042065061628819,0.163013398647308,0.057332549244165,-0.148252889513969));
res += mul(Get(s0,-dx,dy), float4x4(0.001373492646962,0.082736045122147,-0.070082269608974,-0.053288809955120,-0.071675226092339,-0.007026517763734,-0.129774510860443,-0.127837568521500,-0.064066752791405,0.010557794943452,0.057287860661745,0.095419503748417,0.064177647233009,0.054046183824539,-0.236292228102684,0.116771332919598));
res += mul(Get(s0,0,-dy), float4x4(-0.298982977867126,0.206133291125298,0.151986867189407,0.081863336265087,-0.227426856756210,-0.305950015783310,-0.147670522332191,-0.048019293695688,-0.392044484615326,0.289473295211792,0.156337872147560,0.028164835646749,-0.112173333764076,0.099792174994946,0.024080080911517,-0.053519710898399));
res += mul(Get(s0,0,0), float4x4(-0.223219633102417,0.508780717849731,-0.093759037554264,0.122240610420704,0.111834906041622,-0.687738418579102,0.282606333494186,-0.232421740889549,0.044910822063684,-0.147658035159111,-0.122850716114044,-0.705916225910187,0.359993278980255,0.016750467941165,-0.250966072082520,-0.016378063708544));
res += mul(Get(s0,0,dy), float4x4(-0.026225764304399,0.104512982070446,0.070869997143745,-0.019813887774944,-0.012305783107877,-0.453894376754761,-0.134412318468094,0.085982076823711,-0.125883221626282,-0.024527132511139,-0.026242008432746,0.089414156973362,-0.092002496123314,-0.286624163389206,-0.021368544548750,0.109784699976444));
res += mul(Get(s0,dx,-dy), float4x4(-0.030440377071500,-0.234880685806274,0.095298111438751,-0.047501266002655,0.337528586387634,-0.128667160868645,0.071606844663620,0.056723311543465,0.208762809634209,-0.005212844349444,0.045853998512030,0.031055437400937,0.013997524045408,0.128178492188454,0.101308777928352,0.157828837633133));
res += mul(Get(s0,dx,0), float4x4(-0.031146397814155,-0.300692677497864,-0.007459240965545,-0.063212625682354,-0.196108326315880,0.224449291825294,-0.123166210949421,0.205707192420959,-0.225145071744919,0.110145971179008,-0.321077585220337,-0.039173968136311,-0.063651859760284,-0.153946980834007,-0.254570275545120,-0.134446725249290));
res += mul(Get(s0,dx,dy), float4x4(-0.055977493524551,-0.266903966665268,-0.152742341160774,0.023712798953056,-0.030021037906408,0.071616709232330,0.214806675910950,-0.058349438011646,0.021255765110254,0.239555925130844,0.160994037985802,-0.041481729596853,0.184561923146248,-0.194272816181183,0.163279160857201,0.036216419190168));
res += mul(Get(s1,-dx,-dy), float4x4(0.110755451023579,-0.049464568495750,-0.175420582294464,0.038288287818432,-0.059132385998964,0.078040927648544,0.023752374574542,-0.035203400999308,0.151950746774673,-0.178509965538979,0.262698829174042,0.230382189154625,0.024029180407524,0.053761430084705,-0.057475723326206,-0.180146902799606));
res += mul(Get(s1,-dx,0), float4x4(-0.151173561811447,0.061727158725262,-0.052526306360960,0.089449048042297,-0.088860787451267,0.014189030975103,0.010567539371550,-0.091667383909225,0.295566469430923,-0.175301983952522,-0.077651068568230,-0.092681817710400,-0.049233600497246,0.228374153375626,-0.096988841891289,-0.121181905269623));
res += mul(Get(s1,-dx,dy), float4x4(-0.094707556068897,0.067443981766701,0.075372658669949,-0.025973316282034,-0.136828660964966,0.034346032887697,-0.030867403373122,0.004992957226932,0.039911717176437,-0.164232492446899,0.045916344970465,-0.074774444103241,-0.215633824467659,0.154007792472839,-0.092970825731754,0.007527693174779));
res += mul(Get(s1,0,-dy), float4x4(0.217799350619316,-0.004889631643891,0.100835166871548,-0.040323168039322,0.080743968486786,-0.062519714236259,0.026284940540791,0.022978289052844,0.207153424620628,-0.016072722151875,-0.084187813103199,-0.009733761660755,-0.202416568994522,0.049710888415575,0.067752853035927,0.061533167958260));
res += mul(Get(s1,0,0), float4x4(-0.111999832093716,-0.201438143849373,-0.068023726344109,-0.037856575101614,0.132053598761559,0.074615918099880,0.075461640954018,-0.065317668020725,-0.271823942661285,0.190976768732071,0.008960048668087,-0.259744256734848,-0.166351854801178,-0.283053457736969,-0.240061461925507,-0.033457871526480));
res += mul(Get(s1,0,dy), float4x4(0.043115839362144,-0.160653278231621,0.056034315377474,0.062470603734255,-0.022743836045265,-0.042396742850542,0.098093666136265,-0.034940548241138,-0.017229236662388,0.192191183567047,-0.089021675288677,-0.060897767543793,-0.217757090926170,0.271084785461426,0.121171377599239,0.029925564303994));
res += mul(Get(s1,dx,-dy), float4x4(0.008914965204895,0.008705968037248,0.037024203687906,-0.030983051285148,0.206648990511894,-0.207705140113831,-0.096856474876404,-0.066105425357819,0.045716490596533,0.010298864915967,0.075091592967510,0.014155120588839,0.500648975372314,-0.387739062309265,0.146608874201775,0.056711230427027));
res += mul(Get(s1,dx,0), float4x4(0.037805035710335,0.049130748957396,-0.163110479712486,-0.045570541173220,-0.336977839469910,-0.314465701580048,0.119318433105946,-0.055858675390482,-0.158871978521347,-0.046958155930042,-0.057496905326843,0.110108941793442,-0.257343232631683,0.113153398036957,0.083552822470665,0.080797538161278));
res += mul(Get(s1,dx,dy), float4x4(0.073471374809742,-0.013676740229130,0.026012681424618,-0.017077719792724,-0.183276668190956,-0.022955702617764,0.210992678999901,-0.063997417688370,-0.001173277734779,0.027917794883251,0.017603797838092,0.137029096484184,-0.141949355602264,0.016896512359381,0.136606425046921,-0.019274223595858));
res += mul(Get(s2,-dx,-dy), float4x4(0.056556660681963,0.062202624976635,0.018900202587247,-0.043077893555164,-0.084661073982716,-0.257613271474838,-0.219696879386902,-0.263103872537613,-0.212570235133171,0.000637990364339,0.097962200641632,0.036165058612823,0.096037842333317,-0.114279806613922,-0.148897945880890,-0.074990004301071));
res += mul(Get(s2,-dx,0), float4x4(-0.012086316011846,-0.096447847783566,-0.087179437279701,-0.179612532258034,-0.051643729209900,-0.353617280721664,-0.244853258132935,-0.331219196319580,0.076315768063068,-0.094883956015110,-0.002443958539516,0.235862076282501,-0.012876438908279,-0.093273729085922,0.020641725510359,-0.069586515426636));
res += mul(Get(s2,-dx,dy), float4x4(-0.025592595338821,-0.082655869424343,0.019380336627364,-0.081601954996586,-0.023192185908556,-0.201213359832764,0.008924656547606,0.129512622952461,0.007100314367563,0.014758978039026,-0.102412529289722,0.086490586400032,-0.052405625581741,0.093482166528702,0.087583787739277,0.057668820023537));
res += mul(Get(s2,0,-dy), float4x4(0.259319603443146,0.019638003781438,-0.021374894306064,0.169031322002411,-0.003946572076529,0.249637588858604,0.050083506852388,-0.012007942423224,0.143106147646904,-0.036522574722767,-0.010201948694885,-0.040665052831173,0.248220384120941,0.142706945538521,-0.129442960023880,0.058115202933550));
res += mul(Get(s2,0,0), float4x4(-0.043731492012739,0.040737539529800,0.000157719390700,0.157527118921280,-0.258885890245438,0.225651621818542,-0.047441978007555,0.167320936918259,-0.015830498188734,-0.137614667415619,-0.194275006651878,-0.249158024787903,0.095945753157139,0.098671704530716,-0.003543928731233,0.029666727408767));
res += mul(Get(s2,0,dy), float4x4(-0.010812884196639,0.027395855635405,-0.020151309669018,0.067053347826004,0.037412002682686,-0.022474631667137,0.151237860321999,-0.031084693968296,-0.069380208849907,0.188919380307198,-0.033643495291471,0.059451218694448,-0.221612244844437,0.004933639429510,0.026494016870856,0.078693397343159));
res += mul(Get(s2,dx,-dy), float4x4(0.077269487082958,-0.061772257089615,-0.033670365810394,0.027198199182749,0.092069864273071,0.206518769264221,-0.047177270054817,0.013623620383441,-0.142946109175682,0.079125761985779,-0.107662267982960,0.089835844933987,0.038080282509327,0.106679834425449,-0.008705426938832,-0.022797718644142));
res += mul(Get(s2,dx,0), float4x4(0.069323331117630,-0.137895196676254,0.096876598894596,0.030120775103569,0.096746966242790,0.039123017340899,-0.085532493889332,0.064232014119625,0.207139402627945,0.125107660889626,-0.125589892268181,0.002130923792720,0.026695149019361,0.129214808344841,-0.186956644058228,-0.051296535879374));
res += mul(Get(s2,dx,dy), float4x4(-0.049632515758276,-0.024777082726359,-0.048463027924299,-0.002787861274555,-0.040687382221222,-0.082656875252724,0.024900248274207,0.029207896441221,-0.047167528420687,0.091927878558636,0.048673983663321,-0.111482985317707,0.012606947682798,0.024708371609449,0.179741233587265,0.031809166073799));
res += mul(Get(s3,-dx,-dy), float4x4(0.040946595370770,-0.027307698503137,-0.066419631242752,0.037551820278168,0.025357177481055,-0.015362044796348,0.001337126363069,0.004406093154103,0.114840708673000,0.145832955837250,0.229844391345978,-0.101051367819309,0.002435972448438,-0.109835632145405,-0.290857017040253,-0.030589614063501));
res += mul(Get(s3,-dx,0), float4x4(-0.020207883790135,0.017004791647196,0.051506254822016,0.027979977428913,0.050197202712297,0.050216145813465,0.100685767829418,-0.015038402751088,-0.044501539319754,0.102313511073589,-0.065614476799965,-0.456817865371704,-0.040233463048935,0.029916428029537,-0.061808660626411,-0.028596045449376));
res += mul(Get(s3,-dx,dy), float4x4(0.036566380411386,0.089620910584927,0.050470419228077,0.079502180218697,0.038929149508476,-0.035704400390387,0.042503420263529,0.010099112987518,-0.128079563379288,0.025491861626506,0.008831153623760,0.080585017800331,-0.171618014574051,0.164025366306305,-0.221988201141357,-0.088861182332039));
res += mul(Get(s3,0,-dy), float4x4(0.081877470016479,-0.044055961072445,-0.053183879703283,0.144825354218483,-0.227039679884911,0.299928694963455,0.127632498741150,-0.140957683324814,0.431980013847351,-0.124184861779213,-0.041646804660559,0.164061769843102,-0.259629786014557,0.015929803252220,-0.005635515321046,0.022584112361073));
res += mul(Get(s3,0,0), float4x4(-0.052985951304436,-0.004940127022564,0.105991527438164,0.220370471477509,0.067009121179581,0.252915382385254,0.033937115222216,-0.136175975203514,0.071951918303967,-0.076589733362198,-0.270567625761032,-0.138848990201950,0.197880849242210,0.080969311296940,-0.065273702144623,-0.079062402248383));
res += mul(Get(s3,0,dy), float4x4(-0.113245896995068,0.004538317210972,-0.009950607083738,0.173238620162010,-0.033695381134748,0.040980998426676,-0.015313553623855,-0.001146400813013,0.055854137986898,-0.046315770596266,0.217315196990967,0.017465038225055,-0.056125383824110,0.074461095035076,0.110834471881390,-0.017510108649731));
res += mul(Get(s3,dx,-dy), float4x4(-0.082355648279190,-0.244088098406792,0.064777746796608,-0.147969022393227,-0.288559675216675,-0.845576226711273,0.053041297942400,0.068507991731167,-0.123704753816128,0.111664757132530,0.055745482444763,-0.032433882355690,0.002191304694861,-0.006021107081324,-0.378580003976822,0.126387834548950));
res += mul(Get(s3,dx,0), float4x4(0.104284338653088,-0.178358525037766,0.204920962452888,0.017638552933931,-0.174262955784798,-0.504467785358429,-0.279043078422546,0.085479363799095,-0.093786530196667,0.101821824908257,-0.143882185220718,-0.039968825876713,-0.049461256712675,-0.288755953311920,-0.466843813657761,0.083544060587883));
res += mul(Get(s3,dx,dy), float4x4(-0.103863805532455,-0.150883525609970,-0.051758036017418,-0.016764393076301,0.016931762918830,-0.088246017694473,0.021505096927285,-0.024433834478259,0.069476917386055,0.073838420212269,0.230977803468704,0.014205835759640,-0.129601716995239,-0.467639148235321,0.340641170740128,0.007541351951659));
res += mul(Get(s4,-dx,-dy), float4x4(0.048932578414679,0.103021055459976,0.066468507051468,-0.064577154815197,-0.161736667156219,-0.271688401699066,-0.095638096332550,-0.024781260639429,0.033438488841057,0.069847449660301,0.072243027389050,0.028188709169626,0.100348219275475,0.021099358797073,0.047280512750149,-0.029212919995189));
res += mul(Get(s4,-dx,0), float4x4(-0.088840700685978,-0.117954507470131,0.060425672680140,-0.000852574245073,0.125225380063057,-0.091536022722721,-0.021512234583497,0.009664064273238,0.112038455903530,0.081871688365936,-0.040334977209568,-0.227952212095261,-0.102856367826462,0.280363321304321,0.059733353555202,0.031714387238026));
res += mul(Get(s4,-dx,dy), float4x4(-0.050639901310205,0.051808759570122,-0.018268596380949,-0.042786136269569,-0.109003067016602,-0.016265990212560,-0.096793957054615,0.101336367428303,0.114987537264824,0.256027489900589,-0.006513571366668,-0.067053452134132,0.145499885082245,0.093466013669968,-0.034706115722656,0.040850926190615));
res += mul(Get(s4,0,-dy), float4x4(0.181354090571404,-0.297527730464935,0.015574028715491,0.000035214634408,-0.141122937202454,-0.083148397505283,0.048772875219584,-0.046105150133371,0.021935855969787,-0.111094325780869,0.026258608326316,0.049376729875803,0.193356856703758,-0.016676709055901,0.051991440355778,-0.073927581310272));
res += mul(Get(s4,0,0), float4x4(0.147555440664291,0.365549653768539,0.082940571010113,0.146224915981293,0.194560289382935,0.105620488524437,0.012241674587131,-0.149161234498024,-0.651089668273926,0.110223114490509,-0.204691872000694,-0.063896805047989,0.161660820245743,0.024192765355110,-0.100815795361996,-0.249485656619072));
res += mul(Get(s4,0,dy), float4x4(-0.153628945350647,0.038533885031939,-0.008628831245005,-0.052375864237547,-0.062864132225513,0.124908745288849,-0.138477757573128,-0.040023807436228,-0.060374077409506,0.351200997829437,0.295167177915573,-0.162696152925491,-0.174672245979309,-0.034164305776358,-0.144516244530678,0.060262292623520));
res += mul(Get(s4,dx,-dy), float4x4(-0.321695595979691,0.031216342002153,0.035568095743656,0.030875355005264,0.008838161826134,-0.085313923656940,0.334557592868805,0.005021952092648,0.241251617670059,-0.078173354268074,0.055529844015837,0.076536461710930,-0.175508722662926,0.241514801979065,-0.071072667837143,0.126488566398621));
res += mul(Get(s4,dx,0), float4x4(0.126650154590607,-0.365869164466858,0.332558929920197,0.007019846700132,-0.183158800005913,-0.123650394380093,-0.117890030145645,0.010334173217416,-0.182038247585297,-0.061214383691549,0.162710934877396,-0.010185610502958,0.070867605507374,0.004551813472062,-0.036026380956173,0.041592132300138));
res += mul(Get(s4,dx,dy), float4x4(-0.140583619475365,-0.163757994771004,0.186336025595665,-0.039508018642664,0.029002631083131,0.047845944762230,0.079166121780872,-0.086693435907364,-0.022140376269817,0.056641053408384,-0.377242833375931,0.083983078598976,-0.151027053594589,0.444813251495361,0.061343513429165,-0.010476391762495));
res += mul(Get(s5,-dx,-dy), float4x4(-0.355471789836884,-0.069095239043236,0.178752616047859,-0.110844962298870,0.101258508861065,0.264165520668030,-0.019988099113107,0.020015731453896,0.224902033805847,-0.053505271673203,-0.138711199164391,-0.266317665576935,0.018779311329126,0.027628432959318,-0.189165711402893,-0.057978060096502));
res += mul(Get(s5,-dx,0), float4x4(0.116903476417065,0.120457701385021,-0.044077366590500,-0.193242371082306,-0.060559093952179,-0.011545315384865,0.034335575997829,-0.193344354629517,0.049424801021814,0.029642447829247,-0.045706901699305,0.201410725712776,-0.168124392628670,0.235140383243561,0.024584062397480,0.004916928708553));
res += mul(Get(s5,-dx,dy), float4x4(0.013952128589153,0.020050533115864,-0.104006648063660,0.071723759174347,-0.023253785446286,0.036268044263124,-0.011200900189579,0.143870636820793,0.098356209695339,-0.076016061007977,0.029383486136794,-0.061981633305550,0.101204387843609,0.115122132003307,-0.042538303881884,-0.112470805644989));
res += mul(Get(s5,0,-dy), float4x4(-0.308285623788834,0.071136146783829,0.351129114627838,-0.015723273158073,-0.040882382541895,0.058625526726246,-0.030278371647000,-0.034339405596256,-0.090879276394844,-0.154216855764389,-0.215495079755783,0.417677342891693,0.090860851109028,0.203427016735077,-0.114489160478115,0.040686335414648));
res += mul(Get(s5,0,0), float4x4(0.221029803156853,0.335975944995880,0.105790719389915,0.082272417843342,-0.288943976163864,-0.136120274662971,0.117680333554745,0.118571504950523,-0.187665194272995,0.036663085222244,0.122705377638340,0.001049059093930,0.219455182552338,-0.167629271745682,-0.111764393746853,0.118024945259094));
res += mul(Get(s5,0,dy), float4x4(-0.050064794719219,-0.131926596164703,0.166811391711235,0.007278854493052,0.173146694898605,0.009665306657553,-0.246012315154076,-0.039239495992661,0.082876272499561,-0.088338769972324,-0.019295236095786,0.050051588565111,-0.072440385818481,-0.106733940541744,-0.057415280491114,0.091569170355797));
res += mul(Get(s5,dx,-dy), float4x4(0.117135733366013,-0.123339466750622,0.194358095526695,0.012339466251433,-0.135603323578835,0.150494381785393,0.028120178729296,-0.064789943397045,0.096145823597908,-0.048886235803366,0.090279355645180,-0.154821813106537,0.067649312317371,-0.003112337784842,0.235106080770493,-0.029793517664075));
res += mul(Get(s5,dx,0), float4x4(-0.022257091477513,-0.020093869417906,-0.338395357131958,0.094787009060383,0.000733919267077,-0.316420584917068,0.213748037815094,-0.064360097050667,0.100023522973061,-0.152463570237160,-0.004391854163259,-0.027966734021902,0.206550732254982,0.070920184254646,0.094607397913933,-0.066550008952618));
res += mul(Get(s5,dx,dy), float4x4(0.069874398410320,0.106198824942112,0.159307435154915,0.052250795066357,-0.121291123330593,-0.126649171113968,-0.063802115619183,-0.070302359759808,-0.050886154174805,-0.107639431953430,-0.123959206044674,0.011025844141841,-0.017142795026302,-0.102110072970390,0.099096827208996,0.025229552760720));
res = max(float4(0, 0, 0, 0), res) + float4(0.111228674650192,-0.061632636934519,0.138065397739410,-0.006022451911122) * min(float4(0, 0, 0, 0), res);
return res;
}