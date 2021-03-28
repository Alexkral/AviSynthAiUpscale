sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.128321886062622,0.230768293142319,0.070496298372746,0.073279477655888);
res += mul(Get(s0,-dx,-dy), float4x4(-0.167802497744560,-0.093934953212738,0.027611253783107,-0.007985657081008,-0.050392635166645,-0.105211034417152,-0.044489111751318,0.056570429354906,0.009000048972666,-0.136993035674095,0.032786101102829,0.157073348760605,-0.209743455052376,-0.016872497275472,-0.058157995343208,0.093381576240063));
res += mul(Get(s0,-dx,0), float4x4(-0.003117319894955,-0.031927615404129,-0.078970856964588,-0.027850726619363,-0.049995742738247,-0.216194316744804,-0.060541141778231,0.113527342677116,0.083792075514793,-0.038566317409277,0.002574268961325,0.154451057314873,0.229197800159454,-0.088586829602718,-0.048768315464258,-0.015909431502223));
res += mul(Get(s0,-dx,dy), float4x4(-0.287797093391418,0.058940880000591,-0.013848355971277,0.011993622407317,-0.267743229866028,-0.156318247318268,0.049732223153114,0.369407981634140,0.139331936836243,0.075529426336288,-0.007915954105556,0.020092893391848,-0.091480873525143,-0.140554323792458,-0.072115138173103,-0.093380242586136));
res += mul(Get(s0,0,-dy), float4x4(0.161896601319313,0.193710133433342,-0.005504024215043,0.123331584036350,-0.015000324696302,-0.313657134771347,-0.067577436566353,0.265406221151352,-0.000571097072680,0.248440131545067,0.100435830652714,-0.435286670923233,-0.043862994760275,-0.139042317867279,0.011822214350104,0.143712535500526));
res += mul(Get(s0,0,0), float4x4(0.120343573391438,0.208779543638229,-0.150217741727829,-0.240974739193916,-0.034239780157804,-0.395197957754135,0.031812142580748,-0.019302213564515,-0.184488490223885,0.161930322647095,-0.042581189423800,0.411898285150528,-0.192713007330894,-0.370868086814880,-0.033568892627954,0.157456591725349));
res += mul(Get(s0,0,dy), float4x4(0.378369420766830,0.198498830199242,-0.068580463528633,-0.153813049197197,0.037072286009789,-0.366526067256927,0.105516463518143,0.117363780736923,-0.007643889170140,0.037660513073206,-0.020401993766427,0.134628534317017,0.261948198080063,-0.272752761840820,-0.120932348072529,-0.224191471934319));
res += mul(Get(s0,dx,-dy), float4x4(-0.063591778278351,-0.076933652162552,0.106255434453487,0.013312610797584,-0.023361032828689,-0.035544078797102,-0.045978285372257,-0.017418125644326,-0.141608849167824,0.510924935340881,0.076307907700539,-0.061501894146204,0.017691336572170,0.008603267371655,-0.059670098125935,-0.000282891385723));
res += mul(Get(s0,dx,0), float4x4(0.112890720367432,-0.273883968591690,-0.107256382703781,0.115425266325474,-0.092805966734886,-0.138422489166260,0.065408743917942,0.026753153651953,-0.229544848203659,0.224059373140335,0.109062820672989,0.188551694154739,-0.224220097064972,-0.190545618534088,0.131311267614365,-0.159895896911621));
res += mul(Get(s0,dx,dy), float4x4(-0.010071706958115,0.119759336113930,-0.156008765101433,0.331265211105347,-0.129383653402328,-0.186264961957932,0.057233046740294,0.061104655265808,0.098175927996635,0.135529577732086,0.050335541367531,0.179187372326851,0.076943479478359,-0.203488469123840,-0.038929302245378,-0.158079564571381));
res += mul(Get(s1,-dx,-dy), float4x4(0.137775778770447,-0.001449162024073,-0.102451011538506,0.065054312348366,-0.076869152486324,-0.003292877692729,0.053632415831089,0.143390059471130,-0.029997898265719,-0.078610457479954,0.028259314596653,-0.026047304272652,-0.006032387726009,0.016632337123156,-0.034197740256786,-0.043685380369425));
res += mul(Get(s1,-dx,0), float4x4(0.109768919646740,-0.090647071599960,0.103956356644630,-0.130833521485329,0.029943196102977,-0.039230260998011,-0.030218930914998,0.059483833611012,-0.085573941469193,0.064242333173752,0.032524351030588,0.138432085514069,-0.014888931065798,0.065012797713280,0.070099279284477,-0.110825709998608));
res += mul(Get(s1,-dx,dy), float4x4(0.084322638809681,0.071762025356293,0.021028032526374,0.038460347801447,0.055702023208141,-0.004636655095965,0.043040912598372,-0.114577569067478,0.141464978456497,-0.045640550553799,-0.088026195764542,-0.007750047370791,-0.038758184760809,0.001664221752435,-0.060623612254858,0.240605220198631));
res += mul(Get(s1,0,-dy), float4x4(-0.055439971387386,0.019558094441891,-0.137800455093384,0.143177196383476,-0.126225680112839,-0.064670987427235,0.019373737275600,-0.133064940571785,0.012397369369864,-0.268234312534332,0.042472872883081,-0.083651639521122,-0.207759842276573,0.042960707098246,-0.012348256073892,-0.036173578351736));
res += mul(Get(s1,0,0), float4x4(0.153786316514015,-0.000392875372199,-0.215463280677795,-0.193784818053246,-0.076688066124916,0.100556045770645,-0.072213709354401,-0.192537739872932,-0.042294677346945,0.033766567707062,-0.196550175547600,0.238597124814987,0.021380497142673,0.061661627143621,0.062526330351830,0.053476449102163));
res += mul(Get(s1,0,dy), float4x4(-0.024620000272989,0.080274991691113,0.006065059918910,-0.034481417387724,0.019252695143223,0.074774838984013,-0.068317443132401,0.188575446605682,0.133862167596817,-0.243489354848862,-0.188871383666992,0.108013704419136,0.253602147102356,-0.097912721335888,-0.017944617196918,0.235973477363586));
res += mul(Get(s1,dx,-dy), float4x4(-0.004571531433612,-0.069039046764374,-0.043259918689728,-0.050424199551344,0.177919432520866,0.127191975712776,-0.049907375127077,-0.147821426391602,-0.088092550635338,-0.238637357950211,0.068898089230061,0.023527713492513,0.004455313086510,0.233554482460022,-0.006030573509634,-0.131024226546288));
res += mul(Get(s1,dx,0), float4x4(0.062054209411144,0.017498169094324,-0.075462400913239,-0.191611841320992,-0.230525031685829,0.024384781718254,0.014051872305572,-0.282019734382629,-0.167165055871010,-0.087882764637470,-0.034415066242218,0.132835328578949,-0.100475698709488,0.148354634642601,0.020331708714366,0.063416615128517));
res += mul(Get(s1,dx,dy), float4x4(-0.061974052339792,0.008929224684834,0.022143036127090,0.040160562843084,0.173137515783310,-0.168303519487381,-0.100825779139996,-0.385995477437973,0.110371738672256,0.079723268747330,-0.052787233144045,-0.096478566527367,-0.116887047886848,0.093934752047062,0.096600696444511,0.260426074266434));
res += mul(Get(s2,-dx,-dy), float4x4(-0.075572639703751,0.053505763411522,-0.055359672755003,0.042803578078747,-0.010007226839662,0.138997256755829,-0.010851210914552,0.172472298145294,0.033765297383070,0.301476299762726,-0.001513061230071,-0.181640401482582,-0.059333745390177,0.052710000425577,0.006376912817359,-0.064375847578049));
res += mul(Get(s2,-dx,0), float4x4(0.068494044244289,0.061057031154633,0.198108315467834,0.060426678508520,0.136182963848114,-0.158343985676765,-0.075357571244240,0.183287963271141,0.101122289896011,-0.103027001023293,-0.045888792723417,-0.203875929117203,-0.218845725059509,0.034976359456778,0.022062517702579,0.026172224432230));
res += mul(Get(s2,-dx,dy), float4x4(0.069655142724514,-0.206723660230637,-0.039424762129784,-0.020028820261359,0.136989727616310,0.109542027115822,0.030761174857616,-0.085328102111816,0.160928398370743,0.001635970780626,0.041441436856985,-0.195677578449249,0.183360889554024,-0.175827547907829,0.049084875732660,-0.127268165349960));
res += mul(Get(s2,0,-dy), float4x4(0.023469602689147,0.074943765997887,-0.034196957945824,-0.052514262497425,-0.076565682888031,-0.008320416323841,-0.052132900804281,-0.053630162030458,0.077308796346188,0.072458893060684,-0.009644981473684,-0.071275159716606,0.198930546641350,-0.043371103703976,-0.046953249722719,0.217154964804649));
res += mul(Get(s2,0,0), float4x4(-0.056186366826296,0.199282541871071,-0.143176764249802,-0.139410600066185,0.154185578227043,0.240322336554527,0.030466280877590,-0.346080482006073,0.320036858320236,-0.026747724041343,0.063788577914238,-0.251251250505447,0.289613723754883,-0.198074981570244,0.045960709452629,0.104019843041897));
res += mul(Get(s2,0,dy), float4x4(-0.179905682802200,0.138679221272469,0.006618076469749,-0.393151909112930,-0.077865980565548,0.467444121837616,0.092275507748127,0.102989420294762,0.012029134668410,0.108995862305164,0.167981699109077,-0.106562390923500,-0.266497641801834,0.057129167020321,0.055930379778147,0.074365422129631));
res += mul(Get(s2,dx,-dy), float4x4(0.115653045475483,0.138638973236084,-0.038172658532858,0.058794911950827,-0.051123324781656,0.037056662142277,-0.020690664649010,-0.138554051518440,0.022285919636488,-0.075359359383583,-0.048535436391830,0.033568948507309,-0.002807254437357,-0.124297618865967,0.035013876855373,0.062576919794083));
res += mul(Get(s2,dx,0), float4x4(0.162530556321144,0.260551869869232,-0.007843443192542,-0.144381642341614,-0.027864357456565,0.246586114168167,-0.145703092217445,-0.187760502099991,-0.116001926362514,-0.041337594389915,-0.027061894536018,-0.124266602098942,0.105055756866932,0.163092285394669,-0.001983053050935,-0.105837382376194));
res += mul(Get(s2,dx,dy), float4x4(0.126735791563988,0.008525320328772,-0.000971498375293,-0.009550617076457,-0.057496037334204,0.154491588473320,0.007300196215510,0.205055505037308,-0.027415590360761,0.234406933188438,0.090733312070370,-0.239085450768471,0.033701959997416,0.064140781760216,0.084735035896301,0.074000954627991));
res += mul(Get(s3,-dx,-dy), float4x4(-0.059282202273607,-0.056853335350752,-0.023844582960010,-0.129366904497147,0.040695197880268,0.037437859922647,0.024576911702752,-0.006437998730689,0.069764062762260,-0.017508186399937,-0.110870800912380,0.062704928219318,-0.062816128134727,0.069992557168007,0.056346569210291,0.036031402647495));
res += mul(Get(s3,-dx,0), float4x4(-0.015745781362057,-0.200703188776970,0.019028177484870,-0.179520979523659,0.177591279149055,-0.033491753041744,-0.042744606733322,-0.056395679712296,-0.125058636069298,-0.122331753373146,-0.077435255050659,0.348332852125168,0.144754692912102,0.086343042552471,0.038042429834604,-0.263512939214706));
res += mul(Get(s3,-dx,dy), float4x4(-0.160494044423103,-0.046423867344856,0.000227386801271,-0.045325621962547,0.135238945484161,0.098874196410179,-0.002135880058631,-0.096190907061100,0.283313989639282,0.166311144828796,0.046387985348701,-0.075704544782639,0.018623162060976,0.087036222219467,-0.006269750185311,-0.092667229473591));
res += mul(Get(s3,0,-dy), float4x4(0.052663326263428,-0.153741344809532,0.031709279865026,-0.021296434104443,-0.096601255238056,-0.072706319391727,0.076789036393166,0.069429695606232,-0.021921940147877,-0.060313079506159,-0.146483182907104,0.127385646104813,0.108994014561176,-0.017649140208960,0.085413113236427,-0.094129875302315));
res += mul(Get(s3,0,0), float4x4(0.305602431297302,-0.105976007878780,-0.065900348126888,-0.367639303207397,-0.076847963035107,-0.154683172702789,-0.031687017530203,0.364699155092239,-0.059647947549820,0.061429411172867,0.075530223548412,0.133740931749344,-0.156733930110931,-0.123800873756409,0.117689952254295,0.060554649680853));
res += mul(Get(s3,0,dy), float4x4(-0.214747264981270,-0.117494687438011,0.131171584129333,-0.413503438234329,0.178997278213501,0.044120457023382,0.045071404427290,-0.040424667298794,-0.126550644636154,-0.060856271535158,0.053934842348099,-0.492838382720947,0.350426763296127,-0.077696718275547,-0.051337324082851,0.141982123255730));
res += mul(Get(s3,dx,-dy), float4x4(0.016393952071667,0.047213811427355,0.035143025219440,-0.170959904789925,-0.066558696329594,0.132344186306000,0.075462058186531,-0.112378925085068,0.114321440458298,0.108248151838779,-0.044686846435070,0.135936051607132,0.034759111702442,0.023179400712252,-0.050448674708605,-0.083727858960629));
res += mul(Get(s3,dx,0), float4x4(0.044964015483856,-0.038758687674999,0.017555639147758,-0.506706774234772,-0.195605292916298,-0.178585946559906,0.073157265782356,0.000592430005781,0.023997133597732,0.027063742280006,-0.075967088341713,-0.031936865299940,-0.079721190035343,-0.050232466310263,0.072537846863270,-0.084338396787643));
res += mul(Get(s3,dx,dy), float4x4(0.059492737054825,-0.286361783742905,0.104704849421978,-0.113846644759178,0.145634844899178,0.213500291109085,0.026784796267748,-0.141658619046211,0.123046591877937,-0.165846124291420,0.024444406852126,-0.242504432797432,0.056091297417879,0.268779814243317,-0.035358183085918,-0.227731809020042));
res += mul(Get(s4,-dx,-dy), float4x4(0.051778942346573,-0.179191887378693,-0.073978506028652,-0.062595821917057,0.014864029362798,-0.117612399160862,0.010602994821966,0.120763435959816,0.082944273948669,0.044365096837282,-0.021742837503552,-0.150069639086723,0.037590526044369,-0.094225816428661,0.019993588328362,0.018711786717176));
res += mul(Get(s4,-dx,0), float4x4(0.151438251137733,0.101084470748901,-0.003651349106804,-0.117636494338512,-0.110223285853863,0.058381993323565,-0.006313286721706,0.005992003716528,-0.101597137749195,0.053275521844625,-0.011091862805188,0.119787238538265,-0.114178761839867,0.015977101400495,-0.125971719622612,0.127206549048424));
res += mul(Get(s4,-dx,dy), float4x4(-0.258799165487289,-0.021557096391916,-0.090754620730877,0.036334708333015,0.290876060724258,-0.054329454898834,-0.010790998116136,-0.015533993951976,-0.075218431651592,-0.023758605122566,0.010571435093880,0.077950574457645,-0.340830683708191,0.098239906132221,-0.088706463575363,0.177271693944931));
res += mul(Get(s4,0,-dy), float4x4(-0.177006050944328,0.077950842678547,0.127442240715027,0.047943733632565,-0.044455800205469,-0.039694365113974,0.039536390453577,0.202632471919060,0.025212794542313,0.135094851255417,-0.087030693888664,-0.101384609937668,0.065056912600994,-0.203643113374710,0.075282730162144,-0.025566443800926));
res += mul(Get(s4,0,0), float4x4(0.259189277887344,-0.091391697525978,-0.167869895696640,0.040189545601606,0.100358180701733,-0.268009245395660,0.178815543651581,-0.272512525320053,-0.012123649008572,0.016861524432898,0.006653595715761,0.097708657383919,0.283071041107178,-0.154549092054367,0.617708861827850,0.085948519408703));
res += mul(Get(s4,0,dy), float4x4(0.123466514050961,-0.105158910155296,-0.021979210898280,-0.137776553630829,0.113365046679974,-0.023204913362861,-0.093146286904812,-0.008236321620643,-0.044921081513166,0.013546049594879,-0.079781800508499,-0.013100021518767,-0.202894061803818,-0.028384571895003,-0.133320882916451,-0.235202252864838));
res += mul(Get(s4,dx,-dy), float4x4(-0.092101529240608,-0.328755825757980,0.108776807785034,0.090656906366348,-0.214766144752502,0.112020917236805,0.116209141910076,-0.116210184991360,-0.006515053100884,0.104315459728241,0.015377043746412,-0.095190845429897,-0.071447461843491,-0.195338860154152,0.090711705386639,0.022951535880566));
res += mul(Get(s4,dx,0), float4x4(-0.238164812326431,0.005215707700700,-0.089620001614094,-0.205771297216415,0.376760214567184,0.023219909518957,0.021160654723644,-0.254070729017258,-0.013312541879714,-0.097589962184429,0.050836559385061,-0.215369686484337,0.198894456028938,-0.136092394590378,0.060434777289629,-0.195878386497498));
res += mul(Get(s4,dx,dy), float4x4(0.093973599374294,-0.167303547263145,-0.021033016964793,-0.062099091708660,-0.105393849313259,-0.208962172269821,-0.083034217357635,-0.007317504845560,0.086108431220055,-0.011689242906868,-0.043403293937445,-0.134450674057007,0.150062382221222,-0.064476035535336,-0.046742808073759,-0.071291558444500));
res += mul(Get(s5,-dx,-dy), float4x4(0.172170519828796,0.097861446440220,0.038869276642799,-0.151295706629753,0.099143944680691,-0.141335919499397,0.037636693567038,0.121036842465401,-0.025057068094611,0.045328292995691,-0.027590455487370,-0.097165904939175,0.112975001335144,0.078784011304379,0.081115834414959,0.131513014435768));
res += mul(Get(s5,-dx,0), float4x4(0.035388208925724,0.064108006656170,-0.072925493121147,-0.176522597670555,0.070520251989365,-0.307562589645386,0.012412907555699,-0.296595841646194,-0.072547599673271,0.200709521770477,0.012626978568733,-0.115348041057587,0.113663628697395,-0.011470291763544,0.133194968104362,0.144086629152298));
res += mul(Get(s5,-dx,dy), float4x4(-0.012952546589077,0.320159792900085,-0.017914248630404,0.058244381099939,-0.165679886937141,-0.006960784085095,-0.076987691223621,-0.137394145131111,-0.165656760334969,0.018299333751202,0.077403537929058,-0.131675451993942,0.010026925243437,-0.052548099309206,-0.051368635147810,0.103492155671120));
res += mul(Get(s5,0,-dy), float4x4(-0.011151512153447,0.269132822751999,-0.116983897984028,0.237709283828735,0.117212072014809,-0.286392152309418,0.014711624942720,0.025144234299660,0.048043172806501,0.116382852196693,0.092173211276531,0.148616001009941,0.051131822168827,0.043077621608973,0.057209532707930,0.162607252597809));
res += mul(Get(s5,0,0), float4x4(0.058076899498701,0.343610346317291,0.074521161615849,0.209952592849731,0.109837591648102,-0.269751369953156,-0.069096483290195,0.149101600050926,-0.129725590348244,-0.039016433060169,0.078985445201397,0.047261063009501,0.281058073043823,-0.160072505474091,0.052542693912983,-0.016368601471186));
res += mul(Get(s5,0,dy), float4x4(0.018360089510679,0.176815032958984,-0.042887255549431,0.159380644559860,-0.142889797687531,-0.015315121971071,-0.081752255558968,-0.190857142210007,-0.407409429550171,0.085616052150726,0.193223819136620,-0.092332981526852,-0.177354723215103,0.014234227128327,-0.057871930301189,0.242339134216309));
res += mul(Get(s5,dx,-dy), float4x4(0.077050879597664,0.009802421554923,0.068007826805115,-0.127529934048653,0.040122885257006,-0.543501436710358,-0.025462467223406,0.060165740549564,-0.029347568750381,0.089694812893867,0.033061400055885,-0.052470080554485,0.021027423441410,-0.186370268464088,0.014499967917800,-0.012936084531248));
res += mul(Get(s5,dx,0), float4x4(0.048665281385183,0.442214787006378,-0.075656525790691,0.011834637261927,-0.037184026092291,-0.132634714245796,0.158374503254890,0.057608801871538,-0.059715263545513,0.200306966900826,0.096280246973038,0.048548936843872,0.041480764746666,-0.144175082445145,0.230676680803299,0.142289832234383));
res += mul(Get(s5,dx,dy), float4x4(0.019119465723634,-0.038964405655861,0.016988627612591,-0.059888575226068,-0.166983529925346,-0.068807445466518,0.013537719845772,0.130457103252411,-0.177750512957573,0.145559668540955,0.122719205915928,-0.015530842356384,-0.181142270565033,-0.182642191648483,0.073271080851555,-0.053285479545593));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.305995047092438,0.044467221945524,0.703961908817291,0.049227703362703) * min(float4(0, 0, 0, 0), res);
return res;
}
