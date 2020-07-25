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
res += mul(Get(s0,-dx,-dy), float4x4(0.095323167741299,-0.122531637549400,0.010161540471017,-0.020825408399105,-0.010802235454321,0.010300438851118,-0.020257687196136,-0.004808120895177,0.120926283299923,-0.041671540588140,-0.072866842150688,0.038322027772665,-0.071033492684364,0.018799092620611,-0.042915966361761,-0.127622604370117));
res += mul(Get(s0,-dx,0), float4x4(0.017064496874809,0.001046810531989,-0.052057567983866,-0.145895153284073,0.006782379467040,-0.061691459268332,0.039529457688332,0.034535210579634,-0.056398872286081,-0.044083300977945,-0.050163831561804,0.068891905248165,0.026606151834130,-0.113777957856655,0.066416658461094,-0.020690152421594));
res += mul(Get(s0,-dx,dy), float4x4(-0.048626873642206,0.187682554125786,-0.166756391525269,-0.069278411567211,-0.097082383930683,-0.056608147919178,-0.016505805775523,0.065504223108292,0.051119938492775,0.063138604164124,-0.005160602275282,0.061484795063734,-0.033824421465397,-0.151891335844994,0.055355351418257,-0.016142453998327));
res += mul(Get(s0,0,-dy), float4x4(-0.028052756562829,-0.101046808063984,0.240205585956573,0.008785868994892,-0.105618886649609,-0.157942607998848,0.032843295484781,0.056420326232910,0.060676846653223,-0.033767484128475,0.098276861011982,-0.017180500552058,0.101191394031048,0.089125290513039,-0.134000182151794,-0.012041146866977));
res += mul(Get(s0,0,0), float4x4(-0.152120366692543,-0.123279429972172,-0.111340500414371,-0.004045121837407,-0.060459706932306,-0.093604460358620,0.083177514374256,0.008415409363806,0.127668365836143,0.022147934883833,-0.080479659140110,0.059548996388912,0.051558144390583,-0.015149510465562,-0.039573464542627,-0.032291274517775));
res += mul(Get(s0,0,dy), float4x4(-0.109045058488846,0.115221329033375,-0.045090138912201,-0.086215429008007,0.038006890565157,0.001027421676554,0.159730136394501,-0.106288552284241,-0.029453290626407,0.036054082214832,-0.124855704605579,0.082647487521172,-0.022428574040532,0.089450173079967,-0.003844029502943,0.134992167353630));
res += mul(Get(s0,dx,-dy), float4x4(-0.041865743696690,-0.115392692387104,0.122246876358986,0.010500459000468,0.051094673573971,0.023777917027473,0.076416172087193,0.097470901906490,0.032608129084110,0.033162821084261,0.105916388332844,0.020814370363951,0.052077125757933,0.123248018324375,0.027036543935537,-0.027132289484143));
res += mul(Get(s0,dx,0), float4x4(-0.061624180525541,-0.126866564154625,-0.103815063834190,-0.027359331026673,0.001633357140236,0.020540503785014,0.061014614999294,0.001895577763207,0.125952854752541,0.073749057948589,-0.128226533532143,0.059003327041864,0.167783021926880,0.029564805328846,-0.089901402592659,-0.001469665789045));
res += mul(Get(s0,dx,dy), float4x4(-0.011930532753468,-0.145232751965523,-0.074240796267986,0.034218404442072,0.040230575948954,-0.043778944760561,-0.057518880814314,-0.041927304118872,-0.050992414355278,-0.066718116402626,-0.001630108687095,0.022942807525396,-0.030603915452957,-0.124584555625916,0.050496198236942,0.009486377239227));
res += mul(Get(s1,-dx,-dy), float4x4(0.191045358777046,-0.003637695917860,0.044976018369198,-0.047668907791376,0.011756781488657,-0.060369361191988,0.046050716191530,-0.017187379300594,-0.027816539630294,0.018336994573474,0.044921640306711,-0.028398109599948,0.005862742196769,-0.115963637828827,0.072666913270950,-0.049575418233871));
res += mul(Get(s1,-dx,0), float4x4(0.075232818722725,-0.102049641311169,0.012176328338683,0.005476124119014,-0.015390427783132,-0.013315893709660,0.160424247384071,-0.044062931090593,0.019470270723104,-0.028264276683331,0.026777651160955,0.040812864899635,0.078963048756123,-0.039673522114754,-0.130823984742165,-0.110375180840492));
res += mul(Get(s1,-dx,dy), float4x4(0.005370588973165,-0.074004203081131,-0.124103300273418,0.045824036002159,0.009312042035162,0.072527751326561,0.023932283744216,0.061406943947077,0.031368635594845,-0.001021672971547,0.011551124975085,-0.075486138463020,0.065643250942230,0.239661142230034,-0.155972048640251,0.064945496618748));
res += mul(Get(s1,0,-dy), float4x4(0.038784608244896,0.117460757493973,0.073490589857101,0.056057956069708,-0.112337991595268,-0.010985682718456,-0.056454997509718,0.049474436789751,-0.115431696176529,-0.050780072808266,0.110889129340649,0.063816465437412,0.292221397161484,-0.084711849689484,0.079766646027565,0.020980587229133));
res += mul(Get(s1,0,0), float4x4(-0.068261712789536,0.097021944820881,-0.025579214096069,-0.034441478550434,-0.121692605316639,0.033293921500444,0.137098759412766,0.105045735836029,-0.058093998581171,0.108472555875778,0.053623389452696,0.073795624077320,0.076843053102493,-0.054573025554419,-0.003600557800382,-0.010985040105879));
res += mul(Get(s1,0,dy), float4x4(-0.156629055738449,-0.093649171292782,-0.084567390382290,-0.058457441627979,0.105711504817009,0.053480319678783,0.084295742213726,-0.116983287036419,0.035651255398989,-0.119440510869026,0.028321236371994,-0.131083145737648,0.075331211090088,-0.027641680091619,-0.067793786525726,0.086810119450092));
res += mul(Get(s1,dx,-dy), float4x4(-0.115040883421898,-0.048975244164467,-0.021193133667111,-0.026370882987976,-0.002866619266570,0.032198756933212,-0.049686081707478,0.046321537345648,-0.103156581521034,0.055514309555292,-0.109434761106968,0.050679583102465,-0.008493101224303,-0.033219847828150,-0.027142265811563,-0.056504916399717));
res += mul(Get(s1,dx,0), float4x4(-0.114071644842625,0.022442743182182,0.078836508095264,-0.011077214032412,0.129789054393768,0.051076270639896,0.130542546510696,0.013701722957194,0.008288657292724,0.023291494697332,0.052360825240612,0.060535434633493,-0.059247102588415,-0.039084967225790,0.072314165532589,0.030833277851343));
res += mul(Get(s1,dx,dy), float4x4(-0.065794117748737,0.080302275717258,0.113352537155151,-0.031502306461334,0.006344859488308,-0.070007503032684,-0.002141187898815,-0.072062373161316,0.066415868699551,-0.045901931822300,-0.047627478837967,-0.023600917309523,-0.060691859573126,-0.002650863258168,0.023119201883674,-0.093327209353447));
res += mul(Get(s2,-dx,-dy), float4x4(-0.070975907146931,0.188580408692360,-0.009736493229866,0.045427504926920,0.032475512474775,-0.006267561577260,0.083397023379803,0.039593789726496,-0.025924710556865,-0.051634032279253,-0.026772374287248,0.086236692965031,0.091224558651447,0.001155417063273,-0.007255788892508,-0.018560227006674));
res += mul(Get(s2,-dx,0), float4x4(-0.064386852085590,0.085561119019985,0.110584206879139,0.063696861267090,-0.127067193388939,-0.060691487044096,-0.105390273034573,-0.013903005048633,0.097008615732193,0.000941761478316,-0.006300746463239,-0.010395891033113,0.088844068348408,-0.046299975365400,0.052228074520826,0.061228934675455));
res += mul(Get(s2,-dx,dy), float4x4(0.138727396726608,0.012113716453314,-0.066069766879082,-0.107309557497501,-0.020608182996511,0.039131149649620,-0.028923239558935,0.070046700537205,0.072938121855259,-0.040817230939865,-0.055245492607355,0.034933727234602,0.043125689029694,0.087813578546047,-0.001046667341143,-0.026270160451531));
res += mul(Get(s2,0,-dy), float4x4(-0.151764065027237,0.001926249591634,-0.137751102447510,-0.029947089031339,0.074849754571915,-0.101520322263241,0.078723609447479,0.061368357390165,0.027854086831212,-0.078088939189911,0.064650788903236,-0.038656447082758,0.123514115810394,-0.075255617499352,-0.030189428478479,-0.108129829168320));
res += mul(Get(s2,0,0), float4x4(0.066879145801067,0.241323068737984,0.174210429191589,-0.099687427282333,0.002836422063410,-0.084091171622276,-0.094122938811779,-0.012085441499949,0.088686794042587,-0.063989266753197,-0.020665382966399,0.019794151186943,0.031080497428775,-0.057418633252382,-0.011143615469337,-0.014145432040095));
res += mul(Get(s2,0,dy), float4x4(0.067039959132671,0.085420735180378,0.032503914088011,-0.062131151556969,-0.072238184511662,-0.105572991073132,0.154375776648521,-0.006561831571162,-0.044063828885555,-0.009643058292568,0.004156359471381,0.073345400393009,0.046462729573250,0.065969243645668,0.000190544000361,-0.087587080895901));
res += mul(Get(s2,dx,-dy), float4x4(-0.100492455065250,-0.180216237902641,-0.123228743672371,-0.043325260281563,-0.130103856325150,0.008030071854591,-0.157357424497604,0.003778216429055,0.056675609201193,0.016007181257010,-0.029627962037921,0.055618889629841,0.038680549710989,0.056451257318258,0.052938703447580,0.133553236722946));
res += mul(Get(s2,dx,0), float4x4(0.048794388771057,0.053357094526291,0.061779823154211,-0.014304447919130,-0.056918215006590,0.066924042999744,-0.089334800839424,0.022338815033436,0.078041598200798,-0.017875300720334,0.169050708413124,0.072355628013611,0.036748606711626,-0.045760765671730,-0.076043203473091,0.109767705202103));
res += mul(Get(s2,dx,dy), float4x4(0.040976751595736,-0.015727659687400,-0.105208061635494,-0.043903589248657,-0.061793055385351,0.120377197861671,0.270180523395538,0.132151022553444,-0.084413908421993,-0.008918510749936,0.004295683465898,0.108188070356846,0.006165023893118,0.001689820201136,0.097049295902252,-0.053726371377707));
res += mul(Get(s3,-dx,-dy), float4x4(-0.116167366504669,-0.105981089174747,-0.001837916788645,0.125339329242706,0.205444633960724,-0.052664980292320,0.050900112837553,-0.012881931848824,0.165801033377647,-0.005875116679817,-0.009096828289330,-0.012652044184506,0.225876718759537,0.081091858446598,0.152522251009941,0.061375483870506));
res += mul(Get(s3,-dx,0), float4x4(0.017869878560305,-0.020428296178579,-0.023638907819986,-0.036508623510599,-0.008622745983303,-0.091558091342449,0.001952659105882,0.002465521451086,0.087955877184868,-0.003652630839497,-0.000600861967541,-0.008679983206093,0.111296810209751,-0.035033393651247,0.003290594788268,0.103909030556679));
res += mul(Get(s3,-dx,dy), float4x4(-0.065455839037895,-0.014950890094042,-0.090368315577507,-0.042611069977283,-0.064389526844025,-0.204142674803734,-0.065708860754967,-0.071026526391506,0.009613185189664,0.225097596645355,-0.182457506656647,0.065382450819016,-0.046833857893944,-0.004284940194339,-0.007295703981072,-0.000776322034653));
res += mul(Get(s3,0,-dy), float4x4(-0.010488871484995,-0.059970483183861,-0.082960121333599,0.143683359026909,-0.153634265065193,0.107264243066311,0.012241694144905,0.026647150516510,-0.103927232325077,-0.086500190198421,0.160002544522285,-0.079365603625774,-0.091385520994663,-0.019397327676415,-0.005824657157063,-0.038460142910480));
res += mul(Get(s3,0,0), float4x4(-0.072170488536358,-0.066800847649574,-0.051167856901884,-0.032598413527012,-0.121370844542980,0.056248266249895,-0.095980063080788,-0.071877233684063,-0.153746739029884,-0.116272926330566,-0.062998495995998,0.038642223924398,-0.095781810581684,-0.057440098375082,-0.093174576759338,0.116084814071655));
res += mul(Get(s3,0,dy), float4x4(0.031894292682409,0.059226792305708,0.128277957439423,-0.107710137963295,-0.087897844612598,0.002832133090124,-0.034158300608397,0.020984262228012,-0.109282352030277,-0.075638622045517,-0.090467251837254,-0.074313759803772,0.038087747991085,0.100796662271023,0.099015392363071,-0.004590255208313));
res += mul(Get(s3,dx,-dy), float4x4(-0.095159135758877,0.076787360012531,-0.033816147595644,-0.007266618311405,0.022516466677189,0.049588836729527,-0.099147036671638,-0.147166281938553,-0.006945410743356,0.071944229304790,0.086176298558712,0.109909847378731,-0.060295525938272,-0.025929411873221,0.029237862676382,0.060225170105696));
res += mul(Get(s3,dx,0), float4x4(0.117095254361629,-0.038261357694864,0.004715789109468,-0.026167931035161,-0.041707340627909,0.041522096842527,0.008231996558607,0.026783091947436,-0.095937497913837,-0.030290773138404,0.032429210841656,0.126655280590057,-0.019254541024566,-0.086822658777237,0.037390567362309,0.027320649474859));
res += mul(Get(s3,dx,dy), float4x4(-0.000158387731062,0.084232598543167,-0.033407904207706,0.117456786334515,0.013550089672208,0.035346888005733,-0.080836452543736,-0.058695256710052,-0.061345823109150,0.041631162166595,-0.056670475751162,0.007344804238528,0.006660518702120,0.028676718473434,0.143292129039764,-0.038445614278316));
return max(float4(0,0,0,0), res);
}