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
float4 res = float4(0.314471930265427,-0.055419549345970,0.339659094810486,0.164509668946266);
res += mul(Get(s0,-dx,-dy), float4x4(-0.087342195212841,0.078089863061905,-0.015754634514451,-0.069393239915371,-0.051752150058746,0.119346499443054,-0.041123256087303,-0.196595177054405,-0.037809550762177,-0.258035659790039,0.040028318762779,0.089960388839245,0.072963804006577,-0.043345116078854,0.069680266082287,-0.269183903932571));
res += mul(Get(s0,-dx,0), float4x4(0.059223987162113,0.184337854385376,0.188078895211220,-0.636411190032959,0.284475684165955,0.312891215085983,0.443672001361847,0.126651331782341,0.112303756177425,-0.006473272107542,0.030573904514313,0.474353969097137,-0.432591170072556,-0.403438538312912,0.096807815134525,0.810361921787262));
res += mul(Get(s0,-dx,dy), float4x4(0.106363810598850,0.127803653478622,0.181269511580467,0.092707946896553,-0.132210910320282,0.096236176788807,-0.042834106832743,-0.083003640174866,-0.038304440677166,-0.293531477451324,0.014874191023409,0.077990531921387,0.036241598427296,-0.229861676692963,-0.046369571238756,0.012274021282792));
res += mul(Get(s0,0,-dy), float4x4(0.007194428239018,0.028626274317503,0.076689347624779,-0.041899394243956,0.086013324558735,-0.235475942492485,0.098131589591503,0.023201409727335,-0.304683089256287,-0.137229979038239,-0.136892497539520,0.138650208711624,0.158181786537170,-0.050952151417732,0.085535451769829,-0.054479107260704));
res += mul(Get(s0,0,0), float4x4(0.230745032429695,0.067234300076962,-0.195869937539101,-0.072081983089447,0.107867695391178,-0.097446158528328,-0.117214225232601,-0.048053201287985,-0.658038437366486,-0.157782420516014,-0.293852418661118,-0.005127386189997,-0.549624741077423,-0.099133014678955,-0.076387651264668,-0.119628034532070));
res += mul(Get(s0,0,dy), float4x4(0.125050276517868,0.118936903774738,0.097969911992550,0.128975227475166,-0.178616508841515,-0.523464977741241,0.027679119259119,0.030259180814028,-0.602708399295807,-0.241379395127296,-0.124148420989513,-0.162815362215042,0.124043181538582,-0.103178068995476,0.094132930040359,0.229471117258072));
res += mul(Get(s0,dx,-dy), float4x4(-0.079059973359108,0.167026638984680,0.149021521210670,-0.216904222965240,-0.064478226006031,-0.182294622063637,0.007929260842502,0.040110275149345,-0.079698145389557,-0.285964578390121,0.106497198343277,0.177067101001740,0.066467590630054,0.050533797591925,0.107422620058060,-0.020487997680902));
res += mul(Get(s0,dx,0), float4x4(0.005373934749514,-0.047207556664944,-0.010640660300851,0.101344950497150,-0.238774374127388,0.045844834297895,-0.383489370346069,-0.058911360800266,0.450490713119507,0.890297591686249,-0.027420660480857,-0.233473971486092,0.083001084625721,0.132575899362564,-0.083087138831615,-0.029135350137949));
res += mul(Get(s0,dx,dy), float4x4(0.040698297321796,0.145831853151321,0.096295155584812,0.002123832236975,-0.063344314694405,-0.291858732700348,-0.189874038100243,-0.122243776917458,-0.355345249176025,-0.278778612613678,0.028015743941069,-0.051883939653635,0.256689339876175,0.011447816155851,-0.048842705786228,0.026726646348834));
res += mul(Get(s1,-dx,-dy), float4x4(-0.107601493597031,0.014601176604629,0.279954552650452,0.041798669844866,-0.020976640284061,0.152237251400948,0.012293207459152,0.090585857629776,0.116885669529438,0.116812191903591,0.129957556724548,-0.140071898698807,-0.078878872096539,-0.044707540422678,0.128250628709793,-0.067085698246956));
res += mul(Get(s1,-dx,0), float4x4(0.080854296684265,0.089459143579006,-0.029941594228148,0.240801766514778,0.190757855772972,0.211979448795319,0.162362232804298,0.320098012685776,0.227661043405533,0.294867515563965,0.291674017906189,0.353443622589111,0.111579291522503,-0.024115942418575,-0.310770422220230,-0.081398189067841));
res += mul(Get(s1,-dx,dy), float4x4(0.028960838913918,-0.010549115948379,-0.190375551581383,0.108514644205570,0.073355801403522,0.206215247511864,0.149813383817673,-0.034067220985889,-0.228001326322556,0.209933996200562,0.091894946992397,0.256197541952133,-0.049934692680836,-0.082296453416348,-0.043161433190107,0.031353939324617));
res += mul(Get(s1,0,-dy), float4x4(-0.160799726843834,-0.243406012654305,-0.291918754577637,-0.165657460689545,-0.293513655662537,0.136072248220444,-0.115375205874443,-0.120067380368710,-0.025209583342075,-0.008805012330413,-0.231189534068108,-0.066406778991222,-0.300713539123535,-0.355538249015808,0.194598302245140,-0.129687026143074));
res += mul(Get(s1,0,0), float4x4(0.067531615495682,-0.022768063470721,-0.433102041482925,0.139000475406647,-0.262012124061584,-0.787186443805695,-0.009602960199118,-0.251047343015671,0.097763054072857,-0.239938914775848,-0.131634280085564,-0.072208873927593,0.320321649312973,0.014626220799983,-0.278624802827835,0.174559310078621));
res += mul(Get(s1,0,dy), float4x4(-0.195790454745293,-0.116319589316845,-0.100186668336391,-0.001956383464858,-0.186884418129921,0.111172772943974,-0.016535390168428,-0.067203752696514,0.084361016750336,0.321393281221390,-0.299908012151718,0.205226451158524,0.149614423513412,-0.003877163631842,-0.089384593069553,0.045787405222654));
res += mul(Get(s1,dx,-dy), float4x4(-0.365474879741669,-0.029631735756993,-0.076932311058044,-0.004631021060050,0.012318226508796,0.084485776722431,0.053085207939148,0.018691906705499,0.033232025802135,-0.072669126093388,-0.153016850352287,-0.108920678496361,-0.159328207373619,-0.097552642226219,0.065717868506908,0.043157748878002));
res += mul(Get(s1,dx,0), float4x4(0.146347612142563,0.120575338602066,-0.037208128720522,0.032339159399271,-0.033050559461117,0.295324146747589,0.211304843425751,-0.089968070387840,0.253820031881332,0.211394086480141,0.184877887368202,-0.057924535125494,0.050641160458326,0.146772742271423,-0.137874618172646,0.025906762108207));
res += mul(Get(s1,dx,dy), float4x4(0.123897470533848,-0.247979074716568,0.077523089945316,-0.060402542352676,-0.157879829406738,0.113274917006493,-0.146867454051971,-0.048344425857067,-0.001989035168663,-0.031026603654027,-0.008370568044484,0.124373085796833,-0.085926957428455,0.058968078345060,-0.133589372038841,0.091112457215786));
res += mul(Get(s2,-dx,-dy), float4x4(0.054723963141441,0.015656877309084,0.051321279257536,0.104534350335598,0.042577929794788,0.020386192947626,0.060850925743580,-0.187278270721436,0.138100281357765,0.195007860660553,-0.210254520177841,0.179569035768509,0.025168219581246,-0.154144302010536,0.038334961980581,-0.216638579964638));
res += mul(Get(s2,-dx,0), float4x4(0.074804879724979,-0.141133949160576,-0.031627371907234,-0.383030652999878,-0.339716136455536,-0.163079321384430,-0.147313430905342,0.040907543152571,-0.104745604097843,0.183384925127029,0.064634129405022,0.178389430046082,-0.108050391077995,-0.137060835957527,0.086422756314278,0.331047385931015));
res += mul(Get(s2,-dx,dy), float4x4(0.025154214352369,0.023706182837486,-0.064990654587746,-0.112280219793320,-0.068593598902225,-0.014593525789678,-0.248629644513130,0.016769854351878,0.025540281087160,0.055593449622393,0.056997586041689,0.035996556282043,-0.049728680402040,-0.073718003928661,0.028337193652987,0.077746048569679));
res += mul(Get(s2,0,-dy), float4x4(-0.051079455763102,-0.046217467635870,-0.122482866048813,-0.050086904317141,-0.117809027433395,-0.004136277828366,-0.321714580059052,-0.035872660577297,-0.078227721154690,0.131414249539375,-0.291309684514999,-0.001234014052898,-0.100952677428722,-0.068325035274029,0.091590896248817,-0.160077765583992));
res += mul(Get(s2,0,0), float4x4(-0.003957522567362,0.192626297473907,0.230670541524887,-0.393116891384125,-0.180068388581276,-0.701564967632294,-0.252082914113998,-0.268924474716187,0.182329580187798,0.282116949558258,-0.086629204452038,-0.008755991235375,-0.143547505140305,-0.159014835953712,0.102260388433933,-0.267584443092346));
res += mul(Get(s2,0,dy), float4x4(0.056852981448174,-0.186737686395645,0.196305200457573,-0.445102363824844,0.156958937644958,0.277234375476837,-0.823868572711945,0.129405662417412,0.319402873516083,0.309115231037140,0.114294379949570,-0.098822548985481,0.097715236246586,0.044111438095570,-0.049961764365435,-0.188635408878326));
res += mul(Get(s2,dx,-dy), float4x4(-0.354060322046280,0.165011018514633,-0.003664624877274,0.023352451622486,-0.075016684830189,-0.044386878609657,-0.181160017848015,0.017804818227887,0.030115960165858,-0.050058986991644,-0.059633266180754,0.004572278819978,-0.202889859676361,-0.054939314723015,-0.007014233153313,-0.148973479866982));
res += mul(Get(s2,dx,0), float4x4(-0.606812477111816,0.141596511006355,-0.210091039538383,0.077495396137238,-0.299020051956177,-0.026406941935420,-0.286041975021362,-0.021584728732705,0.129255384206772,0.057381477206945,0.007060018368065,-0.135058894753456,-0.273750007152557,-0.041273780167103,0.047511130571365,-0.116615854203701));
res += mul(Get(s2,dx,dy), float4x4(0.033223625272512,-0.152861356735229,-0.022666214033961,-0.032968401908875,0.026877911761403,-0.130119234323502,-0.332898557186127,0.007204949390143,0.203662216663361,0.133361741900444,0.024428647011518,-0.056825827807188,-0.220877900719643,0.014755329117179,0.028103662654757,-0.073732718825340));
res += mul(Get(s3,-dx,-dy), float4x4(-0.135315507650375,-0.118633680045605,0.232963442802429,-0.086084730923176,0.025853825733066,-0.010543940588832,0.012746072374284,-0.331877321004868,0.501647949218750,-0.070449791848660,-0.285215139389038,-0.045713014900684,-0.280639052391052,-0.087279416620731,0.110744155943394,0.172658741474152));
res += mul(Get(s3,-dx,0), float4x4(-0.004842248279601,-0.001037636771798,-0.245495289564133,-0.004963839426637,-0.025679754093289,-0.118088543415070,-0.012204858474433,-2.254436016082764,-0.286817312240601,0.266429990530014,0.069045752286911,-0.051237806677818,-0.394765317440033,-0.057930700480938,0.114073976874352,0.144089981913567));
res += mul(Get(s3,-dx,dy), float4x4(0.004472718574107,-0.037863779813051,0.123487591743469,-0.009597586467862,0.013342348858714,-0.061258949339390,-0.029756993055344,-0.159296736121178,0.067110463976860,0.041993483901024,0.114879436790943,-0.163823828101158,-0.136854261159897,-0.075818464159966,-0.190046459436417,0.142297297716141));
res += mul(Get(s3,0,-dy), float4x4(-0.169276311993599,-0.145539522171021,-0.110970772802830,0.133671790361404,-0.094314210116863,-0.024462692439556,0.178310945630074,-0.051980059593916,-0.263077974319458,0.148195832967758,0.044440131634474,0.241319209337234,0.044666983187199,-0.199533879756927,0.099480628967285,0.001339340000413));
res += mul(Get(s3,0,0), float4x4(0.044646102935076,0.204843744635582,-0.414230912923813,0.147044122219086,-0.173901870846748,-0.108286872506142,0.095106743276119,0.110525056719780,-0.026899635791779,0.070206835865974,-0.208263695240021,0.047131355851889,-0.034173343330622,-0.951109170913696,0.018355924636126,-0.105598568916321));
res += mul(Get(s3,0,dy), float4x4(0.254535347223282,0.176510885357857,0.200086325407028,0.000465434772195,-0.047067012637854,0.013813117519021,0.071910247206688,0.063177399337292,0.222227156162262,-0.061336178332567,-0.026395291090012,-0.005819262005389,0.112351328134537,-0.208640560507774,-0.225566715002060,0.037401169538498));
res += mul(Get(s3,dx,-dy), float4x4(0.101628348231316,-0.176889434456825,0.053168296813965,0.032787792384624,-0.041247796267271,-0.087319701910019,-0.093341536819935,-0.009931499138474,0.299807369709015,0.053134813904762,-0.072475455701351,-0.065818347036839,0.066105455160141,-0.082949593663216,0.058307472616434,0.040739674121141));
res += mul(Get(s3,dx,0), float4x4(0.150454401969910,-0.195392936468124,0.089778982102871,-0.118516236543655,-0.618425309658051,-0.567433238029480,0.124597020447254,-0.040547192096710,0.062260895967484,-0.071198359131813,-0.065127559006214,0.019917199388146,-0.066186867654324,0.040133539587259,0.059120465070009,0.153033152222633));
res += mul(Get(s3,dx,dy), float4x4(0.092422969639301,-0.005977619439363,-0.079299256205559,-0.108006261289120,-0.220186084508896,0.006287165917456,-0.059973623603582,0.115820884704590,-0.004544537980109,0.197872266173363,0.019966749474406,0.145182594656944,0.063635185360909,-0.018238820135593,-0.015275835059583,0.064267806708813));
res += mul(Get(s4,-dx,-dy), float4x4(-0.160419970750809,-0.158524274826050,-0.254416406154633,0.174047127366066,0.124496147036552,0.106753036379814,0.025811199098825,-0.066253289580345,0.018191421404481,-0.006318971049041,0.000569569878280,-0.071809493005276,0.058159295469522,-0.157513424754143,-0.099591165781021,0.390738993883133));
res += mul(Get(s4,-dx,0), float4x4(-0.266297191381454,-0.125157698988914,0.326861262321472,0.255906373262405,-0.089600980281830,0.202600225806236,0.372961819171906,-0.364497035741806,-0.164397194981575,-0.390179723501205,-0.430400043725967,0.282978653907776,0.125379413366318,-0.112518511712551,0.018689034506679,0.088946856558323));
res += mul(Get(s4,-dx,dy), float4x4(-0.238720744848251,-0.093414872884750,-0.023110732436180,0.324963271617889,0.001129091368057,-0.221559762954712,0.020414380356669,0.113828435540199,-0.191869705915451,0.082116693258286,-0.055570296943188,-0.014393426477909,0.040971077978611,0.139349266886711,-0.031730376183987,0.151017636060715));
res += mul(Get(s4,0,-dy), float4x4(-0.286456257104874,-0.299470961093903,-0.151137381792068,0.088748425245285,0.008239155635238,0.125533327460289,-0.046928197145462,-0.106940329074860,-0.095918744802475,0.025937672704458,-0.086161211133003,-0.047422468662262,0.119798831641674,-0.196510821580887,-0.092227458953857,0.059344436973333));
res += mul(Get(s4,0,0), float4x4(0.300885289907455,0.891814112663269,0.051202751696110,-0.149581089615822,0.481966912746429,0.666803359985352,0.237443566322327,-0.458420604467392,0.140232279896736,-0.100028581917286,0.025670088827610,-0.026922516524792,-0.192144095897675,-0.473825216293335,-0.087214231491089,0.007108226884156));
res += mul(Get(s4,0,dy), float4x4(0.437099933624268,0.795747399330139,0.169760510325432,-0.446204394102097,-0.095518141984940,-0.436935126781464,0.268272638320923,-0.040471397340298,-0.060211915522814,-0.163973674178123,-0.271603107452393,-0.094667345285416,0.027293670922518,0.401250600814819,-0.071170508861542,0.018062101677060));
res += mul(Get(s4,dx,-dy), float4x4(-0.457385867834091,-0.153413042426109,-0.133484899997711,-0.080948807299137,-0.059921551495790,-0.217116609215736,-0.009871532209218,-0.022877749055624,-0.144793152809143,0.012545566074550,-0.015902334824204,-0.158424764871597,0.130114942789078,0.226630747318268,0.000434568559285,0.043646678328514));
res += mul(Get(s4,dx,0), float4x4(0.633946239948273,0.486443936824799,0.196285858750343,0.075227178633213,-0.249444276094437,-0.472211331129074,0.219910800457001,-0.318003147840500,0.052556186914444,-0.267046391963959,-0.208384677767754,-0.028264293447137,-0.140560775995255,0.147131204605103,0.062826365232468,-0.100863538682461));
res += mul(Get(s4,dx,dy), float4x4(0.275404751300812,0.390786200761795,0.261316180229187,-0.288160592317581,-0.457833737134933,-0.240418851375580,-0.033187501132488,0.021515516564250,-0.246058329939842,-0.186743423342705,0.014899377711117,-0.129733771085739,0.142754226922989,0.171641364693642,-0.121840246021748,0.008451702073216));
res += mul(Get(s5,-dx,-dy), float4x4(-0.159258186817169,0.039311416447163,-0.035913217812777,0.081432312726974,0.205364540219307,0.279958367347717,-0.017922388389707,-0.079966180026531,0.247117221355438,0.001252302899957,0.006382407620549,0.039152275770903,-0.132491275668144,-0.105430863797665,0.072538018226624,0.046722821891308));
res += mul(Get(s5,-dx,0), float4x4(-0.170398950576782,-0.182897120714188,0.074019610881805,0.395447552204132,0.555876910686493,0.200089991092682,0.165640383958817,0.136746138334274,0.015088684856892,-0.118122622370720,0.124300315976143,0.232287466526031,-0.185691252350807,-0.058064848184586,-0.088796436786652,-0.165891259908676));
res += mul(Get(s5,-dx,dy), float4x4(0.078571423888206,0.230292707681656,-0.074824988842010,0.084313414990902,0.141085535287857,0.204076930880547,-0.105446986854076,0.327399641275406,0.085003860294819,0.082291677594185,0.031144926324487,-0.144352570176125,0.025049503892660,-0.157286852598190,-0.014139401726425,-0.184036865830421));
res += mul(Get(s5,0,-dy), float4x4(-0.141201496124268,-0.156273260712624,-0.019016027450562,-0.161234274506569,0.003751781303436,0.128803446888924,-0.055248614400625,0.088931873440742,-0.022058337926865,0.020919814705849,0.195778116583824,0.003836592193693,-0.287497967481613,0.054638702422380,-0.259158641099930,-0.078471459448338));
res += mul(Get(s5,0,0), float4x4(0.145048797130585,0.421369642019272,0.236226633191109,-0.250585824251175,-0.044488184154034,-0.078103542327881,0.044459883123636,0.031435828655958,-0.251403987407684,-0.377797663211823,0.034795209765434,-0.074992761015892,-1.404125809669495,-0.535757362842560,-0.380111008882523,-0.055576484650373));
res += mul(Get(s5,0,dy), float4x4(-0.036307454109192,0.077366985380650,0.167262837290764,-0.284409523010254,0.256629079580307,0.021685808897018,0.463209837675095,-0.171785205602646,0.113862253725529,-0.257106781005859,0.066671676933765,0.093516662716866,-0.257461369037628,-0.178801968693733,-0.313782244920731,0.078997395932674));
res += mul(Get(s5,dx,-dy), float4x4(0.064387008547783,-0.333529025316238,0.120764531195164,0.041700229048729,0.066266752779484,0.287624180316925,0.154862552881241,0.049284148961306,0.161211043596268,-0.112295523285866,-0.026262242347002,-0.158066943287849,0.034836713224649,-0.199991568922997,0.003847691230476,0.014560405164957));
res += mul(Get(s5,dx,0), float4x4(0.171256542205811,-0.177681624889374,0.034619241952896,-0.052358783781528,0.332639813423157,0.343797504901886,-0.094234570860863,0.009675904177129,0.054429244250059,-0.228664234280586,0.233469977974892,-0.160975724458694,-0.376754879951477,-0.099273361265659,0.071036949753761,0.060185328125954));
res += mul(Get(s5,dx,dy), float4x4(-0.122598156332970,-0.083023265004158,0.098723001778126,-0.031864516437054,0.106425970792770,-0.024044478312135,0.076012536883354,-0.091895043849945,0.098468802869320,-0.173153117299080,-0.122898891568184,-0.000410195236327,-0.065188281238079,0.076566338539124,-0.064083844423294,0.103978328406811));
res = max(float4(0, 0, 0, 0), res) + float4(-0.063707441091537,-0.049241248518229,0.357050985097885,-0.013090984895825) * min(float4(0, 0, 0, 0), res);
return res;
}