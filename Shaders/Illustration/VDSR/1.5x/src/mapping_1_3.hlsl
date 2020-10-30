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
res += mul(Get(s0,-dx,-dy), float4x4(0.001886886544526,-0.005644290242344,0.002845701528713,-0.007247762288898,0.010596745647490,0.009908175095916,-0.004207179881632,0.003816629061475,0.000418180134147,0.000962470367085,0.003674038453028,-0.002852330217138,0.008990590460598,-0.003921798430383,0.005135349929333,0.004857606720179));
res += mul(Get(s0,-dx,0), float4x4(-0.000797087850515,0.004893502686173,0.000430366431829,0.011203887872398,0.023560991510749,-0.001066893921234,-0.001352192950435,0.007228945381939,-0.001163181150332,-0.003198322840035,0.002406113315374,0.009137619286776,-0.003042476717383,0.002120190765709,-0.004811808001250,0.001572901150212));
res += mul(Get(s0,-dx,dy), float4x4(-0.006532954517752,-0.000973703514319,0.000553831749130,0.006203921046108,0.032994225621223,0.007388109806925,-0.001067222328857,0.013558913953602,-0.000009363893696,0.000558970845304,-0.003611735999584,0.000561226217542,-0.007672520354390,0.002114720642567,0.000313328695484,0.002333212643862));
res += mul(Get(s0,0,-dy), float4x4(0.000685202074237,-0.003771518124267,-0.000370669207769,0.006986697204411,0.004259453155100,0.009292510338128,-0.002379424637184,0.014694549143314,0.001386731048115,0.003227116074413,-0.004037850070745,-0.006182421930134,0.012983912602067,-0.002173519460484,-0.000619531318080,0.011244107969105));
res += mul(Get(s0,0,0), float4x4(0.000324752007145,-0.002611275995150,0.014724501408637,0.002811572048813,0.018270712345839,0.000654252362438,-0.002781871007755,0.013891190290451,-0.000575775804464,-0.002604170935228,-0.009760025888681,0.008184148930013,0.015840180218220,-0.005633313674480,0.001863446552306,0.005607728380710));
res += mul(Get(s0,0,dy), float4x4(0.007893675006926,-0.006713522598147,0.003822344588116,0.000628637033515,0.015503089874983,-0.002567108720541,0.004108722321689,0.002289864933118,-0.001857856288552,0.006958400364965,-0.000726836151443,0.001167245442048,0.011385801248252,-0.000354384479579,0.004920987412333,-0.004054100718349));
res += mul(Get(s0,dx,-dy), float4x4(0.002290057018399,-0.002790222875774,-0.000449659797596,-0.007684528362006,0.024313895031810,-0.014616231434047,-0.009375408291817,0.023514222353697,-0.001106940908358,-0.008781615644693,0.000025459388780,-0.002189077436924,-0.006000332999974,-0.006866941694170,0.002192265121266,0.012992126867175));
res += mul(Get(s0,dx,0), float4x4(-0.000188293866813,-0.001492606941611,-0.001621282426640,0.000410145235946,0.026205347850919,-0.003190477145836,-0.011950570158660,0.017177045345306,0.000609308655839,0.002057214733213,-0.006846776232123,0.005262472201139,-0.004596853163093,-0.003776233643293,-0.000369480985682,0.018158948048949));
res += mul(Get(s0,dx,dy), float4x4(0.002393621485680,-0.001955967163667,0.000824699411169,-0.004871410317719,0.023244362324476,-0.000157547634444,-0.008453314192593,0.012482840567827,0.000524633796886,0.004683038219810,0.000795661529992,0.002716856077313,0.010388004593551,-0.005192574579269,0.000665531668346,0.012822649441659));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008291432633996,-0.003418766893446,0.014424011111259,0.022436723113060,-0.017305839806795,0.011773297563195,0.005382476840168,-0.009098818525672,-0.064744189381599,0.030014285817742,-0.014285250566900,0.019209904596210,0.023888705298305,0.056264504790306,-0.035458609461784,0.132581651210785));
res += mul(Get(s1,-dx,0), float4x4(-0.006208007689565,-0.007079086732119,0.018286801874638,0.024356203153729,0.009476655162871,-0.001705938950181,0.019425114616752,0.031566902995110,-0.057972680777311,0.044878374785185,-0.007820894010365,0.059425193816423,-0.018120681867003,0.056808874011040,0.009162491187453,0.062065500766039));
res += mul(Get(s1,-dx,dy), float4x4(-0.013112692162395,-0.000900846614968,0.007183409295976,0.026351543143392,0.030576936900616,0.004512892104685,0.000357909972081,0.061119824647903,-0.070254012942314,0.055883847177029,-0.009945921599865,0.005150902550668,-0.049419000744820,0.069326266646385,0.013885078020394,0.082637809216976));
res += mul(Get(s1,0,-dy), float4x4(0.000120830613014,0.011181350797415,0.016005201265216,0.002876840764657,-0.027334732934833,0.010025689378381,-0.000347447552485,-0.012820977717638,0.071382835507393,-0.039759993553162,-0.014667098410428,0.086399167776108,0.048413913697004,0.008769581094384,-0.003793204436079,0.066084235906601));
res += mul(Get(s1,0,0), float4x4(0.002161209704354,0.011466308496892,0.024370003491640,0.001222787424922,0.015638411045074,0.002356216078624,0.025560090318322,0.055516950786114,0.088737212121487,-0.043051525950432,-0.008712198585272,0.098896719515324,0.005120428279042,-0.006782232318074,0.042145125567913,-0.041055556386709));
res += mul(Get(s1,0,dy), float4x4(-0.002021713880822,0.012804816477001,0.020799487829208,-0.004755156580359,0.023651875555515,0.004206948913634,0.012531840242445,0.073768042027950,-0.005042516160756,-0.024778353050351,-0.020867029204965,0.014004608616233,-0.026575665920973,-0.023215543478727,0.037166375666857,0.016056977212429));
res += mul(Get(s1,dx,-dy), float4x4(0.009718206711113,0.015058089978993,-0.002490961225703,0.007129315286875,-0.009769301861525,-0.002217221772298,-0.000403773970902,-0.009080184623599,0.155262306332588,-0.021082995459437,-0.009234306402504,0.041159469634295,0.045283123850822,-0.032394915819168,-0.025680635124445,-0.037032026797533));
res += mul(Get(s1,dx,0), float4x4(-0.005790357943624,0.006226462777704,0.000295689853374,0.000530315854121,0.001375655643642,-0.001401337096468,0.001240114797838,0.046135198324919,0.113269068300724,-0.036217134445906,0.010739255696535,0.034070782363415,-0.000321516243275,-0.058189202100039,-0.027757605537772,-0.106829024851322));
res += mul(Get(s1,dx,dy), float4x4(0.002331021474674,0.005518323276192,0.001559272175655,0.004566080868244,0.005316178780049,0.004536877386272,0.000671648012940,0.040462482720613,0.048384539783001,-0.026691954582930,0.004063074942678,0.001072493614629,0.002874173689634,-0.056734926998615,-0.027888912707567,-0.036193292587996));
res += mul(Get(s2,-dx,-dy), float4x4(-0.029545815661550,0.001971664140001,0.010434576310217,-0.002487770980224,0.007150617893785,-0.001488197827712,-0.007140582893044,0.013541704975069,-0.057297967374325,0.086737878620625,-0.049162905663252,-0.007862869650126,-0.009493716992438,0.029530767351389,0.001629436388612,0.000179965980351));
res += mul(Get(s2,-dx,0), float4x4(-0.015188627876341,0.007747325580567,0.017073776572943,-0.010388805530965,0.000087647342298,0.008563682436943,0.009117395617068,0.011529114097357,-0.155321031808853,0.002815344603732,0.083971671760082,-0.149990588426590,-0.007820851169527,0.005682599730790,0.024734726175666,0.001637230627239));
res += mul(Get(s2,-dx,dy), float4x4(-0.002641304628924,-0.000277933897451,0.024940762668848,0.000295748148346,0.005791284609586,0.010136527009308,0.003910583909601,0.002283081179485,-0.137067362666130,-0.026774620637298,0.078832790255547,0.048049673438072,0.021049493923783,-0.002535663545132,-0.001502399332821,0.051851741969585));
res += mul(Get(s2,0,-dy), float4x4(0.004369434900582,-0.002387447282672,-0.006915857084095,0.004590482916683,0.008614751510322,-0.003846922656521,-0.004070095252246,0.023185828700662,0.070264860987663,0.148344784975052,-0.061510197818279,-0.047731176018715,-0.014558248221874,0.027854999527335,0.010501354001462,0.001097014639527));
res += mul(Get(s2,0,0), float4x4(-0.018746420741081,0.020016971975565,0.006224597338587,0.006974142044783,0.007346944883466,0.007457446772605,-0.007235503289849,0.006105422042310,-0.128224998712540,0.052209217101336,-0.034154511988163,-0.244274631142616,0.002084912732244,0.003296511247754,0.021880583837628,0.005801734048873));
res += mul(Get(s2,0,dy), float4x4(-0.005315532442182,0.010967789217830,0.007415682077408,0.003730881959200,0.002010887023062,0.006743201054633,-0.001472247764468,0.006315897218883,-0.058634735643864,-0.021468099206686,-0.016329972073436,0.002121064113453,0.009954882785678,0.006540723145008,0.002462789416313,0.064093984663486));
res += mul(Get(s2,dx,-dy), float4x4(0.004959112498909,0.000875334546436,-0.001737394137308,0.001902265939862,0.011098658666015,0.008945024572313,0.000271118478850,0.017297003418207,0.181663066148758,-0.113848701119423,-0.045017983764410,0.035025965422392,0.003576105693355,-0.006757372990251,-0.004012936260551,0.005771909374744));
res += mul(Get(s2,dx,0), float4x4(0.012408258393407,0.001440739026293,0.003277448238805,-0.004886860493571,0.004108477849513,0.004834859631956,0.001505801104940,-0.002957273740321,0.129998221993446,-0.115017607808113,-0.100256726145744,-0.132591530680656,0.021034123376012,-0.001218856428750,0.002549423603341,-0.000315479614073));
res += mul(Get(s2,dx,dy), float4x4(0.001169555354863,-0.000198245208594,-0.000224998395424,-0.005368942860514,-0.004086560569704,-0.005204422865063,-0.004897113889456,-0.002165826968849,0.167121499776840,-0.095405504107475,-0.075009644031525,0.059107203036547,0.007156074512750,-0.005569905042648,-0.000474821805255,0.049358461052179));
res += mul(Get(s3,-dx,-dy), float4x4(-0.017899347469211,-0.017648709937930,0.043922126293182,0.053495295345783,0.025583326816559,0.000392257323256,0.000838435720652,0.057360485196114,-0.010019820183516,0.000361778365914,0.005011393688619,0.002230463316664,0.024524474516511,-0.004879984539002,0.003672041464597,0.064798273146152));
res += mul(Get(s3,-dx,0), float4x4(-0.022687681019306,-0.007787868846208,0.034683737903833,0.070115543901920,0.008625214919448,0.006114327348769,-0.002845685696229,0.019270513206720,-0.006638053338975,0.003651010105386,0.004048626869917,0.003921101801097,-0.000856987782754,0.022676719352603,0.003306058002636,0.002038110513240));
res += mul(Get(s3,-dx,dy), float4x4(-0.023628495633602,-0.002000051550567,0.033661395311356,0.054007049649954,0.000310703471769,0.003800918813795,0.010450577363372,0.008742338977754,0.002384328516200,-0.002123336773366,0.005012252833694,0.017336221411824,-0.006186464801431,0.007685617078096,0.018121834844351,0.000207676130231));
res += mul(Get(s3,0,-dy), float4x4(-0.004084473941475,0.018692102283239,0.023416109383106,0.007764406967908,0.010353954508901,-0.002244523726404,0.007569411303848,0.072293944656849,0.001962743001059,-0.001048253849149,0.001165913301520,0.003059704555199,0.021492492407560,-0.001432170160115,0.000439695053501,0.077368125319481));
res += mul(Get(s3,0,0), float4x4(0.007127680815756,0.035548441112041,0.043830096721649,0.008533025160432,-0.001680320594460,0.024471988901496,-0.001857628114522,0.017987603321671,0.001783796120435,0.004487575963140,0.005995209328830,0.011888830922544,0.035317972302437,0.017697475850582,-0.003167567076162,0.001989180454984));
res += mul(Get(s3,0,dy), float4x4(0.006110397167504,0.019410140812397,0.050792593508959,0.003717517247424,-0.002092667156830,0.001521447207779,0.009266100823879,0.009890778921545,-0.004390059038997,-0.001549509703182,0.002391024492681,0.012165073305368,0.030937822535634,0.003076649503782,0.007442393805832,0.003983363974839));
res += mul(Get(s3,dx,-dy), float4x4(-0.005753115750849,0.017214419320226,-0.001311726518907,-0.001110891695134,0.019798833876848,0.001347425510176,0.008038318715990,0.047057040035725,0.012270218692720,-0.001692423247732,-0.010063119232655,0.026511287316680,0.023750182241201,-0.004854051396251,0.001513953320682,0.063793607056141));
res += mul(Get(s3,dx,0), float4x4(-0.003288050182164,0.020621208474040,-0.009379135444760,0.001535869203508,0.005768171977252,0.003042972879484,0.006499627139419,0.010941098444164,0.003616854548454,0.000971748959273,-0.006011445075274,0.022169945761561,0.030848542228341,-0.000623632920906,-0.002471188781783,0.011445183306932));
res += mul(Get(s3,dx,dy), float4x4(-0.004254935309291,0.012807815335691,-0.003637079382315,-0.002975668525323,0.003707726020366,-0.010648366995156,0.000358464429155,0.002939730649814,-0.007560037542135,0.001520499004982,-0.006549849640578,0.011215250939131,0.038111828267574,-0.002719226060435,-0.001078947912902,0.011609066277742));
return max(float4(0,0,0,0), res);
}
