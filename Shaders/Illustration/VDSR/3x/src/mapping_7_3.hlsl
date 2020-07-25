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
res += mul(Get(s0,-dx,-dy), float4x4(0.115131177008152,-0.034045893698931,-0.061824511736631,-0.084574542939663,-0.061535019427538,0.264164596796036,0.141917467117310,0.004532507620752,0.092966876924038,0.039266020059586,0.094808332622051,0.040820345282555,0.064119756221771,0.219885796308517,0.139456078410149,-0.067454114556313));
res += mul(Get(s0,-dx,0), float4x4(-0.066335134208202,0.024307422339916,0.019140448421240,0.198397859930992,0.073593847453594,-0.116327516734600,0.069157600402832,0.188924163579941,0.048577677458525,-0.124384142458439,0.010996269993484,-0.010264741256833,-0.214043751358986,0.153516605496407,0.033670712262392,0.263470947742462));
res += mul(Get(s0,-dx,dy), float4x4(0.068014010787010,-0.075433500111103,-0.139883115887642,-0.004104212857783,-0.030939988791943,-0.227216929197311,0.071002900600433,0.243199303746223,-0.051681663841009,-0.072368718683720,0.056308086961508,-0.102349080145359,-0.085422269999981,-0.109595410525799,0.012003041803837,0.152761757373810));
res += mul(Get(s0,0,-dy), float4x4(0.193459421396255,0.056205186992884,0.097634166479111,-0.153879329562187,0.100567691028118,0.127327471971512,0.109950415790081,0.138434618711472,-0.128348186612129,0.102068029344082,-0.152082487940788,-0.030954303219914,-0.237580806016922,0.129850879311562,0.056615538895130,-0.071411423385143));
res += mul(Get(s0,0,0), float4x4(-0.115850716829300,0.055245455354452,0.064766794443130,0.098880998790264,0.094757348299026,-0.029366441071033,-0.081039495766163,0.090186364948750,-0.140854880213737,0.191171050071716,0.062341473996639,-0.169673860073090,-0.000887644535396,0.133486464619637,-0.060895469039679,0.135729640722275));
res += mul(Get(s0,0,dy), float4x4(0.094065807759762,0.079722821712494,-0.117004521191120,0.034550111740828,-0.039624433964491,-0.158060818910599,0.089145384728909,0.216211795806885,0.098475240170956,0.172208532691002,-0.084633015096188,-0.067750103771687,-0.036497540771961,-0.114215940237045,0.072840444743633,0.369365811347961));
res += mul(Get(s0,dx,-dy), float4x4(-0.162430509924889,0.134392663836479,-0.079337626695633,-0.074674129486084,0.017476737499237,0.000951381924096,-0.026245113462210,-0.153745800256729,0.142626628279686,0.053131472319365,-0.084897041320801,0.007007501553744,0.105236694216728,0.025008192285895,0.184739470481873,-0.321734160184860));
res += mul(Get(s0,dx,0), float4x4(0.018618321046233,0.084618285298347,-0.073695220053196,0.084438376128674,-0.022191146388650,0.183335602283478,0.122720830142498,0.044250283390284,-0.006966629531235,-0.083848021924496,0.028780145570636,-0.187118068337440,-0.040408790111542,0.073762267827988,0.113701917231083,-0.146814405918121));
res += mul(Get(s0,dx,dy), float4x4(0.063815191388130,-0.198477312922478,0.040268853306770,0.080008454620838,0.053810931742191,0.144148766994476,-0.086540095508099,0.106420971453190,-0.012613249011338,0.002929999725893,0.159748077392578,0.014913448132575,-0.174924716353416,-0.001052741659805,-0.136429637670517,-0.115844078361988));
res += mul(Get(s1,-dx,-dy), float4x4(0.119013078510761,-0.072795733809471,-0.239982739090919,0.116946615278721,0.119825623929501,0.077921070158482,-0.153099969029427,0.173821985721588,0.132330685853958,0.054390087723732,0.043348774313927,0.041210919618607,0.028887020424008,-0.035216826945543,-0.077326640486717,0.152075022459030));
res += mul(Get(s1,-dx,0), float4x4(-0.100544095039368,-0.034682940691710,-0.149465993046761,0.110948517918587,-0.131871148943901,-0.080313317477703,0.127325892448425,0.149538174271584,0.063974812626839,-0.057998165488243,0.003273828653619,0.116095036268234,0.102308802306652,0.211753129959106,-0.031697344034910,0.008445418439806));
res += mul(Get(s1,-dx,dy), float4x4(-0.013143248856068,-0.172576352953911,0.035063546150923,-0.003160226391628,-0.140001893043518,0.029876694083214,-0.030670005828142,-0.067551776766777,-0.023779124021530,-0.115064091980457,-0.023681497201324,0.210065349936485,0.155200123786926,0.008878953754902,-0.166814267635345,-0.076077014207840));
res += mul(Get(s1,0,-dy), float4x4(0.115895263850689,0.175961658358574,-0.114453479647636,0.105373591184616,-0.010334547609091,0.012691582553089,0.044466573745012,0.055221248418093,-0.050206214189529,-0.079979814589024,0.060576673597097,-0.018281033262610,-0.193709313869476,-0.125095635652542,-0.187875792384148,-0.029897343367338));
res += mul(Get(s1,0,0), float4x4(0.035247143357992,0.033417087048292,0.012345571070910,0.092250637710094,-0.021185506135225,-0.049664780497551,0.171332508325577,0.096248313784599,-0.129565298557281,0.197587162256241,-0.101345732808113,-0.036363933235407,-0.029170462861657,-0.121746316552162,0.001424549496733,-0.034332107752562));
res += mul(Get(s1,0,dy), float4x4(-0.124017365276814,0.069333106279373,-0.057901043444872,-0.085897818207741,-0.015564342029393,-0.122097343206406,-0.020914476364851,0.077334225177765,0.089538253843784,0.003982207272202,-0.087789542973042,0.073812261223793,-0.016452742740512,-0.146135702729225,-0.152860224246979,0.135460585355759));
res += mul(Get(s1,dx,-dy), float4x4(-0.020959230139852,-0.217679187655449,-0.033297926187515,-0.051593281328678,-0.119011938571930,-0.140636920928955,0.135871872305870,-0.053820859640837,0.093786768615246,-0.100988291203976,0.096038565039635,-0.233226954936981,-0.138525709509850,0.116521939635277,-0.020878536626697,-0.045021880418062));
res += mul(Get(s1,dx,0), float4x4(-0.053722601383924,0.180194467306137,-0.028589060530066,0.101603053510189,-0.141292527318001,0.005535893607885,-0.066596902906895,0.135756209492683,-0.023542160168290,-0.099685974419117,0.058668363839388,-0.069454282522202,-0.034255132079124,0.132764145731926,-0.196955576539040,-0.099655136466026));
res += mul(Get(s1,dx,dy), float4x4(0.069750092923641,-0.033022351562977,0.035349596291780,-0.076310768723488,-0.031405437737703,0.094875194132328,0.085268728435040,0.348313659429550,0.032746147364378,-0.071497932076454,0.072873786091805,-0.073034703731537,0.086690664291382,0.127663955092430,-0.084115639328957,0.073185220360756));
res += mul(Get(s2,-dx,-dy), float4x4(-0.147743001580238,-0.075494967401028,-0.167331770062447,-0.031938590109348,0.132158726453781,-0.056888118386269,0.018862038850784,0.072962395846844,0.012821599841118,0.110866427421570,0.013363384641707,0.011068184860051,-0.030346559360623,0.119034133851528,-0.121301673352718,0.017716940492392));
res += mul(Get(s2,-dx,0), float4x4(-0.258827447891235,0.074025519192219,0.020924732089043,0.021336534991860,-0.104782596230507,-0.115664586424828,-0.054188277572393,0.018168877810240,0.173375099897385,0.213588774204254,-0.031618434935808,-0.145800024271011,0.076976232230663,-0.052333783358335,0.107726037502289,-0.056232105940580));
res += mul(Get(s2,-dx,dy), float4x4(-0.124034948647022,-0.075635075569153,0.008268441073596,-0.093796640634537,0.228792622685432,0.094935216009617,-0.098771288990974,-0.091342806816101,0.100735031068325,0.036556929349899,-0.153127327561378,-0.114103190600872,0.052514180541039,-0.092339076101780,0.125604376196861,-0.135317385196686));
res += mul(Get(s2,0,-dy), float4x4(-0.037434391677380,0.011202952824533,-0.042010765522718,-0.171494960784912,0.040875464677811,-0.135597139596939,0.106157958507538,-0.242960795760155,-0.003007841296494,-0.182395249605179,0.028644738718867,-0.101056508719921,-0.009990497492254,-0.105802953243256,0.109967947006226,0.084437206387520));
res += mul(Get(s2,0,0), float4x4(-0.123126901686192,-0.100469708442688,-0.131776064634323,-0.037443604320288,0.048864874988794,0.085513278841972,0.064010769128799,0.096147857606411,0.063652291893959,-0.013281716033816,-0.047428436577320,0.070760928094387,-0.235811248421669,0.027525965124369,-0.160048380494118,0.211770668625832));
res += mul(Get(s2,0,dy), float4x4(0.092386208474636,0.068379171192646,-0.104660399258137,-0.097494587302208,-0.101509205996990,-0.049895662814379,-0.129227340221405,-0.024860838428140,0.070946201682091,0.064687475562096,-0.006979151163250,0.042486250400543,-0.154234290122986,0.029699984937906,0.051965758204460,0.098018296062946));
res += mul(Get(s2,dx,-dy), float4x4(-0.143573909997940,-0.049685936421156,-0.223710790276527,0.021913077682257,0.041696593165398,-0.048990443348885,0.244637072086334,0.020699523389339,0.068207263946533,0.026979293674231,-0.001333243912086,0.114058591425419,0.158295646309853,-0.050870098173618,-0.096217602491379,0.054668541997671));
res += mul(Get(s2,dx,0), float4x4(-0.024019341915846,-0.098199799656868,0.102735623717308,-0.065427288413048,0.010480042546988,-0.100876048207283,-0.114505283534527,0.182344079017639,-0.213784590363503,-0.022658737376332,0.011364287696779,-0.168653607368469,0.013634179718792,-0.169907987117767,0.108613237738609,-0.125890567898750));
res += mul(Get(s2,dx,dy), float4x4(-0.103406026959419,-0.090357877314091,0.078133523464203,-0.057614948600531,-0.113824844360352,0.059314128011465,0.053366459906101,-0.022874103859067,-0.038568783551455,0.000957910204306,-0.114988051354885,0.043762106448412,0.005507369060069,-0.003746767062694,0.092990025877953,0.064024910330772));
res += mul(Get(s3,-dx,-dy), float4x4(-0.087547987699509,-0.065736830234528,0.121081329882145,0.126518443226814,-0.001391529222019,-0.149134173989296,0.016237098723650,-0.129700973629951,-0.171669393777847,-0.057441852986813,0.077022336423397,0.364550262689590,-0.126713618636131,-0.172635212540627,-0.042222723364830,-0.337936729192734));
res += mul(Get(s3,-dx,0), float4x4(0.237857967615128,-0.020544836297631,0.234639868140221,0.068260297179222,-0.186906874179840,-0.025208774954081,0.146914258599281,0.089962661266327,-0.263240605592728,-0.230053991079330,-0.092016883194447,0.219796419143677,0.108727283775806,0.079724840819836,-0.139016017317772,-0.058097820729017));
res += mul(Get(s3,-dx,dy), float4x4(-0.124451272189617,0.076961472630501,-0.129766732454300,0.003941825125366,0.052865587174892,-0.010174032300711,-0.095043830573559,0.027597185224295,0.166989222168922,-0.259323805570602,-0.039273455739021,0.067857734858990,0.278452694416046,0.059869140386581,-0.035653941333294,-0.238251939415932));
res += mul(Get(s3,0,-dy), float4x4(0.009085967205465,0.064438812434673,0.062163967639208,-0.039650890976191,-0.018970983102918,0.277818471193314,-0.115993723273277,0.079465404152870,0.011712219566107,0.021005799993873,-0.122555039823055,-0.066971875727177,-0.006794485263526,0.021574169397354,-0.137030154466629,-0.163106858730316));
res += mul(Get(s3,0,0), float4x4(0.059045188128948,-0.043273728340864,0.230463340878487,0.076110042631626,0.142548784613609,0.160727784037590,-0.006656179670244,-0.280884146690369,0.068414069712162,-0.011663660407066,-0.227807834744453,-0.326413422822952,-0.069370672106743,0.009587431326509,-0.184588983654976,0.020149055868387));
res += mul(Get(s3,0,dy), float4x4(0.138170361518860,0.201403126120567,0.052871175110340,-0.074672423303127,-0.111825831234455,0.080707252025604,0.015825368463993,-0.078172609210014,0.042147930711508,-0.095025673508644,-0.274327367544174,-0.024687409400940,0.065378643572330,0.166506811976433,0.205314844846725,0.083644852042198));
res += mul(Get(s3,dx,-dy), float4x4(0.018857060000300,-0.080806694924831,0.014879052527249,-0.080173246562481,-0.003111194819212,-0.111337140202522,-0.166024535894394,-0.161763086915016,0.196693137288094,0.153742894530296,0.165856108069420,-0.022121606394649,-0.087516739964485,0.068809419870377,-0.155286058783531,-0.012347088195384));
res += mul(Get(s3,dx,0), float4x4(0.115916855633259,-0.036114368587732,-0.022370018064976,-0.118410654366016,-0.050911527127028,0.022744663059711,0.017160741612315,-0.000653370690998,0.222648888826370,0.061707206070423,-0.027159694582224,-0.055151037871838,-0.096298329532146,-0.064737617969513,0.045390311628580,-0.136039361357689));
res += mul(Get(s3,dx,dy), float4x4(0.119991004467010,-0.004821674898267,0.156331047415733,0.011865274049342,-0.193120747804642,-0.107388749718666,-0.018567968159914,-0.006354521028697,-0.041197411715984,-0.118027023971081,0.047197271138430,0.099591515958309,0.064561672508717,0.241011753678322,0.099339298903942,0.104223228991032));
return max(float4(0,0,0,0), res);
}
