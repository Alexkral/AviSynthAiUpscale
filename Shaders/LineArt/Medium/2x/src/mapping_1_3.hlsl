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
float4 res = float4(0.163218498229980,-0.001899574766867,0.017275013029575,0.078521221876144);
res += mul(Get(s0,-dx,-dy), float4x4(0.001965694129467,-0.045875206589699,0.008994701318443,-0.057882480323315,-0.102674841880798,0.331896990537643,0.204504653811455,-0.015275289304554,0.023774283006787,-0.158465698361397,0.136456429958344,0.134058386087418,0.047590941190720,0.154236346483231,0.099673122167587,0.135820776224136));
res += mul(Get(s0,-dx,0), float4x4(0.038460478186607,0.011506177484989,0.058772888034582,0.104450285434723,-0.228466987609863,-0.238976567983627,-0.089933447539806,0.072764687240124,-0.030012736096978,0.004563958849758,-0.136905461549759,-0.214905738830566,-0.022636529058218,-0.043975427746773,0.057132598012686,0.039843384176493));
res += mul(Get(s0,-dx,dy), float4x4(0.091074980795383,0.060430448502302,-0.060948822647333,0.033134471625090,0.148304104804993,-0.107306629419327,-0.073101110756397,0.127840861678123,0.145591229200363,0.037459474056959,0.053516805171967,-0.004102880600840,0.056205622851849,0.048001658171415,-0.042523909360170,0.000050919887144));
res += mul(Get(s0,0,-dy), float4x4(-0.119214855134487,-0.138495683670044,0.019247505813837,-0.081387668848038,-0.046375140547752,-0.086406730115414,0.069775566458702,0.085962496697903,-0.059339292347431,0.292586296796799,0.333118885755539,0.226054638624191,-0.139154046773911,-0.450479477643967,-0.304419040679932,-0.214604020118713));
res += mul(Get(s0,0,0), float4x4(-0.073169104754925,-0.035927895456553,0.043204456567764,-0.029672162607312,0.103653497993946,0.102136999368668,0.290808439254761,0.109107717871666,-0.195656672120094,0.036762699484825,-0.076386794447899,-0.084316097199917,0.075240731239319,0.186252132058144,0.222859710454941,0.055127777159214));
res += mul(Get(s0,0,dy), float4x4(0.064597673714161,0.052814956754446,-0.043878797441721,-0.007263990119100,0.165911242365837,0.126961052417755,-0.253051787614822,-0.101767733693123,-0.079763352870941,-0.015903715044260,-0.117124252021313,-0.071424700319767,0.008027968928218,0.123853668570518,-0.061932582408190,0.028716802597046));
res += mul(Get(s0,dx,-dy), float4x4(-0.128992617130280,0.140078783035278,0.032579179853201,-0.051346041262150,0.004633330274373,0.031321465969086,0.009900720790029,-0.027207661420107,-0.005470962263644,-0.091577567160130,0.054864652454853,0.032606676220894,0.052135467529297,0.001429922995158,-0.042788673192263,-0.041806928813457));
res += mul(Get(s0,dx,0), float4x4(0.010780582204461,0.054262716323137,0.152173221111298,0.025331307202578,0.026952672749758,-0.160049855709076,-0.081988424062729,0.028536764904857,0.124291427433491,-0.204672321677208,-0.098001919686794,0.147231340408325,-0.071815691888332,0.146109715104103,-0.061639700084925,-0.125927969813347));
res += mul(Get(s0,dx,dy), float4x4(0.117909356951714,-0.107243962585926,-0.056510522961617,0.126593455672264,0.158235698938370,-0.067748673260212,0.029064293950796,-0.115562811493874,0.193131998181343,0.023732023313642,0.049094464629889,0.068044416606426,0.010646390728652,-0.121297396719456,0.119496956467628,0.063218742609024));
res += mul(Get(s1,-dx,-dy), float4x4(0.059959199279547,0.040656451135874,-0.162178888916969,-0.006556011270732,-0.098652899265289,0.017547747120261,0.036943223327398,-0.004471933003515,0.045344118028879,0.128596335649490,-0.053957149386406,-0.061802428215742,-0.039009507745504,-0.219234898686409,-0.056257955729961,0.038714550435543));
res += mul(Get(s1,-dx,0), float4x4(0.003539877943695,-0.045947670936584,-0.003950891550630,-0.137439116835594,-0.049646709114313,0.393088728189468,-0.023728096857667,0.014733335003257,-0.093106091022491,-0.268097281455994,-0.108139485120773,-0.073289737105370,-0.084655888378620,0.184610709547997,-0.000302849977743,-0.184823229908943));
res += mul(Get(s1,-dx,dy), float4x4(0.141256928443909,0.022458909079432,0.081445053219795,0.052622918039560,0.111791960895061,-0.128837332129478,-0.037379764020443,0.106277391314507,-0.138115718960762,0.136781498789787,0.115016259253025,0.082080557942390,-0.067342340946198,-0.065080523490906,0.027175283059478,0.109306469559669));
res += mul(Get(s1,0,-dy), float4x4(0.016399867832661,-0.125227302312851,0.013530802913010,0.236014947295189,-0.070733845233917,0.026445629075170,0.305038779973984,0.071704708039761,-0.003852203255519,-0.085384406149387,-0.491731852293015,-0.126091286540031,-0.135171607136726,0.162148565053940,0.125247478485107,0.280537843704224));
res += mul(Get(s1,0,0), float4x4(0.044228233397007,-0.245352208614349,-0.157449677586555,-0.177166789770126,-0.063049778342247,-0.199848398566246,-0.228742480278015,-0.018479144200683,0.290643215179443,0.084440127015114,0.524153769016266,0.004766708239913,0.018303485587239,-0.151369646191597,-0.035910923033953,-0.046491503715515));
res += mul(Get(s1,0,dy), float4x4(0.007487564813346,0.193509981036186,0.091500237584114,0.001618301845156,0.046233806759119,-0.159787505865097,-0.037533096969128,-0.238376602530479,-0.207008451223373,0.176853269338608,0.017893157899380,0.095524631440639,-0.296239048242569,-0.164110168814659,-0.079356849193573,-0.087177298963070));
res += mul(Get(s1,dx,-dy), float4x4(-0.056182511150837,-0.079388648271561,0.068203508853912,0.055775512009859,0.007292251102626,-0.090573392808437,0.041811671108007,0.112282760441303,-0.084024466574192,0.037324212491512,-0.193321168422699,-0.187789976596832,0.182176336646080,-0.063640832901001,-0.073094151914120,0.082466006278992));
res += mul(Get(s1,dx,0), float4x4(-0.036184243857861,0.107677675783634,-0.059923488646746,-0.011871091090143,-0.015548283234239,-0.053039029240608,-0.049472030252218,0.066946342587471,-0.080169148743153,0.011758745647967,0.209160223603249,0.166660219430923,0.034163039177656,-0.016766710206866,0.017929242923856,0.077870100736618));
res += mul(Get(s1,dx,dy), float4x4(-0.045419320464134,0.097553707659245,-0.006499169860035,0.044916283339262,-0.006563979201019,0.047381721436977,-0.041146043688059,-0.125589743256569,0.178521022200584,-0.223523020744324,-0.015591948293149,0.207820147275925,-0.050813149660826,0.234386458992958,0.019512709230185,-0.226261168718338));
res += mul(Get(s2,-dx,-dy), float4x4(-0.140679791569710,-0.235140398144722,-0.043130557984114,0.011913661845028,0.113593272864819,-0.026731103658676,0.013773919083178,0.075031191110611,0.178038462996483,0.321990072727203,0.028030635789037,0.052114866673946,0.155009031295776,-0.234670683741570,-0.082391947507858,-0.109456367790699));
res += mul(Get(s2,-dx,0), float4x4(-0.107534095644951,0.179465174674988,0.112417824566364,-0.083352021872997,0.234595715999603,-0.270638585090637,-0.164478391408920,0.040256816893816,0.104469992220402,-0.453666418790817,-0.044824823737144,0.079665705561638,0.082085952162743,-0.033526565879583,-0.063246920704842,-0.059236969798803));
res += mul(Get(s2,-dx,dy), float4x4(-0.097703114151955,0.259729743003845,0.017032774165273,0.008243935182691,-0.073328331112862,-0.081792026758194,-0.013696713373065,-0.033537067472935,0.000255227903835,0.020371479913592,-0.020595112815499,-0.013246552087367,0.167584598064423,0.034654617309570,0.058131400495768,0.183607205748558));
res += mul(Get(s2,0,-dy), float4x4(0.051506940275431,-0.004669792018831,0.092151835560799,0.096984855830669,0.060699146240950,-0.146668836474419,0.013904438354075,-0.056772086769342,-0.003653537249193,0.002658646553755,-0.017865722998977,0.156867295503616,-0.078525319695473,-0.176993310451508,0.163884237408638,0.031955402344465));
res += mul(Get(s2,0,0), float4x4(-0.024450829252601,0.234828561544418,0.036328397691250,-0.262570708990097,0.209221005439758,0.242739036679268,0.349099218845367,0.040924333035946,-0.101427160203457,-0.305187910795212,0.123345769941807,-0.008182314224541,0.041272748261690,-0.143193691968918,0.018336899578571,-0.098449058830738));
res += mul(Get(s2,0,dy), float4x4(0.091808982193470,-0.085428647696972,-0.008418123237789,0.109982013702393,-0.230992391705513,0.266196161508560,-0.165889665484428,-0.006573261693120,-0.268784075975418,0.194797709584236,-0.076050467789173,-0.105602309107780,0.007396005094051,0.025787856429815,-0.044938553124666,-0.034511018544436));
res += mul(Get(s2,dx,-dy), float4x4(-0.094618506729603,-0.038684532046318,0.030658129602671,-0.024841129779816,-0.088592357933521,-0.141277000308037,0.181253522634506,0.085813656449318,-0.070924952626228,0.089675277471542,-0.111630976200104,-0.041892178356647,0.109977647662163,-0.095182478427887,0.113877594470978,0.124503642320633));
res += mul(Get(s2,dx,0), float4x4(-0.038467504084110,0.051411606371403,-0.075617931783199,0.085240542888641,-0.228538364171982,0.128886550664902,0.050482578575611,0.015046702697873,0.095625534653664,-0.045739050954580,0.111242577433586,-0.080324500799179,-0.006888343021274,0.015881052240729,0.130638018250465,-0.066065259277821));
res += mul(Get(s2,dx,dy), float4x4(-0.037579637020826,-0.000020702636903,0.030331127345562,-0.094971477985382,-0.068624295294285,-0.095216192305088,-0.106804184615612,0.056815683841705,-0.035990860313177,-0.057808443903923,-0.007171690464020,0.179688125848770,0.176062777638435,0.101555757224560,-0.018940148875117,-0.033458944410086));
res += mul(Get(s3,-dx,-dy), float4x4(0.012574567459524,0.033376343548298,-0.014648369513452,-0.034792028367519,0.216261252760887,-0.133895948529243,-0.002090467838570,-0.020475832745433,-0.034649793058634,0.037192627787590,-0.021362258121371,-0.016830790787935,0.147822335362434,-0.155257776379585,-0.119415394961834,0.001364136580378));
res += mul(Get(s3,-dx,0), float4x4(0.129975542426109,0.303145527839661,0.176093161106110,0.002464774530381,-0.004459861665964,-0.013019817881286,0.045545261353254,0.014737809076905,0.039998088032007,-0.063503235578537,0.017025560140610,0.028063405305147,0.186416164040565,-0.072712615132332,-0.064014218747616,0.011906010098755));
res += mul(Get(s3,-dx,dy), float4x4(0.102390073239803,-0.141350820660591,-0.004995797760785,0.029117064550519,0.073272690176964,-0.016351679340005,-0.074915409088135,-0.002859552856535,0.051922824233770,0.023795658722520,0.023997278884053,-0.042154006659985,0.080708868801594,-0.033459413796663,-0.029153121635318,-0.024992110207677));
res += mul(Get(s3,0,-dy), float4x4(0.042114712297916,-0.421087414026260,-0.144444391131401,0.007152297999710,-0.024518379941583,0.084709510207176,0.068713292479515,0.005039543379098,-0.002033227123320,0.029177142307162,-0.192424371838570,-0.036480717360973,0.192121118307114,-0.015137852169573,0.093418911099434,0.194572925567627));
res += mul(Get(s3,0,0), float4x4(0.145259007811546,0.106542222201824,-0.141459211707115,-0.087419711053371,-0.077712014317513,0.093646198511124,0.154831126332283,0.033819485455751,0.243994027376175,0.012823730707169,0.049758139997721,0.065601311624050,0.074060484766960,0.284305095672607,0.142896860837936,0.070929713547230));
res += mul(Get(s3,0,dy), float4x4(-0.052759405225515,-0.096972718834877,0.026523079723120,0.056665685027838,-0.049202814698219,-0.059312168508768,-0.167228385806084,-0.024462856352329,0.001772781135514,-0.068885736167431,0.051883321255445,-0.004033094272017,0.200129091739655,0.061216596513987,0.018308082595468,-0.236182615160942));
res += mul(Get(s3,dx,-dy), float4x4(-0.119635917246342,0.101877257227898,-0.050810933113098,0.103194586932659,0.104122318327427,-0.013452719897032,0.007856836542487,0.029765577986836,-0.074766583740711,-0.075522623956203,-0.090509824454784,0.037144709378481,-0.005897903349251,0.017296424135566,0.035678178071976,0.347957402467728));
res += mul(Get(s3,dx,0), float4x4(-0.264395564794540,0.024175975471735,-0.127919390797615,-0.161708042025566,0.017686856910586,-0.022170353680849,-0.115998856723309,-0.094470657408237,0.038445834070444,-0.006912588141859,0.023295715451241,-0.222361236810684,-0.129519909620285,-0.023130722343922,-0.122775711119175,-0.211176708340645));
res += mul(Get(s3,dx,dy), float4x4(-0.010767629370093,-0.044416557997465,-0.015722375363111,-0.074038028717041,-0.006569620687515,0.051438324153423,0.107590749859810,0.021984348073602,-0.056207600980997,-0.041947279125452,0.159835606813431,-0.081023409962654,-0.212676420807838,-0.083188816905022,-0.109802752733231,-0.191979169845581));
res += mul(Get(s4,-dx,-dy), float4x4(-0.038398154079914,-0.102713659405708,0.147483199834824,-0.063732601702213,-0.006718834862113,0.109051644802094,0.022948855534196,-0.044361602514982,-0.034697446972132,0.141003176569939,0.096036992967129,0.030819930136204,-0.068693794310093,0.050365451723337,-0.407417267560959,-0.001838056952693));
res += mul(Get(s4,-dx,0), float4x4(0.011156897991896,0.143367171287537,-0.086883105337620,-0.204669967293739,-0.042674165219069,-0.166646972298622,0.112592995166779,-0.066825322806835,0.010599325411022,0.184315040707588,-0.028114071115851,0.054428245872259,0.148721143603325,-0.019164871424437,0.151969954371452,0.060255926102400));
res += mul(Get(s4,-dx,dy), float4x4(-0.024758951738477,0.130565822124481,0.077926099300385,0.101944141089916,0.050802148878574,-0.133689671754837,-0.058329332619905,-0.142460361123085,0.027761152014136,-0.103242374956608,0.010404290631413,-0.025879852473736,0.158794298768044,-0.031411662697792,0.008584841154516,-0.030099907889962));
res += mul(Get(s4,0,-dy), float4x4(0.096160925924778,0.071284674108028,0.031940281391144,-0.017444636672735,0.023140039294958,-0.028493123129010,-0.259674310684204,0.252794057130814,0.046251665800810,0.091794066131115,0.053810846060514,-0.026448259130120,0.097406134009361,0.042220514267683,-0.009938725270331,0.084829688072205));
res += mul(Get(s4,0,0), float4x4(0.092302970588207,-0.026908177882433,0.004450099077076,-0.001687251264229,-0.219530537724495,0.250378131866455,0.701082408428192,-0.007512759417295,-0.079615801572800,-0.082515403628349,-0.142476037144661,-0.043118003755808,0.026628639549017,0.022479314357042,0.013799367472529,-0.114633291959763));
res += mul(Get(s4,0,dy), float4x4(-0.096629694104195,-0.122788690030575,-0.048672523349524,-0.059739872813225,0.002775976201519,0.355975389480591,0.103985935449600,-0.088395312428474,0.159541919827461,-0.247090652585030,0.058434039354324,-0.003480032319203,0.069525353610516,-0.088486574590206,0.048290897160769,0.007018369622529));
res += mul(Get(s4,dx,-dy), float4x4(0.090665616095066,0.018722513690591,-0.008135043084621,-0.054782327264547,-0.102431662380695,-0.098319262266159,0.017392205074430,-0.021830275654793,0.064419157803059,-0.250756144523621,-0.056750874966383,0.026813136413693,0.055796101689339,-0.050404936075211,-0.024527410045266,0.161969453096390));
res += mul(Get(s4,dx,0), float4x4(-0.088000878691673,-0.159609094262123,-0.057683676481247,-0.008494980633259,-0.250527530908585,-0.013135318644345,0.060149252414703,-0.048435509204865,0.209338888525963,-0.044936377555132,0.037466030567884,-0.035992875695229,0.032111003994942,0.002919062506407,-0.002060657599941,-0.011762567795813));
res += mul(Get(s4,dx,dy), float4x4(-0.093692950904369,0.099519044160843,0.052429217845201,0.066103123128414,0.020001636818051,-0.262559592723846,-0.003827487817034,-0.184978947043419,-0.054679408669472,0.206216260790825,-0.030711861327291,-0.030995229259133,0.026952637359500,0.046863052994013,-0.012173483148217,0.076326705515385));
res += mul(Get(s5,-dx,-dy), float4x4(0.135261401534081,-0.336816012859344,-0.051681771874428,-0.096505187451839,0.119404241442680,-0.025051493197680,-0.043048504740000,-0.040724307298660,0.107294760644436,-0.120763011276722,-0.050471048802137,-0.028121229261160,0.112276189029217,-0.102804146707058,-0.201453059911728,-0.065547347068787));
res += mul(Get(s5,-dx,0), float4x4(-0.057443074882030,0.312611192464828,-0.034383371472359,-0.027649477124214,0.051164146512747,0.157646402716637,0.025504430755973,-0.064630255103111,0.035037674009800,0.117689102888107,0.032671790570021,-0.027565095573664,0.158395528793335,-0.210267871618271,0.184471577405930,0.036981068551540));
res += mul(Get(s5,-dx,dy), float4x4(0.218038722872734,-0.075516507029533,0.054013572633266,0.004846966825426,-0.020525705069304,-0.195703998208046,0.025416828691959,-0.030370978638530,-0.061874344944954,0.072943270206451,0.005037845112383,0.074011109769344,0.011682315729558,-0.079240925610065,0.065642461180687,0.107804045081139));
res += mul(Get(s5,0,-dy), float4x4(0.048512127250433,0.103381402790546,0.236466988921165,0.158411517739296,-0.084644049406052,0.094727881252766,-0.012018061242998,0.070703901350498,-0.053012751042843,0.348145484924316,0.275672048330307,0.207212939858437,0.197147920727730,-0.095810934901237,-0.322685271501541,-0.204444184899330));
res += mul(Get(s5,0,0), float4x4(-0.176386117935181,-0.038089126348495,-0.233432963490486,-0.137540802359581,-0.147525995969772,-0.166747763752937,-0.362716078758240,0.003797930898145,0.042137645184994,-0.055682875216007,-0.100737370550632,-0.142838805913925,0.135164842009544,0.119342513382435,0.273753076791763,0.105773590505123));
res += mul(Get(s5,0,dy), float4x4(0.087429344654083,-0.149174079298973,0.072354428470135,-0.023611333221197,-0.160964205861092,0.071136318147182,0.356210529804230,-0.221461638808250,0.114699661731720,-0.078843005001545,-0.200576469302177,-0.113777190446854,0.113764733076096,0.150519549846649,0.148077979683876,0.108605340123177));
res += mul(Get(s5,dx,-dy), float4x4(0.039440907537937,-0.189340800046921,0.026557123288512,0.034022942185402,0.067591376602650,0.045958776026964,-0.034967288374901,0.105812594294548,0.003518283134326,0.155660867691040,-0.166436895728111,0.079817533493042,0.164454221725464,-0.033571965992451,-0.311852663755417,-0.077843658626080));
res += mul(Get(s5,dx,0), float4x4(0.001833135960624,0.010997010394931,-0.003430865472183,0.008020859211683,-0.203188478946686,0.022202039137483,0.134164065122604,-0.072354741394520,0.124258451163769,0.044598475098610,0.094897106289864,-0.146985307335854,0.138378232717514,0.171237662434578,0.205806642770767,0.090109974145889));
res += mul(Get(s5,dx,dy), float4x4(-0.110481768846512,0.275235116481781,-0.109645240008831,0.002582398941740,-0.081805609166622,-0.009183872491121,-0.003052616724744,-0.286353468894958,-0.189711585640907,-0.163403451442719,-0.002198912901804,0.024883000180125,0.094313964247704,-0.067275002598763,0.115188360214233,0.153157785534859));
res = max(float4(0, 0, 0, 0), res) + float4(0.363515287637711,-0.412801891565323,-0.568819224834442,-0.318431198596954) * min(float4(0, 0, 0, 0), res);
return res;
}
