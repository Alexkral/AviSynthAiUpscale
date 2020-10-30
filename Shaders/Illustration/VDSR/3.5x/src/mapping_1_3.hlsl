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
res += mul(Get(s0,-dx,-dy), float4x4(-0.091741360723972,-0.043883871287107,-0.555789291858673,-0.412502795457840,-0.057919178158045,-0.104006975889206,-0.099943794310093,0.108758352696896,-0.072139084339142,-0.178231894969940,-0.237516283988953,-0.007684496231377,0.001040386850946,0.000447765749414,0.006742242258042,0.009330197237432));
res += mul(Get(s0,-dx,0), float4x4(-0.066392876207829,0.331538617610931,-0.160807564854622,-0.931182503700256,-0.043723471462727,-0.308459639549255,-0.333488255739212,-0.044572804123163,-0.041833527386189,0.028574099764228,0.040856670588255,-0.197901263833046,0.008900588378310,-0.004608115181327,0.004719859454781,-0.011306380853057));
res += mul(Get(s0,-dx,dy), float4x4(-0.131662636995316,0.335087776184082,0.784885585308075,-0.846310436725616,-0.094201631844044,-0.212867155671120,-0.370861709117889,0.136863186955452,-0.050708450376987,-0.228097021579742,0.393526703119278,-0.104384943842888,-0.001625459757634,-0.013131395913661,0.010361289605498,-0.001637839130126));
res += mul(Get(s0,0,-dy), float4x4(0.170794323086739,0.062006175518036,-0.202371969819069,0.289819598197937,0.042464248836040,-0.187289640307426,-0.081213593482971,0.122776128351688,0.095746845006943,0.018463736400008,-0.060638885945082,-0.126297771930695,0.004556939937174,-0.003092792816460,0.009208468720317,0.000345817737980));
res += mul(Get(s0,0,0), float4x4(0.066539302468300,0.233270958065987,-0.090405642986298,-0.194479838013649,0.037707541137934,0.186743095517159,-0.439284533262253,-0.216779142618179,-0.014347993768752,0.125587522983551,0.232895910739899,-0.196888118982315,0.007524229586124,-0.005364745855331,0.007199643645436,-0.007698690518737));
res += mul(Get(s0,0,dy), float4x4(0.007583925500512,0.090631879866123,0.560779929161072,-0.387760043144226,-0.093808174133301,0.330618530511856,-0.098773032426834,0.032401535660028,-0.068408377468586,-0.149358510971069,0.242032468318939,-0.045771922916174,-0.016995735466480,0.008544700220227,-0.002536698710173,-0.014792609028518));
res += mul(Get(s0,dx,-dy), float4x4(-0.083723857998848,-0.071718640625477,-0.134904101490974,0.966251492500305,0.013591575436294,-0.124964348971844,0.066549211740494,0.155697539448738,-0.147896707057953,-0.128823041915894,-0.113844811916351,0.460648268461227,0.003978386987001,-0.013581198640168,-0.011805910617113,0.003365079406649));
res += mul(Get(s0,dx,0), float4x4(-0.088621407747269,-0.192634984850883,-0.263245791196823,0.907791912555695,-0.038375753909349,0.187287107110023,-0.411068737506866,-0.055494338274002,-0.247315093874931,-0.042873755097389,-0.027878507971764,0.449731677770615,-0.002671534195542,-0.005819905549288,-0.003871222957969,0.004167465027422));
res += mul(Get(s0,dx,dy), float4x4(-0.048354979604483,-0.140604063868523,-0.040620759129524,0.474104076623917,-0.061266604810953,0.378948897123337,-0.116299740970135,0.140350863337517,-0.157278493046761,-0.124173857271671,-0.209200829267502,0.318627625703812,-0.009138187393546,0.000149286905071,0.011082706041634,-0.001755584729835));
res += mul(Get(s1,-dx,-dy), float4x4(-0.111958131194115,0.145301625132561,-0.362504303455353,-0.195085316896439,-0.015773601830006,-0.036280184984207,-0.100086644291878,-0.081690065562725,0.012784430757165,-0.013048618100584,0.010116153396666,-0.198266640305519,0.005116790067405,0.013669264502823,-0.003892461070791,0.002466453239322));
res += mul(Get(s1,-dx,0), float4x4(-0.045618955045938,-0.041466780006886,-0.121265932917595,-0.017315372824669,-0.011981377378106,-0.081860415637493,-0.068266302347183,-0.091861411929131,-0.013028224930167,-0.223399624228477,-0.083170749247074,-0.242097571492195,0.000231604048167,0.005445610731840,0.008148071356118,0.001122275483795));
res += mul(Get(s1,-dx,dy), float4x4(-0.083602771162987,-0.083547487854958,0.017961494624615,-0.080126233398914,-0.018908744677901,-0.061661712825298,-0.108632840216160,-0.167742446064949,-0.008232146501541,-0.094262622296810,-0.143705442547798,-0.326944231987000,0.004946523811668,-0.013429556973279,-0.002696048934013,-0.007656787056476));
res += mul(Get(s1,0,-dy), float4x4(0.071960367262363,0.198875918984413,-0.245854556560516,-0.144220143556595,-0.001259667449631,0.049200162291527,-0.044030901044607,-0.056497287005186,-0.013522360473871,-0.102496676146984,0.004549452103674,-0.000136378381285,-0.009364138357341,-0.005669222213328,-0.005970498546958,-0.005986179225147));
res += mul(Get(s1,0,0), float4x4(-0.077247940003872,0.151942446827888,0.103229716420174,-0.081325642764568,-0.015819791704416,0.066169284284115,-0.040651954710484,-0.071738846600056,-0.007147184107453,-0.130766123533249,-0.087792254984379,-0.036792691797018,0.008287819102407,-0.002566269598901,0.003487594891340,0.002128861146048));
res += mul(Get(s1,0,dy), float4x4(-0.110058166086674,-0.065358452498913,0.401250630617142,-0.295535206794739,-0.025551514700055,-0.010068533010781,-0.068122379481792,-0.163308709859848,-0.021020194515586,-0.130035623908043,-0.038327865302563,-0.055474530905485,0.015534097328782,-0.008820932358503,-0.006626927759498,0.005995734594762));
res += mul(Get(s1,dx,-dy), float4x4(0.002656523371115,0.112558029592037,-0.215396434068680,0.327065289020538,-0.029198890551925,0.056216958910227,-0.004827137105167,0.010203476063907,-0.044985290616751,-0.020488573238254,0.004983229562640,0.058204516768456,0.016543349251151,-0.005607860628515,-0.012843183241785,0.006976455450058));
res += mul(Get(s1,dx,0), float4x4(-0.110715351998806,0.088497802615166,-0.125837162137032,0.187107563018799,-0.036981776356697,0.131135031580925,-0.021639294922352,-0.041446018964052,-0.015712134540081,0.069736473262310,-0.083161935210228,-0.052030570805073,0.002476752502844,0.002251132624224,-0.011190913617611,-0.007420977577567));
res += mul(Get(s1,dx,dy), float4x4(-0.110725656151772,-0.071927666664124,0.053591828793287,-0.258137613534927,-0.034686930477619,0.038540441542864,-0.050628408789635,-0.122230067849159,-0.024834068492055,0.065241813659668,0.131352439522743,-0.053969386965036,0.003330405801535,-0.009539773687720,0.009794435463846,-0.003049792954698));
res += mul(Get(s2,-dx,-dy), float4x4(0.007686255965382,-0.098666548728943,0.089022204279900,-0.145435526967049,-0.022595366463065,-0.174403503537178,0.027863286435604,0.081820234656334,-0.004656703677028,-0.007136947941035,-0.004823563620448,-0.003961677197367,-0.008470270782709,-0.012157835066319,-0.031141607090831,-0.016434462741017));
res += mul(Get(s2,-dx,0), float4x4(-0.029781904071569,-0.109498046338558,0.121393136680126,-0.178739249706268,0.037018660455942,-0.171189904212952,-0.112099356949329,-0.124470807611942,-0.005576986819506,-0.000837189087179,-0.007162770256400,0.006555798463523,0.005382427480072,-0.000343353050994,-0.031387664377689,-0.006427534390241));
res += mul(Get(s2,-dx,dy), float4x4(0.010721214115620,-0.105689637362957,-0.134163245558739,-0.549670398235321,0.008456771261990,-0.119844056665897,0.090555325150490,0.106271721422672,0.001683427952230,0.006403151899576,0.000976991024800,-0.006689726375043,0.003285786369815,0.011876621283591,-0.011244655586779,-0.004995156545192));
res += mul(Get(s2,0,-dy), float4x4(-0.085014156997204,-0.193811416625977,-0.078963980078697,0.197537302970886,0.182948753237724,-0.326673746109009,-0.137447699904442,0.028660818934441,-0.005636804737151,-0.006740445736796,-0.008742065168917,-0.001463122433051,0.002644708845764,-0.000178714966751,-0.009912715293467,0.000585572386626));
res += mul(Get(s2,0,0), float4x4(0.000912770221476,-0.098514750599861,-0.100005716085434,0.188122034072876,0.117400087416172,0.272763699293137,-0.183863520622253,-0.251031696796417,0.012677281163633,-0.002948871348053,0.001091411453672,-0.007569249719381,-0.005116256885231,0.001104842172936,-0.024622309952974,-0.017298929393291));
res += mul(Get(s2,0,dy), float4x4(0.053258448839188,0.010096509940922,-0.096116021275520,-0.452035576105118,-0.147684037685394,0.391633242368698,0.394403755664825,-0.034073326736689,-0.001189435948618,0.011966416612267,0.000548648298718,-0.004260327201337,-0.001778337289579,0.005430398043245,-0.016808284446597,-0.030793819576502));
res += mul(Get(s2,dx,-dy), float4x4(-0.123818159103394,-0.134321942925453,0.097195819020271,0.193841367959976,0.015898790210485,0.009706171229482,0.046999890357256,0.095580421388149,-0.015866985544562,0.004007207695395,-0.005578213371336,-0.002322887768969,0.010500747710466,0.000128819490783,-0.008930053561926,0.009474518708885));
res += mul(Get(s2,dx,0), float4x4(-0.156338185071945,0.015903087332845,0.047804787755013,0.414416223764420,-0.023261835798621,-0.079044580459595,-0.226276040077209,-0.045773949474096,0.002845560666174,-0.007049564272165,-0.012529711239040,-0.002514271298423,0.004500009585172,-0.005847449414432,-0.015074196271598,-0.009781243279576));
res += mul(Get(s2,dx,dy), float4x4(-0.100135929882526,-0.002365191932768,-0.124119982123375,-0.000360448349966,-0.025179067626595,-0.154124632477760,0.133512094616890,-0.037524715065956,0.013690383173525,0.004439449403435,-0.004373680800200,0.002892938675359,0.000992179499008,-0.002934554126114,-0.015499600209296,-0.020973443984985));
res += mul(Get(s3,-dx,-dy), float4x4(-0.124898679554462,-0.127535730600357,-0.014150831848383,-0.104352004826069,-0.004105247091502,0.005967082455754,0.002965811640024,0.009878866374493,-0.098281502723694,-0.094344548881054,0.037878829985857,-0.036032401025295,-0.009747227653861,-0.118777111172676,-0.113127939403057,0.016188772395253));
res += mul(Get(s3,-dx,0), float4x4(-0.021447213366628,-0.111924812197685,-0.064645566046238,-0.049310162663460,-0.018729275092483,-0.001942697796039,-0.007582552731037,-0.000958593969699,-0.082383714616299,-0.208658218383789,-0.212672755122185,0.029674416407943,-0.079114876687527,-0.087550997734070,0.167118564248085,-0.015601818449795));
res += mul(Get(s3,-dx,dy), float4x4(-0.042215496301651,-0.193117246031761,-0.161108747124672,0.024376574903727,0.001349719590507,0.003942466340959,-0.003636312205344,0.000765361648519,-0.091781780123711,-0.119236506521702,-0.386177748441696,-0.067117802798748,-0.073703765869141,-0.073482722043991,-0.056924972683191,0.083400055766106));
res += mul(Get(s3,0,-dy), float4x4(-0.010177866555750,0.182250216603279,0.239987149834633,-0.149431809782982,-0.005456168670207,-0.006260160356760,0.004477235488594,0.005153831094503,0.027501566335559,-0.199989825487137,-0.076288819313049,-0.229759231209755,-0.042210403829813,-0.111966326832771,-0.170866012573242,0.053736042231321));
res += mul(Get(s3,0,0), float4x4(-0.130752176046371,0.139775544404984,0.403623223304749,-0.004948341287673,0.014707393012941,0.003979039844126,0.008023834787309,-0.006157763302326,-0.055244799703360,-0.068416707217693,0.007819532416761,-0.156229332089424,0.047520611435175,-0.014068654738367,0.120325349271297,0.052092455327511));
res += mul(Get(s3,0,dy), float4x4(-0.149083301424980,-0.107675239443779,0.076981760561466,-0.219227954745293,0.003075839020312,0.001439671032131,-0.000163831718965,-0.012697389349341,-0.085801549255848,-0.122241109609604,0.146880105137825,-0.128392547369003,-0.019477887079120,0.010938441380858,-0.174112230539322,0.054032016545534));
res += mul(Get(s3,dx,-dy), float4x4(-0.041592620313168,-0.049009107053280,-0.037616554647684,0.097107499837875,-0.013375440612435,-0.016015827655792,0.011359228752553,0.005608063656837,0.024269444867969,-0.107524022459984,-0.414821565151215,-0.190519839525223,-0.021146601065993,-0.081567622721195,0.001141605433077,-0.003403297159821));
res += mul(Get(s3,dx,0), float4x4(-0.103718586266041,-0.028862979263067,0.004069776739925,0.334253519773483,0.002086270367727,-0.011486694216728,-0.004014553502202,-0.002214380307123,-0.078248344361782,0.110589832067490,-0.133115485310555,0.050682567059994,-0.012760072015226,-0.040756151080132,0.193128407001495,0.140454560518265));
res += mul(Get(s3,dx,dy), float4x4(-0.080118373036385,-0.174043238162994,-0.089798726141453,-0.109084963798523,0.014166870154440,-0.011552101932466,-0.004375925753266,0.012323205359280,-0.119244508445263,-0.002446208614856,0.555739939212799,0.039729248732328,-0.020147193223238,-0.052410650998354,-0.052014701068401,0.004693509545177));
return max(float4(0,0,0,0), res);
}
