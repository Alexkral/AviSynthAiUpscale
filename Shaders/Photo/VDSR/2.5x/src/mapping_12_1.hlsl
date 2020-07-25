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
res += mul(Get(s0,-dx,-dy), float4x4(0.007252572569996,0.049622289836407,0.120012268424034,-0.014080302789807,-0.087909087538719,0.122019149363041,-0.087730504572392,-0.019333679229021,0.015707010403275,-0.072868287563324,0.159027367830276,0.210377320647240,0.096083611249924,-0.008577829226851,0.093255013227463,-0.012070482596755));
res += mul(Get(s0,-dx,0), float4x4(0.253530949354172,0.015793740749359,-0.154569745063782,0.166681542992592,0.024132199585438,0.013100376352668,-0.059467356652021,0.151201888918877,-0.101888328790665,0.020460819825530,0.029609981924295,0.080900438129902,0.001351764542051,0.093897402286530,0.154946222901344,0.111194618046284));
res += mul(Get(s0,-dx,dy), float4x4(0.240381807088852,0.066948167979717,-0.031246466562152,0.062882907688618,0.089507251977921,0.095285668969154,0.073663555085659,-0.019673645496368,-0.007297957781702,-0.016996340826154,0.001351894461550,0.107470728456974,0.162904024124146,-0.010031914338470,-0.054056446999311,0.031941983848810));
res += mul(Get(s0,0,-dy), float4x4(-0.144308924674988,0.106912590563297,-0.032682482153177,-0.178233578801155,0.150905787944794,-0.098266951739788,-0.028285851702094,-0.092853739857674,0.044465865939856,0.112307220697403,0.077400930225849,-0.056965198367834,-0.072650052607059,-0.050229892134666,0.098100908100605,-0.003297686344013));
res += mul(Get(s0,0,0), float4x4(-0.057758081704378,-0.224058702588081,-0.131136700510979,-0.023169651627541,-0.081141993403435,-0.032944269478321,0.085840925574303,0.034902840852737,-0.072144411504269,-0.092293143272400,0.050263285636902,-0.058676701039076,0.187375187873840,0.090008564293385,0.043438252061605,-0.163806602358818));
res += mul(Get(s0,0,dy), float4x4(0.007897111587226,-0.026013515889645,0.036884739995003,-0.031327962875366,-0.080390177667141,-0.068890690803528,-0.027482435107231,0.165225505828857,0.012653434649110,0.147471144795418,-0.062279101461172,-0.093568772077560,-0.011522473767400,0.076005905866623,0.114730633795261,-0.101376190781593));
res += mul(Get(s0,dx,-dy), float4x4(0.088634371757507,-0.120951831340790,-0.143906921148300,0.109476000070572,0.052992608398199,0.014435617253184,0.004707882180810,0.029693352058530,-0.146733418107033,-0.090088814496994,-0.199524730443954,-0.052085842937231,-0.049699973315001,-0.002583857392892,0.077144861221313,0.087249942123890));
res += mul(Get(s0,dx,0), float4x4(-0.002985049737617,-0.058212552219629,0.072067640721798,0.009772368706763,-0.092416577041149,0.001474464079365,-0.132233485579491,-0.125894770026207,-0.024029320105910,0.039843101054430,0.074957616627216,-0.065786473453045,-0.073032893240452,-0.127165034413338,0.169056653976440,0.020602075383067));
res += mul(Get(s0,dx,dy), float4x4(0.007412924431264,-0.093438453972340,-0.097053080797195,-0.144261002540588,0.005258042365313,-0.142992228269577,0.303302764892578,0.097999982535839,-0.130052670836449,-0.064683005213737,-0.080064170062542,0.084198459982872,-0.041579671204090,-0.046993449330330,0.009620748460293,0.002203868003562));
res += mul(Get(s1,-dx,-dy), float4x4(0.102712258696556,-0.002532564103603,0.107103869318962,0.041206564754248,0.236624896526337,0.004886929877102,-0.030652824789286,-0.003953200299293,0.014919186942279,0.033574290573597,0.085876405239105,0.040560480207205,-0.081202022731304,-0.077086664736271,0.091599129140377,0.088292323052883));
res += mul(Get(s1,-dx,0), float4x4(-0.032817933708429,0.179555341601372,0.047498788684607,-0.088320635259151,0.100512787699699,-0.082082286477089,-0.017021194100380,-0.078668870031834,0.004049685318023,0.092279501259327,0.007947281934321,-0.039119694381952,-0.187992975115776,-0.188339740037918,-0.160109281539917,0.148184373974800));
res += mul(Get(s1,-dx,dy), float4x4(-0.306302070617676,-0.184741392731667,-0.176062360405922,0.020812038332224,0.095829978585243,0.112214252352715,0.075617410242558,-0.005046848673373,0.084571629762650,0.189830705523491,-0.115678034722805,-0.081115342676640,-0.132905021309853,-0.082792535424232,0.072296760976315,-0.191975578665733));
res += mul(Get(s1,0,-dy), float4x4(0.027383480221033,0.075004853308201,-0.044655952602625,-0.054525703191757,0.088734962046146,0.033663153648376,-0.102838583290577,-0.067261107265949,0.241253495216370,-0.017316414043307,0.010120413266122,-0.031974393874407,-0.202151253819466,0.003150396980345,-0.048538520932198,-0.068223007023335));
res += mul(Get(s1,0,0), float4x4(-0.034188609570265,0.116943769156933,-0.119608432054520,-0.056740432977676,-0.110711708664894,-0.031531285494566,-0.034678731113672,-0.043676566332579,-0.003265224397182,-0.277210026979446,0.109330669045448,0.055630717426538,-0.017285289242864,0.075196787714958,-0.052977960556746,-0.002527002478018));
res += mul(Get(s1,0,dy), float4x4(0.108689397573471,0.219519734382629,0.158626243472099,0.084437265992165,-0.085028551518917,-0.060852792114019,0.150040090084076,0.025492861866951,-0.059606093913317,0.038700688630342,-0.116392642259598,-0.190766349434853,-0.044225748628378,-0.124107912182808,0.044643741101027,-0.025385852903128));
res += mul(Get(s1,dx,-dy), float4x4(0.078931115567684,-0.049199394881725,0.088256202638149,0.112555019557476,0.000941532431170,-0.096593990921974,-0.018340237438679,-0.021454868838191,-0.041634079068899,0.015752911567688,0.105063654482365,0.018593594431877,-0.141086876392365,0.120103456079960,-0.232193633913994,0.078365072607994));
res += mul(Get(s1,dx,0), float4x4(-0.038184605538845,-0.020550919696689,-0.122455604374409,0.082712627947330,0.085689507424831,0.078301660716534,0.223447531461716,0.178133904933929,0.023695295676589,0.057455260306597,-0.148340925574303,-0.037324298173189,0.118307583034039,0.033203024417162,-0.030012754723430,0.014822467230260));
res += mul(Get(s1,dx,dy), float4x4(-0.087821952998638,0.135046854615211,0.017734270542860,0.142016917467117,-0.054154112935066,-0.213014304637909,-0.043221477419138,-0.084209829568863,-0.029896361753345,-0.242643117904663,0.042250294238329,-0.061875011771917,-0.049723900854588,0.044611245393753,0.063163585960865,-0.104080840945244));
res += mul(Get(s2,-dx,-dy), float4x4(0.216549202799797,0.034081626683474,0.098613359034061,0.033682849258184,0.151890233159065,0.065357193350792,0.053907528519630,0.012194327078760,-0.070835150778294,0.053237006068230,-0.073479980230331,-0.114150628447533,-0.091650292277336,-0.092378355562687,-0.037596587091684,0.166488796472549));
res += mul(Get(s2,-dx,0), float4x4(0.058420658111572,0.067246705293655,0.148313954472542,-0.129219591617584,0.093721494078636,0.009918103925884,-0.125599473714828,0.064004205167294,-0.154249995946884,-0.062636442482471,-0.112012386322021,-0.165426656603813,0.062749713659286,-0.071819096803665,-0.069210723042488,0.089956328272820));
res += mul(Get(s2,-dx,dy), float4x4(-0.057777367532253,-0.094859845936298,0.088521994650364,-0.046685747802258,-0.157776921987534,-0.012308539822698,0.054088238626719,0.059225048869848,0.067265965044498,0.168428882956505,-0.034182220697403,0.046365756541491,-0.007787759881467,-0.030295236036181,0.038931671530008,0.104569539427757));
res += mul(Get(s2,0,-dy), float4x4(-0.019658992066979,0.038529947400093,0.062870621681213,0.117821179330349,0.127397939562798,0.023802883923054,0.112396188080311,-0.135334163904190,-0.034762784838676,-0.089924693107605,-0.060394603759050,-0.191099926829338,-0.072407044470310,-0.076681375503540,0.029824741184711,0.081389315426350));
res += mul(Get(s2,0,0), float4x4(0.054034225642681,-0.188741713762283,0.059688933193684,-0.052719306200743,0.143687486648560,0.050110071897507,-0.120689108967781,0.055874034762383,0.024015093222260,-0.096719883382320,-0.141935512423515,0.009177026338875,0.034234054386616,-0.051876928657293,-0.092147260904312,-0.019267458468676));
res += mul(Get(s2,0,dy), float4x4(-0.040042679756880,-0.055562973022461,-0.136224344372749,0.093576565384865,-0.115028575062752,-0.076231658458710,0.096722953021526,-0.128854617476463,0.148125365376472,0.010054867714643,0.061326451599598,-0.094616800546646,-0.102688446640968,-0.085835598409176,-0.026135245338082,-0.088592849671841));
res += mul(Get(s2,dx,-dy), float4x4(-0.124083951115608,-0.036206375807524,0.026207974180579,0.083069354295731,0.147293880581856,-0.036516111344099,0.174312859773636,0.049906119704247,-0.179179206490517,0.175555437803268,-0.189593866467476,-0.022888427600265,-0.079623825848103,-0.056232891976833,0.080230757594109,0.051903963088989));
res += mul(Get(s2,dx,0), float4x4(0.056429527699947,0.092258445918560,0.031353123486042,0.013466561213136,0.031440552324057,0.080959677696228,-0.105453953146935,0.092277817428112,0.044207829982042,0.161292240023613,0.062706030905247,-0.030027387663722,-0.027539860457182,0.011306991800666,0.086782827973366,-0.244514271616936));
res += mul(Get(s2,dx,dy), float4x4(-0.006209201179445,0.006603456567973,0.088814236223698,0.063122339546680,0.208200380206108,0.031953375786543,0.007797059603035,-0.024870676919818,0.036972377449274,0.254547983407974,0.159733712673187,-0.047111038118601,-0.142839968204498,0.018143070861697,0.051910612732172,0.165351331233978));
res += mul(Get(s3,-dx,-dy), float4x4(0.027979563921690,-0.199657931923866,-0.044121470302343,0.028539797291160,0.039269573986530,-0.004841473884881,0.039263088256121,-0.012575712986290,0.010839811526239,0.073323652148247,-0.025511337444186,-0.040187843143940,0.129674851894379,0.016494110226631,-0.101454034447670,0.005994799081236));
res += mul(Get(s3,-dx,0), float4x4(-0.001052303938195,0.036362938582897,-0.103346340358257,0.086463809013367,-0.054809767752886,-0.111564315855503,-0.088905051350594,-0.006432563997805,-0.096574932336807,0.117766559123993,-0.100521884858608,0.037176098674536,0.106516823172569,0.055851828306913,0.143970534205437,0.102793097496033));
res += mul(Get(s3,-dx,dy), float4x4(0.112377762794495,-0.024032054468989,0.013508818112314,0.056885007768869,-0.029078071936965,0.006380033213645,-0.101293839514256,0.187457144260406,-0.165323436260223,0.077502064406872,0.188292771577835,-0.017853563651443,0.032632283866405,0.089558944106102,0.051597550511360,0.114894941449165));
res += mul(Get(s3,0,-dy), float4x4(0.179340034723282,0.003254654351622,0.053003933280706,-0.044029828161001,0.119572170078754,-0.065284237265587,0.142897114157677,-0.040322072803974,0.117661051452160,0.118186734616756,0.028757113963366,-0.041064068675041,0.122084535658360,0.032654318958521,-0.251023292541504,0.052566878497601));
res += mul(Get(s3,0,0), float4x4(0.123052477836609,0.127544477581978,-0.043152626603842,-0.172993198037148,0.029561592265964,-0.028539385646582,0.035542648285627,0.104023240506649,0.034106902778149,-0.038987439125776,0.036837767809629,-0.300676107406616,0.228030800819397,-0.111818686127663,0.142235845327377,-0.223907530307770));
res += mul(Get(s3,0,dy), float4x4(-0.025297965854406,0.060471080243587,0.127020329236984,0.071286462247372,-0.065672494471073,-0.132545709609985,0.009050793945789,0.039547778666019,-0.128117457032204,-0.088711999356747,-0.089767187833786,0.076112069189548,0.023692650720477,0.022437386214733,0.146221965551376,-0.054579414427280));
res += mul(Get(s3,dx,-dy), float4x4(0.006444134749472,-0.134558722376823,0.073529131710529,-0.164790675044060,0.036785893142223,-0.042873583734035,-0.033146318048239,0.103395290672779,-0.022812515497208,0.137184336781502,0.057711899280548,-0.039418723434210,-0.145690634846687,-0.053159460425377,-0.146789997816086,0.059696782380342));
res += mul(Get(s3,dx,0), float4x4(0.107617735862732,-0.057242661714554,-0.018348075449467,-0.063366577029228,0.031576752662659,-0.061448793858290,-0.112067759037018,0.011275123804808,-0.121089294552803,-0.068714857101440,0.002922178478912,0.053499534726143,0.008598492480814,-0.097956933081150,0.039273373782635,0.013481910340488));
res += mul(Get(s3,dx,dy), float4x4(0.000460989977000,-0.155035793781281,0.041210167109966,0.017172256484628,0.062546901404858,0.116781681776047,0.052534028887749,-0.120495796203613,0.071975186467171,0.082496196031570,0.040061157196760,0.049563109874725,-0.024135567247868,-0.035567730665207,0.064235351979733,-0.066978335380554));
return max(float4(0,0,0,0), res);
}
