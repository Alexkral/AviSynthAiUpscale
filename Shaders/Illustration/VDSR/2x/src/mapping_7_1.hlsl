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
res += mul(Get(s0,-dx,-dy), float4x4(-0.111852183938026,-0.174851670861244,-0.148987516760826,-0.088741101324558,0.112016916275024,0.099394403398037,0.051641128957272,0.112708464264870,-0.055251840502024,-0.074239969253540,-0.063869759440422,-0.064419165253639,-0.021190565079451,-0.120343349874020,0.001234032679349,0.007930088788271));
res += mul(Get(s0,-dx,0), float4x4(-0.017532957717776,0.039276782423258,-0.074818730354309,0.050532437860966,-0.023270837962627,0.027644038200378,-0.211415961384773,0.064071409404278,-0.052437637001276,-0.119302250444889,0.175885483622551,0.029475159943104,-0.042556546628475,0.031937133520842,0.088861398398876,0.007026208564639));
res += mul(Get(s0,-dx,dy), float4x4(0.100801363587379,-0.059851866215467,0.031773254275322,0.096432104706764,0.074846722185612,0.053501915186644,0.036271847784519,0.072265483438969,-0.105935491621494,-0.067214563488960,0.107295043766499,-0.048085458576679,0.054574448615313,0.008037603460252,-0.077099509537220,0.015768527984619));
res += mul(Get(s0,0,-dy), float4x4(-0.259792059659958,0.091100752353668,0.004069027956575,0.012878335081041,0.030434472486377,0.161846697330475,-0.003336763009429,0.074772059917450,-0.019898723810911,-0.366482555866241,0.007467077113688,-0.139920696616173,0.055098976939917,-0.098512403666973,-0.127111315727234,0.074810937047005));
res += mul(Get(s0,0,0), float4x4(-0.237357795238495,0.018653707578778,0.010886545293033,0.239095523953438,0.032651644200087,0.153630092740059,0.032893624156713,0.111106321215630,-0.055045977234840,-0.053915884345770,-0.004723758436739,0.011763843707740,0.061265520751476,0.134592413902283,-0.112596832215786,-0.001887306687422));
res += mul(Get(s0,0,dy), float4x4(0.077974937856197,-0.049612112343311,0.004805105272681,0.109393224120140,-0.016277367249131,0.058861806988716,-0.095008738338947,0.025607382878661,-0.022932991385460,-0.057241931557655,-0.082904621958733,0.005902850069106,-0.057119611650705,-0.038465451449156,0.134579315781593,-0.022222271189094));
res += mul(Get(s0,dx,-dy), float4x4(-0.036403730511665,0.068271249532700,-0.076058194041252,0.098142914474010,-0.083378873765469,-0.123893499374390,0.010144613683224,-0.068280503153801,0.209744036197662,-0.068915657699108,0.038651015609503,-0.213474750518799,0.032338477671146,0.065678626298904,0.086037255823612,0.024311097338796));
res += mul(Get(s0,dx,0), float4x4(-0.021956406533718,-0.000927937973756,-0.163228824734688,-0.116469755768776,0.058276779949665,0.020490497350693,-0.024386724457145,0.034605752676725,0.037292789667845,0.037501759827137,0.028722101822495,-0.098358005285263,0.154469028115273,0.072349153459072,-0.128480300307274,0.044133931398392));
res += mul(Get(s0,dx,dy), float4x4(0.082583092153072,0.065348565578461,-0.153629139065742,-0.134185642004013,0.071101970970631,0.117666587233543,0.055932242423296,-0.048793960362673,-0.027020059525967,-0.109666429460049,0.081163994967937,-0.197397649288177,-0.031984768807888,-0.004842019639909,-0.042347528040409,-0.015953402966261));
res += mul(Get(s1,-dx,-dy), float4x4(-0.200190722942352,-0.026625588536263,-0.036765210330486,-0.006673541385680,-0.019736122339964,0.078893609344959,0.080160513520241,0.124574199318886,-0.050003279000521,-0.112501300871372,-0.142445787787437,0.046483896672726,0.009467179886997,0.238077729940414,0.014057904481888,-0.049051314592361));
res += mul(Get(s1,-dx,0), float4x4(-0.047018192708492,-0.068346746265888,-0.066823840141296,0.305126160383224,-0.136800125241280,0.006475169677287,-0.011066011153162,0.116864055395126,-0.062622010707855,-0.009787842631340,-0.109962873160839,-0.041726186871529,0.050853271037340,0.116969488561153,0.153899505734444,0.084170572459698));
res += mul(Get(s1,-dx,dy), float4x4(-0.121324665844440,0.106307424604893,0.114869453012943,0.015312395989895,0.136822462081909,-0.039715904742479,0.160708397626877,0.005174276884645,-0.117253482341766,0.017006400972605,0.015236001461744,0.108301408588886,-0.032733127474785,0.097108401358128,0.187288358807564,0.101895175874233));
res += mul(Get(s1,0,-dy), float4x4(0.008965500630438,0.125377327203751,-0.046785112470388,-0.015993624925613,-0.021524807438254,-0.129892170429230,0.126064643263817,-0.016077335923910,0.107882134616375,-0.011256676167250,-0.132005929946899,0.041888181120157,-0.166069090366364,0.011915882118046,-0.052804213017225,-0.093144260346889));
res += mul(Get(s1,0,0), float4x4(-0.039803821593523,0.046181052923203,-0.051815226674080,0.188464805483818,0.063969388604164,-0.134059473872185,-0.109542772173882,0.089335121214390,0.088536731898785,-0.173211947083473,-0.154936999082565,0.147014677524567,-0.008728704415262,0.020499525591731,0.192460030317307,0.084851369261742));
res += mul(Get(s1,0,dy), float4x4(-0.104605622589588,0.151771456003189,-0.034872528165579,-0.016329066827893,0.022348819300532,-0.038570664823055,0.053632065653801,0.130365967750549,0.073757678270340,-0.158749073743820,0.136738643050194,-0.018251543864608,-0.024319786578417,0.235235691070557,-0.163319960236549,0.084339059889317));
res += mul(Get(s1,dx,-dy), float4x4(0.147381141781807,-0.013998458161950,-0.045869953930378,-0.177819803357124,0.114365689456463,0.016387339681387,-0.100538395345211,0.012652733363211,-0.177031114697456,0.033829946070910,0.108035571873188,-0.040541782975197,0.259778350591660,-0.078507125377655,-0.154926523566246,0.149561241269112));
res += mul(Get(s1,dx,0), float4x4(0.014212631620467,-0.322038084268570,-0.002603331115097,-0.094157636165619,-0.083840325474739,-0.055569864809513,-0.096519313752651,-0.067356482148170,-0.166803792119026,-0.036787368357182,0.114302627742290,0.193716600537300,-0.112209141254425,0.092086873948574,-0.057178709656000,0.088620685040951));
res += mul(Get(s1,dx,dy), float4x4(-0.032950267195702,0.102164126932621,-0.192051663994789,-0.093141779303551,-0.170954257249832,-0.038064803928137,-0.041014950722456,-0.083415001630783,0.147822484374046,-0.105355136096478,0.051976591348648,-0.156761914491653,-0.034556418657303,0.046209014952183,-0.048833966255188,0.041723251342773));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025959666818380,0.102119579911232,0.001363372779451,-0.126686081290245,-0.122754134237766,0.101936087012291,-0.003401449881494,0.074037238955498,-0.066741168498993,0.054539036005735,-0.152393773198128,-0.080021366477013,0.086662851274014,0.027517730370164,0.029541062191129,-0.007305083330721));
res += mul(Get(s2,-dx,0), float4x4(0.159575223922729,0.029230471700430,0.030124356970191,0.075965777039528,-0.011748551391065,-0.057815622538328,0.115441195666790,0.074178159236908,0.142182976007462,0.012270452454686,0.180878847837448,-0.017210012301803,0.012993423268199,0.044780176132917,0.001098820241168,0.098945505917072));
res += mul(Get(s2,-dx,dy), float4x4(0.088778622448444,0.042517501860857,-0.109817251563072,0.050905909389257,-0.074040941894054,0.159807875752449,0.154996603727341,-0.001975681167096,-0.063240386545658,0.072858050465584,0.039778351783752,-0.059459600597620,0.038702402263880,-0.131388485431671,0.016831573098898,-0.045809086412191));
res += mul(Get(s2,0,-dy), float4x4(-0.089421242475510,0.222895607352257,0.049382220953703,-0.129845559597015,-0.148988142609596,0.002355074975640,0.019432159140706,0.050310932099819,-0.033075939863920,0.156538024544716,0.031625706702471,0.165280565619469,0.028866380453110,0.001948362682015,-0.007694934494793,0.133176609873772));
res += mul(Get(s2,0,0), float4x4(0.002194135449827,-0.100912228226662,0.018436154350638,0.016543559730053,-0.125560879707336,0.051254633814096,0.019485332071781,-0.117615923285484,0.095654085278511,0.072549439966679,0.030422706156969,-0.072554536163807,0.019324831664562,0.177877962589264,0.033046729862690,0.245239451527596));
res += mul(Get(s2,0,dy), float4x4(-0.089346103370190,-0.003533430164680,-0.205114126205444,-0.164510861039162,0.027358578518033,0.005511019378901,0.066670544445515,-0.077602498233318,-0.127817884087563,-0.153066694736481,-0.076794572174549,0.003314636880532,-0.077518641948700,-0.047844372689724,-0.106337830424309,-0.012009455822408));
res += mul(Get(s2,dx,-dy), float4x4(-0.040537241846323,0.068445429205894,0.063851170241833,-0.189301133155823,-0.000299590814393,-0.062046587467194,-0.058801926672459,-0.030276082456112,0.075309358537197,-0.062347646802664,0.056844998151064,-0.017457043752074,-0.117986977100372,0.203342705965042,0.047486543655396,-0.083951257169247));
res += mul(Get(s2,dx,0), float4x4(0.284992128610611,-0.051357679069042,0.105530634522438,-0.143265947699547,-0.039812095463276,-0.026751108467579,-0.096660897135735,-0.106999613344669,-0.067026719450951,-0.184374168515205,0.113367639482021,0.153916031122208,0.056979101151228,-0.111490890383720,0.022613786160946,-0.124455049633980));
res += mul(Get(s2,dx,dy), float4x4(0.040197394788265,0.014753701165318,-0.115329787135124,-0.091758698225021,-0.140399679541588,0.116547092795372,-0.106580071151257,-0.089989475905895,-0.069801129400730,0.186855331063271,-0.156388565897942,0.140278011560440,-0.032140374183655,-0.116818554699421,-0.034562990069389,0.073927789926529));
res += mul(Get(s3,-dx,-dy), float4x4(0.143512189388275,0.020601158961654,0.047730345278978,0.064050056040287,0.140523344278336,0.047234226018190,0.204725503921509,0.117133177816868,0.051395520567894,-0.215445667505264,-0.046318717300892,0.000718581490219,-0.076634064316750,0.001821218873374,-0.099260553717613,-0.075823336839676));
res += mul(Get(s3,-dx,0), float4x4(-0.010610951110721,-0.151227176189423,-0.046042934060097,0.033004127442837,0.005975409410894,0.024126995354891,-0.014815130271018,-0.074811197817326,-0.115605309605598,0.017876241356134,-0.109390012919903,-0.017544224858284,0.114244490861893,0.049450378865004,0.031085597351193,-0.089205890893936));
res += mul(Get(s3,-dx,dy), float4x4(0.009976344183087,-0.202281549572945,-0.042914509773254,-0.056048467755318,-0.151540666818619,-0.175231382250786,-0.146843045949936,0.058879330754280,-0.010592497885227,-0.153123378753662,0.154847294092178,0.096408344805241,0.122299849987030,0.038292422890663,-0.036243475973606,0.052940022200346));
res += mul(Get(s3,0,-dy), float4x4(0.182159364223480,-0.010995194315910,0.061383832246065,-0.040697310119867,0.009144372306764,-0.035304803401232,-0.020157618448138,-0.105126291513443,-0.099295966327190,-0.068578235805035,-0.079723849892616,-0.011218767613173,0.086386457085609,0.062520697712898,0.058962993323803,-0.116840943694115));
res += mul(Get(s3,0,0), float4x4(-0.004574286751449,-0.124483309686184,-0.041254702955484,-0.045695632696152,0.133746787905693,0.016312668099999,0.050460211932659,0.137211769819260,0.004007684066892,0.002873578574508,-0.084632553160191,-0.043241325765848,0.067676484584808,0.167321190237999,-0.071855112910271,0.146888881921768));
res += mul(Get(s3,0,dy), float4x4(0.014190277084708,-0.033387854695320,-0.150055125355721,-0.094592526555061,0.083268031477928,-0.078222848474979,0.236073166131973,-0.012163170613348,0.119445309042931,0.002062144922093,-0.154427438974380,-0.161516740918159,0.031923148781061,0.028255503624678,-0.053583201020956,-0.185700237751007));
res += mul(Get(s3,dx,-dy), float4x4(-0.016062052920461,-0.109311714768410,-0.120305649936199,-0.027827883139253,-0.016945153474808,-0.054182372987270,0.163090348243713,-0.072914272546768,0.020895427092910,0.091148808598518,0.103526704013348,-0.142759427428246,-0.128314897418022,0.092481777071953,-0.103940352797508,0.035741101950407));
res += mul(Get(s3,dx,0), float4x4(0.139114066958427,0.087002918124199,-0.074097059667110,0.043053898960352,-0.002917796140537,0.023212181404233,-0.034424744546413,-0.070430278778076,0.049533121287823,0.051491808146238,-0.042844440788031,0.253456264734268,0.024873454123735,-0.004416711162776,-0.013363027945161,0.051542751491070));
res += mul(Get(s3,dx,dy), float4x4(0.012201133184135,-0.022825393825769,0.180411115288734,-0.060518763959408,-0.078967757523060,-0.257869601249695,-0.098747089505196,-0.084238886833191,-0.039561528712511,0.138312831521034,0.105773046612740,0.026725264266133,0.047501046210527,0.173528373241425,-0.048299629241228,0.093210734426975));
return max(float4(0,0,0,0), res);
}
