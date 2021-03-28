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
float4 res = float4(-0.224097639322281,0.000006165158993,-0.011993214488029,-0.108213856816292);
res += mul(Get(s0,-dx,-dy), float4x4(-0.135374203324318,0.022032925859094,-0.078446730971336,0.042554322630167,-0.020799150690436,-0.019370172172785,0.043442387133837,0.005119633860886,0.198537021875381,0.006068948190659,0.167597457766533,-0.056039001792669,0.064816229045391,0.026920884847641,0.002813999541104,0.015497504733503));
res += mul(Get(s0,-dx,0), float4x4(-0.010625293478370,-0.001219500787556,0.135721653699875,0.099064558744431,-0.119731090962887,0.035632964223623,-0.118199884891510,0.061924144625664,-0.214098691940308,-0.007760242093354,-0.078559361398220,0.031016528606415,0.099479593336582,0.163017168641090,0.058277860283852,0.032599795609713));
res += mul(Get(s0,-dx,dy), float4x4(-0.082818455994129,0.026854552328587,0.025052540004253,-0.026514880359173,-0.051580470055342,-0.085526250302792,0.024479692801833,-0.012305833399296,0.115253418684006,-0.014180588535964,0.138057380914688,-0.109649077057838,0.090048030018806,0.125018209218979,0.031784404069185,-0.003522478742525));
res += mul(Get(s0,0,-dy), float4x4(-0.154076695442200,-0.142769202589989,0.066412016749382,0.078559920191765,-0.086150221526623,-0.043704684823751,0.028864568099380,0.074556678533554,0.278850525617599,-0.135903194546700,0.178318068385124,-0.037238657474518,0.079294234514236,0.015023780055344,-0.062951095402241,-0.009955361485481));
res += mul(Get(s0,0,0), float4x4(-0.021646032109857,-0.260023504495621,-0.051461055874825,-0.031707901507616,-0.033965975046158,0.004285186994821,-0.084930717945099,0.157270699739456,-0.438253402709961,0.204360708594322,-0.149741992354393,-0.086727552115917,-0.123445749282837,0.062980055809021,-0.006176447961479,-0.034383837133646));
res += mul(Get(s0,0,dy), float4x4(-0.171916916966438,0.028640002012253,-0.024158921092749,-0.017647182568908,-0.216700568795204,-0.006841610651463,0.258359462022781,-0.198431283235550,0.149285867810249,-0.008237056434155,0.013606120832264,-0.272065669298172,0.025898734107614,-0.035410203039646,0.001912861480378,-0.083968922495842));
res += mul(Get(s0,dx,-dy), float4x4(-0.131893962621689,-0.029594752937555,0.013470887206495,-0.002411396708339,-0.089146338403225,0.020752515643835,-0.001080113928765,-0.026025753468275,0.057529650628567,0.185425728559494,-0.075779117643833,-0.056249145418406,0.011845525354147,0.083242446184158,-0.007844245992601,0.006678320933133));
res += mul(Get(s0,dx,0), float4x4(-0.116480104625225,-0.155438289046288,-0.223922878503799,0.106824994087219,0.013033663854003,-0.104810193181038,0.045056626200676,0.030852789059281,0.109235748648643,0.015622873790562,-0.014751942828298,-0.089548565447330,-0.001575860427693,-0.085093006491661,0.045879386365414,-0.022097533568740));
res += mul(Get(s0,dx,dy), float4x4(-0.158249929547310,0.117324031889439,0.057111009955406,0.023628067225218,-0.045971497893333,0.009661558084190,-0.010429156944156,-0.153727263212204,0.079729095101357,-0.018877891823649,0.036144182085991,0.105978310108185,0.006423535291106,-0.090887822210789,0.052033964544535,-0.048045091331005));
res += mul(Get(s1,-dx,-dy), float4x4(0.101048067212105,-0.006468873005360,0.093112051486969,-0.024638438597322,0.214689999818802,0.017164923250675,0.116047374904156,-0.042179983109236,0.048280090093613,0.121845647692680,0.060919210314751,0.030716754496098,0.018773833289742,0.015775540843606,-0.013796390965581,0.019786706194282));
res += mul(Get(s1,-dx,0), float4x4(0.144903719425201,0.005754905287176,0.096029117703438,0.105051636695862,0.048236280679703,-0.055941600352526,-0.183563202619553,-0.088546618819237,-0.007490104530007,-0.001103279180825,0.088475853204727,0.037696078419685,0.095438905060291,0.007947236299515,-0.169896468520164,0.080034993588924));
res += mul(Get(s1,-dx,dy), float4x4(0.233949139714241,0.206735789775848,-0.175596833229065,0.222826272249222,0.083560794591904,-0.056049220263958,-0.012680080719292,0.088694982230663,0.048941720277071,-0.064810842275620,-0.213770359754562,0.004395850468427,-0.044438838958740,-0.009722287766635,-0.062331888824701,-0.051900740712881));
res += mul(Get(s1,0,-dy), float4x4(-0.079377703368664,0.061237514019012,-0.059383455663919,-0.101223953068256,0.296463608741760,0.048849828541279,0.077167004346848,0.114847421646118,0.065713256597519,-0.109131075441837,0.016187734901905,-0.119406931102276,0.094134360551834,-0.060118749737740,0.132748991250992,-0.056244526058435));
res += mul(Get(s1,0,0), float4x4(-0.015710666775703,-0.112915039062500,-0.022454615682364,-0.067389562726021,0.372941911220551,-0.285409003496170,-0.072178900241852,0.255957722663879,-0.182008817791939,-0.008429277688265,0.004264614079148,-0.064012236893177,0.035639084875584,0.092500396072865,-0.022037409245968,0.085889682173729));
res += mul(Get(s1,0,dy), float4x4(0.025761865079403,-0.248590156435966,0.055697280913591,-0.104934863746166,0.133681222796440,0.136493384838104,-0.054372128099203,0.081129543483257,-0.004917202517390,-0.147616863250732,-0.243983462452888,0.100551858544350,-0.129285633563995,0.086413420736790,0.045136362314224,-0.121141709387302));
res += mul(Get(s1,dx,-dy), float4x4(0.055738665163517,-0.116607107222080,0.092970214784145,-0.055290598422289,0.124522425234318,0.042786356061697,0.044905938208103,-0.073109321296215,0.141214996576309,-0.127867415547371,0.055669352412224,-0.127901017665863,0.215155392885208,-0.083370074629784,0.097923904657364,-0.016412923112512));
res += mul(Get(s1,dx,0), float4x4(0.002823296235874,-0.385714143514633,-0.089507810771465,-0.030149279162288,0.099820695817471,0.110415935516357,-0.066054552793503,-0.021449584513903,-0.238342925906181,-0.142136573791504,-0.154109358787537,0.003758096368983,-0.166646331548691,-0.104814551770687,-0.103438630700111,-0.102978467941284));
res += mul(Get(s1,dx,dy), float4x4(0.087417393922806,-0.406240195035934,0.082938022911549,0.023543581366539,0.194384187459946,-0.051669631153345,0.093394421041012,0.027011102065444,0.095595531165600,0.212752744555473,0.002866243710741,0.171423226594925,0.051118943840265,0.002820383058861,-0.256830185651779,0.134561538696289));
res += mul(Get(s2,-dx,-dy), float4x4(-0.077758833765984,0.054266326129436,-0.028111727908254,0.066621497273445,-0.106299012899399,0.004044363275170,-0.050545040518045,0.053310025483370,-0.089537873864174,0.076446227729321,-0.066744416952133,0.046423729509115,0.065181344747543,0.097347088158131,0.125773966312408,-0.054599691182375));
res += mul(Get(s2,-dx,0), float4x4(-0.002554041100666,0.062283910810947,-0.028252525255084,-0.069054730236530,0.225730270147324,-0.057771299034357,0.151371598243713,0.045353423804045,-0.040621306747198,0.049964383244514,0.141620844602585,0.030304046347737,0.153135761618614,0.047893933951855,-0.127194538712502,0.230013132095337));
res += mul(Get(s2,-dx,dy), float4x4(0.112235859036446,-0.109830625355244,-0.100686326622963,0.082810416817665,0.057871628552675,-0.055617094039917,0.254922896623611,-0.193983152508736,-0.148989319801331,0.064779363572598,0.149562031030655,0.074174739420414,-0.009009049274027,0.010464034043252,-0.001145344809629,0.073581166565418));
res += mul(Get(s2,0,-dy), float4x4(0.119991630315781,-0.083364464342594,0.070665501058102,-0.025197254493833,-0.097778879106045,0.009267622604966,0.005424684379250,0.193547278642654,-0.023455208167434,0.035641156136990,-0.062588930130005,-0.011882621794939,-0.052960246801376,-0.100010313093662,0.100811466574669,-0.196920260787010));
res += mul(Get(s2,0,0), float4x4(-0.040294416248798,-0.014888959005475,-0.120048999786377,0.016502603888512,0.251230150461197,0.063825055956841,0.177322760224342,0.082714900374413,-0.078552484512329,-0.008646757341921,0.088651210069656,-0.048532094806433,0.239238902926445,-0.117272995412350,-0.078303940594196,0.111482650041580));
res += mul(Get(s2,0,dy), float4x4(0.158642441034317,0.178956523537636,-0.278851032257080,0.255539119243622,0.055134650319815,0.055235069245100,0.184615060687065,-0.162221267819405,-0.113460198044777,0.189714282751083,0.192126587033272,0.272912710905075,-0.074696473777294,0.032878745347261,0.000051464885473,-0.066504292190075));
res += mul(Get(s2,dx,-dy), float4x4(0.155329987406731,-0.089699387550354,0.087856426835060,0.024690527468920,-0.041710834950209,0.133982107043266,0.015416017733514,0.059647049754858,0.008914186619222,-0.057085290551186,0.025560472160578,0.085068143904209,-0.008103453554213,-0.014849247410893,0.097016952931881,-0.080555208027363));
res += mul(Get(s2,dx,0), float4x4(-0.065451502799988,-0.100506648421288,0.016904236748815,-0.078952945768833,0.241525873541832,0.206515088677406,0.178783535957336,0.187852486968040,0.027975372970104,-0.142415314912796,0.048415929079056,0.157867133617401,0.056696966290474,0.182451248168945,-0.066659979522228,0.110352650284767));
res += mul(Get(s2,dx,dy), float4x4(-0.051755659282207,0.010705879889429,-0.165430843830109,0.094379849731922,-0.016419531777501,-0.026803543791175,0.404785037040710,-0.217588439583778,0.052600979804993,0.077179722487926,0.060383122414351,-0.147434934973717,-0.017047967761755,-0.025451840832829,-0.036183930933475,0.103141196072102));
res += mul(Get(s3,-dx,-dy), float4x4(0.009283266030252,0.007596220821142,0.051717583090067,-0.025745715945959,0.029109358787537,0.055797215551138,-0.152327015995979,-0.058958247303963,-0.037938322871923,-0.055227819830179,-0.086344398558140,-0.063652381300926,0.019638404250145,0.021036000922322,0.091252140700817,-0.052008341997862));
res += mul(Get(s3,-dx,0), float4x4(-0.132811546325684,-0.066122196614742,-0.115356281399727,-0.138270050287247,0.169842407107353,0.045733809471130,0.249543517827988,-0.010522453114390,-0.008694326505065,-0.075459413230419,0.151176959276199,-0.058355271816254,-0.069259971380234,0.069202311336994,-0.166634306311607,0.043347917497158));
res += mul(Get(s3,-dx,dy), float4x4(0.045554302632809,-0.060248441994190,-0.005363810807467,-0.092880941927433,0.065127529203892,0.012496325187385,0.157125845551491,-0.031619720160961,-0.201103404164314,-0.014386944472790,0.031925700604916,-0.034427076578140,-0.019574044272304,0.004533872473985,0.082198657095432,0.005523435771465));
res += mul(Get(s3,0,-dy), float4x4(0.125508293509483,0.004804637748748,0.140125781297684,-0.143251314759254,0.036386020481586,0.100301690399647,0.095635019242764,0.003288832260296,-0.092363163828850,0.143051549792290,0.014359713532031,0.200701281428337,0.042992673814297,-0.087718360126019,0.137657955288887,-0.132683411240578));
res += mul(Get(s3,0,0), float4x4(-0.086949877440929,0.196396619081497,-0.298056304454803,0.141661584377289,0.074773110449314,0.027180798351765,0.115183494985104,0.066719040274620,-0.265611797571182,0.159096598625183,0.323639065027237,-0.014647648669779,-0.411414563655853,0.038411017507315,-0.241119846701622,0.526197493076324));
res += mul(Get(s3,0,dy), float4x4(-0.172845616936684,0.046640232205391,-0.150950640439987,0.137694090604782,0.057947129011154,0.170880720019341,0.132178679108620,0.044060293585062,-0.005160767119378,-0.073882184922695,0.077098742127419,-0.041044991463423,-0.068905226886272,0.137843772768974,0.070468984544277,0.051411885768175));
res += mul(Get(s3,dx,-dy), float4x4(0.056076698005199,0.059830740094185,0.016103388741612,-0.003640238195658,-0.048278246074915,0.025863071903586,0.113924369215965,-0.074288137257099,-0.000914182222914,0.048732120543718,-0.159447982907295,0.093936443328857,0.018941685557365,0.038488008081913,0.001598087954335,-0.060447499155998));
res += mul(Get(s3,dx,0), float4x4(-0.031938236206770,-0.150751367211342,-0.095703735947609,-0.087789475917816,0.003720211097971,-0.302831113338470,-0.130662783980370,-0.053772144019604,0.038298476487398,0.206752553582191,0.212516203522682,-0.007226243149489,0.011570076458156,-0.338182717561722,-0.007080223876983,-0.172037646174431));
res += mul(Get(s3,dx,dy), float4x4(0.014769101515412,-0.023961024358869,0.043140280991793,0.102899521589279,-0.013453993946314,-0.214722692966461,0.102040581405163,0.108300566673279,0.065966330468655,-0.109540037810802,-0.028004612773657,0.056196998804808,0.016511810943484,-0.145681262016296,0.067366458475590,-0.121849872171879));
res += mul(Get(s4,-dx,-dy), float4x4(0.037625651806593,-0.066968165338039,-0.037272594869137,0.052747916430235,0.045520693063736,0.022358383983374,-0.091189302504063,0.099290356040001,-0.029132882133126,-0.050062797963619,-0.087842136621475,0.086314201354980,0.033688846975565,-0.031797986477613,-0.015616377815604,-0.057810544967651));
res += mul(Get(s4,-dx,0), float4x4(-0.050435625016689,-0.108071453869343,0.022544618695974,-0.005083602853119,0.008627817966044,0.004064113833010,0.140269443392754,-0.020242387428880,0.054116256535053,-0.140618711709976,-0.043486051261425,-0.233155757188797,0.041312541812658,0.090265721082687,0.053910162299871,0.069405384361744));
res += mul(Get(s4,-dx,dy), float4x4(-0.009675174020231,-0.026200037449598,0.108955204486847,0.003994058351964,-0.206107139587402,-0.081462487578392,0.109554991126060,0.085903011262417,-0.115957617759705,-0.084229193627834,0.074795275926590,0.002954962197691,0.006026725750417,0.124133713543415,-0.055408999323845,0.086135730147362));
res += mul(Get(s4,0,-dy), float4x4(0.062934912741184,0.114389643073082,0.053009148687124,0.125519290566444,0.059813085943460,-0.122752867639065,0.037630252540112,-0.051160786300898,-0.038770768791437,-0.030526895076036,-0.026607058942318,-0.006627423223108,-0.154564261436462,0.076953195035458,0.031480960547924,-0.096842288970947));
res += mul(Get(s4,0,0), float4x4(0.444130837917328,0.108466871082783,0.148722589015961,-0.069134168326855,0.249998554587364,0.287747353315353,0.028630958870053,0.111116558313370,-0.012910637073219,0.147596448659897,-0.085771560668945,0.272602945566177,0.433617919683456,-0.195733577013016,0.184396386146545,0.062883466482162));
res += mul(Get(s4,0,dy), float4x4(0.106806755065918,0.180705815553665,-0.553763449192047,0.058315370231867,0.084258392453194,0.293981313705444,-0.007286377716810,0.060735091567039,-0.099556557834148,0.167852684855461,0.085423849523067,-0.241087973117828,0.071895785629749,-0.146734476089478,-0.157364279031754,0.267463654279709));
res += mul(Get(s4,dx,-dy), float4x4(0.036973986774683,0.039191052317619,-0.097497254610062,0.075394436717033,0.030027205124497,-0.186035245656967,0.111908271908760,-0.085299633443356,0.012511032633483,0.086524657905102,-0.014289536513388,0.063982568681240,-0.044857747852802,0.068867735564709,0.016018804162741,-0.066399693489075));
res += mul(Get(s4,dx,0), float4x4(0.126968696713448,-0.156314611434937,0.059311300516129,-0.143791228532791,0.112874105572701,0.032361336052418,0.112738221883774,-0.199801906943321,-0.180898562073708,0.001082918024622,-0.041649285703897,0.173645958304405,-0.055619552731514,0.080185577273369,-0.045427002012730,0.040397863835096));
res += mul(Get(s4,dx,dy), float4x4(0.019716287031770,0.003740804037079,0.013546452857554,0.008976005949080,0.062708407640457,-0.215128064155579,-0.149327933788300,0.052970025688410,-0.162855386734009,0.042242057621479,-0.067834362387657,-0.068098910152912,-0.152998939156532,0.160317540168762,-0.003194360993803,0.090472958981991));
res += mul(Get(s5,-dx,-dy), float4x4(-0.004755253903568,-0.032654408365488,-0.024292781949043,-0.147906765341759,0.181731522083282,-0.102844238281250,0.108268357813358,-0.008934688754380,-0.039095092564821,-0.002215506741777,-0.015607063658535,-0.114546351134777,-0.085553839802742,0.026175949722528,0.006628234405071,-0.029473584145308));
res += mul(Get(s5,-dx,0), float4x4(-0.129370257258415,0.131213054060936,-0.086337141692638,0.049150906503201,0.073409385979176,-0.215988487005234,-0.222552269697189,-0.039303671568632,0.040319241583347,-0.069456167519093,-0.334910750389099,0.105785742402077,-0.012924036011100,-0.097330212593079,-0.046631067991257,-0.141567498445511));
res += mul(Get(s5,-dx,dy), float4x4(-0.122056216001511,0.066643856465816,-0.130838811397552,0.046749856323004,0.066561810672283,-0.104129686951637,0.000877664191648,-0.032832089811563,0.012633790262043,0.076151072978973,-0.470770537853241,0.137004330754280,0.039161294698715,-0.198837593197823,0.015645340085030,-0.083779856562614));
res += mul(Get(s5,0,-dy), float4x4(-0.006454780697823,0.139534220099449,0.041919283568859,-0.088356405496597,0.063261888921261,0.087896049022675,0.133092507719994,-0.066461578011513,0.048778846859932,0.092592798173428,-0.033004660159349,0.012507766485214,0.058541037142277,0.027665402740240,-0.078744702041149,-0.006870135199279));
res += mul(Get(s5,0,0), float4x4(-0.192713364958763,-0.147359490394592,0.003665769938380,-0.071401707828045,0.074636749923229,0.180414691567421,-0.098710790276527,-0.101312905550003,0.128558784723282,-0.000406903360272,-0.040601093322039,0.010274731554091,-0.100234940648079,0.205025672912598,0.072256587445736,0.028527449816465));
res += mul(Get(s5,0,dy), float4x4(-0.110047556459904,-0.150935187935829,-0.153819084167480,-0.010750051587820,-0.155211284756660,0.148700177669525,-0.056570116430521,-0.152948752045631,0.058181788772345,-0.094791829586029,-0.286720126867294,0.368921637535095,-0.056751135736704,0.092004418373108,-0.100852757692337,-0.240192070603371));
res += mul(Get(s5,dx,-dy), float4x4(-0.108132198452950,0.037205036729574,-0.060358706861734,0.019683156162500,-0.011256264522672,0.124514885246754,0.084074839949608,0.012430300936103,-0.076276570558548,-0.061584211885929,-0.013748754747212,0.000120951452118,-0.010630272328854,0.062321294099092,-0.141964480280876,0.049245476722717));
res += mul(Get(s5,dx,0), float4x4(0.003042542841285,0.081081196665764,-0.059308506548405,0.041227631270885,-0.013546301983297,-0.095001339912415,0.045130901038647,0.075891152024269,0.018889252096415,0.065424881875515,0.087103940546513,0.052338987588882,0.137876704335213,-0.126446306705475,0.069490388035774,0.154695853590965));
res += mul(Get(s5,dx,dy), float4x4(0.015176120214164,-0.206542447209358,0.054875154048204,0.027318695560098,0.004851764068007,-0.138965100049973,-0.172582089900970,0.021044129505754,0.160910412669182,-0.076405629515648,-0.252196311950684,0.167400851845741,-0.054611071944237,-0.214217856526375,0.061379086226225,0.033766292035580));
res = max(float4(0, 0, 0, 0), res) + float4(-0.072757825255394,-0.237619683146477,-0.152898594737053,0.364808738231659) * min(float4(0, 0, 0, 0), res);
return res;
}
