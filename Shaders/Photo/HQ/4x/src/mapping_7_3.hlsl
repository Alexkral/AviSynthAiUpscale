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
float4 res = float4(-0.118983253836632,-0.073991760611534,-0.079123511910439,-0.045328140258789);
res += mul(Get(s0,-dx,-dy), float4x4(-0.003115134779364,-0.042737197130919,-0.049275174736977,0.034199632704258,0.177037835121155,-0.013533079065382,0.139891266822815,-0.135726988315582,-0.027916802093387,-0.004867373500019,-0.140727788209915,0.119002819061279,0.105895586311817,-0.025449899956584,0.159725382924080,0.138284474611282));
res += mul(Get(s0,-dx,0), float4x4(-0.026105578988791,0.091318599879742,-0.132764115929604,-0.057788532227278,0.033157464116812,0.147694990038872,0.072018601000309,-0.060551643371582,0.079920575022697,-0.144241869449615,0.170570895075798,-0.161500200629234,-0.006237319204956,0.092781238257885,0.157696843147278,-0.120475441217422));
res += mul(Get(s0,-dx,dy), float4x4(-0.003196178702638,0.035036783665419,0.042509060353041,-0.013147166930139,0.043352995067835,0.006216547451913,0.078808695077896,-0.056565899401903,-0.019764715805650,0.003630879800767,0.126077413558960,-0.050708577036858,-0.020369678735733,-0.033614013344049,0.008108414709568,-0.035253673791885));
res += mul(Get(s0,0,-dy), float4x4(-0.072485536336899,-0.002730158856139,-0.005696332547814,0.026892788708210,0.028005709871650,0.062652699649334,-0.007758632302284,-0.090721689164639,0.191411852836609,-0.063741080462933,0.216477945446968,0.257364511489868,0.312472909688950,-0.192527011036873,0.123229235410690,0.183559700846672));
res += mul(Get(s0,0,0), float4x4(0.091033220291138,0.101732559502125,0.449273198843002,0.099725320935249,0.014688001014292,0.091181151568890,0.343209773302078,-0.122471936047077,-0.558759391307831,0.282440066337585,-0.216786757111549,0.008269176818430,0.148580253124237,-0.096194066107273,-0.235257536172867,-0.264354228973389));
res += mul(Get(s0,0,dy), float4x4(-0.020995035767555,-0.011747376993299,0.090519689023495,-0.049708656966686,0.140215009450912,-0.039850033819675,-0.002419081749395,0.071799173951149,-0.019462442025542,0.016133237630129,-0.304189741611481,-0.316736042499542,-0.072399497032166,0.004206488840282,0.107050590217113,0.202218532562256));
res += mul(Get(s0,dx,-dy), float4x4(0.082494400441647,-0.060664672404528,0.066910013556480,-0.135331988334656,-0.030372330918908,-0.035360921174288,-0.016793092712760,-0.186643525958061,0.200992166996002,-0.060478854924440,-0.056724507361650,-0.075106151401997,0.180612280964851,-0.125859439373016,0.148761093616486,-0.018735103309155));
res += mul(Get(s0,dx,0), float4x4(0.016381496563554,0.086066186428070,-0.174154907464981,0.056449558585882,-0.082729965448380,0.016565425321460,0.022186877205968,0.020353559404612,-0.303901553153992,0.001269783242606,-0.066597409546375,0.305926889181137,0.211295917630196,0.082651175558567,-0.035208322107792,-0.164013162255287));
res += mul(Get(s0,dx,dy), float4x4(0.036896664649248,-0.066717110574245,0.277502417564392,0.159444943070412,0.138066813349724,0.041587695479393,0.001722425338812,0.041810508817434,0.058765407651663,0.020986640825868,0.067732244729996,0.038891464471817,-0.088306576013565,-0.024364406242967,0.008219468407333,-0.003416602266952));
res += mul(Get(s1,-dx,-dy), float4x4(0.065560892224312,-0.019332079216838,0.259887665510178,-0.191033452749252,-0.129014611244202,-0.006267739925534,-0.213624686002731,0.017180152237415,0.042171008884907,-0.025836735963821,-0.088268831372261,0.114447362720966,-0.067363396286964,-0.013257494196296,-0.125545963644981,0.144567832350731));
res += mul(Get(s1,-dx,0), float4x4(-0.058608923107386,0.072674222290516,-0.146815389394760,0.057339660823345,0.015754424035549,-0.120466791093349,-0.039779357612133,-0.107053287327290,0.116941899061203,-0.108574956655502,0.138797253370285,-0.051643863320351,-0.036646172404289,-0.133290871977806,-0.237915024161339,0.155773997306824));
res += mul(Get(s1,-dx,dy), float4x4(0.051843509078026,-0.042117469012737,0.074832238256931,0.086555577814579,-0.084901809692383,-0.066550403833389,0.054916813969612,-0.071787647902966,-0.022882780060172,0.044717811048031,-0.069836050271988,-0.106785610318184,-0.002653475385159,-0.149063199758530,-0.131137624382973,-0.040385171771049));
res += mul(Get(s1,0,-dy), float4x4(-0.337075412273407,0.007026218343526,-0.117973163723946,-0.204590737819672,-0.036904547363520,0.019143437966704,-0.357573688030243,0.021001683548093,0.003874374087900,-0.091807425022125,0.140534490346909,0.135050043463707,0.191420182585716,-0.254399091005325,0.058459442108870,0.078267075121403));
res += mul(Get(s1,0,0), float4x4(0.019413063302636,0.020674141123891,0.001356945140287,-0.293946564197540,0.107452750205994,-0.079724013805389,0.205907925963402,0.250147044658661,-0.021820509806275,-0.012451700866222,-0.171265646815300,-0.078464902937412,-0.081490613520145,-0.155555084347725,-0.106510058045387,0.142032295465469));
res += mul(Get(s1,0,dy), float4x4(-0.059105791151524,0.049221757799387,0.004718421958387,-0.019600547850132,-0.056726895272732,-0.085208803415298,-0.140857309103012,-0.292117774486542,0.002467521466315,0.084475368261337,-0.018380632624030,0.023527901619673,-0.048197280615568,-0.135043472051620,0.032453041523695,0.077941119670868));
res += mul(Get(s1,dx,-dy), float4x4(-0.230704411864281,0.097912013530731,-0.027578419074416,0.210447341203690,-0.065238177776337,0.138194024562836,0.035453706979752,-0.007244023960084,0.072724945843220,-0.074377454817295,-0.017131224274635,0.020468600094318,0.039558339864016,-0.070971116423607,-0.080699369311333,-0.062338050454855));
res += mul(Get(s1,dx,0), float4x4(0.048108942806721,0.032229170203209,-0.023632902652025,-0.105494432151318,0.129160732030869,-0.041134171187878,-0.150327906012535,-0.011591622605920,0.116511575877666,0.127045020461082,0.050081949681044,0.181237593293190,-0.046262033283710,-0.250269830226898,-0.284321278333664,0.162235438823700));
res += mul(Get(s1,dx,dy), float4x4(-0.054428629577160,-0.033380128443241,0.030500851571560,-0.132653325796127,-0.054551802575588,-0.065496429800987,-0.006707097403705,-0.107396423816681,0.078517161309719,0.020827880129218,-0.162520915269852,-0.073374003171921,-0.137963384389877,-0.101802609860897,-0.184505879878998,0.096506200730801));
res += mul(Get(s2,-dx,-dy), float4x4(0.022598346695304,-0.038166988641024,0.050912436097860,0.053592413663864,-0.098734639585018,-0.074087575078011,-0.114495575428009,-0.208112418651581,0.085020847618580,-0.116340428590775,0.169546917080879,0.031434018164873,0.025629818439484,0.013249703682959,0.004792807623744,0.043195340782404));
res += mul(Get(s2,-dx,0), float4x4(-0.039944827556610,0.216766223311424,-0.187919184565544,0.113952197134495,-0.052657525986433,-0.066756993532181,-0.445202350616455,-0.390549600124359,0.060702621936798,-0.126111790537834,0.233787238597870,0.084744073450565,-0.192334473133087,0.113301366567612,0.076870679855347,0.024471301585436));
res += mul(Get(s2,-dx,dy), float4x4(0.092337734997272,0.057610306888819,-0.148372948169708,-0.003484470304102,-0.053586941212416,-0.035495210438967,0.011491240933537,-0.024608677253127,0.037573408335447,-0.013564146123827,0.120835572481155,0.065012179315090,-0.048600535839796,0.127883821725845,-0.069364927709103,0.208071872591972));
res += mul(Get(s2,0,-dy), float4x4(0.133781343698502,0.001415523700416,0.001758043188602,0.080721400678158,-0.056952804327011,-0.040985766798258,0.060573887079954,0.103383056819439,0.005187799222767,0.019843477755785,0.024952448904514,-0.226344078779221,0.012253531254828,0.026271926239133,-0.163177460432053,-0.056261140853167));
res += mul(Get(s2,0,0), float4x4(0.227780878543854,0.013692901469767,-0.061184033751488,-0.107142157852650,-0.055484000593424,0.033654931932688,0.223171219229698,0.084665156900883,0.020995985716581,-0.130322635173798,0.013155226595700,0.271049976348877,-0.152481615543365,-0.265009164810181,-0.073758170008659,0.175274580717087));
res += mul(Get(s2,0,dy), float4x4(0.044110875576735,-0.109458759427071,0.157156631350517,0.110311113297939,-0.049132380634546,0.044184379279613,0.077148571610451,-0.027220128104091,0.088248342275620,-0.006584636867046,-0.064630702137947,-0.133566036820412,0.072793960571289,0.054077602922916,-0.157225683331490,0.216618120670319));
res += mul(Get(s2,dx,-dy), float4x4(0.139252513647079,0.064771905541420,0.116625353693962,-0.111877515912056,-0.003231657203287,-0.103482529520988,-0.021990882232785,0.039834804832935,-0.085119441151619,-0.080045394599438,-0.075815267860889,-0.105582371354103,-0.015277601778507,-0.097979277372360,-0.058657694607973,0.023205127567053));
res += mul(Get(s2,dx,0), float4x4(-0.143817275762558,-0.005228964611888,-0.368158638477325,0.173954203724861,-0.048138231039047,0.026024663820863,-0.139497175812721,-0.000537167245056,0.008615680038929,0.064142376184464,-0.103330574929714,0.179806590080261,0.037328433245420,0.017101665958762,0.116955228149891,0.072255656123161));
res += mul(Get(s2,dx,dy), float4x4(0.034013811498880,0.044588249176741,0.074768140912056,0.015115489251912,0.003673555795103,0.065807715058327,-0.053043626248837,0.008135988377035,0.055156782269478,-0.018721099942923,-0.012315884232521,0.010791657492518,-0.013788169249892,0.067404963076115,-0.043667338788509,0.011730858124793));
res += mul(Get(s3,-dx,-dy), float4x4(0.070966020226479,-0.088131412863731,0.024477951228619,0.178441062569618,-0.031420249491930,0.005566783715039,-0.164668485522270,0.057357627898455,0.041549250483513,0.035058528184891,-0.012858438305557,0.023230072110891,-0.103276073932648,0.153964489698410,-0.122502140700817,-0.055862139910460));
res += mul(Get(s3,-dx,0), float4x4(-0.053060226142406,-0.138623297214508,0.012277048081160,0.087204031646252,-0.068763978779316,0.046320792287588,0.249420791864395,0.158787816762924,0.055484730750322,-0.005958252120763,0.203281819820404,0.009817271493375,0.066021509468555,0.092747949063778,0.096947364509106,-0.188322603702545));
res += mul(Get(s3,-dx,dy), float4x4(-0.064473912119865,0.089538209140301,0.010144735686481,-0.083562865853310,0.063192263245583,0.081716738641262,0.077593944966793,0.182931959629059,0.038358878344297,-0.037310939282179,0.017490882426500,0.074485629796982,-0.125556305050850,0.021494966000319,0.173749551177025,-0.033272158354521));
res += mul(Get(s3,0,-dy), float4x4(0.283137857913971,-0.111953318119049,-0.058402404189110,-0.015959320589900,0.031763121485710,0.011252530850470,0.055496975779533,0.235955506563187,0.110872857272625,0.002674294868484,0.010445905849338,-0.100837565958500,0.127157405018806,0.087069451808929,0.161003485321999,0.038953859359026));
res += mul(Get(s3,0,0), float4x4(0.063510760664940,0.142844274640083,0.205425307154655,0.140350237488747,-0.005191537085921,-0.274552881717682,0.039872951805592,-0.128218218684196,-0.259250283241272,0.034971833229065,-0.121415607631207,-0.138301327824593,0.065366901457310,0.259616047143936,0.036425814032555,-0.172329157590866));
res += mul(Get(s3,0,dy), float4x4(-0.115710139274597,-0.082709476351738,-0.119885422289371,-0.051353462040424,-0.001186657347716,0.084366336464882,-0.070207893848419,-0.163336277008057,0.133398875594139,0.113637484610081,-0.062732733786106,0.211744874715805,-0.067051202058792,0.244606733322144,0.003150606295094,0.029440622776747));
res += mul(Get(s3,dx,-dy), float4x4(0.202514871954918,-0.100958481431007,0.178501561284065,0.068715155124664,0.088810503482819,-0.068488784134388,-0.002985543105751,-0.055535979568958,0.009073438122869,0.037125147879124,0.065955713391304,-0.097863920032978,0.088153079152107,0.115854620933533,0.089476861059666,-0.098660178482533));
res += mul(Get(s3,dx,0), float4x4(-0.145753592252731,-0.043920386582613,-0.071361452341080,-0.051725033670664,-0.021394807845354,-0.123108878731728,0.030649742111564,0.097610168159008,0.190325111150742,0.056019246578217,0.089013569056988,0.120540924370289,0.072475582361221,0.163391292095184,0.131231829524040,-0.087727852165699));
res += mul(Get(s3,dx,dy), float4x4(-0.006353934295475,-0.035264149308205,0.007798715494573,0.084091395139694,-0.001458345097490,0.010357875376940,-0.043932493776083,0.083470866084099,0.024789089336991,0.010717425495386,-0.103104986250401,0.009793417528272,-0.095080576837063,0.063931994140148,-0.097300827503204,-0.119186691939831));
res += mul(Get(s4,-dx,-dy), float4x4(0.051635079085827,0.111344657838345,0.137544125318527,-0.050597526133060,-0.053361766040325,-0.025581941008568,0.115415632724762,-0.166846975684166,0.055640552192926,0.008776885457337,0.093615546822548,0.038485921919346,0.000772246043198,0.093892365694046,0.088091790676117,-0.129022002220154));
res += mul(Get(s4,-dx,0), float4x4(-0.098760820925236,0.154963821172714,-0.205539986491203,0.161613106727600,-0.003211529459804,-0.014989908784628,0.096409916877747,0.089712798595428,0.062037657946348,-0.080686569213867,0.138313084840775,-0.067178025841713,-0.117531880736351,-0.006047157570720,-0.147352069616318,0.172495871782303));
res += mul(Get(s4,-dx,dy), float4x4(0.009924593381584,0.083984643220901,0.066451705992222,-0.050380084663630,0.044177997857332,-0.194208160042763,-0.128119364380836,0.189983755350113,-0.003046381054446,-0.026985004544258,0.041718374937773,-0.016001960262656,0.040062040090561,-0.007552298717201,-0.056987900286913,-0.046636953949928));
res += mul(Get(s4,0,-dy), float4x4(-0.264999061822891,0.179232478141785,0.218854010105133,-0.021483225747943,-0.146056041121483,0.004714793991297,-0.141752600669861,-0.101765185594559,0.003299420932308,0.044228009879589,0.091243885457516,0.054664518684149,0.093468025326729,-0.011823291890323,0.147668331861496,-0.005276494659483));
res += mul(Get(s4,0,0), float4x4(-0.008538947440684,0.110167652368546,0.081263534724712,-0.144470259547234,0.511912405490875,-0.332476675510406,-0.088150247931480,0.333553165197372,-0.212749123573303,0.087726324796677,-0.317217260599136,-0.251755744218826,0.029654420912266,0.081652924418449,0.132104694843292,-0.179847821593285));
res += mul(Get(s4,0,dy), float4x4(0.039354667067528,0.062905050814152,0.160918205976486,0.054122883826494,0.073001503944397,-0.279474377632141,0.219691246747971,-0.048564087599516,0.151341661810875,-0.046673376113176,-0.099166683852673,-0.097239114344120,-0.047609973698854,-0.119606688618660,0.195052444934845,0.061186842620373));
res += mul(Get(s4,dx,-dy), float4x4(0.025226913392544,0.029694952070713,-0.097001016139984,0.044911529868841,-0.125048235058784,-0.104723997414112,-0.090393908321857,0.054955694824457,0.000958004733548,-0.013755331747234,0.070273637771606,-0.075103297829628,-0.003504643449560,-0.085988335311413,-0.024794116616249,-0.243122860789299));
res += mul(Get(s4,dx,0), float4x4(-0.032343100756407,0.053240511566401,0.008150045759976,0.005761897191405,0.234118252992630,-0.108617052435875,0.007526821922511,-0.050934683531523,-0.078444793820381,-0.059659752994776,-0.182996362447739,0.135013043880463,0.078849487006664,0.012221510522068,0.108212932944298,-0.181538805365562));
res += mul(Get(s4,dx,dy), float4x4(-0.003165850415826,0.096097715198994,-0.046688243746758,0.005861754529178,-0.057882934808731,-0.188269436359406,-0.121317923069000,0.079581514000893,0.104728505015373,0.051870498806238,-0.000698240066413,0.073844589293003,-0.015230817720294,0.021095415577292,0.012194162234664,-0.026386294513941));
res += mul(Get(s5,-dx,-dy), float4x4(-0.031594950705767,-0.157179683446884,0.131892248988152,0.012480190023780,0.062818013131618,-0.015523663721979,-0.108133509755135,0.082608267664909,-0.079257428646088,0.055377285927534,-0.028127308934927,0.090861722826958,0.031477645039558,0.006048037670553,0.046445500105619,0.026223339140415));
res += mul(Get(s5,-dx,0), float4x4(0.087670639157295,0.014795599505305,-0.011478395201266,-0.059740167111158,0.017986372113228,0.019967447966337,0.096589840948582,0.051490046083927,0.065105490386486,-0.222209081053734,0.161241069436073,-0.049703560769558,0.062026273459196,0.079782664775848,-0.107350379228592,-0.117568686604500));
res += mul(Get(s5,-dx,dy), float4x4(0.084059700369835,-0.037413462996483,-0.096011228859425,0.045763079077005,-0.012448475696146,-0.111803621053696,-0.002607346279547,0.107576288282871,0.041785467416048,-0.138152644038200,0.151465669274330,-0.173095852136612,0.000323398562614,0.076182633638382,-0.230383232235909,-0.015912560746074));
res += mul(Get(s5,0,-dy), float4x4(0.210096880793571,-0.017723705619574,-0.116393707692623,0.026347506791353,-0.079254172742367,-0.058211557567120,0.013545789755881,-0.056719608604908,0.017838302999735,-0.153854176402092,-0.079983934760094,-0.054705977439880,-0.076844707131386,0.038112085312605,-0.041089348495007,0.048120636492968));
res += mul(Get(s5,0,0), float4x4(-0.111982680857182,0.120585687458515,0.065274350345135,-0.155937030911446,-0.008413926698267,-0.055080011487007,0.073414459824562,0.337518244981766,0.063861191272736,0.033232342451811,-0.298540443181992,-0.173677071928978,-0.131113350391388,0.032319657504559,-0.046131417155266,0.052166644483805));
res += mul(Get(s5,0,dy), float4x4(-0.130668282508850,0.037208102643490,0.194530203938484,-0.395792961120605,-0.029348727315664,-0.007218824233860,-0.122752502560616,-0.029522132128477,-0.074618861079216,-0.200760737061501,-0.087316669523716,-0.031241631135345,-0.060828521847725,0.013752504251897,-0.331719964742661,-0.215727075934410));
res += mul(Get(s5,dx,-dy), float4x4(-0.082278251647949,0.095362015068531,0.084217943251133,0.123560048639774,-0.072938531637192,-0.184109523892403,-0.030969098210335,0.122180864214897,-0.110145397484303,-0.027060937136412,-0.044891230762005,-0.031290981918573,0.045989442616701,-0.113390341401100,0.067219682037830,-0.108381316065788));
res += mul(Get(s5,dx,0), float4x4(-0.203907698392868,-0.054278209805489,-0.037007391452789,-0.048674289137125,0.086852699518204,-0.162341058254242,-0.010806697420776,0.073783926665783,-0.133060380816460,0.140981033444405,0.086570337414742,-0.062084943056107,-0.040793474763632,-0.012756086885929,0.109091140329838,0.010719689540565));
res += mul(Get(s5,dx,dy), float4x4(-0.030562952160835,-0.064464017748833,-0.023160897195339,0.039355564862490,0.040017161518335,-0.035411674529314,-0.109309718012810,0.104560375213623,0.032402690500021,-0.047230549156666,0.101812928915024,0.021683799102902,0.086523190140724,-0.051281876862049,0.283735871315002,-0.071701206266880));
res = max(float4(0, 0, 0, 0), res) + float4(-0.164113521575928,-0.059742961078882,-0.002733963541687,0.106840439140797) * min(float4(0, 0, 0, 0), res);
return res;
}
