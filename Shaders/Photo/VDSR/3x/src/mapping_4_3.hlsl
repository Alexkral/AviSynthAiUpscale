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
res += mul(Get(s0,-dx,-dy), float4x4(0.270304828882217,0.123326472938061,0.040070280432701,-0.073657251894474,0.023968882858753,0.067274592816830,0.262785285711288,0.108668662607670,0.033443775027990,-0.211211755871773,-0.044754877686501,0.051392987370491,-0.011407219804823,-0.009033379144967,-0.054444812238216,0.051651027053595));
res += mul(Get(s0,-dx,0), float4x4(-0.227305889129639,-0.016209010034800,-0.086852237582207,0.077432528138161,-0.027386272326112,0.047042753547430,0.138641625642776,0.011620161123574,0.016371458768845,-0.138463556766510,0.259787768125534,-0.064280383288860,-0.026790207251906,0.018146276473999,-0.086615055799484,0.003478799015284));
res += mul(Get(s0,-dx,dy), float4x4(0.208733901381493,0.008627442643046,-0.207781448960304,-0.156411811709404,-0.136555150151253,-0.113616622984409,0.025200152769685,-0.120149567723274,-0.020635157823563,-0.105625227093697,0.243625506758690,0.046989098191261,0.094427347183228,0.094764403998852,0.064142338931561,-0.084771908819675));
res += mul(Get(s0,0,-dy), float4x4(0.012215546332300,0.138409048318863,-0.051120962947607,-0.213949486613274,0.002430813387036,0.075257331132889,0.078618429601192,-0.020651590079069,0.013139144517481,0.019583677873015,-0.066893376410007,-0.057470198720694,0.008258829824626,-0.035548064857721,0.092018149793148,-0.101754210889339));
res += mul(Get(s0,0,0), float4x4(-0.342566877603531,-0.019754031673074,0.053706921637058,-0.000816772808321,0.005809704307467,0.106480538845062,-0.068221859633923,-0.107564285397530,-0.002410068409517,0.093663461506367,0.035047769546509,-0.098414711654186,0.001237825141288,0.077663317322731,0.077780812978745,-0.262658625841141));
res += mul(Get(s0,0,dy), float4x4(0.286174118518829,-0.026426162570715,0.069892928004265,-0.019143002107739,-0.051862068474293,0.010314035229385,-0.052048344165087,-0.154419794678688,-0.056239586323500,0.025407221168280,0.067962929606438,0.094855554401875,-0.032961998134851,0.168287038803101,0.091843649744987,-0.066608712077141));
res += mul(Get(s0,dx,-dy), float4x4(0.114263191819191,0.049502700567245,-0.050930868834257,-0.193650990724564,-0.002373759169132,0.125777676701546,0.043983031064272,0.028804421424866,-0.004262211266905,0.082214422523975,-0.124018058180809,0.076000839471817,-0.130010619759560,-0.003776460886002,0.174204215407372,0.119646377861500));
res += mul(Get(s0,dx,0), float4x4(-0.155858308076859,-0.020164759829640,0.096804857254028,0.119057677686214,0.030150415375829,0.085242301225662,-0.028091585263610,-0.050674177706242,-0.139255747199059,0.123771019279957,-0.012120995670557,-0.177875638008118,-0.073738224804401,0.087489865720272,0.117074064910412,-0.051540579646826));
res += mul(Get(s0,dx,dy), float4x4(0.198543861508369,-0.011690168641508,0.100804202258587,-0.060167994350195,0.118008650839329,-0.098210617899895,0.101323306560516,-0.044092368334532,-0.188830107450485,0.012061459012330,0.048093259334564,0.068816035985947,-0.124791219830513,0.028441963717341,0.015550955198705,0.009097130969167));
res += mul(Get(s1,-dx,-dy), float4x4(0.044572044163942,-0.077910616993904,0.090148136019707,0.000194238833501,-0.038614105433226,-0.056552246212959,-0.115133769810200,0.072787679731846,-0.134669363498688,0.033498007804155,-0.010572295635939,0.093627497553825,-0.033131990581751,-0.047942265868187,-0.046090986579657,0.187546804547310));
res += mul(Get(s1,-dx,0), float4x4(-0.072689063847065,-0.116050451993942,0.122713573276997,0.238972768187523,0.025814976543188,0.043997336179018,-0.042833544313908,-0.054708138108253,-0.089140169322491,0.033298380672932,-0.092506498098373,-0.063282139599323,-0.087133236229420,-0.149562701582909,-0.059476610273123,-0.022022312507033));
res += mul(Get(s1,-dx,dy), float4x4(-0.015527484938502,-0.074964061379433,-0.019331851974130,-0.047100469470024,-0.027921367436647,-0.140468955039978,0.130074039101601,-0.086612567305565,0.091688334941864,0.002453896682709,-0.091207914054394,-0.061747256666422,0.125422254204750,-0.168628633022308,-0.037037681788206,-0.110411219298840));
res += mul(Get(s1,0,-dy), float4x4(0.162652418017387,-0.040656447410583,-0.024063169956207,-0.023061066865921,0.027060495689511,-0.070890508592129,-0.049684043973684,0.030286667868495,0.113944232463837,-0.069635145366192,0.077954545617104,-0.030993007123470,-0.057731505483389,-0.060618989169598,-0.196824118494987,0.038615863770247));
res += mul(Get(s1,0,0), float4x4(0.016072321683168,0.023594368249178,0.162532746791840,0.004615479148924,-0.054581493139267,-0.039283763617277,0.018110683187842,-0.012983838096261,-0.019654136151075,0.006104039959610,-0.115333907306194,-0.104717120528221,-0.000467994657811,0.027243174612522,-0.166450023651123,-0.140510380268097));
res += mul(Get(s1,0,dy), float4x4(0.095684386789799,0.023714955896139,-0.002463507931679,-0.147165894508362,-0.070554547011852,-0.197078168392181,0.045061357319355,-0.087504819035530,-0.011492571793497,-0.140663862228394,-0.123713709414005,-0.077800877392292,0.071215979754925,-0.043722152709961,-0.166773542761803,-0.143857881426811));
res += mul(Get(s1,dx,-dy), float4x4(0.088115826249123,0.048284426331520,-0.055664755403996,-0.004557076841593,-0.052446354180574,0.015115708112717,0.002773772226647,-0.041735529899597,0.325806230306625,-0.040680222213268,0.076490499079227,-0.048892337828875,-0.071546286344528,0.085691958665848,-0.236505165696144,-0.002264372073114));
res += mul(Get(s1,dx,0), float4x4(-0.053668394684792,0.042268604040146,0.036973722279072,-0.007858147844672,-0.095991604030132,0.229295819997787,0.098013706505299,0.024780759587884,-0.063073650002480,-0.008938331156969,0.065513506531715,-0.059658683836460,0.105390742421150,0.028148101642728,-0.094954922795296,-0.007926660589874));
res += mul(Get(s1,dx,dy), float4x4(-0.033109672367573,-0.048301283270121,0.087307922542095,0.029640899971128,-0.059987947344780,0.074572235345840,0.086116127669811,-0.014737852849066,0.057533740997314,0.005824865773320,0.076299011707306,-0.017703589051962,-0.140925839543343,-0.019102199003100,0.007167586125433,0.028659630566835));
res += mul(Get(s2,-dx,-dy), float4x4(-0.096808463335037,0.030820485204458,-0.100124575197697,0.105653382837772,-0.096705280244350,0.036456741392612,0.047111161053181,0.216448590159416,-0.140551522374153,-0.249745205044746,-0.080155864357948,-0.025114623829722,-0.110230430960655,-0.203666746616364,-0.094310320913792,-0.084852278232574));
res += mul(Get(s2,-dx,0), float4x4(-0.128625050187111,0.089354090392590,-0.113731078803539,-0.050304543226957,-0.081585995852947,-0.061894565820694,-0.132274493575096,-0.100638672709465,-0.037366498261690,-0.172329917550087,-0.045020915567875,-0.082864671945572,-0.070307217538357,0.202012717723846,0.004327686503530,0.227425828576088));
res += mul(Get(s2,-dx,dy), float4x4(-0.203687921166420,0.018792316317558,-0.128350138664246,-0.083656303584576,0.004310350399464,-0.171828120946884,-0.136451810598373,0.139852225780487,0.129013106226921,-0.126169681549072,0.487919062376022,-0.037877883762121,0.076435402035713,-0.024457950145006,-0.019669096916914,0.016686839982867));
res += mul(Get(s2,0,-dy), float4x4(-0.041277434676886,-0.019707784056664,-0.071430936455727,0.120444089174271,-0.190630316734314,-0.031258177012205,-0.114698499441147,-0.030104514211416,-0.078917771577835,0.124401524662971,-0.058401986956596,-0.056207489222288,-0.073122344911098,-0.079952649772167,-0.129264831542969,0.379268109798431));
res += mul(Get(s2,0,0), float4x4(0.009642973542213,-0.089618936181068,-0.145731151103973,0.039531376212835,-0.065549038350582,-0.019460719078779,0.018804898485541,-0.204133301973343,-0.064963862299919,0.140996858477592,-0.207343801856041,-0.075742594897747,0.006623846013099,0.207910254597664,0.037808764725924,-0.020896641537547));
res += mul(Get(s2,0,dy), float4x4(-0.086427487432957,-0.029441755264997,-0.161998778581619,-0.010429425165057,0.051386576145887,-0.075666815042496,-0.078011937439442,0.139397293329239,0.082118086516857,0.056841291487217,-0.018303791061044,-0.034452378749847,0.098393775522709,-0.009381094947457,-0.096732512116432,-0.079256445169449));
res += mul(Get(s2,dx,-dy), float4x4(-0.136103615164757,0.129224181175232,-0.116517141461372,-0.090414002537727,-0.051657713949680,-0.009520752355456,0.044028315693140,0.150170728564262,0.016973374411464,0.149317800998688,-0.079511992633343,-0.050148505717516,-0.001769908587448,-0.038869619369507,0.103285320103168,0.027487255632877));
res += mul(Get(s2,dx,0), float4x4(-0.007214808836579,-0.024728659540415,0.012579486705363,0.113138698041439,0.005740627180785,0.200315266847610,0.288250356912613,-0.116627082228661,-0.087730906903744,0.310355484485626,0.054939147084951,0.066229693591595,-0.089102625846863,0.095564946532249,0.118584513664246,-0.217092961072922));
res += mul(Get(s2,dx,dy), float4x4(-0.077436305582523,0.035840243101120,0.024038327857852,-0.031262941658497,-0.043155331164598,-0.001117088366300,-0.111797012388706,0.094309337437153,-0.027385277673602,0.260619372129440,0.067019850015640,-0.044584542512894,0.051007062196732,-0.151008844375610,-0.110817320644855,-0.090322561562061));
res += mul(Get(s3,-dx,-dy), float4x4(-0.075741857290268,-0.130607187747955,-0.137315109372139,0.073257766664028,-0.031694091856480,-0.346935510635376,-0.126698583364487,-0.050590824335814,-0.005211933515966,0.129587754607201,0.081909164786339,0.124728873372078,-0.047749526798725,0.106213800609112,-0.012429144233465,0.130678445100784));
res += mul(Get(s3,-dx,0), float4x4(-0.061560433357954,-0.176743820309639,-0.132416695356369,-0.029975343495607,-0.086472265422344,-0.297863274812698,0.041286967694759,-0.068798758089542,0.169385716319084,-0.017601436004043,0.052868768572807,0.028506293892860,-0.176283881068230,0.184081137180328,-0.073949575424194,0.116218641400337));
res += mul(Get(s3,-dx,dy), float4x4(-0.117822177708149,-0.145762935280800,0.086116790771484,-0.013220066204667,-0.109642818570137,-0.123259164392948,-0.034066274762154,0.000026878082281,0.112362749874592,0.092914082109928,0.024185676127672,-0.030152706429362,-0.118799678981304,-0.034076940268278,-0.118960715830326,0.003257108852267));
res += mul(Get(s3,0,-dy), float4x4(-0.000641754420940,-0.062288757413626,-0.037863384932280,-0.124090522527695,0.088234581053257,-0.268153905868530,-0.002414553193375,0.176689788699150,-0.013268734328449,0.110322780907154,-0.018047170713544,-0.019841803237796,-0.145892545580864,0.038582574576139,-0.247082829475403,-0.049049627035856));
res += mul(Get(s3,0,0), float4x4(0.050885934382677,-0.048678729683161,-0.114923156797886,-0.078914709389210,-0.022565001621842,-0.205376192927361,0.075685366988182,-0.034297578036785,-0.015607641078532,-0.005460718180984,-0.035667687654495,0.111139819025993,-0.080318458378315,-0.019927846267819,-0.155716270208359,-0.075356386601925));
res += mul(Get(s3,0,dy), float4x4(0.000366492546163,0.059132181107998,-0.051835164427757,0.096499271690845,-0.061885282397270,-0.029928000643849,-0.034621059894562,0.139746308326721,-0.042008131742477,0.050703156739473,-0.075756810605526,0.157409071922302,0.161623835563660,-0.184143573045731,-0.259629458189011,-0.161282375454903));
res += mul(Get(s3,dx,-dy), float4x4(-0.044650554656982,0.019558414816856,0.103150047361851,-0.115946874022484,0.090006798505783,-0.085825428366661,0.114883355796337,0.113203555345535,0.086460448801517,-0.026139207184315,0.016649600118399,-0.040293231606483,0.260884582996368,0.024121843278408,0.017118996009231,-0.000473789230455));
res += mul(Get(s3,dx,0), float4x4(0.018438076600432,0.021893380209804,0.115627378225327,-0.064128413796425,-0.008423720486462,-0.105784773826599,0.041681673377752,-0.215623036026955,-0.028823200613260,0.007123665884137,-0.093773566186428,0.122096419334412,-0.140497624874115,-0.036067090928555,-0.156111046671867,-0.003750404110178));
res += mul(Get(s3,dx,dy), float4x4(-0.040119752287865,0.013274403288960,-0.112192980945110,0.260456562042236,-0.084062069654465,-0.021012367680669,-0.101511076092720,0.028834240511060,-0.070090696215630,0.079301215708256,-0.036717150360346,0.195277601480484,-0.015349913388491,-0.165767565369606,-0.135373219847679,0.038419838994741));
return max(float4(0,0,0,0), res);
}
