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
res += mul(Get(s0,-dx,-dy), float4x4(0.106152966618538,-0.138044983148575,-0.010182949714363,-0.076735123991966,-0.084917724132538,0.056477632373571,-0.044985242187977,0.014963409863412,-0.027883131057024,0.000082656246377,-0.022707935422659,-0.073353968560696,-0.010620393790305,0.148298054933548,0.074644394218922,-0.121756561100483));
res += mul(Get(s0,-dx,0), float4x4(-0.070644088089466,0.060123719274998,-0.071899898350239,0.136830925941467,0.058144006878138,-0.025442095473409,-0.000912870338652,-0.049357924610376,0.033502310514450,0.085219413042068,-0.056230340152979,0.280602604150772,-0.120166875422001,-0.028280124068260,0.081055752933025,0.063848771154881));
res += mul(Get(s0,-dx,dy), float4x4(-0.105938352644444,-0.028808664530516,-0.049849823117256,-0.116459272801876,0.000949885754380,0.110152505338192,0.068356081843376,-0.054139640182257,0.071933329105377,0.073526531457901,-0.001851532724686,-0.064624808728695,0.096538379788399,-0.176058143377304,-0.036000203341246,0.025305807590485));
res += mul(Get(s0,0,-dy), float4x4(0.092003449797630,-0.108197562396526,-0.054415643215179,-0.152596831321716,-0.195395439863205,-0.062119409441948,-0.023222148418427,-0.105230949819088,0.057303216308355,0.038100995123386,-0.064035527408123,-0.032486733049154,-0.023738553747535,0.016889132559299,-0.033728908747435,0.052203476428986));
res += mul(Get(s0,0,0), float4x4(-0.053926710039377,0.150175377726555,0.101763479411602,-0.024754563346505,0.076540589332581,0.001232054317370,-0.000574238481931,-0.081145226955414,0.059797655791044,0.151961877942085,-0.054396968334913,0.127639785408974,0.000812460668385,-0.018303226679564,-0.089585952460766,0.193337604403496));
res += mul(Get(s0,0,dy), float4x4(0.054931908845901,-0.111500158905983,0.047773893922567,0.095949985086918,0.043329641222954,0.025566499680281,0.050644829869270,-0.032762069255114,0.092183843255043,-0.170055046677589,-0.055183831602335,-0.078598879277706,-0.044504813849926,0.163146287202835,0.011514769867063,0.019620839506388));
res += mul(Get(s0,dx,-dy), float4x4(0.033098731189966,0.010206625796854,0.000959989149123,-0.069953136146069,-0.006334281060845,0.072292685508728,-0.090479850769043,-0.094605237245560,0.130850389599800,-0.058144759386778,0.041733272373676,-0.036158863455057,-0.035645894706249,0.011386419646442,-0.076278492808342,0.005815261509269));
res += mul(Get(s0,dx,0), float4x4(0.123841412365437,0.000273093173746,0.034947849810123,0.037319101393223,0.091498665511608,0.041935823857784,-0.058554332703352,0.007740922737867,-0.205625876784325,-0.043073829263449,0.010785907506943,0.104484088718891,0.038964767009020,-0.008377657271922,-0.075595989823341,-0.194709241390228));
res += mul(Get(s0,dx,dy), float4x4(0.024579165503383,-0.143693104386330,0.022825574502349,-0.011904928833246,0.052085448056459,0.016092302277684,-0.094050750136375,0.000864003435709,-0.094271190464497,-0.096274346113205,-0.098875030875206,-0.065086409449577,0.055521182715893,-0.123318091034889,-0.080852299928665,0.056055653840303));
res += mul(Get(s1,-dx,-dy), float4x4(-0.117263346910477,-0.103861048817635,-0.193103894591331,0.081467255949974,0.001136896666139,0.018547201529145,0.026297366246581,0.093924470245838,-0.063529416918755,0.077903732657433,-0.104964688420296,0.118918418884277,-0.058594629168510,-0.057406466454268,0.036725848913193,0.037223223596811));
res += mul(Get(s1,-dx,0), float4x4(0.015043475665152,-0.017369322478771,0.038592509925365,-0.061075758188963,-0.012926497496665,0.032249938696623,-0.094655893743038,0.009149389341474,0.107759796082973,0.041173070669174,-0.048904962837696,0.025485781952739,0.041767463088036,0.044227432459593,0.075827993452549,0.014151097275317));
res += mul(Get(s1,-dx,dy), float4x4(-0.005561653990299,-0.030126918107271,-0.061809919774532,0.099917098879814,0.037290573120117,-0.091981738805771,-0.045163862407207,-0.080674163997173,-0.040595442056656,0.004560539498925,0.003682307433337,0.023759815841913,0.013126417063177,-0.051706373691559,0.017367303371429,-0.137769639492035));
res += mul(Get(s1,0,-dy), float4x4(-0.035681463778019,0.078249312937260,-0.028473198413849,-0.024494800716639,0.022991284728050,0.034296680241823,-0.004821687005460,0.037812627851963,0.073615059256554,0.081284277141094,0.110573515295982,0.074983641505241,-0.193838715553284,-0.073275208473206,0.107987746596336,-0.116494037210941));
res += mul(Get(s1,0,0), float4x4(-0.013094493187964,-0.095592558383942,0.170778080821037,-0.103060506284237,-0.083236649632454,-0.039331965148449,-0.033750582486391,-0.037335664033890,0.003886748338118,-0.020179532468319,0.116805762052536,-0.115134365856647,0.048462148755789,0.037696603685617,-0.030198736116290,0.033986266702414));
res += mul(Get(s1,0,dy), float4x4(-0.070087894797325,-0.063925072550774,0.014854602515697,-0.033873748034239,-0.068333096802235,0.073625810444355,-0.094797886908054,0.137295454740524,0.187403380870819,-0.026738097891212,-0.009183296933770,-0.034309912472963,-0.032633304595947,-0.124827668070793,0.043280594050884,0.175378128886223));
res += mul(Get(s1,dx,-dy), float4x4(0.055719189345837,0.112009748816490,-0.027609400451183,-0.035987153649330,0.024781884625554,-0.001568317064084,0.034442055970430,0.072932586073875,-0.033776588737965,-0.084189414978027,-0.153433039784431,-0.059219896793365,-0.053065408021212,-0.105021290481091,-0.098850302398205,-0.101880788803101));
res += mul(Get(s1,dx,0), float4x4(-0.084957502782345,0.139589473605156,-0.058009658008814,0.159813478589058,-0.029069764539599,-0.015602741390467,-0.072590447962284,-0.013345706276596,-0.017225952818990,-0.143569454550743,-0.073402740061283,0.069804787635803,0.031234616413713,-0.058323133736849,0.006654656957835,-0.013616875745356));
res += mul(Get(s1,dx,dy), float4x4(0.064655020833015,0.119510047137737,0.005641834344715,0.083646066486835,-0.035934437066317,-0.062232885509729,-0.086156561970711,0.137116044759750,-0.008298888802528,-0.070745758712292,-0.018685040995479,0.172825038433075,-0.024066941812634,-0.149359568953514,-0.008944471366704,-0.072179213166237));
res += mul(Get(s2,-dx,-dy), float4x4(-0.107371732592583,-0.004932997748256,0.030240319669247,0.077321998775005,-0.002455608453602,0.018424587324262,0.002951147267595,0.129723921418190,-0.063764855265617,-0.023673651739955,-0.187620714306831,-0.108049720525742,0.067203052341938,-0.034059882164001,0.004648720845580,-0.002918261801824));
res += mul(Get(s2,-dx,0), float4x4(-0.124364286661148,0.049188930541277,-0.035369507968426,0.112527042627335,0.038655940443277,0.025599315762520,-0.100976169109344,0.117283932864666,-0.190536126494408,0.022534960880876,-0.029590658843517,-0.095896586775780,-0.111426517367363,0.067361466586590,0.015600512735546,0.124931432306767));
res += mul(Get(s2,-dx,dy), float4x4(-0.193244978785515,-0.027495920658112,0.035655751824379,-0.004677461460233,0.083164207637310,-0.054952137172222,0.036620628088713,0.054801911115646,0.098788656294346,-0.101633518934250,0.089311368763447,0.140255168080330,-0.019806103780866,-0.022180264815688,-0.056712865829468,0.050843086093664));
res += mul(Get(s2,0,-dy), float4x4(-0.033188927918673,-0.008201453834772,0.084303140640259,0.003758712438866,0.075878314673901,0.041680011898279,0.000448460370535,-0.083058774471283,0.009384500794113,0.153573408722878,0.049818135797977,0.221128016710281,-0.026655456051230,0.036609668284655,0.177774682641029,-0.003841679077595));
res += mul(Get(s2,0,0), float4x4(0.108275480568409,-0.075172409415245,-0.144149184226990,0.045388590544462,-0.044965703040361,-0.022303072735667,0.032991852611303,-0.138001948595047,-0.155157282948494,-0.047720175236464,0.028899600729346,0.146515905857086,0.197824567556381,-0.095863737165928,0.005619089584798,-0.077861078083515));
res += mul(Get(s2,0,dy), float4x4(-0.034692119807005,0.083446487784386,0.015006838366389,-0.040780227631330,-0.102485425770283,-0.021693497896194,0.017227051779628,-0.078731812536716,0.065127812325954,-0.107671275734901,-0.127328425645828,0.092940308153629,-0.018758594989777,0.012387735769153,0.053042810410261,-0.048557661473751));
res += mul(Get(s2,dx,-dy), float4x4(-0.037370491772890,-0.050183333456516,-0.073069833219051,0.143773525953293,0.011844258755445,0.083943150937557,0.110426880419254,0.037881903350353,-0.265956193208694,0.090721338987350,0.013406568206847,0.155668184161186,-0.102419525384903,-0.020589279010892,-0.106283821165562,-0.027293166145682));
res += mul(Get(s2,dx,0), float4x4(0.049449782818556,-0.031830973923206,0.036660950630903,0.200816974043846,0.047585625201464,-0.041708942502737,-0.034616440534592,0.168069794774055,0.030929181724787,-0.093936353921890,-0.027292482554913,-0.106939412653446,0.108762226998806,-0.064329363405704,0.063037455081940,0.147656857967377));
res += mul(Get(s2,dx,dy), float4x4(-0.043276824057102,-0.007669155485928,-0.051346939057112,0.009780107066035,0.040439203381538,0.113171771168709,-0.105089381337166,0.015514814294875,0.101222395896912,-0.022810654714704,-0.034221075475216,-0.099714815616608,-0.086410440504551,-0.011952674016356,-0.098221726715565,0.045439541339874));
res += mul(Get(s3,-dx,-dy), float4x4(-0.098700322210789,0.027446530759335,-0.090384691953659,-0.002893289783970,-0.015385687351227,0.069271571934223,0.039256904274225,-0.057446021586657,-0.014486466534436,-0.063273161649704,0.147295877337456,-0.099652774631977,-0.111806720495224,0.096958175301552,0.086785472929478,-0.059392094612122));
res += mul(Get(s3,-dx,0), float4x4(0.078805111348629,0.044434268027544,0.042275082319975,-0.119453355669975,0.023416450247169,-0.041173160076141,-0.197064414620399,-0.098816446959972,-0.040188141167164,0.025991898030043,-0.074125304818153,-0.065919227898121,0.043143872171640,0.018146954476833,-0.057363443076611,0.037422791123390));
res += mul(Get(s3,-dx,dy), float4x4(-0.010327973403037,0.079183064401150,-0.009315687231719,0.023875448852777,-0.019889453426003,0.069650113582611,-0.051836211234331,0.064823202788830,0.010141753591597,-0.010103933513165,0.028350021690130,0.087957829236984,0.005947286263108,0.070289723575115,0.008612440899014,-0.000987154315226));
res += mul(Get(s3,0,-dy), float4x4(-0.077940858900547,0.089632466435432,-0.004875994753093,0.028010167181492,0.077479183673859,-0.002479203278199,0.032772451639175,0.013759337365627,-0.045466534793377,-0.006164141930640,0.040244992822409,0.153717264533043,-0.081972450017929,-0.000976794050075,-0.006691071670502,-0.074563086032867));
res += mul(Get(s3,0,0), float4x4(0.038126017898321,0.085044384002686,-0.006857670843601,0.092400595545769,-0.068301469087601,0.106233522295952,0.048406071960926,-0.027825007215142,0.007940107025206,-0.002502031391487,0.083413980901241,-0.133059039711952,0.017527651041746,-0.010878629982471,-0.024269968271255,-0.096695408225060));
res += mul(Get(s3,0,dy), float4x4(-0.080678299069405,-0.099477186799049,0.052605070173740,0.073737360537052,-0.055264975875616,-0.036867059767246,0.161718115210533,0.014739196747541,-0.004703477956355,0.028432015329599,0.063801191747189,-0.002791046863422,-0.077977135777473,0.119965687394142,0.125100612640381,0.024106945842505));
res += mul(Get(s3,dx,-dy), float4x4(-0.000039084472519,-0.098092697560787,0.017510309815407,-0.017518624663353,0.061681419610977,0.059684574604034,-0.081396296620369,-0.100030809640884,0.087239317595959,0.085672229528427,-0.033358711749315,-0.025544067844748,0.039732046425343,0.074244990944862,0.185063123703003,0.085862137377262));
res += mul(Get(s3,dx,0), float4x4(-0.071814306080341,-0.028948454186320,-0.077762104570866,-0.186163768172264,0.000214622923522,-0.096026301383972,-0.063110865652561,-0.015134466812015,0.003783223452047,0.052832208573818,0.052259381860495,0.058578643947840,-0.060322668403387,0.022798320278525,0.001950289006345,0.046020761132240));
res += mul(Get(s3,dx,dy), float4x4(-0.030034458264709,-0.015498722903430,0.003116053063422,0.024027878418565,0.012874484993517,-0.014045634306967,0.111592523753643,-0.077712766826153,0.044658839702606,0.087375827133656,-0.054237082600594,0.139331936836243,-0.045930679887533,-0.044229738414288,-0.104883924126625,-0.040489889681339));
return max(float4(0,0,0,0), res);
}
