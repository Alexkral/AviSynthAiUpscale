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
res += mul(Get(s0,-dx,-dy), float4x4(-0.014337045140564,0.147266224026680,-0.205837935209274,-0.319801062345505,-0.039031285792589,-0.105830915272236,-0.162159606814384,-0.000437542272266,0.001023582997732,-0.119435131549835,-0.048013579100370,0.130921036005020,0.046336360275745,-0.019844619557261,-0.163385957479477,0.035484861582518));
res += mul(Get(s0,-dx,0), float4x4(-0.093843430280685,0.189457356929779,-0.064392521977425,-0.066351816058159,0.115847662091255,0.042765859514475,0.012380844913423,0.033172171562910,0.055384859442711,-0.086666114628315,0.090931639075279,0.026817947626114,0.018947046250105,-0.003629202954471,-0.068872816860676,0.074868910014629));
res += mul(Get(s0,-dx,dy), float4x4(0.002653193660080,0.205080479383469,0.055923178792000,0.006184562575072,0.091488040983677,-0.029344240203500,0.230321526527405,-0.260881364345551,-0.007611368317157,-0.228739738464355,0.132821053266525,-0.144330769777298,0.013768971897662,-0.091794051229954,-0.073755815625191,-0.121558517217636));
res += mul(Get(s0,0,-dy), float4x4(-0.006918144878000,-0.033581767231226,-0.072254501283169,0.080560520291328,-0.146517217159271,-0.072352655231953,-0.168883726000786,0.091852530837059,0.287986189126968,-0.007823637686670,0.119680576026440,-0.085583075881004,-0.062460135668516,-0.023966427892447,0.021329002454877,-0.104654163122177));
res += mul(Get(s0,0,0), float4x4(-0.095226697623730,-0.069868445396423,0.033259641379118,-0.010800853371620,0.087881602346897,-0.063012160360813,0.150426745414734,0.001028154743835,0.011505607515574,0.035118382424116,-0.049802765250206,0.156996220350266,-0.072384282946587,0.138562574982643,0.185650587081909,0.091263674199581));
res += mul(Get(s0,0,dy), float4x4(0.030585465952754,-0.069895826280117,-0.069771222770214,0.019298622384667,0.121962115168571,0.091920748353004,0.005932698957622,0.060321714729071,0.052886720746756,-0.035053826868534,0.133618965744972,-0.090900190174580,-0.102821536362171,0.237280786037445,-0.054351583123207,0.096694506704807));
res += mul(Get(s0,dx,-dy), float4x4(0.166686937212944,0.004487702157348,-0.106721960008144,-0.101035103201866,0.074150033295155,-0.073496185243130,0.055608276277781,-0.016978008672595,-0.062044613063335,-0.025171572342515,-0.056454617530107,0.092245645821095,-0.130918011069298,-0.024515630677342,0.048460066318512,-0.114734508097172));
res += mul(Get(s0,dx,0), float4x4(0.106048859655857,-0.139912694692612,-0.036849323660135,-0.063323095440865,-0.027270073071122,-0.107086643576622,-0.137986525893211,0.004923197440803,-0.050711940973997,0.005208506714553,-0.079150468111038,-0.061847370117903,-0.049603454768658,-0.023240298032761,0.065027095377445,-0.107855692505836));
res += mul(Get(s0,dx,dy), float4x4(0.263181209564209,-0.152136087417603,-0.075899437069893,-0.089648522436619,-0.071587942540646,-0.130092233419418,-0.174772411584854,-0.044835571199656,-0.128582894802094,0.012709062546492,0.111467041075230,0.013456821441650,-0.107582591474056,-0.171693772077560,-0.120511613786221,-0.008804808370769));
res += mul(Get(s1,-dx,-dy), float4x4(-0.199282020330429,0.055728349834681,-0.070165947079659,-0.076114252209663,-0.115449383854866,0.100268818438053,0.064663797616959,-0.242672026157379,0.123012609779835,0.053422715514898,-0.045708861202002,0.113202303647995,0.022221654653549,-0.095530703663826,0.021479735150933,-0.013178494758904));
res += mul(Get(s1,-dx,0), float4x4(-0.099158197641373,-0.050012912601233,-0.109771840274334,0.037186436355114,0.201123282313347,0.154603376984596,0.134379878640175,0.104085549712181,0.062121164053679,-0.034723643213511,0.092324502766132,0.023161156103015,0.013466434553266,0.019976478070021,-0.171399325132370,-0.050648171454668));
res += mul(Get(s1,-dx,dy), float4x4(0.081324331462383,-0.050133418291807,0.053592801094055,0.029975056648254,-0.066491141915321,0.088583134114742,-0.014934043399990,-0.071190252900124,-0.260541260242462,0.271772742271423,-0.102165311574936,-0.148233085870743,-0.155099034309387,0.036738839000463,0.042023539543152,-0.005954097490758));
res += mul(Get(s1,0,-dy), float4x4(-0.207945689558983,-0.142726898193359,0.093233995139599,0.045047584921122,-0.040589638054371,0.181997075676918,0.036353204399347,-0.084611423313618,-0.043219868093729,0.057474717497826,0.067371018230915,0.000565296330024,0.001664378680289,0.066208854317665,0.184749335050583,-0.059703979641199));
res += mul(Get(s1,0,0), float4x4(-0.112505316734314,0.047806024551392,-0.258102387189865,-0.019678181037307,-0.086368985474110,0.045532044023275,-0.105239622294903,0.166640132665634,0.006298075895756,-0.128038763999939,0.193940684199333,-0.079681620001793,-0.022524826228619,0.005952697247267,0.069521687924862,0.030263260006905));
res += mul(Get(s1,0,dy), float4x4(0.033732619136572,-0.081465885043144,0.009459591470659,-0.179956004023552,-0.018295275047421,0.025102997198701,-0.010467173531651,-0.046318184584379,0.174939915537834,-0.017767755314708,0.028556577861309,0.044116739183664,0.054906237870455,0.074962772428989,0.049375265836716,-0.062175121158361));
res += mul(Get(s1,dx,-dy), float4x4(0.091329306364059,-0.149363189935684,-0.021943051367998,-0.070790424942970,0.133468896150589,0.156380623579025,0.128297150135040,-0.083682358264923,0.006256388034672,-0.089756198227406,0.172059789299965,0.111086614429951,-0.028381701558828,0.173059388995171,-0.150691688060760,-0.131203994154930));
res += mul(Get(s1,dx,0), float4x4(-0.003800021018833,0.114934161305428,-0.076303161680698,-0.077044263482094,0.148327872157097,-0.007666382007301,0.055092744529247,0.162157997488976,-0.054476521909237,-0.001663138624281,-0.069123305380344,-0.029430605471134,-0.112002611160278,0.007365553639829,-0.009166919626296,0.049620669335127));
res += mul(Get(s1,dx,dy), float4x4(0.063855111598969,-0.076754704117775,0.000052383689763,-0.019805723801255,-0.035602718591690,0.006859013810754,-0.037057526409626,-0.085363231599331,0.128589853644371,0.082968682050705,-0.013583380728960,0.067272655665874,-0.047290988266468,0.006198455113918,0.043340913951397,-0.099510200321674));
res += mul(Get(s2,-dx,-dy), float4x4(0.008454459719360,0.043490573763847,-0.167468652129173,0.026735020801425,0.092462867498398,0.169151440262794,0.086395315825939,-0.088893711566925,0.146923646330833,0.225309699773788,0.057348843663931,0.041558783501387,-0.064734533429146,-0.012089538387954,-0.247046589851379,0.054807916283607));
res += mul(Get(s2,-dx,0), float4x4(0.091911390423775,0.040573716163635,0.062855556607246,0.107199579477310,0.064080230891705,-0.034288864582777,0.031976040452719,0.032915655523539,0.011067560873926,-0.155038714408875,0.030657729133964,-0.004821382928640,-0.050027459859848,-0.065019831061363,0.192099392414093,-0.081406563520432));
res += mul(Get(s2,-dx,dy), float4x4(0.017244050279260,-0.093732990324497,-0.055457375943661,0.018930261954665,0.123984687030315,-0.029533850029111,0.033123116940260,-0.088219717144966,0.034437648952007,0.060329709202051,0.027539271861315,-0.131877869367599,-0.222716271877289,0.083532907068729,-0.076687842607498,0.101550728082657));
res += mul(Get(s2,0,-dy), float4x4(-0.166224405169487,0.138519942760468,0.021035613492131,-0.080761834979057,0.067851543426514,0.078564561903477,-0.031992930918932,0.184332579374313,0.049780040979385,0.044698040932417,-0.152799233794212,0.014990307390690,-0.024827767163515,-0.199232265353203,0.063114322721958,0.033673092722893));
res += mul(Get(s2,0,0), float4x4(-0.027947954833508,-0.146355465054512,0.051573462784290,-0.071516916155815,-0.014054665341973,0.067060433328152,0.090117536485195,0.080724969506264,-0.090714462101460,-0.092534095048904,-0.006151392590255,0.058537662029266,-0.127571731805801,-0.133226141333580,-0.040419798344374,-0.032503057271242));
res += mul(Get(s2,0,dy), float4x4(-0.175808876752853,-0.195319697260857,0.078661784529686,-0.028808297589421,-0.026634288951755,-0.090729154646397,0.202556699514389,-0.036284640431404,-0.004629899282008,0.066389128565788,0.068842142820358,-0.051379259675741,-0.007723023183644,-0.116111956536770,0.130243822932243,0.117914907634258));
res += mul(Get(s2,dx,-dy), float4x4(0.118628628551960,0.015089063905180,0.104233048856258,-0.053950432687998,0.037657424807549,0.082991480827332,0.060384243726730,-0.085673131048679,-0.071202903985977,0.165589794516563,0.048230621963739,0.027620041742921,0.002344823908061,-0.060189817100763,-0.080888986587524,0.074177525937557));
res += mul(Get(s2,dx,0), float4x4(-0.073911622166634,0.175050422549248,0.114972509443760,0.058020472526550,-0.201388359069824,0.042665082961321,0.110207810997963,-0.126263454556465,0.101595260202885,-0.009778433479369,-0.026451205834746,0.022085908800364,-0.023155936971307,-0.169723495841026,0.163375079631805,0.167907506227493));
res += mul(Get(s2,dx,dy), float4x4(-0.009950352832675,-0.104849882423878,0.088680192828178,-0.172800764441490,-0.105284512042999,-0.048721630126238,0.035310737788677,-0.288483470678329,-0.053135529160500,0.065440766513348,-0.096566833555698,-0.070606134831905,0.105614967644215,-0.033486589789391,-0.014738480560482,-0.070746280252934));
res += mul(Get(s3,-dx,-dy), float4x4(0.138923153281212,0.037697874009609,0.063181631267071,0.001977273030207,-0.041063427925110,0.140119150280952,0.020609376952052,0.041900046169758,0.165848374366760,-0.115803115069866,0.047377664595842,0.066199354827404,0.044904995709658,-0.018327495083213,0.024053070694208,0.044541701674461));
res += mul(Get(s3,-dx,0), float4x4(0.041824627667665,0.217081040143967,0.126691728830338,0.096698075532913,-0.132313176989555,-0.044968578964472,-0.037324517965317,0.112740889191628,0.028049642220140,0.129794999957085,-0.003985947929323,-0.137990236282349,0.178619191050529,0.113121934235096,0.055946543812752,0.048608645796776));
res += mul(Get(s3,-dx,dy), float4x4(-0.133284613490105,-0.235658869147301,-0.056942787021399,-0.006770780310035,-0.016627620905638,0.055020440369844,0.053713101893663,-0.122348316013813,-0.037902530282736,-0.055596258491278,0.161675348877907,0.059740271419287,-0.006757573224604,-0.064419873058796,0.214107051491737,0.036238245666027));
res += mul(Get(s3,0,-dy), float4x4(0.109580993652344,0.017653116956353,-0.060339290648699,0.059428907930851,0.050255637615919,-0.052368964999914,-0.223861366510391,-0.126252412796021,0.182312220335007,0.015183686278760,0.179502546787262,-0.137078642845154,0.224176883697510,0.055420279502869,0.159960970282555,0.084809996187687));
res += mul(Get(s3,0,0), float4x4(-0.116074465215206,-0.047073528170586,-0.055993016809225,-0.020170671865344,0.199478060007095,-0.035321488976479,-0.102705977857113,0.069809757173061,0.009803159162402,-0.118940941989422,-0.113535247743130,-0.008942277170718,-0.194497451186180,-0.050139125436544,-0.083024494349957,-0.057685356587172));
res += mul(Get(s3,0,dy), float4x4(0.029338333755732,-0.021207189187407,-0.022756891325116,0.071163512766361,0.008602602407336,-0.036751918494701,-0.090651504695415,-0.070096939802170,-0.162741512060165,0.101903058588505,0.034862186759710,-0.089591838419437,-0.071460358798504,-0.023777164518833,-0.008354761637747,0.087539866566658));
res += mul(Get(s3,dx,-dy), float4x4(-0.270459115505219,0.004273238591850,0.068757519125938,0.020818034186959,0.109322942793369,-0.048736833035946,0.009770510718226,0.064323320984840,-0.013995201326907,0.176549181342125,-0.166270032525063,-0.044550944119692,0.156359463930130,-0.064603090286255,0.060647819191217,0.058044411242008));
res += mul(Get(s3,dx,0), float4x4(-0.224513977766037,0.045611031353474,0.062192089855671,-0.019145455211401,0.047769773751497,-0.092574566602707,0.046862985938787,-0.146457910537720,0.209201619029045,0.018594922497869,0.067088566720486,0.080474510788918,-0.125504612922668,-0.068880707025528,0.006929383147508,-0.011045553721488));
res += mul(Get(s3,dx,dy), float4x4(-0.132525429129601,-0.017296161502600,-0.107794538140297,0.062383778393269,-0.141169697046280,-0.072605244815350,0.027183245867491,-0.046565696597099,0.031828664243221,-0.213562011718750,-0.069335550069809,0.005514116026461,0.165058806538582,-0.053129322826862,0.034433100372553,0.148991480469704));
res = max(float4(0,0,0,0), res);
return res;
}