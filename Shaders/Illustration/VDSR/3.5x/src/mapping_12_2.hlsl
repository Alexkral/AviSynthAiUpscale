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
res += mul(Get(s0,-dx,-dy), float4x4(-0.083181865513325,0.072584405541420,0.130617514252663,-0.064763791859150,-0.085944712162018,-0.062247842550278,0.158509910106659,-0.006974085234106,0.062230139970779,-0.010618473403156,0.120915897190571,0.029772805050015,0.035912510007620,0.069195434451103,0.109347261488438,0.029694614931941));
res += mul(Get(s0,-dx,0), float4x4(-0.120295502245426,0.089370898902416,-0.023587225005031,0.097786188125610,0.155554577708244,-0.017609622329473,-0.107036769390106,0.060790419578552,-0.046307981014252,0.023273639380932,-0.101384162902832,0.050740297883749,0.094134442508221,0.083042539656162,0.150835677981377,-0.112514480948448));
res += mul(Get(s0,-dx,dy), float4x4(-0.142213389277458,0.051804002374411,0.128879144787788,-0.084696605801582,0.094932712614536,-0.027873210608959,-0.106717236340046,0.039493270218372,-0.028312491253018,0.047510240226984,0.008435589261353,0.107124999165535,0.037125431001186,-0.191472887992859,-0.198006868362427,-0.001943235634826));
res += mul(Get(s0,0,-dy), float4x4(0.060187689960003,0.017505889758468,-0.080599941313267,-0.069323562085629,-0.096245944499969,-0.059801466763020,0.230635210871696,0.065005801618099,-0.000606140587479,0.063401952385902,0.162433087825775,-0.055252905935049,0.081568136811256,0.090545289218426,-0.091046899557114,0.066973231732845));
res += mul(Get(s0,0,0), float4x4(0.164655268192291,-0.014002516865730,-0.104980312287807,0.182094588875771,-0.073441967368126,-0.050520684570074,-0.009692071937025,0.116358272731304,0.032278165221214,0.128785863518715,0.041573904454708,-0.063768036663532,-0.092832304537296,-0.064732238650322,0.220463797450066,0.156459942460060));
res += mul(Get(s0,0,dy), float4x4(0.036911733448505,-0.109699890017509,-0.013922960497439,-0.084607467055321,0.038444899022579,-0.109396055340767,-0.157584026455879,0.082390382885933,0.081997819244862,0.007345764897764,0.044827617704868,0.135217547416687,-0.042844474315643,-0.120437838137150,0.125662699341774,0.067904263734818));
res += mul(Get(s0,dx,-dy), float4x4(0.379462838172913,-0.079807095229626,0.094222739338875,0.071698844432831,-0.152642488479614,-0.130610555410385,0.030802719295025,0.001638881629333,0.083475261926651,-0.106065399944782,-0.000244921422563,0.134481906890869,0.010883779264987,-0.217505559325218,0.090682819485664,0.117896489799023));
res += mul(Get(s0,dx,0), float4x4(-0.064069263637066,0.072764620184898,-0.200778007507324,0.029318297281861,0.035084471106529,0.083300046622753,-0.160019353032112,-0.004098025150597,0.107658900320530,-0.008144675754011,-0.033529423177242,-0.049372900277376,-0.140866875648499,0.108981259167194,0.116056524217129,0.041671309620142));
res += mul(Get(s0,dx,dy), float4x4(0.099966727197170,-0.045899510383606,-0.013020345009863,0.043817289173603,-0.095813326537609,0.087269410490990,0.026521153748035,-0.098971359431744,0.028563758358359,-0.008448375388980,-0.043016713112593,0.114345446228981,0.170392349362373,0.035265777260065,-0.012683742679656,-0.104105845093727));
res += mul(Get(s1,-dx,-dy), float4x4(-0.106280229985714,0.000971080444288,-0.289711713790894,0.044558420777321,-0.039354406297207,0.083435967564583,-0.032679893076420,-0.043526649475098,-0.070796474814415,-0.156369447708130,-0.037926401942968,-0.003587732557207,-0.050134636461735,0.228315487504005,0.053235225379467,0.122769407927990));
res += mul(Get(s1,-dx,0), float4x4(-0.048302657902241,0.067032396793365,0.033423941582441,-0.011461311951280,0.019828371703625,-0.071598105132580,-0.106516532599926,0.099091805517673,-0.056785661727190,0.071066543459892,0.030792791396379,-0.076606430113316,-0.083136536180973,0.032527364790440,0.078835554420948,-0.024613695219159));
res += mul(Get(s1,-dx,dy), float4x4(-0.011352689936757,-0.000061530932726,-0.083111748099327,-0.175583228468895,-0.028708048164845,-0.212663531303406,-0.227264329791069,-0.102455839514732,0.080424688756466,0.160001873970032,-0.008657294325531,0.065321162343025,-0.008103890344501,0.000028062389902,0.068906858563423,0.076295986771584));
res += mul(Get(s1,0,-dy), float4x4(-0.090935394167900,-0.082822315394878,-0.019391832873225,-0.099839128553867,-0.055515214800835,-0.178977504372597,-0.062200535088778,-0.080703362822533,0.092973664402962,-0.170960530638695,0.282009631395340,-0.088945426046848,0.061350308358669,-0.150792106986046,-0.082169577479362,0.166963011026382));
res += mul(Get(s1,0,0), float4x4(-0.207403048872948,-0.160234227776527,-0.029110109433532,-0.135340228676796,0.011923455633223,0.065334290266037,-0.167522773146629,0.031844500452280,0.029136322438717,0.018024832010269,-0.012466248124838,-0.170463860034943,-0.104005873203278,-0.097730860114098,-0.040640324354172,0.048578061163425));
res += mul(Get(s1,0,dy), float4x4(0.131173282861710,-0.288543730974197,0.041590902954340,-0.141502633690834,0.049518797546625,-0.046440653502941,-0.002295906189829,-0.115688569843769,-0.129914686083794,-0.100491955876350,0.277079313993454,0.056348685175180,-0.042500980198383,-0.102409899234772,-0.006965332664549,-0.051884576678276));
res += mul(Get(s1,dx,-dy), float4x4(-0.135899782180786,-0.043450590223074,-0.153224036097527,0.078342951834202,-0.034595813602209,0.243470191955566,0.236791014671326,-0.088409222662449,-0.125145256519318,0.063362702727318,0.033143889158964,-0.021009290590882,-0.020572096109390,0.028985312208533,0.102044954895973,0.111204952001572));
res += mul(Get(s1,dx,0), float4x4(-0.005701781250536,-0.005454632919282,-0.070907853543758,-0.174333840608597,0.055272996425629,0.188714981079102,-0.024349093437195,0.119765311479568,-0.120475724339485,-0.226473256945610,-0.009477074258029,0.099763385951519,-0.165718272328377,0.054959103465080,0.162429675459862,0.129642739892006));
res += mul(Get(s1,dx,dy), float4x4(0.086499437689781,-0.078614190220833,-0.034886155277491,-0.061758264899254,-0.089074589312077,-0.075259596109390,-0.081921897828579,0.042693868279457,0.178671911358833,0.244161799550056,0.097791500389576,-0.030083043500781,0.010381344705820,-0.034077707678080,-0.255854576826096,0.103873245418072));
res += mul(Get(s2,-dx,-dy), float4x4(-0.034528397023678,0.059023912996054,-0.074391081929207,-0.162816986441612,-0.250033080577850,0.049066569656134,-0.046438347548246,0.389996528625488,-0.323123574256897,-0.122551441192627,-0.135307237505913,0.162898674607277,0.034033592790365,0.091946363449097,-0.256281673908234,0.278266519308090));
res += mul(Get(s2,-dx,0), float4x4(-0.071696661412716,0.113080866634846,-0.038183018565178,-0.059648629277945,0.090437166392803,0.009979113936424,0.033559069037437,0.084189437329769,-0.112422786653042,0.010832517407835,0.011504411697388,0.101285837590694,-0.014006664045155,0.059517949819565,-0.123091749846935,0.096390888094902));
res += mul(Get(s2,-dx,dy), float4x4(-0.128185465931892,0.103296130895615,0.025203472003341,0.097749888896942,0.270376324653625,-0.071856990456581,-0.081945009529591,0.184053257107735,-0.136861726641655,-0.106868475675583,-0.092115171253681,-0.004842086695135,0.058973934501410,-0.174901366233826,0.019160239025950,-0.026689451187849));
res += mul(Get(s2,0,-dy), float4x4(-0.043781291693449,-0.061020314693451,-0.013887488283217,-0.039125610142946,-0.026016255840659,0.006356569007039,0.019861368462443,0.231792464852333,0.101429864764214,0.093600995838642,-0.008641553111374,-0.189822658896446,0.114069789648056,0.005299930926412,0.132988855242729,-0.106019474565983));
res += mul(Get(s2,0,0), float4x4(-0.058856487274170,-0.063034296035767,0.042755227535963,-0.079656966030598,0.064818091690540,-0.204168826341629,0.022468067705631,-0.003259138204157,-0.036476682871580,-0.317327499389648,-0.148815289139748,-0.127967000007629,0.000594925193582,0.221547231078148,0.280406653881073,-0.016182608902454));
res += mul(Get(s2,0,dy), float4x4(-0.016473842784762,0.131456837058067,0.040233213454485,-0.028538091108203,0.087415136396885,0.076063036918640,-0.033436547964811,-0.206456124782562,-0.246073335409164,0.074509009718895,-0.164266809821129,0.013927128165960,-0.130604892969131,-0.048979185521603,0.116466626524925,-0.148609444499016));
res += mul(Get(s2,dx,-dy), float4x4(-0.006447455845773,-0.140859723091125,0.076434500515461,-0.123751528561115,0.126421019434929,0.032899498939514,-0.044089328497648,0.213249921798706,-0.062916822731495,-0.137290075421333,0.093968532979488,-0.227525323629379,-0.015525748021901,-0.133955001831055,0.046766407787800,0.086651481688023));
res += mul(Get(s2,dx,0), float4x4(-0.104317255318165,-0.037063669413328,-0.144628733396530,-0.070540741086006,-0.008215458132327,-0.159968689084053,-0.135799705982208,-0.032397538423538,-0.169840335845947,0.136710077524185,0.136433854699135,-0.260038435459137,-0.283768236637115,0.052106596529484,-0.024139437824488,0.092364802956581));
res += mul(Get(s2,dx,dy), float4x4(-0.135840132832527,0.042007744312286,0.034867294132710,-0.016365062445402,0.086720533668995,0.048937465995550,-0.130315139889717,0.098965033888817,-0.207323625683784,-0.198079332709312,0.093331210315228,0.020698016509414,0.048736292868853,0.020204305648804,0.154852554202080,-0.013051333837211));
res += mul(Get(s3,-dx,-dy), float4x4(0.108242444694042,-0.001650242600590,-0.153985068202019,-0.217099785804749,0.028058037161827,-0.023686738684773,-0.009339727461338,0.015001057647169,0.375581443309784,0.088861599564552,0.225797012448311,-0.027624888345599,-0.395113229751587,0.064368002116680,0.140720412135124,0.000363843922969));
res += mul(Get(s3,-dx,0), float4x4(-0.079169504344463,-0.212534487247467,0.023975707590580,-0.053123459219933,0.139090582728386,-0.068584553897381,-0.027940036728978,0.039915408939123,-0.014393708668649,0.118293464183807,-0.012926789931953,-0.232570633292198,0.040385812520981,-0.045501168817282,0.149459570646286,0.147308617830276));
res += mul(Get(s3,-dx,dy), float4x4(-0.115608088672161,-0.033942960202694,0.149724975228310,0.050993483513594,0.008618790656328,0.005590033717453,0.194124743342400,0.103893294930458,0.021800488233566,0.046368114650249,-0.088592030107975,-0.029903078451753,-0.038404457271099,0.102849826216698,0.035233333706856,0.183523029088974));
res += mul(Get(s3,0,-dy), float4x4(0.128893986344337,-0.217007547616959,0.213446825742722,-0.105377122759819,0.044435713440180,-0.076091855764389,0.111583031713963,0.124217718839645,-0.008588458411396,0.208600044250488,0.026791468262672,0.039919726550579,-0.040018618106842,-0.059351436793804,-0.065153270959854,0.167348876595497));
res += mul(Get(s3,0,0), float4x4(0.033533398061991,0.080539263784885,0.041894163936377,-0.054638627916574,0.113521039485931,0.087679348886013,0.158541306853294,0.057833757251501,-0.093294329941273,0.156797081232071,0.174490973353386,0.073137588799000,0.168338075280190,-0.013931790366769,-0.046223744750023,-0.012255762703717));
res += mul(Get(s3,0,dy), float4x4(0.118051782250404,-0.021519282832742,-0.068379372358322,-0.227869689464569,-0.090296588838100,-0.058199796825647,-0.099729984998703,-0.022344699129462,-0.064724944531918,-0.081878960132599,0.045461989939213,-0.047175198793411,-0.113854400813580,-0.060335431247950,-0.054713480174541,0.103002674877644));
res += mul(Get(s3,dx,-dy), float4x4(0.111447162926197,-0.137279152870178,-0.094828702509403,-0.235926777124405,-0.006130287423730,0.230247735977173,0.066585488617420,0.123318359255791,-0.057868637144566,0.119646050035954,0.086709521710873,-0.188455462455750,-0.194784715771675,-0.163969367742538,0.082272581756115,-0.090141795575619));
res += mul(Get(s3,dx,0), float4x4(0.062642142176628,0.013440804556012,-0.146739482879639,0.155448809266090,0.014278826303780,-0.179676085710526,-0.024129621684551,0.089675597846508,-0.176367625594139,-0.009877741336823,-0.077639684081078,-0.019141761586070,-0.078711539506912,0.021159775555134,0.154182270169258,0.095742486417294));
res += mul(Get(s3,dx,dy), float4x4(0.088188037276268,-0.098536416888237,-0.107254408299923,0.000402460194891,0.041151072829962,0.046610314399004,-0.113732360303402,0.072299577295780,-0.164013370871544,-0.022759551182389,0.170649066567421,0.095774941146374,-0.101711533963680,-0.000057479217503,-0.214368462562561,-0.288630187511444));
return max(float4(0,0,0,0), res);
}