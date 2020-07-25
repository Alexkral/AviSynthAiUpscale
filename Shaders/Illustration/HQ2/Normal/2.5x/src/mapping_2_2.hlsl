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
res += mul(Get(s0,-dx,-dy), float4x4(-0.016012685373425,-0.017511444166303,0.015869192779064,0.030344616621733,-0.001336940098554,0.015316321514547,0.026308458298445,-0.030257323756814,-0.060995485633612,-0.003124342998490,0.056315787136555,-0.004140517674387,0.025349708274007,0.039280943572521,0.037068173289299,0.007111879996955));
res += mul(Get(s0,-dx,0), float4x4(-0.020490137860179,0.029878659173846,0.026496089994907,0.016407443210483,0.034382790327072,-0.043732095509768,-0.083902478218079,-0.087936274707317,-0.024398725479841,0.065438047051430,-0.058907426893711,-0.045374374836683,0.031259961426258,0.028456980362535,0.030142864212394,-0.000469816208351));
res += mul(Get(s0,-dx,dy), float4x4(-0.010142901912332,0.052515983581543,-0.010312143713236,-0.005722011439502,0.028619512915611,-0.033216904848814,-0.017065552994609,-0.005656490102410,-0.012774108909070,0.005560082383454,-0.024733945727348,0.042324807494879,0.003881797892973,-0.037171259522438,-0.018401967361569,0.041797183454037));
res += mul(Get(s0,0,-dy), float4x4(-0.011160718277097,0.019991239532828,0.028805296868086,0.009244568645954,-0.001261564786546,-0.030494946986437,0.016535256057978,-0.024999134242535,-0.121528461575508,0.055303391069174,0.024693913757801,0.083745524287224,-0.032669473439455,-0.002079871483147,-0.022537190467119,-0.022697169333696));
res += mul(Get(s0,0,0), float4x4(-0.029243180528283,0.045798666775227,0.011986820958555,0.010991865769029,-0.001230432651937,-0.062883637845516,-0.049555391073227,-0.081848725676537,-0.070159785449505,0.041179507970810,-0.110880419611931,-0.041053168475628,0.013773160055280,-0.031304616481066,0.002064787084237,-0.013066038489342));
res += mul(Get(s0,0,dy), float4x4(-0.023585302755237,0.041972357779741,-0.015135126188397,0.006733026821166,-0.003172135446221,0.005276168696582,-0.038952045142651,0.010107744485140,0.028099820017815,-0.052764441817999,-0.055524565279484,0.009804089553654,0.022485412657261,-0.047878477722406,0.019726561382413,0.025192718952894));
res += mul(Get(s0,dx,-dy), float4x4(-0.019626231864095,0.036339882761240,0.030504414811730,-0.015041166916490,0.020857175812125,-0.028387369588017,0.023668969050050,-0.023756099864841,-0.145320177078247,0.097018562257290,-0.010007733479142,-0.028010180220008,-0.038639307022095,-0.038366809487343,-0.023279467597604,-0.049841843545437));
res += mul(Get(s0,dx,0), float4x4(-0.039622358977795,0.017515294253826,0.009710571728647,-0.004932746291161,0.014182817190886,0.033192213624716,0.013415360823274,-0.070120379328728,-0.021533207967877,-0.070035822689533,-0.079977765679359,-0.107104554772377,0.025438571348786,-0.048447132110596,0.010556023567915,-0.058454137295485));
res += mul(Get(s0,dx,dy), float4x4(-0.019122924655676,0.009821914136410,-0.008946124464273,0.002448393031955,-0.012625362724066,0.005914562381804,-0.028772363439202,-0.007722284644842,0.117823444306850,-0.110118880867958,-0.066181093454361,0.058087639510632,0.092126660048962,-0.031345631927252,0.000475637905765,-0.043404120951891));
res += mul(Get(s1,-dx,-dy), float4x4(0.034505940973759,-0.048999063670635,-0.011722809635103,0.021363960579038,-0.021839467808604,-0.003161655738950,-0.005103060044348,0.005320056341588,-0.065815404057503,0.005546992644668,-0.017393957823515,0.052563969045877,-0.013458237983286,0.059743233025074,0.010886668227613,0.033732078969479));
res += mul(Get(s1,-dx,0), float4x4(0.027849419042468,0.019859598949552,0.038192085921764,-0.012448072433472,0.003888726234436,-0.024715516716242,-0.018705761060119,0.007887400686741,-0.046006880700588,0.024755040183663,0.004987614694983,-0.052606340497732,-0.025383869186044,0.016150616109371,-0.018644561991096,-0.006178589537740));
res += mul(Get(s1,-dx,dy), float4x4(0.015212061814964,0.005739678163081,0.008006731979549,-0.002528348704800,-0.008216848596931,-0.017559882253408,-0.031082294881344,0.042337313294411,-0.051307164132595,0.018217019736767,0.051231887191534,0.054023660719395,-0.061906367540359,-0.011859517544508,-0.100218750536442,-0.002112688962370));
res += mul(Get(s1,0,-dy), float4x4(-0.014879831112921,-0.014895083382726,0.017191378399730,0.025226498022676,-0.044581361114979,-0.011705281212926,-0.000123013538541,0.038543324917555,-0.020337594673038,-0.019576180726290,-0.027524227276444,0.046996850520372,-0.033867981284857,-0.031135467812419,0.044440012425184,0.063047364354134));
res += mul(Get(s1,0,0), float4x4(0.019616266712546,0.007007144391537,0.030364880338311,-0.026112338528037,0.033996526151896,-0.037839166820049,0.012571981176734,-0.116649381816387,0.072900399565697,-0.027327580377460,-0.039238799363375,-0.104234650731087,-0.021517474204302,-0.075784385204315,0.094092831015587,-0.114930242300034));
res += mul(Get(s1,0,dy), float4x4(0.021504320204258,-0.004453708883375,0.010981339029968,-0.019512427970767,0.023677902296185,-0.002019106876105,-0.027824727818370,0.071367569267750,0.018585484474897,-0.025469690561295,0.055895004421473,0.019504517316818,-0.030367191880941,-0.071637198328972,-0.015205754898489,0.028837598860264));
res += mul(Get(s1,dx,-dy), float4x4(0.018415557220578,-0.018297454342246,0.022284282371402,-0.029055958613753,-0.020005552098155,-0.010301776230335,0.025157896801829,0.066358536481857,-0.042402010411024,-0.007313499692827,-0.011238187551498,0.025164851918817,0.013985252007842,-0.097665317356586,0.035811770707369,0.025339109823108));
res += mul(Get(s1,dx,0), float4x4(0.040527071803808,-0.003954560495913,0.001439414802007,-0.016806017607450,0.065507866442204,0.012752066366374,0.015499535948038,-0.036901991814375,0.116078630089760,-0.017429335042834,-0.030687546357512,-0.049445010721684,0.112100392580032,-0.032207380980253,-0.023561498150229,-0.061077937483788));
res += mul(Get(s1,dx,dy), float4x4(0.022459024563432,-0.013313969597220,-0.011621192097664,-0.022826075553894,-0.036689799278975,0.064534693956375,0.003551934612915,0.086332745850086,0.023763818666339,-0.004462638869882,0.004110733512789,0.034179978072643,0.034479044377804,-0.048092618584633,0.030686691403389,0.070475690066814));
res += mul(Get(s2,-dx,-dy), float4x4(-0.015015219338238,0.027908494696021,0.007950239814818,-0.015278564766049,-0.002470681210980,0.021663032472134,-0.006062652915716,0.001106562558562,-0.053716648370028,-0.073853388428688,-0.078617110848427,0.002090455032885,-0.018805781379342,-0.002643442945555,0.009385542012751,0.000478330359329));
res += mul(Get(s2,-dx,0), float4x4(-0.019821263849735,-0.008141071535647,0.048049740493298,-0.015993257984519,-0.000607948983088,0.022085607051849,0.014934316277504,0.020098086446524,-0.013458307832479,-0.104485630989075,-0.039930131286383,0.036252997815609,-0.009177306666970,0.015015045180917,-0.001858366187662,0.006359854247421));
res += mul(Get(s2,-dx,dy), float4x4(0.002586733084172,-0.026636464521289,0.052823524922132,-0.024685714393854,-0.013123923912644,0.022993363440037,0.004544753581285,0.017495850101113,0.072714157402515,-0.055887114256620,-0.054567188024521,-0.026715608313680,-0.021295653656125,-0.006060224026442,-0.035361029207706,0.006231996696442));
res += mul(Get(s2,0,-dy), float4x4(-0.013269239105284,0.008447386324406,-0.034083418548107,0.041279479861259,0.012729679234326,0.002992195542902,-0.006599905434996,0.002178643131629,-0.002888129558414,-0.104631327092648,0.067807488143444,-0.161107674241066,-0.057282507419586,-0.004938451573253,0.062904052436352,-0.005121449939907));
res += mul(Get(s2,0,0), float4x4(-0.010999986901879,-0.010107318870723,0.007350627332926,-0.043566685169935,0.027998885139823,0.014104413799942,0.003549233544618,0.012442981824279,0.102131336927414,-0.017494350671768,0.049264363944530,0.153949409723282,-0.080385081470013,-0.002082589780912,0.062675200402737,0.005691697821021));
res += mul(Get(s2,0,dy), float4x4(0.033687844872475,-0.024616651237011,0.051047228276730,-0.013056872412562,0.013220066204667,0.008982145227492,-0.001639796188101,-0.011282611638308,0.032992232590914,0.114222422242165,-0.096367456018925,0.038584291934967,-0.046500027179718,-0.041501220315695,-0.036436527967453,0.063289955258369));
res += mul(Get(s2,dx,-dy), float4x4(0.019005537033081,0.021374560892582,-0.024430571123958,0.036307599395514,0.000796742155217,0.022015493363142,-0.001391230267473,0.000364039500710,0.069965362548828,-0.051625218242407,-0.002922356128693,0.073204472661018,-0.056633982807398,0.036031145602465,-0.004142569378018,-0.020380234345794));
res += mul(Get(s2,dx,0), float4x4(0.044262103736401,-0.010247375816107,0.000804215786047,-0.030184533447027,-0.020805934444070,0.034986946731806,-0.007936095818877,0.003765884088352,-0.045502793043852,0.132877320051193,0.046389874070883,0.043069362640381,-0.103043258190155,0.054448947310448,0.019942097365856,-0.068462684750557));
res += mul(Get(s2,dx,dy), float4x4(0.030660662800074,-0.021819038316607,0.021000912413001,-0.015735745429993,-0.028811397030950,0.041331700980663,-0.013131499290466,-0.033075023442507,-0.084491461515427,-0.013620893470943,-0.014432985335588,-0.104445375502110,-0.049688611179590,-0.009079859592021,0.013637979514897,-0.022863071411848));
res += mul(Get(s3,-dx,-dy), float4x4(-0.035929523408413,0.037571456283331,0.001114216167480,0.011793684214354,-0.005899403244257,-0.053160969167948,-0.012652407400310,0.017249092459679,-0.074360825121403,0.000858593208250,0.092687875032425,-0.027485715225339,-0.018054988235235,0.045351888984442,0.024180686101317,-0.023161299526691));
res += mul(Get(s3,-dx,0), float4x4(-0.038990620523691,0.030583042651415,-0.006453912239522,-0.003579640993848,-0.005876272451133,-0.030844697728753,-0.017273733392358,0.017450794577599,-0.104210011661053,0.116911105811596,0.068141877651215,-0.045358717441559,-0.021482560783625,0.008736249990761,0.026085179299116,-0.046310633420944));
res += mul(Get(s3,-dx,dy), float4x4(-0.033068437129259,-0.039562512189150,-0.015732830390334,0.055907495319843,0.000717931368854,-0.029545370489359,-0.006456514820457,0.004577473271638,-0.083541177213192,0.033025264739990,-0.089127950370312,0.016312379390001,-0.034942381083965,0.069103337824345,0.080791309475899,-0.000004315599654));
res += mul(Get(s3,0,-dy), float4x4(-0.026450822129846,-0.072659686207771,-0.028913749381900,0.003873975714669,0.002829336328432,-0.013993558473885,-0.000259395048488,-0.019924575462937,-0.007685477379709,0.069779887795448,-0.020975934341550,0.125421151518822,-0.024875147268176,0.028942132368684,-0.033402100205421,0.070405021309853));
res += mul(Get(s3,0,0), float4x4(-0.035058856010437,-0.043609045445919,-0.035757075995207,0.010416391305625,0.035472169518471,0.005068982020020,-0.013199632056057,-0.020804693922400,-0.083171330392361,0.069363959133625,-0.015723332762718,-0.060637541115284,-0.032849106937647,0.044459749013186,-0.010705084539950,-0.038016509264708));
res += mul(Get(s3,0,dy), float4x4(0.031836021691561,-0.015209725126624,-0.029888173565269,-0.019590999931097,0.019043499603868,0.013353803195059,-0.039239615201950,0.010147514753044,-0.085724122822285,-0.050918664783239,0.022767139598727,0.001695275539532,-0.035037785768509,0.061927888542414,0.082317061722279,-0.032327748835087));
res += mul(Get(s3,dx,-dy), float4x4(0.012572281062603,-0.081791698932648,0.008278913795948,-0.094418071210384,0.000259465392446,0.038370978087187,0.027724491432309,0.055136796087027,0.022344326600432,-0.020062649622560,0.014922753907740,0.008726990781724,-0.044183287769556,0.002341919345781,-0.030800845474005,0.042937550693750));
res += mul(Get(s3,dx,0), float4x4(0.075292661786079,0.006364814471453,-0.028299968689680,0.051560688763857,-0.044992491602898,0.036383762955666,0.016733778640628,-0.015659030526876,0.088195152580738,-0.086875617504120,-0.016763361170888,-0.032441265881062,0.083192579448223,-0.019025944173336,-0.000263351656031,-0.039372757077217));
res += mul(Get(s3,dx,dy), float4x4(0.037642333656549,0.080962054431438,-0.088739350438118,0.015635829418898,-0.061322338879108,0.065272234380245,-0.025702001526952,0.019055943936110,0.084783285856247,-0.060134593397379,0.007568284869194,0.059636902064085,0.068581208586693,-0.005660471040756,0.052380539476871,0.011608688160777));
return max(float4(0,0,0,0), res);
}