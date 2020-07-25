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
res += mul(Get(s0,-dx,-dy), float4x4(-0.051955133676529,-0.097965016961098,-0.077511116862297,-0.022185737267137,0.054376982152462,0.062455520033836,-0.018626835197210,0.177319765090942,-0.128703564405441,-0.035518608987331,-0.014093635603786,0.076819486916065,-0.139250829815865,0.193823128938675,0.123487509787083,0.039815984666348));
res += mul(Get(s0,-dx,0), float4x4(-0.037972811609507,-0.011375948786736,0.087912805378437,0.066875100135803,-0.018653644248843,-0.105438113212585,-0.073709607124329,-0.058837212622166,0.010339463129640,-0.203463777899742,-0.004778977949172,-0.058929357677698,-0.139337852597237,0.095639616250992,-0.145373567938805,-0.000731966691092));
res += mul(Get(s0,-dx,dy), float4x4(-0.029764909297228,-0.160383194684982,0.057719640433788,-0.086557261645794,-0.001824558130465,-0.049523476511240,0.058834020048380,0.072470881044865,0.024597980082035,0.005839301738888,-0.205794006586075,-0.016869489103556,0.125697672367096,0.154661715030670,0.151412427425385,-0.380252510309219));
res += mul(Get(s0,0,-dy), float4x4(0.066815875470638,0.006424489431083,0.070421479642391,-0.003954484593123,-0.000980796874501,0.005696816369891,0.024669136852026,-0.176179677248001,0.041416589170694,-0.046079527586699,0.175222784280777,0.268509685993195,-0.022838650271297,-0.051886156201363,-0.148667767643929,-0.055324692279100));
res += mul(Get(s0,0,0), float4x4(0.050628405064344,-0.011266541667283,-0.223851203918457,-0.117093332111835,-0.054548148065805,-0.080751523375511,0.025217086076736,-0.237968787550926,-0.095874555408955,-0.094562783837318,0.116223923861980,0.008188894949853,-0.273596584796906,-0.064455583691597,0.054943025112152,0.159450486302376));
res += mul(Get(s0,0,dy), float4x4(-0.017532782629132,-0.128248214721680,0.192354246973991,-0.112757712602615,0.076112046837807,0.104389503598213,0.101213157176971,0.135300576686859,0.087770223617554,-0.223530769348145,-0.093129828572273,-0.159022763371468,0.117259137332439,0.059614617377520,-0.034746523946524,-0.098892241716385));
res += mul(Get(s0,dx,-dy), float4x4(0.044523015618324,0.212073609232903,0.148363709449768,0.099222972989082,0.015039704740047,-0.079454578459263,0.013820812106133,0.035681016743183,0.045275487005711,0.027825647965074,-0.044536873698235,-0.077080644667149,-0.085867591202259,0.027746731415391,-0.091765806078911,0.218523263931274));
res += mul(Get(s0,dx,0), float4x4(-0.105498023331165,-0.079182758927345,0.246179878711700,-0.061289478093386,-0.183082357048988,-0.094823546707630,-0.028211949393153,0.103114373981953,0.160446807742119,-0.075319766998291,0.132695376873016,-0.074541449546814,0.093657940626144,-0.042089648544788,0.016581660136580,0.116387628018856));
res += mul(Get(s0,dx,dy), float4x4(-0.071007639169693,0.019685164093971,-0.016689643263817,-0.114527478814125,-0.150514125823975,0.093707390129566,0.108501978218555,0.215169429779053,-0.000527562398929,-0.040646523237228,-0.057716917246580,-0.109969235956669,-0.114395633339882,-0.042445491999388,-0.095061458647251,0.076278507709503));
res += mul(Get(s1,-dx,-dy), float4x4(0.003105020150542,-0.019468432292342,0.004105463624001,-0.147765815258026,-0.089832730591297,0.074707016348839,0.038716293871403,0.076823174953461,0.055344566702843,-0.076516114175320,0.212966009974480,-0.013226189650595,-0.106932990252972,-0.205467015504837,0.185004755854607,0.066436886787415));
res += mul(Get(s1,-dx,0), float4x4(0.093203902244568,0.113133452832699,-0.033080041408539,0.097250558435917,0.092817857861519,-0.044631533324718,0.163982033729553,0.010691289789975,-0.010852742008865,-0.044471323490143,-0.076408892869949,-0.115164846181870,-0.002972949063405,-0.120902739465237,-0.099773570895195,0.124575182795525));
res += mul(Get(s1,-dx,dy), float4x4(0.025868082419038,0.076224625110626,-0.159185841679573,-0.148774743080139,0.077526345849037,0.142091736197472,0.193262010812759,0.038375135511160,-0.119982637465000,-0.218818619847298,0.194851979613304,0.183544263243675,0.057104401290417,-0.296295702457428,-0.103727079927921,-0.060215171426535));
res += mul(Get(s1,0,-dy), float4x4(-0.062789969146252,-0.160888731479645,-0.023183407261968,-0.110842101275921,-0.007560734637082,-0.018147958442569,0.144460707902908,-0.102789312601089,-0.064905613660812,-0.079256325960159,0.287210941314697,0.049124956130981,0.080008417367935,0.024021971970797,0.122233763337135,-0.254066526889801));
res += mul(Get(s1,0,0), float4x4(-0.070548392832279,-0.026652444154024,-0.022047940641642,0.179265707731247,-0.075742967426777,0.108914747834206,-0.037965796887875,0.062599346041679,0.073084101080894,-0.042079623788595,-0.010835387744009,0.240679293870926,0.121926769614220,-0.089498773217201,0.056412495672703,0.193331122398376));
res += mul(Get(s1,0,dy), float4x4(-0.043575484305620,-0.069705694913864,-0.023703062906861,-0.105198524892330,-0.086720205843449,0.221898972988129,-0.013017285615206,-0.065904535353184,0.065170437097549,-0.106698490679264,-0.272315680980682,0.027868062257767,-0.035844322293997,0.099381901323795,0.099233679473400,0.007732799276710));
res += mul(Get(s1,dx,-dy), float4x4(-0.121735043823719,-0.021439285948873,0.003663323586807,0.091801665723324,0.101469777524471,-0.198627218604088,0.050406713038683,0.131523519754410,0.053259823471308,-0.101570650935173,0.110328719019890,-0.116708748042583,0.066595681011677,0.115832410752773,-0.063744008541107,0.097355380654335));
res += mul(Get(s1,dx,0), float4x4(-0.036120038479567,0.183046296238899,0.081274144351482,0.025572964921594,-0.105774737894535,0.103233754634857,0.072654217481613,-0.049186527729034,-0.024885762482882,-0.034228533506393,-0.212476938962936,0.246376544237137,-0.021329907700419,0.032897382974625,0.126635983586311,0.089054197072983));
res += mul(Get(s1,dx,dy), float4x4(0.057294346392155,-0.011186037212610,0.027763327583671,-0.202765494585037,0.045765597373247,-0.043308958411217,0.143925309181213,0.005401439964771,-0.016604933887720,0.195884466171265,0.048062629997730,0.068331137299538,0.003125636838377,-0.163612574338913,-0.153342530131340,-0.017182212322950));
res += mul(Get(s2,-dx,-dy), float4x4(-0.072419419884682,0.068496577441692,0.190452754497528,0.067305006086826,-0.244747310876846,0.156506448984146,0.167982220649719,-0.124369718134403,0.086482986807823,-0.017351396381855,-0.045695766806602,0.113128028810024,-0.067526496946812,-0.082253128290176,0.003310384461656,-0.010590537451208));
res += mul(Get(s2,-dx,0), float4x4(0.127558037638664,-0.201090365648270,0.161765024065971,-0.087310791015625,-0.230300456285477,0.021670859307051,0.082314342260361,-0.055589746683836,0.015920491889119,-0.054561261087656,0.060856591910124,-0.140554189682007,-0.000238885782892,-0.004166299477220,-0.235156536102295,-0.024175986647606));
res += mul(Get(s2,-dx,dy), float4x4(0.031160414218903,0.087516449391842,0.187488302588463,0.036446671932936,-0.284587770700455,-0.035922322422266,0.170160040259361,-0.127425566315651,-0.151231914758682,0.067582778632641,-0.002794311847538,-0.086829535663128,-0.179655835032463,0.101407118141651,0.117240652441978,0.131022572517395));
res += mul(Get(s2,0,-dy), float4x4(-0.155004218220711,0.103508032858372,-0.214899703860283,0.033796638250351,-0.198665499687195,0.000034559710912,0.128546714782715,-0.058700304478407,-0.061085119843483,-0.008799654431641,0.159056484699249,0.136129036545753,0.037779692560434,0.187362387776375,0.002217060187832,-0.114992566406727));
res += mul(Get(s2,0,0), float4x4(-0.266343921422958,0.162261202931404,0.030516555532813,0.042401880025864,0.073700711131096,0.056403979659081,-0.027430469170213,0.081499680876732,-0.069727756083012,0.111420430243015,-0.076738677918911,-0.032613947987556,0.067580461502075,0.095265761017799,-0.150360867381096,-0.011402330361307));
res += mul(Get(s2,0,dy), float4x4(0.027827354148030,-0.011484178714454,-0.144185349345207,0.007659838069230,0.032882779836655,-0.083818010985851,0.127222329378128,-0.274330437183380,0.066683590412140,-0.089168988168240,0.088170878589153,0.016148731112480,0.041565977036953,0.101375058293343,-0.065779648721218,0.026591049507260));
res += mul(Get(s2,dx,-dy), float4x4(-0.055840212851763,0.186985775828362,0.141140460968018,-0.026459760963917,-0.087250672280788,-0.085934616625309,-0.087861098349094,-0.073262535035610,-0.016931366175413,0.067515082657337,-0.048597507178783,0.082389414310455,-0.300554275512695,0.140694871544838,-0.001336990506388,0.064431987702847));
res += mul(Get(s2,dx,0), float4x4(0.078680798411369,-0.046660035848618,0.097387604415417,0.040047399699688,0.083944737911224,-0.182147517800331,-0.147135272622108,-0.067897677421570,-0.199648141860962,-0.132429808378220,-0.075545571744442,0.044982563704252,0.040061987936497,-0.048249185085297,0.125508219003677,0.126842007040977));
res += mul(Get(s2,dx,dy), float4x4(0.074868299067020,0.039491660892963,0.081989616155624,-0.017242247238755,0.092327989637852,-0.008309995755553,-0.145957306027412,-0.122330918908119,0.079184137284756,0.033678371459246,-0.043737795203924,0.077043324708939,0.105166956782341,0.112332947552204,0.116885125637054,0.085020616650581));
res += mul(Get(s3,-dx,-dy), float4x4(0.053291637450457,-0.055029727518559,0.024381482973695,0.122422583401203,0.045967116951942,-0.203939557075500,0.037469215691090,-0.105954490602016,-0.117064423859119,-0.113131202757359,-0.038253054022789,-0.176613122224808,-0.089969351887703,0.117095835506916,0.017459161579609,0.006316254381090));
res += mul(Get(s3,-dx,0), float4x4(0.104893051087856,0.120897687971592,-0.073049709200859,0.105149082839489,-0.082883447408676,0.061905976384878,0.180084496736526,-0.045485816895962,0.020786896348000,0.121944412589073,0.194239959120750,0.024468906223774,0.086940735578537,0.108551152050495,0.028046086430550,-0.118305332958698));
res += mul(Get(s3,-dx,dy), float4x4(0.082874931395054,-0.115066409111023,-0.250112086534500,-0.106927186250687,0.147446289658546,0.052195429801941,0.130882367491722,0.096433311700821,-0.094862133264542,0.076620832085609,0.014287617988884,-0.105256073176861,0.077717818319798,-0.122620873153210,0.161901831626892,0.036587525159121));
res += mul(Get(s3,0,-dy), float4x4(0.116959273815155,0.114354014396667,0.013555536046624,0.113126382231712,0.140331923961639,-0.085624031722546,0.105394013226032,0.162878915667534,0.009193676523864,-0.147830381989479,-0.003833704860881,0.032791182398796,-0.010239595547318,-0.089135758578777,-0.010592318139970,0.075760781764984));
res += mul(Get(s3,0,0), float4x4(0.033323850482702,0.287819564342499,-0.140772059559822,-0.094444841146469,-0.024242796003819,-0.019579229876399,-0.070533148944378,0.069292560219765,0.074268996715546,-0.145732626318932,0.019322756677866,0.074159801006317,-0.205382898449898,0.011475974693894,-0.053639747202396,-0.081457696855068));
res += mul(Get(s3,0,dy), float4x4(0.156798973679543,0.103432856500149,0.014371882192791,0.068036362528801,0.033860307186842,-0.027507722377777,-0.187226489186287,-0.103066287934780,0.075612232089043,0.212284088134766,0.106598816812038,-0.015722716227174,-0.058298289775848,0.023944579064846,0.008823839947581,0.193234860897064));
res += mul(Get(s3,dx,-dy), float4x4(-0.105135172605515,-0.180844664573669,-0.021430231630802,0.104367412626743,-0.079962551593781,0.090356655418873,-0.028504688292742,0.141873523592949,0.038451611995697,-0.245561659336090,0.049578256905079,0.008966902270913,-0.125574618577957,-0.007734952028841,-0.123197287321091,-0.122511751949787));
res += mul(Get(s3,dx,0), float4x4(0.066831760108471,0.010547120124102,0.065912842750549,-0.071130260825157,-0.120398245751858,0.127112895250320,-0.240871772170067,0.048681914806366,0.039733540266752,-0.130460634827614,-0.004260574467480,-0.075342066586018,-0.034693814814091,-0.036976002156734,-0.063504666090012,0.189750626683235));
res += mul(Get(s3,dx,dy), float4x4(-0.101178728044033,-0.016241695731878,-0.159481391310692,0.284302741289139,0.059116303920746,-0.067344971001148,-0.041845604777336,-0.044110778719187,0.097118131816387,-0.002431700238958,0.057179234921932,0.056051995605230,0.050352849066257,-0.170161634683609,-0.016029179096222,-0.108979262411594));
return max(float4(0,0,0,0), res);
}
