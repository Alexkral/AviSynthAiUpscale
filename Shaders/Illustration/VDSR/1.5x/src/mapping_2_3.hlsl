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
res += mul(Get(s0,-dx,-dy), float4x4(0.040864754468203,-0.000530652294401,0.002305094618350,0.029188647866249,-0.056239902973175,0.070753954350948,-0.013400339521468,-0.031171131879091,-0.016392353922129,0.022233309224248,0.016768641769886,0.030618544667959,-0.034521304070950,0.073189415037632,0.061218634247780,-0.017457788810134));
res += mul(Get(s0,-dx,0), float4x4(0.019403226673603,0.003503159852698,-0.003564263926819,-0.024569816887379,-0.144482120871544,-0.082881592214108,0.010779770091176,0.017612868919969,-0.025879722088575,-0.011359412223101,0.035824544727802,-0.080945841968060,-0.047840196639299,0.230719059705734,0.020637847483158,0.044873658567667));
res += mul(Get(s0,-dx,dy), float4x4(0.009608780033886,-0.008563050068915,-0.000922871578950,-0.028528343886137,0.033882856369019,0.112083345651627,0.049532417207956,0.143121972680092,-0.022747823968530,-0.044998984783888,0.009902345947921,-0.019302232190967,-0.041111525148153,0.136824935674667,0.036285422742367,-0.011097595095634));
res += mul(Get(s0,0,-dy), float4x4(0.011758332140744,0.000825335038826,0.002772921230644,0.040646322071552,-0.054454997181892,-0.069724090397358,0.003361747367308,-0.132497251033783,-0.008138821460307,0.046963799744844,0.014779909513891,0.019099023193121,0.010173778049648,-0.024156931787729,0.006490427535027,-0.086732067167759));
res += mul(Get(s0,0,0), float4x4(-0.009443239308894,-0.004761237651110,-0.001409004325978,-0.001314760535024,-0.091452486813068,0.125836461782455,0.035977017134428,0.014722984284163,-0.012647075578570,0.038065671920776,0.043523445725441,0.017903372645378,-0.006878570653498,-0.063508033752441,0.019896814599633,-0.018316207453609));
res += mul(Get(s0,0,dy), float4x4(-0.011376714333892,0.003944734111428,-0.010526036843657,0.001570326625369,0.131950810551643,-0.008667857386172,0.054110534489155,0.206513896584511,0.005119957495481,0.021107912063599,0.019076362252235,-0.023902198299766,-0.018491568043828,0.007898134179413,0.092248007655144,-0.065494827926159));
res += mul(Get(s0,dx,-dy), float4x4(0.006735657807440,0.015926441177726,0.007857498712838,0.042041257023811,-0.051889184862375,0.110683806240559,-0.016003554686904,-0.066468767821789,0.010872807353735,0.034466754645109,-0.025713959708810,-0.039760418236256,0.020787533372641,0.114157713949680,-0.038884513080120,0.004960845690221));
res += mul(Get(s0,dx,0), float4x4(-0.013898445293307,0.035595122724771,0.014140191487968,0.034640718251467,0.018487546592951,-0.064993128180504,-0.044154517352581,0.194143056869507,-0.011552986688912,0.047576408833265,-0.021536717191339,0.008814130909741,0.005173830781132,0.232962787151337,-0.017809364944696,-0.032081063836813));
res += mul(Get(s0,dx,dy), float4x4(-0.002443316858262,0.034234806895256,0.011293067596853,0.098646461963654,0.010397242382169,-0.149913892149925,-0.061808601021767,-0.245674386620522,0.022203154861927,0.031069461256266,-0.007249276153743,-0.030237955972552,-0.034087579697371,0.123637862503529,-0.008720916695893,0.021002130582929));
res += mul(Get(s1,-dx,-dy), float4x4(0.039628226310015,0.019451327621937,0.010988783091307,0.004841476213187,0.111074745655060,0.022975677624345,-0.017300780862570,0.101363375782967,-0.193819835782051,-0.074192605912685,-0.077429994940758,-0.044243872165680,0.011811003088951,-0.006015542894602,-0.000448028440587,-0.003822271944955));
res += mul(Get(s1,-dx,0), float4x4(-0.026823351159692,0.034704253077507,0.004591592587531,-0.059078499674797,0.013008856214583,-0.008413628675044,-0.019511045888066,0.003031133441254,-0.139331161975861,0.112032160162926,-0.036795474588871,0.058262165635824,0.007326680701226,-0.024254964664578,0.006105335429311,-0.034154478460550));
res += mul(Get(s1,-dx,dy), float4x4(-0.007336441893131,-0.000282583059743,-0.002473929431289,0.019697621464729,0.002479678718373,0.017241548746824,-0.023781707510352,0.019033314660192,0.174539148807526,0.008096057921648,-0.037200834602118,0.150543972849846,0.013391154818237,-0.045780654996634,0.009338024072349,-0.022594720125198));
res += mul(Get(s1,0,-dy), float4x4(0.051971208304167,0.010326739400625,-0.000400236604037,0.039089266210794,0.112497679889202,0.003467749105766,-0.004778753500432,0.070316538214684,-0.097884140908718,0.014306417666376,0.064835064113140,-0.195050403475761,0.002110631670803,-0.010716744698584,0.002651599468663,0.047548979520798));
res += mul(Get(s1,0,0), float4x4(-0.028194706887007,-0.021026358008385,0.009810827672482,-0.108224600553513,-0.002990294015035,0.025857795029879,-0.020795727148652,-0.033266585320234,0.055654920637608,0.136631205677986,0.077182509005070,0.546721756458282,0.022857807576656,-0.032070972025394,0.005247914697975,-0.019323684275150));
res += mul(Get(s1,0,dy), float4x4(-0.003223114646971,0.010461336933076,0.018393147736788,-0.035140708088875,-0.002891817130148,0.047572288662195,-0.026118727400899,0.031012568622828,0.230526790022850,-0.148859605193138,0.063508138060570,0.351754307746887,0.021581362932920,-0.029491543769836,-0.000240548019065,-0.006815967150033));
res += mul(Get(s1,dx,-dy), float4x4(0.018445702269673,-0.016586221754551,0.004033855628222,0.007214401382953,0.079899385571480,0.007537505123764,0.008853171952069,0.075040377676487,-0.014541203156114,-0.023757468909025,-0.053052324801683,-0.033221106976271,0.002699594944715,-0.000402555335313,-0.000494999112561,-0.006399039644748));
res += mul(Get(s1,dx,0), float4x4(-0.011299915611744,-0.001532556605525,0.014286451973021,0.030660592019558,-0.001384660135955,-0.005175212398171,0.035163931548595,0.021476043388247,0.051479846239090,-0.084792681038380,-0.106748729944229,-0.273888289928436,0.008670524694026,0.000683041755110,-0.004497211426497,-0.005500650033355));
res += mul(Get(s1,dx,dy), float4x4(0.018300963565707,0.044257890433073,0.018308939412236,0.064959146082401,-0.003278899006546,0.002047338755801,0.038769222795963,-0.046283587813377,0.015500657260418,0.058789722621441,-0.095383062958717,-0.212957754731178,0.002179160015658,0.012396982870996,-0.004844723735005,-0.025040870532393));
res += mul(Get(s2,-dx,-dy), float4x4(0.032962772995234,-0.066230908036232,0.008000444620848,-0.016042947769165,-0.023958554491401,-0.030776336789131,0.008027620613575,-0.008622135035694,-0.006431765388697,0.007849652320147,-0.011596747674048,-0.005715935956687,0.055000662803650,-0.007052794098854,-0.005971466191113,0.034561153501272));
res += mul(Get(s2,-dx,0), float4x4(0.011836882680655,-0.089700020849705,0.004132713191211,-0.039299976080656,-0.009167257696390,0.020309362560511,0.001128831296228,-0.006374398712069,-0.007676379289478,0.014438549987972,-0.012748796492815,-0.010729993693531,-0.002680330071598,-0.003364152042195,-0.005945744458586,-0.037748467177153));
res += mul(Get(s2,-dx,dy), float4x4(-0.022775676101446,-0.109506227076054,0.017636824399233,-0.074719540774822,-0.008622641675174,0.013971744105220,0.012293485924602,0.000341988692526,0.005585599690676,0.006060375832021,-0.026586940512061,-0.005889251828194,-0.000373415241484,0.026508687064052,-0.008903006091714,-0.022217206656933));
res += mul(Get(s2,0,-dy), float4x4(-0.003901496995240,-0.032966885715723,-0.004974294453859,0.003172998782247,0.010107483714819,-0.017190087586641,0.027558578178287,-0.090736009180546,-0.003513682633638,0.003214522032067,0.026762958616018,0.016388963907957,0.056996978819370,-0.007185684982687,-0.022635826840997,0.010776017792523));
res += mul(Get(s2,0,0), float4x4(-0.026993982493877,-0.003037253161892,-0.007116392254829,-0.037201020866632,0.004304619040340,-0.027706678956747,0.037690263241529,-0.104894138872623,0.001030953135341,0.001399782719091,0.030199164524674,-0.033195633441210,-0.017320618033409,0.049708176404238,-0.033348098397255,-0.043474387377501));
res += mul(Get(s2,0,dy), float4x4(-0.032573245465755,0.029009994119406,-0.000341890816344,-0.030916549265385,0.010988976806402,-0.008777559734881,0.066562429070473,-0.053867816925049,-0.001449753646739,-0.005819398444146,0.006434940267354,-0.020900562405586,-0.005610021762550,0.028856007382274,-0.032393321394920,-0.008868247270584));
res += mul(Get(s2,dx,-dy), float4x4(-0.024461304768920,0.024906001985073,0.004922013264149,-0.064732715487480,0.012039858847857,-0.016071999445558,-0.010440685786307,-0.018628461286426,-0.010089081712067,0.022437362000346,0.004221347626299,-0.026415329426527,0.034320384263992,-0.011998743750155,0.021088646724820,0.014694856479764));
res += mul(Get(s2,dx,0), float4x4(-0.029784945771098,0.058926779776812,0.012396280653775,-0.016369624063373,0.025337306782603,0.003952083177865,-0.005779242608696,-0.097748152911663,0.010755388997495,0.028301727026701,0.005452132318169,0.039168067276478,-0.015839107334614,-0.001320721348748,0.030394548550248,-0.062055252492428));
res += mul(Get(s2,dx,dy), float4x4(-0.018169226124883,0.024161908775568,0.007557923905551,-0.083007805049419,0.036042314022779,0.006476151756942,-0.010073382407427,0.005085027776659,0.003629525192082,0.014184015803039,0.005032849032432,-0.020802579820156,-0.011483738198876,-0.007455284241587,0.030541125684977,-0.054618049412966));
res += mul(Get(s3,-dx,-dy), float4x4(-0.003330422565341,0.005790636874735,0.003226063679904,0.030179277062416,0.002319671213627,0.006027359515429,0.002220902126282,-0.011403448879719,-0.000231392376008,-0.006117247976363,0.000759113230743,-0.001368428696878,0.008218163624406,0.025722214952111,0.003034142078832,-0.044875428080559));
res += mul(Get(s3,-dx,0), float4x4(-0.012104716151953,0.004414634779096,0.014267895370722,-0.016756663098931,0.003494650125504,-0.010655575431883,-0.005424494855106,-0.003992552403361,-0.002349041868001,-0.002157507697120,0.001521208323538,0.000225131181651,-0.004524940159172,0.005617174785584,-0.002995355520397,0.026954509317875));
res += mul(Get(s3,-dx,dy), float4x4(-0.000145903861267,0.004784152843058,0.006070933304727,-0.034180339425802,0.002793753053993,-0.022080924361944,0.012600911781192,-0.007782168686390,-0.001572751556523,-0.004564996343106,0.003724011359736,0.003756120800972,-0.008786482736468,-0.037966977804899,0.006609394215047,-0.039434872567654));
res += mul(Get(s3,0,-dy), float4x4(0.016021411865950,0.006802889518440,0.004385209176689,0.014273086562753,-0.000044943444664,0.006745741702616,-0.000491491227876,0.000206006399821,-0.002364641753957,0.003829710884020,-0.001717338920571,0.001615119981579,-0.015215823426843,0.000997169408947,0.003634886117652,-0.004363870248199));
res += mul(Get(s3,0,0), float4x4(0.011416511610150,0.006528556812555,0.010685203596950,0.027496930211782,0.008084530942142,-0.017542548477650,-0.002326468238607,0.008452913723886,0.001817997312173,-0.000203197399969,-0.010089828632772,-0.006847865879536,0.006946505513042,-0.014499171636999,0.002495700726286,0.001102730398998));
res += mul(Get(s3,0,dy), float4x4(0.007601339370012,-0.009348259307444,0.008761289529502,0.004993945825845,0.000183119205758,0.002533875172958,-0.000080104546214,-0.006557849235833,-0.001345810480416,-0.004149105399847,0.003167141461745,0.001447060261853,0.009381718002260,0.000335581717081,0.007552122231573,-0.037504680454731));
res += mul(Get(s3,dx,-dy), float4x4(0.013498093001544,-0.005017541348934,-0.006406841333956,0.026975361630321,-0.003598381765187,0.009666094556451,-0.000244954018854,-0.021449627354741,0.008981720544398,0.003837746568024,0.003092277795076,-0.004895463585854,-0.005115126725286,0.018323427066207,-0.003393709892407,-0.012267359532416));
res += mul(Get(s3,dx,0), float4x4(0.007252371869981,-0.000534507096745,0.002234805608168,-0.053179990500212,-0.001415271894075,-0.008773568086326,-0.008687192574143,0.012176253832877,0.003510863985866,-0.002515987027436,0.001224976847880,0.000845116912387,0.003135514911264,0.000744031625800,-0.010554167442024,-0.002874503377825));
res += mul(Get(s3,dx,dy), float4x4(-0.000091083114967,0.005516818258911,-0.000936013355386,-0.014887020923197,0.004558031912893,0.007983366958797,-0.000336629105732,-0.045944944024086,-0.000108943771920,-0.004207409452647,0.002962014405057,-0.001427492825314,-0.011825711466372,0.012536208145320,-0.005031154025346,-0.045766893774271));
return max(float4(0,0,0,0), res);
}
