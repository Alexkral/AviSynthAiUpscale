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
float4 res = float4(-0.308597385883331,0.168996274471283,0.036476247012615,-0.114501461386681);
res += mul(Get(s0,-dx,-dy), float4x4(0.043557215481997,0.009350376203656,0.048523738980293,0.098027251660824,-0.142921566963196,-0.183725148439407,-0.146942332386971,-0.132535591721535,0.030313288792968,-0.082785055041313,0.028727520257235,-0.069536715745926,-0.127160474658012,-0.181030049920082,-0.042921572923660,-0.159857571125031));
res += mul(Get(s0,-dx,0), float4x4(0.081157930195332,-0.099357910454273,-0.014594179578125,-0.006742439232767,-0.179695799946785,-0.073914110660553,0.040171526372433,-0.019056580960751,-0.077319748699665,0.098469398915768,0.061975613236427,0.211778059601784,-0.305485755205154,0.052095331251621,-0.006760767195374,0.055742803961039));
res += mul(Get(s0,-dx,dy), float4x4(-0.056823708117008,-0.049176700413227,0.023530934005976,0.083165474236012,-0.026821188628674,0.055312201380730,-0.108260616660118,-0.173871949315071,0.128318637609482,-0.066242225468159,-0.064780324697495,-0.122429609298706,0.047713056206703,0.091539658606052,-0.017087241634727,-0.000514293496963));
res += mul(Get(s0,0,-dy), float4x4(0.159655913710594,0.218833908438683,0.081125073134899,0.034541487693787,0.023237954825163,-0.133734568953514,-0.050909020006657,-0.045243803411722,0.046158052980900,0.105385571718216,0.011458668857813,-0.002588768023998,-0.156283780932426,0.010703623294830,0.062412347644567,0.020362583920360));
res += mul(Get(s0,0,0), float4x4(-0.155571550130844,-0.156360447406769,-0.131238475441933,-0.217241078615189,0.099777296185493,-0.009290684014559,0.216722860932350,0.274154037237167,0.094053879380226,-0.094424791634083,-0.101790040731430,-0.106395289301872,-0.261614561080933,-0.167054876685143,0.030778223648667,0.117703668773174));
res += mul(Get(s0,0,dy), float4x4(-0.323247581720352,-0.096217155456543,0.096224024891853,-0.015351306647062,0.065820008516312,0.164643049240112,0.057170197367668,0.146968171000481,-0.258909523487091,0.094389587640762,-0.015410591848195,-0.022219788283110,-0.094943277537823,0.009076715447009,0.141107231378555,0.287506520748138));
res += mul(Get(s0,dx,-dy), float4x4(-0.070677325129509,0.218977585434914,-0.030371233820915,0.041059568524361,-0.071408495306969,-0.012937081977725,-0.202852115035057,-0.120478287339211,-0.033715806901455,0.030828753486276,-0.059923596680164,0.108488000929356,-0.025293810293078,0.087288051843643,0.065720096230507,-0.043112527579069));
res += mul(Get(s0,dx,0), float4x4(0.228522226214409,-0.018849130719900,0.088957972824574,-0.083409748971462,-0.038423635065556,0.024847697466612,-0.072021923959255,0.011757321655750,0.073805101215839,-0.063667081296444,-0.018824111670256,-0.074867740273476,-0.000765771139413,0.053791046142578,0.152934163808823,0.119315221905708));
res += mul(Get(s0,dx,dy), float4x4(-0.076424904167652,-0.073926158249378,0.077292442321777,0.051069263368845,0.041462358087301,0.053428404033184,-0.045736134052277,-0.118118599057198,0.060307230800390,-0.111118897795677,-0.040874823927879,0.087027639150620,0.175680771470070,-0.042960781604052,0.033566050231457,0.059800490736961));
res += mul(Get(s1,-dx,-dy), float4x4(0.049923624843359,-0.000920238264371,0.022094849497080,0.076722510159016,0.057964116334915,-0.039273291826248,0.095456898212433,-0.075948089361191,0.056676644831896,-0.134147807955742,-0.043465003371239,-0.071503862738609,0.099300421774387,-0.090341560542583,0.057930119335651,-0.190990313887596));
res += mul(Get(s1,-dx,0), float4x4(-0.065604180097580,-0.052918206900358,-0.048188392072916,-0.072017386555672,-0.028930461034179,0.092147789895535,0.010688027366996,0.084757529199123,-0.127862378954887,0.041718009859324,-0.013346251100302,0.053360149264336,-0.019787833094597,0.088861450552940,0.088616162538528,0.092597268521786));
res += mul(Get(s1,-dx,dy), float4x4(-0.098928570747375,-0.039524536579847,-0.096351683139801,-0.053770463913679,0.089740589261055,-0.009160522371531,0.018646707758307,-0.012506105005741,0.096733391284943,-0.040991637855768,0.027235491201282,-0.087597846984863,0.012227392755449,-0.045093718916178,-0.019471008330584,0.035668388009071));
res += mul(Get(s1,0,-dy), float4x4(0.088764674961567,-0.077767737209797,-0.015701849013567,-0.026514634490013,-0.029410634189844,0.065240353345871,0.119937539100647,0.093925729393959,-0.091001950204372,0.170876637101173,0.018922878429294,-0.007176083512604,0.122244000434875,-0.059338334947824,-0.010344231501222,-0.134726107120514));
res += mul(Get(s1,0,0), float4x4(-0.205921232700348,-0.000415602320572,0.011434203945100,-0.017586922273040,0.063025340437889,0.002540817717090,-0.100663483142853,-0.082283690571785,0.143769711256027,-0.101166471838951,-0.091613121330738,-0.097203746438026,-0.008233597502112,0.089390322566032,0.144988685846329,0.253657221794128));
res += mul(Get(s1,0,dy), float4x4(0.031958341598511,-0.011248835362494,-0.019788978621364,0.082382671535015,-0.194965243339539,0.055855147540569,0.111090242862701,0.001405686023645,-0.166466683149338,0.042441345751286,0.021922174841166,-0.027358045801520,0.116408504545689,-0.053993053734303,-0.068653598427773,-0.198305696249008));
res += mul(Get(s1,dx,-dy), float4x4(0.015793478116393,0.094698525965214,-0.040512539446354,-0.007844761945307,-0.043453857302666,0.045383065938950,-0.000065031461418,-0.097694888710976,-0.020191624760628,0.030413400381804,-0.043840520083904,0.152736008167267,-0.071002922952175,0.093305937945843,-0.001218837103806,-0.022362248972058));
res += mul(Get(s1,dx,0), float4x4(0.062558248639107,0.068918235599995,0.010719358921051,0.121446356177330,-0.058656044304371,0.007664197590202,0.041515383869410,0.018404934555292,0.052760642021894,-0.006125085521489,-0.007727399934083,-0.138679087162018,0.004341021645814,-0.183650210499763,-0.072036795318127,-0.149342417716980));
res += mul(Get(s1,dx,dy), float4x4(0.068730250000954,-0.024428142234683,0.005485234782100,-0.070545673370361,0.158033728599548,-0.108607485890388,-0.007153456564993,0.044660404324532,-0.083458550274372,-0.030038727447391,-0.003849956672639,0.099885374307632,-0.372549623250961,0.089945070445538,-0.082682639360428,0.166385099291801));
res += mul(Get(s2,-dx,-dy), float4x4(0.021162565797567,-0.100198380649090,0.023272825405002,-0.072711303830147,-0.032588027417660,-0.203864142298698,0.021784961223602,-0.139915317296982,-0.160399541258812,-0.023510716855526,-0.116049878299236,-0.159012660384178,0.127663791179657,-0.013251701369882,0.014463934116066,0.160979345440865));
res += mul(Get(s2,-dx,0), float4x4(-0.100509800016880,0.095460340380669,0.050907202064991,0.150533407926559,-0.206034898757935,-0.046459905803204,0.126420617103577,0.144599243998528,-0.114165455102921,0.159201517701149,-0.073386304080486,-0.347568541765213,-0.047906462103128,-0.158929571509361,0.068776875734329,0.014020811766386));
res += mul(Get(s2,-dx,dy), float4x4(0.154124900698662,-0.026006801053882,-0.075338713824749,-0.136472418904305,0.194498762488365,0.051401700824499,0.035375654697418,0.081181474030018,0.046435445547104,-0.128864392638206,-0.081558391451836,-0.069033153355122,-0.177509948611259,0.080858439207077,0.080560810863972,0.038335382938385));
res += mul(Get(s2,0,-dy), float4x4(-0.022980567067862,0.073205985128880,0.024154890328646,0.002758663380519,0.001671284204349,-0.018333151936531,0.041273981332779,0.029043093323708,0.050874844193459,-0.094849318265915,-0.226702317595482,-0.146843403577805,0.030635412782431,-0.031907718628645,-0.071291156113148,-0.006392018403858));
res += mul(Get(s2,0,0), float4x4(-0.093967109918594,-0.030004467815161,-0.100297749042511,-0.121808320283890,0.052968915551901,0.068488739430904,0.117479242384434,0.159150496125221,0.214115202426910,0.088534787297249,0.016722960397601,0.209623456001282,-0.270206868648529,-0.135351657867432,-0.023712377995253,-0.200711548328400));
res += mul(Get(s2,0,dy), float4x4(-0.272360622882843,-0.031999971717596,0.114207133650780,0.137954279780388,0.075904160737991,-0.022134628146887,-0.068695724010468,-0.146559804677963,0.138981521129608,-0.005436385516077,-0.189510926604271,0.014811358414590,-0.062038328498602,0.135409727692604,0.041821558028460,0.173999339342117));
res += mul(Get(s2,dx,-dy), float4x4(-0.050384849309921,0.099401518702507,-0.059377752244473,0.079365849494934,-0.047810796648264,0.046859603375196,0.020938377827406,-0.008489505387843,0.024878785014153,-0.152276888489723,-0.094840876758099,-0.071009188890457,0.072725981473923,-0.011734392493963,0.015337395481765,0.135730504989624));
res += mul(Get(s2,dx,0), float4x4(0.001452097319998,0.022416984662414,0.091784931719303,-0.025984305888414,-0.025679497048259,0.053648587316275,0.002144721802324,-0.003584055695683,-0.114133067429066,0.051770240068436,-0.160375103354454,0.035470522940159,0.069929659366608,-0.002178482245654,0.140370547771454,0.037776526063681));
res += mul(Get(s2,dx,dy), float4x4(0.267477095127106,-0.008503582328558,0.024891292676330,0.060873758047819,-0.038225486874580,0.015171803534031,0.027869015932083,-0.020091030746698,-0.122189067304134,-0.063994564116001,-0.062896415591240,-0.059463784098625,-0.014735364355147,0.026450179517269,0.031276024878025,0.042568046599627));
res += mul(Get(s3,-dx,-dy), float4x4(0.042584028095007,-0.004645619541407,0.003181234002113,-0.091717146337032,-0.026468664407730,0.174532741308212,-0.138258099555969,-0.234363675117493,0.045690156519413,0.113836906850338,0.105284310877323,-0.004767993930727,-0.018050618469715,0.035390373319387,-0.012848853133619,-0.005584531929344));
res += mul(Get(s3,-dx,0), float4x4(-0.069419622421265,0.034842979162931,0.001586243510246,0.058617919683456,0.020897123962641,0.030001007020473,-0.127491444349289,-0.226966172456741,0.039330579340458,-0.019262950867414,-0.133903518319130,-0.059017479419708,0.078969419002533,-0.096695236861706,-0.013687300495803,0.074608005583286));
res += mul(Get(s3,-dx,dy), float4x4(-0.016440518200397,0.025192087516189,0.022965850308537,-0.066699497401714,-0.141982093453407,-0.121037863194942,-0.083207361400127,-0.313969701528549,-0.054478526115417,-0.097533099353313,0.007988599129021,-0.064892925322056,-0.022985007613897,0.079385578632355,0.051947757601738,-0.002545485273004));
res += mul(Get(s3,0,-dy), float4x4(-0.062655672430992,-0.028708770871162,-0.009939340874553,-0.116458073258400,-0.071393840014935,-0.081465765833855,-0.070932894945145,0.144484341144562,0.095369391143322,0.113497406244278,0.040955122560263,0.099567651748657,-0.137226536870003,0.035696968436241,-0.033552873879671,-0.069204717874527));
res += mul(Get(s3,0,0), float4x4(-0.020720323547721,0.014988472685218,0.040918406099081,0.123779848217964,0.143488481640816,-0.048827208578587,-0.019059238955379,0.165641546249390,-0.053785372525454,-0.096542939543724,-0.250022619962692,-0.299467951059341,0.012185943312943,-0.036160312592983,0.035888489335775,0.000731030188035));
res += mul(Get(s3,0,dy), float4x4(0.082619167864323,0.010927030816674,-0.014320959337056,0.029956799000502,0.081255301833153,0.038465455174446,0.021943354979157,0.155668780207634,-0.219642013311386,-0.028609080240130,-0.026196118444204,-0.052926376461983,-0.028679227456450,-0.009226307272911,0.027758145704865,0.069847539067268));
res += mul(Get(s3,dx,-dy), float4x4(0.153153613209724,-0.003384475596249,0.048874679952860,0.003025750163943,0.031517080962658,-0.021867189556360,0.126182407140732,0.003750717733055,0.023921810090542,0.097387999296188,0.167777776718140,0.107071198523045,0.109218195080757,-0.026774065569043,-0.057467035949230,-0.014792868867517));
res += mul(Get(s3,dx,0), float4x4(-0.090903833508492,-0.017703358083963,0.011366091668606,-0.006966494955122,0.048144467175007,-0.038685888051987,0.085122846066952,0.062626183032990,0.084690049290657,0.060656581073999,0.070665396749973,-0.034857902675867,0.007906180806458,0.011676922440529,-0.044682078063488,-0.006621452979743));
res += mul(Get(s3,dx,dy), float4x4(-0.029882078990340,-0.008901495486498,-0.047072328627110,-0.013789676129818,0.057021550834179,0.036755893379450,-0.005528971552849,0.015420438721776,0.216283485293388,0.026209237053990,0.051801498979330,-0.009798876941204,-0.160068526864052,0.026630578562617,-0.006819570902735,-0.077772244811058));
res += mul(Get(s4,-dx,-dy), float4x4(0.012847190722823,-0.027566799893975,-0.004692669957876,0.033931329846382,0.000882406893652,0.065931372344494,-0.015232400968671,0.070086449384689,0.058608144521713,0.112508840858936,-0.040979471057653,-0.082166321575642,-0.088738121092319,0.061339940875769,0.180625021457672,0.301344215869904));
res += mul(Get(s4,-dx,0), float4x4(0.207344874739647,-0.058535214513540,-0.040770459920168,0.094626821577549,0.008861782029271,-0.225972577929497,0.113568104803562,0.226810023188591,0.043411567807198,0.020269298925996,-0.083814471960068,-0.212918385863304,-0.083357580006123,-0.119956031441689,-0.059577774256468,0.031188787892461));
res += mul(Get(s4,-dx,dy), float4x4(-0.123305879533291,-0.020730338990688,-0.036940548568964,-0.011085954494774,-0.042363882064819,0.019519384950399,0.069217331707478,0.034073777496815,-0.108423121273518,0.007494788151234,0.042856574058533,0.002793033141643,-0.018861429765821,0.030000705271959,0.092242948710918,0.163854092359543));
res += mul(Get(s4,0,-dy), float4x4(0.184996694326401,0.007887091487646,0.036039996892214,0.009440805763006,0.118849582970142,0.267323702573776,0.043321117758751,0.281832486391068,0.030791254714131,-0.231713652610779,-0.053597483783960,-0.108714096248150,-0.056238800287247,0.039323765784502,0.068889528512955,-0.008642257191241));
res += mul(Get(s4,0,0), float4x4(-0.233230277895927,0.060587968677282,-0.039863482117653,-0.224442988634109,0.265089929103851,-0.208238184452057,-0.187423005700111,-0.236965939402580,-0.123734071850777,0.161717712879181,0.120479732751846,0.171045035123825,-0.191054910421371,-0.121980756521225,-0.248662889003754,-0.252503812313080));
res += mul(Get(s4,0,dy), float4x4(-0.134678512811661,-0.045709133148193,0.033866103738546,-0.037444248795509,-0.461870163679123,0.019283503293991,0.102382019162178,-0.060967028141022,0.236485987901688,-0.054931465536356,-0.025549059733748,-0.037628032267094,0.037593219429255,0.005653341766447,-0.038132991641760,-0.025959983468056));
res += mul(Get(s4,dx,-dy), float4x4(-0.014731885865331,-0.076882965862751,-0.067159198224545,-0.124857835471630,-0.026921836659312,0.054694958031178,0.014233338646591,0.131709828972816,0.084164947271347,-0.007696954533458,0.040940210223198,-0.127746164798737,0.155497804284096,0.190545216202736,0.140546321868896,0.209798857569695));
res += mul(Get(s4,dx,0), float4x4(0.029966343194246,0.064530618488789,-0.006412168499082,0.148168936371803,0.047119576483965,-0.032530181109905,0.188686713576317,-0.069464065134525,-0.141608998179436,-0.098836556077003,-0.076508276164532,0.110360063612461,0.221336975693703,0.032586123794317,0.010189317166805,-0.083798445761204));
res += mul(Get(s4,dx,dy), float4x4(0.153324320912361,-0.007102950010449,-0.042683657258749,-0.082211054861546,0.004022077191621,-0.047693185508251,-0.010160467587411,0.153770282864571,-0.081690430641174,0.044970329850912,-0.032077576965094,0.013204176910222,0.184694334864616,-0.029557032510638,0.132240295410156,-0.102444842457771));
res += mul(Get(s5,-dx,-dy), float4x4(-0.147671550512314,-0.093710049986839,-0.004839162342250,-0.304124206304550,0.013174547813833,-0.034366313368082,-0.020348867401481,-0.008568868041039,0.054801207035780,0.003721750807017,0.008283144794405,0.047810029238462,-0.121880963444710,0.077521495521069,0.002907912945375,-0.039035405963659));
res += mul(Get(s5,-dx,0), float4x4(-0.334036320447922,0.048556897789240,-0.157839968800545,-0.123907826840878,-0.030868683010340,0.044514629989862,-0.024516616016626,-0.023879522457719,-0.007783363107592,0.018583843484521,0.032283186912537,0.115429133176804,-0.123734913766384,-0.107644319534302,-0.026222523301840,-0.136284023523331));
res += mul(Get(s5,-dx,dy), float4x4(-0.040028166025877,-0.152000859379768,-0.084002651274204,-0.061828318983316,0.007261514198035,-0.045329853892326,0.078840561211109,0.137539684772491,0.080297425389290,-0.020839709788561,-0.008736150339246,0.066452868282795,-0.108519710600376,0.022328153252602,0.004342538304627,0.005335493013263));
res += mul(Get(s5,0,-dy), float4x4(-0.354915887117386,0.154868736863136,-0.166595101356506,-0.399685710668564,0.079137615859509,-0.052836805582047,-0.048172835260630,0.001741660642438,-0.080037891864777,0.002715652808547,0.070851348340511,-0.138212680816650,-0.036873795092106,-0.075472131371498,-0.036913387477398,-0.042572390288115));
res += mul(Get(s5,0,0), float4x4(-0.589632153511047,-0.235983192920685,-0.384908050298691,-0.386235415935516,0.013966212980449,-0.034491233527660,-0.113592736423016,-0.044113632291555,-0.108224727213383,0.006784242577851,0.020397350192070,-0.068016678094864,0.075722582638264,0.142989888787270,0.123918712139130,0.124840289354324));
res += mul(Get(s5,0,dy), float4x4(-0.340250343084335,0.042024295777082,-0.091677844524384,-0.207368656992912,-0.076233491301537,-0.011720467358828,-0.051206320524216,-0.113422669470310,-0.175185412168503,0.013130069710314,0.044142790138721,-0.083648234605789,0.246570542454720,-0.088490359485149,-0.062792845070362,-0.020709531381726));
res += mul(Get(s5,dx,-dy), float4x4(-0.208894237875938,0.126073494553566,-0.075340941548347,-0.085042774677277,0.123785033822060,0.052590448409319,0.056466873735189,0.104257971048355,0.001489505288191,-0.009987520985305,-0.045347198843956,-0.057456698268652,0.024543253704906,0.059231024235487,0.025187663733959,-0.043713513761759));
res += mul(Get(s5,dx,0), float4x4(-0.302008956670761,-0.104541011154652,-0.161482319235802,-0.299856930971146,-0.101456515491009,0.001799177727662,-0.065211057662964,-0.160149022936821,-0.079231686890125,-0.062773071229458,-0.070507869124413,-0.123223453760147,0.005609748885036,0.002596904290840,-0.082119360566139,0.128559291362762));
res += mul(Get(s5,dx,dy), float4x4(-0.295536994934082,-0.040644306689501,-0.107808701694012,-0.098821461200714,-0.064588241279125,-0.001454973709770,-0.110151000320911,0.137997865676880,-0.083731122314930,-0.094854578375816,-0.034446354955435,-0.036424033343792,0.017248257994652,0.046332649886608,-0.002216062508523,-0.089218966662884));
res = max(float4(0, 0, 0, 0), res) + float4(-0.000136806251248,0.189665645360947,0.010165171697736,-0.006086299195886) * min(float4(0, 0, 0, 0), res);
return res;
}