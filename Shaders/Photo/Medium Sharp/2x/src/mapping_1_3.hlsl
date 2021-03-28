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
float4 res = float4(-0.283088266849518,-0.651186048984528,0.002880410989746,-0.031437203288078);
res += mul(Get(s0,-dx,-dy), float4x4(0.058523178100586,0.002378694945946,-0.032696805894375,-0.027853354811668,-0.223432824015617,-0.114574633538723,0.019745321944356,0.098422862589359,-0.127445891499519,0.053200270980597,0.004867542535067,0.102278627455235,-0.035479664802551,0.042433340102434,0.074395902454853,-0.098107427358627));
res += mul(Get(s0,-dx,0), float4x4(0.059259012341499,0.049661781638861,0.131827056407928,0.060048703104258,-0.092186778783798,-0.117411203682423,-0.081951744854450,-0.024679940193892,0.089180946350098,0.162686154246330,-0.057387363165617,-0.120554566383362,0.000325845321640,0.027816964313388,-0.045321635901928,-0.230943933129311));
res += mul(Get(s0,-dx,dy), float4x4(-0.091756969690323,-0.126906648278236,0.013912562280893,-0.015856035053730,-0.029877526685596,-0.041174661368132,-0.031690604984760,-0.065778329968452,0.006756340619177,0.115818493068218,-0.144226968288422,-0.007015191949904,-0.112848766148090,-0.002287737559527,-0.032466825097799,-0.141894057393074));
res += mul(Get(s0,0,-dy), float4x4(-0.083363808691502,0.227237999439240,0.007989291101694,-0.086517192423344,-0.177460566163063,-0.083370015025139,0.322391033172607,-0.055096860975027,-0.082662500441074,0.031094528734684,-0.109881125390530,0.245196223258972,0.074412450194359,0.033846292644739,-0.017737288028002,-0.042289875447750));
res += mul(Get(s0,0,0), float4x4(0.079648762941360,0.007175107020885,-0.096867062151432,-0.239685252308846,-0.152944341301918,-0.307322293519974,-0.102971754968166,-0.279152482748032,0.050684094429016,0.136467427015305,0.017268028110266,-0.166896954178810,0.064331047236919,0.024997798725963,-0.122495830059052,-0.062579177320004));
res += mul(Get(s0,0,dy), float4x4(-0.019240271300077,-0.265931278467178,0.007705788128078,0.042435251176357,-0.104588389396667,-0.054919883608818,-0.011761373840272,0.003154435195029,-0.018224395811558,0.101913705468178,0.012074392288923,-0.011943387798965,0.048317495733500,0.105078227818012,0.035224258899689,-0.055012505501509));
res += mul(Get(s0,dx,-dy), float4x4(0.002513315994292,-0.032771214842796,-0.084404252469540,-0.073417335748672,-0.190768465399742,0.001833700342104,0.062291279435158,-0.003438197774813,0.005674287211150,0.090581007301807,-0.113517709076405,0.049518492072821,-0.038122680038214,0.138100296258926,0.091897413134575,0.118453897535801));
res += mul(Get(s0,dx,0), float4x4(-0.071120120584965,-0.068540066480637,0.021918503567576,0.102022878825665,-0.170663699507713,-0.010195890441537,-0.116029530763626,-0.025497481226921,0.194969013333321,0.120459735393524,0.056528650224209,0.104586817324162,0.010872459970415,0.000732031534426,-0.005347750615329,0.061145905405283));
res += mul(Get(s0,dx,dy), float4x4(-0.117142923176289,-0.369941323995590,0.024601142853498,0.042340133339167,-0.136077627539635,0.038005236536264,-0.061908155679703,-0.053994640707970,-0.000963947852142,0.118229880928993,-0.031535744667053,-0.003351663006470,0.069094300270081,-0.019904334098101,0.059324745088816,0.010146395303309));
res += mul(Get(s1,-dx,-dy), float4x4(-0.194805577397346,0.015216092579067,-0.057744197547436,-0.041460178792477,-0.046441800892353,0.015154032967985,-0.008833223022521,0.010181657969952,-0.094620935618877,0.036500446498394,-0.205138564109802,-0.062192019075155,-0.013708557933569,0.002962710335851,0.021329358220100,-0.037106841802597));
res += mul(Get(s1,-dx,0), float4x4(0.280265241861343,0.073894925415516,-0.065651200711727,-0.067857258021832,-0.027317216619849,-0.062952831387520,0.076269321143627,-0.164031058549881,0.186310961842537,0.030645862221718,0.133820861577988,-0.073533296585083,-0.013335479423404,-0.016955276951194,-0.000219755238504,0.021761445328593));
res += mul(Get(s1,-dx,dy), float4x4(-0.107122413814068,0.117258585989475,-0.050312787294388,-0.083586864173412,-0.076487615704536,0.015887128189206,0.016063511371613,-0.003513466101140,-0.091026932001114,-0.152609080076218,0.037153318524361,-0.064437068998814,-0.004737685900182,0.032993469387293,0.054132036864758,0.011359807103872));
res += mul(Get(s1,0,-dy), float4x4(0.052189718931913,-0.008257037028670,0.382107645273209,0.069535754621029,-0.005129633471370,-0.017821270972490,-0.150587603449821,-0.265531122684479,-0.074004285037518,0.024057846516371,-0.022072227671742,0.117705300450325,-0.069425940513611,-0.074017368257046,0.015509385615587,0.002841158071533));
res += mul(Get(s1,0,0), float4x4(-0.222916200757027,-0.413572311401367,-0.028116187080741,-0.192216411232948,-0.030633198097348,-0.036659896373749,0.045058339834213,0.030150527134538,0.025119539350271,-0.308922559022903,0.040801528841257,-0.025635134428740,-0.190981402993202,-0.032841101288795,-0.096146270632744,0.119142338633537));
res += mul(Get(s1,0,dy), float4x4(-0.019952515140176,0.049855314195156,-0.089020483195782,-0.066853821277618,-0.111621811985970,0.061233352869749,-0.083571404218674,-0.062906660139561,-0.101418308913708,0.241761445999146,0.115997388958931,0.012467743828893,-0.045124679803848,0.104613110423088,0.002443597186357,0.116930715739727));
res += mul(Get(s1,dx,-dy), float4x4(0.036926466971636,0.034032221883535,-0.143712535500526,0.293087184429169,-0.027298057451844,0.061173729598522,0.001680746092461,-0.027479814365506,-0.016177840530872,-0.005551925860345,0.110861375927925,0.001237742137164,-0.040767543017864,-0.165765061974525,-0.042242337018251,0.031733151525259));
res += mul(Get(s1,dx,0), float4x4(-0.006629456300288,0.135084584355354,-0.151279807090759,0.067122876644135,-0.046072140336037,-0.092146269977093,0.005021069664508,-0.128377199172974,-0.011495391838253,0.094503730535507,-0.116114400327206,0.090429149568081,-0.138584628701210,-0.230906620621681,-0.025571200996637,0.172638416290283));
res += mul(Get(s1,dx,dy), float4x4(0.107505656778812,0.069510184228420,-0.159280911087990,0.059926692396402,-0.068860568106174,0.057831071317196,-0.038501549512148,-0.042148701846600,0.060077812522650,0.123236879706383,0.074927352368832,-0.152386546134949,-0.061697926372290,-0.102447770535946,0.043661285191774,-0.091722294688225));
res += mul(Get(s2,-dx,-dy), float4x4(0.143842652440071,0.063730135560036,0.014934653416276,-0.076214760541916,-0.091804459691048,-0.193629086017609,-0.028943186625838,0.015874838456511,0.113849729299545,0.126931264996529,0.238640621304512,0.177795723080635,-0.202875405550003,0.012527246959507,0.146133884787560,0.195049509406090));
res += mul(Get(s2,-dx,0), float4x4(0.010470704175532,-0.097798198461533,-0.080265946686268,-0.037388321012259,-0.168508678674698,-0.124663345515728,0.014090699143708,0.096388906240463,-0.046557251363993,-0.155576348304749,-0.072655610740185,-0.100933991372585,0.235334381461143,-0.167203858494759,-0.247043341398239,0.093482926487923));
res += mul(Get(s2,-dx,dy), float4x4(0.030817206948996,0.130688309669495,-0.064598813652992,0.272228330373764,-0.040415383875370,-0.204247102141380,0.042191423475742,0.013581249862909,-0.014632652513683,0.253107637166977,0.007032909896225,-0.133434608578682,-0.037395216524601,0.127241626381874,0.125782579183578,0.101333126425743));
res += mul(Get(s2,0,-dy), float4x4(0.118935301899910,-0.001076912390999,-0.149686485528946,-0.015542176552117,0.054638817906380,-0.044573880732059,0.134635239839554,0.022888423874974,-0.017148280516267,-0.156576082110405,0.025855401530862,-0.026126014068723,-0.112955115735531,0.176276087760925,0.091154001653194,0.054922949522734));
res += mul(Get(s2,0,0), float4x4(0.056683789938688,0.052211284637451,-0.013334259390831,0.083280026912689,-0.031653624027967,0.022524368017912,-0.051625497639179,0.053429145365953,-0.153767839074135,-0.264733225107193,-0.036587469279766,0.050340265035629,0.033321347087622,-0.270383745431900,-0.040232207626104,0.128955945372581));
res += mul(Get(s2,0,dy), float4x4(-0.001881230506115,0.108862861990929,-0.059876460582018,-0.050039909780025,0.122676759958267,-0.045138750225306,0.105599306523800,0.017537359148264,0.041471328586340,0.025285968557000,0.015843832865357,0.051975782960653,-0.101219698786736,0.032825592905283,-0.091548614203930,-0.238456293940544));
res += mul(Get(s2,dx,-dy), float4x4(-0.125438198447227,0.104018270969391,0.025391843169928,0.061763055622578,0.062779210507870,0.099393151700497,-0.051572233438492,-0.003872910514474,0.074626326560974,0.092436820268631,-0.107879012823105,-0.059605203568935,-0.017951413989067,0.082280524075031,0.187983125448227,0.004105097614229));
res += mul(Get(s2,dx,0), float4x4(-0.033819504082203,-0.100537814199924,0.022887440398335,-0.056279789656401,0.016574941575527,0.081347934901714,-0.143465489149094,0.017633855342865,-0.142337724566460,0.152327820658684,-0.102790720760822,-0.081346951425076,-0.022410677745938,-0.029898973181844,-0.096949212253094,0.020601926371455));
res += mul(Get(s2,dx,dy), float4x4(0.011730848811567,0.087885454297066,0.156645104289055,0.040669020265341,0.042216200381517,-0.008153296075761,-0.055806275457144,-0.031626854091883,0.211565077304840,-0.070285409688950,0.031902033835649,0.004803830292076,0.054836690425873,0.100279957056046,0.051911294460297,0.064874030649662));
res += mul(Get(s3,-dx,-dy), float4x4(-0.079707026481628,-0.002265469636768,-0.010599928908050,0.077630877494812,-0.082138560712337,0.062325801700354,-0.092322595417500,0.016624066978693,-0.210594907402992,-0.337193876504898,0.098510429263115,-0.021187305450439,-0.119276851415634,-0.016084110364318,-0.023893175646663,-0.063732936978340));
res += mul(Get(s3,-dx,0), float4x4(-0.050651524215937,-0.075344286859035,-0.071531437337399,-0.109080925583839,0.172231286764145,0.311271935701370,-0.106690376996994,0.034003429114819,-0.089274376630783,-0.247389942407608,-0.182408809661865,-0.075862281024456,0.211565688252449,-0.053893048316240,0.009057818911970,-0.068666242063046));
res += mul(Get(s3,-dx,dy), float4x4(-0.124883577227592,-0.144005686044693,-0.028027562424541,-0.032050304114819,0.013017011806369,0.122932679951191,-0.006963456980884,-0.239652052521706,0.080336809158325,-0.150018781423569,-0.078049778938293,0.131067767739296,-0.218215718865395,0.167288780212402,0.055969242006540,-0.129358142614365));
res += mul(Get(s3,0,-dy), float4x4(-0.066211462020874,-0.105491943657398,0.042473416775465,0.015181313268840,-0.066591195762157,-0.229334473609924,0.070246882736683,0.003716763574630,-0.005455329082906,0.090747214853764,-0.088982053101063,-0.067456603050232,0.007080059032887,-0.026683190837502,0.131464660167694,-0.023814020678401));
res += mul(Get(s3,0,0), float4x4(-0.062946848571301,0.018540252000093,0.048409268260002,-0.022146178409457,-0.017240019515157,-0.279187858104706,-0.048288580030203,0.183458313345909,-0.015019665472209,0.416922360658646,0.060105372220278,0.003193169366568,-0.233613580465317,-0.185884207487106,0.021610112860799,-0.074777819216251));
res += mul(Get(s3,0,dy), float4x4(-0.158154815435410,-0.279854446649551,-0.140122383832932,-0.080953225493431,-0.083329290151596,-0.029854597523808,-0.136525943875313,-0.106614239513874,0.171637102961540,-0.034897573292255,0.052005052566528,-0.211602568626404,0.225912421941757,-0.043471757322550,-0.029701862484217,0.325167447328568));
res += mul(Get(s3,dx,-dy), float4x4(-0.009500260464847,0.029683107510209,-0.032174263149500,0.098425485193729,-0.011059416458011,0.019889757037163,-0.030233159661293,0.109143853187561,-0.193194746971130,-0.036089085042477,-0.222794413566589,-0.068521648645401,0.015884062275290,-0.013073590584099,-0.075070582330227,0.046752240508795));
res += mul(Get(s3,dx,0), float4x4(0.040206879377365,-0.110842615365982,-0.058962840586901,-0.056652612984180,0.000807639677078,-0.025601271539927,0.054200746119022,0.136225268244743,-0.163532778620720,0.409926533699036,-0.083339035511017,-0.019818494096398,0.145085111260414,0.194246351718903,0.140041261911392,-0.018343549221754));
res += mul(Get(s3,dx,dy), float4x4(-0.190167590975761,-0.304307788610458,-0.108380645513535,-0.055554036051035,0.060156658291817,0.019894946366549,-0.114201642572880,-0.076833538711071,-0.036004126071930,-0.076728835701942,-0.072402633726597,-0.147181421518326,-0.087802946567535,0.035223931074142,-0.217200413346291,-0.050668947398663));
res += mul(Get(s4,-dx,-dy), float4x4(-0.276033878326416,-0.025675410404801,-0.301078975200653,0.017511513084173,-0.225054144859314,0.001662806957029,0.089164920151234,-0.013713832944632,0.004308774136007,0.028715198859572,-0.116305351257324,-0.121290646493435,-0.075468756258488,0.078437626361847,0.238722309470177,0.064121164381504));
res += mul(Get(s4,-dx,0), float4x4(0.242543369531631,0.295016646385193,-0.139865338802338,-0.002404995961115,0.124148987233639,-0.169189453125000,0.078525789082050,-0.171516373753548,0.059524245560169,0.089454427361488,-0.037673395127058,0.049871634691954,-0.036492083221674,-0.030940731987357,-0.208794325590134,-0.201499432325363));
res += mul(Get(s4,-dx,dy), float4x4(-0.079232074320316,-0.165510252118111,0.008632731623948,-0.041357949376106,-0.038521997630596,-0.051105670630932,-0.168197661638260,-0.114809207618237,-0.052693121135235,0.005614147055894,0.040278516709805,0.101942069828510,-0.021226316690445,0.010082149878144,0.009262496605515,0.438065528869629));
res += mul(Get(s4,0,-dy), float4x4(0.112324863672256,0.193632140755653,0.376720845699310,-0.027345404028893,-0.078118130564690,0.128876760601997,0.027171356603503,0.118412278592587,0.078244186937809,-0.064958371222019,0.217113196849823,0.005428045056760,-0.063919223845005,-0.100606575608253,0.203336551785469,0.002018370432779));
res += mul(Get(s4,0,0), float4x4(-0.303484499454498,-0.467960566282272,0.032297451049089,0.086674794554710,0.231138125061989,-0.037160757929087,-0.052912726998329,-0.019946306943893,-0.027326783165336,0.003144133370370,-0.101477406919003,-0.001032275613397,-0.055235352367163,0.003617440583184,-0.020196286961436,-0.094646431505680));
res += mul(Get(s4,0,dy), float4x4(0.136935681104660,0.020766202360392,0.029842266812921,0.263092070817947,-0.210747078061104,-0.069861985743046,0.033702418208122,0.151701733469963,0.138933047652245,0.017198139801621,-0.080104045569897,-0.211615428328514,-0.080024503171444,-0.020835399627686,0.127688691020012,-0.046907689422369));
res += mul(Get(s4,dx,-dy), float4x4(0.053248316049576,-0.277679085731506,-0.132964432239532,0.104138128459454,-0.020877024158835,-0.079848632216454,0.054802007973194,0.069670625030994,0.005762777291238,-0.027752466499805,-0.074551545083523,0.075624428689480,-0.091594755649567,0.048481207340956,0.049515999853611,-0.109489113092422));
res += mul(Get(s4,dx,0), float4x4(0.021506592631340,0.376888334751129,-0.015937069430947,0.046858131885529,0.236283645033836,-0.031927037984133,0.159939825534821,-0.000227918630117,-0.022381685674191,-0.058195535093546,0.054854050278664,0.108964897692204,-0.145356908440590,-0.036638658493757,-0.006296645849943,-0.126903146505356));
res += mul(Get(s4,dx,dy), float4x4(0.102894879877567,0.058682285249233,0.053591717034578,-0.308535337448120,-0.183176249265671,0.116134233772755,0.038560431450605,-0.092246659100056,-0.087547332048416,-0.053483001887798,-0.026353146880865,0.011415325105190,-0.170915961265564,-0.004328509792686,0.043483618646860,0.077572256326675));
res += mul(Get(s5,-dx,-dy), float4x4(-0.056064724922180,0.002637676429003,0.047199893742800,-0.019890226423740,0.057695105671883,-0.110551454126835,0.139075592160225,-0.017123006284237,-0.097974963486195,-0.048721499741077,-0.028267949819565,0.084627732634544,0.085239596664906,0.060166951268911,0.227186843752861,0.066288419067860));
res += mul(Get(s5,-dx,0), float4x4(0.080927617847919,0.068839080631733,-0.011956726200879,-0.012612693943083,-0.184964507818222,-0.154103294014931,-0.170617163181305,-0.042454909533262,-0.130453303456306,-0.326332211494446,-0.267618477344513,-0.376692265272141,-0.272927284240723,-0.129901170730591,-0.118809439241886,-0.101635403931141));
res += mul(Get(s5,-dx,dy), float4x4(0.051841396838427,-0.022941190749407,-0.006244732066989,-0.024027431383729,0.026674104854465,-0.240861058235168,0.103029839694500,0.003606853075325,-0.084653548896313,-0.053611777722836,-0.099953219294548,-0.148691371083260,0.320399284362793,0.054111238569021,0.048509534448385,0.236953333020210));
res += mul(Get(s5,0,-dy), float4x4(0.036756645888090,0.208844676613808,-0.038267850875854,-0.029459679499269,-0.134347245097160,0.321348816156387,-0.000304957706248,0.339766621589661,0.010860298760235,0.221494257450104,-0.060246899724007,0.147387266159058,0.059661004692316,-0.076633587479591,-0.347917199134827,-0.082228973507881));
res += mul(Get(s5,0,0), float4x4(0.086588479578495,0.077472269535065,-0.121440425515175,-0.062014136463404,0.129014879465103,0.486148506402969,-0.240253791213036,-0.136297419667244,-0.208583623170853,0.119543030858040,-0.063524581491947,0.053942270576954,-0.054795276373625,0.204802632331848,0.025395365431905,-0.099883958697319));
res += mul(Get(s5,0,dy), float4x4(0.049173090606928,0.169828936457634,0.008766854181886,-0.013579267077148,-0.017103282734752,-0.138969898223877,-0.081556499004364,-0.209731042385101,-0.118110939860344,0.143994346261024,-0.157265543937683,-0.015445234254003,-0.039275195449591,-0.348880857229233,-0.130388364195824,-0.262049257755280));
res += mul(Get(s5,dx,-dy), float4x4(0.088078312575817,0.048040993511677,-0.056344330310822,0.058331750333309,-0.021991612389684,0.098999105393887,0.090226389467716,-0.040628433227539,0.299364477396011,0.092092007398605,0.075830586254597,0.026250325143337,0.026655318215489,-0.007346896454692,-0.033502116799355,0.073828719556332));
res += mul(Get(s5,dx,0), float4x4(0.004296058323234,0.232278376817703,-0.031487900763750,0.068995647132397,-0.200618505477905,-0.105952106416225,-0.191595882177353,-0.118823908269405,0.024350389838219,-0.015550230629742,-0.068952381610870,-0.135962948203087,0.143486186861992,0.144100859761238,-0.022643011063337,-0.074050068855286));
res += mul(Get(s5,dx,dy), float4x4(0.143230691552162,0.004375289194286,0.027519345283508,-0.035439774394035,-0.183600246906281,-0.154714494943619,0.066077657043934,0.160024598240852,-0.031867403537035,0.110446840524673,-0.047710504382849,0.119640387594700,-0.080108575522900,0.099906817078590,0.263949930667877,0.253081023693085));
res = max(float4(0, 0, 0, 0), res) + float4(0.093768939375877,-0.046490103006363,0.412918865680695,0.840792536735535) * min(float4(0, 0, 0, 0), res);
return res;
}