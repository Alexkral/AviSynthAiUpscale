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
res += mul(Get(s0,-dx,-dy), float4x4(0.061992783099413,-0.135402128100395,-0.012399439699948,0.010207796469331,-0.074248395860195,0.186484351754189,0.048221677541733,0.212426826357841,-0.027694646269083,-0.135392189025879,0.181564241647720,0.098924785852432,0.203581228852272,0.019701270386577,0.057472370564938,-0.059215869754553));
res += mul(Get(s0,-dx,0), float4x4(0.043164286762476,0.016213195398450,-0.104457348585129,0.097685888409615,0.022641267627478,-0.091366961598396,-0.061166632920504,-0.046901579946280,-0.115685150027275,-0.136475220322609,-0.048348281532526,0.090265497565269,0.131874993443489,-0.046615719795227,0.131834864616394,-0.055391516536474));
res += mul(Get(s0,-dx,dy), float4x4(0.064486995339394,-0.100141167640686,0.134032249450684,-0.113666407763958,-0.014576818794012,-0.014334306120872,0.098532646894455,0.051312010735273,0.036825556308031,0.071576490998268,-0.085945606231689,-0.080282166600227,0.088804960250854,0.025566702708602,-0.128637060523033,-0.078293107450008));
res += mul(Get(s0,0,-dy), float4x4(-0.039799038320780,-0.163480803370476,-0.003747005248442,-0.196000590920448,-0.012419054284692,-0.232999071478844,0.066782906651497,0.031370371580124,0.070691853761673,-0.065265327692032,0.040308374911547,-0.048609860241413,0.090258181095123,-0.007606247905642,-0.093976818025112,0.044684331864119));
res += mul(Get(s0,0,0), float4x4(0.165345683693886,-0.021559586748481,0.037236221134663,-0.010664005763829,-0.145186334848404,0.054830331355333,-0.153368741273880,0.060991246253252,-0.188303023576736,-0.089702934026718,0.063916206359863,0.010986179113388,0.209872886538506,0.130334809422493,-0.068263798952103,0.088679030537605));
res += mul(Get(s0,0,dy), float4x4(-0.184011444449425,0.106340833008289,-0.062867254018784,-0.081091731786728,0.046868845820427,-0.004493436310440,0.082877203822136,-0.094854369759560,0.053677726536989,-0.216411828994751,-0.038429457694292,-0.083936385810375,0.095714829862118,-0.134679779410362,-0.125660240650177,0.176283061504364));
res += mul(Get(s0,dx,-dy), float4x4(0.136476382613182,-0.058116711676121,0.053525298833847,0.147480487823486,0.017113877460361,0.050472810864449,0.034981641918421,-0.126947522163391,-0.150860428810120,-0.078793637454510,-0.030175661668181,0.119158186018467,0.022757323458791,0.032856736332178,-0.053140465170145,-0.010197798721492));
res += mul(Get(s0,dx,0), float4x4(-0.106287412345409,-0.026036595925689,-0.268697828054428,0.181426420807838,0.077874474227428,0.149904772639275,-0.072159670293331,-0.035202242434025,0.131941184401512,0.096728339791298,0.098734475672245,-0.130811631679535,-0.209102332592010,0.002141059143469,-0.149420410394669,-0.106980346143246));
res += mul(Get(s0,dx,dy), float4x4(-0.107236146926880,0.242135941982269,0.120556131005287,-0.056376080960035,0.037553019821644,0.049680337309837,-0.030668463557959,-0.013543213717639,0.068482004106045,-0.055100962519646,0.178556978702545,-0.068395458161831,0.126259699463844,-0.209193438291550,-0.208302885293961,-0.127864494919777));
res += mul(Get(s1,-dx,-dy), float4x4(-0.046448618173599,0.038766697049141,0.186269685626030,0.041776169091463,-0.135195806622505,0.051215097308159,-0.135442554950714,-0.063288718461990,-0.014576515182853,-0.003115246538073,0.109417229890823,-0.067889571189880,-0.074937984347343,0.236822068691254,0.052592549473047,0.004222502931952));
res += mul(Get(s1,-dx,0), float4x4(-0.045827306807041,-0.118556112051010,0.025313030928373,0.116925328969955,-0.184073835611343,0.099326938390732,0.081907033920288,0.083931997418404,-0.078465864062309,0.042618930339813,0.018347922712564,0.116634547710419,0.109806783497334,0.016759999096394,0.253756374120712,-0.063662871718407));
res += mul(Get(s1,-dx,dy), float4x4(-0.160831972956657,-0.148266896605492,0.121175371110439,0.000607238442171,-0.144005343317986,-0.065433010458946,0.084337912499905,-0.141137376427650,-0.109585888683796,-0.174444064497948,0.028564957901835,0.001990382093936,-0.033896986395121,-0.181694135069847,-0.032719880342484,0.087026365101337));
res += mul(Get(s1,0,-dy), float4x4(-0.009631817229092,0.009512269869447,0.049588818103075,-0.183219388127327,-0.110138408839703,-0.044044446200132,-0.107457853853703,0.100204192101955,-0.049450572580099,-0.078337050974369,0.087921887636185,0.063530936837196,0.116307921707630,0.139740079641342,0.073454804718494,0.028378408402205));
res += mul(Get(s1,0,0), float4x4(0.001266842824407,0.142053857445717,0.189081117510796,-0.085890337824821,0.019206067547202,-0.002470694016665,-0.050290659070015,0.005646624136716,0.038022678345442,-0.280815601348877,0.060726270079613,0.061954002827406,-0.033189643174410,0.052901152521372,0.027494193986058,-0.152343750000000));
res += mul(Get(s1,0,dy), float4x4(0.004626463633031,0.059860177338123,0.063819900155067,0.025879448279738,0.049553297460079,-0.000977992662229,-0.086070954799652,-0.012405872344971,0.042688846588135,0.115342915058136,0.008327745832503,0.114509187638760,0.012259550392628,0.138141304254532,0.043424278497696,0.061488404870033));
res += mul(Get(s1,dx,-dy), float4x4(0.028757315129042,0.167030692100525,0.073852233588696,-0.047462206333876,-0.128943994641304,0.027506038546562,0.027375457808375,0.240186169743538,-0.165899991989136,0.080970071256161,-0.088604241609573,-0.012099318206310,-0.075602680444717,0.139752894639969,0.085810385644436,-0.067459397017956));
res += mul(Get(s1,dx,0), float4x4(-0.073062203824520,-0.040790040045977,0.103986024856567,0.046906501054764,0.070011638104916,0.045231588184834,-0.011075142771006,0.094878196716309,-0.163525596261024,-0.077765591442585,-0.022978601977229,0.202434957027435,0.004180278163403,-0.267244338989258,0.045176699757576,-0.100490912795067));
res += mul(Get(s1,dx,dy), float4x4(0.082540951669216,-0.008466814644635,-0.109511859714985,-0.081391237676144,-0.005363231059164,-0.039009705185890,-0.189020633697510,-0.164002105593681,-0.136498481035233,-0.085079073905945,-0.047602053731680,0.035923406481743,-0.007004916202277,-0.048679213970900,-0.000049981950724,0.034865759313107));
res += mul(Get(s2,-dx,-dy), float4x4(-0.029386539012194,0.235113710165024,-0.187334612011909,-0.051605686545372,0.003925963770598,-0.057599741965532,-0.093057662248611,-0.080448292195797,0.076611891388893,-0.009871491231024,-0.107583343982697,0.020103519782424,-0.149460628628731,-0.070538416504860,0.026024712249637,-0.004477885551751));
res += mul(Get(s2,-dx,0), float4x4(0.085357308387756,-0.000847298535518,-0.093724153935909,-0.038936775177717,-0.263282328844070,-0.036930795758963,-0.020761931315064,-0.083104498684406,-0.048754986375570,-0.097406335175037,-0.148169800639153,-0.037696618586779,0.031973641365767,-0.021272022277117,-0.361764013767242,0.148944318294525));
res += mul(Get(s2,-dx,dy), float4x4(-0.183290556073189,-0.050976615399122,0.145822972059250,-0.116069361567497,-0.187907278537750,0.023931123316288,-0.159174516797066,-0.072759144008160,0.030620427802205,0.060771457850933,0.068697705864906,-0.014315084554255,0.132824763655663,0.011404980905354,0.036205284297466,-0.103315390646458));
res += mul(Get(s2,0,-dy), float4x4(-0.010067716240883,-0.001229447429068,0.059806864708662,-0.045779116451740,0.006894956808537,0.212612986564636,-0.050347980111837,0.146881252527237,0.157298564910889,-0.154743790626526,0.086360603570938,0.078590057790279,-0.021038573235273,-0.056121140718460,-0.105617009103298,0.140106514096260));
res += mul(Get(s2,0,0), float4x4(-0.051266822963953,0.145252570509911,0.060983762145042,0.048201810568571,0.031503684818745,-0.134206116199493,0.115191437304020,-0.073830433189869,0.109607510268688,-0.027605801820755,-0.057876300066710,0.090967461466789,-0.011206747964025,0.020625561475754,-0.095218822360039,-0.069760978221893));
res += mul(Get(s2,0,dy), float4x4(0.006210756022483,-0.001282149809413,0.149640306830406,-0.025436392053962,0.039473850280046,-0.203867539763451,-0.029261542484164,0.097696997225285,-0.205846682190895,0.028497178107500,-0.095544755458832,-0.125556319952011,0.124805681407452,0.113559648394585,0.002985808532685,0.028498487547040));
res += mul(Get(s2,dx,-dy), float4x4(0.047196291387081,0.167760118842125,0.080803759396076,-0.016220822930336,-0.145378977060318,-0.086856834590435,0.004826136864722,0.257642626762390,0.023472523316741,-0.023567346855998,-0.025701042264700,-0.127126112580299,0.111901484429836,-0.232268661260605,-0.101752087473869,0.029495345428586));
res += mul(Get(s2,dx,0), float4x4(0.147401884198189,-0.085995756089687,0.060155082494020,-0.103008612990379,-0.028564142063260,-0.180283874273300,-0.003619953291491,0.064173333346844,0.090646408498287,0.008118182420731,-0.076996013522148,0.136647596955299,0.091257750988007,-0.055805247277021,-0.170509338378906,0.065309435129166));
res += mul(Get(s2,dx,dy), float4x4(-0.045094605535269,-0.144281551241875,0.022431826218963,-0.152369603514671,0.188365787267685,0.008273019455373,0.199160337448120,-0.007915834896266,-0.002956015523523,-0.047217890620232,0.054767668247223,-0.049330994486809,0.130784824490547,0.018371412530541,-0.065363906323910,-0.112624406814575));
res += mul(Get(s3,-dx,-dy), float4x4(-0.063358597457409,-0.005979027599096,-0.093068689107895,0.029933711513877,-0.003495651064441,-0.232991024851799,0.035595837980509,-0.153917372226715,0.021988369524479,0.024254841729999,0.196301370859146,-0.261508107185364,-0.045132447034121,0.122958071529865,0.220580756664276,0.224820226430893));
res += mul(Get(s3,-dx,0), float4x4(-0.107461303472519,0.215418353676796,-0.046422228217125,-0.030961660668254,-0.143195524811745,0.080174848437309,0.180313438177109,-0.064690954983234,0.129531994462013,-0.088473007082939,0.006171393673867,0.007809881120920,-0.058026462793350,0.107773162424564,-0.065730497241020,0.012498092837632));
res += mul(Get(s3,-dx,dy), float4x4(0.070243954658508,0.113049484789371,-0.181054487824440,0.093494035303593,0.035242058336735,-0.070961803197861,0.130036577582359,-0.205450773239136,0.128006204962730,0.104343160986900,0.039639018476009,0.173792049288750,-0.028899930417538,-0.024299586191773,0.001514948438853,0.078320495784283));
res += mul(Get(s3,0,-dy), float4x4(0.073252372443676,0.063984453678131,0.074693627655506,-0.096633628010750,0.134328499436378,0.000006864348961,0.036834497004747,-0.163398370146751,0.077837571501732,-0.009468253701925,0.089526340365410,0.053967382758856,0.212134480476379,0.040626622736454,-0.207382619380951,-0.019403723999858));
res += mul(Get(s3,0,0), float4x4(-0.087383873760700,0.079668954014778,-0.029582384973764,-0.153977736830711,-0.044351018965244,-0.029149139299989,0.002012309385464,0.071786478161812,-0.036776810884476,-0.005652927327901,0.120877996087074,0.032565761357546,0.167860195040703,-0.056247379630804,-0.058911580592394,-0.089408367872238));
res += mul(Get(s3,0,dy), float4x4(0.055605925619602,-0.113825596868992,0.005137549247593,-0.111640363931656,0.018271708860993,-0.108710601925850,-0.051872715353966,-0.112888909876347,0.021635327488184,-0.104936614632607,-0.139055714011192,-0.098181083798409,0.242731869220734,-0.085031047463417,-0.167058721184731,0.124251201748848));
res += mul(Get(s3,dx,-dy), float4x4(0.086820080876350,0.079578466713428,-0.138218626379967,-0.099885001778603,0.130348071455956,-0.048763081431389,0.049397706985474,-0.017341036349535,0.087615020573139,-0.124989025294781,-0.006964369211346,0.358496993780136,0.008002811111510,0.114554829895496,0.024054132401943,-0.054606683552265));
res += mul(Get(s3,dx,0), float4x4(-0.016831865534186,-0.030732106417418,-0.034194733947515,-0.177241340279579,0.092470832169056,0.048239853233099,-0.009182642214000,-0.073018811643124,0.207389399409294,0.129082500934601,-0.020919170230627,0.006747192237526,0.069887235760689,-0.304700225591660,0.180001214146614,-0.205440625548363));
res += mul(Get(s3,dx,dy), float4x4(0.172841161489487,-0.215824916958809,0.108556821942329,-0.130286440253258,0.010123468004167,-0.245562314987183,-0.229876711964607,0.096001796424389,0.143744915723801,-0.118261188268661,0.141948908567429,0.081311367452145,-0.177572324872017,-0.064423382282257,-0.094077363610268,0.055621325969696));
return max(float4(0,0,0,0), res);
}