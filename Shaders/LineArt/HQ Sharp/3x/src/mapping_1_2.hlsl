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
float4 res = float4(0.015495620667934,-0.494456648826599,-0.022518709301949,-0.068700119853020);
res += mul(Get(s0,-dx,-dy), float4x4(-0.045649588108063,-0.040481731295586,-0.073635160923004,0.055408317595720,-0.028599416837096,-0.343498080968857,-0.029799049720168,-0.163113579154015,0.068408034741879,-0.015718959271908,0.035957686603069,-0.028527760878205,0.145266234874725,-0.082964010536671,-0.030026342719793,-0.031159829348326));
res += mul(Get(s0,-dx,0), float4x4(0.089817523956299,0.062289167195559,-0.044181503355503,-0.063438341021538,-0.023883055895567,-0.452839553356171,-0.094876736402512,-0.016454508528113,-0.015572092495859,-0.128337591886520,-0.117720365524292,0.007558223791420,0.148741483688354,0.021014418452978,-0.018458569422364,-0.086169488728046));
res += mul(Get(s0,-dx,dy), float4x4(-0.065016716718674,-0.043198306113482,0.125095784664154,-0.016029734164476,-0.078884318470955,-0.357209622859955,-0.000708933512215,0.014882550574839,-0.083328761160374,0.030103361234069,-0.003204749431461,-0.043826237320900,-0.048822391778231,-0.096413664519787,0.019407752901316,-0.033949278295040));
res += mul(Get(s0,0,-dy), float4x4(0.032449599355459,-0.086193226277828,-0.009360183030367,0.042697485536337,-0.061565127223730,-0.299760103225708,0.205365106463432,0.089077658951283,-0.023275621235371,-0.036581654101610,-0.083227761089802,-0.085477285087109,-0.007289803121239,-0.050246283411980,0.158607855439186,-0.140810936689377));
res += mul(Get(s0,0,0), float4x4(-0.021151710301638,0.013640338554978,0.036045111715794,0.017669066786766,-0.115290410816669,-0.762759745121002,0.059406876564026,-0.133168026804924,0.033163268119097,0.040109314024448,0.088499240577221,0.040405996143818,-0.187012165784836,0.196002304553986,0.230045497417450,-0.012867037206888));
res += mul(Get(s0,0,dy), float4x4(-0.009466581977904,-0.071716450154781,-0.142586067318916,0.018657140433788,0.052896723151207,-0.350711435079575,0.059638135135174,-0.015948126092553,0.014389896765351,-0.001920839888044,-0.020139988511801,-0.037702742964029,-0.077566519379616,-0.054708264768124,0.232746943831444,-0.002051487797871));
res += mul(Get(s0,dx,-dy), float4x4(0.049661323428154,0.106138743460178,0.039083372801542,-0.062253978103399,-0.018188100308180,-0.448691308498383,-0.018981229513884,-0.060345076024532,-0.029240610077977,-0.013053964823484,-0.040626216679811,0.079363174736500,-0.034263953566551,-0.121146000921726,-0.091654025018215,-0.065039038658142));
res += mul(Get(s0,dx,0), float4x4(-0.082524769008160,-0.076585598289967,-0.174016758799553,-0.005284297280014,0.261518001556396,-0.688037216663361,0.077465951442719,-0.039120122790337,-0.005699905101210,0.031825594604015,0.065856687724590,0.015296497382224,0.026423562318087,-0.046566378325224,-0.182912528514862,-0.036579925566912));
res += mul(Get(s0,dx,dy), float4x4(-0.057249780744314,0.048558879643679,-0.025081157684326,0.003773308591917,0.106135688722134,-0.377724975347519,-0.077298142015934,-0.082087062299252,0.013359197415411,-0.006013019941747,-0.060593258589506,0.013065107166767,0.113245256245136,-0.005917751230299,0.084935754537582,0.118320532143116));
res += mul(Get(s1,-dx,-dy), float4x4(0.020738277584314,-0.115684717893600,0.106900602579117,-0.044575326144695,0.057230796664953,-0.076782949268818,-0.028998473659158,-0.145884394645691,-0.224547222256660,0.102526001632214,0.053521897643805,0.058254208415747,-0.030669754371047,-0.025486942380667,0.092640042304993,-0.131244361400604));
res += mul(Get(s1,-dx,0), float4x4(-0.098217390477657,0.061422314494848,0.135382622480392,0.120580025017262,0.085811935365200,-0.179612532258034,0.002532947110012,-0.217741042375565,-0.222507268190384,0.131649553775787,-0.014080659486353,0.178656846284866,0.083730131387711,-0.019873291254044,-0.014594761654735,0.032448161393404));
res += mul(Get(s1,-dx,dy), float4x4(0.039779804646969,0.019806070253253,-0.184131592512131,0.080693900585175,0.069157600402832,-0.077025718986988,0.012272291816771,-0.117571108043194,0.079240448772907,0.030127741396427,-0.294408649206161,0.099697358906269,0.068236567080021,-0.058648757636547,-0.194521307945251,0.023684553802013));
res += mul(Get(s1,0,-dy), float4x4(-0.002548429882154,0.214200139045715,0.080399431288242,-0.002260591369122,0.059235900640488,-0.093292020261288,0.032742753624916,0.025094138458371,-0.047090332955122,0.113222554326057,0.027377154678106,0.041030719876289,0.039660010486841,-0.060986645519733,-0.129984006285667,0.167194426059723));
res += mul(Get(s1,0,0), float4x4(0.039501275867224,-0.356144428253174,-0.338320076465607,-0.124134488403797,0.028519246727228,-0.017797762528062,0.097825102508068,0.103095017373562,0.157853424549103,-0.426155120134354,-0.238752752542496,-0.145198762416840,0.002337874844670,-0.160367146134377,0.131109818816185,-0.039397370070219));
res += mul(Get(s1,0,dy), float4x4(-0.014009547419846,0.218981862068176,0.115448504686356,0.079148985445499,-0.120565541088581,-0.019460417330265,0.134150505065918,0.023700080811977,0.006200412753969,0.050935961306095,0.152993813157082,-0.051102034747601,-0.069660104811192,0.133533522486687,0.028093658387661,0.017828604206443));
res += mul(Get(s1,dx,-dy), float4x4(-0.087219700217247,-0.016439538449049,0.041386716067791,-0.032140903174877,-0.143294081091881,0.057123459875584,0.085073471069336,0.042565807700157,0.004159652162343,0.092157237231731,0.002817283850163,0.121434651315212,-0.112807095050812,0.025021567940712,0.025205364450812,-0.032885845750570));
res += mul(Get(s1,dx,0), float4x4(0.020849274471402,0.075110867619514,-0.055585846304893,0.051317997276783,-0.055999260395765,0.193953379988670,0.000865490001161,0.088402405381203,-0.029887326061726,-0.227138176560402,0.034170586615801,-0.070485711097717,-0.006629124283791,0.265071779489517,0.105558469891548,-0.008868860080838));
res += mul(Get(s1,dx,dy), float4x4(-0.015884336084127,0.020565267652273,-0.009698758833110,-0.108268670737743,0.033836532384157,0.075505241751671,0.024941224604845,-0.006193496752530,0.036704089492559,0.002303599845618,0.037516977638006,-0.260948449373245,-0.029250150546432,0.001130307908170,0.089149124920368,-0.009348689578474));
res += mul(Get(s2,-dx,-dy), float4x4(0.089436315000057,-0.082298733294010,-0.049554102122784,-0.085034206509590,-0.068532958626747,-0.009944519959390,0.004646628163755,-0.046016711741686,-0.170479133725166,-0.051759205758572,-0.037798874080181,0.034398425370455,0.096924744546413,-0.068177931010723,0.081781074404716,0.041594929993153));
res += mul(Get(s2,-dx,0), float4x4(0.123064361512661,-0.232593655586243,0.007142124697566,-0.094830736517906,0.098475940525532,-0.067392207682133,-0.005361469462514,-0.070309415459633,0.091343812644482,0.016107767820358,0.089775122702122,-0.027050115168095,-0.104716330766678,-0.069473557174206,-0.002272705081850,-0.151258125901222));
res += mul(Get(s2,-dx,dy), float4x4(0.036237493157387,-0.081000261008739,-0.078101001679897,-0.053879175335169,0.067705385386944,-0.053080618381500,0.104573935270309,-0.044203717261553,-0.123944342136383,-0.021244896575809,0.022850055247545,-0.053018733859062,-0.061675708740950,-0.031317237764597,-0.132287919521332,-0.014419725164771));
res += mul(Get(s2,0,-dy), float4x4(0.055483508855104,0.106938011944294,-0.063187129795551,0.180762737989426,-0.061724346131086,-0.078807085752487,-0.183438003063202,-0.022757967934012,0.094108477234840,0.100962206721306,0.156436398625374,-0.060120429843664,-0.022023407742381,-0.035154186189175,-0.069055676460266,0.058131739497185));
res += mul(Get(s2,0,0), float4x4(-0.017278203740716,-0.430553197860718,-0.156495228409767,-0.055938653647900,0.083293460309505,0.129753202199936,0.040062878280878,0.056750293821096,-0.032444454729557,-0.192809119820595,-0.176351666450500,-0.058978028595448,0.120165303349495,0.192561924457550,0.051125880330801,0.086309529840946));
res += mul(Get(s2,0,dy), float4x4(-0.159542158246040,-0.059404462575912,0.046898577362299,-0.024714825674891,-0.089149728417397,-0.041770044714212,-0.146392390131950,-0.056542478501797,-0.062320087105036,0.155996650457382,-0.012327997013927,0.011737848632038,-0.075382113456726,-0.225580826401711,0.157527714967728,0.019791159778833));
res += mul(Get(s2,dx,-dy), float4x4(-0.043733667582273,-0.023601843044162,-0.043915968388319,-0.050875738263130,0.013985892757773,-0.028893528506160,0.102276548743248,0.028777960687876,0.012758636847138,0.085678078234196,0.016727728769183,0.018639285117388,0.051293298602104,-0.019513316452503,0.047575507313013,-0.008794945664704));
res += mul(Get(s2,dx,0), float4x4(0.043776404112577,0.172896072268486,-0.028876867145300,0.092101305723190,-0.018876068294048,-0.077938362956047,-0.021602360531688,-0.052726786583662,-0.030063157901168,-0.024603186175227,0.140515968203545,0.004521674942225,-0.079297825694084,-0.091201469302177,-0.157483085989952,0.044310607016087));
res += mul(Get(s2,dx,dy), float4x4(0.002924804575741,-0.020450256764889,0.086031325161457,-0.255112677812576,-0.000349995098077,-0.029354618862271,-0.150386080145836,0.107825636863708,0.098386414349079,-0.046117987483740,-0.008224220946431,-0.042242683470249,0.045662347227335,0.148352488875389,-0.105002932250500,0.080898329615593));
res += mul(Get(s3,-dx,-dy), float4x4(-0.227866753935814,0.014776281081140,0.013245647773147,0.102307029068470,-0.020403388887644,0.148595422506332,0.098905943334103,0.107249431312084,-0.066652730107307,-0.065297536551952,-0.085260450839996,0.102500259876251,0.026328502222896,-0.015013319440186,0.038750786334276,-0.155546054244041));
res += mul(Get(s3,-dx,0), float4x4(-0.134800910949707,0.092184923589230,0.115142516791821,0.068826906383038,-0.202874660491943,-0.017994113266468,-0.105261296033859,0.080966971814632,0.081150203943253,-0.075974673032761,0.054532889276743,-0.118447929620743,0.124473832547665,0.019564304500818,-0.011722278781235,0.059740263968706));
res += mul(Get(s3,-dx,dy), float4x4(-0.020477691665292,-0.009497808292508,-0.104313246905804,0.010451500304043,0.023066420108080,0.200698643922806,-0.071266390383244,0.153801679611206,-0.091571532189846,-0.082977265119553,-0.043935909867287,0.037127878516912,0.008371111005545,-0.020903684198856,-0.006946594920009,0.033719398081303));
res += mul(Get(s3,0,-dy), float4x4(0.233988374471664,-0.201318413019180,-0.150659963488579,-0.057297982275486,-0.043554756790400,0.200073882937431,0.083933427929878,0.022966822609305,-0.035760659724474,-0.024537269026041,-0.163455024361610,-0.041599877178669,-0.024326343089342,0.135068282485008,-0.014848801307380,0.115289591252804));
res += mul(Get(s3,0,0), float4x4(0.060009725391865,-0.282998263835907,0.019514570012689,-0.133221834897995,0.018413081765175,-0.207858398556709,-0.422237366437912,0.025422647595406,-0.026280658319592,0.164695471525192,0.123856581747532,-0.027614634484053,-0.037162981927395,-0.183936864137650,-0.097143448889256,-0.024255782365799));
res += mul(Get(s3,0,dy), float4x4(-0.047159917652607,-0.255715698003769,-0.023653777316213,-0.029690384864807,0.014948547817767,-0.054239224642515,-0.178365364670753,-0.089943461120129,0.098468221724033,-0.038667716085911,-0.041217681020498,0.004925504326820,-0.072988346219063,0.068857662379742,0.048504412174225,0.055785931646824));
res += mul(Get(s3,dx,-dy), float4x4(0.053632896393538,-0.068267382681370,-0.162020355463028,-0.025077007710934,0.017897700890899,-0.033354535698891,0.005765214096755,-0.072937883436680,-0.014949978329241,0.072712495923042,0.106945194303989,0.023725796490908,0.009805507026613,0.079210504889488,0.017401322722435,0.068045571446419));
res += mul(Get(s3,dx,0), float4x4(-0.068809174001217,0.357251703739166,0.030559407547116,-0.069614753127098,0.043859932571650,-0.170601174235344,-0.109609059989452,0.053798042237759,0.104168802499771,0.014845709316432,-0.066726699471474,0.067975468933582,-0.056797116994858,-0.068823739886284,-0.087904542684555,0.021338449791074));
res += mul(Get(s3,dx,dy), float4x4(0.051456876099110,-0.080606989562511,-0.191621676087379,0.000738595903385,0.020300373435020,-0.101705379784107,-0.000929074885789,0.020144596695900,-0.097912900149822,-0.011159315705299,0.085684180259705,-0.026203801855445,-0.015992963686585,0.037043388932943,-0.111911885440350,-0.136275500059128));
res += mul(Get(s4,-dx,-dy), float4x4(-0.155635312199593,0.265455752611160,0.192874640226364,-0.048783645033836,-0.111684136092663,-0.038980964571238,0.055209327489138,-0.091087408363819,0.062307357788086,0.026479925960302,0.067132502794266,-0.133339434862137,0.139850944280624,-0.043513577431440,0.047934878617525,-0.057549521327019));
res += mul(Get(s4,-dx,0), float4x4(0.067963108420372,0.128236636519432,-0.133057028055191,0.111415229737759,-0.030949326232076,0.197331860661507,0.166928485035896,0.041462507098913,-0.013966482132673,-0.253348231315613,-0.034397553652525,-0.132446303963661,0.033742807805538,-0.260004520416260,-0.105924718081951,-0.168596789240837));
res += mul(Get(s4,-dx,dy), float4x4(-0.044015567749739,0.066516600549221,0.059059515595436,0.039889041334391,0.042402815073729,0.017517112195492,-0.178304240107536,-0.074242301285267,-0.041834589093924,-0.013959847390652,0.054771978408098,-0.057928331196308,-0.111201055347919,0.035402555018663,0.133174732327461,0.024400450289249));
res += mul(Get(s4,0,-dy), float4x4(0.210230305790901,0.131712391972542,0.080622874200344,-0.059526611119509,0.064708128571510,0.144029587507248,0.123016700148582,0.085208408534527,0.033367052674294,0.165528714656830,0.018065698444843,0.032352887094021,0.025557987391949,0.122826330363750,0.123619996011257,-0.131650015711784));
res += mul(Get(s4,0,0), float4x4(0.008635419420898,-0.403023391962051,-0.341345667839050,-0.126344621181488,0.133204475045204,-0.331620275974274,-0.315675050020218,-0.004722187295556,0.124604642391205,-0.313167303800583,-0.126678273081779,-0.013734281063080,0.004441457800567,0.091028481721878,-0.146735355257988,0.084186546504498));
res += mul(Get(s4,0,dy), float4x4(-0.013927410356700,-0.066843844950199,0.214683681726456,-0.016431316733360,-0.120513476431370,-0.007105208933353,0.287770658731461,0.004777883179486,-0.047743536531925,-0.052849318832159,-0.059659756720066,-0.027561126276851,0.078685909509659,0.051895685493946,-0.020986698567867,0.048117317259312));
res += mul(Get(s4,dx,-dy), float4x4(-0.149964660406113,0.203423783183098,0.150758489966393,0.037094682455063,-0.001498007331975,-0.113565862178802,-0.095161668956280,0.020235294476151,-0.042652461677790,0.078912533819675,0.004825715906918,0.026440503075719,-0.042943950742483,0.026325391605496,-0.041246052831411,0.018319023773074));
res += mul(Get(s4,dx,0), float4x4(-0.030390530824661,0.085039995610714,-0.008831482380629,-0.000273972662399,-0.090097978711128,0.164025872945786,0.104093052446842,0.059719529002905,0.034573987126350,0.012741092592478,0.008242611773312,0.041769210249186,-0.024434240534902,-0.077559150755405,-0.134627237915993,0.067983120679855));
res += mul(Get(s4,dx,dy), float4x4(0.101683467626572,-0.029371445998549,-0.119000583887100,-0.003428688738495,0.040727734565735,-0.054717026650906,-0.237440034747124,-0.098248846828938,0.010551846586168,0.151220366358757,0.040080185979605,0.003446281421930,-0.068001307547092,0.089110389351845,0.137555390596390,0.049276012927294));
res += mul(Get(s5,-dx,-dy), float4x4(-0.298590540885925,-0.001302496995777,-0.025305086746812,0.031500812619925,-0.089199043810368,-0.019555997103453,-0.019240735098720,0.035438638180494,0.047301668673754,0.027757255360484,0.046009209007025,-0.119612529873848,0.142183274030685,-0.087056480348110,-0.027234122157097,-0.108368739485741));
res += mul(Get(s5,-dx,0), float4x4(-0.233079046010971,0.303322106599808,0.286404162645340,0.073282703757286,0.136208921670914,-0.043064672499895,-0.073238991200924,0.031060321256518,0.020611776039004,0.055094465613365,0.032796252518892,-0.021703345701098,-0.205288335680962,0.110687598586082,-0.072064980864525,-0.011848729103804));
res += mul(Get(s5,-dx,dy), float4x4(0.044926069676876,0.052595287561417,-0.042612899094820,0.123703047633171,0.024188488721848,0.014565419405699,-0.086067907512188,0.011000507511199,-0.015992799773812,-0.070604600012302,-0.014972414821386,0.061366338282824,-0.074390925467014,-0.016089459881186,-0.025754816830158,-0.041693691164255));
res += mul(Get(s5,0,-dy), float4x4(0.201870486140251,-0.049149319529533,0.118326380848885,-0.149655893445015,0.011650464497507,-0.011317246593535,-0.074389636516571,-0.025705518200994,-0.029404284432530,0.010814324952662,0.080471344292164,-0.014099673368037,-0.253226876258850,-0.030185246840119,-0.132876306772232,0.039622690528631));
res += mul(Get(s5,0,0), float4x4(0.262921720743179,-0.174157023429871,0.017977301031351,-0.158441320061684,-0.128895923495293,-0.138874575495720,0.143066048622131,-0.047866132110357,0.049304109066725,0.044138666242361,-0.094213657081127,0.031263589859009,-0.002323521766812,0.182425111532211,-0.050016213208437,0.039558555930853));
res += mul(Get(s5,0,dy), float4x4(-0.067905344069004,0.096289850771427,-0.027869850397110,0.026911132037640,-0.043325629085302,0.048615105450153,-0.013202533125877,-0.017701746895909,-0.051512230187654,-0.118902742862701,0.070366971194744,-0.054116953164339,0.123149134218693,-0.158689588308334,0.031047381460667,0.054628703743219));
res += mul(Get(s5,dx,-dy), float4x4(-0.015064006671309,0.088503584265709,0.082510769367218,-0.092919014394283,0.016413781791925,-0.040490016341209,-0.131918042898178,0.026110533624887,0.027219099923968,0.095825724303722,0.111013457179070,0.035749834030867,-0.047477796673775,-0.077821247279644,0.000858256244101,0.067129246890545));
res += mul(Get(s5,dx,0), float4x4(-0.034740190953016,-0.033229529857635,0.151805162429810,0.124123185873032,0.126810520887375,0.126700788736343,-0.110974125564098,0.042883180081844,-0.046740788966417,-0.132158473134041,-0.035533484071493,-0.114992670714855,0.157176032662392,-0.048825796693563,-0.124622136354446,0.070257909595966));
res += mul(Get(s5,dx,dy), float4x4(-0.035319115966558,0.326456040143967,-0.291396647691727,0.022568887099624,-0.086916834115982,-0.156438097357750,-0.100783213973045,-0.122066810727119,-0.026536019518971,0.017278483137488,-0.047890555113554,-0.080841533839703,-0.040240578353405,-0.163900211453438,0.188676580786705,0.093806520104408));
res = max(float4(0, 0, 0, 0), res) + float4(0.064253315329552,-0.000515367661137,0.854216039180756,0.000474996777484) * min(float4(0, 0, 0, 0), res);
return res;
}