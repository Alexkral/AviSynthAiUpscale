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
res += mul(Get(s0,-dx,-dy), float4x4(0.035452134907246,0.177883565425873,0.102379448711872,0.045999985188246,-0.009163026697934,0.001683141337708,-0.193702667951584,0.049085471779108,-0.053184278309345,0.079566262662411,0.055304486304522,-0.079320892691612,0.184599444270134,0.000496245454997,-0.205075651407242,0.089769013226032));
res += mul(Get(s0,-dx,0), float4x4(-0.075947038829327,-0.053307309746742,-0.091330476105213,-0.106927499175072,-0.060616664588451,0.094268195331097,-0.104097582399845,0.030360750854015,0.107411496341228,0.286908090114594,0.007302014622837,-0.070873789489269,0.021974068135023,0.191168919205666,0.048902153968811,-0.024979462847114));
res += mul(Get(s0,-dx,dy), float4x4(-0.028364259749651,0.013546094298363,0.032048333436251,0.011696968227625,-0.015329914167523,-0.030086716637015,-0.172638475894928,0.002020830521360,-0.067746154963970,-0.184427857398987,0.086407154798508,-0.219284340739250,0.167958140373230,0.168367356061935,-0.072169594466686,-0.190322846174240));
res += mul(Get(s0,0,-dy), float4x4(0.068506747484207,0.020470801740885,0.013459699228406,-0.051607981324196,0.101362653076649,-0.014073619619012,0.091933116316795,-0.188419729471207,0.046835999935865,-0.081275194883347,-0.044618949294090,0.116951435804367,0.047476664185524,0.072012796998024,0.195394590497017,-0.019171459600329));
res += mul(Get(s0,0,0), float4x4(-0.001982988556847,0.190951451659203,-0.039533618837595,0.097968697547913,0.089852452278137,-0.121115632355213,-0.081767626106739,-0.144860476255417,-0.152551755309105,-0.097682274878025,0.016292929649353,-0.129747107625008,-0.130419403314590,-0.026128510013223,-0.071885898709297,-0.145091399550438));
res += mul(Get(s0,0,dy), float4x4(-0.101485937833786,-0.107192456722260,0.020300310105085,-0.195723935961723,-0.068889603018761,0.165705278515816,-0.119689017534256,-0.033231712877750,0.192278817296028,0.155642554163933,-0.010422279126942,0.136781007051468,-0.058229446411133,0.126560628414154,0.115891724824905,0.005396067630500));
res += mul(Get(s0,dx,-dy), float4x4(0.077065795660019,0.022132130339742,0.027474272996187,-0.000785540440120,-0.094510816037655,-0.070476137101650,0.015573031269014,0.115602061152458,-0.024866836145520,-0.112879000604153,-0.146292477846146,0.047407895326614,-0.071312420070171,0.000159219634952,0.038375686854124,0.065881237387657));
res += mul(Get(s0,dx,0), float4x4(-0.096864290535450,-0.044095825403929,-0.138884723186493,-0.108927465975285,-0.033496834337711,-0.181380316615105,0.136789530515671,-0.118949420750141,0.139811411499977,-0.215884163975716,0.218268766999245,-0.072945453226566,0.072162009775639,0.041123796254396,0.197347879409790,0.101054005324841));
res += mul(Get(s0,dx,dy), float4x4(-0.185682564973831,-0.031659722328186,0.189257383346558,-0.055406589061022,0.004250675439835,0.038307420909405,0.089366719126701,-0.031703259795904,-0.095815807580948,0.085310012102127,-0.004723460413516,0.056827545166016,-0.045001994818449,-0.127131596207619,-0.066203035414219,-0.151313826441765));
res += mul(Get(s1,-dx,-dy), float4x4(0.077713154256344,0.013923181220889,0.114094212651253,0.087856300175190,0.041342429816723,-0.008594348095357,-0.075751103460789,-0.062980338931084,0.193008661270142,-0.163200259208679,0.013615678064525,-0.037514682859182,-0.088012345135212,-0.102285243570805,-0.050272870808840,0.078523039817810));
res += mul(Get(s1,-dx,0), float4x4(-0.065719120204449,-0.079644083976746,-0.034678287804127,0.150938153266907,-0.031817935407162,0.027572358027101,-0.133939117193222,-0.058186475187540,-0.151776298880577,-0.168001443147659,-0.095724917948246,0.072960712015629,0.069375209510326,0.082591369748116,0.217870920896530,-0.206606343388557));
res += mul(Get(s1,-dx,dy), float4x4(0.047091934829950,0.025961574167013,0.138896420598030,-0.025759479030967,0.063411302864552,-0.059932753443718,0.079247288405895,0.044296473264694,0.072964556515217,0.009572802111506,-0.147994130849838,0.147922217845917,-0.128371328115463,0.121288426220417,-0.037465605884790,-0.159480035305023));
res += mul(Get(s1,0,-dy), float4x4(-0.057348288595676,-0.225779056549072,0.014092222787440,0.119138069450855,0.091939888894558,-0.032544527202845,0.054707530885935,-0.221943914890289,-0.188690707087517,0.045173391699791,-0.055045206099749,-0.124627165496349,-0.182416081428528,-0.124007679522038,-0.227671787142754,-0.110588960349560));
res += mul(Get(s1,0,0), float4x4(-0.027944410219789,-0.219878375530243,-0.154558300971985,0.028033128008246,-0.137994870543480,-0.138048604130745,-0.178088068962097,-0.137836322188377,0.112068116664886,0.189608618617058,0.031986340880394,-0.163521900773048,0.069637231528759,-0.096717067062855,-0.081250160932541,-0.118775248527527));
res += mul(Get(s1,0,dy), float4x4(0.042645968496799,0.078923448920250,-0.067817158997059,0.012835066765547,0.039397768676281,0.034568205475807,0.106544524431229,-0.110924191772938,-0.083850078284740,-0.065863423049450,-0.179483383893967,0.073097229003906,0.010240635834634,0.249222636222839,-0.063686005771160,-0.078756488859653));
res += mul(Get(s1,dx,-dy), float4x4(-0.122208975255489,-0.014267434366047,0.018330149352551,-0.041517861187458,0.027072269469500,0.042438220232725,-0.053363248705864,-0.108871705830097,-0.039655826985836,0.062189988791943,-0.024332713335752,-0.013533342629671,-0.102850615978241,-0.032317847013474,-0.014495992101729,-0.158877566456795));
res += mul(Get(s1,dx,0), float4x4(-0.078174449503422,-0.050597045570612,-0.013631343841553,-0.091004773974419,-0.119906820356846,0.320017606019974,-0.091178126633167,0.041909761726856,0.029694363474846,0.076642714440823,-0.255171954631805,-0.120258778333664,0.030262455344200,-0.016355039551854,-0.092634022235870,-0.097699858248234));
res += mul(Get(s1,dx,dy), float4x4(-0.052538182586432,0.133476480841637,-0.021229229867458,-0.003124659415334,0.038566295057535,-0.033036798238754,-0.031342610716820,0.092621646821499,0.077715881168842,0.010760495439172,-0.073231652379036,0.175617367029190,0.133573815226555,-0.073274441063404,-0.017763111740351,-0.036982685327530));
res += mul(Get(s2,-dx,-dy), float4x4(0.081746086478233,-0.125552847981453,0.023450465872884,0.069840833544731,-0.092023789882660,0.207747563719749,0.063136823475361,-0.193788304924965,-0.157357603311539,0.136581107974052,0.140142530202866,0.152201518416405,-0.015265897847712,0.087836325168610,-0.032495424151421,-0.062527589499950));
res += mul(Get(s2,-dx,0), float4x4(0.060920748859644,0.022395189851522,0.117958173155785,0.017878018319607,-0.129634618759155,0.006256870459765,-0.042690139263868,0.128669992089272,-0.046103220432997,-0.103089652955532,0.220881000161171,0.283646166324615,-0.096495233476162,-0.121124148368835,-0.084483437240124,-0.033194601535797));
res += mul(Get(s2,-dx,dy), float4x4(-0.210210114717484,-0.178433269262314,-0.015312717296183,-0.140958607196808,-0.072362504899502,-0.199867665767670,0.046975109726191,0.053261913359165,-0.134060814976692,0.009798074141145,0.089108310639858,0.017847763374448,-0.017865745350718,-0.093961089849472,-0.343405663967133,0.020151432603598));
res += mul(Get(s2,0,-dy), float4x4(0.010882725007832,-0.126926541328430,-0.016090285032988,0.101663835346699,-0.003717239480466,0.005901982076466,0.200973480939865,-0.139017790555954,0.122738577425480,0.006798683200032,-0.084572263062000,0.027256244793534,0.039207454770803,0.034219693392515,-0.220671936869621,0.044304415583611));
res += mul(Get(s2,0,0), float4x4(0.191570535302162,-0.036363296210766,0.000631068076473,0.266285985708237,0.268799126148224,-0.022521689534187,-0.179696664214134,-0.119866050779819,-0.186229079961777,0.032110936939716,0.006969489157200,0.092032767832279,-0.059831354767084,0.081380076706409,-0.198551684617996,-0.076784722507000));
res += mul(Get(s2,0,dy), float4x4(0.024097554385662,0.061458867043257,-0.124370872974396,-0.048251900821924,0.094230264425278,0.012184439226985,-0.016595369204879,0.115350089967251,0.068760871887207,0.348827749490738,0.074620135128498,-0.036556720733643,-0.096629381179810,-0.044266417622566,-0.007856146432459,-0.015631053596735));
res += mul(Get(s2,dx,-dy), float4x4(-0.074918121099472,-0.064923360943794,0.039696428924799,-0.064512379467487,-0.169616863131523,0.032307103276253,0.052510388195515,0.253610998392105,-0.278796017169952,-0.093432709574699,0.303390860557556,-0.020339965820313,0.055840205401182,-0.026840571314096,-0.085976019501686,-0.084312699735165));
res += mul(Get(s2,dx,0), float4x4(0.007219783961773,-0.004720442928374,-0.045686367899179,0.142040103673935,0.164448663592339,-0.085889942944050,-0.081087455153465,-0.010494066402316,0.070795543491840,-0.116527974605560,-0.010543625801802,0.053372632712126,0.182264029979706,0.126923650503159,-0.110339030623436,-0.018033904954791));
res += mul(Get(s2,dx,dy), float4x4(0.028528410941362,0.192903593182564,-0.095847353339195,0.046732123941183,-0.100303784012794,-0.127862215042114,0.225317478179932,0.290363579988480,-0.052048094570637,0.098375193774700,-0.123238876461983,-0.082420289516449,-0.085596017539501,0.018083887174726,0.023178728297353,0.148076221346855));
res += mul(Get(s3,-dx,-dy), float4x4(-0.172498092055321,-0.001851344481111,0.190289855003357,-0.104402542114258,-0.014408885501325,-0.077763848006725,0.184788122773170,0.001635299413465,0.013079332187772,0.142500668764114,-0.100299455225468,0.037894852459431,-0.101195447146893,0.005491218063980,0.180619791150093,0.018971284851432));
res += mul(Get(s3,-dx,0), float4x4(-0.102080479264259,0.075117275118828,0.015692988410592,0.054977435618639,-0.032056715339422,0.265633940696716,0.128080889582634,-0.151016831398010,-0.068963885307312,-0.098651491105556,0.215707689523697,-0.024467047303915,0.066416703164577,0.083210013806820,0.033840507268906,0.076651513576508));
res += mul(Get(s3,-dx,dy), float4x4(-0.051628123968840,-0.005773236975074,0.066363908350468,0.075090304017067,0.040954872965813,0.024194793775678,-0.133733406662941,-0.091906972229481,-0.272025197744370,0.091076843440533,-0.071874633431435,-0.016495920717716,-0.115945942699909,0.002081167884171,-0.185617536306381,-0.115310095250607));
res += mul(Get(s3,0,-dy), float4x4(-0.166559934616089,-0.027195874601603,-0.018210638314486,0.154180318117142,0.012854566797614,0.016663189977407,-0.026360955089331,0.013188386335969,0.116797141730785,-0.125999197363853,-0.020351892337203,-0.059268176555634,0.141467899084091,-0.096448533236980,-0.197753176093102,-0.120173767209053));
res += mul(Get(s3,0,0), float4x4(-0.102848857641220,-0.174710065126419,-0.234235197305679,-0.138357654213905,0.078277356922626,-0.145515128970146,0.013894964009523,-0.021023254841566,-0.148901984095573,-0.064354963600636,-0.099454969167709,-0.036796186119318,0.122696861624718,0.019478181377053,-0.117742680013180,0.114715740084648));
res += mul(Get(s3,0,dy), float4x4(0.166360154747963,-0.101453423500061,-0.091547988355160,-0.036631606519222,0.023446910083294,-0.109175816178322,-0.026840327307582,0.078258566558361,-0.262613952159882,0.017943654209375,0.115481495857239,0.145076125860214,0.120594799518585,-0.140995919704437,0.087352313101292,-0.034889169037342));
res += mul(Get(s3,dx,-dy), float4x4(0.227124139666557,0.180190652608871,-0.070242546498775,-0.048007421195507,0.023107945919037,-0.012139976024628,0.077345341444016,0.083739839494228,-0.009676943533123,0.088450789451599,-0.212648048996925,-0.214618250727654,0.058055724948645,-0.046863999217749,0.141047850251198,0.025125244632363));
res += mul(Get(s3,dx,0), float4x4(-0.061021480709314,-0.099708527326584,0.131546169519424,0.081150010228157,-0.119719803333282,0.064197823405266,-0.062277477234602,0.054208829998970,-0.173653960227966,0.071491986513138,0.012033403851092,-0.013625364750624,0.223789840936661,0.136887595057487,-0.045157160609961,0.055270757526159));
res += mul(Get(s3,dx,dy), float4x4(-0.193530172109604,0.006005476228893,-0.050082676112652,-0.089683644473553,0.074635483324528,-0.154677495360374,0.034444250166416,0.075108714401722,-0.057421609759331,-0.189237385988235,-0.033294796943665,0.135045439004898,-0.119344443082809,-0.102092958986759,-0.071420572698116,-0.014767793938518));
return max(float4(0,0,0,0), res);
}