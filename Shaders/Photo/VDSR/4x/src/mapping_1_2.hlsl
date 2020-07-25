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
res += mul(Get(s0,-dx,-dy), float4x4(0.015535075217485,0.164622575044632,-0.055677503347397,0.020222308114171,0.033024497330189,0.040221724659204,-0.021441549062729,-0.246598690748215,-0.037322048097849,-0.017043499276042,-0.008981027640402,-0.080031760036945,-0.061559140682220,-0.151550412178040,0.060658719390631,-0.162758409976959));
res += mul(Get(s0,-dx,0), float4x4(-0.031996741890907,-0.009396011941135,-0.195418596267700,0.089982241392136,-0.045046377927065,0.268442660570145,0.046731002628803,-0.179032012820244,-0.063232213258743,-0.226442128419876,0.057777546346188,-0.075975760817528,0.220736294984818,0.228607863187790,0.049412697553635,-0.073928743600845));
res += mul(Get(s0,-dx,dy), float4x4(0.045836418867111,-0.022926069796085,-0.089479207992554,0.335003882646561,-0.058926790952682,0.037831701338291,-0.069455042481422,-0.108037561178207,0.029635732993484,0.078984782099724,0.106729067862034,-0.056825384497643,0.107842341065407,-0.180235534906387,-0.116133593022823,0.049459364265203));
res += mul(Get(s0,0,-dy), float4x4(0.075983248651028,0.235055416822433,-0.038141235709190,-0.024310780689120,0.043330475687981,-0.006046914495528,0.019606091082096,0.102310031652451,-0.009289117529988,-0.197929099202156,0.010889593511820,-0.082118086516857,0.145897641777992,0.037994235754013,0.146585792303085,0.006819815374911));
res += mul(Get(s0,0,0), float4x4(-0.090848483145237,-0.130126103758812,-0.067830808460712,0.113807380199432,-0.018312064930797,0.080981478095055,-0.114766344428062,-0.193119823932648,-0.091166205704212,0.155338436365128,0.048841740936041,0.046236757189035,-0.085338354110718,-0.099909394979477,-0.246580839157104,-0.071314141154289));
res += mul(Get(s0,0,dy), float4x4(-0.030073096975684,-0.024294380098581,-0.036120437085629,-0.115527503192425,0.173119798302650,0.052917625755072,0.038636349141598,0.062467668205500,0.102682635188103,-0.068511538207531,-0.090532988309860,-0.115880385041237,-0.047036800533533,-0.001965728821233,0.204723879694939,0.046611439436674));
res += mul(Get(s0,dx,-dy), float4x4(-0.116873279213905,-0.172736078500748,-0.198752149939537,-0.153986826539040,0.002629869151860,0.202871814370155,0.028137406334281,0.078445583581924,-0.011051185429096,-0.047099646180868,0.156441748142242,-0.151513382792473,-0.065778709948063,0.056301590055227,-0.049333762377501,0.123142220079899));
res += mul(Get(s0,dx,0), float4x4(0.177923157811165,0.009570680558681,-0.053497049957514,0.019565682858229,-0.286257654428482,-0.028388751670718,0.077091522514820,-0.019755171611905,0.092227347195148,-0.181742295622826,-0.219616934657097,-0.176406592130661,0.208050772547722,-0.020925641059875,0.102841228246689,-0.135423108935356));
res += mul(Get(s0,dx,dy), float4x4(-0.124823398888111,-0.058001615107059,-0.049874607473612,-0.163596168160439,0.150058344006538,0.052848722785711,0.178523555397987,-0.073601894080639,0.012425182387233,-0.042345501482487,-0.070554994046688,0.172038063406944,0.173360943794250,0.112456925213337,0.003741767955944,-0.098877154290676));
res += mul(Get(s1,-dx,-dy), float4x4(0.078575938940048,0.042936954647303,0.113469846546650,-0.024946086108685,-0.152299568057060,-0.108641654253006,-0.113411836326122,0.241146370768547,0.099338158965111,-0.116523660719395,-0.002464089309797,-0.122460089623928,-0.125045403838158,0.141362786293030,-0.244113251566887,0.137423858046532));
res += mul(Get(s1,-dx,0), float4x4(0.312680333852768,0.045088592916727,-0.016410710290074,-0.112502686679363,0.065987795591354,0.001883615157567,0.172676160931587,0.276924461126328,-0.079117126762867,-0.216399922966957,-0.050147242844105,0.074858620762825,-0.049958191812038,-0.080497734248638,-0.085640631616116,0.089878991246223));
res += mul(Get(s1,-dx,dy), float4x4(0.215155363082886,-0.036572419106960,-0.097758740186691,0.283046871423721,-0.123907193541527,-0.115198753774166,0.035337168723345,-0.061630275100470,0.121857106685638,-0.063662648200989,-0.026330454275012,-0.117572106420994,-0.117934629321098,-0.109602764248848,0.044049702584743,-0.004659243859351));
res += mul(Get(s1,0,-dy), float4x4(0.068848915398121,-0.186840176582336,0.058495633304119,0.192594751715660,0.048651982098818,0.120080113410950,-0.128329843282700,0.072456188499928,0.044704642146826,0.102935098111629,0.264045864343643,0.281081110239029,0.065491184592247,-0.078036919236183,-0.215357169508934,-0.219132617115974));
res += mul(Get(s1,0,0), float4x4(-0.079006157815456,0.118428334593773,0.058526989072561,-0.003992306068540,0.035818565636873,-0.065590865910053,0.144643083214760,-0.008487078361213,-0.067713350057602,0.056687381118536,-0.079539284110069,-0.034573398530483,0.155114725232124,-0.065900690853596,0.051647875458002,0.105074688792229));
res += mul(Get(s1,0,dy), float4x4(-0.034770242869854,-0.070634871721268,-0.154146149754524,0.025783287361264,0.104182831943035,-0.075017064809799,0.005675808060914,-0.187653467059135,-0.004348113201559,0.129701137542725,0.079509913921356,0.010609654709697,0.103815242648125,-0.006211314350367,-0.111209779977798,0.090193212032318));
res += mul(Get(s1,dx,-dy), float4x4(0.127212047576904,-0.061355698853731,0.184089705348015,0.059772685170174,-0.054617982357740,0.028701851144433,0.027228346094489,0.079886548221111,-0.129262134432793,0.016121940687299,-0.026523496955633,0.045667782425880,-0.278287440538406,-0.103180415928364,-0.120423488318920,-0.079349994659424));
res += mul(Get(s1,dx,0), float4x4(0.014788391999900,-0.031409323215485,-0.058975704014301,0.041117608547211,0.001144179841504,0.114478401839733,0.014777312055230,-0.153026252985001,0.059059862047434,0.007589652668685,-0.047808986157179,0.180674418807030,0.120453976094723,-0.058891497552395,0.055186163634062,-0.175421565771103));
res += mul(Get(s1,dx,dy), float4x4(-0.051671046763659,0.008402969688177,0.133512735366821,0.045974995940924,-0.021566972136497,-0.016824554651976,0.074356839060783,0.201298624277115,-0.108160987496376,-0.019699160009623,-0.106280699372292,0.022142155095935,0.035191699862480,-0.136800035834312,-0.005689437501132,-0.161781281232834));
res += mul(Get(s2,-dx,-dy), float4x4(0.026393204927444,-0.055553622543812,0.024902947247028,0.031883299350739,-0.065978765487671,0.101843640208244,0.000381940277293,-0.136815458536148,-0.056236840784550,0.007151796482503,-0.014636218547821,0.011750233359635,-0.009433668106794,0.032546564936638,0.042051948606968,-0.185450673103333));
res += mul(Get(s2,-dx,0), float4x4(-0.002689094748348,-0.150754794478416,0.003319235285744,0.030961107462645,-0.008717094548047,-0.122499607503414,0.082961358129978,0.071459725499153,0.157511323690414,-0.126156687736511,0.131374388933182,0.091192096471786,-0.109145544469357,-0.121001593768597,0.007972884923220,0.017983600497246));
res += mul(Get(s2,-dx,dy), float4x4(-0.242834091186523,0.066099420189857,-0.152631267905235,-0.113931514322758,-0.169594094157219,-0.046965908259153,0.050830472260714,-0.119507059454918,-0.166305437684059,0.007997751235962,-0.021059252321720,-0.006130798254162,-0.016935121268034,-0.016437405720353,0.046232670545578,0.218126878142357));
res += mul(Get(s2,0,-dy), float4x4(0.036831498146057,-0.057052049785852,0.142149597406387,0.090839579701424,0.039720673114061,0.069569960236549,0.062462426722050,0.050988595932722,0.234875351190567,0.060820262879133,-0.073318511247635,-0.234615758061409,0.017320930957794,0.051269605755806,0.003820175537840,-0.068790614604950));
res += mul(Get(s2,0,0), float4x4(-0.036091256886721,-0.318687081336975,0.023320931941271,0.097311250865459,-0.082412756979465,-0.020252050831914,-0.135671898722649,-0.229017511010170,-0.083727970719337,0.005030979868025,0.036711141467094,-0.089546978473663,-0.004343776963651,0.052879001945257,0.116464056074619,-0.013834248296916));
res += mul(Get(s2,0,dy), float4x4(-0.133684322237968,-0.024876702576876,0.106765285134315,-0.035071972757578,-0.069026231765747,0.028640016913414,-0.105375953018665,0.003682702779770,-0.115716435015202,-0.012731414288282,0.045288216322660,0.086368992924690,0.032266005873680,0.151195392012596,0.172128558158875,0.068407684564590));
res += mul(Get(s2,dx,-dy), float4x4(0.121464632451534,-0.130592435598373,-0.045986507087946,0.028525831177831,-0.025458965450525,0.072497770190239,0.094150014221668,0.107979796826839,0.127270922064781,0.082766965031624,0.101345248520374,-0.279063552618027,0.089769996702671,0.037159189581871,0.139151811599731,-0.091257944703102));
res += mul(Get(s2,dx,0), float4x4(-0.117556609213352,-0.160316959023476,0.164104834198952,-0.042393401265144,-0.121500805020332,0.128417566418648,-0.117107689380646,-0.023166695609689,0.094485878944397,-0.050398904830217,0.114418573677540,0.078798055648804,0.027414869517088,-0.014019005931914,-0.018449179828167,0.058475200086832));
res += mul(Get(s2,dx,dy), float4x4(0.072322532534599,-0.050944894552231,0.031782962381840,-0.057576950639486,0.034539308398962,-0.132113680243492,-0.149939939379692,-0.011946565471590,-0.068504668772221,-0.115802876651287,0.076100505888462,0.062664315104485,-0.094617731869221,-0.052435439080000,0.076926171779633,0.122924476861954));
res += mul(Get(s3,-dx,-dy), float4x4(0.044761281460524,-0.207316368818283,0.215273752808571,-0.004255348350853,-0.021946089342237,0.112715572118759,0.101501353085041,-0.262339115142822,-0.010685064829886,0.070974558591843,-0.004401934333146,-0.164421841502190,0.151090055704117,0.069596342742443,-0.093343734741211,-0.011472962796688));
res += mul(Get(s3,-dx,0), float4x4(-0.372621953487396,-0.043068315833807,0.067041330039501,-0.007433064747602,-0.051553715020418,-0.170785635709763,0.061045546084642,0.068575300276279,0.107253834605217,-0.097370550036430,-0.091394267976284,0.130145967006683,0.123859234154224,0.188881874084473,0.246998935937881,-0.035944063216448));
res += mul(Get(s3,-dx,dy), float4x4(0.065403230488300,0.144599795341492,0.053724035620689,0.062299210578203,-0.189044877886772,-0.227333754301071,-0.064138829708099,-0.093563057482243,-0.089093916118145,-0.057992119342089,-0.071657530963421,-0.145495235919952,-0.104532591998577,0.012365141883492,-0.213489711284637,0.096203081309795));
res += mul(Get(s3,0,-dy), float4x4(0.083306565880775,-0.147552356123924,0.106290891766548,-0.056637525558472,-0.127686008810997,-0.048342488706112,-0.104870900511742,-0.010845380835235,0.203505188226700,-0.164793372154236,0.062221270054579,0.218070909380913,0.074755802750587,0.066373884677887,0.116911694407463,-0.023074004799128));
res += mul(Get(s3,0,0), float4x4(-0.118571303784847,-0.069817200303078,-0.041371524333954,0.097394801676273,0.001410992932506,-0.033155854791403,0.044918868690729,-0.046558145433664,-0.075933419167995,-0.109897740185261,0.124190837144852,0.062550656497478,-0.250457525253296,0.039663624018431,0.105231791734695,-0.079357758164406));
res += mul(Get(s3,0,dy), float4x4(0.253967523574829,-0.001441286061890,0.110821560025215,-0.007649720180780,0.006596199236810,-0.004445107188076,0.058919362723827,-0.052948411554098,-0.081009812653065,-0.038682587444782,-0.029481105506420,0.068252913653851,-0.011664396151900,0.156522959470749,-0.032026935368776,-0.022515840828419));
res += mul(Get(s3,dx,-dy), float4x4(0.004319493193179,-0.012908401899040,0.075191564857960,-0.248899638652802,-0.023554136976600,-0.151584386825562,-0.005036923103034,-0.070923253893852,-0.238519787788391,-0.049471307545900,-0.114541709423065,0.114056766033173,-0.214583918452263,-0.055354185402393,-0.075654678046703,0.125880599021912));
res += mul(Get(s3,dx,0), float4x4(-0.181441158056259,0.052607901394367,0.038341086357832,0.132892131805420,-0.142723724246025,0.115687310695648,0.019908493384719,0.090721204876900,-0.083928562700748,-0.112064331769943,0.204085826873779,-0.081171974539757,0.199731394648552,-0.176599010825157,-0.035596199333668,-0.061849262565374));
res += mul(Get(s3,dx,dy), float4x4(-0.021672565490007,0.053856886923313,-0.034785211086273,0.241657137870789,0.097118787467480,-0.046473611146212,-0.052615888416767,0.026459742337465,-0.070725299417973,-0.050970315933228,-0.109740458428860,-0.022447081282735,-0.087289355695248,-0.083384491503239,-0.081078529357910,-0.001279343850911));
return max(float4(0,0,0,0), res);
}
