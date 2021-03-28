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
float4 res = float4(-0.374020606279373,-0.010367368347943,-0.119242265820503,0.055406752973795);
res += mul(Get(s0,-dx,-dy), float4x4(-0.078923188149929,-0.041851270943880,0.009178611449897,0.006587412673980,-0.052629455924034,0.119007542729378,-0.040076151490211,-0.032945752143860,-0.042793150991201,-0.130129605531693,-0.135619103908539,0.048721417784691,0.066580362617970,0.248007640242577,0.040684200823307,0.205027773976326));
res += mul(Get(s0,-dx,0), float4x4(-0.158637523651123,-0.217385441064835,-0.067513346672058,-0.233554527163506,-0.008417668752372,-0.205896019935608,-0.003012722823769,-0.069086477160454,0.157947376370430,0.089421659708023,-0.042930480092764,-0.113672994077206,0.028898322954774,-0.010709952563047,0.074059791862965,0.105739384889603));
res += mul(Get(s0,-dx,dy), float4x4(-0.003823120146990,-0.042573884129524,-0.166518405079842,-0.124605469405651,-0.034161090850830,0.077350288629532,0.154112711548805,0.063402011990547,-0.014406356960535,0.068704381585121,0.028830122202635,0.003485301742330,0.029016440734267,-0.055888839066029,0.134181246161461,0.034217335283756));
res += mul(Get(s0,0,-dy), float4x4(0.177290171384811,0.048186283558607,-0.076963216066360,0.164545372128487,0.031543191522360,-0.091427735984325,-0.233732104301453,0.196276962757111,-0.228305980563164,-0.245715051889420,-0.238821238279343,-0.005694181658328,-0.018439183011651,-0.035117283463478,-0.087682582437992,0.105054713785648));
res += mul(Get(s0,0,0), float4x4(-0.089021481573582,-0.063152000308037,0.145263016223907,-0.028273565694690,0.160766184329987,0.093722946941853,0.150846585631371,0.113519072532654,0.495272099971771,0.223171681165695,0.418239533901215,0.201365828514099,0.053641460835934,0.288693457841873,-0.033462975174189,0.110593639314175));
res += mul(Get(s0,0,dy), float4x4(-0.051625818014145,0.366505503654480,-0.106682904064655,0.035256095230579,0.140995323657990,0.159019052982330,0.303560733795166,0.041232690215111,-0.083492010831833,-0.080561973154545,-0.091070070862770,0.098185107111931,0.059979099780321,-0.186101809144020,-0.113348484039307,0.155135855078697));
res += mul(Get(s0,dx,-dy), float4x4(0.003608901286498,-0.209856018424034,-0.074478887021542,0.154461279511452,0.079487107694149,-0.068329125642776,0.033454153686762,-0.028932310640812,0.021229831501842,-0.333756357431412,0.041917365044355,-0.048485904932022,0.012605041265488,-0.194089069962502,0.010890210047364,-0.007059046998620));
res += mul(Get(s0,dx,0), float4x4(0.047469392418861,-0.191077977418900,-0.072250813245773,-0.197913259267807,-0.001993495272473,0.036246228963137,0.178893968462944,0.067092955112457,-0.147492006421089,-0.119356371462345,0.203105136752129,0.047661062330008,0.251186937093735,0.120875291526318,0.179520830512047,0.129232391715050));
res += mul(Get(s0,dx,dy), float4x4(0.149924665689468,0.356509685516357,-0.056841604411602,0.112659953534603,-0.118122689425945,-0.110123261809349,0.040480297058821,-0.066520236432552,0.032929141074419,-0.045525729656219,-0.077689886093140,-0.068011589348316,0.004577114712447,0.009084247983992,-0.047175846993923,0.023924479261041));
res += mul(Get(s1,-dx,-dy), float4x4(-0.255010664463043,-0.149414524435997,-0.097445771098137,-0.219216808676720,0.090576492249966,-0.014731369912624,-0.206784740090370,0.015233033336699,-0.003053394844756,0.020488776266575,-0.027003386989236,-0.137244567275047,-0.095515638589859,-0.072272986173630,-0.033489644527435,0.151816129684448));
res += mul(Get(s1,-dx,0), float4x4(0.016062216833234,0.113988354802132,0.166238293051720,-0.032399479299784,0.177504196763039,-0.097903721034527,0.017644356936216,-0.020152663812041,-0.057795319706202,-0.069640316069126,0.142037272453308,0.042021870613098,-0.083724305033684,0.418486356735229,0.128485724329948,0.195114195346832));
res += mul(Get(s1,-dx,dy), float4x4(-0.007277971599251,-0.034630503505468,0.087144881486893,0.043270252645016,-0.207178473472595,0.328168213367462,0.369360595941544,-0.038613419979811,0.079073488712311,0.078868746757507,-0.015914829447865,-0.034999437630177,-0.035617657005787,-0.032972734421492,-0.092219904065132,0.099359571933746));
res += mul(Get(s1,0,-dy), float4x4(0.030446462333202,0.100456953048706,0.118309698998928,-0.247246891260147,-0.360316038131714,-0.295975625514984,-0.039645247161388,-0.020843787118793,-0.104473292827606,-0.219116687774658,0.186086565256119,-0.060546237975359,0.070761732757092,0.050840802490711,0.215371802449226,-0.073404692113400));
res += mul(Get(s1,0,0), float4x4(-0.019997939467430,0.442009776830673,-0.056078888475895,-0.152529731392860,0.081682063639164,0.025854691863060,0.270524829626083,0.018446318805218,-0.044248778373003,0.045073229819536,0.085267253220081,0.019206896424294,0.062659718096256,-0.018897322937846,-0.194024994969368,0.040051799267530));
res += mul(Get(s1,0,dy), float4x4(-0.038904659450054,-0.070668242871761,0.036091007292271,0.069038160145283,-0.323223173618317,-0.386303335428238,-0.183977857232094,-0.015458882786334,0.001791229471564,-0.172838717699051,-0.058574229478836,-0.013483645394444,-0.040589392185211,0.107139475643635,-0.273218393325806,0.005500313825905));
res += mul(Get(s1,dx,-dy), float4x4(-0.026768108829856,0.237273469567299,0.059803500771523,-0.151149109005928,-0.036811083555222,0.191740065813065,-0.019707258790731,0.133168980479240,-0.174506425857544,0.173086017370224,-0.134347870945930,0.057501822710037,-0.063009187579155,-0.078239776194096,-0.041418466717005,0.012740909121931));
res += mul(Get(s1,dx,0), float4x4(0.029190896078944,0.109609887003899,-0.029494581744075,-0.115082196891308,0.083029143512249,0.087889507412910,0.207743450999260,-0.086386546492577,-0.190283581614494,0.064332716166973,-0.115624472498894,-0.118095524609089,0.011053002439439,0.002326803514734,-0.267897844314575,0.039080705493689));
res += mul(Get(s1,dx,dy), float4x4(-0.014879335649312,-0.139429017901421,0.252753168344498,-0.159140184521675,-0.077099904417992,-0.083924159407616,0.046852547675371,-0.056135531514883,0.070467770099640,0.023445423692465,-0.063327796757221,0.168539226055145,0.064157545566559,0.139720886945724,-0.010998860001564,0.096075288951397));
res += mul(Get(s2,-dx,-dy), float4x4(-0.082569301128387,-0.183249264955521,0.062615051865578,0.167427092790604,-0.085604086518288,-0.091147534549236,-0.008377932943404,0.021888546645641,-0.087818950414658,-0.000639337755274,-0.048044260591269,0.045171156525612,0.059238132089376,0.020141463726759,-0.013694449327886,-0.127700641751289));
res += mul(Get(s2,-dx,0), float4x4(0.042476940900087,0.015979768708348,0.048108514398336,-0.143304049968719,-0.050151675939560,-0.066343300044537,-0.061898104846478,-0.111251004040241,-0.027060512453318,0.126036018133163,0.018660053610802,0.080181404948235,-0.108966611325741,0.001511038048193,0.051267169415951,0.425870627164841));
res += mul(Get(s2,-dx,dy), float4x4(0.041968099772930,0.060010477900505,-0.079054653644562,0.141342878341675,0.016284450888634,-0.037086047232151,0.045065682381392,-0.131721675395966,-0.138734281063080,0.113742999732494,-0.047055773437023,-0.053315885365009,0.059608794748783,0.005642736796290,0.260891973972321,-0.060487106442451));
res += mul(Get(s2,0,-dy), float4x4(-0.143863096833229,0.183849349617958,0.048598960042000,0.034464810043573,-0.114802412688732,0.154610723257065,0.109540142118931,0.064516961574554,-0.048418805003166,-0.031417652964592,-0.044535752385855,0.162286683917046,0.202724829316139,0.141992643475533,-0.371562331914902,-0.214952796697617));
res += mul(Get(s2,0,0), float4x4(-0.314672648906708,-0.004452695604414,0.065270155668259,-0.475314915180206,-0.002502065617591,0.022033693268895,0.066098071634769,-0.103945404291153,0.008003586903214,0.105579078197479,0.047662232071161,0.161481499671936,0.034163791686296,-0.288549393415451,-0.142864391207695,-0.067482657730579));
res += mul(Get(s2,0,dy), float4x4(0.096847966313362,0.013810331001878,0.186157032847404,0.182713523507118,0.048601195216179,-0.241114944219589,0.077495492994785,-0.013063349761069,-0.100944928824902,-0.059253592044115,0.087545610964298,0.158361896872520,0.007271131966263,-0.027134533971548,0.257581830024719,-0.144369602203369));
res += mul(Get(s2,dx,-dy), float4x4(-0.037359360605478,0.170377358794212,0.187188401818275,-0.245038479566574,-0.129497960209846,-0.026420077309012,-0.062503457069397,-0.007294227369130,-0.120393715798855,0.053489517420530,-0.074470147490501,0.027348712086678,0.055706582963467,-0.227980330586433,0.014476202428341,0.273388177156448));
res += mul(Get(s2,dx,0), float4x4(0.140509963035583,0.039972499012947,0.066926896572113,-0.011033049784601,0.002219787100330,0.070885345339775,0.017783841118217,-0.088526114821434,-0.151872396469116,0.089926242828369,0.231349155306816,0.054224852472544,-0.205308437347412,0.002722425851971,0.050191611051559,-0.073915764689445));
res += mul(Get(s2,dx,dy), float4x4(0.084806859493256,-0.148569598793983,-0.083604931831360,0.006030328571796,-0.047250952571630,-0.017555946484208,-0.111784897744656,0.102234259247780,-0.236053436994553,-0.062455631792545,-0.015712743625045,0.079347819089890,0.049677990376949,-0.021426258608699,0.078198537230492,0.136919915676117));
res += mul(Get(s3,-dx,-dy), float4x4(-0.115595214068890,-0.048714529722929,0.014213806949556,-0.689441084861755,-0.026032518595457,-0.066230468451977,0.030043773353100,0.081191785633564,0.175202965736389,-0.248964220285416,-0.035047404468060,-0.035382799804211,0.074529841542244,0.001970351673663,-0.019278137013316,0.130633518099785));
res += mul(Get(s3,-dx,0), float4x4(-0.359223067760468,-0.311567246913910,0.124917276203632,-0.647104799747467,-0.099626094102859,-0.256260454654694,-0.092528961598873,0.083256237208843,0.425253450870514,0.261932790279388,0.018209487199783,-0.060388870537281,-0.163908109068871,-0.153018653392792,0.024557139724493,-0.504547417163849));
res += mul(Get(s3,-dx,dy), float4x4(0.021681096404791,-0.118295468389988,0.151742398738861,0.001651834230870,0.073699928820133,-0.196792528033257,0.029274638742208,-0.099165365099907,-0.132024258375168,-0.017313739284873,-0.016554534435272,0.150536403059959,-0.037465609610081,-0.225939333438873,-0.053464256227016,-0.210927858948708));
res += mul(Get(s3,0,-dy), float4x4(0.001720809494145,-0.014720348641276,0.027428422123194,0.069276921451092,-0.238971129059792,0.077803187072277,0.007142274640501,-0.403400510549545,0.190020143985748,-0.168173193931580,-0.108098104596138,0.123648822307587,-0.117053247988224,-0.079789027571678,0.118319123983383,-0.123737759888172));
res += mul(Get(s3,0,0), float4x4(0.210886180400848,0.333712756633759,0.148953258991241,-0.042129650712013,-0.417983263731003,-0.824463069438934,-0.406068742275238,-0.221341535449028,0.927570879459381,0.094926379621029,-0.035295136272907,0.276176869869232,0.145117387175560,-0.000841399654746,0.006387681700289,-0.123878911137581));
res += mul(Get(s3,0,dy), float4x4(-0.126713261008263,0.010531067848206,-0.293390184640884,0.127235174179077,0.045317690819502,-0.044838804751635,0.383246421813965,-0.057024423032999,-0.037593010812998,0.120806194841862,-0.141960769891739,-0.171790212392807,-0.038041062653065,0.124524250626564,0.190496072173119,-0.360913515090942));
res += mul(Get(s3,dx,-dy), float4x4(0.046850133687258,-0.006197731476277,0.077184952795506,-0.051905483007431,-0.044176597148180,-0.000386615574826,-0.022263173013926,0.094756342470646,-0.147530987858772,0.078644081950188,0.080265998840332,0.055188417434692,-0.008153105154634,0.031979624181986,0.119981616735458,-0.034750286489725));
res += mul(Get(s3,dx,0), float4x4(-0.096979036927223,0.058660723268986,0.070010371506214,-0.018420426174998,-0.077064536511898,0.112641759216785,-0.109211876988411,0.021758837625384,-0.015747444704175,-0.038745708763599,-0.017948150634766,-0.199114695191383,-0.095336690545082,-0.061301145702600,0.012856842949986,0.081642180681229));
res += mul(Get(s3,dx,dy), float4x4(0.024136450141668,0.035773977637291,0.076325707137585,0.108975917100906,-0.006592108402401,-0.031136868521571,0.224125683307648,0.060094732791185,-0.008757586590946,0.414344996213913,0.125037088990211,-0.069294914603233,-0.130914971232414,-0.022323438897729,-0.081547744572163,-0.067596480250359));
res += mul(Get(s4,-dx,-dy), float4x4(0.067653983831406,-0.089650936424732,-0.094979993999004,-0.081794790923595,0.143946930766106,0.053805761039257,0.049637243151665,0.193317353725433,-0.101792797446251,-0.009134103544056,0.074249856173992,-0.059814155101776,0.088159747421741,-0.012617593631148,-0.012782327830791,0.116418398916721));
res += mul(Get(s4,-dx,0), float4x4(0.030385790392756,-0.048870179802179,0.062406290322542,-0.123976334929466,-0.057192310690880,-0.025913938879967,-0.079815708100796,0.260945111513138,-0.194870024919510,0.132869288325310,0.003318783128634,0.008869554847479,-0.078052625060081,0.277255147695541,-0.072501137852669,0.094974547624588));
res += mul(Get(s4,-dx,dy), float4x4(0.003503402927890,-0.058591015636921,0.015676137059927,-0.044050354510546,-0.113186202943325,0.194468542933464,0.021133296191692,0.039192721247673,-0.126768752932549,-0.376071065664291,0.019354982301593,0.027635563164949,-0.056282646954060,-0.024875741451979,0.083192862570286,0.120411790907383));
res += mul(Get(s4,0,-dy), float4x4(-0.287146896123886,-0.074403196573257,0.085146911442280,-0.085036002099514,0.075910754501820,0.044951695948839,0.019996287301183,-0.159488394856453,-0.058304835110903,0.339111149311066,-0.179608911275864,-0.084628075361252,0.015397286973894,0.033840678632259,-0.016442565247416,-0.245279103517532));
res += mul(Get(s4,0,0), float4x4(0.030845746397972,-0.180406674742699,0.208702281117439,-0.386977493762970,-0.090317942202091,0.112286873161793,0.236836627125740,-0.070709384977818,-0.053805310279131,0.450497299432755,0.241615802049637,0.249221041798592,-0.014626142568886,0.183762341737747,-0.030487308278680,0.097214654088020));
res += mul(Get(s4,0,dy), float4x4(-0.143068015575409,0.025423824787140,0.126585572957993,-0.316763639450073,-0.159595727920532,-0.487818539142609,-0.299358904361725,-0.108884260058403,-0.308427691459656,-0.427380532026291,-0.261352300643921,0.001529614790343,0.416394680738449,-0.008868024684489,-0.144312903285027,-0.009175155311823));
res += mul(Get(s4,dx,-dy), float4x4(-0.141836404800415,-0.104775533080101,-0.077538527548313,0.114824302494526,0.206994399428368,-0.064224444329739,0.207548558712006,-0.030304102227092,-0.100426428020000,-0.023096401244402,-0.005940187256783,0.119507431983948,0.151517480611801,-0.080855138599873,0.007397634442896,0.138222649693489));
res += mul(Get(s4,dx,0), float4x4(0.202381029725075,-0.084051661193371,-0.082424789667130,0.017221821472049,0.005790248513222,0.104614734649658,0.049047678709030,-0.282071113586426,-0.029070127755404,0.292708605527878,0.104188956320286,-0.133520975708961,0.368095606565475,0.067311592400074,0.087735779583454,0.023420389741659));
res += mul(Get(s4,dx,dy), float4x4(-0.442236840724945,0.044778902083635,-0.339252293109894,-0.152165144681931,0.228273212909698,0.001062441384420,-0.175782471895218,-0.107602216303349,-0.039800465106964,-0.346292078495026,-0.065689086914063,-0.039940763264894,0.004273852799088,-0.382348448038101,-0.346770048141479,0.006223000586033));
res += mul(Get(s5,-dx,-dy), float4x4(-0.035464048385620,-0.168989598751068,0.086295880377293,-0.065169803798199,-0.073067866265774,-0.149450361728668,0.023381302133203,-0.023016082122922,0.040588829666376,0.063379436731339,0.085649281740189,0.116202123463154,-0.089123629033566,0.044015001505613,-0.082625225186348,0.130658298730850));
res += mul(Get(s5,-dx,0), float4x4(-0.189558446407318,-0.091825820505619,-0.030604964122176,-0.165379792451859,-0.283867478370667,0.357920825481415,0.026394162327051,-0.013364030048251,0.014068538323045,0.112045481801033,-0.136958256363869,0.212660983204842,-0.135836854577065,-0.376304447650909,0.023272130638361,-0.001542754820548));
res += mul(Get(s5,-dx,dy), float4x4(0.115267381072044,-0.185407444834709,0.033698134124279,0.061593174934387,-0.013020164333284,-0.061071325093508,-0.243347600102425,0.075001023709774,-0.040030136704445,0.395283609628677,-0.030054777860641,0.245140179991722,-0.023562915623188,0.017607510089874,-0.063717946410179,-0.143887117505074));
res += mul(Get(s5,0,-dy), float4x4(-0.060089416801929,-0.200572863221169,0.034751366823912,-0.297322601079941,0.207017928361893,-0.411662667989731,0.183202192187309,0.011084415949881,-0.206180259585381,-0.025185516104102,0.225311428308487,0.005345910787582,0.286113142967224,0.036120474338531,-0.189438149333000,0.222083419561386));
res += mul(Get(s5,0,0), float4x4(-0.577860236167908,0.250972718000412,0.115374356508255,-0.276623845100403,1.343481183052063,-0.360549181699753,-0.019702216610312,0.003663279581815,0.786002278327942,-0.595837771892548,-0.505848646163940,0.162899598479271,0.755638003349304,0.117155984044075,-0.184032917022705,-0.211428821086884));
res += mul(Get(s5,0,dy), float4x4(-0.019539779052138,-0.082447521388531,-0.141729667782784,-0.009742720983922,0.037054136395454,0.466350436210632,-0.182688057422638,0.158708661794662,0.066314846277237,0.072674594819546,-0.267559260129929,0.169263064861298,0.084289461374283,-0.191839545965195,-0.168422788381577,-0.250491291284561));
res += mul(Get(s5,dx,-dy), float4x4(-0.054257012903690,-0.006086961831897,-0.076760925352573,-0.096887737512589,0.020001661032438,-0.008370260708034,0.144328683614731,0.122026778757572,0.067495532333851,-0.109357446432114,0.119491271674633,-0.114738091826439,0.058142844587564,0.130431190133095,-0.122663937509060,0.216367155313492));
res += mul(Get(s5,dx,0), float4x4(0.017035039141774,0.034884568303823,-0.018020313233137,-0.155466258525848,-0.219210788607597,-0.287048786878586,-0.041317794471979,0.028504259884357,0.379050850868225,-0.061039436608553,0.094893611967564,0.156262174248695,0.494220048189163,0.074921101331711,-0.007222281768918,0.365721940994263));
res += mul(Get(s5,dx,dy), float4x4(-0.061517167836428,0.029071215540171,0.018875464797020,-0.063526839017868,0.231880784034729,-0.041365645825863,0.035991713404655,0.164358571171761,0.252149283885956,0.011362501420081,-0.314097285270691,0.002862663241103,-0.129717558622360,-0.157239392399788,-0.188299685716629,-0.001132643665187));
res = max(float4(0, 0, 0, 0), res) + float4(0.376240879297256,-0.051939118653536,-0.182524442672729,0.084398366510868) * min(float4(0, 0, 0, 0), res);
return res;
}