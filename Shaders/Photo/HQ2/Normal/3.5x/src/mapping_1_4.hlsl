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
res += mul(Get(s0,-dx,-dy), float4x4(-0.011035406030715,0.015692627057433,-0.010360680520535,-0.002366465982050,-0.048932112753391,-0.068353034555912,0.003787713591009,0.006049959920347,0.004005401860923,-0.010289232246578,-0.000898160447832,-0.000284089182969,0.010619726032019,0.157633975148201,-0.014298038557172,-0.004446247126907));
res += mul(Get(s0,-dx,0), float4x4(-0.003349932376295,0.014146089553833,-0.009446878917515,0.015671635046601,-0.047977950423956,-0.090388827025890,0.004109175410122,0.132789582014084,-0.012816105969250,-0.011948026716709,-0.002743058372289,-0.000966444262303,-0.015347795560956,0.007310484535992,-0.001760803628713,0.006719731725752));
res += mul(Get(s0,-dx,dy), float4x4(-0.042414378374815,-0.008299181237817,-0.010399353690445,-0.021834159269929,0.081642121076584,0.151044636964798,-0.005571718327701,0.052110206335783,-0.034549970179796,0.006316483020782,-0.024611417204142,-0.027969809249043,0.024095216766000,-0.097126327455044,-0.016753626987338,0.116772249341011));
res += mul(Get(s0,0,-dy), float4x4(-0.011237389408052,0.004005338530988,-0.006488308776170,0.010265114717185,-0.014713045209646,0.113660261034966,-0.003721408778802,-0.075131371617317,0.004034072160721,-0.022083610296249,0.002098703756928,-0.002204239368439,-0.055450692772865,-0.385663986206055,0.000840874854475,0.063807547092438));
res += mul(Get(s0,0,0), float4x4(0.005385111086071,-0.020630864426494,0.004446568433195,0.007710303179920,0.025291932746768,-0.035980518907309,0.013758072629571,0.042991291731596,0.013460151851177,-0.065314963459969,0.006182586774230,0.017192354425788,-0.040764916688204,0.250530958175659,0.002375957556069,-0.022023575380445));
res += mul(Get(s0,0,dy), float4x4(-0.048566672950983,0.030165174975991,0.001550373737700,0.009395060129464,0.109135620296001,-0.121039859950542,-0.006182041484863,0.014949853532016,-0.060195930302143,0.073856860399246,-0.001467810245231,-0.022444518283010,0.034212686121464,0.080471239984035,-0.009969795122743,0.028624590486288));
res += mul(Get(s0,dx,-dy), float4x4(0.003831976326182,0.023944843560457,0.003763507120311,0.018646778538823,-0.053543776273727,0.065829291939735,-0.007436174433678,-0.090667866170406,0.009103778749704,0.000578809936997,-0.004450217355043,-0.006433393340558,-0.056537169963121,0.175938412547112,-0.002576104132459,-0.036402549594641));
res += mul(Get(s0,dx,0), float4x4(0.000154944296810,-0.005005402024835,0.003873609472066,0.024501187726855,0.024748828262091,-0.005291490349919,-0.002580342115834,-0.021561440080404,0.014307377859950,0.000462390278699,-0.004761638119817,-0.012784234248102,-0.001909826649353,-0.001378811779432,-0.004825515206903,-0.097234115004539));
res += mul(Get(s0,dx,dy), float4x4(-0.063209041953087,0.061731003224850,-0.008290580473840,-0.023767177015543,0.116934552788734,0.093988254666328,0.000536569277756,-0.008905534632504,-0.040433213114738,0.026102194562554,-0.003508743597195,-0.016651500016451,0.035277429968119,-0.099168494343758,0.001560293487273,0.017146894708276));
res += mul(Get(s1,-dx,-dy), float4x4(-0.012778764590621,-0.013321099802852,-0.001592507236637,0.002471728483215,-0.006131811998785,0.016898479312658,-0.011428997851908,-0.001928125624545,0.013787994161248,-0.006854032631963,-0.002535678446293,-0.001949615660124,0.010931677184999,0.057049106806517,-0.001568961772136,0.010589242912829));
res += mul(Get(s1,-dx,0), float4x4(0.007780390325934,0.006226921919733,-0.008710954338312,-0.002672702772543,-0.001431298442185,0.016851389780641,0.008721832185984,0.005741805303842,0.002360864775255,-0.007904126308858,-0.015305343084037,0.007848602719605,0.017316494137049,-0.012386562302709,0.001423770561814,-0.016691304743290));
res += mul(Get(s1,-dx,dy), float4x4(0.011316865682602,-0.004179393406957,-0.006731701083481,-0.001113316742703,-0.001864448771812,0.009180887602270,0.008101699873805,0.014920034445822,-0.005596683826298,-0.002463076263666,-0.005846022628248,0.004775121808052,0.005436662118882,-0.013170316815376,-0.002924003405496,0.012560809031129));
res += mul(Get(s1,0,-dy), float4x4(0.009734973311424,0.006469199433923,0.006943606305867,0.005317804869264,0.000104780097899,-0.018030270934105,0.004619505722076,-0.011162636801600,-0.005082162097096,0.003924684133381,0.008178166113794,-0.002307460876182,0.028441270813346,-0.025590812787414,0.002100614132360,0.008073659613729));
res += mul(Get(s1,0,0), float4x4(0.007338371127844,-0.003689782228321,0.000916869321372,-0.001592493965290,-0.001172858523205,-0.015561137348413,0.003931427374482,0.009512894786894,0.006076766643673,0.000421008560807,-0.003286175662652,0.010513277724385,0.023327337577939,-0.013772643171251,0.000056859971664,-0.011740952730179));
res += mul(Get(s1,0,dy), float4x4(-0.018164765089750,-0.005028231535107,0.004052176140249,-0.008493080735207,0.013535365462303,-0.033252079039812,0.005911406129599,0.012662596069276,-0.009020770899951,-0.023005256429315,-0.004363472107798,0.007547389250249,-0.003215592587367,-0.006905146874487,-0.013254008255899,0.009433608502150));
res += mul(Get(s1,dx,-dy), float4x4(0.001859372947365,-0.012934043072164,0.024986403062940,0.013081611134112,-0.008163190446794,0.012007296085358,-0.005507802590728,-0.009186671115458,0.004149121697992,0.009910017251968,0.000913373718504,-0.004295024089515,0.008621407672763,-0.003891393775120,0.009939019568264,0.001790936687030));
res += mul(Get(s1,dx,0), float4x4(-0.000069940317189,0.010549262166023,-0.015511448495090,0.003657158464193,0.000867306021973,0.029252229258418,0.007631681859493,0.006042727269232,-0.000329092930770,-0.010122696869075,-0.000645238149446,0.000984913203865,-0.013103053905070,-0.004287147428840,-0.002094719558954,0.001768223592080));
res += mul(Get(s1,dx,dy), float4x4(0.014189172536135,-0.013808325864375,0.003578301984817,0.016093224287033,0.007106384262443,0.022529982030392,-0.002291747368872,0.011689042672515,0.011415672488511,0.003018475603312,0.021022306755185,0.010470684617758,0.009441811591387,0.004405821207911,0.013768626376987,-0.013413253240287));
res += mul(Get(s2,-dx,-dy), float4x4(-0.004568724427372,0.003603093326092,-0.006340155377984,-0.002694040769711,-0.013336807489395,-0.015386477112770,0.003231598529965,0.006042528431863,-0.002183959819376,0.006137579679489,-0.004455592483282,-0.003010273212567,-0.015320344828069,0.037022165954113,-0.002353998366743,0.013972735032439));
res += mul(Get(s2,-dx,0), float4x4(0.019612848758698,0.009135840460658,-0.003361516399309,0.010111800394952,0.005966062657535,0.003217101562768,0.004184904508293,-0.003628598991781,0.004651228431612,0.008068651892245,0.003884871955961,-0.004978527780622,0.012992722913623,0.036677595227957,-0.001850979984738,-0.022136878222227));
res += mul(Get(s2,-dx,dy), float4x4(0.005368752870709,0.011464471928775,0.007767161354423,-0.012475937604904,0.001874728477560,0.001873735454865,-0.000201109054615,-0.013298983685672,0.003923527430743,-0.000638935656752,0.002580102300271,0.016509203240275,0.004320216830820,0.000275309459539,0.008802779018879,0.000992723158561));
res += mul(Get(s2,0,-dy), float4x4(-0.008413575589657,-0.001003726734780,-0.018242420628667,0.002000666921958,-0.009828004986048,-0.016176512464881,0.002237058943138,-0.006084613502026,0.006186557933688,-0.017740765586495,-0.005922494921833,-0.008274739608169,0.011318090371788,-0.014211670495570,-0.003802771680057,-0.000171097228304));
res += mul(Get(s2,0,0), float4x4(-0.003166453447193,-0.019884070381522,-0.005709841381758,-0.007827338762581,0.003456560429186,0.000922182342038,-0.004033115226775,-0.007640945259482,0.006099076475948,0.007941574789584,0.005874162074178,0.001203318941407,0.016528107225895,-0.019027430564165,0.000526695104782,-0.017280180007219));
res += mul(Get(s2,0,dy), float4x4(-0.002878502011299,0.011746627278626,0.020524755120277,-0.009707231074572,-0.006174568552524,0.006239297334105,-0.005860222037882,0.000546049268451,0.001202033599839,0.003844303544611,0.007475689053535,0.007421050220728,0.000890872091986,0.000732360873371,-0.001459694700316,-0.006109918002039));
res += mul(Get(s2,dx,-dy), float4x4(-0.023872980847955,-0.006823466159403,0.007473009638488,0.007754793390632,0.001519031939097,0.008069962263107,0.004719367250800,-0.003191467607394,-0.020665487274528,0.003699989523739,-0.003100861329585,0.006104496773332,0.008136797696352,0.013489054515958,-0.010843040421605,0.007748782634735));
res += mul(Get(s2,dx,0), float4x4(0.010191610082984,-0.009180521592498,-0.005167294759303,-0.008364355191588,-0.019556365907192,0.006830792874098,-0.008258753456175,-0.002786201657727,-0.004788981750607,-0.003269852604717,-0.007048677187413,0.011939137242734,-0.020652946084738,-0.003695039777085,-0.009076273068786,-0.003462283406407));
res += mul(Get(s2,dx,dy), float4x4(0.000858554732986,0.001155897625722,0.013343323022127,-0.005624494049698,-0.007085859775543,-0.000150178471813,-0.011374443769455,-0.001476800651290,0.002350902417675,0.003743984503672,0.003772601950914,-0.012997602112591,-0.005868593696505,0.011427784338593,0.009007701650262,0.019248003140092));
res += mul(Get(s3,-dx,-dy), float4x4(0.005461298394948,-0.003437628736719,-0.002398924669251,0.002498799934983,-0.099464483559132,0.139636605978012,-0.012862854637206,-0.027402611449361,-0.099590048193932,0.170347735285759,-0.003876443719491,0.100621879100800,-0.008919848129153,0.017465965822339,0.000164405777468,0.012174260802567));
res += mul(Get(s3,-dx,0), float4x4(0.009881196543574,0.004201243631542,0.017590070143342,-0.008511849679053,-0.010477695614100,-0.005659712478518,-0.010000355541706,0.023359175771475,-0.062478512525558,-0.490014165639877,0.001497639575973,0.256895750761032,-0.010710834525526,0.009492943994701,-0.008576415479183,0.022645030170679));
res += mul(Get(s3,-dx,dy), float4x4(-0.002189152175561,0.010033448226750,0.003685254836455,0.006629190407693,0.028960742056370,0.250380873680115,0.012988059781492,-0.046072322875261,0.118792712688446,0.173567980527878,0.000979746691883,0.301469862461090,0.000166542929946,0.006702072918415,0.001440215855837,0.013054437935352));
res += mul(Get(s3,0,-dy), float4x4(-0.003420725231990,0.011752195656300,-0.003961301874369,-0.006327826064080,-0.113980658352375,-0.000698207761161,0.000072496368375,0.024794774129987,-0.262152731418610,-0.243452697992325,-0.016812721267343,-0.152596861124039,-0.007408463396132,-0.025262823328376,0.005269553977996,-0.011339843273163));
res += mul(Get(s3,0,0), float4x4(-0.006968019530177,0.006724371109158,0.000063657556893,0.000648648769129,-0.035519782453775,-0.295545607805252,-0.012239803560078,0.079227663576603,-0.048647683113813,0.921549081802368,-0.009426153264940,-0.252327919006348,0.010045705363154,-0.011974403634667,0.008047697134316,-0.013025861233473));
res += mul(Get(s3,0,dy), float4x4(-0.004192640539259,0.006902499590069,0.005788132548332,0.004662198014557,0.036309693008661,-0.076668910682201,-0.002446143655106,0.044980656355619,0.215645432472229,-0.079357661306858,-0.009826247580349,-0.101484574377537,0.009689612314105,-0.027745051309466,-0.003879722673446,0.007098682224751));
res += mul(Get(s3,dx,-dy), float4x4(0.000530319695827,-0.013785544782877,0.007220761850476,0.011803809553385,-0.066728100180626,0.113814532756805,0.002185344928876,-0.017537681385875,-0.211963668465614,-0.042884692549706,0.004418822936714,-0.017800163477659,-0.007113448809832,0.036998294293880,0.008768124505877,-0.007792777847499));
res += mul(Get(s3,dx,0), float4x4(0.007910272106528,-0.011128309182823,-0.007126968819648,0.000482337840367,0.044203285127878,0.030632009729743,0.000308610033244,0.012668027542531,0.031933866441250,0.000646980013698,-0.005005654413253,-0.124439015984535,0.006959903053939,0.036730952560902,0.010200237855315,0.009294130839407));
res += mul(Get(s3,dx,dy), float4x4(0.005089059006423,-0.000154080189532,0.010096848011017,0.020256936550140,0.093428418040276,0.108796887099743,-0.000613990239799,-0.029977617785335,0.218445464968681,-0.085448846220970,-0.012398805469275,0.085634507238865,0.016282541677356,0.031561568379402,-0.004575867671520,0.016668180003762));
res = max(float4(0,0,0,0), res);
return res;
}
