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
res += mul(Get(s0,-dx,-dy), float4x4(-0.062034919857979,-0.086222283542156,-0.010668979026377,0.111545808613300,-0.154348552227020,-0.025184558704495,0.036063238978386,-0.000583009270485,-0.061505686491728,-0.007916072383523,0.037604101002216,-0.234838441014290,-0.004140969831496,-0.002987107727677,-0.231990039348602,-0.070940628647804));
res += mul(Get(s0,-dx,0), float4x4(-0.102186962962151,-0.046200156211853,-0.108065806329250,-0.089791625738144,-0.175588712096214,-0.030289089307189,0.034326128661633,-0.133737936615944,0.108266018331051,-0.039800144731998,0.138945028185844,-0.204244315624237,-0.062147513031960,-0.029011892154813,-0.219425037503242,-0.102579951286316));
res += mul(Get(s0,-dx,dy), float4x4(0.203625306487083,-0.079284518957138,0.215839833021164,0.059228897094727,0.016515064984560,0.042394910007715,-0.030412398278713,-0.009495469741523,-0.040160082280636,0.053047899156809,-0.301573544740677,0.023360215127468,-0.053789418190718,0.055928256362677,-0.016325967386365,0.003170345444232));
res += mul(Get(s0,0,-dy), float4x4(0.038967095315456,0.326252549886703,-0.019917998462915,-0.013010326772928,0.118295766413212,-0.068783588707447,0.005595569033176,0.027019526809454,-0.195407241582870,-0.235852643847466,-0.025049917399883,-0.082690678536892,-0.015004200860858,-0.233918130397797,0.111548535525799,0.043537408113480));
res += mul(Get(s0,0,0), float4x4(-0.009680784307420,-0.038178157061338,0.082176677882671,0.148532494902611,0.003940137103200,0.077882088720798,0.055668983608484,0.020640736445785,-0.087580315768719,0.166745305061340,0.063851088285446,0.039652928709984,0.127776235342026,-0.133772179484367,-0.012793127447367,0.160065755248070));
res += mul(Get(s0,0,dy), float4x4(-0.045686401426792,-0.135396823287010,-0.048734463751316,0.026253037154675,0.105079419910908,0.062275346368551,0.045157477259636,0.057300034910440,0.013565124943852,-0.012028493918478,0.015556315891445,0.009113663807511,0.133421450853348,0.031004913151264,-0.145073726773262,0.048710927367210));
res += mul(Get(s0,dx,-dy), float4x4(0.125264078378677,-0.199379518628120,0.098835736513138,-0.016581466421485,-0.134588509798050,-0.174628570675850,-0.106528721749783,0.011673847213387,0.001924390089698,-0.059094488620758,0.076198153197765,-0.095136024057865,0.098794989287853,0.068203404545784,0.114472642540932,0.124874405562878));
res += mul(Get(s0,dx,0), float4x4(0.038412369787693,-0.091091841459274,-0.055648267269135,-0.070992901921272,0.013683256693184,0.043211318552494,0.052301611751318,0.067412927746773,-0.087774589657784,0.036573864519596,0.076111689209938,-0.049206349998713,0.000860323430970,0.086622245609760,-0.092970833182335,0.185585364699364));
res += mul(Get(s0,dx,dy), float4x4(0.021931620314717,-0.007265709340572,0.099012114107609,-0.013472368940711,-0.158932298421860,0.219061374664307,-0.075835108757019,-0.168704420328140,0.074044413864613,-0.037150815129280,-0.015836434438825,-0.012856226414442,-0.180038064718246,-0.103804141283035,0.184950947761536,-0.080279700458050));
res += mul(Get(s1,-dx,-dy), float4x4(-0.078792989253998,0.089119620621204,0.103475987911224,-0.034834731370211,0.011471983045340,-0.163538411259651,-0.167144194245338,0.195436373353004,0.022509427741170,0.165982782840729,0.146033987402916,-0.120490677654743,0.107416927814484,0.124056085944176,0.295590728521347,-0.113745316863060));
res += mul(Get(s1,-dx,0), float4x4(-0.040976371616125,0.074856758117676,-0.062415122985840,0.089288704097271,-0.128959313035011,0.027151810005307,0.185170978307724,-0.217665195465088,0.108612120151520,0.138471022248268,-0.170791313052177,-0.026040358468890,-0.022288640961051,-0.022455001249909,-0.060286838561296,0.054485671222210));
res += mul(Get(s1,-dx,dy), float4x4(-0.028854401782155,-0.138425484299660,0.003308526938781,0.021299906075001,0.038321603089571,-0.085447192192078,-0.019459675997496,-0.149977341294289,-0.095564126968384,-0.014103501103818,0.025346796959639,0.098596312105656,-0.047875378280878,0.109038978815079,-0.142229691147804,0.187798246741295));
res += mul(Get(s1,0,-dy), float4x4(0.169700026512146,0.136013910174370,0.090616993606091,-0.003798137186095,-0.038741365075111,-0.015278399921954,0.012543878518045,0.000295376958093,0.196356087923050,0.026761429384351,0.093456454575062,-0.034983459860086,-0.051722295582294,-0.151010185480118,-0.016626598313451,-0.072887197136879));
res += mul(Get(s1,0,0), float4x4(0.108356744050980,-0.001289788400754,0.014666371047497,0.036233328282833,0.016665667295456,-0.160998925566673,0.141369253396988,-0.132733374834061,-0.214949458837509,0.103703506290913,-0.069890879094601,0.009823586791754,0.058290250599384,-0.057000577449799,0.159994050860405,-0.255968838930130));
res += mul(Get(s1,0,dy), float4x4(0.270700007677078,-0.036114711314440,0.067329742014408,-0.081661649048328,-0.115771815180779,0.060265272855759,-0.079262845218182,-0.088799402117729,0.121840193867683,0.124170728027821,0.085494138300419,0.016505289822817,-0.044055849313736,-0.000090394838480,-0.054336529225111,-0.265964865684509));
res += mul(Get(s1,dx,-dy), float4x4(0.106464952230453,-0.155783161520958,-0.043829124420881,0.204940855503082,0.086494788527489,-0.254570305347443,0.174140647053719,0.055077049881220,0.024014102295041,0.107234627008438,-0.033453937619925,0.021180707961321,0.026828629896045,-0.271529644727707,0.195623591542244,0.150584354996681));
res += mul(Get(s1,dx,0), float4x4(-0.134925097227097,0.097547523677349,-0.062748879194260,0.012046486139297,-0.055304300040007,0.041588898748159,-0.038013193756342,-0.084942758083344,-0.121233090758324,-0.123819619417191,0.122546866536140,-0.215365245938301,-0.099532358348370,-0.167284443974495,-0.090813465416431,-0.189746886491776));
res += mul(Get(s1,dx,dy), float4x4(0.045232582837343,0.103999793529510,0.129468053579330,-0.014211090281606,-0.053461849689484,-0.014127888716757,-0.196031436324120,-0.083182066679001,0.091281950473785,0.074471220374107,-0.062776930630207,0.113886393606663,0.013363093137741,0.126330167055130,-0.041503686457872,0.066535003483295));
res += mul(Get(s2,-dx,-dy), float4x4(0.014278916642070,-0.113867022097111,0.108494848012924,-0.198190167546272,-0.013359961099923,-0.084802821278572,0.055126260966063,-0.039820250123739,0.030661256983876,0.044034600257874,-0.197159007191658,0.204658523201942,-0.044704057276249,-0.049835748970509,-0.026304166764021,-0.051059007644653));
res += mul(Get(s2,-dx,0), float4x4(-0.007757738232613,-0.151748672127724,0.130965679883957,0.098917283117771,-0.037195220589638,-0.033576492220163,0.025657633319497,0.069990694522858,0.076661601662636,0.137508228421211,0.085664577782154,0.202997833490372,-0.164033815264702,-0.180050417780876,-0.111342035233974,-0.030036034062505));
res += mul(Get(s2,-dx,dy), float4x4(0.000713206536602,0.157568275928497,-0.287087351083755,-0.006387195084244,-0.082174710929394,0.150806441903114,0.104773737490177,-0.041340522468090,-0.148513004183769,0.099789440631866,-0.066236212849617,0.135170668363571,-0.043250065296888,0.062912568449974,-0.042660415172577,0.163625016808510));
res += mul(Get(s2,0,-dy), float4x4(0.075491644442081,-0.002655235584825,-0.051889527589083,0.115708492696285,0.116562902927399,-0.019832927733660,0.044050231575966,0.043375924229622,0.060788672417402,-0.011765983887017,-0.103371918201447,-0.067409656941891,0.094002984464169,-0.056773714721203,-0.037569738924503,0.181311234831810));
res += mul(Get(s2,0,0), float4x4(0.048194915056229,0.111216492950916,0.107953183352947,0.062525808811188,0.140588551759720,-0.139431938529015,0.045107785612345,-0.068315625190735,0.021700616925955,0.141423344612122,-0.119204677641392,-0.053077571094036,-0.030842620879412,0.035979997366667,0.111003324389458,0.070691652595997));
res += mul(Get(s2,0,dy), float4x4(-0.150713220238686,-0.023165380582213,-0.131514593958855,0.109093613922596,-0.056418180465698,0.010064761154354,-0.066592827439308,0.063205689191818,-0.219109088182449,0.035536166280508,0.009843858890235,0.076278410851955,-0.053189963102341,0.083536498248577,-0.011492144316435,-0.047461204230785));
res += mul(Get(s2,dx,-dy), float4x4(-0.017874829471111,0.146060213446617,0.037672214210033,-0.108153559267521,-0.058070685714483,-0.066242687404156,-0.106230810284615,0.177953884005547,-0.089430131018162,-0.148444309830666,-0.247523412108421,-0.163511022925377,0.106096893548965,-0.237301662564278,0.018813302740455,0.076475612819195));
res += mul(Get(s2,dx,0), float4x4(0.110586844384670,-0.049510158598423,-0.028305349871516,0.009031120687723,-0.050537563860416,-0.075977966189384,0.082844287157059,-0.055120047181845,-0.071034595370293,-0.004939455073327,0.026485476642847,0.072318442165852,-0.165746375918388,-0.021632757037878,-0.126638859510422,0.080201543867588));
res += mul(Get(s2,dx,dy), float4x4(-0.051414273679256,0.131680041551590,-0.009636351838708,0.059811882674694,0.107092007994652,0.155694782733917,0.024596771225333,0.031998604536057,0.024685336276889,-0.012012288905680,-0.074293144047260,0.009754020720720,-0.081582434475422,0.016627702862024,-0.177258640527725,0.119755275547504));
res += mul(Get(s3,-dx,-dy), float4x4(-0.280320107936859,-0.062177993357182,0.023676583543420,0.011938217096031,0.019383160397410,0.044747944921255,0.020882921293378,0.083266317844391,0.018545739352703,0.073260068893433,0.096624709665775,0.153913751244545,0.039707805961370,-0.187050104141235,0.034431710839272,0.147661089897156));
res += mul(Get(s3,-dx,0), float4x4(-0.045590631663799,0.046438273042440,-0.278879791498184,-0.008447643369436,0.160981595516205,0.097214907407761,0.006011941470206,0.250339895486832,-0.009257181547582,0.048445396125317,0.012698253616691,-0.004739482887089,-0.098042830824852,0.056108467280865,0.019377058371902,0.052774325013161));
res += mul(Get(s3,-dx,dy), float4x4(-0.116158008575439,0.220987766981125,-0.016625106334686,0.109985046088696,0.041127365082502,-0.063569210469723,-0.107691146433353,0.119829744100571,0.135492607951164,0.219015792012215,0.031750999391079,0.000996889546514,-0.003695513820276,0.072612553834915,0.071452401578426,-0.062679469585419));
res += mul(Get(s3,0,-dy), float4x4(0.070810586214066,-0.133597731590271,0.007694493979216,-0.080819033086300,0.052687279880047,-0.017046067863703,0.013851604424417,-0.179903939366341,0.174604684114456,-0.108832769095898,-0.094442635774612,0.067662097513676,0.115792706608772,-0.067274644970894,-0.136573821306229,-0.120844192802906));
res += mul(Get(s3,0,0), float4x4(-0.134694531559944,0.032836098223925,-0.162541106343269,-0.140594720840454,-0.134002447128296,-0.044776204973459,0.101097196340561,0.041311632841825,0.004577473271638,0.050990223884583,-0.028343206271529,-0.030338911339641,0.087419845163822,-0.053573917597532,0.186158180236816,-0.051099460572004));
res += mul(Get(s3,0,dy), float4x4(-0.061891514807940,0.034710075706244,-0.080351650714874,0.099512442946434,-0.064292244613171,-0.053613331168890,-0.116697005927563,-0.248111978173256,-0.095561154186726,-0.044996466487646,0.025932852178812,0.287509024143219,0.054058779031038,0.034984625875950,0.016633035615087,0.194465577602386));
res += mul(Get(s3,dx,-dy), float4x4(0.220332637429237,-0.086064778268337,-0.108353644609451,0.013240003958344,0.023798188194633,0.102669648826122,-0.086661808192730,-0.023559218272567,-0.038843173533678,-0.063069395720959,0.004659635480493,0.081299968063831,0.123428270220757,0.028255464509130,0.139406368136406,0.080271959304810));
res += mul(Get(s3,dx,0), float4x4(-0.236131995916367,0.138728559017181,-0.029933258891106,-0.100151658058167,0.072287149727345,0.066525392234325,-0.258307278156281,0.135305389761925,0.048218611627817,0.032097831368446,-0.088051527738571,-0.101898834109306,-0.111814953386784,0.015362814068794,-0.021755345165730,-0.147362470626831));
res += mul(Get(s3,dx,dy), float4x4(0.076077498495579,0.045191660523415,-0.030834443867207,0.034987296909094,0.127442628145218,-0.021977314725518,0.045860525220633,-0.055899068713188,0.108846180140972,-0.021784307435155,-0.072485998272896,0.004773116670549,0.067285753786564,0.031686745584011,-0.048391189426184,0.053388424217701));
return max(float4(0,0,0,0), res);
}
