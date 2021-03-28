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
float4 res = float4(-0.197389513254166,-0.035416740924120,-0.147492021322250,0.048816196620464);
res += mul(Get(s0,-dx,-dy), float4x4(0.123227223753929,0.032018117606640,-0.057107955217361,0.100478045642376,-0.061078283935785,-0.211228832602501,-0.210056424140930,-0.060850195586681,-0.038883242756128,0.027874961495399,0.032385755330324,-0.135762274265289,0.003249069675803,0.002299116924405,0.109055399894714,-0.007618254516274));
res += mul(Get(s0,-dx,0), float4x4(0.067935802042484,-0.062981508672237,0.191872850060463,-0.153903722763062,-0.043512441217899,0.005641927476972,-0.064990028738976,-0.036462876945734,0.026659531518817,-0.071732886135578,0.028496315702796,0.087348386645317,-0.259979665279388,-0.078802898526192,0.049943204969168,0.174238622188568));
res += mul(Get(s0,-dx,dy), float4x4(0.030361237004399,0.012886974960566,-0.172047227621078,0.102552868425846,-0.010584446601570,-0.012545455247164,0.032767977565527,-0.030997525900602,0.066467046737671,0.037798393517733,0.178772196173668,-0.060621712356806,0.100118309259415,-0.028571985661983,-0.168699890375137,0.052361451089382));
res += mul(Get(s0,0,-dy), float4x4(-0.029795806854963,-0.013516981154680,0.051217954605818,-0.039257049560547,-0.277888029813766,-0.043457277119160,-0.123070664703846,-0.249155670404434,0.110476039350033,0.316331923007965,-0.175552487373352,-0.019768334925175,-0.045624915510416,0.139378875494003,-0.064560197293758,0.017754172906280));
res += mul(Get(s0,0,0), float4x4(0.100058943033218,0.022837061434984,0.089390203356743,-0.105362437665462,-0.083772756159306,0.106233470141888,0.043996255844831,-0.042916532605886,0.187336713075638,-0.221504077315331,0.067867994308472,-0.015174406580627,-0.285774320363998,-0.026476465165615,-0.083499386906624,0.233276456594467));
res += mul(Get(s0,0,dy), float4x4(0.003949687350541,-0.111310437321663,0.024771606549621,0.155340552330017,0.057633016258478,0.028101628646255,0.000903506064788,0.062635526061058,-0.121962934732437,-0.143947213888168,-0.142538577318192,-0.144444793462753,0.018858825787902,0.327788323163986,-0.173229232430458,0.163017064332962));
res += mul(Get(s0,dx,-dy), float4x4(0.083029657602310,0.090210415422916,-0.195812404155731,0.021604035049677,-0.137519255280495,0.067688092589378,-0.245141178369522,-0.064031146466732,-0.206636145710945,-0.000783904339187,0.074314497411251,0.050615753978491,0.044040244072676,0.120519019663334,0.144879117608070,0.150404483079910));
res += mul(Get(s0,dx,0), float4x4(0.046335853636265,0.040356732904911,0.028247604146600,0.112124077975750,-0.101062335073948,0.004678077995777,0.023440510034561,0.085260801017284,0.031256414949894,-0.031207179650664,0.038950733840466,-0.031528890132904,0.045883946120739,0.123226188123226,0.184186428785324,0.153202369809151));
res += mul(Get(s0,dx,dy), float4x4(-0.042787030339241,-0.048548769205809,-0.051317073404789,-0.067494824528694,-0.051694933325052,-0.000310072879074,-0.090694665908813,-0.040565382689238,0.148075833916664,0.191814318299294,-0.087765969336033,0.023954194039106,-0.002141925506294,0.207364588975906,0.098007969558239,0.098093211650848));
res += mul(Get(s1,-dx,-dy), float4x4(-0.044908177107573,0.018153289332986,-0.270564109086990,-0.152709767222404,-0.198346585035324,0.076892524957657,0.025966554880142,0.047421641647816,0.091412104666233,0.120330534875393,0.044146575033665,0.097529068589211,-0.030206624418497,-0.144431546330452,-0.151182949542999,0.016800697892904));
res += mul(Get(s1,-dx,0), float4x4(0.117562353610992,0.052252050489187,0.184405371546745,-0.036258213222027,0.154068842530251,-0.053035847842693,0.108584672212601,-0.095572963356972,0.007271643262357,-0.073436118662357,0.025657147169113,0.064260326325893,-0.043674048036337,-0.080976992845535,0.175570845603943,-0.044269453734159));
res += mul(Get(s1,-dx,dy), float4x4(0.134891733527184,0.039241749793291,0.083504863083363,-0.140917450189590,-0.109770886600018,-0.049669422209263,-0.050893381237984,0.081063754856586,0.069673307240009,-0.063701599836349,-0.029612084850669,0.050816982984543,0.081518612802029,0.123540237545967,-0.200889453291893,0.130900219082832));
res += mul(Get(s1,0,-dy), float4x4(0.207390323281288,-0.101529084146023,-0.069606378674507,-0.086475692689419,-0.074932374060154,-0.122953638434410,0.052960313856602,0.065879203379154,0.173890680074692,-0.007745195180178,-0.119098722934723,0.060305137187243,0.163419052958488,0.015258421190083,0.185231402516365,-0.077256225049496));
res += mul(Get(s1,0,0), float4x4(-0.307161957025528,-0.302051126956940,0.052460029721260,-0.066015034914017,0.129796430468559,-0.027445675805211,0.052512995898724,0.048644527792931,0.102672062814236,0.159195855259895,0.099375084042549,-0.078212097287178,-0.048015173524618,0.002989787841216,-0.126327991485596,0.140107840299606));
res += mul(Get(s1,0,dy), float4x4(-0.026159020140767,0.007731329184026,0.162602335214615,0.215042307972908,0.132642731070518,-0.023240730166435,-0.255004942417145,-0.013721565715969,0.049206092953682,-0.078079625964165,0.117105074226856,0.196284994482994,0.061271727085114,-0.030948925763369,0.173351570963860,0.006578547880054));
res += mul(Get(s1,dx,-dy), float4x4(-0.056939732283354,0.105628393590450,-0.015354086644948,-0.172252431511879,-0.129579707980156,0.058313660323620,0.012828162871301,-0.187263295054436,0.245074674487114,-0.093125805258751,-0.020344948396087,-0.061120253056288,-0.057014882564545,0.217779502272606,0.070052035152912,-0.010546840727329));
res += mul(Get(s1,dx,0), float4x4(0.372782677412033,0.102838858962059,-0.131526172161102,0.118198215961456,0.107738941907883,-0.073852926492691,-0.022870887070894,0.050623591989279,0.039424367249012,0.301591157913208,0.250075817108154,-0.047197952866554,0.089413218200207,-0.015101604163647,-0.052313894033432,-0.052037991583347));
res += mul(Get(s1,dx,dy), float4x4(0.006053355988115,-0.025979101657867,0.075980901718140,0.105880729854107,-0.072211578488350,0.070064090192318,-0.067396655678749,-0.158096954226494,0.243803516030312,0.047176565974951,0.112371668219566,0.139727294445038,-0.114916563034058,-0.113522619009018,-0.015832718461752,-0.112801335752010));
res += mul(Get(s2,-dx,-dy), float4x4(0.186113044619560,-0.123899422585964,0.014553346671164,-0.088272847235203,0.108829416334629,-0.032577197998762,0.002281490713358,-0.020152395591140,-0.005145845469087,-0.045990001410246,0.422975987195969,0.071651428937912,-0.000498028239235,-0.018804376944900,0.069953747093678,0.116891756653786));
res += mul(Get(s2,-dx,0), float4x4(0.184750780463219,-0.204011902213097,-0.033296082168818,0.305854737758636,0.100896604359150,-0.150756180286407,0.085738413035870,-0.156295418739319,-0.076843701303005,-0.279419869184494,0.085535570979118,0.145019307732582,-0.084659978747368,-0.062429036945105,-0.046620000153780,-0.089319296181202));
res += mul(Get(s2,-dx,dy), float4x4(0.164801210165024,0.059765990823507,0.032826818525791,-0.151066198945045,-0.221284717321396,-0.259622752666473,0.213332101702690,-0.329453617334366,0.081142753362656,-0.201164677739143,-0.040614407509565,-0.027643417939544,-0.081756345927715,-0.165130823850632,-0.039328522980213,-0.102287642657757));
res += mul(Get(s2,0,-dy), float4x4(-0.015192957594991,0.169730752706528,-0.105480566620827,0.022910257801414,0.168882623314857,-0.048294384032488,-0.172084704041481,-0.175902903079987,0.077408201992512,0.167263537645340,0.109764695167542,0.100039064884186,-0.135252431035042,-0.133883208036423,0.076968863606453,-0.007454624865204));
res += mul(Get(s2,0,0), float4x4(0.184214815497398,0.091274194419384,-0.046429820358753,-0.039443563669920,-0.002117662690580,-0.024939393624663,-0.035474926233292,-0.470438003540039,-0.208883196115494,0.139719203114510,-0.206608220934868,0.030121039599180,-0.129839077591896,-0.017474256455898,-0.192366138100624,0.066719479858875));
res += mul(Get(s2,0,dy), float4x4(-0.152673050761223,0.023725844919682,-0.044289793819189,0.056316267699003,-0.276115626096725,-0.100556924939156,-0.038865495473146,0.050130654126406,0.182477548718452,0.015872636809945,0.035788800567389,0.052638810127974,0.024932902306318,-0.197844892740250,-0.116105087101460,-0.067363932728767));
res += mul(Get(s2,dx,-dy), float4x4(0.000070021058491,-0.104344204068184,-0.326431483030319,-0.106911025941372,0.168126150965691,-0.093486249446869,0.044692277908325,-0.004250066354871,-0.059648379683495,0.053805831819773,0.057360388338566,-0.008580451831222,-0.151757746934891,0.110915675759315,0.004622674547136,0.024314392358065));
res += mul(Get(s2,dx,0), float4x4(-0.100275456905365,-0.086511030793190,-0.297144621610641,-0.036390945315361,0.082547403872013,0.229395180940628,0.069429419934750,-0.181796714663506,-0.067584566771984,-0.107176050543785,0.201643392443657,-0.184815987944603,-0.118465311825275,0.162438914179802,-0.015901481732726,0.071062535047531));
res += mul(Get(s2,dx,dy), float4x4(0.218704804778099,-0.124092556536198,-0.042914751917124,-0.149877920746803,0.151734322309494,0.072922967374325,-0.224496304988861,-0.162175953388214,0.221688121557236,0.176041290163994,0.233922421932220,-0.125686258077621,-0.020232975482941,-0.091386526823044,0.052617564797401,-0.024639246985316));
res += mul(Get(s3,-dx,-dy), float4x4(0.113146468997002,-0.083309233188629,0.078897543251514,-0.125750526785851,-0.004164969082922,-0.124901436269283,-0.190028369426727,-0.056249003857374,-0.213043734431267,0.119655743241310,0.131928190588951,-0.022355437278748,-0.160626500844955,0.131092607975006,0.064404495060444,-0.101041346788406));
res += mul(Get(s3,-dx,0), float4x4(0.395450890064240,-0.035347860306501,0.126162230968475,0.002642356790602,-0.072429679334164,0.176993146538734,0.207551658153534,-0.013794708065689,0.019898578524590,-0.001215058146045,-0.380232900381088,-0.042108021676540,-0.058294251561165,-0.187414377927780,-0.044268459081650,-0.015381087549031));
res += mul(Get(s3,-dx,dy), float4x4(0.105959266424179,-0.015846451744437,0.134053215384483,-0.025791812688112,0.004008920397609,-0.023663029074669,-0.066922090947628,0.003393162973225,0.034206468611956,-0.119105309247971,-0.071980111300945,-0.107240423560143,0.010441647842526,-0.096765086054802,-0.047678839415312,-0.085729621350765));
res += mul(Get(s3,0,-dy), float4x4(-0.119242779910564,0.055576108396053,-0.059351250529289,0.039183102548122,0.263041943311691,-0.061636477708817,-0.148197934031487,0.035806275904179,-0.092360392212868,0.007503181695938,-0.107439696788788,-0.030947223305702,-0.209193587303162,-0.014194219373167,-0.093841180205345,0.022472150623798));
res += mul(Get(s3,0,0), float4x4(-0.010839812457561,-0.099413849413395,0.020227557048202,-0.001424519228749,0.020238839089870,0.279605746269226,0.347837477922440,0.036898482590914,-0.074949972331524,0.193813845515251,0.268479019403458,-0.197574272751808,-0.110460430383682,0.036541171371937,-0.113069787621498,0.084659941494465));
res += mul(Get(s3,0,dy), float4x4(0.254808574914932,0.050704035907984,0.299933493137360,0.093304462730885,-0.081404305994511,-0.047672353684902,-0.104048319160938,0.038238417357206,0.102115452289581,-0.071015015244484,-0.107720941305161,-0.093499489128590,0.033768501132727,0.087187111377716,-0.178384795784950,-0.059982188045979));
res += mul(Get(s3,dx,-dy), float4x4(0.006447623483837,0.009367483668029,0.076775036752224,0.080159835517406,0.052362322807312,-0.047232188284397,0.088237911462784,-0.113846443593502,0.118893153965473,-0.031043022871017,-0.031467217952013,0.126011669635773,-0.094044297933578,-0.112905003130436,-0.101827852427959,-0.004196513909847));
res += mul(Get(s3,dx,0), float4x4(0.132518395781517,0.089498735964298,0.180429384112358,0.043277282267809,-0.054399780929089,0.000554417551029,0.061683610081673,-0.084837190806866,0.008361426182091,-0.090220019221306,0.180675119161606,0.320333182811737,-0.130507156252861,0.094882667064667,0.303371310234070,-0.007705219089985));
res += mul(Get(s3,dx,dy), float4x4(-0.112907707691193,0.030004534870386,0.142255872488022,0.373414814472198,0.118143759667873,0.142716601490974,-0.057788785547018,-0.011791178025305,-0.121061585843563,-0.010847367346287,-0.049262512475252,0.278896123170853,0.069578900933266,0.000251793127973,0.179770573973656,-0.058729074895382));
res += mul(Get(s4,-dx,-dy), float4x4(0.061822447925806,-0.139165997505188,0.157935410737991,0.252233892679214,0.032605707645416,-0.087234511971474,0.036832816898823,-0.001504068146460,-0.093981675803661,-0.295901775360107,0.212353467941284,-0.039903346449137,-0.139720931649208,0.165267288684845,0.129004776477814,-0.014333991333842));
res += mul(Get(s4,-dx,0), float4x4(0.111669555306435,-0.075446240603924,-0.105566143989563,0.168084293603897,-0.014150702394545,-0.106245830655098,-0.030166804790497,-0.195284888148308,-0.002384361345321,0.099929809570313,0.086750030517578,-0.073051236569881,0.189007714390755,0.316219121217728,0.289531111717224,-0.574994742870331));
res += mul(Get(s4,-dx,dy), float4x4(-0.114852845668793,-0.028598809614778,-0.056910801678896,-0.009274110198021,0.160961344838142,-0.151653513312340,0.022677360102534,0.065462358295918,0.044151242822409,-0.039277695119381,0.003914196509868,-0.042578596621752,0.174267724156380,-0.040509656071663,-0.028617607429624,0.010945399291813));
res += mul(Get(s4,0,-dy), float4x4(-0.164389029145241,-0.111162275075912,0.163924202322960,0.056689284741879,-0.118229843676090,-0.103098295629025,-0.062110744416714,-0.089936226606369,0.157743081450462,-0.079307474195957,-0.016327742487192,0.629554629325867,0.167516008019447,-0.391677200794220,0.078904181718826,0.026990093290806));
res += mul(Get(s4,0,0), float4x4(-0.070523701608181,0.050837613642216,0.074371136724949,0.144871920347214,-0.162232026457787,0.105333901941776,-0.090293072164059,-0.228841409087181,0.151244223117828,0.056137003004551,0.042037628591061,0.084909342229366,0.128187716007233,-0.218138664960861,0.266281247138977,-0.045089665800333));
res += mul(Get(s4,0,dy), float4x4(0.060501620173454,-0.028152199462056,0.028228733688593,0.130243882536888,0.059277415275574,-0.079560764133930,-0.037132441997528,-0.042803280055523,0.118509545922279,-0.122579284012318,-0.106093637645245,-0.028719356283545,0.220338255167007,-0.291369169950485,-0.026325458660722,-0.014316671527922));
res += mul(Get(s4,dx,-dy), float4x4(-0.039343968033791,0.119795113801956,0.015641311183572,-0.022796479985118,0.011557957157493,0.136956468224525,0.093731828033924,0.022567646577954,0.092774122953415,0.330848306417465,-0.052034880965948,0.191672384738922,0.001601550146006,-0.013550396077335,0.105445250868797,0.032017890363932));
res += mul(Get(s4,dx,0), float4x4(-0.000502602488268,0.132256001234055,-0.007708931341767,-0.030941983684897,0.074463076889515,0.262684494256973,-0.102462522685528,-0.207065701484680,-0.011233966797590,0.100952439010143,0.000530687859282,-0.019857835024595,-0.030319320037961,0.223903208971024,0.080219238996506,0.217932343482971));
res += mul(Get(s4,dx,dy), float4x4(0.109495788812637,-0.054634574800730,-0.018384302034974,-0.153713822364807,0.094591096043587,0.004258019383997,-0.052711099386215,-0.001642738468945,-0.227676108479500,-0.144623905420303,0.012853824533522,0.006207112688571,0.044308152049780,-0.137801215052605,0.001485849614255,0.044877238571644));
res += mul(Get(s5,-dx,-dy), float4x4(0.128656223416328,-0.068469174206257,-0.010673765093088,0.000662576290779,-0.082110755145550,-0.067950271070004,0.079415932297707,-0.087470546364784,-0.132011100649834,0.170766100287437,0.093565829098225,0.036675095558167,-0.207640573382378,-0.103936813771725,-0.191172525286674,0.104522317647934));
res += mul(Get(s5,-dx,0), float4x4(-0.047983758151531,-0.238003656268120,-0.213188961148262,-0.207310944795609,0.137290373444557,-0.043333299458027,-0.217468619346619,-0.009532607160509,-0.104875013232231,-0.079806685447693,-0.479093343019485,0.095571778714657,-0.139623314142227,-0.122125715017319,-0.107639566063881,0.139584109187126));
res += mul(Get(s5,-dx,dy), float4x4(-0.208425432443619,-0.101698517799377,0.067218340933323,0.116832539439201,-0.049955435097218,-0.066269800066948,0.115833468735218,0.085172586143017,0.104636654257774,0.163333892822266,0.241582378745079,-0.008315026760101,-0.031669475138187,-0.161439478397369,0.004117063712329,0.157737046480179));
res += mul(Get(s5,0,-dy), float4x4(-0.028141390532255,0.096500501036644,0.120756782591343,0.108295075595379,-0.006025464273989,0.197865128517151,-0.040602691471577,-0.026587419211864,-0.257062911987305,0.258519828319550,-0.069475851953030,0.053831622004509,-0.133801087737083,0.116879627108574,-0.053127869963646,0.014388128183782));
res += mul(Get(s5,0,0), float4x4(-0.140555039048195,-0.030598713085055,-0.015744149684906,-0.113232694566250,0.071792185306549,0.164010807871819,-0.045505922287703,-0.064640887081623,-0.003816921496764,0.102164171636105,-0.041307035833597,-0.387912511825562,0.075552649796009,0.198051825165749,0.106143087148666,-0.218536987900734));
res += mul(Get(s5,0,dy), float4x4(0.060734912753105,0.000112532245112,0.004473547916859,0.044019870460033,-0.021211279556155,0.093471214175224,0.124523788690567,-0.082027301192284,0.035161700099707,0.128239467740059,0.062185753136873,-0.150770485401154,0.113823875784874,-0.071118921041489,-0.097486220300198,-0.111659981310368));
res += mul(Get(s5,dx,-dy), float4x4(0.036007761955261,-0.084481097757816,-0.001234859810211,0.061008676886559,0.207756862044334,0.049676440656185,-0.005094796884805,0.089717626571655,0.168683573603630,-0.173824667930603,0.070439629256725,0.191497728228569,-0.103984229266644,-0.284405708312988,0.044900901615620,-0.135398119688034));
res += mul(Get(s5,dx,0), float4x4(-0.061271380633116,0.063595756888390,-0.053616311401129,0.158705011010170,-0.044733610004187,-0.238809227943420,-0.125154599547386,0.042890068143606,-0.186500802636147,-0.097995512187481,0.113768614828587,0.103909768164158,-0.340569198131561,0.041983343660831,0.122563019394875,0.011551382020116));
res += mul(Get(s5,dx,dy), float4x4(-0.167747452855110,-0.096022382378578,-0.111063577234745,0.167216047644615,-0.118647836148739,-0.157425507903099,0.082155920565128,0.005505991633981,-0.072424076497555,-0.098069123923779,0.177155733108521,0.280923932790756,0.188248246908188,0.108559630811214,0.090262629091740,0.271222025156021));
res = max(float4(0, 0, 0, 0), res) + float4(0.289726793766022,0.179781019687653,-0.117732934653759,0.038855504244566) * min(float4(0, 0, 0, 0), res);
return res;
}