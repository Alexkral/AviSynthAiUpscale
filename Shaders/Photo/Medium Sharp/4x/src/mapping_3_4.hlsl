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
float4 res = float4(0.300328642129898,-0.195893138647079,-0.054842129349709,-0.040009617805481);
res += mul(Get(s0,-dx,-dy), float4x4(-0.191767036914825,-0.016821967437863,-0.049184706062078,-0.027111796662211,0.241197645664215,0.294043153524399,-0.019975991919637,0.014180183410645,0.066868655383587,0.043373532593250,-0.103243097662926,0.121121965348721,-0.079435825347900,0.073754802346230,0.013068350963295,0.072329901158810));
res += mul(Get(s0,-dx,0), float4x4(-0.370388507843018,0.166164487600327,0.020543755963445,-0.076786980032921,0.001737034064718,0.078576907515526,-0.065725646913052,0.120743423700333,-0.273020684719086,-0.219063237309456,-0.000879662809893,-0.134834438562393,-0.036207951605320,-0.017835821956396,-0.050082873553038,0.081669040024281));
res += mul(Get(s0,-dx,dy), float4x4(-0.093835771083832,0.057715240865946,0.122087568044662,-0.033298224210739,-0.178021863102913,-0.047963466495275,-0.133043721318245,0.057209618389606,0.026767736300826,-0.166854709386826,0.074753776192665,0.091790229082108,0.032146360725164,-0.110638834536076,0.087568767368793,0.075751766562462));
res += mul(Get(s0,0,-dy), float4x4(-0.221505537629128,-0.116452693939209,-0.044505767524242,0.013487287797034,-0.034622844308615,-0.152736976742744,0.185714095830917,-0.062376394867897,0.123400896787643,0.176668703556061,0.071307502686977,-0.248192816972733,-0.030746567994356,-0.071643002331257,0.031940806657076,-0.025657624006271));
res += mul(Get(s0,0,0), float4x4(-0.981947243213654,0.531773924827576,-0.224405631422997,0.214745074510574,0.036442406475544,0.053872589021921,0.121217034757137,-0.020445497706532,-0.531495392322540,-0.438269257545471,-0.726838529109955,0.386452585458755,0.017097963020205,-0.059315193444490,-0.021985534578562,-0.052194692194462));
res += mul(Get(s0,0,dy), float4x4(-0.229881718754768,-0.384353786706924,0.192715451121330,0.051039628684521,-0.251282662153244,-0.057797811925411,0.031202135607600,-0.020575102418661,0.107164487242699,-0.094341151416302,0.418574124574661,0.236385434865952,0.023552874103189,-0.074866898357868,-0.101900137960911,0.152633443474770));
res += mul(Get(s0,dx,-dy), float4x4(-0.069765441119671,0.071135044097900,0.030550800263882,-0.070199199020863,0.194774642586708,-0.208031982183456,0.054120395332575,0.069756247103214,0.009757933206856,0.085352256894112,0.025932358577847,-0.062836349010468,-0.038375429809093,-0.023588137701154,0.010422270745039,0.177075713872910));
res += mul(Get(s0,dx,0), float4x4(-0.243914902210236,0.232631355524063,0.017788972705603,0.044964019209146,-0.042822994291782,0.066489942371845,0.023859990760684,0.095241799950600,0.036998160183430,-0.009118547663093,-0.017565930262208,0.104987658560276,0.149650961160660,0.005152384284884,-0.079894967377186,0.166601076722145));
res += mul(Get(s0,dx,dy), float4x4(0.132995799183846,0.010710226371884,0.057106740772724,0.038579903542995,-0.104299619793892,-0.045826345682144,0.038182456046343,0.176008790731430,0.012390873394907,-0.065292380750179,-0.110001116991043,-0.182965815067291,-0.076488628983498,-0.050422389060259,0.016143040731549,-0.055845528841019));
res += mul(Get(s1,-dx,-dy), float4x4(0.008035880513489,0.065635487437248,-0.028401991352439,-0.185413166880608,0.286758929491043,0.196942612528801,-0.038810074329376,-0.008449375629425,0.127074390649796,0.006924311630428,0.062600702047348,-0.007999961264431,0.099734850227833,-0.026070185005665,0.080608904361725,-0.104414589703083));
res += mul(Get(s1,-dx,0), float4x4(0.164043039083481,0.113962866365910,0.006624450907111,0.012575980275869,0.057851485908031,-0.180078893899918,0.225537911057472,-0.086401171982288,0.073842920362949,0.028974160552025,-0.045185353606939,-0.029962480068207,0.146605148911476,-0.016544129699469,0.140343129634857,-0.030549384653568));
res += mul(Get(s1,-dx,dy), float4x4(0.095534376800060,0.030020177364349,0.010131717659533,0.113679111003876,0.098240762948990,-0.081651814281940,0.141020119190216,-0.040144219994545,0.048525087535381,0.015252289362252,0.131423115730286,-0.059522371739149,0.115097865462303,-0.076561935245991,0.048824608325958,-0.091378390789032));
res += mul(Get(s1,0,-dy), float4x4(-0.315471053123474,-0.148757308721542,-0.154921695590019,0.069083310663700,-0.016249170526862,0.322369962930679,-0.107164599001408,0.077717550098896,-0.054663348942995,-0.131143048405647,-0.142203390598297,-0.083051666617393,-0.291983544826508,-0.144857093691826,-0.004066509660333,0.086623422801495));
res += mul(Get(s1,0,0), float4x4(0.126502066850662,-0.055563442409039,-0.036039080470800,0.021373219788074,0.217258781194687,-0.077470228075981,-0.162929370999336,0.297905772924423,0.028328364714980,0.013807410374284,-0.088133893907070,0.090830914676189,0.054072778671980,-0.138287737965584,0.223236799240112,-0.210946410894394));
res += mul(Get(s1,0,dy), float4x4(-0.030394941568375,0.077276639640331,-0.086600385606289,0.047403540462255,0.170487016439438,-0.170530289411545,0.230719238519669,-0.115635536611080,0.054128911346197,0.065061166882515,0.079176798462868,-0.039332393556833,-0.063065610826015,-0.094358175992966,0.146040856838226,-0.149676576256752));
res += mul(Get(s1,dx,-dy), float4x4(0.103462666273117,-0.107831150293350,-0.023607876151800,0.050371207296848,-0.066814862191677,0.185468807816505,-0.152674287557602,0.031729836016893,0.144878476858139,0.050964359194040,-0.008937587030232,0.126827433705330,0.017894485965371,0.051828034222126,-0.084803260862827,-0.068254560232162));
res += mul(Get(s1,dx,0), float4x4(0.048110295087099,0.000143664190546,0.037456315010786,0.001874955021776,0.128929361701012,-0.018243676051497,0.041432801634073,-0.011830335482955,-0.082142129540443,-0.247105076909065,-0.302080750465393,0.351394951343536,0.030936896800995,-0.030124550685287,0.054309524595737,-0.234510451555252));
res += mul(Get(s1,dx,dy), float4x4(-0.052412264049053,-0.220441371202469,-0.049201309680939,-0.214517593383789,0.023121370002627,-0.093676291406155,-0.028308397158980,0.022573856636882,-0.013413257896900,-0.114973835647106,0.063751287758350,0.078819140791893,0.137871116399765,0.104553192853928,0.037604879587889,0.008426385000348));
res += mul(Get(s2,-dx,-dy), float4x4(0.152476415038109,-0.176810756325722,0.019484693184495,-0.031280323863029,-0.143610715866089,0.080052398145199,0.048170324414968,-0.218259394168854,-0.047316811978817,-0.003190512536094,-0.102573096752167,0.107504598796368,0.099382840096951,0.030691709369421,-0.120614536106586,0.070795640349388));
res += mul(Get(s2,-dx,0), float4x4(0.034629009664059,-0.082004606723785,0.020590992644429,-0.076053313910961,0.063274316489697,-0.165516644716263,-0.020018883049488,0.038219057023525,-0.276087313890457,0.116204604506493,-0.202085003256798,0.054859682917595,-0.157579287886620,-0.037665385752916,-0.066138543188572,-0.209965720772743));
res += mul(Get(s2,-dx,dy), float4x4(0.138426870107651,-0.084642700850964,0.048259738832712,0.013352416455746,-0.028194900602102,0.061615087091923,0.000364482315490,-0.110895067453384,0.010893528349698,-0.100191265344620,-0.024841178208590,-0.081766322255135,0.021437643095851,0.024505794048309,-0.108862921595573,0.046619322150946));
res += mul(Get(s2,0,-dy), float4x4(0.173092603683472,-0.094829410314560,0.197968393564224,-0.207369744777679,0.072837248444557,0.266908913850784,0.068859495222569,-0.066708743572235,-0.123486280441284,0.294472396373749,-0.006213806569576,0.097958534955978,0.223229393362999,0.220609828829765,0.174965590238571,-0.029782537370920));
res += mul(Get(s2,0,0), float4x4(0.043846927583218,-0.041152618825436,-0.167253375053406,0.016588479280472,-0.007845435291529,0.132377162575722,0.077623106539249,0.015323389321566,-0.220462322235107,0.094900846481323,-0.108822435140610,0.117612354457378,-0.103699989616871,-0.200475320219994,-0.072421446442604,-0.121418565511703));
res += mul(Get(s2,0,dy), float4x4(0.106355771422386,0.137691617012024,-0.171867653727531,0.184038728475571,-0.104286894202232,-0.101910285651684,-0.091145977377892,-0.364181965589523,0.055551394820213,-0.152850031852722,0.051327608525753,0.134972512722015,0.050386946648359,0.193779632449150,0.117239624261856,0.032509237527847));
res += mul(Get(s2,dx,-dy), float4x4(0.122048683464527,0.047583833336830,0.023794464766979,0.036673359572887,-0.024943212047219,-0.007513507269323,0.027155842632055,-0.057718437165022,-0.035289529711008,0.044747956097126,-0.128241062164307,-0.001253067166544,0.022687355056405,-0.062934152781963,-0.027501821517944,-0.089287973940372));
res += mul(Get(s2,dx,0), float4x4(0.001830826164223,-0.009575771167874,0.017350107431412,0.012042216025293,-0.015244961716235,0.079867765307426,0.050390314310789,0.005894852336496,-0.053214080631733,0.051125016063452,-0.159921243786812,0.138818070292473,0.053107466548681,-0.078199945390224,0.102314002811909,0.136665537953377));
res += mul(Get(s2,dx,dy), float4x4(0.105131685733795,-0.017566552385688,0.019553136080503,-0.072689130902290,0.008650828152895,0.027912545949221,-0.040983352810144,-0.112119190394878,0.160257413983345,0.032794542610645,-0.157628878951073,0.239216923713684,-0.141588181257248,0.001734843594022,-0.193447172641754,-0.022647019475698));
res += mul(Get(s3,-dx,-dy), float4x4(0.158561304211617,0.108406782150269,0.024834996089339,-0.114053748548031,0.033797197043896,0.056790657341480,0.018810233101249,0.015551559627056,-0.420214027166367,-0.126418456435204,-0.028413226827979,0.001833423739299,0.208465144038200,-0.051722973585129,0.102443218231201,0.117310725152493));
res += mul(Get(s3,-dx,0), float4x4(-0.245312094688416,0.008001320064068,-0.106926307082176,0.009890964254737,-0.097033254802227,-0.008154854178429,0.126900568604469,-0.066550895571709,-0.457563221454620,0.180864900350571,-0.046768564730883,0.161360919475555,-0.021924911066890,0.091635189950466,-0.028776472434402,-0.260472834110260));
res += mul(Get(s3,-dx,dy), float4x4(-0.011771623045206,-0.079803831875324,0.110590443015099,-0.070494018495083,0.086295276880264,-0.030185194686055,-0.017107827588916,0.041877407580614,-0.009318081662059,0.042030043900013,-0.008331580087543,0.001118361367844,0.157384991645813,0.078804023563862,0.049213431775570,0.007273029070348));
res += mul(Get(s3,0,-dy), float4x4(0.080237239599228,0.272029608488083,0.097600117325783,-0.309270709753036,0.035501342266798,0.337955921888351,-0.071662954986095,-0.073482871055603,-0.543432652950287,-0.032231666147709,-0.019062094390392,0.127026706933975,0.137990862131119,-0.126468256115913,-0.173889949917793,0.125733479857445));
res += mul(Get(s3,0,0), float4x4(-0.295325785875320,-0.252997070550919,-0.378411591053009,0.028911082074046,-0.212102383375168,-0.326288282871246,-0.236540809273720,-0.090287178754807,-0.293305605649948,0.044956162571907,0.011039968580008,0.011553133837879,-0.035081475973129,-0.137393936514854,0.079854860901833,0.219880044460297));
res += mul(Get(s3,0,dy), float4x4(-0.052159413695335,0.013235623948276,-0.092587798833847,0.033300194889307,0.098649345338345,0.175639316439629,0.052428659051657,0.195773631334305,-0.147739633917809,0.218147993087769,-0.387698411941528,0.143293589353561,0.258853703737259,0.053040441125631,0.030919020995498,0.035979386419058));
res += mul(Get(s3,dx,-dy), float4x4(-0.191759079694748,0.062087256461382,0.062938854098320,0.037106715142727,0.201908573508263,0.050059340894222,-0.073577895760536,-0.000966719817370,-0.142392650246620,-0.026751909404993,-0.123267389833927,0.130845129489899,0.081001393496990,0.004912410862744,0.200917318463326,0.076516494154930));
res += mul(Get(s3,dx,0), float4x4(0.103142566978931,0.111535474658012,-0.069437548518181,0.471601724624634,0.024235280230641,-0.032464813441038,0.002081900835037,-0.012845030985773,-0.198566913604736,0.098981514573097,-0.112168319523335,0.046434476971626,0.076024740934372,-0.020250286906958,0.395435482263565,-0.020779455080628));
res += mul(Get(s3,dx,dy), float4x4(0.081885300576687,-0.025475710630417,0.091668114066124,0.008969141170382,0.136652424931526,-0.026934878900647,-0.072488337755203,0.072103872895241,-0.096880868077278,0.149050712585449,0.065986819565296,-0.031202653422952,0.125936642289162,0.041665468364954,0.064520008862019,-0.020381366834044));
res += mul(Get(s4,-dx,-dy), float4x4(-0.112022824585438,-0.018948329612613,0.006139181554317,0.025642162188888,0.037593979388475,-0.159991443157196,0.010531950742006,0.103090427815914,0.027800833806396,0.118886224925518,-0.042313057929277,0.010692859999835,0.079899728298187,-0.133560433983803,-0.020583974197507,0.185240864753723));
res += mul(Get(s4,-dx,0), float4x4(0.085140131413937,-0.101996287703514,-0.401651352643967,0.273623943328857,0.074480272829533,-0.086864307522774,0.234243050217628,-0.225866347551346,0.020794384181499,-0.081425398588181,-0.043376103043556,-0.085887521505356,-0.066810630261898,-0.161345928907394,-0.103255666792393,0.029115052893758));
res += mul(Get(s4,-dx,dy), float4x4(0.030182221904397,0.057139258831739,-0.112655982375145,0.136530667543411,-0.123483873903751,0.232266411185265,0.115664057433605,-0.027808863669634,-0.088500790297985,0.096472576260567,0.034529637545347,-0.056171555072069,0.022290205582976,0.191995784640312,-0.046342652291059,0.156691715121269));
res += mul(Get(s4,0,-dy), float4x4(0.067300453782082,0.092473603785038,-0.089683577418327,-0.049826443195343,0.100296266376972,0.089809164404869,-0.050321143120527,0.017596147954464,0.117296464741230,0.263614237308502,-0.033124424517155,-0.142177805304527,-0.174245640635490,0.094229206442833,0.102605231106281,-0.021439081057906));
res += mul(Get(s4,0,0), float4x4(-0.107659086585045,-0.090825155377388,0.235297933220863,-0.316648304462433,-0.150792315602303,0.089473217725754,0.074984878301620,-0.050699520856142,0.021056151017547,0.175470530986786,0.189518153667450,-0.704834878444672,0.197688415646553,-0.045625515282154,-0.059337776154280,0.198534592986107));
res += mul(Get(s4,0,dy), float4x4(-0.027113560587168,0.015376661904156,-0.057925809174776,-0.005353995598853,-0.042722921818495,0.015833120793104,-0.067273370921612,-0.046352665871382,-0.041039343923330,0.076318405568600,0.006109268870205,-0.081228412687778,-0.017330074682832,0.045224215835333,0.043068304657936,0.020907472819090));
res += mul(Get(s4,dx,-dy), float4x4(-0.092187479138374,-0.057789500802755,0.054464619606733,0.083604156970978,0.070169843733311,0.044440880417824,0.179553464055061,-0.103129059076309,-0.063849456608295,0.012089529074728,0.025239503011107,-0.051210101693869,0.146999627351761,0.097827456891537,0.045912820845842,-0.075634270906448));
res += mul(Get(s4,dx,0), float4x4(0.057685837149620,0.008293586783111,-0.029850535094738,0.274764060974121,-0.075130492448807,0.152204215526581,0.226823195815086,-0.194118082523346,0.063220366835594,0.081593848764896,-0.045974265784025,0.105071589350700,-0.116146676242352,-0.018350517377257,0.015418676659465,-0.148763626813889));
res += mul(Get(s4,dx,dy), float4x4(0.031744904816151,-0.033560033887625,0.071691893041134,-0.051367070525885,0.054723620414734,0.098794907331467,0.039735492318869,-0.082515448331833,0.064393714070320,0.056393969804049,-0.070810332894325,0.123506002128124,0.017273079603910,0.043551146984100,0.028709862381220,0.008052773773670));
res += mul(Get(s5,-dx,-dy), float4x4(0.054869350045919,-0.135712683200836,-0.091135866940022,-0.039107050746679,-0.023621607571840,-0.079352624714375,-0.037986680865288,-0.052541531622410,0.186563625931740,0.061290428042412,-0.005655213724822,-0.156976580619812,-0.083763986825943,0.014097740873694,-0.011847847141325,0.029961476102471));
res += mul(Get(s5,-dx,0), float4x4(-0.015321328304708,0.287559896707535,-0.157290473580360,0.268067061901093,0.086463242769241,-0.208476319909096,0.578771233558655,-0.062070444226265,0.041314482688904,0.165410175919533,-0.164916202425957,-0.050701174885035,-0.036968313157558,-0.050245527178049,0.082292854785919,-0.001016758033074));
res += mul(Get(s5,-dx,dy), float4x4(-0.016213113442063,0.012852606363595,-0.105575606226921,0.172949284315109,-0.015072968788445,0.269315868616104,-0.015408624894917,0.197636812925339,0.114592663943768,-0.101468876004219,0.019761251285672,-0.074896499514580,-0.002181412652135,0.036431785672903,0.032853402197361,-0.041125722229481));
res += mul(Get(s5,0,-dy), float4x4(-0.085413441061974,0.105512030422688,-0.031313311308622,0.110837690532207,-0.119801394641399,0.039759472012520,-0.011234157718718,0.051129028201103,0.037298195064068,-0.550851464271545,0.093341626226902,-0.022779082879424,-0.063123993575573,-0.054507944732904,-0.056936927139759,0.013284955173731));
res += mul(Get(s5,0,0), float4x4(0.119009755551815,-0.263653725385666,0.111404888331890,0.088125973939896,0.024722553789616,-0.281646400690079,0.052139632403851,-0.096772409975529,0.093775510787964,-0.150021061301231,0.220252498984337,-0.351491540670395,-0.090071424841881,-0.148308798670769,-0.047258481383324,-0.066189080476761));
res += mul(Get(s5,0,dy), float4x4(-0.056058689951897,0.052987471222878,0.072975866496563,-0.023303164169192,-0.003686685347930,0.201853036880493,0.036476302891970,0.253059238195419,0.149461194872856,-0.022300919517875,-0.106305412948132,0.224520266056061,-0.099658980965614,0.030405856668949,0.065785907208920,-0.032337784767151));
res += mul(Get(s5,dx,-dy), float4x4(0.149121731519699,0.024506328627467,-0.094480074942112,-0.006108515895903,-0.073476560413837,-0.050835888832808,0.059410952031612,0.046373132616282,0.060211069881916,0.005681136157364,0.048222929239273,0.004308360628784,0.117815636098385,-0.265138596296310,0.075851440429688,-0.077464409172535));
res += mul(Get(s5,dx,0), float4x4(-0.090471394360065,-0.193583011627197,-0.045774202793837,-0.282324403524399,0.097147114574909,0.186456695199013,0.042976383119822,0.162571251392365,0.024139342829585,-0.098623812198639,0.037392035126686,-0.158343821763992,-0.214601278305054,-0.163877785205841,0.241646453738213,-0.460101455450058));
res += mul(Get(s5,dx,dy), float4x4(-0.114629447460175,0.019528424367309,0.004799546208233,-0.132804825901985,-0.095502786338329,-0.053846314549446,0.095891043543816,-0.047441586852074,-0.014785679057240,-0.092159144580364,-0.123982325196266,-0.016965664923191,0.058810763061047,0.060796082019806,-0.038590688258410,0.011120124720037));
res = max(float4(0, 0, 0, 0), res) + float4(-0.023598637431860,0.088286302983761,0.186588034033775,-0.026228295639157) * min(float4(0, 0, 0, 0), res);
return res;
}