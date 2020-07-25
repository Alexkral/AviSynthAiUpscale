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
res += mul(Get(s0,-dx,-dy), float4x4(0.083345480263233,0.120795391499996,0.060804709792137,-0.014421091414988,0.061214432120323,-0.108525194227695,0.002416069619358,0.055214293301105,-0.010999656282365,0.106609404087067,-0.163148432970047,-0.073098652064800,-0.077219061553478,0.082102410495281,0.086675174534321,0.096151724457741));
res += mul(Get(s0,-dx,0), float4x4(0.322009444236755,0.144826382398605,-0.238057851791382,-0.106292009353638,0.086429029703140,0.021783420816064,0.228674620389938,0.041677333414555,0.117663592100143,0.043676331639290,-0.075732797384262,0.072798140347004,0.091528683900833,-0.117136731743813,0.015948407351971,-0.203724563121796));
res += mul(Get(s0,-dx,dy), float4x4(0.037306681275368,0.016382271423936,-0.210856050252914,0.114005967974663,0.066640242934227,0.023882441222668,-0.102121897041798,-0.018082166090608,0.038723472505808,-0.017578596249223,-0.095748424530029,-0.017990084365010,-0.060991801321507,-0.103047460317612,-0.029059089720249,-0.142857491970062));
res += mul(Get(s0,0,-dy), float4x4(-0.001455222838558,0.189071074128151,-0.174207255244255,0.013893997296691,-0.131748855113983,0.015598312020302,0.222710341215134,0.196454733610153,0.064949125051498,-0.157639592885971,-0.056007914245129,-0.098359502851963,0.131140574812889,0.134679064154625,-0.059703495353460,0.059004012495279));
res += mul(Get(s0,0,0), float4x4(0.204189136624336,-0.134477481245995,0.175277546048164,0.081226870417595,-0.257316708564758,0.155161187052727,-0.045924574136734,-0.146891459822655,-0.237938389182091,-0.133141383528709,-0.086350657045841,0.173143416643143,-0.018966842442751,-0.192674234509468,-0.130454421043396,-0.020359022542834));
res += mul(Get(s0,0,dy), float4x4(0.013417359441519,0.065752431750298,0.137026295065880,0.029050068929791,-0.090023182332516,0.035446755588055,-0.071629822254181,-0.069686815142632,-0.021048452705145,0.074688747525215,0.049920435994864,0.094632945954800,0.089827895164490,0.059318561106920,-0.030975824221969,-0.025263695046306));
res += mul(Get(s0,dx,-dy), float4x4(-0.119189202785492,0.251952141523361,-0.164468839764595,0.032581996172667,0.236396491527557,0.236739411950111,0.055709145963192,-0.030713247135282,0.023081729188561,0.090293817222118,0.114344611763954,0.162579059600830,0.243726804852486,0.090910196304321,0.017421130090952,0.122698962688446));
res += mul(Get(s0,dx,0), float4x4(0.060785260051489,0.060154449194670,-0.000076111566159,0.155860751867294,0.051325470209122,0.002164463745430,0.074945390224457,-0.056010879576206,-0.085544638335705,-0.174364075064659,-0.026586521416903,0.000061098631704,-0.003031396772712,-0.205562204122543,-0.022179568186402,0.184290945529938));
res += mul(Get(s0,dx,dy), float4x4(-0.080862276256084,-0.103955417871475,-0.077521108090878,-0.033334590494633,0.003673425177112,-0.019451789557934,0.022132484242320,-0.056931715458632,0.003985501360148,0.007159644272178,0.064208157360554,0.226241648197174,0.156647115945816,-0.010436748154461,0.023871367797256,0.035849977284670));
res += mul(Get(s1,-dx,-dy), float4x4(-0.101489089429379,-0.091341055929661,0.008831615559757,0.008738611824811,-0.128192409873009,-0.220376357436180,0.044763490557671,-0.085065618157387,-0.081958658993244,0.002671691356227,-0.052880525588989,-0.044154591858387,0.042620476335287,-0.055824976414442,-0.099380500614643,-0.178618356585503));
res += mul(Get(s1,-dx,0), float4x4(0.220971584320068,0.024879507720470,0.070586822926998,0.241903349757195,0.135270595550537,-0.192550197243690,-0.003134767292067,0.051966492086649,0.000403894955525,0.127374604344368,0.084391102194786,0.093388594686985,0.125054195523262,0.187940180301666,0.063634105026722,-0.058150518685579));
res += mul(Get(s1,-dx,dy), float4x4(-0.102061599493027,-0.047282837331295,-0.068134300410748,-0.014328351244330,-0.047852721065283,0.006822344381362,-0.054730705916882,0.061814978718758,0.085640624165535,-0.114275544881821,0.101863160729408,0.102747149765491,0.111873298883438,0.014904725365341,-0.010508489795029,-0.095525629818439));
res += mul(Get(s1,0,-dy), float4x4(-0.025188932195306,-0.123334310948849,-0.001866015023552,-0.038355387747288,0.040074404329062,-0.038569822907448,-0.045639719814062,0.173139140009880,0.091237157583237,0.236511036753654,0.056727036833763,-0.245473742485046,0.049690164625645,-0.146198883652687,0.113296702504158,-0.015632243826985));
res += mul(Get(s1,0,0), float4x4(-0.053128924220800,0.101122133433819,0.025138488039374,-0.067902490496635,-0.114499218761921,0.232559531927109,-0.176484808325768,0.242391794919968,-0.213979214429855,0.089272983372211,0.116906650364399,0.124516539275646,0.049239590764046,0.006434199865907,-0.133994817733765,0.039368357509375));
res += mul(Get(s1,0,dy), float4x4(-0.133998572826385,0.112123705446720,-0.040433302521706,-0.082542009651661,-0.025642709806561,0.043305687606335,0.127031549811363,-0.146146506071091,-0.068393088877201,-0.146330311894417,0.221211805939674,0.148893848061562,0.057310938835144,0.182891070842743,-0.099184110760689,-0.018159020692110));
res += mul(Get(s1,dx,-dy), float4x4(-0.165882170200348,-0.056480873376131,0.044166021049023,0.002705463441089,0.033115491271019,0.156365051865578,0.042781237512827,0.136637106537819,-0.109030656516552,0.172335624694824,-0.200965985655785,-0.035577829927206,-0.098263509571552,0.208115383982658,0.026091281324625,-0.202116757631302));
res += mul(Get(s1,dx,0), float4x4(0.060853093862534,0.046836357563734,-0.202317878603935,-0.093254365026951,-0.009487446397543,0.097839154303074,-0.132194340229034,0.007744859438390,-0.012101427651942,0.059938549995422,0.073065608739853,-0.026977105066180,-0.052620310336351,-0.051076088100672,-0.115689083933830,-0.027826018631458));
res += mul(Get(s1,dx,dy), float4x4(-0.159660786390305,-0.133378684520721,0.047800719738007,-0.202872216701508,0.235842958092690,-0.020695963874459,-0.170635730028152,-0.005459109321237,0.032884929329157,0.086945526301861,-0.006278512999415,0.004243213217705,-0.185927376151085,0.051848758012056,0.015507438220084,-0.010773255489767));
res += mul(Get(s2,-dx,-dy), float4x4(0.125453025102615,-0.083712667226791,-0.044755034148693,-0.194851890206337,-0.108730845153332,0.078045830130577,-0.041236802935600,-0.187236651778221,-0.179984614253044,-0.006773901637644,-0.011434718035161,-0.037908270955086,0.119126260280609,0.093141913414001,-0.009267583489418,-0.043080281466246));
res += mul(Get(s2,-dx,0), float4x4(-0.237819567322731,0.199282228946686,0.123805724084377,0.098982729017735,0.088333912193775,0.147828847169876,0.183489665389061,0.069142729043961,0.152799844741821,0.085389249026775,-0.166033655405045,0.027118969708681,-0.124133989214897,0.069923348724842,-0.109854891896248,0.101835049688816));
res += mul(Get(s2,-dx,dy), float4x4(-0.062758214771748,-0.108428835868835,0.049281131476164,-0.243396058678627,0.041936822235584,-0.013183029368520,-0.182993993163109,0.131547868251801,-0.055714037269354,-0.232902497053146,-0.009762729518116,-0.028466783463955,-0.191584482789040,0.031127944588661,0.034875363111496,0.014800649136305));
res += mul(Get(s2,0,-dy), float4x4(0.011805837042630,0.135969981551170,-0.037394076585770,0.051573917269707,-0.075845137238503,-0.049258835613728,0.139224842190742,-0.005605614744127,0.127810060977936,0.045463327318430,0.048108603805304,-0.040980957448483,0.048398099839687,0.098480843007565,0.066687628626823,-0.013711231760681));
res += mul(Get(s2,0,0), float4x4(-0.004866066388786,-0.086595796048641,-0.067778781056404,-0.030608030036092,-0.077021591365337,0.115195900201797,-0.043779935687780,0.028102843090892,-0.107577286660671,0.047882296144962,0.048283759504557,0.031303837895393,-0.197138115763664,0.063017889857292,0.179226815700531,-0.083375185728073));
res += mul(Get(s2,0,dy), float4x4(0.210135817527771,0.081061288714409,-0.044539619237185,-0.040906187146902,-0.128802031278610,-0.056099411100149,-0.021838469430804,0.065228097140789,0.028063161298633,-0.053767006844282,-0.098019242286682,-0.047590166330338,-0.256929785013199,-0.011530679650605,-0.183707177639008,0.038398373872042));
res += mul(Get(s2,dx,-dy), float4x4(-0.004849295597523,-0.161024317145348,0.268555462360382,0.077165812253952,-0.235337495803833,0.039953537285328,0.074275828897953,0.045715715736151,0.169748231768608,-0.062588036060333,-0.028692405670881,0.131367877125740,-0.031413853168488,-0.168822348117828,-0.010742196813226,0.332593053579330));
res += mul(Get(s2,dx,0), float4x4(-0.080264069139957,0.151893243193626,-0.005892152898014,-0.033538330346346,-0.071343541145325,-0.327084332704544,-0.088086731731892,0.049710851162672,0.151006713509560,0.288002967834473,0.031174810603261,0.044767994433641,0.184708118438721,-0.083145380020142,0.034928109496832,-0.071259498596191));
res += mul(Get(s2,dx,dy), float4x4(0.055362068116665,-0.253903478384018,-0.022972406819463,-0.024239990860224,0.073317274451256,-0.165097340941429,0.046489726752043,0.061342373490334,-0.055904552340508,-0.147646531462669,0.023479005321860,0.136567130684853,0.110904619097710,0.020994702354074,-0.043402571231127,-0.056647002696991));
res += mul(Get(s3,-dx,-dy), float4x4(-0.070375882089138,0.011649990454316,0.247900515794754,0.080786019563675,-0.140348955988884,0.074759379029274,0.177163705229759,0.032384388148785,-0.021605540066957,0.020590804517269,0.035874951630831,0.084588192403316,0.035231217741966,0.084212742745876,0.019288437440991,-0.131252393126488));
res += mul(Get(s3,-dx,0), float4x4(0.070948272943497,0.089809849858284,-0.027334023267031,-0.181220546364784,0.131271511316299,0.034479383379221,0.075689166784286,0.067987412214279,0.000642667757347,0.038017977029085,-0.180021673440933,-0.087395444512367,-0.050688747316599,-0.149852603673935,-0.046732779592276,-0.213951542973518));
res += mul(Get(s3,-dx,dy), float4x4(0.070234082639217,0.225434347987175,-0.273838281631470,0.110588170588017,0.173289611935616,-0.136023759841919,-0.062526710331440,0.224157989025116,0.059456672519445,-0.036771118640900,-0.006192645058036,0.077347733080387,-0.162287503480911,0.091246344149113,-0.028000431135297,-0.191569119691849));
res += mul(Get(s3,0,-dy), float4x4(0.132638245820999,-0.084633447229862,0.073941752314568,-0.079884380102158,-0.231379717588425,0.137000381946564,-0.086130835115910,-0.148925617337227,0.090409614145756,-0.089034438133240,-0.067981116473675,-0.057371571660042,-0.113242067396641,-0.038633849471807,-0.134110048413277,-0.295458108186722));
res += mul(Get(s3,0,0), float4x4(0.186044916510582,0.104553133249283,-0.162877887487411,0.101799070835114,0.107543885707855,-0.043362885713577,0.016080796718597,0.075484901666641,-0.063614055514336,-0.128036603331566,-0.055787399411201,-0.122547812759876,0.183756247162819,0.245050624012947,-0.079512357711792,0.088754869997501));
res += mul(Get(s3,0,dy), float4x4(0.132780686020851,0.008989030495286,0.130402252078056,0.021538270637393,-0.035966772586107,0.260702192783356,0.119780212640762,-0.142336443066597,-0.104071207344532,0.011695985682309,-0.059275921434164,-0.083589069545269,0.036492940038443,-0.037638679146767,-0.067334160208702,-0.000097131043731));
res += mul(Get(s3,dx,-dy), float4x4(0.071230240166187,0.110970124602318,0.045485530048609,0.038541335612535,-0.032149545848370,-0.023871483281255,0.204994231462479,0.006865789648145,0.069733381271362,0.209274709224701,-0.329095661640167,-0.166552081704140,0.036963108927011,0.013517112471163,-0.046107873320580,-0.129953041672707));
res += mul(Get(s3,dx,0), float4x4(-0.129022434353828,-0.073742575943470,-0.046766199171543,-0.021621184423566,-0.035917092114687,-0.076877497136593,0.019971508532763,0.071135014295578,0.194671824574471,-0.008422723039985,-0.078550800681114,0.151237279176712,0.051077350974083,0.044957563281059,0.057244747877121,-0.165611699223518));
res += mul(Get(s3,dx,dy), float4x4(0.037985742092133,-0.012275462970138,-0.120131939649582,0.020195439457893,0.204093992710114,-0.078450880944729,0.038853194564581,-0.123258896172047,0.075148925185204,0.009389937855303,0.056125111877918,-0.217449873685837,-0.207121998071671,-0.063767462968826,-0.008532293140888,-0.161712765693665));
return max(float4(0,0,0,0), res);
}