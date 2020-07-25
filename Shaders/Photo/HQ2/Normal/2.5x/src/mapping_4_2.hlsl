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
res += mul(Get(s0,-dx,-dy), float4x4(0.025233928114176,0.033727463334799,-0.203514188528061,-0.086240544915199,0.007274828851223,0.009520744904876,0.048413392156363,0.013681137934327,0.001886930200271,0.020467249676585,-0.057363215833902,0.002932033268735,-0.004648453556001,0.028277797624469,-0.030552769079804,0.004289997275919));
res += mul(Get(s0,-dx,0), float4x4(0.102066829800606,-0.101093918085098,-0.215276136994362,0.024568784981966,-0.020075576379895,0.012668133713305,-0.000011374337191,0.038776502013206,0.012710129842162,-0.033414505422115,0.027679795399308,-0.051466438919306,-0.011700266972184,0.014232788234949,0.051364704966545,0.021571228280663));
res += mul(Get(s0,-dx,dy), float4x4(-0.054708734154701,-0.002408542670310,-0.151735007762909,0.053410895168781,-0.038272757083178,0.042217198759317,-0.035336967557669,0.016996689140797,-0.018574543297291,-0.041377224028111,0.012130315415561,-0.019635077565908,-0.029654514044523,0.044830020517111,0.068460017442703,0.000051491464546));
res += mul(Get(s0,0,-dy), float4x4(0.034933812916279,0.031442794948816,-0.052958015352488,-0.101398587226868,0.079702794551849,-0.011432628147304,0.039983734488487,0.082147188484669,-0.056599576026201,-0.049655370414257,-0.071667395532131,0.019451506435871,0.022702565416694,0.004715456161648,-0.054618760943413,-0.007193373516202));
res += mul(Get(s0,0,0), float4x4(0.096564598381519,-0.169656425714493,-0.082852117717266,0.012862829491496,0.056145429611206,0.013940645381808,-0.059031821787357,0.070550397038460,-0.073813192546368,-0.068656884133816,0.076554007828236,-0.064355507493019,0.045014824718237,-0.072406247258186,-0.057956423610449,0.088617362082005));
res += mul(Get(s0,0,dy), float4x4(-0.030645359307528,-0.175281897187233,-0.047815188765526,0.081192888319492,0.105849124491215,0.014918177388608,-0.033656422048807,0.029993265867233,-0.087133742868900,-0.001919620553963,0.075259111821651,-0.024183120578527,0.000161972697242,-0.045768450945616,0.008325996808708,0.104137733578682));
res += mul(Get(s0,dx,-dy), float4x4(0.010877083986998,0.046943321824074,0.100133195519447,0.010564421303570,0.035509400069714,-0.027072310447693,0.071283124387264,0.027072399854660,-0.003770503448322,0.053858127444983,-0.065448604524136,0.043381817638874,-0.004442347679287,0.072469502687454,-0.051317870616913,-0.024634601548314));
res += mul(Get(s0,dx,0), float4x4(0.030515477061272,-0.030316974967718,0.203890621662140,-0.042213402688503,0.011023054830730,-0.016269484534860,0.028614174574614,0.020196491852403,-0.020785642787814,0.052764091640711,0.016710568219423,0.003842297475785,-0.022245155647397,-0.071300558745861,-0.043827939778566,-0.016313286498189));
res += mul(Get(s0,dx,dy), float4x4(0.028271766379476,-0.056965515017509,0.033387094736099,0.012895185500383,0.061779640614986,-0.043755102902651,-0.015103206969798,0.027877099812031,-0.041818525642157,0.029339939355850,0.023013945668936,0.048999551683664,-0.077319368720055,-0.068893164396286,-0.037157457321882,0.019632404670119));
res += mul(Get(s1,-dx,-dy), float4x4(0.027429493144155,0.010097452439368,0.055525600910187,0.078986302018166,-0.015117649920285,0.041896633803844,0.004486492834985,0.071159385144711,-0.023974049836397,-0.028217466548085,0.102426208555698,-0.017194017767906,0.061217237263918,0.050220809876919,-0.012891828082502,-0.115058191120625));
res += mul(Get(s1,-dx,0), float4x4(0.017169347032905,-0.016425292938948,0.116982236504555,0.079537503421307,-0.019844662398100,0.036089878529310,-0.068274669349194,0.096391744911671,0.018292590975761,-0.055513948202133,0.045694429427385,0.004654778167605,0.015514836646616,0.036233890801668,-0.003049242543057,-0.086147308349609));
res += mul(Get(s1,-dx,dy), float4x4(0.030887667089701,-0.014133767224848,0.033035527914762,0.077354989945889,-0.026724686846137,-0.035903099924326,-0.037223286926746,0.126367285847664,0.004190985579044,0.031509600579739,0.032568372786045,0.049017585813999,0.003895725822076,0.066430278122425,-0.052464753389359,-0.050052739679813));
res += mul(Get(s1,0,-dy), float4x4(0.057360816746950,0.008391414768994,0.004743865691125,0.045670803636312,0.035641096532345,-0.008632806129754,-0.038611948490143,0.088264741003513,-0.071652226150036,0.068827413022518,0.125711455941200,-0.041537418961525,0.054488804191351,-0.030966311693192,-0.043370977044106,0.005574449431151));
res += mul(Get(s1,0,0), float4x4(0.043888643383980,-0.037760723382235,-0.054721135646105,0.113904356956482,0.026533260941505,0.036497250199318,-0.016945462673903,0.073275104165077,-0.008395037613809,0.050657294690609,0.041376423090696,-0.032781343907118,0.130558997392654,-0.064433664083481,0.003750717267394,-0.053174510598183));
res += mul(Get(s1,0,dy), float4x4(0.053589731454849,-0.010080368258059,-0.046995200216770,0.096694149076939,0.040676869452000,0.022973077371716,-0.025530654937029,0.002765013137832,0.040321186184883,0.045748118311167,-0.036422725766897,0.109005138278008,0.022922609001398,0.008499302901328,-0.021848594769835,-0.072399266064167));
res += mul(Get(s1,dx,-dy), float4x4(0.069103807210922,-0.041199248284101,-0.069972902536392,0.008817781694233,-0.004113565664738,-0.006169491913170,-0.065037436783314,0.082708112895489,-0.065045364201069,0.021742427721620,0.029832137748599,0.025232557207346,0.064408257603645,-0.050965476781130,-0.061283405870199,0.021740775555372));
res += mul(Get(s1,dx,0), float4x4(0.085268162190914,0.014247630722821,-0.072927989065647,0.037590462714434,0.022115519270301,-0.021868115290999,-0.035028006881475,-0.030596766620874,-0.004275197628886,0.041230037808418,0.007521948311478,0.001454919809476,0.040851943194866,-0.077301628887653,-0.062170624732971,0.001756854238920));
res += mul(Get(s1,dx,dy), float4x4(0.028147401288152,-0.011121031828225,-0.066725373268127,0.048458084464073,0.013130572624505,0.000532394566108,-0.042456217110157,0.011817579157650,-0.000058997626184,0.042801264673471,-0.007517483551055,0.079339385032654,0.026812948286533,-0.017512803897262,-0.022331101819873,-0.042356979101896));
res += mul(Get(s2,-dx,-dy), float4x4(-0.031212696805596,0.066090673208237,-0.011400268413126,-0.060403633862734,-0.026480389758945,-0.010574570856988,0.014963666908443,-0.030606821179390,-0.010419461876154,0.032475009560585,0.068646937608719,-0.024152813479304,0.082103744149208,-0.014298018068075,0.020914491266012,-0.077703230082989));
res += mul(Get(s2,-dx,0), float4x4(-0.025032538920641,-0.041401445865631,0.005424413364381,-0.011807369068265,-0.005189339630306,0.065677240490913,0.009161020629108,-0.026609919965267,-0.060247879475355,0.042654991149902,-0.070990048348904,0.072098694741726,0.050150636583567,-0.007711908780038,0.118751838803291,-0.007210929412395));
res += mul(Get(s2,-dx,dy), float4x4(-0.059492714703083,-0.022408172488213,-0.017190288752317,-0.064864180982113,-0.034897703677416,0.030006913468242,0.015457734465599,-0.058282025158405,0.018480420112610,0.123878203332424,0.088988333940506,-0.026184096932411,0.056015688925982,-0.041670665144920,0.057352438569069,0.020220724865794));
res += mul(Get(s2,0,-dy), float4x4(-0.024362308904529,-0.058168694376945,0.003219464095309,0.003481916850433,-0.001922843512148,0.002626190194860,0.047657810151577,-0.016629280522466,-0.043539948761463,-0.016305901110172,-0.170501157641411,0.078437849879265,0.044676467776299,-0.013792865909636,-0.051571920514107,-0.024452323094010));
res += mul(Get(s2,0,0), float4x4(-0.024421302601695,-0.078694179654121,-0.137882843613625,0.114851720631123,0.026163415983319,0.035501066595316,-0.005245930515230,0.068464756011963,0.112905196845531,0.037899356335402,0.044405966997147,-0.029707642272115,0.110160246491432,0.011773139238358,-0.068700887262821,0.074239023029804));
res += mul(Get(s2,0,dy), float4x4(0.029083404690027,0.042548947036266,-0.075626894831657,0.029423933476210,-0.004750701598823,0.006485992576927,0.006814733613282,0.017858926206827,0.055833470076323,0.067810960114002,-0.009807730093598,-0.046131726354361,0.098700955510139,0.116576150059700,0.065938003361225,0.005365736782551));
res += mul(Get(s2,dx,-dy), float4x4(0.011803902685642,0.004478394985199,-0.024362325668335,0.036110464483500,0.023901084437966,-0.048612829297781,0.049801718443632,-0.035180538892746,-0.113756604492664,0.026253987103701,0.029834620654583,-0.018193392083049,0.011929050087929,-0.036689002066851,0.014912142418325,-0.064471617341042));
res += mul(Get(s2,dx,0), float4x4(0.061057049781084,0.112436674535275,-0.008996550925076,0.007976287975907,0.081470213830471,-0.048279922455549,0.018119450658560,-0.021453510969877,-0.029157912358642,-0.003344096941873,-0.105355784296989,-0.037979021668434,-0.009435753338039,-0.046131033450365,-0.007381474599242,-0.010515497066081));
res += mul(Get(s2,dx,dy), float4x4(0.086821481585503,0.054535180330276,-0.126971915364265,-0.015204220078886,0.048295896500349,-0.062775209546089,0.034992899745703,-0.002481424249709,0.001627879450098,-0.033655244857073,0.031754769384861,-0.016442334279418,0.022259749472141,0.024623692035675,0.021085456013680,0.043158084154129));
res += mul(Get(s3,-dx,-dy), float4x4(-0.052793059498072,-0.000794510531705,-0.031339593231678,0.044597752392292,0.008171566762030,-0.004050023853779,-0.001588227692991,0.012071275152266,-0.011469114571810,-0.001379970228299,-0.031731836497784,0.019029961898923,0.002145053818822,0.048898309469223,-0.011097135953605,-0.041736107319593));
res += mul(Get(s3,-dx,0), float4x4(-0.043626129627228,0.020998828113079,0.006510758306831,0.033401034772396,0.043523751199245,0.053804159164429,-0.011561476625502,0.045256406068802,-0.036222655326128,-0.006130796391517,0.001313841436058,0.057266317307949,-0.090605586767197,0.126182243227959,0.015410469844937,-0.014518013224006));
res += mul(Get(s3,-dx,dy), float4x4(-0.092612817883492,0.047053560614586,0.009670752100646,-0.074475087225437,-0.033529665321112,0.041115481406450,-0.002056479686871,0.019583482295275,-0.000240541019593,0.045843541622162,0.037222571671009,0.048075735569000,-0.076906181871891,0.044557560235262,0.036967873573303,0.005462443921715));
res += mul(Get(s3,0,-dy), float4x4(0.107372693717480,-0.011875313706696,0.029103701934218,-0.083936460316181,-0.025170221924782,0.003959994763136,-0.031478434801102,0.075755827128887,0.068037249147892,-0.051186118274927,-0.074065864086151,-0.011126271449029,-0.041895065456629,-0.043623305857182,0.020113995298743,-0.064857684075832));
res += mul(Get(s3,0,0), float4x4(0.133099079132080,-0.030714308843017,0.004171846900135,-0.011464556679130,-0.055979002267122,0.020490098744631,-0.002099597593769,-0.037136431783438,0.036094471812248,-0.059846598654985,-0.030317960307002,0.135538533329964,-0.136199221014977,-0.074500165879726,-0.004630834329873,0.039744675159454));
res += mul(Get(s3,0,dy), float4x4(-0.014976957812905,0.036873515695333,-0.033511426299810,-0.018539179116488,-0.083623416721821,0.029342060908675,-0.002126554958522,-0.003847255604342,-0.008191983215511,0.040471769869328,0.079671047627926,0.103667236864567,-0.140744745731354,0.005313397850841,0.034701373428106,0.069249406456947));
res += mul(Get(s3,dx,-dy), float4x4(0.033512316644192,0.053854163736105,0.041402481496334,-0.105110064148903,-0.003341590752825,-0.003399422625080,-0.006894232239574,-0.001067347242497,0.110170803964138,-0.037385236471891,-0.014076638966799,0.029579605907202,-0.053774870932102,0.012359190732241,-0.033076785504818,-0.048013176769018));
res += mul(Get(s3,dx,0), float4x4(0.089348524808884,-0.069586813449860,0.003636986948550,-0.005054310895503,-0.044253516942263,-0.006531006656587,-0.005756985396147,-0.047587361186743,0.084863722324371,0.050567083060741,0.115797646343708,0.079793781042099,-0.031463187187910,-0.056288477033377,0.031689371913671,0.021986167877913));
res += mul(Get(s3,dx,dy), float4x4(-0.028625413775444,-0.021689234301448,-0.028419265523553,0.037661511451006,-0.036815553903580,0.028794813901186,0.025972491130233,-0.047164704650640,0.020247517153621,0.095790378749371,0.040959656238556,0.103672683238983,-0.040150407701731,-0.060765597969294,0.059857647866011,0.035313721746206));
return max(float4(0,0,0,0), res);
}