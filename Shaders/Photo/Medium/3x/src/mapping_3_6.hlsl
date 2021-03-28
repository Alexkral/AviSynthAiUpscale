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
float4 res = float4(0.011169286444783,-0.195442020893097,-0.040490508079529,-0.027106191962957);
res += mul(Get(s0,-dx,-dy), float4x4(-0.113433800637722,0.187923818826675,-0.105940230190754,-0.114232212305069,-0.127820849418640,-0.017895583063364,0.043106216937304,-0.067425720393658,-0.112001195549965,-0.073103353381157,0.141945883631706,-0.100987538695335,0.172955736517906,0.104242563247681,0.384288161993027,0.097534216940403));
res += mul(Get(s0,-dx,0), float4x4(-0.112165093421936,-0.085264816880226,-0.094171442091465,-0.125592246651649,-0.025616154074669,0.024623384699225,0.029462326318026,-0.131641566753387,0.078694462776184,-0.093658827245235,0.043493371456861,0.041579309850931,-0.088962368667126,-0.194597169756889,0.090340308845043,-0.034809216856956));
res += mul(Get(s0,-dx,dy), float4x4(0.042032696306705,0.031560432165861,-0.046079620718956,-0.043862629681826,-0.095083728432655,0.017438681796193,0.044689644128084,-0.163363814353943,-0.112728700041771,0.074788503348827,0.012566547840834,-0.098082900047302,0.152180030941963,0.019854055717587,-0.000031922289054,-0.178880482912064));
res += mul(Get(s0,0,-dy), float4x4(-0.282668232917786,0.093376755714417,-0.607469677925110,-0.079940579831600,-0.023888636380434,0.033321022987366,-0.109120815992355,-0.129675507545471,0.264368563890457,-0.219729870557785,0.208096653223038,-0.093751586973667,0.079813577234745,0.079048588871956,0.332354247570038,-0.105027578771114));
res += mul(Get(s0,0,0), float4x4(0.048766508698463,-0.287982702255249,-0.181218996644020,-0.065386109054089,0.003329637460411,0.074860706925392,-0.022239701822400,0.100523650646210,-0.217531427741051,0.117941260337830,0.036564569920301,0.031292751431465,-0.042634107172489,-0.190873891115189,-0.405667304992676,-0.158734068274498));
res += mul(Get(s0,0,dy), float4x4(0.125360265374184,0.058971665799618,-0.001890800660476,0.129583820700645,-0.000493750150781,-0.024750705808401,0.003455672413111,-0.022673783823848,-0.075811147689819,-0.092694312334061,0.096919350326061,0.043719492852688,-0.154093995690346,0.173578694462776,0.046250928193331,-0.209778428077698));
res += mul(Get(s0,dx,-dy), float4x4(0.021184083074331,-0.003615900408477,-0.132964327931404,0.005565401632339,-0.127755478024483,-0.000966653868090,0.034827146679163,-0.202287673950195,-0.112942203879356,-0.118214912712574,-0.066602222621441,-0.193283602595329,-0.205854550004005,0.256318122148514,0.276679843664169,-0.277342230081558));
res += mul(Get(s0,dx,0), float4x4(0.046347685158253,-0.103415556252003,0.129214704036713,0.171395376324654,0.039414111524820,0.064218215644360,-0.004866170696914,0.027920722961426,-0.234705507755280,-0.033451322466135,-0.095282703638077,-0.108265213668346,-0.112617328763008,0.209423094987869,-0.192857488989830,0.004571491386741));
res += mul(Get(s0,dx,dy), float4x4(-0.008666260167956,-0.066775813698769,0.154001623392105,-0.015534734353423,-0.328446835279465,0.054004766047001,0.046728134155273,-0.147280350327492,0.077178031206131,-0.066419549286366,-0.048900615423918,-0.021497922018170,-0.020001588389277,0.095999665558338,-0.135946646332741,0.019556222483516));
res += mul(Get(s1,-dx,-dy), float4x4(0.050766788423061,-0.029252398759127,-0.057428237050772,0.083986833691597,-0.070472449064255,-0.104194007813931,-0.250576794147491,0.135252267122269,0.115494519472122,-0.153189331293106,-0.043222296983004,0.162954688072205,-0.077755711972713,0.087634980678558,0.113181173801422,-0.094221405684948));
res += mul(Get(s1,-dx,0), float4x4(0.071597948670387,-0.092593401670456,0.018066238611937,0.024509476497769,0.055624000728130,-0.105402469635010,-0.076539814472198,0.165969327092171,0.115087173879147,0.189843267202377,-0.244240999221802,-0.098315753042698,-0.040136232972145,0.153419941663742,0.039852414280176,0.162284523248672));
res += mul(Get(s1,-dx,dy), float4x4(-0.050364851951599,0.004594563040882,-0.173422887921333,-0.068493053317070,0.202111497521400,0.020344406366348,0.043862938880920,0.182724699378014,-0.093808285892010,0.053553067147732,-0.072285845875740,0.013846967369318,0.130920425057411,0.085233934223652,-0.104303799569607,0.055991448462009));
res += mul(Get(s1,0,-dy), float4x4(0.110701344907284,-0.147495269775391,-0.019491637125611,0.177754566073418,0.022346815094352,-0.055701978504658,-0.228671997785568,0.141120880842209,-0.051175441592932,-0.088650003075600,-0.203060239553452,-0.345914840698242,0.094570167362690,-0.081672921776772,0.240864455699921,-0.074327364563942));
res += mul(Get(s1,0,0), float4x4(-0.039230145514011,0.101784393191338,0.332273513078690,0.007671585306525,-0.009278737008572,-0.226731374859810,0.069964796304703,0.007871597073972,-0.194912165403366,-0.046617724001408,-0.145332172513008,0.230127125978470,0.125602722167969,-0.092847973108292,-0.324911057949066,-0.017831265926361));
res += mul(Get(s1,0,dy), float4x4(0.206236630678177,-0.234570652246475,0.087990485131741,0.092366881668568,0.118550345301628,0.075830094516277,0.227605149149895,0.241540834307671,0.026947695761919,-0.007087441626936,-0.230778619647026,0.002840027911589,-0.195502638816833,0.026376515626907,-0.068109862506390,-0.168270796537399));
res += mul(Get(s1,dx,-dy), float4x4(0.066479094326496,0.025077551603317,0.151919066905975,0.063666582107544,0.205584421753883,-0.205886662006378,-0.092887401580811,0.193052619695663,-0.190557748079300,0.052726667374372,0.067962251603603,-0.131574869155884,-0.215494737029076,0.103689029812813,0.019754212349653,-0.232025533914566));
res += mul(Get(s1,dx,0), float4x4(0.132115811109543,-0.001591473701410,0.206602722406387,0.070227265357971,-0.067487552762032,-0.116255469620228,0.128465279936790,0.026956217363477,0.028775824233890,-0.117837011814117,0.012737635523081,0.237216368317604,-0.089470431208611,0.130567401647568,-0.026985809206963,-0.053325433284044));
res += mul(Get(s1,dx,dy), float4x4(-0.233676716685295,0.000483308569528,0.077956244349480,-0.187657535076141,0.138472884893417,-0.003197861835361,0.002765707671642,-0.013410840183496,-0.007811020594090,-0.115253992378712,0.184091284871101,-0.008064695633948,0.136767610907555,-0.005608910694718,0.005975306965411,0.106790922582150));
res += mul(Get(s2,-dx,-dy), float4x4(0.005393660627306,-0.004029783885926,-0.020145034417510,0.041868939995766,0.099079206585884,-0.282477229833603,0.136275798082352,0.233970254659653,0.238523140549660,-0.215506181120872,0.319892138242722,-0.035819299519062,0.084186919033527,-0.120867192745209,0.009446124546230,0.179569765925407));
res += mul(Get(s2,-dx,0), float4x4(-0.121396817266941,-0.067552939057350,0.059560213238001,-0.072721131145954,0.298288017511368,-0.077217303216457,0.049305360764265,-0.104786947369576,-0.039379797875881,-0.066080234944820,0.264183193445206,-0.099361643195152,0.019768739119172,-0.057780794799328,0.099476858973503,-0.063119947910309));
res += mul(Get(s2,-dx,dy), float4x4(0.055919859558344,-0.000026255058401,0.138355210423470,-0.037787083536386,-0.093008987605572,0.022923717275262,0.066711433231831,-0.102747254073620,-0.058844476938248,-0.183880403637886,0.127038240432739,-0.214967891573906,0.014507858082652,-0.022845465689898,0.016556985676289,0.008807525970042));
res += mul(Get(s2,0,-dy), float4x4(-0.039727572351694,-0.068763926625252,0.044041160494089,-0.101541936397552,0.078183867037296,0.239846184849739,-0.094108365476131,-0.195162102580070,-0.041538923978806,-0.112358815968037,0.032651618123055,-0.161586001515388,0.224790871143341,-0.236267000436783,0.025109956040978,-0.026123616844416));
res += mul(Get(s2,0,0), float4x4(-0.057684797793627,0.228585630655289,0.040671303868294,-0.143490165472031,-0.222511455416679,-0.348974525928497,0.194588616490364,-0.254797160625458,-0.079328238964081,0.018183520063758,0.003643614705652,0.062124520540237,-0.375477313995361,0.049336262047291,0.189469769597054,0.125972881913185));
res += mul(Get(s2,0,dy), float4x4(-0.261986583471298,-0.032295703887939,0.099134057760239,-0.072801530361176,-0.173668414354324,0.154282495379448,-0.199880331754684,0.203205466270447,-0.168579488992691,-0.025329630821943,-0.122294098138809,-0.220955654978752,0.190235272049904,0.156155362725258,0.159408882260323,0.089690349996090));
res += mul(Get(s2,dx,-dy), float4x4(0.006424901075661,-0.043791837990284,0.132480010390282,-0.253513634204865,-0.192519411444664,-0.049061182886362,0.292789012193680,-0.323489636182785,0.041024971753359,0.214498206973076,-0.014505198225379,0.017767040058970,-0.018232382833958,-0.158786043524742,-0.111665040254593,0.046395383775234));
res += mul(Get(s2,dx,0), float4x4(-0.055500160902739,-0.087253265082836,0.062136985361576,0.248807176947594,-0.037486772984266,0.028900496661663,-0.101124927401543,-0.089635603129864,-0.013979470357299,0.136999905109406,-0.349795311689377,-0.175759732723236,0.221155226230621,0.052315354347229,-0.279658347368240,0.196751266717911));
res += mul(Get(s2,dx,dy), float4x4(0.005752434488386,-0.170098423957825,0.065136402845383,0.069517575204372,-0.141625449061394,0.166686415672302,-0.208768725395203,-0.006395752076060,-0.059387680143118,0.081021316349506,0.072424739599228,0.006187691353261,-0.055519286543131,0.121106803417206,-0.038631737232208,-0.052326314151287));
res += mul(Get(s3,-dx,-dy), float4x4(0.150671660900116,-0.088998861610889,0.135448440909386,0.092661403119564,0.106580443680286,0.110241152346134,0.089438669383526,-0.016010157763958,0.075183004140854,-0.056078873574734,-0.134623602032661,-0.073089301586151,-0.020675485953689,-0.081616409122944,0.073874861001968,-0.082888945937157));
res += mul(Get(s3,-dx,0), float4x4(-0.135976985096931,-0.083739265799522,0.424900949001312,0.073156788945198,-0.017410449683666,0.083800233900547,0.256567955017090,0.177518099546432,0.137527093291283,0.026337262243032,0.070282518863678,0.242321372032166,0.062264908105135,0.201193422079086,0.192428603768349,-0.231039956212044));
res += mul(Get(s3,-dx,dy), float4x4(0.074155360460281,-0.038949232548475,0.142278879880905,0.200909003615379,0.144043505191803,-0.008422359824181,-0.030598303303123,0.049768280237913,0.125092461705208,-0.010920670814812,-0.004253382794559,0.090858533978462,-0.257714122533798,-0.038652706891298,0.119353070855141,0.014788144268095));
res += mul(Get(s3,0,-dy), float4x4(0.183010697364807,-0.010188529267907,0.038944091647863,-0.000368085806258,-0.134946569800377,0.004642092157155,-0.083715118467808,-0.002862034132704,0.083368428051472,0.047909073531628,-0.025419177487493,0.229702740907669,0.049056589603424,-0.022010356187820,0.102589063346386,0.053025234490633));
res += mul(Get(s3,0,0), float4x4(0.074453063309193,0.054143149405718,-0.010011886246502,-0.106859974563122,0.095151096582413,-0.121205307543278,-0.433725982904434,0.292399913072586,0.286873191595078,0.281143158674240,-0.031599126756191,-0.353821337223053,-0.528739988803864,0.086928874254227,-0.142272144556046,-0.426027506589890));
res += mul(Get(s3,0,dy), float4x4(-0.087000064551830,-0.001139799598604,0.046096164733171,0.017252456396818,0.064322546124458,0.005156424362212,-0.043224103748798,-0.317186117172241,-0.095475159585476,0.111076883971691,-0.086279205977917,-0.163285657763481,0.016992352902889,0.013754999265075,-0.102493464946747,0.165087923407555));
res += mul(Get(s3,dx,-dy), float4x4(-0.018424287438393,0.107316412031651,0.009857649914920,0.098218888044357,-0.004108238499612,0.078300006687641,0.290508598089218,-0.015305382199585,0.129157111048698,0.025442730635405,0.085840649902821,0.208763256669044,-0.051358912140131,0.046642016619444,-0.091853678226471,-0.055749494582415));
res += mul(Get(s3,dx,0), float4x4(-0.223871663212776,0.471057116985321,-0.145390421152115,-0.173870816826820,0.019825384020805,0.300118118524551,0.131143257021904,-0.053840439766645,-0.163000464439392,0.236988097429276,-0.017178909853101,-0.297400921583176,0.096996553242207,-0.006795238237828,-0.076005510985851,0.114540413022041));
res += mul(Get(s3,dx,dy), float4x4(-0.098532579839230,0.180471152067184,-0.170794486999512,0.141458526253700,-0.266172260046005,0.167510405182838,0.075698494911194,-0.164035782217979,-0.066100031137466,0.150218710303307,-0.122282825410366,-0.057703450322151,0.059392657130957,0.055059518665075,-0.079337641596794,-0.015822332352400));
res += mul(Get(s4,-dx,-dy), float4x4(-0.039520576596260,0.001949686673470,-0.065071165561676,-0.131604820489883,0.020611045882106,0.041235677897930,0.043759148567915,0.124214962124825,-0.120776489377022,0.202116876840591,-0.114091858267784,-0.166186094284058,0.012956162914634,0.055391538888216,-0.105536609888077,-0.033286079764366));
res += mul(Get(s4,-dx,0), float4x4(-0.043973166495562,-0.053936805576086,0.074249699711800,0.131837502121925,0.113043487071991,-0.031489428132772,-0.130108788609505,0.221893951296806,-0.151758998632431,0.131535470485687,-0.279750108718872,-0.042469438165426,-0.193385809659958,0.162999615073204,-0.153369903564453,-0.050600606948137));
res += mul(Get(s4,-dx,dy), float4x4(-0.124247357249260,0.121007807552814,0.020956147462130,0.045328579843044,0.188220366835594,0.050923403352499,-0.164187029004097,0.055188424885273,-0.012037935666740,0.042674854397774,-0.081036277115345,0.117199078202248,-0.065597087144852,-0.003183226799592,0.045165672898293,0.047051385045052));
res += mul(Get(s4,0,-dy), float4x4(-0.088917106389999,-0.121158488094807,0.040518976747990,-0.204492464661598,0.244069769978523,0.053420342504978,0.116324856877327,0.049507528543472,-0.119418233633041,-0.016850296407938,-0.042620178312063,-0.098488271236420,-0.118167713284492,0.130215555429459,-0.341732740402222,0.214037939906120));
res += mul(Get(s4,0,0), float4x4(-0.110795617103577,0.141568124294281,-0.215571299195290,0.380772531032562,0.177039951086044,0.122724458575249,-0.115645542740822,-0.030815070495009,-0.396128147840500,0.002496128203347,-0.344887703657150,-0.139732554554939,0.180704802274704,-0.666251420974731,-0.224732592701912,0.124696947634220));
res += mul(Get(s4,0,dy), float4x4(-0.070031672716141,-0.093384109437466,0.171139404177666,0.347488045692444,-0.017305435612798,-0.151272147893906,0.127693474292755,-0.106801681220531,0.209117278456688,0.197136476635933,-0.247964709997177,0.122932545840740,-0.063271619379520,0.044451188296080,-0.255379617214203,0.035024568438530));
res += mul(Get(s4,dx,-dy), float4x4(-0.109675258398056,-0.001902561751194,-0.071366295218468,-0.090879462659359,0.050462700426579,-0.090499110519886,0.140423387289047,-0.049447435885668,0.066673964262009,0.002373618772253,0.242041960358620,-0.063536241650581,0.084821298718452,-0.047918904572725,0.145413458347321,0.202603265643120));
res += mul(Get(s4,dx,0), float4x4(0.034487806260586,-0.041655536741018,0.119528532028198,0.047007363289595,0.083094447851181,0.056821752339602,0.049592915922403,-0.028824679553509,0.179144382476807,-0.078645557165146,-0.041295278817415,0.236833229660988,-0.053890753537416,-0.266495198011398,-0.050986539572477,-0.123965419828892));
res += mul(Get(s4,dx,dy), float4x4(0.045096028596163,0.006991467904299,-0.041389644145966,0.074210479855537,0.077782653272152,-0.016520217061043,0.111446261405945,0.112960346043110,-0.050373267382383,-0.052243940532207,-0.032221373170614,0.087898239493370,0.057535637170076,-0.072446316480637,-0.172869354486465,0.049237199127674));
res += mul(Get(s5,-dx,-dy), float4x4(-0.011282566003501,0.059947967529297,0.000945956853684,0.024035025388002,-0.197398826479912,0.188765630125999,0.161903202533722,0.018730413168669,0.016451992094517,-0.338420003652573,-0.000472591986181,-0.028058659285307,-0.004157591611147,0.033840689808130,-0.087037391960621,0.166807502508163));
res += mul(Get(s5,-dx,0), float4x4(0.061862342059612,0.001196228899062,-0.054704163223505,0.108124017715454,-0.013403926976025,-0.212468117475510,0.375037819147110,-0.177294135093689,0.000678576703649,-0.188822463154793,0.307085931301117,-0.571358323097229,-0.008743384853005,0.056315723806620,-0.233629822731018,-0.027490872889757));
res += mul(Get(s5,-dx,dy), float4x4(-0.086328148841858,0.090376846492290,0.087346009910107,0.088221743702888,0.034754384309053,0.020995981991291,0.026396609842777,0.158335134387016,-0.107872501015663,-0.012742773629725,-0.021515458822250,0.170168817043304,-0.149161607027054,0.106769695878029,-0.266157895326614,-0.096542082726955));
res += mul(Get(s5,0,-dy), float4x4(0.075824037194252,-0.037303041666746,0.108456186950207,-0.014921668916941,0.105507306754589,-0.122923053801060,-0.143225595355034,0.017958590760827,-0.016630470752716,-0.002360792597756,-0.193013444542885,-0.053004890680313,0.025581432506442,-0.017711127176881,0.115688025951385,0.075178548693657));
res += mul(Get(s5,0,0), float4x4(-0.178751870989799,-0.051331937313080,0.092365510761738,-0.072029836475849,0.053394220769405,0.265890508890152,-0.153685599565506,0.021977273747325,-0.333691000938416,-0.046547096222639,0.075189046561718,0.027833068743348,0.170493990182877,0.060286615043879,0.122914433479309,0.023253848776221));
res += mul(Get(s5,0,dy), float4x4(0.080559000372887,-0.085768990218639,-0.068546533584595,-0.032235644757748,0.003525514621288,0.013969233259559,-0.034435935318470,0.019043769687414,0.193359106779099,-0.198413580656052,-0.112936466932297,-0.101195424795151,0.028596753254533,-0.090449482202530,-0.129227742552757,0.029884556308389));
res += mul(Get(s5,dx,-dy), float4x4(-0.291582196950912,0.160447835922241,-0.032820664346218,-0.159256070852280,-0.097970277070999,-0.002108333632350,-0.084769390523434,-0.199198782444000,-0.000957237265538,0.066987462341785,-0.020127084106207,0.184967532753944,0.000266111921519,-0.019749568775296,0.243400961160660,-0.031940739601851));
res += mul(Get(s5,dx,0), float4x4(-0.034253511577845,0.091357782483101,-0.166790395975113,0.140903457999229,0.130818665027618,-0.015505748800933,-0.086796134710312,0.205616980791092,0.025559827685356,0.082936577498913,0.087592236697674,-0.004967212677002,-0.032942377030849,-0.109115026891232,0.145812854170799,-0.127390831708908));
res += mul(Get(s5,dx,dy), float4x4(-0.048543605953455,0.088283568620682,-0.053683735430241,-0.122889250516891,0.001856089686044,0.060832615941763,-0.113139539957047,-0.002226380398497,-0.227266088128090,0.016340762376785,0.006643253378570,-0.004653779789805,-0.054509583860636,-0.139769122004509,0.177502557635307,-0.126947671175003));
res = max(float4(0, 0, 0, 0), res) + float4(-0.063847161829472,0.584568738937378,0.398134291172028,-0.053771011531353) * min(float4(0, 0, 0, 0), res);
return res;
}
