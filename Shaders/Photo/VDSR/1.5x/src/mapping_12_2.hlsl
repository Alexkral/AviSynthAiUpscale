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
res += mul(Get(s0,-dx,-dy), float4x4(0.068289719521999,0.015648527070880,-0.011626316234469,0.175637215375900,0.054658886045218,-0.073745876550674,-0.052991602569818,-0.189588040113449,0.146900534629822,0.016314664855599,0.009597831405699,0.108289308845997,-0.008531732484698,0.085391677916050,-0.054071635007858,-0.104173861443996));
res += mul(Get(s0,-dx,0), float4x4(0.100962370634079,0.069806657731533,-0.124805316329002,0.015421428717673,0.060965772718191,-0.146874815225601,-0.010232310742140,-0.128762856125832,-0.016772661358118,0.089344441890717,-0.136375054717064,-0.014074270613492,-0.159921079874039,0.039811693131924,0.115333765745163,0.005144442897290));
res += mul(Get(s0,-dx,dy), float4x4(-0.075124204158783,-0.054543167352676,-0.034346483647823,0.030984506011009,0.027928140014410,-0.090522132813931,0.003843500046059,-0.104235976934433,-0.116823449730873,-0.106799960136414,-0.131205245852470,-0.100735634565353,0.195333451032639,0.121226005256176,0.099916175007820,-0.086709871888161));
res += mul(Get(s0,0,-dy), float4x4(-0.005388634279370,-0.033215258270502,0.104399032890797,-0.054705381393433,0.032792899757624,-0.116548508405685,0.054932300001383,-0.144498318433762,-0.086245253682137,-0.051446948200464,-0.069880515336990,-0.092424735426903,-0.024361927062273,0.036920942366123,0.051698882132769,-0.045315764844418));
res += mul(Get(s0,0,0), float4x4(0.084109045565128,-0.011258248239756,-0.033254947513342,-0.137250468134880,0.035473201423883,0.005920415278524,0.016418660059571,0.111037828028202,-0.051533866673708,0.052664730697870,0.051399540156126,0.179695010185242,0.091065473854542,-0.022275097668171,-0.005527716130018,0.088604889810085));
res += mul(Get(s0,0,dy), float4x4(-0.040455177426338,0.112131491303444,0.096421442925930,0.000728857761715,0.047340109944344,0.121460370719433,-0.042034573853016,-0.025515075773001,0.074761360883713,-0.149954453110695,0.019447078928351,-0.086962677538395,-0.065694183111191,-0.018432468175888,-0.013384047895670,0.009424607269466));
res += mul(Get(s0,dx,-dy), float4x4(-0.024826906621456,0.087252803146839,-0.044872857630253,0.006678674370050,-0.006507854443043,0.031479191035032,0.028915161266923,0.136066079139709,0.049591954797506,-0.042488735169172,-0.106205895543098,-0.128627464175224,0.188943564891815,-0.038137927651405,0.001606149831787,-0.054538488388062));
res += mul(Get(s0,dx,0), float4x4(-0.007112879771739,0.074720799922943,-0.229514524340630,-0.050248362123966,-0.134164243936539,-0.202393010258675,0.151669323444366,0.014730758965015,-0.031317122280598,-0.061046317219734,-0.192078724503517,-0.079674318432808,0.041055660694838,-0.006084006745368,-0.015485606156290,-0.078050330281258));
res += mul(Get(s0,dx,dy), float4x4(-0.136335268616676,-0.001470053335652,0.034198299050331,-0.062031831592321,-0.086660780012608,-0.048651188611984,-0.040021535009146,0.171830803155899,0.010570287704468,-0.000292577053187,-0.073945350944996,-0.089715883135796,0.101226784288883,-0.146007046103477,-0.051730290055275,-0.036926325410604));
res += mul(Get(s1,-dx,-dy), float4x4(-0.090754278004169,-0.042699221521616,0.057108867913485,-0.074808172881603,0.036768555641174,-0.143098369240761,0.019204109907150,-0.098790042102337,0.027895115315914,0.059060607105494,0.045284215360880,-0.073119126260281,-0.146302774548531,-0.099773734807968,-0.059057880192995,0.109078854322433));
res += mul(Get(s1,-dx,0), float4x4(-0.098885700106621,0.063769385218620,0.101852871477604,-0.075403377413750,-0.141868770122528,0.022412696853280,-0.099914170801640,0.246890410780907,0.005323284771293,-0.071758776903152,-0.005290932022035,0.156808316707611,-0.049398809671402,-0.010334917344153,0.056516014039516,0.097450830042362));
res += mul(Get(s1,-dx,dy), float4x4(-0.072046950459480,0.141959980130196,-0.108318433165550,-0.186138793826103,-0.112916514277458,0.039971511811018,-0.078811548650265,0.001077910652384,-0.039243537932634,0.134241610765457,0.115190990269184,-0.104455277323723,-0.070081591606140,-0.028979243710637,0.098442465066910,-0.097571983933449));
res += mul(Get(s1,0,-dy), float4x4(-0.020362129434943,-0.209326565265656,0.087476991117001,-0.097854554653168,-0.056355018168688,-0.080591045320034,0.042269837111235,-0.012429935857654,-0.061957519501448,-0.071989111602306,0.115436166524887,0.102289289236069,0.078556388616562,0.026624534279108,-0.154150739312172,-0.086740441620350));
res += mul(Get(s1,0,0), float4x4(0.066433206200600,-0.081020869314671,-0.182752564549446,0.066590368747711,0.189869493246078,-0.059654347598553,0.119988687336445,0.006789407692850,-0.068667411804199,0.011175123974681,0.128693982958794,0.043736509978771,-0.129649341106415,-0.032606743276119,0.088519401848316,0.086133182048798));
res += mul(Get(s1,0,dy), float4x4(0.126296371221542,0.061223108321428,0.011989766731858,0.138245433568954,-0.144381657242775,0.012192082591355,-0.076509959995747,-0.046204812824726,-0.160394981503487,-0.048259079456329,-0.016232006251812,0.034793693572283,-0.035685453563929,-0.036861307919025,-0.062295023351908,0.083693660795689));
res += mul(Get(s1,dx,-dy), float4x4(-0.036787819117308,-0.161629974842072,-0.049511313438416,-0.075202107429504,-0.097299352288246,-0.031927462667227,0.067462004721165,-0.112998798489571,0.135380506515503,-0.181330740451813,-0.144001096487045,0.065556786954403,-0.006963166873902,-0.050351850688457,0.076990060508251,-0.046004246920347));
res += mul(Get(s1,dx,0), float4x4(-0.021927865222096,0.143490061163902,0.004226431250572,0.044273298233747,0.090394899249077,0.028730824589729,0.138177379965782,0.111129663884640,-0.032780129462481,0.066330574452877,0.038187984377146,0.014541381038725,0.117737986147404,-0.047756265848875,0.260474115610123,0.007412246428430));
res += mul(Get(s1,dx,dy), float4x4(-0.106292992830276,0.043078668415546,0.165943980216980,0.043785486370325,0.119984202086926,0.060357466340065,0.025956783443689,0.181221619248390,0.034318778663874,-0.053704846650362,0.124240495264530,-0.012875679880381,0.115419358015060,-0.073209211230278,0.075145997107029,0.079819865524769));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039213392883539,0.184475407004356,-0.114179164171219,0.090250514447689,0.053562857210636,0.017370002344251,0.105052784085274,0.103626742959023,-0.086719974875450,-0.032103911042213,0.036961253732443,0.147693693637848,-0.138670280575752,0.089191876351833,0.116348110139370,0.056055292487144));
res += mul(Get(s2,-dx,0), float4x4(-0.129968047142029,0.031103106215596,0.088765248656273,0.145525991916656,0.074915453791618,-0.011138856410980,0.063382878899574,-0.095498733222485,0.001569953281432,-0.042362023144960,-0.025028035044670,-0.165705025196075,-0.060391537845135,0.096277415752411,0.037108592689037,0.065039202570915));
res += mul(Get(s2,-dx,dy), float4x4(0.031637199223042,0.113259576261044,-0.035471752285957,-0.091600276529789,-0.003237857250497,0.051402635872364,-0.034395027905703,-0.193147018551826,0.099276155233383,0.027376078069210,0.051713239401579,-0.105085544288158,0.056158643215895,0.040651418268681,0.038631424307823,0.006207099650055));
res += mul(Get(s2,0,-dy), float4x4(-0.056222066283226,0.091263510286808,0.080686599016190,0.055958755314350,0.074132919311523,-0.033227838575840,-0.048574842512608,-0.024859558790922,-0.040781587362289,0.055786028504372,0.050699550658464,-0.075921319425106,0.066701710224152,-0.026678001508117,0.049057055264711,0.013766517862678));
res += mul(Get(s2,0,0), float4x4(-0.071364454925060,0.146410822868347,-0.070221476256847,-0.007252824492753,-0.129194647073746,-0.069095112383366,0.042020924389362,0.058467861264944,0.159208551049232,-0.064950972795486,0.005388747435063,0.041208334267139,-0.024945599958301,0.018735878169537,0.079973995685577,-0.231991529464722));
res += mul(Get(s2,0,dy), float4x4(0.036066815257072,0.022974336519837,-0.059194587171078,0.123201556503773,-0.025841843336821,-0.089568309485912,-0.201830223202705,-0.103560306131840,0.001367009244859,-0.058136537671089,0.132452413439751,-0.108693905174732,-0.003984798211604,-0.056143905967474,0.202216982841492,-0.070921473205090));
res += mul(Get(s2,dx,-dy), float4x4(0.088704109191895,-0.002675570081919,-0.024099154397845,-0.010782171972096,-0.206036925315857,-0.051226623356342,-0.240781247615814,-0.079213000833988,0.046147573739290,-0.036586616188288,-0.061809007078409,0.057389751076698,0.021660219877958,0.023214206099510,-0.069531202316284,-0.058733996003866));
res += mul(Get(s2,dx,0), float4x4(0.035125747323036,0.001819041208364,0.026938961818814,-0.025295164436102,-0.076199412345886,0.060325615108013,-0.185680225491524,-0.060766179114580,-0.006353624165058,-0.101745896041393,0.041019901633263,0.101536601781845,-0.041196871548891,-0.078698299825191,-0.197975188493729,-0.021115921437740));
res += mul(Get(s2,dx,dy), float4x4(-0.012176205404103,0.008658296428621,-0.076048180460930,0.089040301740170,0.114812649786472,0.080125167965889,0.061264924705029,-0.045537203550339,0.055799897760153,0.050656653940678,0.074549153447151,-0.277557134628296,-0.085884615778923,0.050950430333614,-0.156289860606194,0.105185054242611));
res += mul(Get(s3,-dx,-dy), float4x4(0.015569704584777,-0.120395883917809,0.132090315222740,-0.014372907578945,-0.139823883771896,-0.089821636676788,0.135256931185722,0.047323573380709,0.030056320130825,0.154641941189766,0.232805520296097,0.091199599206448,0.166279420256615,-0.097630776464939,-0.083957478404045,0.114363454282284));
res += mul(Get(s3,-dx,0), float4x4(0.028195384889841,0.150319993495941,-0.200111940503120,-0.029305789619684,-0.049528595060110,-0.039657756686211,-0.076959930360317,0.023896217346191,0.118488304316998,-0.141061767935753,0.019329570233822,-0.022064885124564,0.071381293237209,0.029584040865302,0.067435532808304,0.063458777964115));
res += mul(Get(s3,-dx,dy), float4x4(0.012506382539868,0.107694067060947,-0.023367915302515,-0.068494036793709,-0.103801436722279,-0.024951871484518,-0.028379078954458,-0.050829831510782,-0.151342332363129,0.168960794806480,0.010616916231811,0.093293353915215,-0.016382267698646,-0.013358102180064,0.080222979187965,-0.161083549261093));
res += mul(Get(s3,0,-dy), float4x4(0.059184007346630,0.028795124962926,0.011107307858765,-0.086863026022911,0.067733563482761,-0.055206809192896,0.049857005476952,0.037728030234575,-0.077805191278458,-0.010928121395409,0.002888499293476,-0.049446903169155,0.132069915533066,0.071930542588234,0.020086443051696,0.102494075894356));
res += mul(Get(s3,0,0), float4x4(0.146764338016510,-0.078631937503815,-0.116774044930935,-0.121073476970196,-0.157392665743828,-0.106492124497890,0.174759894609451,0.048096504062414,-0.017123052850366,0.130098775029182,0.063657060265541,0.027366166934371,0.028732502833009,-0.059367965906858,-0.050851032137871,0.015727894380689));
res += mul(Get(s3,0,dy), float4x4(-0.033736467361450,-0.122638002038002,0.015775959938765,0.092381477355957,-0.005790105089545,0.012120894156396,-0.131062939763069,0.260268628597260,-0.030058912932873,-0.126248970627785,0.093499690294266,0.069553136825562,-0.076791651546955,-0.157178610563278,-0.122573472559452,0.075526468455791));
res += mul(Get(s3,dx,-dy), float4x4(0.097970835864544,-0.006607240531594,0.094695560634136,0.037227157503366,0.021116748452187,-0.013521390035748,0.140389502048492,0.053735915571451,0.080324985086918,0.035074763000011,-0.094076253473759,-0.092049665749073,-0.028492590412498,-0.080030679702759,-0.060945566743612,-0.024077679961920));
res += mul(Get(s3,dx,0), float4x4(0.048982985317707,0.146435648202896,0.132088571786880,-0.116722442209721,0.233126178383827,0.060754604637623,0.041193578392267,0.179145589470863,0.147602304816246,-0.059225101023912,-0.179673790931702,-0.076635867357254,0.118734098970890,0.072363756597042,0.018125968053937,-0.016252009198070));
res += mul(Get(s3,dx,dy), float4x4(0.000059690042690,-0.051927551627159,0.039146978408098,0.053018741309643,-0.068234592676163,-0.053109053522348,0.038814481347799,-0.057701181620359,0.097850143909454,-0.008771716617048,-0.116155192255974,-0.007651139516383,0.167803168296814,0.027801105752587,-0.006479107774794,-0.071049913764000));
return max(float4(0,0,0,0), res);
}
