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
res += mul(Get(s0,-dx,-dy), float4x4(0.120399825274944,-0.125913992524147,-0.066406868398190,-0.065069325268269,-0.174808189272881,-0.023008061572909,-0.081459179520607,0.094003230333328,-0.050889492034912,0.065960116684437,0.178029790520668,-0.051090199500322,-0.150148198008537,0.116970099508762,0.235424607992172,-0.091709636151791));
res += mul(Get(s0,-dx,0), float4x4(0.123656347393990,-0.084690175950527,-0.098659716546535,0.148240193724632,-0.154054880142212,-0.085578963160515,0.159422606229782,-0.038515571504831,0.052487697452307,0.080777846276760,0.019399134442210,-0.141833335161209,0.037567280232906,0.072200410068035,0.120259895920753,-0.127390652894974));
res += mul(Get(s0,-dx,dy), float4x4(0.041004545986652,-0.029733171686530,0.046511691063643,0.346640974283218,-0.001409464050084,0.066889092326164,0.000997193157673,0.060286931693554,-0.015081790275872,-0.045594785362482,0.051478751003742,0.087633274495602,-0.184301212430000,-0.000557993131224,-0.169413909316063,-0.010939576663077));
res += mul(Get(s0,0,-dy), float4x4(-0.012471308931708,0.010208107531071,0.171403720974922,0.057245954871178,0.000339262565831,0.146928176283836,-0.111029297113419,-0.040792535990477,-0.003273527137935,0.198326587677002,-0.184969574213028,0.042762648314238,-0.102896861732006,-0.114580675959587,-0.169302433729172,-0.207841172814369));
res += mul(Get(s0,0,0), float4x4(-0.104219108819962,-0.000720953859854,-0.043256163597107,-0.190655097365379,0.170391514897346,0.199758082628250,-0.074227184057236,0.106111787259579,0.093372747302055,0.066717237234116,0.099009193480015,-0.026355769485235,-0.163011863827705,0.058377500623465,0.152287825942039,0.119759820401669));
res += mul(Get(s0,0,dy), float4x4(0.029193231835961,-0.013081707991660,0.112256981432438,0.116371460258961,0.212726056575775,-0.023918390274048,0.049220163375139,-0.011337567120790,0.156839624047279,-0.067136667668819,0.075387701392174,0.010370536707342,-0.055622186511755,-0.095223270356655,0.081997886300087,-0.027003262192011));
res += mul(Get(s0,dx,-dy), float4x4(0.202750340104103,-0.100941978394985,-0.139256030321121,0.014302806928754,-0.117579497396946,0.168944567441940,-0.043949693441391,-0.125633567571640,0.035414915531874,0.045366059988737,0.104441829025745,0.072853162884712,-0.055698085576296,0.096752308309078,0.026657199487090,-0.188021764159203));
res += mul(Get(s0,dx,0), float4x4(0.062138464301825,0.136688038706779,-0.042804080992937,0.229960978031158,-0.123286336660385,-0.116730257868767,-0.200561881065369,-0.007549534551799,-0.003691890044138,0.179711684584618,-0.162618041038513,0.139131724834442,-0.070969715714455,0.075407519936562,0.088405914604664,-0.150113761425018));
res += mul(Get(s0,dx,dy), float4x4(0.185593187808990,-0.042807698249817,0.030073814094067,-0.185899272561073,-0.084766238927841,0.002391367452219,-0.032609362155199,0.112474948167801,0.034513775259256,-0.098936140537262,0.155861049890518,0.259384423494339,-0.184178277850151,0.109118826687336,-0.034960061311722,-0.023482339456677));
res += mul(Get(s1,-dx,-dy), float4x4(-0.002648711437359,0.115116871893406,-0.240818336606026,0.012023572809994,0.183297246694565,0.250663101673126,-0.059336900711060,-0.030419085174799,-0.013267084024847,-0.121311567723751,-0.153071016073227,0.089990578591824,-0.065745197236538,-0.121547684073448,0.357360839843750,-0.031364075839520));
res += mul(Get(s1,-dx,0), float4x4(0.082161724567413,-0.012180410325527,-0.147090807557106,0.082780554890633,-0.222705721855164,0.174709454178810,-0.064119495451450,0.046189796179533,-0.004835368599743,-0.083039499819279,-0.110043443739414,0.060293629765511,-0.091232150793076,-0.005627461709082,0.071768477559090,-0.054204382002354));
res += mul(Get(s1,-dx,dy), float4x4(-0.059145435690880,-0.103718921542168,-0.122041337192059,-0.200091332197189,-0.147576317191124,0.022745657712221,0.097850129008293,0.184904918074608,0.051595523953438,-0.160232082009315,-0.141778334975243,0.014964452944696,-0.020839471369982,-0.024246569722891,0.027601614594460,-0.226462587714195));
res += mul(Get(s1,0,-dy), float4x4(0.069953992962837,0.083469092845917,-0.009450618177652,0.004214934073389,0.107323758304119,-0.058748941868544,-0.079724386334419,0.022542972117662,-0.147043824195862,0.065543048083782,-0.088550508022308,0.175953045487404,-0.116385579109192,-0.064712874591351,-0.089233234524727,0.101126261055470));
res += mul(Get(s1,0,0), float4x4(-0.069094352424145,-0.073888354003429,0.080647572875023,-0.204085618257523,-0.018493879586458,0.200644627213478,-0.058955784887075,0.026355691254139,0.009536175057292,0.124312445521355,-0.105808526277542,-0.000228757562581,-0.023496348410845,-0.022362103685737,0.031826183199883,-0.148421823978424));
res += mul(Get(s1,0,dy), float4x4(-0.059706617146730,-0.130614340305328,-0.113125786185265,-0.096967406570911,0.021154291927814,-0.028477497398853,-0.063941493630409,0.039982419461012,-0.114710122346878,0.047200988978148,-0.047666873782873,0.044890094548464,-0.017933806404471,0.012288779020309,-0.039536584168673,0.126850038766861));
res += mul(Get(s1,dx,-dy), float4x4(0.146014064550400,-0.036605689674616,0.002894754055887,-0.042888205498457,-0.010860844515264,0.110492691397667,-0.057377971708775,-0.079943768680096,0.112538859248161,-0.001257055322640,0.011652708053589,0.121024720370770,0.096623033285141,-0.063639618456364,-0.094519451260567,0.031632814556360));
res += mul(Get(s1,dx,0), float4x4(0.128993853926659,-0.032820213586092,0.005182121880352,-0.025478264316916,-0.147174075245857,-0.139600947499275,0.010484578087926,-0.121769510209560,0.030728302896023,-0.122844785451889,0.066510334610939,0.149018153548241,0.084392338991165,0.151100635528564,0.203052937984467,0.078133054077625));
res += mul(Get(s1,dx,dy), float4x4(0.011976728215814,0.156222283840179,0.033546846359968,-0.116240084171295,-0.027043716982007,0.158210262656212,0.043713409453630,-0.054477561265230,0.069746129214764,0.200436159968376,-0.012192373163998,0.061727453023195,-0.014148498885334,0.037563543766737,-0.056354381144047,0.040862303227186));
res += mul(Get(s2,-dx,-dy), float4x4(-0.108479902148247,-0.029940225183964,-0.061130125075579,0.162708342075348,-0.005331742577255,-0.058131501078606,0.031270585954189,-0.058164227753878,0.115072369575500,0.063371770083904,0.111557118594646,0.092911869287491,0.090612456202507,0.082440093159676,-0.088936507701874,-0.056441266089678));
res += mul(Get(s2,-dx,0), float4x4(-0.199364751577377,-0.086615629494190,0.010926976799965,-0.079382523894310,-0.154873445630074,0.240302041172981,0.023975638672709,-0.103855013847351,0.060521006584167,0.015749055892229,-0.107497930526733,0.174164101481438,0.106259435415268,-0.062003828585148,0.192197188735008,-0.063933275640011));
res += mul(Get(s2,-dx,dy), float4x4(-0.069298662245274,-0.004818362183869,-0.249670729041100,-0.093862332403660,0.041636727750301,-0.000195540444111,-0.035099655389786,0.026212971657515,-0.300298064947128,-0.115911193192005,0.212330505251884,-0.120871521532536,0.183102369308472,-0.138732716441154,-0.169977813959122,-0.148826420307159));
res += mul(Get(s2,0,-dy), float4x4(-0.020288875326514,0.050708733499050,0.020101206377149,0.028607985004783,0.094744443893433,-0.216737374663353,0.024800099432468,-0.005582944490016,-0.019715111702681,-0.254175722599030,-0.065478555858135,0.068939082324505,-0.060344491153955,0.051107186824083,-0.079826816916466,-0.106052905321121));
res += mul(Get(s2,0,0), float4x4(-0.006228451151401,-0.071715928614140,0.027558995410800,-0.188411280512810,0.053271565586329,-0.085298128426075,-0.150804698467255,0.022028524428606,-0.011438216082752,0.182214140892029,-0.016685970127583,0.035283628851175,-0.052441675215960,-0.103995859622955,-0.009132078848779,0.115067958831787));
res += mul(Get(s2,0,dy), float4x4(0.053586408495903,-0.117675870656967,0.049988962709904,0.024369133636355,-0.027798265218735,-0.083075225353241,-0.082181066274643,0.060804184526205,-0.173508524894714,-0.019622102379799,-0.078332476317883,0.086438849568367,-0.054789990186691,-0.139852896332741,-0.102329201996326,-0.176648229360580));
res += mul(Get(s2,dx,-dy), float4x4(-0.166985690593719,0.042412955313921,0.065585918724537,0.024468427523971,0.243225127458572,-0.138983279466629,0.024961613118649,-0.015504499897361,0.072276026010513,0.163252323865891,0.110630474984646,-0.102364726364613,-0.078349530696869,0.039496969431639,0.197074502706528,0.210470408201218));
res += mul(Get(s2,dx,0), float4x4(-0.136253371834755,-0.216911002993584,0.072024367749691,0.022871237248182,0.204789504408836,-0.118762336671352,0.173063337802887,0.112135492265224,0.087612621486187,-0.133207231760025,-0.107583492994308,0.119182497262955,-0.100496083498001,0.056128051131964,-0.005001708865166,0.047252424061298));
res += mul(Get(s2,dx,dy), float4x4(-0.206035211682320,0.219435364007950,-0.174296304583549,-0.051731396466494,0.031332347542048,-0.065260410308838,0.117043875157833,0.011445831507444,-0.014955843798816,-0.090987958014011,-0.043582648038864,0.188491746783257,0.105920173227787,0.129012301564217,-0.039541784673929,-0.006596066523343));
res += mul(Get(s3,-dx,-dy), float4x4(-0.040512699633837,0.124567002058029,-0.309536457061768,-0.050181917846203,-0.002754081739113,-0.146969467401505,-0.060771301388741,-0.010639956220984,0.049036234617233,-0.061040874570608,-0.015278493054211,0.090395256876945,0.115363724529743,-0.122084125876427,-0.082952126860619,-0.195517942309380));
res += mul(Get(s3,-dx,0), float4x4(0.128965273499489,-0.050717726349831,-0.014484612271190,-0.018047226592898,0.087964646518230,-0.139036267995834,-0.041508410125971,0.087082691490650,0.156527176499367,0.079160735011101,0.126001089811325,0.128536880016327,0.010459668003023,0.123149193823338,-0.072068437933922,0.023359380662441));
res += mul(Get(s3,-dx,dy), float4x4(0.151093453168869,-0.005725274328142,0.179032549262047,-0.133595973253250,-0.098610371351242,0.006046446971595,-0.063368283212185,0.007078563328832,0.192404940724373,0.003755486570299,0.087579429149628,-0.002152080181986,0.117567256093025,0.143952503800392,-0.039857171475887,-0.132109090685844));
res += mul(Get(s3,0,-dy), float4x4(0.007005740888417,0.065786726772785,-0.055656671524048,0.116115510463715,0.057020489126444,0.076724655926228,0.080670371651649,-0.054602947086096,0.054720878601074,-0.143078684806824,-0.134987413883209,-0.021700665354729,0.132751837372780,0.051328215748072,-0.026529284194112,0.251459330320358));
res += mul(Get(s3,0,0), float4x4(-0.007237059529871,-0.011956113390625,0.073026195168495,-0.151844441890717,-0.145537197589874,-0.107493452727795,-0.021683882921934,-0.010418440215290,0.116936318576336,0.094139859080315,0.136588394641876,0.005504074506462,0.016214981675148,0.078926630318165,-0.072491601109505,-0.217422142624855));
res += mul(Get(s3,0,dy), float4x4(-0.026963796466589,0.003743557259440,-0.018396781757474,-0.008490876294672,-0.260320156812668,0.032919265329838,-0.152147978544235,-0.132529646158218,-0.114673927426338,0.066140428185463,0.054472737014294,-0.192183896899223,-0.056161236017942,0.075390286743641,0.127850994467735,-0.002900437219068));
res += mul(Get(s3,dx,-dy), float4x4(0.079013414680958,0.067833147943020,-0.065463960170746,0.032961983233690,-0.024322744458914,-0.098191469907761,-0.032032102346420,-0.074528031051159,-0.129554718732834,-0.057116575539112,0.003257753793150,-0.032671831548214,-0.032895646989346,-0.222555056214333,0.005989391822368,0.058214761316776));
res += mul(Get(s3,dx,0), float4x4(-0.051420446485281,-0.089430093765259,-0.077632464468479,-0.058623589575291,0.064396113157272,0.054969612509012,-0.085583694279194,-0.031497444957495,-0.098919034004211,0.023957964032888,-0.064200356602669,0.024898195639253,-0.105177938938141,0.069029770791531,0.004417343530804,0.055210344493389));
res += mul(Get(s3,dx,dy), float4x4(0.156105175614357,0.242759048938751,-0.022978547960520,-0.160092175006866,-0.008632125332952,-0.174255147576332,-0.098677098751068,-0.100078269839287,-0.030726980417967,-0.115445442497730,0.040443830192089,-0.032423499971628,0.035590846091509,0.047114465385675,-0.078254602849483,0.073276922106743));
return max(float4(0,0,0,0), res);
}
