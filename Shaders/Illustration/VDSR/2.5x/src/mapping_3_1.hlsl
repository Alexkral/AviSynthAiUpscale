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
res += mul(Get(s0,-dx,-dy), float4x4(0.024639239534736,-0.088137105107307,-0.118440456688404,-0.024959431961179,0.010786099359393,0.062936112284660,-0.108846776187420,0.080814734101295,-0.004307481925935,0.038557127118111,-0.041619066148996,0.051852729171515,0.034210138022900,-0.145097449421883,0.195476323366165,-0.199008673429489));
res += mul(Get(s0,-dx,0), float4x4(0.073610037565231,-0.015948146581650,0.209624648094177,0.251054465770721,-0.072961993515491,0.011475628241897,0.077889263629913,-0.047480631619692,0.120175130665302,0.168441593647003,0.026782663539052,-0.209587693214417,0.040109835565090,-0.045740704983473,-0.061555616557598,-0.125769212841988));
res += mul(Get(s0,-dx,dy), float4x4(0.008256339468062,0.086400136351585,0.012246846221387,0.017707904800773,-0.000435334950453,0.102668069303036,0.015303454361856,0.099071748554707,0.059286765754223,-0.026339598000050,0.016416886821389,-0.022765399888158,-0.083176583051682,0.007362636271864,-0.084561079740524,0.052638683468103));
res += mul(Get(s0,0,-dy), float4x4(-0.087183080613613,0.108227349817753,-0.121848270297050,-0.085501126945019,0.032304123044014,-0.156225100159645,-0.105281181633472,-0.117719225585461,0.066988132894039,0.074824802577496,-0.077564693987370,-0.027243725955486,-0.103847138583660,-0.025503903627396,0.328256905078888,-0.083082400262356));
res += mul(Get(s0,0,0), float4x4(0.137603372335434,0.172673702239990,0.144325956702232,-0.025532035157084,0.003671709448099,0.048345822840929,0.039338361471891,-0.061907242983580,0.167480438947678,-0.097688168287277,-0.175952002406120,-0.072296075522900,-0.075688295066357,-0.016167780384421,-0.040387470275164,0.037924099713564));
res += mul(Get(s0,0,dy), float4x4(-0.011876368895173,-0.009409622289240,-0.212570890784264,0.003464685054496,-0.017419332638383,0.137910917401314,0.097650513052940,0.033919159322977,-0.213603809475899,0.058172982186079,0.056645002216101,-0.134689569473267,0.077555805444717,-0.048268862068653,-0.088133960962296,0.049305476248264));
res += mul(Get(s0,dx,-dy), float4x4(-0.049826532602310,-0.128682687878609,0.114175722002983,-0.132858216762543,0.047595731914043,0.067917376756668,-0.080028034746647,-0.018406536430120,0.050169620662928,0.185129672288895,-0.052025824785233,0.133581250905991,-0.159006983041763,0.074351541697979,0.066652484238148,-0.044939871877432));
res += mul(Get(s0,dx,0), float4x4(0.123857252299786,-0.107051275670528,0.037910427898169,-0.216591909527779,0.056121408939362,-0.008109381422400,0.057345096021891,-0.058943681418896,0.085288815200329,-0.021033039316535,0.249940440058708,-0.191106736660004,-0.050461094826460,0.050725750625134,-0.068268455564976,-0.044947091490030));
res += mul(Get(s0,dx,dy), float4x4(0.212210342288017,0.132952451705933,-0.010900290682912,0.100682027637959,0.048821546137333,-0.109824061393738,-0.165008530020714,0.153196677565575,-0.082769580185413,-0.101487748324871,-0.245804324746132,-0.241168901324272,-0.070378459990025,-0.062882117927074,-0.006814419291914,0.072997190058231));
res += mul(Get(s1,-dx,-dy), float4x4(0.094201982021332,0.030852800235152,0.050491388887167,0.030456438660622,0.044066134840250,0.039326503872871,-0.135791078209877,-0.019704800099134,0.167849734425545,0.264742583036423,0.015054561197758,-0.003188970498741,-0.179755955934525,0.103280819952488,-0.068007759749889,-0.074225954711437));
res += mul(Get(s1,-dx,0), float4x4(-0.030586868524551,0.140273630619049,0.061754919588566,-0.063286855816841,0.066843658685684,-0.040368288755417,0.144282624125481,0.133442819118500,0.157525137066841,-0.187774628400803,-0.049810767173767,-0.078610397875309,0.018634965643287,0.415491551160812,-0.052791073918343,-0.029662009328604));
res += mul(Get(s1,-dx,dy), float4x4(0.160917356610298,0.211667627096176,-0.067117795348167,-0.202950119972229,0.141010612249374,0.006892242468894,-0.019032334908843,-0.078784137964249,0.121544472873211,0.034357547760010,0.084511294960976,-0.040345471352339,-0.338494867086411,-0.020100720226765,-0.067183561623096,0.214360311627388));
res += mul(Get(s1,0,-dy), float4x4(0.108703687787056,-0.046425618231297,-0.011786697432399,-0.010970634408295,-0.055812306702137,0.013052723370492,0.018028518185019,0.011303229257464,0.111532464623451,0.262684404850006,-0.085224844515324,0.042826030403376,-0.046820241957903,-0.039447147399187,0.061477757990360,0.063361674547195));
res += mul(Get(s1,0,0), float4x4(-0.092974342405796,0.016476750373840,-0.083845809102058,-0.103998206555843,0.156523793935776,0.079223163425922,-0.085482038557529,0.013061698526144,-0.008916411548853,-0.060674775391817,-0.031425274908543,0.198707759380341,0.032614722847939,0.089131258428097,0.215849563479424,0.107567600905895));
res += mul(Get(s1,0,dy), float4x4(0.069252312183380,0.223589688539505,-0.108521811664104,-0.043313752859831,-0.089000485837460,-0.094102352857590,0.030234541743994,-0.106428243219852,0.050520863384008,-0.027884678915143,0.142876297235489,-0.194305211305618,-0.118211470544338,-0.015863951295614,0.108382344245911,0.122296608984470));
res += mul(Get(s1,dx,-dy), float4x4(-0.030706577003002,0.219154238700867,-0.048338241875172,-0.184199452400208,0.123361125588417,0.214118525385857,0.271928906440735,0.056018117815256,-0.033282443881035,0.189375832676888,-0.179265752434731,-0.096786193549633,0.147201687097549,-0.180452778935432,0.195740073919296,0.055385880172253));
res += mul(Get(s1,dx,0), float4x4(0.082579977810383,0.028448922559619,0.086002118885517,0.050760578364134,-0.028296163305640,0.042257532477379,-0.192911356687546,-0.013138453476131,-0.062914721667767,-0.088086560368538,-0.031572379171848,0.025479523465037,-0.020920490846038,-0.119826599955559,0.140968665480614,0.023213658481836));
res += mul(Get(s1,dx,dy), float4x4(-0.096865855157375,-0.041122853755951,0.188970640301704,-0.052490886300802,-0.088966831564903,-0.068099215626717,-0.088888376951218,-0.038132626563311,-0.043769959360361,-0.019656011834741,0.013164240866899,-0.162959352135658,0.009256664663553,-0.012782845646143,-0.091524004936218,-0.022548589855433));
res += mul(Get(s2,-dx,-dy), float4x4(-0.201061680912971,0.173169746994972,-0.011814317665994,0.112140402197838,0.000233358834521,0.085786387324333,0.145384669303894,-0.146330639719963,-0.275343596935272,-0.214169695973396,-0.097129158675671,-0.033171586692333,-0.223467558622360,-0.026518328115344,0.014517407864332,0.125698745250702));
res += mul(Get(s2,-dx,0), float4x4(-0.098562411963940,0.090502932667732,0.139427796006203,0.032718483358622,0.086526326835155,0.010940322652459,-0.041962865740061,-0.047569107264280,0.076818428933620,0.087037965655327,-0.130142331123352,0.157610133290291,0.033358372747898,0.072319030761719,-0.147169798612595,-0.005939153488725));
res += mul(Get(s2,-dx,dy), float4x4(0.142320275306702,-0.021369578316808,-0.073730766773224,-0.115762755274773,0.013656863942742,-0.288383215665817,0.171759009361267,0.001529818633571,-0.129458785057068,-0.043657530099154,-0.039426077157259,-0.074686981737614,0.147616207599640,-0.207177340984344,-0.140407398343086,-0.001382843242027));
res += mul(Get(s2,0,-dy), float4x4(-0.032305181026459,-0.049116052687168,0.132276460528374,-0.000152559237904,0.000260667351540,-0.306793034076691,0.036486726254225,0.074809782207012,0.082838363945484,-0.141775220632553,-0.276058912277222,-0.173781275749207,-0.048969686031342,0.287009030580521,0.052244160324335,0.160561025142670));
res += mul(Get(s2,0,0), float4x4(-0.102188885211945,-0.087665610015392,-0.106509089469910,0.104193635284901,-0.098979249596596,-0.221779167652130,-0.014931848272681,-0.077182851731777,0.096772752702236,0.071042567491531,-0.012006197124720,0.119765236973763,-0.011283416301012,0.111067071557045,0.096831664443016,0.029505373910069));
res += mul(Get(s2,0,dy), float4x4(0.041512839496136,0.099314481019974,0.215543821454048,0.076180554926395,0.039301063865423,0.066812232136726,0.078294381499290,0.007768270093948,0.157186105847359,0.077842213213444,-0.002473569009453,0.020264785736799,-0.001730480580591,0.198356270790100,0.063492342829704,0.289539277553558));
res += mul(Get(s2,dx,-dy), float4x4(-0.045190051198006,-0.280422270298004,-0.051171839237213,0.095762349665165,0.111667327582836,-0.067138083279133,0.107861429452896,0.203441649675369,-0.116257175803185,0.027438843622804,-0.143443852663040,-0.067091688513756,0.096151418983936,0.295147031545639,0.146285891532898,-0.036359947174788));
res += mul(Get(s2,dx,0), float4x4(0.150031700730324,-0.000519889406860,0.046296767890453,0.035462699830532,0.162567272782326,-0.033860385417938,0.266678482294083,0.018414726480842,-0.065917313098907,-0.084407508373260,0.096481531858444,-0.261075198650360,0.131901189684868,0.169639453291893,-0.056261863559484,-0.077705197036266));
res += mul(Get(s2,dx,dy), float4x4(0.120946563780308,0.022612640634179,0.045679975301027,0.019955629482865,-0.156682685017586,0.162052556872368,0.147966772317886,-0.206211015582085,0.012463260442019,0.094441935420036,0.079097509384155,-0.154793485999107,0.055932108312845,0.033760942518711,-0.078150153160095,-0.185202345252037));
res += mul(Get(s3,-dx,-dy), float4x4(0.073139995336533,-0.047559402883053,0.110716760158539,-0.181282043457031,-0.179410532116890,0.077437773346901,-0.076533854007721,-0.031647816300392,-0.155697897076607,-0.008054433390498,-0.095646359026432,-0.003346609650180,-0.098149336874485,0.105200387537479,0.050661783665419,-0.091677613556385));
res += mul(Get(s3,-dx,0), float4x4(0.073318719863892,-0.099868394434452,0.000116841853014,0.021025788038969,-0.074142225086689,0.096739776432514,0.132390931248665,0.069468609988689,-0.073000177741051,-0.063883818686008,0.048289589583874,-0.077312365174294,0.036877267062664,0.081410475075245,0.098962828516960,-0.117291770875454));
res += mul(Get(s3,-dx,dy), float4x4(-0.064619295299053,0.061436757445335,-0.114148296415806,-0.149192199110985,-0.131438121199608,0.030340010300279,0.087004959583282,-0.040438737720251,-0.243321120738983,-0.207571566104889,-0.152977123856544,-0.060642085969448,-0.060173869132996,-0.036842122673988,-0.058583915233612,0.116176545619965));
res += mul(Get(s3,0,-dy), float4x4(0.042401462793350,0.038851294666529,0.165535688400269,-0.080214321613312,0.083893574774265,0.229696512222290,0.089191138744354,0.081863142549992,-0.076763689517975,0.051304582506418,-0.002273401711136,-0.094582132995129,0.001814282732084,-0.057355012744665,-0.010058211162686,-0.018288768827915));
res += mul(Get(s3,0,0), float4x4(0.057062607258558,0.122243501245975,-0.060445539653301,0.017230859026313,-0.020860442891717,0.123779796063900,-0.018738588318229,-0.087101794779301,-0.028937479481101,0.087326139211655,-0.010103597305715,0.200795635581017,0.182389125227928,0.059303455054760,0.052612539380789,-0.030373530462384));
res += mul(Get(s3,0,dy), float4x4(-0.120017059147358,0.153654411435127,0.000397270225221,-0.044030506163836,0.088747516274452,-0.052526321262121,0.000898353056982,-0.043166376650333,-0.254813432693481,0.151943266391754,-0.071386277675629,-0.050780888646841,-0.037194855511189,-0.016100319102407,0.031573574990034,-0.032798759639263));
res += mul(Get(s3,dx,-dy), float4x4(0.011877530254424,-0.086940288543701,0.001703636720777,-0.161147847771645,0.303233295679092,-0.120169542729855,0.002210636157542,0.000312352116453,0.068694174289703,-0.182533636689186,-0.111680664122105,-0.093819282948971,0.169103622436523,-0.104282796382904,-0.059304680675268,0.019714061170816));
res += mul(Get(s3,dx,0), float4x4(-0.008850133046508,-0.059721175581217,-0.149474591016769,-0.047035411000252,-0.114055991172791,0.188905745744705,-0.018035642802715,0.088152229785919,0.259993553161621,-0.244115725159645,-0.162035793066025,0.082498341798782,-0.106312908232212,-0.073776334524155,0.044141821563244,-0.094284430146217));
res += mul(Get(s3,dx,dy), float4x4(-0.099319487810135,0.094260111451149,-0.025540674105287,0.116408966481686,0.056591048836708,-0.025353208184242,-0.107974663376808,0.026028372347355,0.105293907225132,0.015055597759783,-0.075863964855671,0.020021151751280,0.012506533414125,-0.071169652044773,0.149759873747826,0.055750466883183));
return max(float4(0,0,0,0), res);
}