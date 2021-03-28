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
float4 res = float4(0.112221255898476,-0.781687736511230,-0.024219052866101,-0.037482339888811);
res += mul(Get(s0,-dx,-dy), float4x4(0.032491199672222,-0.034136969596148,0.015856675803661,-0.028650347143412,-0.122976891696453,0.146230682730675,0.084660775959492,0.113848671317101,-0.011038396507502,-0.034850426018238,-0.026115672662854,0.040408611297607,0.100297525525093,-0.091260939836502,-0.016972882673144,0.021222949028015));
res += mul(Get(s0,-dx,0), float4x4(0.139266341924667,0.324201762676239,-0.092890098690987,-0.129828810691833,-0.147648110985756,0.030927089974284,-0.026309538632631,-0.022543763741851,-0.030982270836830,0.177712216973305,0.140371039509773,-0.069094799458981,-0.055856607854366,-0.038671877235174,0.040301680564880,0.063792347908020));
res += mul(Get(s0,-dx,dy), float4x4(-0.075651608407497,-0.193270921707153,0.160387188196182,0.048884060233831,-0.122862368822098,0.041616644710302,-0.078070826828480,0.111928440630436,-0.040053192526102,0.346440643072128,-0.115693151950836,-0.036177538335323,-0.027647476643324,-0.028748460114002,-0.010785548016429,0.029483035206795));
res += mul(Get(s0,0,-dy), float4x4(-0.159012228250504,0.054563295096159,-0.043485462665558,0.039789993315935,0.055612228810787,-0.219217762351036,0.075730897486210,-0.144079640507698,0.005770293530077,-0.016207521781325,-0.058920692652464,-0.015931932255626,0.151079773902893,-0.099367722868919,-0.107781238853931,0.066871814429760));
res += mul(Get(s0,0,0), float4x4(0.224346280097961,-0.499094694852829,0.260767042636871,0.313599079847336,-0.019882593303919,-0.134696364402771,-0.058898780494928,-0.344526380300522,0.120529323816299,0.030869156122208,0.355017393827438,-0.044821366667747,0.027838999405503,0.064861856400967,0.069954290986061,0.012673396617174));
res += mul(Get(s0,0,dy), float4x4(-0.122600488364697,0.054022595286369,-0.340122044086456,0.182282209396362,-0.074703343212605,0.057112060487270,-0.031714189797640,0.016915688291192,-0.063831612467766,0.124487981200218,-0.291351258754730,0.083530850708485,-0.072048477828503,-0.059406850486994,0.035421781241894,0.018896900117397));
res += mul(Get(s0,dx,-dy), float4x4(-0.116181805729866,0.018476989120245,-0.087754629552364,-0.016143141314387,0.027552414685488,0.040470175445080,-0.013301127590239,-0.285121679306030,-0.018734972923994,0.021330535411835,0.014702857472003,-0.012554425746202,0.020131038501859,0.172485321760178,-0.134315773844719,-0.017913172021508));
res += mul(Get(s0,dx,0), float4x4(-0.012904886156321,0.056526616215706,0.098963268101215,-0.301527619361877,0.101883776485920,0.191330775618553,-0.017010824754834,-0.563691854476929,-0.017083430662751,-0.355569303035736,0.033863421529531,-0.013146595098078,0.107639014720917,0.116954080760479,0.045861221849918,-0.014408052898943));
res += mul(Get(s0,dx,dy), float4x4(0.033544100821018,-0.012389912270010,-0.041343133896589,-0.105919390916824,0.000239214001340,0.002650495152920,0.021325659006834,-0.083442926406860,0.010537261143327,-0.172357887029648,0.035746257752180,0.127253070473671,-0.062501117587090,0.101601243019104,-0.110113225877285,0.049448866397142));
res += mul(Get(s1,-dx,-dy), float4x4(-0.078366190195084,-0.030855670571327,-0.077274106442928,0.015504111535847,0.015359771437943,0.120677135884762,-0.024278322234750,-0.025654854252934,-0.119517825543880,0.140216603875160,0.009823518805206,-0.068287782371044,-0.231595113873482,-0.275625467300415,-0.003665108932182,-0.049372643232346));
res += mul(Get(s1,-dx,0), float4x4(-0.225772768259048,0.092246487736702,0.042278595268726,0.046029031276703,-0.190817877650261,0.063081771135330,-0.022555798292160,0.114060759544373,0.038627121597528,-0.143516361713409,-0.373459100723267,-0.162599056959152,-0.165172889828682,0.040871478617191,-0.023754492402077,-0.072841621935368));
res += mul(Get(s1,-dx,dy), float4x4(-0.047895904630423,-0.057185098528862,0.010803826153278,0.011600329540670,0.044721797108650,-0.033294789493084,0.135055154561996,0.084680855274200,0.114589013159275,0.177466303110123,0.046229027211666,-0.178589299321175,-0.052290391176939,0.028344770893455,-0.015555284917355,-0.070931516587734));
res += mul(Get(s1,0,-dy), float4x4(-0.135413691401482,-0.281669586896896,-0.030633663758636,-0.092071652412415,0.218904197216034,-0.197544738650322,0.153071582317352,0.010019668377936,-0.026165505871177,0.071149937808514,0.041767887771130,-0.087541125714779,-0.131934255361557,-0.110988982021809,0.049902189522982,-0.156787425279617));
res += mul(Get(s1,0,0), float4x4(-0.088047623634338,0.296301841735840,-0.108799099922180,-0.045099627226591,0.040901795029640,0.391364574432373,-0.208897754549980,-0.284349977970123,0.129735544323921,-0.063120998442173,-0.098115958273411,-0.272136688232422,-0.041318230330944,-0.057681452482939,-0.038691997528076,-0.182851821184158));
res += mul(Get(s1,0,dy), float4x4(0.012939038686454,-0.072525598108768,0.058584257960320,-0.009059673175216,-0.270397722721100,0.335163354873657,0.082830585539341,-0.388101577758789,0.098051667213440,-0.039292406290770,0.049570545554161,-0.129634603857994,-0.048829637467861,-0.035617437213659,-0.018976744264364,0.006429424509406));
res += mul(Get(s1,dx,-dy), float4x4(-0.043719351291656,0.036996096372604,0.087553486227989,0.189731150865555,-0.082846298813820,0.033856451511383,0.178945183753967,-0.108872979879379,-0.154367730021477,0.233399853110313,-0.061644975095987,0.247214540839195,-0.019300296902657,-0.040890272706747,0.000704580801539,-0.078665934503078));
res += mul(Get(s1,dx,0), float4x4(-0.006632515229285,0.031637828797102,0.129774853587151,-0.013522288762033,0.178556248545647,0.159164413809776,-0.214605048298836,0.263316839933395,0.007256915327162,-0.031925458461046,0.148220390081406,0.110000744462013,-0.004154249560088,0.036337874829769,-0.022934135049582,0.056194450706244));
res += mul(Get(s1,dx,dy), float4x4(-0.048992794007063,0.017534043639898,-0.024035664275289,-0.007582300808281,0.009224698878825,-0.155917897820473,0.008518034592271,0.302294105291367,-0.035221721976995,-0.073823101818562,-0.020012335851789,0.155290812253952,-0.035949341952801,-0.024251569062471,0.024699551984668,0.015337710268795));
res += mul(Get(s2,-dx,-dy), float4x4(-0.028696434572339,0.061646953225136,0.015044650062919,0.042466573417187,-0.034488957375288,0.118163622915745,0.005268314387649,0.020781839266419,0.063254073262215,-0.022882966324687,0.019787209108472,-0.013345095328987,0.134738758206367,-0.207302257418633,-0.016258288174868,0.049920316785574));
res += mul(Get(s2,-dx,0), float4x4(-0.096508704125881,0.183161169290543,0.059241864830256,-0.148301020264626,0.083825476467609,-0.313685297966003,0.244763612747192,0.013754245825112,-0.020074103027582,-0.044514495879412,0.017710007727146,0.008826778270304,-0.192261591553688,-0.474516093730927,0.220183163881302,-0.013076789677143));
res += mul(Get(s2,-dx,dy), float4x4(-0.002771763829514,0.004454230889678,-0.093424536287785,0.063890092074871,-0.176386326551437,0.028788790106773,-0.317629218101501,0.114699602127075,-0.085425049066544,0.105686321854591,0.001920180278830,0.107479386031628,-0.045993786305189,-0.151282832026482,-0.100994393229485,0.037502326071262));
res += mul(Get(s2,0,-dy), float4x4(0.032229598611593,-0.016535038128495,0.064774684607983,-0.007744017988443,0.096674650907516,-0.078368313610554,0.196173503994942,0.012921660207212,0.002877086866647,-0.065369419753551,0.047009736299515,-0.053845778107643,0.075832389295101,-0.314625233411789,0.155061483383179,0.038520716130733));
res += mul(Get(s2,0,0), float4x4(0.020848531275988,-0.040973111987114,0.249702990055084,0.050985217094421,0.078014530241489,-0.126931652426720,0.022962097078562,0.003884139470756,0.074290625751019,0.069743975996971,0.018257981166244,-0.063059218227863,0.160464838147163,-0.485627591609955,0.191575720906258,0.076789252460003));
res += mul(Get(s2,0,dy), float4x4(-0.031916808336973,-0.005528567824513,-0.157916456460953,-0.012589906342328,-0.073829241096973,0.052192348986864,-0.489730030298233,-0.016281316056848,0.068542584776878,-0.053842190653086,0.139619767665863,-0.040697142481804,-0.026349501684308,-0.397619187831879,-0.217499747872353,0.011965918354690));
res += mul(Get(s2,dx,-dy), float4x4(0.075315445661545,-0.010020997375250,0.179576188325882,0.134228616952896,-0.003013967070729,0.155457571148872,-0.033534809947014,-0.230558738112450,0.041402030736208,-0.010288049466908,0.030044451355934,-0.016851667314768,-0.045149922370911,0.010776027105749,-0.055386830121279,-0.137235045433044));
res += mul(Get(s2,dx,0), float4x4(-0.145447447896004,-0.010498730465770,0.035500522702932,0.062196701765060,0.075538903474808,-0.197254851460457,0.070573277771473,-0.094576209783554,0.004499404691160,0.055162038654089,-0.083500683307648,0.046835765242577,-0.153988599777222,-0.270141601562500,0.033419705927372,0.019145060330629));
res += mul(Get(s2,dx,dy), float4x4(-0.097325310111046,0.011646986939013,-0.089248903095722,0.004616578109562,-0.025139886885881,0.011220884509385,-0.153321653604507,0.003056343179196,-0.030231816694140,0.160865351557732,0.157503947615623,-0.065509445965290,-0.093496046960354,-0.136268720030785,-0.031954463571310,0.027264669537544));
res += mul(Get(s3,-dx,-dy), float4x4(-0.099559321999550,0.220138624310493,0.057080511003733,-0.166885331273079,-0.038844764232635,0.064329683780670,-0.062286473810673,0.071854427456856,-0.095821887254715,0.073586210608482,-0.030965883284807,-0.012692028656602,-0.141211733222008,-0.023085279390216,0.057706125080585,-0.103156656026840));
res += mul(Get(s3,-dx,0), float4x4(-0.043374575674534,0.049103580415249,0.138187572360039,-0.156907677650452,0.023721639066935,0.082878015935421,-0.143007680773735,-0.033902522176504,0.054433688521385,-0.222910478711128,0.052396912127733,-0.011440507136285,-0.068834021687508,-0.009674859233201,-0.048876777291298,-0.017790226265788));
res += mul(Get(s3,-dx,dy), float4x4(-0.022343508899212,-0.266112655401230,-0.214869499206543,0.062508523464203,0.063333787024021,0.002786265918985,0.288439691066742,-0.022861327975988,0.015525513328612,0.090186625719070,-0.094584554433823,0.020607715472579,0.046112678945065,0.041953612118959,-0.011991051025689,-0.044802814722061));
res += mul(Get(s3,0,-dy), float4x4(-0.157007783651352,0.599924087524414,-0.077346086502075,-0.057695433497429,-0.056651841849089,0.349172592163086,-0.109486319124699,-0.043171428143978,0.289631098508835,-0.023931557312608,-0.079629689455032,0.154563069343567,0.043611045926809,-0.183215707540512,0.100346550345421,-0.001854471047409));
res += mul(Get(s3,0,0), float4x4(-0.075633518397808,0.167275533080101,0.135299906134605,0.024366309866309,-0.032102290540934,-0.136361643671989,-0.089654013514519,-0.185866922140121,-0.201455831527710,0.254336535930634,-0.201227933168411,-0.288111656904221,0.040516477078199,-0.131680265069008,-0.059743970632553,0.020317759364843));
res += mul(Get(s3,0,dy), float4x4(-0.034887470304966,-0.277680337429047,-0.166351839900017,-0.048141866922379,0.035386785864830,0.099375717341900,0.115508720278740,-0.133656531572342,-0.129936978220940,-0.059406742453575,0.279691278934479,-0.064785659313202,-0.036216579377651,-0.100949205458164,-0.202547252178192,0.079212851822376));
res += mul(Get(s3,dx,-dy), float4x4(-0.061505150049925,-0.109577924013138,0.083374202251434,0.395676106214523,-0.172494456171989,-0.087613731622696,0.004681488033384,0.069115184247494,0.175822973251343,-0.118796952068806,-0.065891355276108,-0.146263986825943,0.073690764605999,0.093603827059269,0.081862621009350,0.020072752609849));
res += mul(Get(s3,dx,0), float4x4(-0.007823647931218,-0.010472025722265,-0.013270742259920,0.289101541042328,-0.054696358740330,0.086209513247013,-0.085051305592060,-0.152050852775574,0.131777375936508,-0.048984069377184,-0.062587596476078,0.308328986167908,-0.006217285059392,-0.089994788169861,-0.059317048639059,0.076427079737186));
res += mul(Get(s3,dx,dy), float4x4(0.012665831483901,-0.016979744657874,-0.150539696216583,-0.194557338953018,-0.112857952713966,-0.025331223383546,0.022212412208319,0.075782924890518,-0.085376001894474,-0.090563282370567,0.138555616140366,0.052515532821417,0.152330487966537,0.067813709378242,-0.090534895658493,0.050374019891024));
res += mul(Get(s4,-dx,-dy), float4x4(-0.090343698859215,0.094557583332062,-0.064438574016094,0.052242148667574,-0.162436440587044,0.028999613597989,0.048617478460073,0.087430544197559,0.056562662124634,-0.124356731772423,0.018212011083961,-0.087666317820549,-0.058467026799917,0.064427435398102,-0.026162436231971,-0.017293293029070));
res += mul(Get(s4,-dx,0), float4x4(0.260111629962921,-0.011721180751920,0.069361589848995,-0.009939411655068,0.223236784338951,-0.074589796364307,0.018186461180449,-0.036760546267033,-0.069061897695065,0.157317474484444,-0.207958579063416,-0.016632184386253,-0.020215887576342,-0.203505396842957,-0.078630365431309,-0.234430745244026));
res += mul(Get(s4,-dx,dy), float4x4(-0.140600249171257,0.227895021438599,-0.189194872975349,-0.013542426750064,-0.109658502042294,0.220104083418846,-0.083464249968529,0.007193919736892,-0.008912635967135,0.109643496572971,0.108454458415508,-0.097361236810684,-0.015637308359146,0.082846574485302,0.196509376168251,-0.100069805979729));
res += mul(Get(s4,0,-dy), float4x4(-0.179194867610931,-0.024002671241760,0.180846750736237,0.066463023424149,-0.319521874189377,0.245497331023216,-0.127737626433372,-0.074028424918652,0.272543907165527,-0.128465443849564,0.134292796254158,-0.004355278797448,0.061264988034964,-0.020502598956227,0.032548639923334,0.032185349613428));
res += mul(Get(s4,0,0), float4x4(-0.078186914324760,-0.376268833875656,0.043090291321278,0.159148782491684,0.205921843647957,-0.685593426227570,0.334431707859039,0.081755459308624,-0.191899925470352,0.410888254642487,-0.424012631177902,-0.036498669534922,-0.089556351304054,-0.008354879915714,-0.016719914972782,-0.071986958384514));
res += mul(Get(s4,0,dy), float4x4(0.115228325128555,-0.332057565450668,-0.099404998123646,0.241883337497711,-0.073425896465778,0.089333243668079,-0.309710502624512,0.204271525144577,0.020158149302006,-0.288657695055008,0.395040243864059,0.040135756134987,0.184312775731087,-0.053626816719770,-0.168999418616295,-0.120286434888840));
res += mul(Get(s4,dx,-dy), float4x4(0.064723417162895,-0.018900651484728,0.149406865239143,-0.014732668176293,0.126519739627838,-0.276779413223267,-0.022483674809337,0.205264329910278,-0.174951374530792,-0.005348678212613,-0.078482955694199,-0.117415025830269,-0.059354141354561,-0.060219999402761,-0.003996966872364,-0.003356030676514));
res += mul(Get(s4,dx,0), float4x4(0.058107998222113,0.095801584422588,-0.021578067913651,-0.263622641563416,0.106045208871365,0.388971865177155,-0.074766121804714,-0.362066686153412,0.085091032087803,-0.149030864238739,0.080234728753567,0.412399858236313,-0.000292091688607,0.004992804024369,0.022945884615183,0.033450778573751));
res += mul(Get(s4,dx,dy), float4x4(-0.164482310414314,0.281474441289902,-0.143011614680290,-0.292499333620071,0.013517571613193,-0.309684246778488,0.225361898541451,-0.118123620748520,0.005971563048661,0.109691686928272,0.038238830864429,0.005739555694163,0.037622459232807,0.111159436404705,-0.176187574863434,0.158694550395012));
res += mul(Get(s5,-dx,-dy), float4x4(-0.093566447496414,0.031240925192833,-0.015694746747613,0.108223773539066,-0.085493482649326,0.012681830674410,0.014160984195769,0.107269152998924,-0.020515611395240,-0.132343247532845,-0.009221212938428,-0.040501665323973,-0.162795275449753,0.166213169693947,0.144385457038879,-0.060958005487919));
res += mul(Get(s5,-dx,0), float4x4(0.021418107673526,-0.129667133092880,-0.023080464452505,0.052900448441505,0.111634775996208,-0.042778369039297,-0.013667538762093,0.097122274339199,0.096595153212547,-0.223865807056427,-0.027650922536850,-0.107843786478043,-0.018915552645922,0.101888097822666,0.002336748410016,-0.007026850245893));
res += mul(Get(s5,-dx,dy), float4x4(0.136376798152924,0.084281548857689,0.061483431607485,-0.069088011980057,0.070175163447857,0.039950661361217,-0.026264134794474,0.008572936989367,0.009585172869265,-0.108480431139469,0.055314376950264,-0.093516513705254,0.030685445293784,-0.001751162810251,-0.148123800754547,0.160877987742424));
res += mul(Get(s5,0,-dy), float4x4(-0.018038062378764,0.102453485131264,-0.070446699857712,-0.074890315532684,-0.155230462551117,0.077907070517540,-0.089340813457966,-0.021498236805201,0.059172630310059,-0.073157951235771,-0.023158464580774,0.077748596668243,-0.034614924341440,0.003554784925655,0.046967215836048,-0.077549993991852));
res += mul(Get(s5,0,0), float4x4(-0.063746020197868,0.011463991366327,0.000822132627945,-0.317688494920731,-0.191225007176399,-0.223796993494034,0.034682970494032,0.035198520869017,-0.108679302036762,0.017503157258034,0.272780895233154,0.140328168869019,-0.067382127046585,-0.070937618613243,-0.073290400207043,-0.078048773109913));
res += mul(Get(s5,0,dy), float4x4(0.199897557497025,-0.052622426301241,0.199943661689758,-0.074379310011864,-0.049174603074789,0.069926664233208,0.012233121320605,0.028416831046343,0.013351486995816,-0.033204235136509,-0.239373594522476,0.126331791281700,0.093529798090458,-0.094108328223228,-0.246759355068207,-0.087140873074532));
res += mul(Get(s5,dx,-dy), float4x4(-0.092167198657990,-0.062435407191515,0.040468737483025,0.081024460494518,0.042475964874029,-0.131173372268677,-0.005522243678570,0.101590231060982,-0.016281975433230,-0.036617003381252,0.118633665144444,-0.103546202182770,0.064589940011501,0.173499226570129,0.074229203164577,-0.153296723961830));
res += mul(Get(s5,dx,0), float4x4(-0.045833595097065,0.045730754733086,-0.093780979514122,0.052783820778131,0.035764086991549,-0.257163256406784,0.023368019610643,-0.088039666414261,0.068941920995712,0.315124779939651,-0.036380991339684,-0.124131537973881,0.025194201618433,0.076753169298172,0.113213971257210,-0.204997599124908));
res += mul(Get(s5,dx,dy), float4x4(-0.014688269235194,-0.016414610669017,0.044581431895494,0.092120982706547,0.005900614429265,-0.221534609794617,-0.015967695042491,0.084580108523369,-0.098005674779415,0.193307742476463,-0.051937855780125,-0.055809121578932,0.067024134099483,0.124992437660694,-0.149119243025780,-0.113876655697823));
res = max(float4(0, 0, 0, 0), res) + float4(0.689815759658813,0.010256541892886,-0.557376682758331,-0.195975601673126) * min(float4(0, 0, 0, 0), res);
return res;
}
