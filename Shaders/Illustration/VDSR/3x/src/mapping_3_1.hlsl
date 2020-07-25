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
res += mul(Get(s0,-dx,-dy), float4x4(-0.120929688215256,-0.151658162474632,0.046340815722942,0.085236512124538,0.149188533425331,0.022732624784112,-0.197709903120995,0.085460752248764,-0.093860089778900,0.008345456793904,-0.002595270052552,-0.259918630123138,-0.168662190437317,-0.109575316309929,-0.114411100745201,-0.085789598524570));
res += mul(Get(s0,-dx,0), float4x4(-0.233113199472427,-0.001604390679859,-0.215474843978882,0.042980175465345,0.130836620926857,0.076603204011917,0.026216048747301,0.048017956316471,-0.007765542250127,-0.112195394933224,-0.138510301709175,-0.179873764514923,-0.109159775078297,0.315569192171097,-0.213347330689430,-0.091741569340229));
res += mul(Get(s0,-dx,dy), float4x4(-0.163062512874603,-0.114166401326656,-0.060616221278906,0.067461326718330,-0.090326383709908,0.160946533083916,0.177776008844376,0.085995048284531,0.091695539653301,-0.144080415368080,-0.024637227877975,-0.102401539683342,0.142282605171204,0.050919253379107,-0.156347811222076,-0.050392452627420));
res += mul(Get(s0,0,-dy), float4x4(0.297036379575729,0.117588758468628,0.065966680645943,-0.247267886996269,0.157392770051956,-0.032371070235968,-0.185777202248573,-0.017087742686272,-0.018892096355557,0.052230231463909,-0.049269687384367,0.029555244371295,-0.046476565301418,-0.069095626473427,0.031848181039095,0.087023727595806));
res += mul(Get(s0,0,0), float4x4(0.052371393889189,-0.143528729677200,-0.015090017579496,-0.033379066735506,0.009222980588675,0.100177466869354,0.046546366065741,-0.012941931374371,-0.100484699010849,-0.002151212655008,-0.075418487191200,-0.095387510955334,-0.027122600004077,0.064524888992310,-0.033646363765001,-0.057431064546108));
res += mul(Get(s0,0,dy), float4x4(-0.137341111898422,-0.124439686536789,-0.209672555327415,-0.212197735905647,0.158412739634514,0.014058535918593,0.172062784433365,0.113196410238743,0.160190552473068,0.090453810989857,0.160167396068573,-0.007909781299531,0.019670194014907,0.148834571242332,0.087546490132809,0.080726064741611));
res += mul(Get(s0,dx,-dy), float4x4(0.248231008648872,-0.120554693043232,-0.039371810853481,0.009972165338695,-0.050511684268713,0.218500494956970,0.038438938558102,0.115605823695660,-0.031215300783515,-0.092338696122169,-0.009607560932636,0.036119252443314,0.133231759071350,0.078783608973026,-0.045429453253746,0.036511972546577));
res += mul(Get(s0,dx,0), float4x4(0.282347232103348,-0.004016389138997,-0.018515666946769,0.072668306529522,0.009673736989498,0.036949943751097,0.063455902040005,-0.059677556157112,0.067130148410797,-0.106955826282501,0.077601775527000,-0.145136222243309,0.024921707808971,0.109200872480869,-0.152548342943192,0.018519362434745));
res += mul(Get(s0,dx,dy), float4x4(-0.023379722610116,0.096554510295391,0.001093330443837,0.135655656456947,0.151805564761162,-0.022587928920984,-0.033796835690737,-0.202559992671013,-0.047863386571407,-0.037926696240902,0.047636318951845,-0.075877323746681,-0.031905617564917,0.055300902575254,0.002180198905990,0.106009557843208));
res += mul(Get(s1,-dx,-dy), float4x4(-0.071673192083836,-0.167599245905876,0.139925613999367,0.257538884878159,-0.111071132123470,-0.204375088214874,0.051561716943979,0.144922852516174,-0.030043220147491,0.047985803335905,0.081421278417110,-0.168369039893150,-0.048438884317875,0.137245476245880,-0.056362539529800,-0.117661826312542));
res += mul(Get(s1,-dx,0), float4x4(0.127659514546394,-0.101687625050545,0.021790942177176,0.169518634676933,0.025272130966187,0.040738090872765,-0.109939947724342,-0.049865245819092,-0.046907365322113,0.078551717102528,-0.114487767219543,-0.090801849961281,0.043535396456718,0.325685679912567,0.053189799189568,0.015281898900867));
res += mul(Get(s1,-dx,dy), float4x4(-0.236786156892776,0.139568567276001,-0.009977926500142,-0.178593605756760,0.226159185171127,-0.077614463865757,-0.042567774653435,0.317636042833328,-0.118149153888226,0.097296841442585,0.103584736585617,-0.101672597229481,0.090081371366978,-0.268852084875107,0.091066054999828,-0.049754343926907));
res += mul(Get(s1,0,-dy), float4x4(-0.095406442880630,-0.013607841916382,-0.037776041775942,0.056449022144079,0.022974012419581,-0.098739638924599,-0.017410581931472,0.041229978203773,-0.091646589338779,0.157605156302452,-0.050254140049219,0.011238127015531,-0.023958330973983,-0.026671858504415,-0.015664106234908,-0.001343832002021));
res += mul(Get(s1,0,0), float4x4(0.143464639782906,0.013158028945327,0.138767346739769,-0.150449678301811,-0.083942860364914,-0.173662200570107,-0.072999425232410,0.120856583118439,-0.096875213086605,-0.123897619545460,-0.058532580733299,0.168428003787994,0.126804009079933,0.014123182743788,-0.061956908553839,0.081236205995083));
res += mul(Get(s1,0,dy), float4x4(0.061705309897661,0.091637790203094,0.115784950554371,-0.229099631309509,0.084693573415279,-0.055933557450771,-0.073541603982449,0.000076614043792,-0.065333575010300,-0.011381606571376,0.125440284609795,0.252354323863983,0.022873871028423,-0.158434927463531,0.029523709788918,-0.109607383608818));
res += mul(Get(s1,dx,-dy), float4x4(-0.198290556669235,-0.106542415916920,-0.038913704454899,-0.145247608423233,-0.053363025188446,0.003173997392878,-0.028789188712835,-0.032177545130253,0.199789792299271,0.152656391263008,0.015230649150908,-0.198212951421738,0.042961530387402,-0.078540965914726,0.040093936026096,-0.016358546912670));
res += mul(Get(s1,dx,0), float4x4(0.047084257006645,0.001668090233579,-0.141911655664444,-0.253411203622818,-0.069693632423878,0.150185182690620,-0.052910748869181,-0.080581977963448,0.062741808593273,0.047967765480280,-0.054476261138916,0.047067545354366,-0.036499090492725,0.177741944789886,-0.058157779276371,-0.191812396049500));
res += mul(Get(s1,dx,dy), float4x4(0.080370560288429,-0.042568579316139,-0.080661311745644,-0.127314940094948,0.048755131661892,-0.114900007843971,-0.138747200369835,0.041555035859346,-0.058798592537642,0.141045376658440,-0.096272528171539,-0.050443194806576,-0.155795097351074,0.019188070669770,0.156986147165298,-0.046691391617060));
res += mul(Get(s2,-dx,-dy), float4x4(-0.154212668538094,0.038504280149937,-0.055918406695127,0.108100369572639,-0.103147916495800,-0.047977112233639,0.042965147644281,0.030474403873086,0.131155833601952,0.266572088003159,-0.149521917104721,0.109056204557419,0.026630470529199,-0.074240513145924,0.088070996105671,-0.082963392138481));
res += mul(Get(s2,-dx,0), float4x4(0.037663098424673,0.182074069976807,0.063347421586514,-0.192063227295876,-0.001672375248745,-0.097755998373032,-0.096447154879570,0.009237540885806,-0.014910847879946,0.100106365978718,-0.019338091835380,-0.047392081469297,0.222270980477333,0.012597156688571,-0.046000890433788,0.074099905788898));
res += mul(Get(s2,-dx,dy), float4x4(-0.132391452789307,-0.014787092804909,0.096788786351681,0.043809186667204,0.147614032030106,-0.050679646432400,-0.171222239732742,-0.017843469977379,0.001387240015902,0.077720150351524,-0.001236397656612,0.101314872503281,-0.176668256521225,-0.088699772953987,-0.189212158322334,0.079812243580818));
res += mul(Get(s2,0,-dy), float4x4(0.144498899579048,-0.084051229059696,-0.003325379453599,-0.157365053892136,0.107519291341305,0.056910116225481,-0.310755252838135,-0.011553449556231,-0.164408221840858,0.005441066808999,0.074089415371418,0.021465068683028,0.070672057569027,-0.132942155003548,0.033786650747061,-0.031801179051399));
res += mul(Get(s2,0,0), float4x4(0.004154558759183,-0.143155276775360,-0.051523074507713,0.028958346694708,0.017660535871983,-0.044816199690104,0.032715067267418,0.157844156026840,0.051625698804855,0.018311535939574,0.010825355537236,-0.070103146135807,-0.149335876107216,-0.207726582884789,-0.126751244068146,0.106670424342155));
res += mul(Get(s2,0,dy), float4x4(-0.163500055670738,-0.008309205994010,0.080559439957142,-0.052212417125702,0.188281357288361,0.063171669840813,0.106333948671818,-0.009824889712036,0.009751494042575,0.074764840304852,-0.091872058808804,-0.093999221920967,-0.214169159531593,0.019965447485447,0.161859765648842,-0.022531880065799));
res += mul(Get(s2,dx,-dy), float4x4(0.210718423128128,-0.087609894573689,-0.202801689505577,-0.028687156736851,0.015339384786785,0.023148095235229,-0.077203154563904,-0.043406166136265,0.062641292810440,-0.057696953415871,-0.173222526907921,0.019910749047995,-0.155906453728676,0.205031931400299,0.011097611859441,-0.000312483811285));
res += mul(Get(s2,dx,0), float4x4(0.029188672080636,-0.003491700394079,-0.033747036010027,-0.164366379380226,0.058214876800776,0.013898562639952,0.220533862709999,-0.082080796360970,0.054422989487648,-0.165555194020271,-0.068516366183758,-0.013697428628802,-0.011837655678391,-0.039865270256996,0.036100618541241,0.159132659435272));
res += mul(Get(s2,dx,dy), float4x4(-0.018190009519458,0.000108513835585,-0.022191077470779,-0.089367315173149,-0.076873078942299,0.111393444240093,-0.071834355592728,-0.006475359667093,-0.079058729112148,0.054673615843058,-0.148178726434708,-0.103703945875168,-0.039777215570211,0.021491903811693,-0.072732254862785,-0.041219439357519));
res += mul(Get(s3,-dx,-dy), float4x4(0.088671453297138,-0.019900664687157,0.033390220254660,-0.215371862053871,-0.072051286697388,0.117303259670734,0.066734515130520,0.117557190358639,-0.049694836139679,0.014770748093724,0.013496056199074,0.001977960579097,0.024763731285930,0.144553139805794,0.004311828874052,0.206031575798988));
res += mul(Get(s3,-dx,0), float4x4(-0.066645890474319,0.045750331133604,0.028434179723263,-0.130895778536797,-0.039866887032986,-0.123353965580463,-0.062069006264210,0.067076586186886,0.033570393919945,-0.051723416894674,0.179578691720963,-0.046797122806311,0.169719785451889,-0.148486509919167,-0.056405443698168,0.126293569803238));
res += mul(Get(s3,-dx,dy), float4x4(-0.137099191546440,0.266192138195038,0.034655552357435,0.034245289862156,0.066647358238697,0.040723592042923,0.048560731112957,0.159637928009033,0.302886724472046,0.019607953727245,-0.259426444768906,0.014171759597957,0.039585795253515,0.117259711027145,-0.073797710239887,0.156631141901016));
res += mul(Get(s3,0,-dy), float4x4(-0.092526063323021,-0.137657463550568,-0.050538409501314,-0.023013660684228,0.018763776868582,0.024073094129562,-0.057558480650187,0.074403196573257,0.170061230659485,-0.150534823536873,-0.207898274064064,0.063671305775642,-0.086377449333668,-0.062240939587355,-0.040597688406706,0.024925647303462));
res += mul(Get(s3,0,0), float4x4(-0.080413281917572,0.006408729124814,0.090166173875332,0.312848061323166,0.038498651236296,0.183730676770210,0.138983681797981,-0.399731099605560,0.048531215637922,0.073265179991722,0.151279628276825,0.129091039299965,0.149288907647133,-0.168928608298302,0.081573598086834,-0.100382067263126));
res += mul(Get(s3,0,dy), float4x4(0.088671572506428,-0.115550644695759,-0.289065718650818,-0.165970787405968,0.169199988245964,0.113449178636074,0.095688626170158,-0.107470892369747,-0.052248127758503,0.058564160019159,0.189627617597580,-0.118556305766106,-0.021504510194063,0.358442842960358,-0.022787785157561,0.079523459076881));
res += mul(Get(s3,dx,-dy), float4x4(-0.193921238183975,0.007521654013544,0.011204255744815,-0.016199681907892,0.097792759537697,-0.018228992819786,0.148016303777695,0.029593128710985,-0.070993028581142,0.133985444903374,-0.030857898294926,-0.052368175238371,-0.166862010955811,0.065667547285557,0.221099227666855,0.175774201750755));
res += mul(Get(s3,dx,0), float4x4(-0.209841221570969,0.017815919592977,0.106645062565804,0.013411319814622,-0.033495925366879,-0.159827247262001,-0.010051451623440,-0.091464020311832,-0.008070831187069,0.260695010423660,0.155911162495613,-0.067165561020374,0.010805360041559,-0.068952441215515,-0.043720144778490,0.033474043011665));
res += mul(Get(s3,dx,dy), float4x4(0.116780124604702,-0.118126608431339,-0.072691418230534,-0.166686460375786,-0.033170811831951,-0.126745626330376,0.025274701416492,0.033037971705198,-0.331554144620895,0.121482439339161,0.204123228788376,0.093961693346500,-0.063899107277393,-0.009798634797335,-0.067747958004475,0.103394716978073));
return max(float4(0,0,0,0), res);
}
