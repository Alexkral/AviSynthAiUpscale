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
float4 res = float4(0.040138710290194,-0.072929121553898,-0.514585256576538,0.100271321833134);
res += mul(Get(s0,-dx,-dy), float4x4(-0.125679254531860,0.302338093519211,-0.022186763584614,0.290755540132523,-0.066392146050930,0.068937964737415,0.154977947473526,-0.215799435973167,0.052178241312504,-0.187134817242622,0.208140775561333,-0.086052641272545,-0.083605810999870,0.022573474794626,0.139415428042412,0.010629462078214));
res += mul(Get(s0,-dx,0), float4x4(-0.221451446413994,0.052824359387159,0.336093455553055,0.234386011958122,0.077324643731117,-0.032387822866440,1.286857008934021,0.499636113643646,0.012483652681112,0.114794589579105,-0.320666909217834,-0.426334440708160,0.108076050877571,-0.025158209726214,-0.261382758617401,-0.175713121891022));
res += mul(Get(s0,-dx,dy), float4x4(-0.065158598124981,0.096553027629852,-0.230397298932076,-0.159839063882828,0.037479080259800,-0.130890622735023,0.129246979951859,-0.268041253089905,-0.079312831163406,-0.005406576674432,0.276040077209473,-0.053990557789803,-0.043126273900270,-0.007215410936624,0.094286523759365,-0.208432301878929));
res += mul(Get(s0,0,-dy), float4x4(0.090840004384518,-0.301434427499771,0.012605641968548,-0.033192932605743,-0.183525040745735,-0.213915720582008,-0.264914005994797,0.376385420560837,0.330966562032700,0.290694445371628,-0.015177018009126,0.187439605593681,-0.211121439933777,0.056949090212584,0.020799951627851,-0.238261193037033));
res += mul(Get(s0,0,0), float4x4(0.429575502872467,-0.084484480321407,-0.022045223042369,0.284876704216003,0.380911618471146,-0.254142284393311,-0.720579147338867,0.047775160521269,-0.264758706092834,-0.294036954641342,0.218972027301788,0.308093696832657,-0.151015520095825,-0.238007038831711,-0.016202859580517,0.167143762111664));
res += mul(Get(s0,0,dy), float4x4(-0.314756095409393,0.153333231806755,0.216230958700180,0.073887556791306,0.298936307430267,-0.079865477979183,-0.158387944102287,0.138412594795227,0.059705037623644,0.226370483636856,-0.236192926764488,-0.057820685207844,0.064164012670517,0.087439738214016,0.075133629143238,-0.167801618576050));
res += mul(Get(s0,dx,-dy), float4x4(0.078115075826645,0.147596791386604,0.074531339108944,-0.230355441570282,-0.034514188766479,0.254005372524261,-0.330488890409470,-0.157921642065048,0.126930758357048,-0.204545840620995,0.036929950118065,0.104171723127365,0.098152495920658,0.160825490951538,0.014783644117415,0.053940851241350));
res += mul(Get(s0,dx,0), float4x4(0.111353002488613,0.299756765365601,-0.005072952713817,-0.231613025069237,-0.111176744103432,0.465360313653946,0.013046427629888,-0.446448862552643,-0.206395700573921,-0.157008141279221,-0.019711568951607,0.191398486495018,-0.130551442503929,-0.498154103755951,-0.182397380471230,0.008490480482578));
res += mul(Get(s0,dx,dy), float4x4(-0.053012359887362,-0.344171911478043,-0.146346881985664,0.082458309829235,-0.045999605208635,-0.117722451686859,-0.437265962362289,0.107045613229275,0.000498231209349,0.094315648078918,-0.080381132662296,-0.209929183125496,0.043582830578089,-0.331384271383286,-0.087159574031830,-0.065031647682190));
res += mul(Get(s1,-dx,-dy), float4x4(0.010728892870247,-0.112965330481529,0.028946552425623,0.249990180134773,-0.179661750793457,0.002060357946903,0.095957539975643,-0.098810955882072,0.022817516699433,-0.105410978198051,0.218855351209641,-0.041705351322889,-0.040268868207932,0.132672965526581,0.000376331794541,0.146884009242058));
res += mul(Get(s1,-dx,0), float4x4(-0.038588572293520,-0.331539303064346,-0.691413938999176,-0.269326597452164,-0.004620198160410,0.128056868910789,0.159137383103371,-0.012926539406180,0.558282911777496,0.009009851142764,-0.794508755207062,-0.782903611660004,0.065683096647263,-0.001595578738488,-0.134262621402740,-0.312595427036285));
res += mul(Get(s1,-dx,dy), float4x4(0.083906725049019,-0.040409516543150,-0.090190663933754,0.043199673295021,0.072574019432068,-0.075867645442486,-0.320769459009171,0.017505696043372,0.020258942618966,-0.177226811647415,-0.193081930279732,0.007846186868846,-0.008011647500098,0.144805133342743,-0.146501094102859,-0.104785509407520));
res += mul(Get(s1,0,-dy), float4x4(0.132089957594872,0.217278093099594,-0.219045534729958,-0.164543837308884,-0.031310312449932,-0.125376373529434,0.043983675539494,0.032891340553761,0.150919690728188,0.223440855741501,0.049737405031919,-0.028232986107469,-0.225248456001282,0.064134031534195,0.046696562319994,0.133611768484116));
res += mul(Get(s1,0,0), float4x4(-0.328010141849518,-0.215711429715157,0.254078954458237,0.190890625119209,-0.196663290262222,-0.231805354356766,-0.112104728817940,-0.084960833191872,-0.524874031543732,0.164627954363823,0.173435166478157,0.234297439455986,-0.113932654261589,-0.206026852130890,-0.213811993598938,0.170410335063934));
res += mul(Get(s1,0,dy), float4x4(-0.075382664799690,0.104263022542000,-0.050885859876871,-0.108981266617775,-0.103281289339066,-0.086082391440868,-0.053280856460333,0.021645016968250,-0.318806380033493,0.234620377421379,0.173076957464218,0.056614283472300,0.198021411895752,0.190449476242065,0.062358796596527,-0.096936792135239));
res += mul(Get(s1,dx,-dy), float4x4(-0.067244902253151,0.232111066579819,-0.069504685699940,0.068098001182079,0.129574522376060,0.040671944618225,-0.193005174398422,-0.028970330953598,0.038538336753845,0.232348114252090,0.112439110875130,0.120998851954937,0.008405541069806,-0.332901626825333,0.039670195430517,-0.076134346425533));
res += mul(Get(s1,dx,0), float4x4(0.112412005662918,-0.052570890635252,0.056102871894836,0.017154783010483,-0.044558640569448,-0.044773880392313,0.180448636412621,0.393855512142181,0.115063838660717,-0.383573412895203,-0.113706089556217,0.336388289928436,0.148318603634834,0.070248976349831,-0.182287007570267,0.075624503195286));
res += mul(Get(s1,dx,dy), float4x4(0.243006557226181,0.101357400417328,-0.016757490113378,0.074713774025440,0.305736392736435,0.022160878404975,0.028985004872084,-0.006233495194465,0.012285200878978,-0.199726626276970,0.128577098250389,0.065258048474789,-0.013448675163090,0.084201253950596,0.027771933004260,-0.030989227816463));
res += mul(Get(s2,-dx,-dy), float4x4(0.111214391887188,-0.125128805637360,0.292026549577713,0.160323202610016,-0.119234979152679,0.287686944007874,-0.028983937576413,0.096836052834988,-0.035804267972708,-0.062254559248686,-0.056288234889507,-0.010302721522748,-0.037150360643864,-0.111001312732697,-0.074943497776985,0.023046156391501));
res += mul(Get(s2,-dx,0), float4x4(-0.077989369630814,-0.058557074517012,0.057589385658503,-0.236870244145393,-0.213527560234070,-0.185720562934875,-0.070140592753887,-0.254419386386871,0.068419046700001,0.073413982987404,0.096255630254745,0.048607651144266,-0.062899768352509,-0.247988730669022,0.195095479488373,0.140132725238800));
res += mul(Get(s2,-dx,dy), float4x4(-0.019884346053004,0.071713127195835,0.026469653472304,0.022312825545669,-0.121587552130222,-0.220110327005386,0.148970976471901,0.322123676538467,-0.034665491431952,0.120195180177689,0.200649604201317,0.009300814941525,0.028677573427558,-0.071214057505131,0.185427740216255,0.193514779210091));
res += mul(Get(s2,0,-dy), float4x4(-0.182293429970741,0.432762444019318,0.130541861057281,0.109273277223110,0.327085167169571,0.123868621885777,0.108162753283978,0.029611412435770,-0.002791324863210,-0.262860745191574,-0.093360640108585,0.030123587697744,-0.101682193577290,0.189631924033165,-0.024223761633039,-0.031532537192106));
res += mul(Get(s2,0,0), float4x4(-0.346716135740280,0.118621774017811,0.004534918349236,0.095501177012920,-0.265920370817184,0.003761647269130,-0.222465783357620,0.411637604236603,0.406645476818085,-0.317879766225815,-0.368432343006134,-0.268931061029434,0.230795457959175,0.124589107930660,-0.212406039237976,-0.113068334758282));
res += mul(Get(s2,0,dy), float4x4(0.095523849129677,-0.164625704288483,-0.076234839856625,0.043885305523872,-0.166980654001236,0.202374920248985,0.197150230407715,0.056375645101070,0.160312429070473,-0.327938467264175,-0.074982061982155,0.116419836878777,-0.192469701170921,0.190328896045685,-0.142616108059883,-0.005128778982908));
res += mul(Get(s2,dx,-dy), float4x4(0.208962276577950,0.310857981443405,0.137908115983009,-0.232975542545319,0.300743848085403,0.410444498062134,0.041604608297348,-0.025359863415360,0.084576658904552,-0.262509018182755,0.080446876585484,0.095630921423435,-0.048955582082272,-0.112468272447586,-0.033810991793871,-0.075890660285950));
res += mul(Get(s2,dx,0), float4x4(-0.025592166930437,-0.001379945548251,-0.024735165759921,-0.163556054234505,0.291321903467178,0.059336829930544,0.026361430063844,-0.066099070012569,-0.084354043006897,-0.721123874187469,-0.000517326174304,-0.617943823337555,0.034491028636694,0.233621627092361,0.062006432563066,0.164606153964996));
res += mul(Get(s2,dx,dy), float4x4(0.070861354470253,-0.291265368461609,-0.060460358858109,0.020123265683651,-0.006854691542685,0.446629881858826,0.183891594409943,-0.139398932456970,-0.254063785076141,-0.612603962421417,0.065402083098888,-0.540663778781891,-0.039430126547813,0.313743203878403,-0.314057618379593,-0.109601818025112));
res += mul(Get(s3,-dx,-dy), float4x4(0.181018620729446,-0.278174042701721,0.044205933809280,-0.075814865529537,0.019232533872128,-0.034395441412926,-0.051255099475384,0.035580363124609,-0.139804095029831,0.156246975064278,-0.149750277400017,-0.079477503895760,-0.136040687561035,-0.180132880806923,-0.640705347061157,-0.254564523696899));
res += mul(Get(s3,-dx,0), float4x4(0.068784356117249,0.088020920753479,-0.110316179692745,-0.331094890832901,-0.168859317898750,0.019500587135553,-0.123135998845100,-0.138351783156395,-0.107308432459831,0.260221660137177,0.293697655200958,-0.029834529384971,-0.011729273945093,-0.011811926029623,0.524376988410950,0.317643404006958));
res += mul(Get(s3,-dx,dy), float4x4(0.034457970410585,-0.069184869527817,-0.313361555337906,0.070586428046227,-0.090560771524906,0.053311370313168,-0.113554142415524,-0.052002418786287,-0.053602360188961,-0.132363304495811,-0.020499473437667,0.173193171620369,-0.081524118781090,0.006332972086966,0.226157739758492,-0.029565110802650));
res += mul(Get(s3,0,-dy), float4x4(-0.036056358367205,0.021993307396770,0.062984101474285,0.137240797281265,-0.051640588790178,-0.160556569695473,-0.067300394177437,0.272505968809128,-0.369165927171707,-0.202364027500153,0.006998323369771,-0.003316245973110,-0.442332625389099,-0.247301548719406,-0.067111708223820,0.215368643403053));
res += mul(Get(s3,0,0), float4x4(0.195624172687531,-0.157622337341309,-0.137035235762596,0.044740345329046,-0.225953206419945,-0.147411763668060,-0.031096125021577,0.053757600486279,0.225621670484543,-0.418268471956253,0.068682372570038,0.114273555576801,0.388712644577026,-0.036042682826519,-0.324429184198380,-0.183285206556320));
res += mul(Get(s3,0,dy), float4x4(-0.039780434221029,-0.126197054982185,0.070832878351212,0.145784109830856,-0.071161277592182,0.162398353219032,-0.169492304325104,-0.004215554334223,0.107976786792278,0.111347362399101,-0.222487196326256,-0.038720332086086,-0.084999516606331,0.263904541730881,0.028392218053341,0.036446686834097));
res += mul(Get(s3,dx,-dy), float4x4(-0.078745506703854,-0.009668438695371,0.049360167235136,-0.031295552849770,-0.044407412409782,-0.047488261014223,0.062848657369614,0.151031017303467,0.015820678323507,0.043560251593590,-0.033794872462749,0.044885087758303,-0.056265056133270,0.197742149233818,0.019403088837862,0.086146645247936));
res += mul(Get(s3,dx,0), float4x4(0.029438730329275,0.150170460343361,0.035809192806482,-0.016869485378265,-0.064778611063957,-0.182966470718384,-0.185406938195229,0.067876949906349,0.125353291630745,0.103847913444042,0.076456673443317,-0.239949062466621,0.082981303334236,-0.013456949032843,0.029363945126534,-0.047233723104000));
res += mul(Get(s3,dx,dy), float4x4(-0.093320615589619,-0.053866647183895,0.014607716351748,-0.024369698017836,-0.004186180420220,-0.123563908040524,-0.136054858565331,0.066078945994377,0.055345363914967,-0.034181606024504,0.011490242555737,0.023505337536335,-0.096924103796482,0.042087048292160,-0.032661486417055,-0.020333137363195));
res += mul(Get(s4,-dx,-dy), float4x4(-0.008496702648699,-0.004805017728359,0.350059211254120,0.122352384030819,0.044615052640438,0.123290404677391,-0.230278909206390,0.011266808025539,0.140167519450188,0.094754271209240,-0.238766372203827,-0.128088638186455,0.036812171339989,-0.043928392231464,0.083988629281521,-0.021569421514869));
res += mul(Get(s4,-dx,0), float4x4(-0.037472497671843,0.053091134876013,-0.105172380805016,0.104516714811325,0.105090506374836,-0.192705571651459,0.091783046722412,0.166315421462059,-0.262307435274124,-0.046754021197557,-0.200158685445786,-0.090214595198631,-0.141250297427177,-0.239409253001213,0.028179265558720,0.033524036407471));
res += mul(Get(s4,-dx,dy), float4x4(-0.106371365487576,-0.198483303189278,-0.020390452817082,0.141980916261673,0.204198554158211,0.015578889288008,-0.183362171053886,0.023796537891030,0.155676722526550,-0.166367068886757,-0.032023523002863,-0.004774064756930,0.054104171693325,-0.030538946390152,0.105829790234566,0.229118660092354));
res += mul(Get(s4,0,-dy), float4x4(0.193517103791237,0.060431085526943,-0.187885865569115,-0.206786632537842,-0.063626185059547,-0.006235664710402,-0.095733150839806,-0.147456511855125,-0.204068347811699,0.019237421452999,-0.037700541317463,-0.135096192359924,-0.046078521758318,0.182207792997360,0.063032060861588,-0.056619305163622));
res += mul(Get(s4,0,0), float4x4(0.078893758356571,-0.122580699622631,-0.240655779838562,-0.420708596706390,0.002236850559711,-0.069735229015350,-0.022431559860706,0.093517355620861,-0.348192870616913,-0.137806847691536,0.470992028713226,0.348717063665390,0.088783599436283,-0.143057808279991,0.118127912282944,0.003979277797043));
res += mul(Get(s4,0,dy), float4x4(0.066799759864807,0.350492000579834,-0.146865293383598,-0.242981582880020,-0.003989662043750,-0.111635066568851,0.077100232243538,-0.159803137183189,-0.136574283242226,-0.048660423606634,-0.008948425762355,0.087599545717239,-0.260972738265991,0.220228672027588,-0.189073801040649,0.098629653453827));
res += mul(Get(s4,dx,-dy), float4x4(0.013970241881907,-0.046681899577379,0.046839509159327,0.125904604792595,-0.108279436826706,0.112775526940823,-0.026278235018253,-0.060766845941544,-0.081044591963291,-0.187213301658630,0.011480714194477,0.127245217561722,0.044247258454561,-0.263468384742737,-0.042487096041441,-0.005868216976523));
res += mul(Get(s4,dx,0), float4x4(-0.226670518517494,-0.263444602489471,0.054533530026674,-0.073115386068821,0.054965030401945,0.049852211028337,0.051435817033052,0.019267240539193,0.163405761122704,-0.259277164936066,-0.083168067038059,0.036615099757910,-0.113286659121513,-0.267458021640778,0.229426309466362,-0.002995653077960));
res += mul(Get(s4,dx,dy), float4x4(-0.082585513591766,-0.031722281128168,0.052331257611513,-0.171757712960243,0.081632517278194,-0.144695386290550,-0.060778856277466,-0.096803195774555,0.174812078475952,0.211422517895699,-0.128814250230789,-0.160909116268158,0.125190794467926,0.154871225357056,-0.159504055976868,-0.152772784233093));
res += mul(Get(s5,-dx,-dy), float4x4(0.135850399732590,0.017789572477341,-0.091536007821560,-0.374241262674332,-0.008501428179443,-0.124398656189442,-0.113524220883846,-0.082028962671757,0.031833853572607,-0.181593492627144,-0.275338947772980,-0.092768557369709,-0.058947604149580,0.108372211456299,0.284112393856049,-0.022728873416781));
res += mul(Get(s5,-dx,0), float4x4(-0.003288152627647,-0.285699486732483,-0.476415127515793,-0.815047740936279,0.108207464218140,-0.111292600631714,-0.022995501756668,0.007867155596614,0.088321529328823,0.113643981516361,0.114392526447773,0.269446283578873,-0.064000435173512,-0.377955406904221,0.551001548767090,0.073592267930508));
res += mul(Get(s5,-dx,dy), float4x4(-0.051805619150400,-0.294994771480560,0.113994695246220,-0.023262698203325,0.089550986886024,-0.073901444673538,0.237892404198647,0.054875887930393,0.170212984085083,0.059982024133205,-0.197337701916695,-0.068202987313271,-0.094888865947723,-0.085895851254463,0.258830964565277,0.029473096132278));
res += mul(Get(s5,0,-dy), float4x4(-0.172163918614388,-0.100039750337601,0.254570275545120,-0.229267954826355,-0.062644846737385,0.312326610088348,-0.121845357120037,0.236634254455566,-0.190079003572464,0.095980994403362,0.114526309072971,0.111685402691364,0.053629662841558,-0.062239129096270,0.194571167230606,-0.012087366543710));
res += mul(Get(s5,0,0), float4x4(-0.388759970664978,-0.211506918072701,0.018285220488906,-0.517904639244080,-0.225485876202583,-0.239522084593773,-0.353100538253784,-0.185979515314102,0.451038897037506,0.369910776615143,-0.376564741134644,-0.565913915634155,0.130258351564407,0.001762492815033,0.171042099595070,0.159004628658295));
res += mul(Get(s5,0,dy), float4x4(-0.114704571664333,0.021705912426114,0.129422500729561,0.178530976176262,0.063495114445686,-0.182080850005150,-0.053767330944538,0.083166457712650,0.028398919850588,-0.448774218559265,-0.064523786306381,-0.009465924464166,-0.108377523720264,0.019476843997836,0.164750203490257,0.039903450757265));
res += mul(Get(s5,dx,-dy), float4x4(-0.051405373960733,0.052441291511059,-0.016066364943981,0.051631562411785,0.096372872591019,0.112918995320797,-0.137946292757988,-0.135309159755707,0.061174087226391,0.114647075533867,0.006676557473838,-0.100094832479954,0.155552595853806,0.193098261952400,0.108487352728844,-0.001590514788404));
res += mul(Get(s5,dx,0), float4x4(-0.005852667614818,0.150460645556450,0.098553285002708,0.155456751585007,-0.015313097275794,-0.605504095554352,-0.205439969897270,0.143331989645958,-0.173321187496185,0.273272603750229,0.152316093444824,-0.022407595068216,-0.027424329891801,0.059590313583612,-0.192182943224907,-0.097256027162075));
res += mul(Get(s5,dx,dy), float4x4(-0.025762500241399,-0.039171580225229,-0.068568207323551,0.021020771935582,0.058483086526394,0.051522549241781,-0.233004212379456,0.100859493017197,-0.064344808459282,-0.254718631505966,0.036790121346712,0.096757099032402,-0.011179554276168,0.247473925352097,-0.062276817858219,-0.004963255487382));
res = max(float4(0, 0, 0, 0), res) + float4(0.170856609940529,0.095928497612476,0.010953531600535,0.206904634833336) * min(float4(0, 0, 0, 0), res);
return res;
}
