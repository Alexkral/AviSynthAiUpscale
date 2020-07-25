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
res += mul(Get(s0,-dx,-dy), float4x4(0.029963351786137,0.022529818117619,0.000206232478376,-0.000015915722543,0.013307489454746,-0.018635792657733,0.000607315567322,0.000003185971536,0.002259490080178,-0.024989426136017,0.002301694592461,0.000000630542559,-0.000020909381419,0.000012548945051,0.000010684806512,-0.000004762801836));
res += mul(Get(s0,-dx,0), float4x4(-0.082313135266304,0.040329121053219,0.000274034478934,0.000012262659766,0.098777815699577,-0.009139982052147,-0.000992426066659,0.000012286300262,0.188880667090416,-0.043150421231985,0.001176642836072,0.000001093025503,0.000017933703930,0.000001832754265,-0.000004354860721,-0.000007181271485));
res += mul(Get(s0,-dx,dy), float4x4(-0.042004253715277,0.020038979128003,-0.001427502138540,-0.000000864239951,0.026182739064097,-0.000200067515834,0.001109583536163,-0.000012734667507,0.123637273907661,-0.011129893362522,0.002734551439062,-0.000004308259577,0.000003742200761,0.000002663042324,-0.000002493153715,0.000007709149031));
res += mul(Get(s0,0,-dy), float4x4(0.060899846255779,0.026172028854489,-0.001320823328570,0.000000298904183,-0.022363992407918,0.015954881906509,0.003620734205469,0.000001236885737,-0.046989779919386,-0.016559960320592,0.005305746104568,-0.000003186740059,-0.000013498535736,0.000002353695891,0.000009685688383,-0.000010195582945));
res += mul(Get(s0,0,0), float4x4(0.007905238308012,-0.036486234515905,0.004226279910654,-0.000002429493634,-0.023977616801858,0.085372745990753,-0.003329430473968,0.000011005939996,0.034284029155970,0.092576570808887,-0.003786576213315,0.000013933930859,-0.000005162580692,0.000002906357622,-0.000011675555470,-0.000016898306058));
res += mul(Get(s0,0,dy), float4x4(0.099167943000793,-0.024376699700952,0.004465457983315,0.000010262160686,-0.091555610299110,0.040954448282719,-0.003609017003328,0.000009199834494,-0.111457213759422,0.077909015119076,-0.006363103166223,0.000000677886135,0.000018402426576,-0.000000647787999,-0.000010789417502,-0.000007326786090));
res += mul(Get(s0,dx,-dy), float4x4(0.016229007393122,0.017229694873095,-0.003019399242476,0.000002016460257,0.039869509637356,0.004518824163824,0.005263411905617,0.000013985818441,0.011172295548022,0.004310529213399,0.008324626833200,-0.000010521626791,0.000004066943802,-0.000010147236026,0.000003564666713,0.000006729597317));
res += mul(Get(s0,dx,0), float4x4(-0.032876573503017,-0.025648489594460,-0.001438343781047,-0.000014247721083,0.076883547008038,0.020764568820596,0.004065183456987,-0.000007231150448,0.088594675064087,0.075581565499306,0.005456176120788,-0.000013512176338,0.000003985249350,0.000002875119890,0.000005088126727,-0.000009248079550));
res += mul(Get(s0,dx,dy), float4x4(0.026783226057887,-0.000946108892094,0.002812784863636,0.000011019482372,0.038082182407379,0.004832954611629,0.000561268185265,-0.000009796114682,0.000125949678477,0.038330160081387,-0.002270483877510,-0.000008002780305,-0.000004217879450,0.000003773779554,0.000001034153684,0.000012202187463));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008165752515197,0.046376504004002,0.000043587479013,0.000006871784080,-0.048814374953508,0.016352796927094,0.000814470287878,0.000000574486592,0.000005422247796,0.000003398532044,0.000008954355508,0.000010564557670,-0.029703339561820,0.023721819743514,0.000867701135576,0.000008810510735));
res += mul(Get(s1,-dx,0), float4x4(-0.173756733536720,0.061423469334841,-0.001210963586345,0.000004007535608,-0.031266894191504,0.009564837440848,-0.001054638298228,0.000015881854779,-0.000005572667305,-0.000009214129932,-0.000000052226092,-0.000010736071999,-0.037287577986717,0.006764146964997,0.000686069543008,-0.000017942789782));
res += mul(Get(s1,-dx,dy), float4x4(-0.019172625616193,0.031825099140406,-0.004357927013189,-0.000008166273801,0.045087397098541,0.007192017044872,-0.001797122415155,0.000008472722584,-0.000007898441254,0.000001497589210,0.000007502640528,0.000005621690889,0.053742185235023,0.003023992292583,-0.000657821947243,-0.000004992337836));
res += mul(Get(s1,0,-dy), float4x4(0.065118908882141,0.040308445692062,-0.000714728434104,-0.000017326676243,-0.008646903559566,-0.009806999005377,0.002490539103746,0.000011733776773,0.000002289741360,-0.000000653034249,-0.000007846165317,0.000005959498594,0.007144742645323,-0.015437279827893,0.000925036671106,0.000002585829179));
res += mul(Get(s1,0,0), float4x4(-0.009353129193187,-0.060994181782007,0.011183231137693,-0.000000228850297,0.029141234233975,-0.011182387359440,0.005096271634102,0.000002752168257,0.000014313096472,0.000005811081792,-0.000004045296919,-0.000001883940513,0.058025479316711,-0.043002080172300,0.004736541770399,0.000023010074074));
res += mul(Get(s1,0,dy), float4x4(0.171120002865791,0.016288578510284,0.002709694672376,0.000010049174307,0.042413767427206,0.045349977910519,-0.003043551929295,0.000002273667405,0.000025595816624,0.000009701575436,0.000000765862922,-0.000003807783514,0.079077549278736,0.021483695134521,-0.000360470847227,0.000007063278190));
res += mul(Get(s1,dx,-dy), float4x4(0.014510389417410,0.012712035328150,-0.006413110066205,0.000011791737961,-0.014078499749303,-0.011361261829734,-0.001047977013513,0.000009247271919,-0.000004304116828,-0.000003133429800,0.000016843237972,0.000000346379295,-0.028342328965664,-0.007816842757165,-0.001381528680213,0.000009542357475));
res += mul(Get(s1,dx,0), float4x4(-0.010821769014001,-0.076665990054607,0.003962734248489,-0.000017262660549,0.032585393637419,-0.017941387370229,0.005075136665255,-0.000016895817680,-0.000004653798442,-0.000007534347787,0.000003114230594,0.000018830131012,-0.002314714947715,0.002324681729078,0.002118661534041,0.000001701016004));
res += mul(Get(s1,dx,dy), float4x4(0.130179941654205,0.012636039406061,0.006229771301150,0.000000712800443,0.064185567200184,0.024601571261883,0.000994851579890,-0.000004400409580,0.000004580952464,0.000005856084044,-0.000000187699996,0.000002213293556,0.010550305247307,0.033012095838785,-0.000425039324909,0.000028809481591));
res += mul(Get(s2,-dx,-dy), float4x4(0.194589227437973,-0.036619152873755,-0.000074413153925,-0.000008757469914,0.018162509426475,-0.021742271259427,0.001218731515110,-0.000011767403521,-0.028995657339692,0.007613341789693,0.001943808165379,-0.000006837782166,0.000001522341449,-0.000000180442996,-0.000007356446531,0.000009363902791));
res += mul(Get(s2,-dx,0), float4x4(0.184696644544601,-0.047286283224821,0.006128344684839,-0.000014577766706,0.127057075500488,-0.007927344180644,-0.000754884851631,0.000000340321350,0.007856037467718,0.047519460320473,-0.002962681930512,-0.000013870205294,-0.000003318928066,0.000006359287454,0.000015075453121,-0.000001823311209));
res += mul(Get(s2,-dx,dy), float4x4(0.060962766408920,-0.021092934533954,0.006524431053549,-0.000010282308722,0.021035905927420,0.000532047706656,0.001746210735291,0.000005223254448,-0.055562540888786,0.032364729791880,-0.002148502506316,-0.000000029731593,0.000004278354027,-0.000005212179531,0.000015174300643,0.000008662355867));
res += mul(Get(s2,0,-dy), float4x4(0.032157506793737,0.074527822434902,-0.004603454843163,-0.000013657754607,-0.016819160431623,0.006398773752153,0.004462331067771,0.000004444068054,0.030395805835724,-0.009540132246912,0.005861360114068,0.000006864005627,0.000007914645721,0.000003239859097,0.000012058847460,0.000000990997592));
res += mul(Get(s2,0,0), float4x4(-0.109243810176849,0.086465209722519,-0.010446246713400,0.000016402473193,0.007170095108449,0.091333962976933,-0.004506167024374,0.000001495518177,0.088929317891598,0.037371277809143,0.002430690219626,0.000001210259711,-0.000007300102880,-0.000009830859199,0.000009440041140,-0.000010909954653));
res += mul(Get(s2,0,dy), float4x4(-0.090615943074226,-0.016161549836397,0.004791597370058,-0.000019458804672,-0.101274840533733,0.032192207872868,-0.003148949239403,-0.000005163375590,-0.002198404399678,0.013104265555739,-0.000589845585637,-0.000001543260396,-0.000003669552598,-0.000012208113731,-0.000008791056644,-0.000000240838602));
res += mul(Get(s2,dx,-dy), float4x4(0.074055388569832,0.077420718967915,0.007812994532287,0.000000034834375,0.039438720792532,0.003798407269642,0.006524165626615,0.000012967063412,0.030204551294446,-0.011156447231770,0.002036015735939,-0.000002433195277,0.000002346646397,-0.000019999184588,0.000012904712094,0.000017027441572));
res += mul(Get(s2,dx,0), float4x4(-0.020937180146575,0.089271388947964,-0.004456253256649,-0.000007385620847,0.076682537794113,0.040173824876547,0.002828318160027,-0.000003463015219,0.061135701835155,0.001120809814893,0.001633815467358,-0.000003707184987,0.000003304276788,-0.000005197886821,-0.000014439413462,-0.000003110824082));
res += mul(Get(s2,dx,dy), float4x4(-0.070918165147305,0.002490336308256,0.000920919061173,-0.000007403356449,0.008652652613819,0.006558492779732,-0.000548547192011,0.000025144228857,0.036200992763042,-0.005418496206403,0.001149937277660,-0.000002684326091,0.000007146976259,-0.000010073675185,0.000004504998742,0.000000079401111));
res += mul(Get(s3,-dx,-dy), float4x4(0.003455745754763,0.125255599617958,0.001295095426030,0.000003790449000,0.101351708173752,-0.000204675932764,-0.000315704208333,-0.000003153872967,0.019482335075736,-0.016927855089307,0.000749555125367,-0.000009753191989,-0.020857820287347,0.061486121267080,0.003364163218066,-0.000005239483926));
res += mul(Get(s3,-dx,0), float4x4(-0.406262159347534,0.150756135582924,0.000267934403382,0.000000547691513,-0.002064041560516,0.031517673283815,0.001099141314626,-0.000001574970156,0.100856140255928,-0.016505761072040,0.000234345410718,0.000004258450645,-0.067496255040169,0.010500147007406,0.005832781083882,-0.000006102593943));
res += mul(Get(s3,-dx,dy), float4x4(-0.043477892875671,0.070968620479107,-0.007779269479215,0.000014685741917,-0.069982521235943,0.013275899924338,0.001293643959798,0.000003045443691,0.038035877048969,-0.004718541633338,0.001734618097544,-0.000003155454124,0.141124859452248,0.012506089173257,-0.000090815694421,-0.000002764648116));
res += mul(Get(s3,0,-dy), float4x4(0.191886350512505,0.064736500382423,-0.002686185296625,0.000003390032134,0.064280129969120,0.057059671729803,-0.002109625143930,-0.000003084894615,-0.019725212827325,0.006252788938582,0.002495910506696,-0.000002133818043,0.054970864206553,-0.050895694643259,-0.000513913459145,-0.000008105722372));
res += mul(Get(s3,0,0), float4x4(0.087193220853806,-0.209382459521294,0.025608146563172,0.000008143156265,-0.040324073284864,0.019301664084196,-0.002619757317007,-0.000000535128720,-0.004745208658278,0.063148438930511,-0.003551755333319,-0.000003481977274,0.212645560503006,-0.150416076183319,0.011324440129101,-0.000002311114713));
res += mul(Get(s3,0,dy), float4x4(0.483585923910141,-0.020489282906055,0.011805186979473,-0.000009461352420,0.026310987770557,-0.050705336034298,0.006341341417283,0.000003421586371,-0.072792656719685,0.028475306928158,-0.002478614682332,-0.000012377792700,0.254522144794464,0.011386832222342,0.004657945130020,-0.000008137454643));
res += mul(Get(s3,dx,-dy), float4x4(-0.003256092779338,0.028376914560795,-0.015064433217049,-0.000012258655261,0.058919124305248,0.035491846501827,0.001122454530559,-0.000009874805983,0.023621143773198,0.005461949855089,0.004898786544800,0.000002431722805,-0.089404948055744,0.000283275265247,-0.003067453159019,0.000001770007543));
res += mul(Get(s3,dx,0), float4x4(-0.094846442341805,-0.128995195031166,0.002930771792307,-0.000004885192084,-0.022256236523390,0.003084332216531,-0.004079871810973,0.000001586960366,0.051607966423035,0.035026650875807,0.002197760157287,0.000010419085811,-0.073900111019611,0.058274831622839,-0.001520217861980,0.000007519775863));
res += mul(Get(s3,dx,dy), float4x4(0.176678329706192,0.053074918687344,0.010361959226429,-0.000005050449090,-0.012651260010898,-0.015557548962533,0.002452361863106,-0.000010495272363,0.001116009545512,0.010656251572073,-0.000699031457771,-0.000007012024525,-0.077830247581005,0.089104637503624,-0.003245881758630,-0.000005876547675));
return max(float4(0,0,0,0), res);
}