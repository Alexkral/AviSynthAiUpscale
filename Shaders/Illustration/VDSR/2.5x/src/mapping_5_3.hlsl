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
res += mul(Get(s0,-dx,-dy), float4x4(-0.132599800825119,-0.040760286152363,0.113107718527317,-0.076516024768353,-0.030720725655556,0.032856464385986,-0.029882295057178,-0.071021206676960,0.044265143573284,-0.022614270448685,-0.032535750418901,0.032012131065130,-0.018826853483915,0.167117059230804,0.052332051098347,0.105555124580860));
res += mul(Get(s0,-dx,0), float4x4(-0.120648346841335,0.106921240687370,0.131306946277618,-0.095466904342175,0.000600075465627,-0.040530979633331,0.066925995051861,0.013011840172112,-0.260726779699326,-0.044106557965279,-0.099146820604801,-0.001395553001203,0.026761621236801,-0.003284722333774,-0.040800414979458,0.177802562713623));
res += mul(Get(s0,-dx,dy), float4x4(0.086788438260555,-0.037794169038534,0.018781146034598,0.052464231848717,0.138879731297493,-0.071475677192211,-0.040284994989634,0.087512217462063,-0.090391449630260,-0.052508037537336,0.155973061919212,0.169378280639648,-0.057684212923050,-0.086817026138306,0.307364106178284,-0.076971888542175));
res += mul(Get(s0,0,-dy), float4x4(-0.006034834776074,-0.168044403195381,-0.077705167233944,0.012244028970599,-0.043945029377937,-0.001426930073649,0.070902720093727,0.054667267948389,-0.081293925642967,-0.135281175374985,0.082299001514912,0.194127425551414,0.063821487128735,-0.086247585713863,-0.025294100865722,0.030824040994048));
res += mul(Get(s0,0,0), float4x4(0.027275709435344,-0.123632028698921,0.026385592296720,-0.063912741839886,-0.191021680831909,0.110477544367313,0.007781904656440,0.088894158601761,-0.032147902995348,-0.053616806864738,-0.023353649303317,-0.018297713249922,-0.223552346229553,0.026904819533229,-0.036498047411442,-0.071650929749012));
res += mul(Get(s0,0,dy), float4x4(0.012979397550225,-0.087318457663059,-0.046530909836292,0.040976595133543,0.119096785783768,0.015020385384560,-0.134568586945534,-0.031480111181736,0.012855284847319,-0.005193841643631,0.099603280425072,-0.071738429367542,-0.223509043455124,-0.098198235034943,-0.086928099393845,-0.074523583054543));
res += mul(Get(s0,dx,-dy), float4x4(-0.189923867583275,0.125549972057343,0.297105789184570,0.137168005108833,0.181958302855492,-0.040076080709696,0.022952094674110,-0.004980805329978,0.143920943140984,-0.077464759349823,0.243405669927597,0.271202594041824,-0.120511390268803,-0.213651210069656,-0.059616591781378,0.205217167735100));
res += mul(Get(s0,dx,0), float4x4(-0.141215249896049,0.172228887677193,0.140027508139610,0.052366364747286,0.109950624406338,-0.002791276667267,-0.046418726444244,-0.050542112439871,-0.193373247981071,0.094882197678089,-0.038410298526287,0.010587984696031,-0.009118153713644,0.079305991530418,0.025186618790030,-0.070774339139462));
res += mul(Get(s0,dx,dy), float4x4(0.119347408413887,-0.032687850296497,0.143808811903000,0.222658127546310,-0.211050465703011,0.005852253641933,-0.281906038522720,0.053914751857519,-0.078593023121357,0.005501872859895,-0.025562217459083,-0.088823981583118,-0.036436609923840,-0.118009544909000,-0.048782218247652,-0.006686604116112));
res += mul(Get(s1,-dx,-dy), float4x4(0.106353476643562,-0.006737869232893,0.040085662156343,0.056225042790174,-0.010746732354164,0.006235510110855,0.098732471466064,0.019638286903501,-0.070384293794632,0.067692011594772,0.072369821369648,0.040994957089424,0.073467701673508,0.161349743604660,-0.105189710855484,-0.053410034626722));
res += mul(Get(s1,-dx,0), float4x4(0.103622190654278,0.079623341560364,-0.041884694248438,0.032765202224255,-0.063999675214291,-0.168602645397186,-0.183154284954071,-0.004485218785703,0.031820137053728,0.069672748446465,0.131541624665260,0.102808125317097,0.069731108844280,0.075565330684185,-0.139694318175316,0.039715439081192));
res += mul(Get(s1,-dx,dy), float4x4(-0.076615877449512,-0.088773816823959,0.005195334088057,-0.140516534447670,-0.081741660833359,0.016002254560590,0.131574183702469,0.089092299342155,0.042413171380758,0.103412464261055,-0.152603551745415,0.035308055579662,-0.163925722241402,0.076426558196545,0.043606542050838,-0.067347109317780));
res += mul(Get(s1,0,-dy), float4x4(0.113169819116592,0.233900398015976,0.095582589507103,-0.289473474025726,-0.047764975577593,-0.142397776246071,-0.097652919590473,0.008074466139078,0.029292622581124,-0.076926879584789,-0.026036413386464,-0.155636489391327,0.152735486626625,0.145752161741257,-0.113218307495117,-0.099624894559383));
res += mul(Get(s1,0,0), float4x4(-0.052822157740593,-0.055891178548336,0.034957908093929,-0.018618049100041,0.063597075641155,0.120281592011452,0.085249513387680,0.216981813311577,0.003091224236414,0.016893979161978,0.021622546017170,0.043059475719929,0.026966109871864,-0.019536165520549,-0.048483770340681,-0.026608096435666));
res += mul(Get(s1,0,dy), float4x4(-0.074422016739845,-0.108671590685844,0.019578199833632,0.200318053364754,0.174849852919579,0.038582254201174,0.005603159777820,0.015819106251001,-0.075180813670158,-0.138687938451767,-0.042826369404793,-0.158386364579201,0.124835744500160,0.034683227539063,0.052580747753382,0.023839507251978));
res += mul(Get(s1,dx,-dy), float4x4(0.069870099425316,0.133936762809753,0.050506390631199,-0.196316182613373,0.129122003912926,0.141818702220917,0.049615599215031,-0.084501057863235,-0.022519517689943,-0.011611567810178,-0.062781780958176,0.002336208475754,0.074787035584450,0.079112716019154,0.006460774689913,0.125805974006653));
res += mul(Get(s1,dx,0), float4x4(0.079159922897816,-0.287613838911057,-0.070632390677929,0.020179487764835,-0.088761858642101,0.073582939803600,-0.128429442644119,-0.120399601757526,0.039539154618979,-0.104135423898697,0.060816928744316,0.045331943780184,-0.080064617097378,-0.088662944734097,0.015947408974171,-0.089697346091270));
res += mul(Get(s1,dx,dy), float4x4(-0.180961251258850,0.095892108976841,-0.016961265355349,0.013885390944779,0.095737926661968,-0.198655769228935,-0.111350603401661,-0.061175256967545,0.033124372363091,-0.140084236860275,-0.009247654117644,0.041381943970919,-0.076434955000877,0.044917702674866,0.015638595446944,0.057481069117785));
res += mul(Get(s2,-dx,-dy), float4x4(0.036817789077759,0.051660589873791,-0.096823439002037,0.093687906861305,-0.166953280568123,0.119832254946232,0.091615222394466,0.057502008974552,-0.028342485427856,0.038719903677702,-0.129647046327591,-0.204805046319962,0.042436338961124,-0.094647325575352,0.013580298982561,0.117044404149055));
res += mul(Get(s2,-dx,0), float4x4(0.054817445576191,0.013322160579264,-0.108676701784134,0.084830448031425,-0.343684136867523,-0.089662894606590,0.000020420287910,0.029702214524150,0.204065173864365,0.132302522659302,-0.014993851073086,0.145064100623131,-0.133422613143921,-0.011476905085146,0.229883074760437,0.071841396391392));
res += mul(Get(s2,-dx,dy), float4x4(-0.084313757717609,0.100064061582088,0.026087649166584,0.010681710205972,-0.057825159281492,0.066765896975994,-0.023591155186296,0.145873993635178,0.126287862658501,-0.069842867553234,0.036875210702419,-0.043445277959108,-0.252908527851105,-0.019944284111261,-0.022105190902948,0.065995134413242));
res += mul(Get(s2,0,-dy), float4x4(-0.110288180410862,0.139243796467781,-0.137194275856018,-0.080759614706039,-0.051209457218647,0.095910042524338,-0.043780852109194,-0.031873442232609,0.192995533347130,0.049343369901180,-0.196108892560005,0.109609618782997,0.137114077806473,0.015221497975290,0.049074582755566,0.146795392036438));
res += mul(Get(s2,0,0), float4x4(-0.141491040587425,0.088949084281921,0.058984693139791,-0.148838102817535,-0.100602783262730,0.059758592396975,0.149963587522507,-0.137139707803726,-0.177036613225937,0.099552616477013,0.096874505281448,0.185055240988731,0.215339109301567,0.109003327786922,-0.072787672281265,0.162555932998657));
res += mul(Get(s2,0,dy), float4x4(-0.052731361240149,-0.108646422624588,-0.130763143301010,-0.138507291674614,-0.201187089085579,0.030193459242582,-0.018301874399185,0.066078223288059,-0.061159607023001,0.125997021794319,0.099068924784660,0.119699954986572,0.232307240366936,0.062222633510828,-0.117525547742844,-0.059298340231180));
res += mul(Get(s2,dx,-dy), float4x4(0.157111838459969,-0.159177407622337,0.062449734658003,-0.243325963616371,0.266881823539734,0.055253934115171,0.261263221502304,0.031480677425861,0.006664201151580,0.159018546342850,0.002650493290275,0.118738189339638,-0.096285074949265,0.160390257835388,0.054281197488308,-0.222842574119568));
res += mul(Get(s2,dx,0), float4x4(-0.041553042829037,0.178647443652153,-0.144170701503754,0.087293356657028,0.072113335132599,0.039774905890226,-0.070019900798798,-0.131938442587852,0.064489953219891,-0.026109689846635,-0.046325679868460,-0.026690224185586,0.066643744707108,-0.026133380830288,0.082168541848660,0.042527802288532));
res += mul(Get(s2,dx,dy), float4x4(0.209249064326286,0.119649194180965,0.002479675225914,-0.008794530294836,0.143898442387581,0.009488312527537,-0.016556790098548,-0.083093263208866,-0.027620621025562,-0.032228406518698,-0.110660925507545,0.010158190503716,0.171925559639931,0.036320861428976,0.015558538027108,0.110037274658680));
res += mul(Get(s3,-dx,-dy), float4x4(0.057092417031527,0.019939282909036,-0.061670675873756,0.130649358034134,0.029589543119073,0.104984968900681,-0.024451339617372,0.007251457776874,-0.035789385437965,0.024087402969599,-0.046894993633032,0.109023481607437,0.060236576944590,0.045710388571024,0.144985496997833,-0.141062930226326));
res += mul(Get(s3,-dx,0), float4x4(0.008702036924660,0.169068232178688,-0.037620518356562,-0.026938043534756,0.122837536036968,0.173705205321312,-0.103363513946533,-0.177588164806366,-0.141787678003311,0.061652395874262,0.136437401175499,0.079537972807884,0.112175658345222,-0.127510860562325,-0.148239552974701,0.018841451033950));
res += mul(Get(s3,-dx,dy), float4x4(-0.028098300099373,0.073498889803886,0.143193736672401,-0.141091838479042,0.168600067496300,0.074837751686573,0.004889185540378,-0.174456402659416,-0.179029434919357,-0.188175871968269,0.006944002583623,0.111510679125786,-0.197056710720062,0.096687212586403,0.154890790581703,-0.106657415628433));
res += mul(Get(s3,0,-dy), float4x4(0.168175667524338,-0.024315105751157,0.009535022079945,-0.001540099619888,0.000972276087850,-0.051379434764385,-0.149586200714111,0.067579820752144,-0.134469360113144,0.211558982729912,-0.149760738015175,0.041910119354725,0.049276303499937,0.110755354166031,0.008111024275422,0.093872129917145));
res += mul(Get(s3,0,0), float4x4(-0.137113273143768,0.045502837747335,-0.014628557488322,-0.030578335747123,0.147320568561554,0.147043749690056,-0.079654023051262,-0.117239348590374,-0.008464502170682,-0.053468126803637,0.030197149142623,-0.025055253878236,-0.033565986901522,-0.169127836823463,-0.113486148416996,-0.085994757711887));
res += mul(Get(s3,0,dy), float4x4(0.072928950190544,0.064556047320366,-0.144813075661659,-0.070111662149429,0.009454566054046,0.146325692534447,-0.040688976645470,-0.279884934425354,0.003287569619715,0.051381379365921,-0.146271973848343,-0.067997425794601,0.070187062025070,0.032329287379980,-0.163380488753319,-0.103696964681149));
res += mul(Get(s3,dx,-dy), float4x4(0.105646118521690,-0.226330459117889,-0.246802866458893,-0.042714774608612,0.147158652544022,0.042906925082207,-0.034914765506983,-0.085664160549641,-0.114713877439499,0.039080463349819,0.104555658996105,0.000124617727124,-0.028581919148564,0.011217743158340,0.213674038648605,-0.049795199185610));
res += mul(Get(s3,dx,0), float4x4(-0.065271750092506,-0.145143836736679,0.019190959632397,-0.198573440313339,-0.019463816657662,-0.013966316357255,-0.083590425550938,0.074170656502247,-0.045636229217052,0.076838001608849,0.101641915738583,0.100119180977345,-0.076555013656616,-0.141931444406509,0.182731732726097,0.018386464565992));
res += mul(Get(s3,dx,dy), float4x4(0.094678252935410,-0.055141571909189,0.020180223509669,-0.103143155574799,0.188656538724899,0.089183405041695,-0.003241406055167,-0.084817811846733,0.004373172763735,0.144565552473068,0.096045136451721,-0.064770415425301,0.128083765506744,0.004952277522534,0.094705022871494,-0.214259803295135));
return max(float4(0,0,0,0), res);
}