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
float4 res = float4(-0.068889863789082,-0.342295408248901,-0.134365215897560,-0.270386844873428);
res += mul(Get(s0,-dx,-dy), float4x4(0.026850400492549,-0.258290648460388,0.103193052113056,0.237033560872078,-0.197808623313904,-0.112339176237583,-0.202825248241425,0.075867883861065,-0.173046931624413,-0.053101710975170,-0.097220346331596,-0.040451262146235,0.086848437786102,0.183391228318214,0.371257007122040,-0.113426998257637));
res += mul(Get(s0,-dx,0), float4x4(0.150478437542915,-0.122290223836899,-0.012667352333665,0.059318050742149,-0.121919952332973,0.089629299938679,-0.018353743478656,-0.135783657431602,-0.263380587100983,-0.015426969155669,-0.086106851696968,-0.211463078856468,-0.023854939267039,-0.175246730446815,0.051405452191830,0.079342298209667));
res += mul(Get(s0,-dx,dy), float4x4(-0.069674514234066,-0.120811179280281,-0.001676561310887,0.064476110041142,-0.101073220372200,0.021139731630683,-0.244154796004295,0.094748131930828,-0.149453043937683,0.106263250112534,-0.040070202201605,-0.191122367978096,-0.078373208642006,0.068075761198997,0.099872678518295,-0.162236362695694));
res += mul(Get(s0,0,-dy), float4x4(-0.141914933919907,0.198184058070183,-0.144909217953682,0.022617908194661,0.032015368342400,-0.084431990981102,0.037615124136209,0.072513952851295,-0.037500921636820,-0.098531574010849,-0.096093401312828,-0.040388099849224,-0.086705945432186,0.143990010023117,0.054179601371288,0.081663593649864));
res += mul(Get(s0,0,0), float4x4(-0.072520576417446,0.156434327363968,-0.157905325293541,0.094437725841999,-0.172859802842140,0.093244202435017,-0.141830593347549,-0.021057792007923,-0.169133082032204,-0.163795053958893,-0.051376812160015,-0.090978756546974,0.135835766792297,-0.007786528207362,0.069595918059349,0.121485538780689));
res += mul(Get(s0,0,dy), float4x4(0.073700860142708,-0.052179586142302,-0.100295074284077,-0.066573135554790,-0.041286256164312,-0.083946742117405,0.230946376919746,0.025631647557020,-0.098471425473690,-0.178618967533112,-0.028750985860825,-0.043973378837109,0.001512480550446,-0.097409881651402,-0.237328886985779,0.034874163568020));
res += mul(Get(s0,dx,-dy), float4x4(-0.037251088768244,-0.049121472984552,0.018011957406998,-0.071198135614395,-0.036819729954004,0.117675639688969,-0.032696224749088,0.050149951130152,0.040887888520956,0.127324417233467,0.057501386851072,0.064219161868095,-0.085384488105774,-0.007209089118987,0.009925168007612,-0.032283376902342));
res += mul(Get(s0,dx,0), float4x4(0.032287735491991,0.103706441819668,-0.137000620365143,0.127513796091080,-0.014787952415645,0.174786925315857,0.311443001031876,-0.031102074310184,-0.125303670763969,-0.031218677759171,0.322436362504959,0.159261733293533,-0.089717760682106,-0.056945551186800,0.092380821704865,-0.039799727499485));
res += mul(Get(s0,dx,dy), float4x4(0.097426421940327,0.020153678953648,-0.043396435678005,0.030384698882699,-0.165175139904022,-0.021113188937306,0.268107414245605,-0.077814251184464,0.017842425033450,0.055854171514511,0.016933584585786,-0.036534655839205,-0.182083919644356,-0.160059720277786,-0.125155046582222,-0.057742659002542));
res += mul(Get(s1,-dx,-dy), float4x4(-0.015877678990364,0.041941490024328,0.085144743323326,0.018266355618834,0.253184467554092,-0.042323008179665,0.116403408348560,0.078162081539631,-0.023876322433352,-0.102616682648659,0.021111521869898,-0.071962893009186,0.105424985289574,-0.168861135840416,-0.131421789526939,0.047197788953781));
res += mul(Get(s1,-dx,0), float4x4(-0.076627887785435,-0.020022425800562,-0.114203579723835,-0.265590339899063,-0.013705344870687,0.070377647876740,-0.134179204702377,0.128371566534042,0.126498833298683,0.188741847872734,0.219832748174667,-0.028796972706914,0.047063007950783,-0.039667338132858,0.047340389341116,0.130804076790810));
res += mul(Get(s1,-dx,dy), float4x4(-0.084512606263161,-0.132816538214684,-0.018761493265629,-0.240618318319321,0.246443510055542,-0.024432359263301,0.078931584954262,0.133283212780952,0.058246243745089,0.019486408680677,0.030120369046926,0.077480241656303,-0.126483947038651,-0.023197334259748,-0.034484058618546,-0.023740060627460));
res += mul(Get(s1,0,-dy), float4x4(0.169454753398895,-0.025396220386028,-0.032593023031950,0.028237264603376,0.057921256870031,0.078183710575104,-0.042058963328600,0.198165416717529,0.106447555124760,0.026155909523368,-0.058282174170017,-0.045064687728882,0.078708745539188,0.077678501605988,-0.147636845707893,0.220287531614304));
res += mul(Get(s1,0,0), float4x4(0.103074342012405,0.002358829602599,-0.255764812231064,-0.050269838422537,0.237133607268333,0.063622280955315,-0.063683599233627,0.055158741772175,0.061349015682936,0.165988922119141,0.225261420011520,-0.080242648720741,-0.101145915687084,0.159129425883293,0.126552298665047,0.169713318347931));
res += mul(Get(s1,0,dy), float4x4(0.071243397891521,-0.269107162952423,-0.233054652810097,-0.060050610452890,0.053207844495773,-0.003283597063273,0.192285761237144,-0.022031009197235,0.214260905981064,-0.125400885939598,0.147755652666092,-0.012232227250934,0.007150683086365,0.021143324673176,0.008842104114592,-0.050659824162722));
res += mul(Get(s1,dx,-dy), float4x4(-0.158087357878685,-0.025087177753448,0.045056283473969,0.098153375089169,-0.034739553928375,0.139721095561981,-0.223312675952911,-0.125991687178612,0.099647291004658,-0.051822416484356,0.086121998727322,0.157245412468910,-0.089700520038605,-0.119175679981709,0.016017474234104,-0.140906736254692));
res += mul(Get(s1,dx,0), float4x4(-0.146708205342293,-0.075574047863483,-0.034310162067413,-0.041603405028582,-0.052199620753527,0.103727884590626,-0.035613223910332,0.150134041905403,0.008980398997664,0.160516351461411,-0.002635770244524,0.055067099630833,0.073726817965508,-0.051119539886713,0.261452764272690,-0.135261327028275));
res += mul(Get(s1,dx,dy), float4x4(0.032271992415190,0.110393971204758,-0.031966239213943,-0.086209923028946,-0.004304172005504,-0.026680432260036,0.038296859711409,0.157474473118782,0.093772001564503,0.009423268027604,-0.011660310439765,-0.022377088665962,0.209182307124138,0.028607947751880,-0.023645456880331,-0.164282545447350));
res += mul(Get(s2,-dx,-dy), float4x4(0.079019509255886,-0.167508020997047,-0.010875355452299,0.112876228988171,0.005862129386514,-0.072886556386948,-0.052085041999817,0.075577899813652,0.163073495030403,0.077006801962852,0.110199443995953,0.228913843631744,-0.004149204120040,-0.138232648372650,0.011698462069035,0.073466703295708));
res += mul(Get(s2,-dx,0), float4x4(-0.021100863814354,0.284290492534637,0.163764342665672,0.478004425764084,0.168682336807251,0.196581736207008,0.104867078363895,0.071314968168736,-0.120543271303177,0.149378672242165,0.026754712685943,0.075196325778961,0.173694670200348,0.111835524439812,0.029338560998440,0.235011547803879));
res += mul(Get(s2,-dx,dy), float4x4(-0.189347654581070,0.140018433332443,-0.041410785168409,-0.149740949273109,0.007599839475006,-0.000098591037386,0.052785895764828,-0.011834932491183,-0.236668646335602,-0.066541478037834,0.061679475009441,0.088554948568344,-0.172353133559227,0.038507442921400,-0.029035264626145,-0.057677473872900));
res += mul(Get(s2,0,-dy), float4x4(0.042367819696665,-0.348728805780411,0.106604129076004,-0.049626983702183,-0.103750117123127,-0.070338986814022,0.110847219824791,0.070682168006897,0.099908739328384,0.303734809160233,0.006981536280364,0.066934294998646,0.032838799059391,-0.065959349274635,-0.262181580066681,0.162887752056122));
res += mul(Get(s2,0,0), float4x4(-0.309412658214569,0.625142574310303,-0.069575347006321,0.038490179926157,0.012533759698272,-0.068506516516209,-0.045794967561960,0.101718172430992,-0.207682117819786,0.062077812850475,-0.076457656919956,-0.245809167623520,0.170850485563278,0.460021108388901,0.094070993363857,0.210714951157570));
res += mul(Get(s2,0,dy), float4x4(-0.167756929993629,0.267690449953079,-0.021531235426664,-0.020724520087242,0.217393606901169,0.022739203646779,-0.035151425749063,0.061305426061153,0.171860516071320,0.020970555022359,0.021952977403998,-0.094747260212898,0.168815672397614,0.209537193179131,0.044660955667496,-0.115141771733761));
res += mul(Get(s2,dx,-dy), float4x4(0.029365776106715,-0.023496849462390,-0.004647947382182,0.046456065028906,0.023192508146167,0.042821686714888,0.058024670928717,-0.094053491950035,-0.064703032374382,0.143304124474525,0.115785419940948,0.101023815572262,0.044644337147474,-0.015768077224493,-0.056035473942757,0.003192005446181));
res += mul(Get(s2,dx,0), float4x4(0.136883795261383,-0.096631601452827,0.377238512039185,-0.001890979823656,-0.011840547434986,-0.057314943522215,0.077618196606636,-0.189945667982101,0.160502493381500,-0.096816420555115,0.031186770647764,0.126362755894661,-0.243563622236252,0.042091421782970,0.267063528299332,-0.013111879117787));
res += mul(Get(s2,dx,dy), float4x4(-0.081732496619225,-0.051306091248989,-0.198785871267319,-0.079330384731293,-0.067380078136921,0.010680872946978,-0.217919066548347,-0.115279205143452,0.013591941446066,-0.016498111188412,-0.055494930595160,0.096293292939663,-0.076437518000603,0.011417620815337,-0.004594812169671,-0.004829274024814));
res += mul(Get(s3,-dx,-dy), float4x4(0.030106611549854,0.069336846470833,-0.014404243789613,-0.089671999216080,0.206772357225418,0.069627165794373,-0.006651407573372,-0.043728698045015,-0.076629549264908,-0.082464218139648,-0.196870341897011,0.016486519947648,0.043801862746477,-0.318982481956482,-0.202440276741982,-0.207711309194565));
res += mul(Get(s3,-dx,0), float4x4(-0.170593082904816,-0.064207330346107,-0.154340878129005,-0.053247772157192,-0.017579674720764,0.074520461261272,0.022203290835023,0.029764924198389,-0.098824016749859,-0.129137456417084,-0.123581901192665,-0.079669684171677,0.031062928959727,-0.318998873233795,-0.098021768033504,-0.211733981966972));
res += mul(Get(s3,-dx,dy), float4x4(-0.000026106805308,-0.074951380491257,-0.113446801900864,-0.095785140991211,-0.049938093870878,-0.054357260465622,-0.007865767925978,0.110316194593906,-0.165234521031380,-0.136233732104301,-0.031913168728352,0.015396932139993,-0.046923249959946,-0.179983928799629,-0.201965779066086,-0.183357134461403));
res += mul(Get(s3,0,-dy), float4x4(0.019407171756029,0.063347645103931,0.112811081111431,-0.072315655648708,-0.027045896276832,-0.408887892961502,0.146209239959717,-0.282938480377197,0.168219819664955,0.019388580694795,-0.220123618841171,-0.091016896069050,-0.021217335015535,-0.300398647785187,-0.090365141630173,-0.160858333110809));
res += mul(Get(s3,0,0), float4x4(0.308635473251343,0.057739317417145,0.049012437462807,-0.020508963614702,-0.223350882530212,0.106846675276756,0.107873365283012,-0.090758293867111,-0.253227174282074,-0.031950037926435,-0.088634565472603,-0.113961003720760,-0.144873678684235,-0.280206143856049,-0.056792631745338,-0.368735522031784));
res += mul(Get(s3,0,dy), float4x4(0.266158044338226,-0.195262148976326,0.108642704784870,-0.245224192738533,-0.075286842882633,-0.089954800903797,0.092901051044464,0.033132143318653,-0.175776645541191,-0.112472347915173,-0.108755156397820,-0.100599303841591,0.112186007201672,-0.193466588854790,-0.150023117661476,-0.322823464870453));
res += mul(Get(s3,dx,-dy), float4x4(0.073543302714825,0.081395372748375,-0.171891406178474,-0.056881841272116,-0.133712574839592,0.030794722959399,-0.197247162461281,-0.165567502379417,-0.139107123017311,-0.038173340260983,-0.026094043627381,0.054091855883598,-0.065262258052826,-0.216708019375801,-0.184758320450783,-0.174632474780083));
res += mul(Get(s3,dx,0), float4x4(-0.083942599594593,-0.164652109146118,-0.213225275278091,-0.198072224855423,-0.021001335233450,-0.092190049588680,-0.089479289948940,0.035245336592197,0.116973906755447,0.094735160470009,0.112651288509369,-0.037319447845221,0.096117734909058,-0.107585147023201,-0.178732320666313,-0.178806066513062));
res += mul(Get(s3,dx,dy), float4x4(-0.175411224365234,-0.184894531965256,-0.165324255824089,-0.168108820915222,-0.098965011537075,-0.032574161887169,0.044957429170609,-0.038407139480114,0.351700723171234,0.104159675538540,0.007318302989006,-0.105582848191261,0.038165997713804,-0.168947085738182,-0.107588879764080,-0.180889099836349));
res += mul(Get(s4,-dx,-dy), float4x4(0.085691444575787,-0.016006654128432,-0.104644395411015,0.058894686400890,-0.030389070510864,-0.012506724335253,-0.040777865797281,0.203566730022430,-0.014052901417017,-0.126234576106071,0.000953486713115,-0.015057208947837,0.058244530111551,0.037331204861403,0.018507996574044,0.059201784431934));
res += mul(Get(s4,-dx,0), float4x4(-0.194224670529366,-0.032896842807531,-0.017761638388038,-0.153395622968674,0.135582432150841,0.120547711849213,-0.101828798651695,-0.067758955061436,-0.251228034496307,-0.034500762820244,0.012383162975311,-0.221336767077446,-0.309219509363174,0.010443316772580,0.127034872770309,-0.222629562020302));
res += mul(Get(s4,-dx,dy), float4x4(-0.309098482131958,0.090520940721035,-0.161169663071632,-0.147542849183083,-0.037965256720781,0.032342437654734,-0.128470629453659,0.010105695575476,-0.140079006552696,0.032261073589325,-0.002049826318398,0.143915221095085,-0.216480076313019,0.081282071769238,0.025898313149810,0.153054550290108));
res += mul(Get(s4,0,-dy), float4x4(0.302849501371384,0.095100067555904,-0.079514175653458,0.072622284293175,-0.238031074404716,0.016175467520952,-0.098421536386013,-0.123204916715622,-0.077472768723965,0.285718679428101,0.057667162269354,0.167184934020042,0.004114276263863,0.329333961009979,-0.124954432249069,0.068370118737221));
res += mul(Get(s4,0,0), float4x4(0.154552891850471,-0.111154191195965,0.046396683901548,0.176157027482986,-0.094540767371655,0.013811630196869,-0.024088054895401,0.051620956510305,0.309901028871536,-0.003367377910763,0.066769167780876,0.133075580000877,0.167111277580261,-0.262057453393936,-0.023572271689773,-0.087943807244301));
res += mul(Get(s4,0,dy), float4x4(0.087204739451408,-0.033501766622066,-0.216064035892487,0.201641991734505,-0.210216253995895,0.154525905847549,0.036371953785419,0.088077642023563,0.089886434376240,0.133436962962151,0.074176862835884,0.055335219949484,0.023604799062014,-0.200249344110489,0.082293279469013,0.030411442741752));
res += mul(Get(s4,dx,-dy), float4x4(-0.015995550900698,0.127927750349045,-0.052527904510498,-0.081876739859581,0.024552389979362,0.039471145719290,-0.194984272122383,0.047277085483074,0.132541149854660,-0.244113713502884,-0.233943179249763,-0.274461358785629,0.000399842858315,0.031285982578993,-0.103538021445274,-0.014478277415037));
res += mul(Get(s4,dx,0), float4x4(-0.026471730321646,-0.180809706449509,-0.015183961018920,-0.066684201359749,0.150519624352455,0.039042767137289,-0.155291855335236,0.019305298104882,-0.078440032899380,-0.134911343455315,-0.069711163640022,-0.143033295869827,0.172026276588440,0.175785720348358,-0.005822954233736,0.127686023712158));
res += mul(Get(s4,dx,dy), float4x4(-0.016174966469407,0.040948182344437,-0.043655946850777,0.051139455288649,-0.068487010896206,0.166595906019211,0.024940764531493,-0.005380653310567,-0.048606697469950,-0.193146511912346,-0.022378616034985,-0.028572060167789,0.150094434618950,0.021319620311260,0.106081880629063,0.025610305368900));
res += mul(Get(s5,-dx,-dy), float4x4(-0.029768338426948,0.108930319547653,0.177068352699280,-0.052061691880226,0.060356218367815,-0.055019736289978,0.043271910399199,-0.126186132431030,-0.039713833481073,0.128384575247765,0.019214479252696,0.094865024089813,-0.150277256965637,-0.058505550026894,-0.042200349271297,-0.167594581842422));
res += mul(Get(s5,-dx,0), float4x4(-0.081400558352470,0.029280738905072,0.189474523067474,0.199461534619331,0.036265630275011,0.064769722521305,-0.095245927572250,-0.051947440952063,-0.319903373718262,0.140576884150505,0.113874763250351,-0.127254277467728,-0.216002330183983,-0.022298203781247,0.007396187167615,-0.245808303356171));
res += mul(Get(s5,-dx,dy), float4x4(-0.097581759095192,0.127142056822777,0.048223234713078,0.248639121651649,0.025290930643678,-0.051580246537924,0.039927434176207,0.068734161555767,-0.135016649961472,0.062043692916632,-0.095615118741989,0.021602349355817,-0.105102226138115,-0.050855696201324,0.019317852333188,-0.083319261670113));
res += mul(Get(s5,0,-dy), float4x4(-0.024853404611349,0.035829640924931,0.091984093189240,-0.073488965630531,0.005754107143730,0.002135791117325,0.082468308508396,-0.144519135355949,-0.022164477035403,0.208297699689865,0.086827956140041,-0.057811014354229,-0.131818056106567,-0.045034505426884,0.265189498662949,-0.172724485397339));
res += mul(Get(s5,0,0), float4x4(-0.364073514938354,0.019811931997538,0.039958056062460,0.117032751441002,0.010506406426430,0.005632495973259,0.072540305554867,-0.045015837997198,0.258156567811966,-0.162840142846107,0.242728844285011,-0.297248542308807,-0.189151749014854,-0.055363785475492,0.127319559454918,0.032262727618217));
res += mul(Get(s5,0,dy), float4x4(0.125461295247078,0.038376819342375,0.030741335824132,0.002553911879659,-0.041829463094473,-0.073937542736530,0.151993051171303,0.054820425808430,0.324060976505280,-0.086726322770119,-0.004581464920193,0.074658945202827,-0.166501671075821,0.125429883599281,-0.046734187752008,0.031095238402486));
res += mul(Get(s5,dx,-dy), float4x4(-0.142014786601067,0.135669961571693,-0.119331330060959,-0.006822381168604,-0.027224356308579,-0.053020995110273,-0.052696753293276,0.027743518352509,-0.024798337370157,-0.087620198726654,-0.051172684878111,0.002922668587416,-0.199473887681961,0.000068543427915,0.047280840575695,0.000190532286069));
res += mul(Get(s5,dx,0), float4x4(-0.001848198589869,0.041760478168726,0.031988199800253,-0.080226428806782,0.020182814449072,-0.012330937199295,0.045161210000515,0.133263245224953,-0.101622357964516,-0.153719365596771,0.083231046795845,-0.085420720279217,-0.004552115686238,-0.148188307881355,0.125391185283661,0.055260747671127));
res += mul(Get(s5,dx,dy), float4x4(0.125759124755859,0.032563231885433,-0.033166240900755,0.032190151512623,0.044847182929516,-0.084349028766155,-0.092878118157387,0.070107646286488,-0.139127522706985,0.223512366414070,0.200830325484276,0.035011410713196,-0.205945998430252,0.033591769635677,-0.334240645170212,-0.127374678850174));
res = max(float4(0, 0, 0, 0), res) + float4(0.029577668756247,-0.030723709613085,0.524243414402008,0.112032562494278) * min(float4(0, 0, 0, 0), res);
return res;
}
