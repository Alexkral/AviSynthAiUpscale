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
res += mul(Get(s0,-dx,-dy), float4x4(-0.059873756021261,-0.071967959403992,0.080929428339005,-0.153431743383408,0.164279595017433,0.111731216311455,0.016983306035399,-0.061055555939674,0.041604224592447,0.112926922738552,-0.011898247525096,0.004111550748348,-0.163081869482994,-0.083752609789371,0.007831664755940,0.136488661170006));
res += mul(Get(s0,-dx,0), float4x4(0.120478689670563,0.069519110023975,0.129532277584076,-0.003010845510289,0.276075035333633,-0.148741483688354,-0.122493796050549,-0.183242544531822,-0.046060420572758,-0.357918262481689,-0.045869879424572,-0.006585134658962,-0.017232248559594,-0.050663728266954,0.003463327884674,0.002783149713650));
res += mul(Get(s0,-dx,dy), float4x4(-0.093884930014610,-0.032014254480600,0.086518451571465,0.125664189457893,0.198640406131744,-0.093112558126450,-0.030445851385593,0.116563402116299,-0.038574419915676,-0.200056090950966,-0.035575825721025,-0.014372915960848,-0.034479808062315,-0.066153660416603,-0.044025938957930,-0.125826194882393));
res += mul(Get(s0,0,-dy), float4x4(-0.100216984748840,0.038988675922155,0.166422024369240,0.099056407809258,0.066637173295021,0.212387025356293,-0.058732092380524,-0.010351578705013,-0.249890089035034,-0.096275046467781,-0.147188335657120,-0.098205991089344,0.215613797307014,0.136536583304405,-0.002563324291259,-0.047151755541563));
res += mul(Get(s0,0,0), float4x4(0.187038436532021,0.095375530421734,0.208622872829437,-0.030138725414872,-0.082168936729431,-0.191956877708435,0.064518421888351,0.134882673621178,-0.021858466789126,-0.090069048106670,-0.219962477684021,0.120377145707607,0.076405763626099,-0.142150193452835,0.175985217094421,0.098015025258064));
res += mul(Get(s0,0,dy), float4x4(0.058548711240292,0.024925859645009,0.114942640066147,0.029734266921878,0.031244479119778,-0.019349016249180,0.036953162401915,0.128312632441521,-0.103282205760479,-0.073626421391964,-0.160555958747864,-0.005140020046383,-0.181540757417679,-0.178752064704895,0.142725422978401,-0.109628595411777));
res += mul(Get(s0,dx,-dy), float4x4(-0.161386892199516,0.025812024250627,0.073911681771278,-0.056800957769156,-0.068591065704823,-0.057943597435951,-0.009387603960931,-0.084672681987286,-0.053458549082279,-0.332278847694397,-0.204909726977348,-0.060629710555077,-0.019022542983294,0.005221325904131,0.131640359759331,-0.020555201917887));
res += mul(Get(s0,dx,0), float4x4(-0.146059513092041,-0.082440547645092,-0.038879141211510,0.291218847036362,0.032560415565968,-0.361560076475143,0.098042614758015,-0.082707360386848,-0.235982984304428,-0.160859972238541,0.006587698124349,-0.080643013119698,0.210066705942154,-0.047787413001060,0.202689066529274,-0.092254318296909));
res += mul(Get(s0,dx,dy), float4x4(0.026887677609921,0.118839837610722,0.103823728859425,0.078556068241596,-0.056543398648500,0.010283868759871,0.040578059852123,-0.054955016821623,-0.098266914486885,-0.019557975232601,0.019739760085940,-0.116947174072266,-0.141066759824753,0.142587214708328,-0.136939823627472,0.118304528295994));
res += mul(Get(s1,-dx,-dy), float4x4(0.256104648113251,0.134845525026321,0.041084475815296,-0.001760170212947,-0.064488612115383,0.143644779920578,0.021215166896582,0.169749617576599,-0.070145651698112,-0.029531599953771,0.125096425414085,-0.056402165442705,0.138498485088348,0.060282904654741,-0.214881390333176,0.063967399299145));
res += mul(Get(s1,-dx,0), float4x4(-0.134498029947281,0.276718854904175,0.234680891036987,0.004929027985781,0.042399711906910,-0.104246981441975,-0.088671632111073,0.012799903750420,0.086512267589569,0.149253323674202,-0.028279216960073,0.051289219409227,0.087676778435707,0.060919668525457,0.127563551068306,0.048454292118549));
res += mul(Get(s1,-dx,dy), float4x4(-0.008964751847088,-0.039960436522961,-0.215770334005356,-0.065473049879074,0.037087924778461,-0.107018396258354,-0.183814808726311,-0.125732645392418,-0.030415687710047,0.166878685355186,-0.044031891971827,-0.179729625582695,0.087384045124054,0.163271382451057,0.160414293408394,0.138613596558571));
res += mul(Get(s1,0,-dy), float4x4(0.007046042941511,0.020085176452994,-0.034820936620235,-0.094630762934685,0.070753969252110,-0.012566133402288,0.216773033142090,-0.028319973498583,0.063147746026516,0.018440270796418,-0.149202808737755,-0.025850705802441,0.030668508261442,-0.131625652313232,0.168777152895927,-0.118061102926731));
res += mul(Get(s1,0,0), float4x4(0.299988776445389,0.168866425752640,-0.127220228314400,0.024528035894036,-0.059428140521049,0.021911373361945,-0.030664382502437,-0.033809497952461,0.253946691751480,-0.000633930729236,-0.198410376906395,-0.047527529299259,-0.221816524863243,0.175217121839523,0.023674774914980,0.006855557207018));
res += mul(Get(s1,0,dy), float4x4(0.147890314459801,-0.031331755220890,-0.236775785684586,0.007683449890465,-0.092951491475105,-0.001105319708586,-0.086086332798004,-0.048382710665464,-0.146017596125603,0.027006190270185,-0.127095624804497,-0.012460508383811,-0.040607824921608,-0.208794191479683,0.122246257960796,0.052722647786140));
res += mul(Get(s1,dx,-dy), float4x4(0.052298579365015,-0.003495229873806,-0.064507029950619,0.196504309773445,0.223748654127121,-0.237730652093887,0.204578816890717,-0.052438851445913,-0.180749341845512,0.089740321040154,-0.163678660988808,-0.025686761364341,-0.076581202447414,0.204199537634850,0.178557738661766,0.040485184639692));
res += mul(Get(s1,dx,0), float4x4(-0.039536099880934,-0.044698387384415,0.058822672814131,0.061222616583109,-0.048741534352303,-0.038720823824406,0.190265312790871,-0.136488243937492,-0.016232091933489,-0.085033752024174,0.028564175590873,-0.020352777093649,0.032369740307331,0.201702132821083,0.098381355404854,-0.037480123341084));
res += mul(Get(s1,dx,dy), float4x4(0.012134335935116,0.161267578601837,-0.240702137351036,-0.098268158733845,0.055992659181356,0.179499864578247,-0.001002424512990,-0.025877363979816,-0.065620176494122,-0.059790737926960,0.122971691191196,0.040403380990028,-0.081118255853653,-0.054109398275614,0.050476692616940,0.080893181264400));
res += mul(Get(s2,-dx,-dy), float4x4(-0.136182993650436,-0.024884693324566,-0.132641404867172,-0.155765652656555,-0.109276264905930,0.050999373197556,0.083949528634548,0.063850909471512,-0.054464522749186,-0.047130081802607,0.063606843352318,0.006590126082301,0.095843806862831,0.087668381631374,-0.102067090570927,-0.029833462089300));
res += mul(Get(s2,-dx,0), float4x4(0.018646204844117,-0.030979322269559,-0.082917280495167,0.421286284923553,-0.250516593456268,-0.059695161879063,-0.075209632515907,0.061105828732252,0.025119414553046,0.162174597382545,-0.018468644469976,0.050593554973602,0.195288732647896,-0.002356301527470,0.345158308744431,-0.122320264577866));
res += mul(Get(s2,-dx,dy), float4x4(0.034418232738972,-0.047111123800278,-0.078372597694397,0.143207758665085,-0.055455464869738,-0.180528715252876,0.148207381367683,0.070501610636711,-0.037091422826052,0.065340042114258,-0.092457830905914,-0.122151389718056,-0.102557390928268,-0.034972339868546,0.188229650259018,-0.154983565211296));
res += mul(Get(s2,0,-dy), float4x4(0.250949203968048,-0.011755431070924,0.044597465544939,-0.080550603568554,-0.008260129950941,0.035827368497849,0.029985437169671,-0.031446855515242,-0.098261818289757,-0.123650200664997,0.156677827239037,0.141297012567520,0.056334778666496,-0.022542169317603,0.130012899637222,0.034963458776474));
res += mul(Get(s2,0,0), float4x4(-0.060918502509594,0.008323947899044,-0.000271033030003,-0.058723598718643,0.037449847906828,-0.159805804491043,0.164183869957924,-0.096941240131855,-0.090310290455818,0.244019672274590,-0.116466879844666,0.191768378019333,-0.130079522728920,-0.025700658559799,-0.005194464698434,-0.142267048358917));
res += mul(Get(s2,0,dy), float4x4(0.288629621267319,-0.185000568628311,-0.093003533780575,-0.078222274780273,0.080678388476372,-0.116129703819752,0.092856541275978,0.004394242074341,0.026885112747550,-0.130826354026794,0.010986778885126,0.206019207835197,0.010007501579821,-0.067405566573143,0.001936086686328,-0.176902547478676));
res += mul(Get(s2,dx,-dy), float4x4(-0.107224196195602,0.116815418004990,-0.006995539646596,0.006493966560811,-0.146853536367416,-0.054299447685480,0.065610565245152,-0.004462303593755,0.177976667881012,-0.085821934044361,-0.151694685220718,0.057075191289186,-0.004297259263694,-0.027766469866037,-0.078144766390324,-0.028874853625894));
res += mul(Get(s2,dx,0), float4x4(0.130360797047615,0.171640232205391,0.106254994869232,0.139958664774895,0.009129317477345,0.064154654741287,0.200429692864418,-0.049096476286650,-0.048278059810400,0.097973167896271,-0.029667319729924,0.044766776263714,-0.110216893255711,0.063039943575859,0.060764968395233,-0.045202367007732));
res += mul(Get(s2,dx,dy), float4x4(0.191487625241280,-0.087152980268002,-0.031299240887165,-0.020269932225347,-0.194264873862267,0.121530354022980,0.029551776126027,0.002067125635222,-0.059761088341475,0.056420084089041,0.013175366446376,0.209785327315331,-0.109822086989880,-0.036704666912556,-0.179683685302734,0.146384075284004));
res += mul(Get(s3,-dx,-dy), float4x4(0.156034708023071,0.047160837799311,-0.055757798254490,0.008101693354547,0.057999659329653,0.011402959935367,0.032271988689899,-0.148276016116142,-0.068930432200432,-0.153880044817924,0.001879668096080,-0.084274120628834,-0.038937792181969,-0.067258432507515,-0.145484521985054,-0.062536545097828));
res += mul(Get(s3,-dx,0), float4x4(0.160600587725639,-0.049240488559008,-0.250300556421280,-0.134506911039352,-0.056752067059278,-0.046262048184872,-0.054063163697720,0.041715152561665,0.009389355778694,-0.107064314186573,-0.017954858019948,0.317980408668518,-0.178150787949562,0.010434929281473,0.256165981292725,0.008163366466761));
res += mul(Get(s3,-dx,dy), float4x4(0.056836444884539,0.073179453611374,0.016145298257470,0.272768974304199,-0.061623673886061,-0.016698896884918,-0.298138052225113,0.053793501108885,-0.156717449426651,-0.118665628135204,0.093957096338272,0.117568381130695,-0.054900947958231,0.018365915864706,-0.028540126979351,0.058538284152746));
res += mul(Get(s3,0,-dy), float4x4(0.091665267944336,-0.122159533202648,0.012685567140579,0.064440004527569,0.077064469456673,0.295222699642181,0.188185572624207,-0.028848171234131,0.146313413977623,0.117824092507362,-0.046611338853836,0.086060382425785,0.004655527416617,0.138695985078812,-0.076637297868729,0.190340846776962));
res += mul(Get(s3,0,0), float4x4(0.101270817220211,-0.157567337155342,0.094359844923019,0.110489770770073,-0.023851526901126,0.007119268644601,-0.045163389295340,-0.133932828903198,-0.139969557523727,-0.098472341895103,0.112057290971279,-0.070532821118832,-0.034071881324053,-0.082878395915031,0.040715251117945,-0.096484512090683));
res += mul(Get(s3,0,dy), float4x4(0.094712309539318,0.014267132617533,-0.045217048376799,0.072529673576355,-0.080264389514923,-0.059986229985952,0.115585230290890,-0.021659044548869,-0.128703966736794,0.141491502523422,-0.210086748003960,-0.316825717687607,0.193974360823631,-0.076633751392365,0.095196619629860,-0.038192465901375));
res += mul(Get(s3,dx,-dy), float4x4(0.089277572929859,-0.068361185491085,0.041041728109121,0.133878633379936,-0.204289272427559,0.070218957960606,-0.043010920286179,0.012007855810225,-0.010669220238924,0.117102973163128,0.041202917695045,-0.006474145222455,-0.210596486926079,0.000113268688438,0.096262827515602,-0.211970537900925));
res += mul(Get(s3,dx,0), float4x4(-0.007618114817888,0.006866278592497,-0.075717583298683,-0.028714552521706,0.085631966590881,0.026512891054153,0.075038507580757,-0.141169592738152,-0.300645530223846,-0.060147333890200,-0.000623817613814,-0.058795243501663,-0.110777109861374,0.004080703947693,0.112720713019371,-0.134397521615028));
res += mul(Get(s3,dx,dy), float4x4(0.070673018693924,0.233924552798271,-0.073875978589058,-0.184115618467331,-0.168307945132256,0.007723599672318,-0.060037970542908,0.065330080688000,-0.042143199592829,-0.094674617052078,-0.013015752658248,-0.002853167476133,0.043859273195267,-0.195352986454964,-0.108137033879757,-0.193845048546791));
return max(float4(0,0,0,0), res);
}