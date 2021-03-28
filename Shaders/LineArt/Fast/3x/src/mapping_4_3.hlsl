sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.179532408714294,0.055347599089146,-0.092744320631027,-0.142336681485176);
res += mul(Get(s0,-dx,-dy), float4x4(0.083044700324535,-0.039198707789183,0.020192118361592,-0.004293808247894,0.229377746582031,-0.015636393800378,0.162707835435867,0.056738611310720,-0.317329525947571,0.035990845412016,0.071801997721195,0.004693009424955,-0.296846389770508,-0.006869023200125,-0.125288873910904,-0.016057558357716));
res += mul(Get(s0,-dx,0), float4x4(-0.212446227669716,0.010888482443988,-0.021214857697487,-0.007819020189345,0.405306369066238,0.121237516403198,-0.065808363258839,-0.107134565711021,0.113432802259922,-0.058247875422239,0.091010846197605,0.054804567247629,-0.696588933467865,0.022737657651305,0.219727784395218,0.052089825272560));
res += mul(Get(s0,-dx,dy), float4x4(0.025970330461860,-0.054814748466015,0.081287004053593,0.014997486956418,-0.012108945287764,0.060186482965946,0.004807815887034,-0.053515195846558,0.420767068862915,0.041452828794718,-0.119707182049751,-0.047243356704712,-0.278937429189682,0.111909382045269,-0.008851963095367,0.050195969641209));
res += mul(Get(s0,0,-dy), float4x4(0.054371882230043,0.114917531609535,-0.024650687351823,-0.334703594446182,-0.526336848735809,-0.109065420925617,-0.052792921662331,-0.198039442300797,0.051523119211197,0.027869835495949,0.041384156793356,0.076752856373787,-0.129583641886711,0.075181134045124,0.252944022417068,0.124446041882038));
res += mul(Get(s0,0,0), float4x4(-0.513641536235809,-0.022851672023535,-0.150316923856735,0.116513028740883,-0.396643906831741,0.363381654024124,0.474372148513794,0.239984095096588,-0.313383281230927,0.070741035044193,-0.330958992242813,-0.032765477895737,0.094834752380848,0.007761529646814,-0.161518558859825,0.331783652305603));
res += mul(Get(s0,0,dy), float4x4(0.085384801030159,0.068150520324707,-0.304474711418152,-0.063922367990017,0.012217175215483,-0.049350779503584,-0.125190660357475,-0.184229373931885,-0.470763236284256,-0.088114462792873,-0.097371183335781,0.068733803927898,-0.060345061123371,-0.105664551258087,-0.070843234658241,-0.172284409403801));
res += mul(Get(s0,dx,-dy), float4x4(0.029851745814085,0.064196392893791,0.071094520390034,-0.133847698569298,0.116238445043564,-0.055494412779808,0.172357469797134,0.020459348335862,-0.064438454806805,-0.158808186650276,-0.231174275279045,0.002627395093441,0.001703631132841,0.040071666240692,0.177793294191360,0.220616236329079));
res += mul(Get(s0,dx,0), float4x4(0.223357364535332,-0.078403070569038,-0.226348876953125,-0.847342014312744,0.127685725688934,0.243223845958710,-0.384803414344788,-0.103691846132278,0.137157037854195,0.339785128831863,-0.357268840074539,-0.041164852678776,0.089326992630959,-0.082274295389652,0.283146500587463,0.158205077052116));
res += mul(Get(s0,dx,dy), float4x4(-0.024682546034455,0.279306590557098,-0.351375222206116,0.345130383968353,-0.000906038098037,0.021107450127602,0.159701406955719,-0.181703522801399,0.210127040743828,-0.150340050458908,0.387373238801956,-0.209589973092079,0.008580131456256,-0.011376123875380,-0.077345810830593,-0.118036299943924));
res += mul(Get(s1,-dx,-dy), float4x4(0.105883970856667,0.008022907190025,-0.037399332970381,-0.007999577559531,0.021204421296716,0.033394306898117,-0.026431184262037,-0.002403280930594,0.187274798750877,0.026593938469887,0.068246699869633,-0.015937820076942,-0.257413119077682,0.056483957916498,0.044234815984964,0.130098342895508));
res += mul(Get(s1,-dx,0), float4x4(0.037342008203268,0.003865130245686,0.042568169534206,-0.022067345678806,-0.280639708042145,0.091938070952892,0.006129498593509,0.078273117542267,0.056687332689762,0.054954968392849,-0.127556532621384,-0.014412512071431,-0.606268346309662,-0.092386230826378,0.058561746031046,-0.010405923239887));
res += mul(Get(s1,-dx,dy), float4x4(0.084531657397747,-0.018767012283206,0.037959221750498,-0.049484029412270,-0.106006748974323,-0.015547358430922,-0.094743929803371,-0.139775574207306,-0.087801188230515,-0.191626489162445,0.009673213586211,0.167272031307220,-0.271728247404099,-0.035716798156500,-0.028369016945362,-0.010384863242507));
res += mul(Get(s1,0,-dy), float4x4(0.130776926875114,0.091904148459435,0.159737929701805,0.012158352881670,0.087696842849255,-0.026075519621372,-0.125771537423134,-0.129588678479195,-0.071081556379795,-0.105649530887604,-0.318480372428894,-0.323682785034180,0.239472389221191,0.034013535827398,0.152375072240829,0.334463357925415));
res += mul(Get(s1,0,0), float4x4(-0.079626858234406,-0.171127662062645,-0.089420452713966,-0.042613442987204,0.149851173162460,0.205324783921242,-0.513917982578278,-0.119611255824566,0.094601675868034,0.230846330523491,0.366703778505325,0.079586230218410,-0.356676608324051,0.335602998733521,-0.766929507255554,-0.707444429397583));
res += mul(Get(s1,0,dy), float4x4(0.033431760966778,0.077133484184742,0.110221676528454,0.123503729701042,0.187778666615486,0.095182813704014,-0.095859736204147,-0.074092045426369,-0.043037492781878,-0.470726221799850,0.293052077293396,-0.327159345149994,0.112437978386879,-0.065175041556358,-0.140124902129173,0.200504884123802));
res += mul(Get(s1,dx,-dy), float4x4(-0.038692411035299,0.044723305851221,0.073584459722042,0.029127791523933,-0.002532811602578,-0.009334906004369,-0.136666953563690,-0.077550113201141,0.033043798059225,0.017365109175444,-0.011583847925067,-0.206656664609909,0.017557375133038,-0.054248202592134,-0.078193716704845,0.085275299847126));
res += mul(Get(s1,dx,0), float4x4(0.070382192730904,-0.188019230961800,0.189054414629936,0.050700712949038,0.043614812195301,0.149833559989929,-0.139428034424782,-0.409134268760681,0.053241591900587,0.176771894097328,-0.492079049348831,-0.127704024314880,-0.059752274304628,0.007221407257020,-0.302610456943512,0.024032248184085));
res += mul(Get(s1,dx,dy), float4x4(0.033487156033516,0.020462960004807,-0.090257629752159,0.060425858944654,0.079648159444332,0.215680941939354,-0.358773589134216,-0.018215913325548,-0.103204831480980,-0.350761324167252,0.272989988327026,0.339666306972504,0.040791701525450,-0.058120977133512,0.110374264419079,-0.070121988654137));
res += mul(Get(s2,-dx,-dy), float4x4(-0.362518817186356,-0.020453780889511,-0.051493048667908,0.037986546754837,-0.255449920892715,-0.025092484429479,0.012751928530633,-0.036215540021658,0.152173221111298,0.016468970105052,0.135216727852821,0.005577722098678,0.194751575589180,0.055566146969795,0.171939775347710,-0.017327468842268));
res += mul(Get(s2,-dx,0), float4x4(-0.456945687532425,-0.126216575503349,0.109341807663441,-0.008506864309311,-0.286644548177719,0.125495672225952,0.097648784518242,0.169766485691071,0.389018595218658,-0.059768918901682,-0.144758030772209,0.134867325425148,0.646668016910553,-0.053338706493378,-0.070056706666946,0.101710721850395));
res += mul(Get(s2,-dx,dy), float4x4(-0.173633620142937,0.058632735162973,0.049029234796762,-0.006301463115960,0.001984302187338,0.076579436659813,-0.036717489361763,-0.019895678386092,0.074892111122608,-0.062583364546299,-0.007130663841963,-0.005178812425584,0.082366995513439,-0.039955999702215,0.078380897641182,-0.045801378786564));
res += mul(Get(s2,0,-dy), float4x4(0.095637999475002,-0.195702999830246,0.137015491724014,0.288893610239029,-0.197443544864655,-0.211641266942024,-0.278242319822311,0.016976499930024,0.019292965531349,0.015503647737205,-0.159350007772446,-0.178953096270561,0.218304887413979,-0.014781760983169,0.144578933715820,0.085979342460632));
res += mul(Get(s2,0,0), float4x4(0.218925267457962,-0.116738587617874,-0.314232051372528,-0.341668456792831,-0.129678979516029,-0.140083819627762,-0.025167834013700,0.544693291187286,-0.253353446722031,0.067769765853882,0.363620728254318,0.002628950169310,0.274604946374893,-0.428832471370697,0.094240367412567,0.024118166416883));
res += mul(Get(s2,0,dy), float4x4(0.003870899556205,-0.003875935217366,0.229418471455574,0.329076379537582,-0.070939205586910,-0.027036711573601,-0.173724085092545,-0.174328371882439,0.050421155989170,0.027380075305700,0.099602766335011,0.112365089356899,-0.050981298089027,0.188683092594147,-0.003308734158054,0.184036552906036));
res += mul(Get(s2,dx,-dy), float4x4(-0.064665272831917,-0.062851473689079,0.042118918150663,0.094718366861343,0.106174364686012,-0.012248694896698,-0.011076471768320,0.078929163515568,0.121431842446327,0.021189630031586,0.148373946547508,-0.070089861750603,-0.051373679190874,-0.053712021559477,-0.159394934773445,-0.201179981231689));
res += mul(Get(s2,dx,0), float4x4(-0.080657072365284,-0.234001055359840,0.461730927228928,0.113306090235710,-0.034086387604475,-0.012778106145561,-0.294873833656311,0.781911671161652,-0.007801861502230,-0.044078532606363,0.246708154678345,-0.045427232980728,-0.205304682254791,0.003402533242479,-0.097081109881401,0.089845947921276));
res += mul(Get(s2,dx,dy), float4x4(0.024191984906793,0.030556483194232,-0.167431265115738,0.024374278262258,0.039322275668383,-0.147063538432121,0.042887251824141,-0.160393208265305,-0.007105869241059,0.037858348339796,0.119180768728256,0.005589945241809,-0.006156347692013,-0.013247500173748,-0.171603485941887,0.022157732397318));
res = max(float4(0, 0, 0, 0), res) + float4(-0.015505890361965,4.299075603485107,-0.001824724371545,0.148794844746590) * min(float4(0, 0, 0, 0), res);
return res;
}
