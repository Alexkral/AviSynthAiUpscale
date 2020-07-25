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
res += mul(Get(s0,-dx,-dy), float4x4(0.212822705507278,-0.040013339370489,0.052137471735477,0.194364920258522,-0.058956243097782,-0.116463243961334,0.008142124861479,0.048977352678776,0.073408871889114,0.038727488368750,0.063908778131008,0.016558226197958,-0.118105843663216,0.135563939809799,0.136710137128830,-0.271646499633789));
res += mul(Get(s0,-dx,0), float4x4(0.086235456168652,-0.113090418279171,0.026923609897494,-0.040344428271055,0.157352417707443,0.112735375761986,-0.064190030097961,0.220361977815628,0.020462164655328,0.076192684471607,0.043762706220150,0.083255447447300,0.115600571036339,0.088528037071228,-0.151008442044258,0.055515360087156));
res += mul(Get(s0,-dx,dy), float4x4(0.025634419173002,0.102401189506054,-0.080309063196182,-0.136399805545807,-0.061446290463209,0.002550802892074,0.101850435137749,-0.119606517255306,0.133318021893501,-0.125644564628601,-0.152836427092552,-0.002233528066427,0.117634922266006,-0.156910985708237,0.154599413275719,0.041305202990770));
res += mul(Get(s0,0,-dy), float4x4(0.074289903044701,-0.077576182782650,-0.122877523303032,-0.097659513354301,-0.141557201743126,-0.107859864830971,0.172324627637863,0.021060764789581,-0.012767653912306,-0.008076594211161,-0.195883885025978,-0.175611183047295,-0.125357821583748,-0.010936509817839,-0.234472274780273,-0.063909113407135));
res += mul(Get(s0,0,0), float4x4(-0.020794143900275,0.002215538173914,0.010895548388362,-0.064122989773750,-0.102465450763702,-0.039800550788641,0.218787014484406,-0.221207559108734,-0.136889770627022,-0.041466306895018,0.085701368749142,0.119482681155205,-0.091136991977692,-0.113461941480637,0.056745421141386,-0.009940891526639));
res += mul(Get(s0,0,dy), float4x4(-0.079711899161339,-0.015219767577946,0.043376203626394,-0.208085089921951,0.044864960014820,-0.006262919865549,-0.060791112482548,0.210423424839973,-0.007603683508933,0.015006016939878,-0.216836541891098,-0.130003258585930,-0.176388770341873,-0.053911443799734,0.104381725192070,0.000982979778200));
res += mul(Get(s0,dx,-dy), float4x4(-0.013440500013530,0.031640231609344,0.007547323592007,-0.046864848583937,0.065078385174274,-0.165561631321907,0.094123184680939,0.151013150811195,0.145205199718475,-0.001854814239778,-0.085420571267605,-0.014373604208231,-0.054812956601381,-0.020592460408807,-0.048391070216894,0.085634768009186));
res += mul(Get(s0,dx,0), float4x4(0.089598529040813,-0.074674673378468,-0.110625572502613,-0.027231007814407,-0.078003451228142,0.024495763704181,0.194870829582214,-0.154037222266197,-0.111816495656967,0.013828400522470,0.057426624000072,0.128957673907280,-0.068939983844757,-0.154948472976685,0.021252296864986,-0.032694645226002));
res += mul(Get(s0,dx,dy), float4x4(-0.131549760699272,-0.188727930188179,0.246487498283386,-0.073810346424580,0.022746648639441,-0.028024166822433,-0.229563340544701,0.028380723670125,0.095773048698902,-0.119870983064175,0.018193433061242,0.073179975152016,-0.105902038514614,-0.123956151306629,-0.010494320653379,-0.152523189783096));
res += mul(Get(s1,-dx,-dy), float4x4(0.207716822624207,0.164894744753838,0.045722074806690,0.052590008825064,0.152148574590683,-0.117369726300240,-0.049904227256775,-0.086791932582855,0.119382776319981,0.067793317139149,0.034352939575911,-0.116338178515434,0.045296166092157,0.166184395551682,-0.096779972314835,-0.021505298092961));
res += mul(Get(s1,-dx,0), float4x4(0.118249520659447,0.120614200830460,0.005459636449814,-0.159423530101776,0.206270992755890,0.095593400299549,-0.108332484960556,0.050025817006826,0.025569768622518,0.083195343613625,0.005442229565233,0.061621833592653,0.020148664712906,0.077509619295597,0.128454595804214,-0.099030271172523));
res += mul(Get(s1,-dx,dy), float4x4(-0.084719628095627,-0.154393091797829,-0.042201526463032,0.173910334706306,0.077970787882805,-0.039742656052113,0.077270269393921,0.104189440608025,0.027841692790389,0.041085686534643,0.050611432641745,-0.035482212901115,0.054297726601362,0.181695669889450,-0.032423716038465,0.081179067492485));
res += mul(Get(s1,0,-dy), float4x4(0.024741116911173,0.097227610647678,-0.148387029767036,0.009080247022212,-0.038767635822296,-0.032235376536846,-0.256856650114059,-0.122475892305374,-0.219519674777985,-0.026632621884346,0.014067122712731,-0.032310366630554,0.004825287032872,-0.142750024795532,-0.207466199994087,0.016714373603463));
res += mul(Get(s1,0,0), float4x4(-0.010244069620967,0.226724982261658,0.192650809884071,-0.009195893071592,0.033613782376051,0.128688275814056,-0.227113440632820,-0.077799089252949,-0.143131941556931,-0.116606816649437,-0.148443177342415,0.139192387461662,-0.183045178651810,0.166345328092575,-0.001924090203829,0.109101586043835));
res += mul(Get(s1,0,dy), float4x4(0.079531319439411,0.071209728717804,0.115703530609608,0.085878342390060,-0.007946390658617,-0.018522346392274,0.232523500919342,0.068478658795357,0.132084578275681,-0.087372429668903,0.140372112393379,-0.015016726218164,0.005123409442604,-0.099603779613972,-0.158743262290955,0.208616584539413));
res += mul(Get(s1,dx,-dy), float4x4(0.046626377850771,0.010610827244818,-0.039642948657274,0.052829258143902,-0.073814906179905,-0.231359243392944,-0.081060826778412,0.174655511975288,0.131090462207794,-0.246610537171364,0.100960955023766,-0.004877677652985,-0.102077759802341,0.072613678872585,0.167267590761185,0.105799779295921));
res += mul(Get(s1,dx,0), float4x4(-0.239635661244392,0.150397613644600,-0.057702887803316,0.075156033039093,0.140311732888222,-0.053830109536648,-0.127996280789375,-0.013108551502228,-0.015857180580497,-0.097394570708275,-0.096069514751434,0.183706149458885,0.081943675875664,0.146546021103859,0.004742187447846,0.053636435419321));
res += mul(Get(s1,dx,dy), float4x4(0.049837693572044,-0.120377525687218,0.158076554536819,-0.130172103643417,-0.040383622050285,0.007157032378018,0.042155664414167,0.031677763909101,-0.212808117270470,0.000509746139869,0.006379703525454,0.021423351019621,0.037532754242420,0.047233019024134,0.078118763864040,-0.081764377653599));
res += mul(Get(s2,-dx,-dy), float4x4(-0.037549246102571,-0.026124311611056,0.234506249427795,0.007977955974638,-0.083272285759449,-0.072616651654243,0.162262916564941,0.213431000709534,-0.093834377825260,0.308581918478012,0.112539432942867,-0.001962606096640,-0.030606005340815,-0.040844321250916,0.209178328514099,0.074723578989506));
res += mul(Get(s2,-dx,0), float4x4(0.163428828120232,0.188193097710609,0.062611714005470,-0.105745039880276,0.023234058171511,0.048077486455441,0.148792117834091,-0.088802047073841,-0.171123206615448,0.083012543618679,-0.104261018335819,0.119982153177261,-0.087811730802059,0.083986796438694,0.105312414467335,0.022977195680141));
res += mul(Get(s2,-dx,dy), float4x4(-0.068040706217289,-0.112686008214951,-0.077238112688065,-0.074851930141449,-0.011564736254513,0.032681878656149,-0.076423533260822,-0.008427425287664,-0.043374624103308,-0.113468676805496,0.117155455052853,-0.042569220066071,-0.086247012019157,-0.172792464494705,0.081894375383854,-0.315865993499756));
res += mul(Get(s2,0,-dy), float4x4(0.044177126139402,0.010371483862400,-0.022756068035960,0.037956219166517,-0.117298536002636,0.059534564614296,-0.013530524447560,-0.129871875047684,-0.172086089849472,-0.017473623156548,-0.121149227023125,-0.017621321603656,0.061659097671509,0.183147892355919,0.068873286247253,-0.008231213316321));
res += mul(Get(s2,0,0), float4x4(-0.075319841504097,0.183441847562790,-0.123366266489029,-0.018912030383945,-0.083960361778736,0.155218973755836,-0.085463359951973,-0.271815121173859,0.047849554568529,-0.014160710386932,-0.127750247716904,0.206744447350502,-0.117878481745720,0.134572759270668,0.153663307428360,0.140906080603600));
res += mul(Get(s2,0,dy), float4x4(0.028109466657043,-0.077053315937519,-0.015099924989045,-0.110212564468384,0.097959913313389,-0.068797960877419,-0.088442377746105,-0.080111727118492,-0.013156143948436,0.084413141012192,-0.054967030882835,0.061381667852402,-0.083567641675472,0.220471739768982,0.071990802884102,0.065843962132931));
res += mul(Get(s2,dx,-dy), float4x4(0.364314496517181,0.022397721186280,-0.109791457653046,-0.110925257205963,-0.254880666732788,0.203859835863113,-0.032993160188198,-0.067479327321053,-0.205371811985970,0.088606290519238,0.078231751918793,-0.177556484937668,-0.063586711883545,-0.070988535881042,-0.031088139861822,0.118092536926270));
res += mul(Get(s2,dx,0), float4x4(-0.152653381228447,-0.181637316942215,-0.025350704789162,0.398167043924332,0.159630239009857,-0.066868945956230,0.018328353762627,-0.038818556815386,-0.030048821121454,0.082760341465473,-0.031840592622757,0.091642998158932,0.058223772794008,0.065776936709881,0.140507370233536,0.178307607769966));
res += mul(Get(s2,dx,dy), float4x4(-0.048345029354095,0.002988262102008,0.031284529715776,0.114490292966366,-0.061682567000389,0.156057476997375,-0.013998160138726,0.050590716302395,-0.064783923327923,-0.062210969626904,-0.186259403824806,0.082552134990692,0.051154416054487,-0.166209131479263,-0.019974915310740,-0.068249210715294));
res += mul(Get(s3,-dx,-dy), float4x4(0.010259162634611,0.056652836501598,0.147610127925873,0.011293889954686,-0.100758485496044,-0.164275929331779,0.120745688676834,-0.008574220351875,-0.134492084383965,-0.124336361885071,-0.175726875662804,0.156225055456161,-0.165157914161682,-0.115218624472618,-0.163715466856956,0.063654080033302));
res += mul(Get(s3,-dx,0), float4x4(-0.062925830483437,0.146449074149132,-0.024773452430964,-0.039892870932817,0.125437274575233,-0.067781247198582,-0.018564326688647,0.206001982092857,0.031652208417654,-0.180994436144829,-0.072501681745052,-0.005419068038464,-0.057897821068764,0.028714962303638,0.101485155522823,0.048959013074636));
res += mul(Get(s3,-dx,dy), float4x4(-0.213084354996681,-0.172963067889214,0.040258612483740,0.180714875459671,0.065673924982548,-0.193892136216164,0.097912155091763,0.244733482599258,0.041898295283318,0.242403566837311,0.176625326275826,0.099306613206863,-0.083642631769180,-0.035825241357088,-0.079018533229828,-0.122536517679691));
res += mul(Get(s3,0,-dy), float4x4(0.065384849905968,0.058199591934681,-0.057886544615030,0.138104707002640,-0.084532663226128,0.002336335834116,0.030000256374478,0.047783862799406,0.011804622597992,0.000969411223195,-0.039302259683609,0.031524963676929,0.014490969479084,-0.097195491194725,0.087742216885090,0.140068918466568));
res += mul(Get(s3,0,0), float4x4(-0.224318385124207,-0.148902833461761,0.000433679815615,-0.131907045841217,0.013338648714125,0.117014192044735,0.134769931435585,-0.000821499212179,0.099671579897404,-0.063475616276264,-0.214157015085220,-0.067335538566113,0.055543627589941,-0.042370568960905,-0.036649428308010,0.018565574660897));
res += mul(Get(s3,0,dy), float4x4(-0.092248089611530,-0.275806993246078,0.068466000258923,-0.040899638086557,-0.084630951285362,-0.140906751155853,0.069594636559486,0.084782734513283,0.123226389288902,-0.199022933840752,-0.017897680401802,0.126191213726997,0.078253261744976,-0.151184037327766,-0.001801574486308,0.014366894960403));
res += mul(Get(s3,dx,-dy), float4x4(-0.021854145452380,-0.010459175333381,-0.200046628713608,0.130928128957748,0.084968172013760,0.040345285087824,0.073762856423855,-0.182092890143394,0.039372444152832,0.111081451177597,0.005188588518649,0.034289874136448,-0.096582800149918,-0.073933452367783,0.152135044336319,-0.070603504776955));
res += mul(Get(s3,dx,0), float4x4(-0.223280504345894,-0.024177605286241,0.104645222425461,-0.085173130035400,0.047899421304464,-0.028685525059700,0.131581485271454,-0.120445899665356,-0.240164428949356,0.022558705881238,-0.017193652689457,0.050590526312590,0.217856794595718,0.072151876986027,-0.126756891608238,-0.247881174087524));
res += mul(Get(s3,dx,dy), float4x4(-0.089960850775242,-0.021208303049207,-0.087232768535614,-0.044316325336695,0.150124073028564,-0.073425851762295,-0.182193309068680,-0.212917312979698,0.076862648129463,0.059865869581699,0.070449456572533,0.245715871453285,-0.004782379604876,0.004723480436951,-0.007765691261739,0.070732682943344));
return max(float4(0,0,0,0), res);
}
