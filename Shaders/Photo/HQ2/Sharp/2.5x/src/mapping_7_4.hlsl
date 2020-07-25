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
res += mul(Get(s0,-dx,-dy), float4x4(0.031444288790226,-0.085497684776783,0.019768223166466,0.069008529186249,0.142320364713669,-0.046466968953609,-0.224237203598022,0.067790679633617,-0.001739549683407,0.099310822784901,0.116827100515366,-0.218784466385841,0.097434930503368,-0.009755088947713,0.033506292849779,-0.021012885496020));
res += mul(Get(s0,-dx,0), float4x4(0.080496087670326,0.020383641123772,-0.057946860790253,-0.054891843348742,0.089194253087044,-0.032161686569452,-0.091234780848026,-0.006849480327219,0.038207281380892,0.015863856300712,-0.021229615435004,0.108214601874352,-0.054258454591036,0.112771213054657,0.164221003651619,0.070814460515976));
res += mul(Get(s0,-dx,dy), float4x4(0.012011770159006,0.029043396934867,0.104390397667885,-0.029883570969105,-0.111137084662914,-0.066210880875587,-0.134616225957870,0.068411789834499,0.152758836746216,-0.034301176667213,0.128255978226662,0.152331814169884,-0.090589113533497,0.106187999248505,-0.080899335443974,0.046275611966848));
res += mul(Get(s0,0,-dy), float4x4(-0.000547193223611,-0.039502434432507,0.199202969670296,0.011290280148387,0.025898655876517,-0.164401799440384,0.030871493741870,0.047104995697737,-0.050752546638250,-0.022863812744617,0.104094728827477,0.032888628542423,-0.054345700889826,-0.087151296436787,-0.093185186386108,-0.237851083278656));
res += mul(Get(s0,0,0), float4x4(0.028836613520980,-0.048304188996553,-0.135132476687431,0.042461644858122,0.053266063332558,0.115459136664867,-0.038871556520462,0.193362921476364,-0.096111118793488,-0.011231757700443,-0.038884423673153,-0.029648598283529,-0.056774891912937,0.031762924045324,0.030812583863735,-0.015230101533234));
res += mul(Get(s0,0,dy), float4x4(-0.110619708895683,0.187499716877937,-0.128429144620895,-0.086247988045216,0.001102081732824,-0.191027462482452,0.027634004130960,-0.076300695538521,0.004733775276691,0.054588306695223,0.183970242738724,0.025911882519722,0.123969495296478,-0.127386897802353,0.040304798632860,-0.059675566852093));
res += mul(Get(s0,dx,-dy), float4x4(-0.103098496794701,0.134575352072716,-0.019592475146055,-0.060170706361532,-0.064703293144703,-0.014586742967367,0.087176159024239,-0.023737430572510,-0.224249899387360,-0.173894777894020,0.110582582652569,-0.100401706993580,-0.036209959536791,-0.006584200542420,0.075945273041725,-0.044863440096378));
res += mul(Get(s0,dx,0), float4x4(0.071947053074837,-0.108747027814388,-0.217979818582535,-0.097488626837730,0.087222985923290,0.012548499740660,0.090505421161652,0.168632701039314,-0.095946587622166,0.055344019085169,0.033094927668571,0.045103557407856,-0.097844652831554,0.127182364463806,0.052959907799959,-0.019290804862976));
res += mul(Get(s0,dx,dy), float4x4(-0.055407632142305,0.061172030866146,-0.059196084737778,-0.139256685972214,0.292367160320282,-0.172379180788994,-0.124178461730480,0.125666037201881,-0.100600875914097,-0.161057248711586,-0.045272845774889,-0.140558302402496,0.072369188070297,-0.188024416565895,-0.103726573288441,-0.068657338619232));
res += mul(Get(s1,-dx,-dy), float4x4(0.036254901438951,0.174405813217163,0.213248163461685,-0.034522876143456,-0.017967211082578,-0.116782963275909,-0.149115234613419,0.051909320056438,-0.058673247694969,-0.015254893340170,-0.118238806724548,0.002058826619759,0.021404130384326,-0.093524828553200,-0.072720877826214,-0.124920420348644));
res += mul(Get(s1,-dx,0), float4x4(0.067885518074036,0.069287516176701,0.070579916238785,-0.058306057006121,-0.058028925210238,-0.213460773229599,-0.096629507839680,0.103907167911530,-0.167028993368149,-0.045984458178282,0.063330531120300,0.041904691606760,-0.043363455682993,0.188987702131271,-0.102238468825817,-0.020907303318381));
res += mul(Get(s1,-dx,dy), float4x4(-0.067365765571594,-0.135881081223488,0.036557856947184,-0.035856842994690,-0.083165012300014,-0.070736743509769,-0.065848745405674,-0.018751263618469,-0.113969653844833,-0.010781602934003,0.159788250923157,0.152699485421181,-0.128701165318489,-0.050553273409605,0.064894288778305,-0.057708609849215));
res += mul(Get(s1,0,-dy), float4x4(-0.142417028546333,0.178737357258797,0.051238637417555,0.078560270369053,-0.267051696777344,0.010486801154912,0.158459797501564,0.088631980121136,-0.121421374380589,-0.041484188288450,-0.164909496903419,-0.063562363386154,0.101336412131786,-0.226348310709000,0.114558659493923,0.083032339811325));
res += mul(Get(s1,0,0), float4x4(0.018676532432437,0.068137809634209,0.056539595127106,-0.004405640996993,0.085454180836678,-0.100346192717552,0.103644475340843,-0.270745009183884,0.041439484804869,-0.012211878784001,-0.100893892347813,-0.014626285992563,0.200583234429359,-0.025258012115955,-0.127099752426147,-0.001103447983041));
res += mul(Get(s1,0,dy), float4x4(-0.012409224174917,0.089720979332924,0.087900169193745,-0.057595375925303,0.030127760022879,0.016019990667701,0.080237574875355,-0.072948485612869,0.000117953772133,0.100210614502430,-0.174937486648560,0.028444688767195,0.085850916802883,-0.122977688908577,-0.074125267565250,-0.139553457498550));
res += mul(Get(s1,dx,-dy), float4x4(-0.009682610630989,0.032406963407993,0.055884484201670,-0.032144866883755,-0.033961176872253,0.058102045208216,0.133930444717407,-0.022259799763560,0.140352025628090,-0.008296826854348,-0.086728900671005,0.050763990730047,0.064062096178532,-0.075257234275341,-0.065909668803215,0.088319607079029));
res += mul(Get(s1,dx,0), float4x4(-0.052076425403357,-0.001794849871658,-0.050296917557716,0.063641712069511,0.190161287784576,0.082044027745724,0.087269850075245,0.029856478795409,-0.128653720021248,0.001398043590598,-0.113762311637402,0.014564368873835,-0.124441586434841,0.045897185802460,-0.040574464946985,0.041052144020796));
res += mul(Get(s1,dx,dy), float4x4(0.033291246742010,0.118099480867386,-0.084387063980103,0.067327760159969,0.074368111789227,0.113384865224361,-0.041510935872793,-0.086227379739285,0.020687039941549,-0.139834895730019,0.161004379391670,0.060883350670338,0.057623855769634,0.139473855495453,-0.011742032133043,0.075543381273746));
res += mul(Get(s2,-dx,-dy), float4x4(0.149473801255226,0.118617899715900,-0.020461447536945,-0.064802162349224,-0.102534793317318,0.198976159095764,-0.178149744868279,-0.100015506148338,0.285962551832199,0.159791976213455,-0.043326415121555,-0.075165018439293,-0.313278049230576,0.065376639366150,-0.013687958940864,-0.245687440037727));
res += mul(Get(s2,-dx,0), float4x4(0.087042234838009,-0.170360028743744,-0.008774262852967,-0.096358686685562,0.092715188860893,0.045503288507462,0.037258196622133,-0.157111644744873,0.193865433335304,0.173218563199043,0.058572039008141,-0.101244546473026,-0.068257167935371,0.003127574920654,-0.065881006419659,-0.039966367185116));
res += mul(Get(s2,-dx,dy), float4x4(0.014301418326795,0.175373822450638,0.020477997139096,0.067912079393864,-0.042989391833544,0.248194560408592,-0.050988785922527,0.033969201147556,0.141797870397568,-0.094466060400009,-0.017229903489351,0.257179439067841,-0.229645177721977,0.003635116619989,-0.058193158358335,-0.099018312990665));
res += mul(Get(s2,0,-dy), float4x4(-0.030121173709631,-0.167742595076561,0.006736423354596,0.004358686041087,0.063559316098690,-0.008876862935722,0.018813995644450,-0.139491081237793,-0.043793499469757,-0.018628723919392,-0.183822631835938,0.089486517012119,-0.136199072003365,0.090198263525963,0.264815658330917,0.117919169366360));
res += mul(Get(s2,0,0), float4x4(0.057636059820652,0.172444224357605,0.001333256601356,-0.036437910050154,-0.249705687165260,-0.035906858742237,-0.052369862794876,-0.015803294256330,-0.276408106088638,-0.133192867040634,0.127910196781158,-0.086429461836815,0.018789997324347,-0.040142446756363,-0.004841938614845,-0.082884013652802));
res += mul(Get(s2,0,dy), float4x4(-0.102517761290073,-0.090068973600864,0.077622875571251,-0.121554590761662,-0.088081508874893,-0.192008763551712,0.110819481313229,-0.107824325561523,0.053235072642565,0.088156402111053,-0.032845627516508,0.151955068111420,0.077986881136894,-0.227554455399513,-0.039428614079952,0.133446171879768));
res += mul(Get(s2,dx,-dy), float4x4(-0.140755668282509,-0.026086138561368,-0.055267795920372,-0.092570386826992,-0.116424910724163,0.090782426297665,-0.075807645916939,-0.007752404548228,-0.008212325163186,-0.017570266500115,0.008684404194355,0.180382475256920,-0.039679050445557,0.066718988120556,-0.039712879806757,-0.174049064517021));
res += mul(Get(s2,dx,0), float4x4(-0.171151965856552,0.269447714090347,0.020462634041905,0.097315855324268,0.050117712467909,0.026936423033476,-0.091311089694500,-0.089107833802700,-0.031856533139944,0.012645836919546,-0.051792927086353,-0.043277278542519,-0.107722997665405,0.039837174117565,0.051335688680410,0.021418588235974));
res += mul(Get(s2,dx,dy), float4x4(-0.030494201928377,0.061447139829397,0.007432354614139,0.001308078528382,0.023702168837190,-0.038715764880180,-0.060368794947863,-0.176756158471107,0.164367482066154,-0.049076959490776,0.040677264332771,-0.065805718302727,0.141687944531441,0.071257732808590,-0.021372279152274,-0.018268970772624));
res += mul(Get(s3,-dx,-dy), float4x4(0.040561851114035,0.103696987032890,0.061653066426516,0.031989306211472,-0.016189381480217,0.088999740779400,0.124629698693752,0.106886804103851,-0.096800945699215,-0.048185676336288,-0.133686840534210,0.011321989819407,0.033736471086740,-0.049432490020990,0.075944803655148,0.027188366279006));
res += mul(Get(s3,-dx,0), float4x4(0.078985251486301,0.123759038746357,0.036676719784737,-0.006923881359398,-0.016379481181502,-0.054790060967207,0.099419832229614,-0.072803519666195,0.060448888689280,-0.023706611245871,0.175387531518936,0.002848672214895,-0.060284920036793,-0.230076283216476,0.137261882424355,-0.208256691694260));
res += mul(Get(s3,-dx,dy), float4x4(0.100037261843681,0.139883205294609,-0.004729611799121,-0.157459542155266,0.007977984845638,0.101333513855934,-0.018431343138218,-0.209705948829651,0.115758851170540,0.032326024025679,0.077880717813969,0.058431304991245,0.022677326574922,-0.073952630162239,-0.173524826765060,0.150267049670219));
res += mul(Get(s3,0,-dy), float4x4(0.125982359051704,0.040655851364136,-0.091118752956390,-0.053726106882095,-0.241034388542175,0.022540530189872,0.129945427179337,-0.021388333290815,0.057755466550589,0.050075013190508,0.032108481973410,0.092084981501102,0.001296789268963,-0.143431052565575,-0.252618134021759,0.074613429605961));
res += mul(Get(s3,0,0), float4x4(0.244854047894478,-0.044221676886082,0.075360894203186,0.004524681251496,0.106961309909821,0.184096395969391,0.115612737834454,-0.035842582583427,-0.029921749606729,-0.109631508588791,-0.171842992305756,-0.029150741174817,-0.161019176244736,-0.137273609638214,-0.081853412091732,0.172764852643013));
res += mul(Get(s3,0,dy), float4x4(0.067221842706203,0.161435320973396,0.066796474158764,-0.136080011725426,0.057501643896103,-0.008579855784774,0.019193055108190,0.028949538245797,-0.153196677565575,-0.053004097193480,0.124634400010109,0.084683276712894,-0.061595067381859,-0.065277017652988,0.033988192677498,0.049237105995417));
res += mul(Get(s3,dx,-dy), float4x4(0.062459569424391,-0.030783839523792,-0.025322502478957,-0.115301832556725,0.015860881656408,-0.011767631396651,-0.000055650794820,0.103800669312477,0.092658482491970,-0.161894619464874,-0.014991024509072,-0.071968883275986,-0.079223565757275,-0.004129492677748,-0.097616940736771,0.060102749615908));
res += mul(Get(s3,dx,0), float4x4(0.024217858910561,-0.081794038414955,-0.119015656411648,0.104432173073292,0.066547624766827,-0.000256961793639,-0.057632479816675,0.068616375327110,0.059087991714478,-0.079193353652954,0.034304317086935,-0.035154256969690,-0.064560830593109,0.040355622768402,-0.001813051407225,-0.062717400491238));
res += mul(Get(s3,dx,dy), float4x4(0.055222358554602,0.096946544945240,0.160861298441887,0.057085707783699,-0.066536776721478,0.214029714465141,-0.054238721728325,0.119318611919880,0.136811763048172,-0.015215131454170,0.111017197370529,0.032855879515409,-0.049659732729197,0.017098721116781,0.033069889992476,-0.001254399539903));
res = max(float4(0,0,0,0), res);
return res;
}