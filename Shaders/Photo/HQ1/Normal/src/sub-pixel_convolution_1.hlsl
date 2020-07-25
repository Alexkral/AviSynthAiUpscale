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
float4 res = float4(0.1815785616636276,0.1910721957683563,0.1775252223014832,0.1858966052532196);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0174598768353462,0.0071555422618985,-0.0044176690280437,0.0075055528432131,-0.0016885034274310,-0.0068092383444309,-0.0144116682931781,-0.0104935551062226,0.0092617711052299,0.0094266738742590,-0.0080833211541176,-0.0030924940947443,0.0154625419527292,0.0019408116349950,0.0071591408923268,-0.0037313546054065));
res += mul(Get(s1,-dx,-dy), float4x4(0.0081820795312524,-0.0110080838203430,0.0007821277249604,-0.0037321632262319,0.0241869632154703,0.0022012714762241,0.0171701740473509,0.0185130666941404,-0.0199375078082085,0.0088669061660767,-0.0107442336156964,-0.0044314195401967,-0.0063124126754701,-0.0183066446334124,-0.0060663833282888,-0.0026665944606066));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0028853961266577,0.0049986946396530,-0.0003799276892096,-0.0059528108686209,0.0086577385663986,-0.0136880846694112,0.0057471930049360,0.0121599286794662,0.0037951213307679,-0.0094404546543956,-0.0004588818992488,-0.0020366280805320,-0.0170864798128605,0.0144725441932678,-0.0017044455744326,0.0136458175256848));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0024068192578852,0.0005947250174358,-0.0087395096197724,-0.0001236174139194,-0.0106611978262663,0.0014854284236208,-0.0048379665240645,0.0026375781744719,0.0034182907547802,-0.0010404493659735,-0.0020385454408824,-0.0034126751124859,0.0080785118043423,-0.0056009148247540,-0.0076593388803303,-0.0073523884639144));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0038405503146350,0.0007247768226080,0.0070104547776282,0.0017817670013756,-0.0247155465185642,-0.0030210600234568,0.0005433150799945,-0.0025350346695632,0.0027395635843277,-0.0042307558469474,0.0036933338269591,-0.0007156077772379,0.0036521588917822,-0.0006978526944295,-0.0065644821152091,-0.0083257630467415));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0054721343331039,-0.0113195851445198,0.0039601153694093,-0.0002391739835730,-0.0175996981561184,-0.0036674181465060,-0.0168322175741196,-0.0011240835301578,-0.0114299030974507,-0.0031625144183636,-0.0052399481646717,-0.0042756986804307,0.0072921686805785,0.0041411202400923,-0.0269668158143759,-0.0275177061557770));
res += mul(Get(s0,-dx,0), float4x4(-0.0095300562679768,0.0462063439190388,-0.0353768840432167,-0.0053013693541288,0.0158119704574347,0.0099347205832601,0.0250170361250639,0.0147225130349398,-0.0074004270136356,-0.0038279257714748,-0.0152013106271625,-0.0134989004582167,-0.0019039908656850,-0.0476977825164795,-0.0038501145318151,0.0250023324042559));
res += mul(Get(s1,-dx,0), float4x4(-0.0230184681713581,0.0257322564721107,0.0038553751073778,0.0001824874925660,-0.0305517762899399,-0.0094259567558765,-0.0410945490002632,-0.0537412352859974,0.0019005708163604,0.0139280725270510,-0.0077857635915279,-0.0103000625967979,0.0185485184192657,0.0398145020008087,0.0100293261930346,0.0014022291870788));
res += mul(Get(s2,-dx,0), float4x4(-0.0602840594947338,-0.0481928251683712,0.0700359493494034,0.0422373302280903,0.0006167939864099,0.0381740778684616,0.0179866682738066,-0.0149471377953887,-0.0215285383164883,0.0295243710279465,0.0069448798894882,-0.0077225454151630,0.0370117649435997,-0.0189061071723700,0.0080461734905839,0.0040189796127379));
res += mul(Get(s3,-dx,0), float4x4(0.0046034944243729,0.0058569880202413,-0.0194316171109676,-0.0318409241735935,-0.0029819409828633,0.0170324593782425,0.0039246403612196,0.0000983712016023,-0.0062775658443570,-0.0063932985067368,-0.0079602729529142,-0.0043470989912748,-0.0169204790145159,0.0156441796571016,0.0101128704845905,0.0069002015516162));
res += mul(Get(s4,-dx,0), float4x4(-0.0039917863905430,-0.0064075021073222,0.0116275530308485,0.0194222666323185,-0.0322256386280060,-0.0433741658926010,0.0109727056697011,0.0029128345195204,-0.0215457603335381,-0.0193091388791800,0.0388572998344898,0.0243370253592730,-0.0277894064784050,-0.0065023829229176,-0.0094227259978652,-0.0088548213243484));
res += mul(Get(s5,-dx,0), float4x4(-0.0199696142226458,0.0129321627318859,-0.0031521045602858,0.0059862527996302,0.0506376139819622,0.0259448662400246,-0.0065411613322794,-0.0211306959390640,0.0128110097721219,0.0143767409026623,0.0151509931311011,0.0121580362319946,-0.0355636626482010,-0.0312422644346952,-0.0064498009160161,-0.0053509455174208));
res += mul(Get(s0,-dx,dy), float4x4(0.0181533843278885,-0.0425085388123989,0.0199102424085140,0.0193094462156296,-0.0075150644406676,-0.0158785488456488,-0.0076899933628738,-0.0022737071849406,0.0077828345820308,-0.0125526254996657,-0.0105549097061157,0.0007092237938195,-0.0013939703349024,0.0188742578029633,-0.0184829197824001,-0.0027681074570864));
res += mul(Get(s1,-dx,dy), float4x4(0.0152652673423290,-0.0073277712799609,0.0043449108488858,-0.0014991791686043,0.0145475585013628,0.0121055142953992,0.0105305239558220,0.0159113984555006,-0.0036433078348637,-0.0101570840924978,-0.0003597986942623,-0.0074707255698740,0.0007470560376532,-0.0047748102806509,-0.0035208100453019,-0.0034895294811577));
res += mul(Get(s2,-dx,dy), float4x4(0.0110728610306978,-0.0176970884203911,-0.0055338535457850,0.0137907415628433,0.0171636156737804,-0.0155468499287963,-0.0004649099428207,0.0358294658362865,0.0048408582806587,-0.0048556616529822,0.0025784377939999,0.0082996916025877,-0.0021013631485403,-0.0057302815839648,-0.0036031559575349,0.0107705835253000));
res += mul(Get(s3,-dx,dy), float4x4(0.0043631987646222,0.0153974974527955,0.0005254411371425,-0.0108012985438108,0.0230715554207563,-0.0180742368102074,0.0046486733481288,-0.0031503892969340,0.0009820633567870,-0.0062021743506193,-0.0018266340484843,-0.0006898164865561,-0.0000740234681871,-0.0036409758031368,0.0035718709696084,-0.0005952822393738));
res += mul(Get(s4,-dx,dy), float4x4(-0.0003584151854739,0.0002535523090046,-0.0031240554526448,0.0022252590861171,-0.0026326891966164,0.0050570922903717,-0.0036831274628639,-0.0029420310165733,-0.0104706911370158,-0.0047965859994292,0.0078737456351519,0.0166973508894444,0.0038336282595992,-0.0010282729053870,0.0005553773953579,-0.0060418979264796));
res += mul(Get(s5,-dx,dy), float4x4(0.0062634302303195,-0.0028446272481233,0.0032559342216700,-0.0010215261718258,-0.0123356813564897,-0.0068823820911348,-0.0083178803324699,-0.0143863977864385,-0.0027467082254589,-0.0060175764374435,-0.0051746908575296,-0.0029731211252511,0.0002043698768830,0.0011248461669311,-0.0137402368709445,-0.0147162238135934));
res += mul(Get(s0,0,-dy), float4x4(0.0439050309360027,0.0037536383606493,-0.0352925024926662,0.0172531846910715,0.0460371412336826,0.0072383554652333,0.0452014617621899,0.0137300016358495,0.0067684832029045,0.0050470288842916,-0.0153843816369772,0.0226425603032112,0.0102756721898913,0.0012834586668760,-0.0383532680571079,0.0169562045484781));
res += mul(Get(s1,0,-dy), float4x4(0.0067712124437094,-0.0227994192391634,0.0080390945076942,-0.0273803062736988,-0.0246689841151237,-0.0220626145601273,-0.0532456859946251,-0.0426890514791012,-0.0105612790212035,0.0158648714423180,-0.0182402599602938,0.0216012205928564,0.0382825136184692,-0.0044767889194191,0.0103172566741705,-0.0120992921292782));
res += mul(Get(s2,0,-dy), float4x4(0.0003356543893460,-0.0066963988356292,0.0017954848008230,0.0037342067807913,0.0298990886658430,0.0394322946667671,-0.0620590560138226,0.0053210603073239,0.0056441007182002,-0.0015794952632859,-0.0167784355580807,-0.0116764772683382,0.0182547308504581,0.0437488667666912,-0.0110659180209041,0.0394125655293465));
res += mul(Get(s3,0,-dy), float4x4(-0.0411692857742310,0.0234785936772823,0.0313855558633804,-0.0054633067920804,-0.0101617192849517,-0.0125895598903298,-0.0221306756138802,-0.0032299996819347,0.0122311515733600,-0.0120755843818188,0.0025121446233243,-0.0080296592786908,-0.0215193368494511,0.0107991676777601,0.0155814066529274,0.0073274103924632));
res += mul(Get(s4,0,-dy), float4x4(0.0143047384917736,-0.0092510366812348,-0.0126341618597507,0.0008407690329477,-0.0606543011963367,-0.0107799526304007,0.0713912174105644,-0.0008163281017914,-0.0105940522626042,0.0185464806854725,0.0049759438261390,0.0112268878147006,-0.0332169197499752,0.0047517665661871,0.0172772444784641,0.0091059803962708));
res += mul(Get(s5,0,-dy), float4x4(-0.0160544812679291,-0.0281162057071924,-0.0129159856587648,-0.0210285913199186,0.0490833595395088,0.0128836855292320,0.0287551078945398,0.0066417306661606,0.0108388653025031,0.0093143433332443,0.0014064449351281,0.0148882539942861,-0.0789497643709183,-0.0419936068356037,0.0786902606487274,0.0396972894668579));
res += mul(Get(s0,0,0), float4x4(-0.0232792310416698,-0.0636668950319290,0.1371504068374634,-0.0646467804908752,0.3830760419368744,0.2295372933149338,0.4138098657131195,0.2835816442966461,-0.0661544427275658,-0.0685904696583748,0.2024207562208176,-0.0387209653854370,-0.0803014114499092,0.0890912711620331,0.1172091290354729,-0.0719096362590790));
res += mul(Get(s1,0,0), float4x4(-0.0457352586090565,0.0477986745536327,-0.0588610433042049,0.0563567504286766,-0.5841645002365112,-0.5981432199478149,-0.6383386850357056,-0.6490120887756348,0.1073756217956543,0.1658235788345337,0.1431875377893448,0.2435114681720734,0.2912870645523071,0.4730805754661560,0.1688121110200882,0.2952183485031128));
res += mul(Get(s2,0,0), float4x4(0.0244741551578045,0.0218469891697168,-0.0058286795392632,-0.0034376408439130,0.1508249789476395,0.1100722178816795,-0.1260338127613068,-0.2596461772918701,0.0410129092633724,0.1384954154491425,-0.0083027556538582,0.1005117595195770,0.1162674352526665,-0.1248922199010849,0.1466375738382339,-0.1184409260749817));
res += mul(Get(s3,0,0), float4x4(-0.0138434972614050,-0.1459837406873703,-0.0009944025659934,0.1558661311864853,-0.0672658756375313,0.0448388308286667,-0.0645317658782005,0.0952517986297607,-0.0400096327066422,0.0202059932053089,0.0234118066728115,0.0098786950111389,0.0896073505282402,-0.0224013607949018,-0.0306599382311106,-0.0394732691347599));
res += mul(Get(s4,0,0), float4x4(-0.0104346843436360,0.1039744019508362,-0.0320337712764740,-0.0218102410435677,-0.0372525639832020,-0.0835948660969734,0.0314240530133247,0.1229261904954910,0.2322671413421631,-0.0461357422173023,-0.0560264177620411,-0.0744981095194817,-0.0608928501605988,-0.1218188181519508,0.0849183574318886,0.1035603359341621));
res += mul(Get(s5,0,0), float4x4(-0.0928016901016235,0.1048581525683403,-0.0743401944637299,0.0767234191298485,0.3988448679447174,0.3652766942977905,0.3698551356792450,0.3307206034660339,0.2233031392097473,0.2914538085460663,0.2033535391092300,0.2394742667675018,-0.1046293824911118,-0.1083734780550003,0.1035375669598579,0.1170095503330231));
res += mul(Get(s0,0,dy), float4x4(-0.0095587000250816,0.0426910556852818,-0.0278070624917746,-0.0240292157977819,0.0061301919631660,0.0073746447451413,0.0063267820514739,-0.0023755279835314,-0.0062102982774377,-0.0266749616712332,-0.0204253569245338,0.0122991455718875,0.0197813156992197,-0.0311180707067251,-0.0049157436005771,-0.0098496945574880));
res += mul(Get(s1,0,dy), float4x4(0.0403542742133141,-0.0178914703428745,0.0412286445498466,-0.0079249963164330,-0.0243103262037039,-0.0183822866529226,-0.0277606192976236,-0.0410009883344173,-0.0249219443649054,0.0370201617479324,-0.0113724069669843,0.0266171153634787,0.0417480245232582,0.0094292573630810,0.0212576445192099,-0.0068376199342310));
res += mul(Get(s2,0,dy), float4x4(-0.0015356484800577,0.0073860199190676,0.0016394313424826,-0.0041681420989335,0.0348109230399132,0.0354757197201252,-0.0049034203402698,-0.0859815403819084,0.0050211162306368,0.0262710116803646,-0.0034997605253011,-0.0019674922805279,-0.0006746149156243,-0.0131502719596028,-0.0004434622533154,-0.0381033234298229));
res += mul(Get(s3,0,dy), float4x4(-0.0022379602305591,0.0203735921531916,0.0052160318009555,-0.0166364628821611,0.0059564560651779,0.0278552640229464,0.0274596903473139,-0.0150099787861109,0.0012898726854473,0.0132904388010502,-0.0018219461198896,0.0029054118786007,-0.0176079869270325,-0.0069818100892007,-0.0099874613806605,0.0245363898575306));
res += mul(Get(s4,0,dy), float4x4(0.0103302691131830,-0.0050219828262925,0.0080807739868760,0.0066107409074903,-0.0019298071274534,-0.0083649912849069,0.0101656327024102,0.0052187028340995,-0.0301411002874374,0.0274778250604868,-0.0064792577177286,-0.0503191165626049,-0.0073749823495746,-0.0086948238313198,0.0021567384246737,0.0127631332725286));
res += mul(Get(s5,0,dy), float4x4(0.0190808828920126,-0.0000545240218344,0.0151323648169637,0.0071333772502840,-0.0059633646160364,0.0204634908586740,-0.0094533376395702,0.0145618561655283,0.0052561699412763,0.0163968484848738,0.0067547350190580,0.0126355728134513,-0.0195899661630392,-0.0562181212007999,0.0339275561273098,0.0454214289784431));
res += mul(Get(s0,dx,-dy), float4x4(-0.0119152367115021,-0.0148937236517668,0.0134164402261376,-0.0110055478289723,-0.0122099760919809,-0.0026740573812276,-0.0047342884354293,-0.0052021495066583,0.0071483175270259,0.0008251131512225,-0.0134505229070783,-0.0045718834735453,0.0024162873160094,-0.0133019639179111,0.0047696828842163,-0.0006383073050529));
res += mul(Get(s1,dx,-dy), float4x4(0.0012494038091972,-0.0015707254642621,0.0028183069080114,-0.0063793426379561,0.0129637354984879,0.0057815406471491,0.0244054440408945,0.0132722109556198,-0.0002236681757495,-0.0147715928032994,0.0099250106140971,-0.0165159888565540,-0.0074410918168724,-0.0038717568386346,-0.0207554250955582,-0.0011694707209244));
res += mul(Get(s2,dx,-dy), float4x4(-0.0010393229313195,0.0032633030787110,-0.0002701982739381,-0.0009344206773676,0.0018925145268440,-0.0110063906759024,-0.0246798004955053,0.0149777056649327,-0.0093695074319839,-0.0094691086560488,0.0030717321205884,-0.0018293532775715,-0.0047419848851860,-0.0017133374931291,0.0072974083013833,0.0074599836952984));
res += mul(Get(s3,dx,-dy), float4x4(0.0240272469818592,0.0142679307609797,-0.0100089870393276,0.0002683317579795,0.0013563556130975,-0.0019469877006486,0.0111548630520701,-0.0111690089106560,0.0023728720843792,-0.0020072625484318,-0.0006494345725514,-0.0108958445489407,-0.0016723992303014,0.0000522837508470,-0.0001965486299014,0.0030477829277515));
res += mul(Get(s4,dx,-dy), float4x4(-0.0045261769555509,-0.0026268106885254,-0.0037187123671174,-0.0049067386426032,0.0109407687559724,0.0086074667051435,0.0047876769676805,-0.0016043715877458,-0.0105328699573874,-0.0007119294023141,0.0100791743025184,0.0064026885665953,0.0041281403973699,0.0017437614733353,0.0092194061726332,-0.0068533937446773));
res += mul(Get(s5,dx,-dy), float4x4(0.0026228732895106,-0.0046985964290798,-0.0027080369181931,-0.0170073248445988,-0.0118350824341178,-0.0078185154125094,-0.0090719945728779,-0.0062194904312491,-0.0101156020537019,-0.0097503615543246,-0.0043860352598131,-0.0051225633360445,0.0164162199944258,0.0154512217268348,0.0164068285375834,-0.0032269370276481));
res += mul(Get(s0,dx,0), float4x4(0.0239062383770943,0.0179407875984907,-0.0439345799386501,0.0333280116319656,0.0234176702797413,0.0022351986262947,0.0421966165304184,0.0052873119711876,0.0240893401205540,0.0159781146794558,-0.0097594670951366,0.0075116665102541,0.0183284748345613,-0.0059367720969021,-0.0227719452232122,0.0021321622189134));
res += mul(Get(s1,dx,0), float4x4(-0.0050523579120636,-0.0041319518350065,-0.0099235912784934,0.0174171775579453,-0.0265956986695528,-0.0265469346195459,-0.0353024564683437,-0.0362589880824089,-0.0241592507809401,0.0000933798364713,-0.0077726361341774,0.0194042194634676,0.0394308641552925,0.0139812501147389,-0.0202674660831690,-0.0093240747228265));
res += mul(Get(s2,dx,0), float4x4(-0.0098525350913405,-0.0077719278633595,-0.0009741481626406,-0.0014281516196206,0.0763085186481476,0.0572227351367474,-0.1009464785456657,-0.1069923415780067,-0.0171391908079386,-0.0117039969190955,-0.0031117899343371,0.0208240617066622,0.0146469688042998,0.0129783274605870,0.0169828683137894,-0.0249874182045460));
res += mul(Get(s3,dx,0), float4x4(0.0074386787600815,0.0545544512569904,0.0375669002532959,-0.0190588776022196,0.0017175998073071,0.0012743067927659,-0.0019034246215597,-0.0021484817843884,0.0288050472736359,0.0111293308436871,-0.0556255877017975,0.0086943693459034,-0.0150819765403867,-0.0073189786635339,-0.0121057666838169,0.0194358583539724));
res += mul(Get(s4,dx,0), float4x4(0.0027002613060176,-0.0070063704624772,-0.0282317250967026,0.0011821127263829,0.0187810789793730,0.0172914303839207,0.0024520028382540,-0.0008827072451822,-0.0238325465470552,-0.0101513182744384,-0.0063984678126872,-0.0435892306268215,0.0137590933591127,0.0153098907321692,0.0020414309110492,0.0195628385990858));
res += mul(Get(s5,dx,0), float4x4(-0.0102163739502430,0.0069882157258689,-0.0388059802353382,0.0412770174443722,0.0070706037804484,0.0025332893710583,0.0214601084589958,0.0008208646322601,-0.0155741972848773,-0.0060685565695167,0.0149243390187621,0.0280635952949524,0.0134204132482409,0.0045297159813344,0.0147867491468787,0.0323110781610012));
res += mul(Get(s0,dx,dy), float4x4(0.0051518143154681,0.0010858558816835,-0.0038239273708314,0.0028358646668494,-0.0121141364797950,0.0000041432867874,-0.0123830307275057,-0.0109649142250419,-0.0036104372702539,0.0088385660201311,-0.0072808694094419,-0.0025439260061830,-0.0030142394825816,0.0001383329363307,0.0005081578274257,0.0130093451589346));
res += mul(Get(s1,dx,dy), float4x4(-0.0000205497635761,-0.0000282524197246,0.0196799095720053,-0.0083337416872382,0.0066047613508999,0.0087761413305998,0.0081743774935603,0.0141344275325537,0.0023463875986636,-0.0056778532452881,-0.0009717626962811,0.0109668867662549,-0.0042424658313394,0.0011098067043349,0.0037015159614384,-0.0163282174617052));
res += mul(Get(s2,dx,dy), float4x4(0.0000002274414328,-0.0036117900162935,0.0015933400718495,-0.0002839041699190,-0.0147922942414880,0.0092321531847119,0.0039933240041137,-0.0210570674389601,-0.0008384988759644,-0.0077977883629501,0.0058173662982881,0.0045993118546903,-0.0082740448415279,0.0075453161261976,-0.0160305034369230,0.0037509810645133));
res += mul(Get(s3,dx,dy), float4x4(-0.0028564473614097,-0.0093933343887329,-0.0027052760124207,0.0040968419052660,-0.0047666337341070,-0.0040585398674011,-0.0049777636304498,0.0155249144881964,0.0007051600259729,0.0109045319259167,0.0035107019357383,-0.0093283830210567,0.0093338722363114,0.0064105377532542,0.0081977499648929,-0.0186741016805172));
res += mul(Get(s4,dx,dy), float4x4(0.0019293975783512,0.0012792700435966,0.0037853026296943,-0.0027383493725210,0.0019271111814305,0.0018056437838823,0.0011062129633501,0.0023906682617962,-0.0044186296872795,-0.0065709273330867,-0.0047478908672929,-0.0094443485140800,0.0026168650947511,0.0072289784438908,0.0024938392452896,-0.0039507914334536));
res += mul(Get(s5,dx,dy), float4x4(0.0115693472325802,-0.0026495053898543,0.0120683331042528,-0.0024621407501400,-0.0067666294053197,-0.0048601953312755,-0.0092753721401095,-0.0006734657799825,0.0008724518702365,-0.0082004638388753,-0.0021271735895425,0.0031052334234118,0.0195679925382137,0.0206193979829550,-0.0071554509922862,-0.0010334376711398));
return float4(res);
}
