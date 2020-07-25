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
res += mul(Get(s0,-dx,-dy), float4x4(-0.106168150901794,-0.047197084873915,-0.077849484980106,0.017098827287555,0.062760807573795,0.019079746678472,0.068821102380753,-0.069525539875031,0.050761345773935,-0.041245512664318,-0.030731810256839,-0.048701170831919,0.031653847545385,0.059653647243977,-0.049130514264107,-0.001454072422348));
res += mul(Get(s0,-dx,0), float4x4(-0.136131212115288,0.012641400098801,-0.128076195716858,0.063150644302368,-0.021448584273458,0.035465151071548,0.020235544070601,-0.064835727214813,0.079695113003254,0.007223258260638,0.061741225421429,0.026347104460001,0.094450779259205,0.000901010353118,0.076686747372150,0.003634476102889));
res += mul(Get(s0,-dx,dy), float4x4(-0.030816139653325,-0.069163598120213,0.096042670309544,-0.043155569583178,-0.089033648371696,-0.004490998107940,0.077413521707058,-0.067558519542217,0.053516812622547,0.054321046918631,0.057493988424540,0.047781795263290,-0.008400853723288,-0.006606705486774,-0.015543662011623,-0.094875350594521));
res += mul(Get(s0,0,-dy), float4x4(-0.008459025062621,0.035540252923965,-0.007768088486046,-0.037601482123137,0.014929804019630,-0.001508314395323,0.094328723847866,0.037922445684671,-0.044153656810522,-0.021999230608344,0.015522843226790,0.001239540521055,0.088519774377346,-0.025219550356269,-0.055815346539021,0.001655014115386));
res += mul(Get(s0,0,0), float4x4(0.034684754908085,0.085556186735630,-0.139181599020958,0.074096336960793,-0.033421680331230,0.005107978824526,0.047778394073248,-0.013211988843977,0.001002094242722,-0.010689015500247,0.060837373137474,0.026322592049837,0.162048280239105,-0.122897244989872,0.090719729661942,0.001549090491608));
res += mul(Get(s0,0,dy), float4x4(0.143814876675606,-0.035516761243343,0.181853786110878,0.088119789958000,-0.024471331387758,-0.010421028360724,0.075077883899212,-0.089865177869797,0.013481948524714,-0.039599049836397,0.026190660893917,-0.007779278326780,-0.065745525062084,-0.068630188703537,-0.041186839342117,-0.113570667803288));
res += mul(Get(s0,dx,-dy), float4x4(-0.055314473807812,0.000785328622442,-0.075614258646965,-0.031209975481033,0.024066757410765,-0.086312860250473,0.018347704783082,0.121979229152203,-0.016517644748092,-0.087775543332100,0.002179094357416,-0.031805224716663,-0.013839255087078,0.030828451737761,-0.001257146941498,-0.015092637389898));
res += mul(Get(s0,dx,0), float4x4(0.012311067432165,-0.039606098085642,-0.105270318686962,-0.021633272990584,0.057724859565496,-0.078941658139229,0.050494510680437,0.038105070590973,-0.013650367036462,-0.067711912095547,0.049180243164301,-0.031344637274742,-0.061023883521557,-0.012070107273757,-0.005836619064212,0.022222803905606));
res += mul(Get(s0,dx,dy), float4x4(-0.057408440858126,-0.072287097573280,0.080160968005657,0.084403045475483,-0.027082830667496,-0.070268258452415,0.070986837148666,-0.005700987763703,-0.052347753196955,-0.098141461610794,0.014966651797295,0.000014923731214,-0.086147457361221,-0.146241173148155,-0.089195065200329,-0.059605631977320));
res += mul(Get(s1,-dx,-dy), float4x4(0.010795977897942,0.015509553253651,-0.013523417524993,-0.029649661853909,0.001582240452990,-0.008387138135731,-0.029168903827667,-0.070335276424885,-0.053501255810261,0.164507076144218,-0.036380767822266,-0.015039904043078,-0.127958118915558,0.045273516327143,-0.092099815607071,-0.034019697457552));
res += mul(Get(s1,-dx,0), float4x4(0.126709625124931,-0.033389586955309,-0.076095283031464,-0.013952942565084,-0.101748809218407,-0.008075295016170,-0.025197535753250,0.086244143545628,0.072332032024860,0.024838175624609,-0.014118763618171,-0.022683853283525,-0.035901371389627,0.121878482401371,-0.071548409759998,-0.075920708477497));
res += mul(Get(s1,-dx,dy), float4x4(-0.010581076145172,-0.000671388581395,-0.050083287060261,0.027358096092939,0.010633768513799,-0.009811007417738,-0.070731528103352,0.061718214303255,0.065107636153698,-0.072090186178684,-0.011468894779682,0.042201656848192,0.045019604265690,-0.022156739607453,-0.011111149564385,-0.028619924560189));
res += mul(Get(s1,0,-dy), float4x4(-0.014888992533088,0.034617546945810,0.048372145742178,-0.026412302628160,0.058560911566019,-0.021215328946710,0.011002605780959,0.055915296077728,0.039911251515150,0.164231687784195,-0.023835042491555,-0.028061496093869,-0.091840207576752,0.036904871463776,-0.108552157878876,-0.038875039666891));
res += mul(Get(s1,0,0), float4x4(0.029507711529732,0.038972340524197,-0.063445270061493,-0.024271678179502,-0.086139105260372,0.026215357705951,0.009309801273048,0.097151651978493,0.109372839331627,0.112802118062973,0.058205865323544,0.009221820160747,0.029237683862448,0.060319181531668,-0.056999586522579,-0.010280664078891));
res += mul(Get(s1,0,dy), float4x4(0.092050738632679,0.052616190165281,-0.013981790281832,0.008825107477605,-0.060820300132036,0.078114345669746,-0.059467446058989,0.042890138924122,0.130660638213158,0.071397423744202,0.065622039139271,0.090648762881756,0.098777748644352,0.040837995707989,0.015352588146925,-0.014424573630095));
res += mul(Get(s1,dx,-dy), float4x4(-0.100936450064182,0.175244778394699,0.163753554224968,-0.080108575522900,-0.000803751870990,-0.019046220928431,-0.039965968579054,0.053036339581013,-0.078234516084194,0.019379323348403,-0.021941507235169,-0.000193347586901,0.014497529715300,-0.132468909025192,-0.065950468182564,0.085652314126492));
res += mul(Get(s1,dx,0), float4x4(-0.055103112012148,0.133093670010567,0.036678243428469,-0.165696054697037,-0.002300112275407,0.017942624166608,0.001958953915164,-0.060027491301298,-0.047537907958031,0.012212450616062,0.042393557727337,0.002716948045418,0.017188247293234,-0.087294779717922,-0.109319038689137,0.245550826191902));
res += mul(Get(s1,dx,dy), float4x4(-0.058631528168917,-0.048674877732992,0.018861483782530,0.009002912789583,-0.001986342482269,0.037369113415480,-0.045356903225183,-0.097751095890999,0.041779294610023,0.039370711892843,-0.035708237439394,0.010801008902490,-0.049159973859787,0.020537273958325,-0.089857377111912,0.102743454277515));
res += mul(Get(s2,-dx,-dy), float4x4(-0.046202503144741,-0.058358617126942,0.025130515918136,0.042452640831470,0.128009632229805,-0.007823276333511,-0.006260744296014,-0.052567511796951,-0.002452512970194,0.036675479263067,0.014901370741427,0.028415344655514,0.257301658391953,-0.033510133624077,-0.016627080738544,0.022883588448167));
res += mul(Get(s2,-dx,0), float4x4(-0.068396322429180,-0.030116895213723,-0.010363788343966,0.137870192527771,0.038024425506592,0.133330658078194,-0.081039644777775,-0.063382521271706,0.062010828405619,0.076034434139729,-0.002609037794173,0.062490299344063,0.027936840429902,-0.052899789065123,-0.076162636280060,0.138648808002472));
res += mul(Get(s2,-dx,dy), float4x4(0.026496039703488,-0.035857673734426,-0.044137991964817,0.114949449896812,0.107752941548824,0.067993499338627,0.034024819731712,-0.114540003240108,0.006844625342637,0.017295198515058,-0.060100328177214,0.073180235922337,0.066660843789577,-0.088512338697910,-0.045054748654366,0.120887033641338));
res += mul(Get(s2,0,-dy), float4x4(0.016007408499718,-0.143449604511261,0.179645836353302,0.111024707555771,0.050128992646933,-0.036953676491976,-0.032845869660378,-0.013056505471468,0.089230164885521,0.014226817525923,0.036493074148893,0.016880795359612,0.171159997582436,0.042701333761215,0.095427706837654,0.055373217910528));
res += mul(Get(s2,0,0), float4x4(-0.124860547482967,0.121594592928886,0.083831265568733,0.072868227958679,0.159607991576195,-0.005456656217575,-0.022464610636234,-0.036059234291315,0.091815777122974,0.102570109069347,0.048818591982126,-0.006858967710286,0.032897859811783,0.038602977991104,0.007566271349788,-0.052980042994022));
res += mul(Get(s2,0,dy), float4x4(-0.063292317092419,0.035226829349995,-0.003856663126498,-0.002647513523698,0.085175462067127,-0.028275622054935,0.093072988092899,-0.109327465295792,0.034746699035168,0.036960385739803,0.002573783043772,-0.036922719329596,0.058480374515057,-0.079180225729942,0.025822963565588,-0.103148654103279));
res += mul(Get(s2,dx,-dy), float4x4(0.070151731371880,-0.173345521092415,0.073417998850346,0.120611593127251,0.020360603928566,-0.054736830294132,-0.053203184157610,-0.047559693455696,0.061516322195530,-0.035355858504772,0.009963941760361,0.044174551963806,0.032294258475304,0.021721592172980,0.010633199475706,0.045605640858412));
res += mul(Get(s2,dx,0), float4x4(0.029885768890381,-0.028947118669748,0.013222245499492,0.031462643295527,0.127021208405495,-0.115625962615013,-0.074602462351322,-0.005669778678566,0.011822737753391,0.068601861596107,0.025769792497158,0.095090083777905,0.032479826360941,-0.023435067385435,-0.013306067325175,-0.002129434607923));
res += mul(Get(s2,dx,dy), float4x4(0.091752335429192,-0.170457661151886,0.015019229613245,0.046772856265306,0.166654825210571,-0.059708103537560,0.024764765053988,-0.095699332654476,-0.083645060658455,0.042244937270880,-0.008485064841807,0.050925713032484,0.034798972308636,-0.145089700818062,-0.041359398514032,0.021754933521152));
res += mul(Get(s3,-dx,-dy), float4x4(-0.057914223521948,-0.018393302336335,-0.036620993167162,0.039141941815615,-0.121754579246044,0.091478832066059,0.053748898208141,-0.001449955976568,-0.070291526615620,0.085933566093445,0.007200621999800,-0.142776638269424,-0.030911508947611,0.036543793976307,-0.127184435725212,-0.135610073804855));
res += mul(Get(s3,-dx,0), float4x4(-0.023306587710977,-0.055335450917482,0.055789418518543,0.041373044252396,0.002327088266611,-0.008902847766876,0.094892702996731,0.057963058352470,0.044413093477488,0.083740390837193,0.030951188877225,-0.082194626331329,0.030364463105798,-0.073595248162746,0.046805478632450,-0.007223935332149));
res += mul(Get(s3,-dx,dy), float4x4(0.053877178579569,0.015057534910738,0.144405335187912,-0.037931349128485,-0.047415178269148,-0.018843425437808,-0.041365921497345,0.013071979396045,0.060573756694794,0.052483920007944,0.027740363031626,0.002942598424852,-0.038307268172503,-0.010448142886162,-0.018209740519524,-0.009556237608194));
res += mul(Get(s3,0,-dy), float4x4(-0.091274186968803,-0.015057526528835,-0.028463898226619,0.005983430426568,0.062216948717833,-0.060878984630108,0.095133170485497,-0.098231069743633,-0.057018134742975,0.002398231532425,-0.000459216418676,-0.044594205915928,-0.101317949593067,0.103005886077881,-0.078487060964108,-0.054567225277424));
res += mul(Get(s3,0,0), float4x4(0.000980792101473,-0.020917458459735,-0.021271200850606,0.043475423008204,-0.009685976430774,0.003806708613411,0.088343396782875,0.018786087632179,0.007296979427338,-0.024687260389328,0.033122763037682,0.070415735244751,0.088319331407547,-0.026557438075542,0.087518334388733,0.013555986806750));
res += mul(Get(s3,0,dy), float4x4(0.033993553370237,0.004008749034256,0.131840348243713,0.005671005230397,-0.058503925800323,-0.025454841554165,-0.045566413551569,0.002866782946512,0.033479712903500,-0.026234919205308,-0.052420519292355,0.150076389312744,0.078701727092266,-0.042673170566559,0.085412107408047,0.008568262681365));
res += mul(Get(s3,dx,-dy), float4x4(-0.040392719209194,-0.045423690229654,-0.019086904823780,0.050431806594133,0.014311942271888,-0.078327640891075,0.052363455295563,-0.024309292435646,-0.060414601117373,-0.030051436275244,0.035531021654606,0.060258280485868,-0.164797291159630,0.000611650233623,0.024117955937982,-0.036169342696667));
res += mul(Get(s3,dx,0), float4x4(-0.068064674735069,-0.052571833133698,-0.021868493407965,0.002331726951525,-0.059870410710573,-0.065281800925732,0.008948647417128,0.022144846618176,-0.090984307229519,-0.040277022868395,0.055963404476643,0.080076128244400,-0.121449530124664,-0.056876689195633,0.089597135782242,0.064320355653763));
res += mul(Get(s3,dx,dy), float4x4(-0.008379422128201,-0.017328720539808,0.106181614100933,-0.059274230152369,0.012496436014771,-0.131713598966599,-0.015415920875967,0.021676586940885,-0.049766533076763,-0.030302770435810,-0.049094900488853,0.096180990338326,-0.113880023360252,0.067854255437851,0.040760830044746,0.082365617156029));
return max(float4(0,0,0,0), res);
}
