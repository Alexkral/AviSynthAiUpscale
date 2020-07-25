sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.2217992097139359,0.1114998757839203,-0.2301670461893082,0.0502147935330868);
res += mul(Get(s0,-dx,-dy), float4x4(0.1250520199537277,-0.1082552447915077,0.0074874339625239,-0.0454555563628674,-0.0268128681927919,-0.0081766573712230,0.1239549815654755,-0.1279268860816956,-0.1033091023564339,-0.0257364138960838,-0.1273644417524338,-0.0820810720324516,0.0249427556991577,-0.0759770199656487,0.1851656883955002,0.1886400878429413));
res += mul(Get(s1,-dx,-dy), float4x4(-0.2856181561946869,0.0033919655252248,0.3765650689601898,-0.0043860287405550,-0.0040873293764889,0.0560298003256321,0.1458560079336166,0.0203214138746262,-0.0426013879477978,0.0551769174635410,0.0123165799304843,0.0008740108460188,-0.2131116688251495,0.1327105164527893,-0.0635924264788628,-0.0088053457438946));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0050803660415113,-0.0055786930024624,-0.0082466332241893,0.3089146018028259,0.0951321423053741,-0.0845030695199966,0.0883454382419586,-0.1144153773784637,-0.0727627649903297,-0.0102645847946405,0.1319625377655029,-0.0476671792566776,-0.0108988806605339,0.0154610676690936,0.2171857506036758,0.0116647649556398));
res += mul(Get(s0,-dx,0), float4x4(0.1491307616233826,-0.1730980426073074,0.5197873115539551,-0.2207539975643158,0.0856172516942024,0.1430172324180603,0.4398792684078217,0.0579969733953476,0.0651377588510513,-0.0157557409256697,0.3196574151515961,-0.1088956296443939,0.2108855098485947,0.1296002417802811,0.1685192734003067,-0.0678785517811775));
res += mul(Get(s1,-dx,0), float4x4(-0.3650119006633759,-0.0629512593150139,0.5051421523094177,-0.0053860130719841,-0.0107920914888382,-0.0719830319285393,0.3279540538787842,0.0206130333244801,0.0109758013859391,0.0335720255970955,-0.1129473224282265,0.0694698542356491,-0.2486298829317093,0.1433712989091873,0.0364639163017273,0.1502599567174911));
res += mul(Get(s2,-dx,0), float4x4(0.0061470516957343,0.3785161375999451,-0.3155544996261597,-0.3212959468364716,-0.0876111835241318,-0.0198717899620533,0.7253848314285278,0.0493228472769260,-0.0153460605069995,-0.0031083796638995,0.4170327782630920,0.0045532546937466,0.2189154475927353,-0.1652274280786514,0.0163259450346231,-0.1078249812126160));
res += mul(Get(s0,-dx,dy), float4x4(0.0631322041153908,-0.0651915743947029,-0.0484657660126686,0.0778420493006706,0.0386982038617134,-0.0035428802948445,0.0361577123403549,0.1085505560040474,0.0614377968013287,-0.0669802129268646,0.0631356537342072,0.0109213935211301,-0.0324025861918926,-0.0113772628828883,-0.0137630244717002,0.1413406431674957));
res += mul(Get(s1,-dx,dy), float4x4(-0.0621654950082302,-0.0144141493365169,0.2040995359420776,0.0429464615881443,-0.0103384461253881,-0.0101213473826647,0.0954130813479424,0.0663366168737411,0.0319454446434975,0.0068577723577619,-0.0508695915341377,0.0612280778586864,0.0782427787780762,0.0717694163322449,0.1159409433603287,0.0603427886962891));
res += mul(Get(s2,-dx,dy), float4x4(-0.0241287127137184,0.0488889478147030,-0.1692050993442535,0.1261644065380096,-0.1492009162902832,-0.0212626717984676,0.4667443633079529,-0.0097956070676446,-0.0465715713799000,0.0166974719613791,-0.0033185281790793,-0.0032697243150324,0.0951312705874443,-0.0293126329779625,0.0728129073977470,-0.0097526255995035));
res += mul(Get(s0,0,-dy), float4x4(-0.2046113461256027,-0.0545717291533947,0.0306588038802147,-0.2322802692651749,-0.1640330106019974,0.0237846560776234,-0.2139568328857422,-0.4501928389072418,0.0520564764738083,-0.0942523628473282,0.0438069961965084,0.0497811511158943,0.0367627404630184,-0.2273993045091629,-0.0406076982617378,0.1614213138818741));
res += mul(Get(s1,0,-dy), float4x4(0.0460985749959946,-0.1730344891548157,-0.2818093001842499,-0.3642092943191528,-0.0262292493134737,0.0299266837537289,0.0012729729060084,0.1154645830392838,-0.0244044531136751,0.0135499816387892,-0.0605136044323444,-0.2535035908222198,-0.0540187060832977,-0.0348720178008080,0.0076404754072428,0.1345218718051910));
res += mul(Get(s2,0,-dy), float4x4(0.0860848277807236,-0.1319941878318787,0.0677268803119659,0.2204609662294388,-0.1464936286211014,0.0148098459467292,0.1353745758533478,0.0276929270476103,-0.1472931653261185,-0.0096053052693605,-0.2871919870376587,0.1051656827330589,0.1301760375499725,0.0158564131706953,-0.0930586531758308,0.0991915315389633));
res += mul(Get(s0,0,0), float4x4(-0.0739852637052536,-0.1685780733823776,-0.1402105540037155,0.3752944767475128,-0.5076184272766113,0.4141453802585602,-0.2207077443599701,0.6456871032714844,-0.0103311790153384,0.4889994561672211,-0.1316306740045547,0.1564676016569138,0.0885936319828033,0.2021640390157700,-0.3849950730800629,-0.2498101443052292));
res += mul(Get(s1,0,0), float4x4(0.1640534549951553,-0.0334492661058903,0.0326930657029152,-0.2888801693916321,-0.1455818712711334,0.2122204601764679,-0.0575127638876438,-0.0411457791924477,-0.0412968881428242,-0.1083775684237480,-0.0102523397654295,0.3841498494148254,0.0497511662542820,-0.1186493113636971,-0.1736738383769989,0.2927837371826172));
res += mul(Get(s2,0,0), float4x4(-0.0893049016594887,-0.0436576604843140,-0.0646640434861183,-0.1258342564105988,-0.1390355080366135,0.1781200170516968,0.0339338406920433,-0.7403343319892883,-0.0320998392999172,0.2876350283622742,-0.1534784734249115,-0.0763218104839325,0.3564155399799347,0.1361505389213562,-1.2797583341598511,-0.0385443530976772));
res += mul(Get(s0,0,dy), float4x4(-0.0958157926797867,0.0394651815295219,0.0160992275923491,-0.2469183951616287,-0.0667284876108170,0.0597836337983608,-0.1357707083225250,-0.5231311917304993,-0.1719178259372711,-0.0372922532260418,-0.0453214049339294,0.1511785537004471,0.0599866285920143,-0.0856387019157410,0.0993860438466072,0.1327180266380310));
res += mul(Get(s1,0,dy), float4x4(-0.0324165150523186,-0.0845883488655090,-0.0887486338615417,0.0081826671957970,-0.0739049091935158,-0.0080258641391993,0.0102193495258689,0.1170641705393791,0.0367811061441898,0.0638715475797653,0.0147555116564035,-0.1889709681272507,-0.0526779778301716,0.1307191997766495,0.1677794158458710,-0.1446623802185059));
res += mul(Get(s2,0,dy), float4x4(-0.0182471517473459,0.0530346222221851,0.1513395905494690,0.2605525255203247,-0.0160158090293407,-0.1639728248119354,-0.3358724117279053,-0.0746804550290108,-0.0735943540930748,-0.0749884545803070,-0.1122476607561111,-0.0531798712909222,-0.0211012642830610,0.0253946688026190,-0.3981160521507263,-0.1247275471687317));
res += mul(Get(s0,dx,-dy), float4x4(0.0788127705454826,0.0105574149638414,0.0271531026810408,-0.1275522708892822,0.0866274982690811,0.0522555857896805,-0.0301506724208593,-0.0470328889787197,0.0205566547811031,0.0408524498343468,0.0558083094656467,0.0660542771220207,0.0627325102686882,-0.0105357244610786,-0.0736497864127159,-0.3594971895217896));
res += mul(Get(s1,dx,-dy), float4x4(-0.0779058560729027,-0.1021699011325836,-0.1119504943490028,0.1354147642850876,-0.0065195192582905,-0.0349776037037373,-0.0094495136290789,0.0955459773540497,-0.0178022142499685,0.0227177459746599,-0.0200797766447067,0.0104659050703049,-0.0265175234526396,0.0680352449417114,-0.0153374345973134,-0.0259464103728533));
res += mul(Get(s2,dx,-dy), float4x4(0.0157716348767281,0.0778517127037048,-0.0074479244649410,-0.0596885569393635,-0.0528823770582676,-0.0301942285150290,-0.0194088723510504,-0.2270527780056000,-0.0025221549440175,0.0049392138607800,0.1269764006137848,0.0971206650137901,0.0349904261529446,0.0196985192596912,-0.0665811300277710,-0.1257763803005219));
res += mul(Get(s0,dx,0), float4x4(-0.2419940233230591,0.1010218560695648,-0.2238192111253738,-0.1764563918113708,0.0839708149433136,-0.2617370188236237,0.0274495277553797,-0.0790747478604317,0.0103625236079097,-0.0033144559711218,0.1236674487590790,0.0343435145914555,0.1432943046092987,-0.0330042801797390,-0.2012692093849182,0.2213515639305115));
res += mul(Get(s1,dx,0), float4x4(0.1385712325572968,-0.0954442098736763,0.1129380464553833,-0.3225677013397217,0.0145630789920688,-0.0289564784616232,-0.0066738915629685,-0.1700126826763153,-0.0658190250396729,-0.0265873819589615,-0.0019147326238453,-0.0363837815821171,-0.1294299364089966,0.0556520186364651,-0.1094413697719574,0.1160102263092995));
res += mul(Get(s2,dx,0), float4x4(-0.0226306170225143,0.1142787784337997,-0.0073885004967451,0.1984053999185562,0.1722192168235779,-0.1759634613990784,-0.2104060798883438,-0.2314979881048203,-0.0424356535077095,-0.0802338719367981,0.1268517374992371,-0.1204805374145508,-0.2096803635358810,0.2903344631195068,0.2211863547563553,0.4104427397251129));
res += mul(Get(s0,dx,dy), float4x4(-0.0157202742993832,0.0207607075572014,0.1214113533496857,0.0819248482584953,0.1514203548431396,0.0784739255905151,-0.0692233145236969,-0.1589352190494537,0.0398499406874180,0.0048509943298995,0.0087994951754808,0.1229857355356216,0.0406532399356365,0.0275927335023880,-0.1490451246500015,-0.1100018247961998));
res += mul(Get(s1,dx,dy), float4x4(0.1099409088492393,-0.0586628839373589,-0.0869498029351234,0.0635644122958183,-0.0196950752288103,-0.0233782958239317,0.0051117967814207,0.1310461312532425,-0.0049431463703513,0.0438896790146828,0.0010597461368889,-0.1106640398502350,-0.0585911087691784,0.0051786624826491,0.0171119123697281,0.0042411149479449));
res += mul(Get(s2,dx,dy), float4x4(-0.0774622187018394,0.0504733324050903,-0.0682277604937553,-0.1803120225667953,0.1793706268072128,-0.0634176358580589,-0.0208069197833538,0.1402560025453568,0.0325992554426193,0.0029279279988259,0.1073641926050186,0.0243769735097885,-0.2168873846530914,0.0456303358078003,0.1278586536645889,0.0388085991144180));
res = max(float4(0, 0, 0, 0), res) + float4(2.4360697269439697,1.0206297636032104,0.1821399927139282,0.2296560555696487) * min(float4(0, 0, 0, 0), res);
return res;
}
