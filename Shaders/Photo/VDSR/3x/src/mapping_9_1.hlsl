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
res += mul(Get(s0,-dx,-dy), float4x4(0.113922573626041,-0.074583820998669,-0.056062262505293,-0.027791609987617,0.088812097907066,0.242897152900696,0.107208453118801,-0.221664816141129,0.199555546045303,-0.053747590631247,-0.149971708655357,0.076129816472530,-0.027890451252460,-0.198737278580666,-0.104648046195507,-0.035297326743603));
res += mul(Get(s0,-dx,0), float4x4(0.022253338247538,0.011680155992508,0.077966675162315,0.145640537142754,-0.020251808688045,0.119078345596790,0.026250012218952,-0.009367538616061,-0.060193281620741,0.232988536357880,-0.162057429552078,0.159232854843140,0.191906064748764,-0.207312479615211,-0.146644130349159,0.047478184103966));
res += mul(Get(s0,-dx,dy), float4x4(-0.161044627428055,0.226098597049713,-0.068924114108086,-0.064506314694881,-0.010996357537806,0.011122100055218,0.055109068751335,-0.034780349582434,0.227794006466866,-0.144026622176170,-0.178345218300819,0.124974273145199,-0.233308076858521,-0.142927363514900,-0.091181233525276,0.198691248893738));
res += mul(Get(s0,0,-dy), float4x4(-0.049752347171307,0.079471416771412,0.003367692232132,0.037943203002214,-0.209744721651077,-0.044876512140036,-0.236913263797760,0.224451273679733,-0.017691228538752,-0.148831471800804,-0.035966884344816,-0.166554853320122,-0.189986363053322,0.024116508662701,0.098958171904087,-0.100870817899704));
res += mul(Get(s0,0,0), float4x4(0.001861038384959,-0.062985435128212,0.033336225897074,-0.140016257762909,-0.246620893478394,0.133640542626381,0.022541970014572,0.036741565912962,-0.049765739589930,0.001561816316098,-0.023334490135312,0.003423818619922,0.011547734029591,-0.091649696230888,0.128614395856857,-0.019604979082942));
res += mul(Get(s0,0,dy), float4x4(0.178744271397591,0.160022243857384,0.069063842296600,-0.059449046850204,-0.013367403298616,-0.001324839424342,0.031741611659527,0.051838643848896,-0.102508202195168,0.080950967967510,0.030281975865364,-0.301068603992462,0.116545334458351,-0.060940179973841,-0.081505686044693,0.076341681182384));
res += mul(Get(s0,dx,-dy), float4x4(0.258364558219910,-0.134604230523109,0.078752219676971,-0.036856394261122,0.087247848510742,-0.101672410964966,-0.156651243567467,-0.134220406413078,0.029010958969593,-0.163835555315018,-0.141351848840714,-0.026507329195738,0.051991626620293,0.017415618523955,-0.115531615912914,0.036736883223057));
res += mul(Get(s0,dx,0), float4x4(0.087830752134323,-0.091309972107410,-0.053173258900642,-0.052810251712799,0.064412362873554,-0.086627572774887,0.068087570369244,-0.172513484954834,-0.066002488136292,0.067431487143040,0.002722661709413,-0.006244653835893,-0.043604299426079,0.129111632704735,0.154209241271019,0.079874157905579));
res += mul(Get(s0,dx,dy), float4x4(0.038778126239777,-0.104024358093739,-0.233273014426231,-0.059795990586281,0.134842842817307,0.182406425476074,-0.050917971879244,0.069294363260269,-0.071273453533649,0.150890186429024,0.034582320600748,-0.040859464555979,0.094653204083443,-0.188019454479218,0.038376506417990,0.036758996546268));
res += mul(Get(s1,-dx,-dy), float4x4(-0.032030954957008,-0.150077104568481,0.284559398889542,0.122313164174557,-0.038130555301905,-0.124360397458076,-0.221859231591225,0.002361295977607,-0.039684329181910,-0.084880948066711,0.012932405807078,0.236616790294647,-0.017873346805573,0.126094162464142,-0.051313668489456,-0.056051906198263));
res += mul(Get(s1,-dx,0), float4x4(-0.046318281441927,-0.225787624716759,-0.051359336823225,0.114867031574249,0.070363685488701,-0.033806897699833,-0.025593033060431,-0.077352240681648,-0.025991559028625,-0.009226384572685,-0.005370246712118,-0.049671791493893,0.072445034980774,0.078562781214714,-0.072828233242035,-0.031126344576478));
res += mul(Get(s1,-dx,dy), float4x4(0.035862278193235,0.206711769104004,-0.085997164249420,-0.043029140681028,-0.062456741929054,0.060697056353092,0.315599232912064,0.031782198697329,0.123944453895092,0.002646864857525,0.122365638613701,-0.130592599511147,0.050502635538578,0.066723339259624,-0.040991194546223,0.020721215754747));
res += mul(Get(s1,0,-dy), float4x4(0.099293403327465,0.073717482388020,0.063569702208042,0.068117335438728,0.191124171018600,-0.012175200507045,-0.080334961414337,-0.043765220791101,-0.112479448318481,0.060063231736422,-0.062435824424028,-0.123002789914608,0.033071838319302,0.169194638729095,-0.044785812497139,0.051613293588161));
res += mul(Get(s1,0,0), float4x4(0.155644893646240,-0.036012709140778,0.078912347555161,0.014015879482031,-0.179029643535614,-0.010550555773079,-0.057946816086769,0.025892941281199,0.087217330932617,-0.090330682694912,-0.027966095134616,-0.052390668541193,-0.219423085451126,0.046747658401728,-0.071577124297619,0.005506576504558));
res += mul(Get(s1,0,dy), float4x4(0.082457385957241,-0.043306257575750,-0.065615750849247,-0.281253576278687,-0.105854235589504,0.092915542423725,-0.125710785388947,-0.148713514208794,-0.046093620359898,-0.018546940758824,-0.120242692530155,0.060650240629911,0.078602693974972,-0.123241923749447,0.131242915987968,0.096082434058189));
res += mul(Get(s1,dx,-dy), float4x4(0.074232727289200,-0.149744570255280,-0.181312888860703,0.010803383775055,0.064682230353355,-0.026539819315076,0.046055741608143,0.197774261236191,0.077263757586479,0.123841650784016,-0.005600611213595,0.154027208685875,0.179874792695045,-0.022121360525489,0.150220662355423,0.101983524858952));
res += mul(Get(s1,dx,0), float4x4(-0.077860824763775,0.102257080376148,-0.032981939613819,-0.050490286201239,0.184266984462738,-0.155084028840065,0.061276316642761,0.184902846813202,0.019429732114077,0.052378516644239,-0.022034410387278,-0.036306623369455,0.104271292686462,-0.042297076433897,-0.012879906222224,-0.101653710007668));
res += mul(Get(s1,dx,dy), float4x4(0.179094940423965,0.059467494487762,-0.141943275928497,-0.227705851197243,-0.082145236432552,0.010077934712172,-0.086768142879009,0.002904427936301,-0.092758268117905,-0.059984166175127,0.019348131492734,-0.015844611451030,0.250932514667511,-0.132839739322662,0.087754443287849,-0.070044212043285));
res += mul(Get(s2,-dx,-dy), float4x4(-0.164689227938652,-0.160695239901543,-0.041123412549496,-0.127496331930161,-0.144594505429268,-0.087013840675354,0.004536072257906,-0.051414638757706,-0.000087885244284,0.067014835774899,0.013324054889381,-0.041034080088139,-0.028978269547224,-0.001518831588328,-0.074149243533611,0.050363074988127));
res += mul(Get(s2,-dx,0), float4x4(0.069486759603024,-0.274947524070740,-0.050267070531845,0.119649313390255,-0.031341493129730,0.111745938658714,0.035943482071161,-0.093601651489735,-0.020054874941707,0.008288091048598,-0.252801746129990,-0.000948239816353,0.150699466466904,-0.008319614455104,0.100991435348988,0.088643901050091));
res += mul(Get(s2,-dx,dy), float4x4(0.053958907723427,-0.270383179187775,0.032840285450220,-0.087904542684555,0.234186366200447,-0.026553407311440,-0.065617345273495,0.003206240246072,0.149237990379333,0.167251110076904,-0.138126507401466,-0.055108893662691,-0.009337249211967,0.029433147981763,-0.068990901112556,0.040529534220695));
res += mul(Get(s2,0,-dy), float4x4(-0.106347016990185,-0.087764717638493,0.140344098210335,-0.111269026994705,0.115779459476471,0.029472310096025,0.122221268713474,0.314180642366409,-0.093744538724422,-0.140482753515244,0.004641685634851,-0.083040669560432,-0.130519062280655,-0.130074143409729,0.021295629441738,0.094175688922405));
res += mul(Get(s2,0,0), float4x4(0.056443985551596,-0.031681884080172,0.168443024158478,-0.132464587688446,-0.065271690487862,-0.020325755700469,0.040942784398794,0.105019204318523,-0.195994406938553,-0.156372785568237,-0.021866818889976,0.147635757923126,0.126440793275833,-0.063774615526199,-0.039157390594482,0.059558797627687));
res += mul(Get(s2,0,dy), float4x4(-0.035962630063295,-0.032840348780155,0.238279789686203,-0.029463129118085,0.021671004593372,-0.067548662424088,-0.083382196724415,0.347294747829437,0.040227226912975,0.024618670344353,-0.134069189429283,-0.114582419395447,-0.062862321734428,0.208365291357040,-0.071246497333050,0.161399409174919));
res += mul(Get(s2,dx,-dy), float4x4(-0.188588455319405,0.007432492449880,-0.097347617149353,-0.131725504994392,0.127168551087379,0.026055809110403,-0.044745262712240,-0.197574168443680,-0.043799549341202,0.058583512902260,-0.086959823966026,0.000812974525616,0.041510351002216,0.005467542912811,-0.069729544222355,-0.036196764558554));
res += mul(Get(s2,dx,0), float4x4(0.011331344954669,0.024592382833362,0.022484688088298,-0.021485518664122,0.102152943611145,0.008008464239538,0.118926145136356,-0.082055591046810,-0.007300938013941,-0.011841200292110,0.102706201374531,-0.170856818556786,-0.081833496689796,0.170051649212837,-0.177569642663002,-0.098185785114765));
res += mul(Get(s2,dx,dy), float4x4(-0.217217981815338,-0.033408284187317,0.053657673299313,-0.187800094485283,0.121622055768967,-0.215289682149887,-0.013026320375502,-0.098323866724968,-0.025691453367472,0.126270726323128,0.008731107227504,0.100281953811646,-0.260329484939575,-0.173422247171402,0.106045462191105,0.181186750531197));
res += mul(Get(s3,-dx,-dy), float4x4(0.048562075942755,-0.128628015518188,-0.156257614493370,0.237055718898773,-0.133881524205208,0.068523958325386,-0.092806831002235,-0.075945936143398,-0.120986789464951,-0.193193554878235,0.028551833704114,-0.067733258008957,0.149807631969452,-0.021617200225592,0.113479383289814,0.137754067778587));
res += mul(Get(s3,-dx,0), float4x4(0.097166322171688,-0.023773450404406,0.039820939302444,-0.131374716758728,-0.042600993067026,0.105482608079910,-0.048790909349918,-0.043598361313343,0.107350543141365,0.014645974151790,0.053783483803272,-0.042158745229244,-0.036050520837307,0.120653770864010,-0.084749586880207,0.061983697116375));
res += mul(Get(s3,-dx,dy), float4x4(0.023292243480682,-0.039589658379555,0.045964285731316,0.163048371672630,0.141507029533386,-0.123346373438835,0.126538500189781,-0.060861688107252,-0.081162706017494,-0.015148182399571,-0.078070819377899,-0.021127652376890,-0.068879440426826,-0.168339014053345,0.059974923729897,-0.033232718706131));
res += mul(Get(s3,0,-dy), float4x4(0.072083599865437,0.082744210958481,-0.001426430884749,0.022637931630015,0.009239938110113,-0.145443126559258,0.177994087338448,0.144015580415726,-0.022194899618626,-0.188876926898956,-0.179950609803200,-0.185454621911049,-0.006025796290487,0.039488598704338,-0.052738483995199,-0.166485324501991));
res += mul(Get(s3,0,0), float4x4(0.007573585491627,-0.116463415324688,0.109166592359543,0.097573593258858,-0.088034220039845,-0.239193961024284,-0.056775957345963,0.169741287827492,-0.227611228823662,-0.166127562522888,-0.124924995005131,0.229190483689308,0.043211154639721,0.217723980545998,-0.048430457711220,-0.106924243271351));
res += mul(Get(s3,0,dy), float4x4(0.194355681538582,0.024418422952294,-0.045997731387615,-0.088511750102043,0.189183473587036,0.020931247621775,-0.053817544132471,0.038952764123678,0.015255957841873,0.095624797046185,-0.065120652318001,-0.058989837765694,0.057526856660843,0.005828333087265,-0.077026098966599,-0.057572811841965));
res += mul(Get(s3,dx,-dy), float4x4(-0.176459997892380,0.056313470005989,0.038537394255400,-0.062477540224791,0.026328057050705,0.016573250293732,-0.023379707708955,-0.025322636589408,-0.117606513202190,-0.052034627646208,0.006352654658258,-0.012274632230401,0.088058300316334,-0.079445280134678,-0.117907315492630,0.173405125737190));
res += mul(Get(s3,dx,0), float4x4(-0.013182068243623,-0.124241515994072,-0.061020549386740,0.075050085783005,-0.102597415447235,-0.137748822569847,-0.044497936964035,0.167465627193451,0.009735792875290,-0.010595601983368,-0.074147477746010,0.007862862199545,0.133545204997063,-0.130454763770103,-0.031380586326122,-0.020810510963202));
res += mul(Get(s3,dx,dy), float4x4(-0.087533697485924,-0.082555718719959,-0.005238915327936,-0.059231642633677,0.030925998464227,-0.000383293547202,0.009454875253141,0.012717702426016,-0.050864450633526,-0.053236648440361,0.015012035146356,-0.082109086215496,0.212880507111549,-0.138862252235413,0.034199479967356,-0.085146397352219));
return max(float4(0,0,0,0), res);
}
