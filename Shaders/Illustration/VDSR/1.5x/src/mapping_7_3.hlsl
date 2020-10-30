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
res += mul(Get(s0,-dx,-dy), float4x4(-0.005676399916410,-0.008521226234734,0.041061174124479,-0.019184866920114,-0.140445500612259,-0.164735689759254,0.108241729438305,-0.042325932532549,-0.014358566142619,-0.029614632949233,0.025152511894703,0.007063310593367,-0.004438268952072,0.128429293632507,-0.057565726339817,0.007045434787869));
res += mul(Get(s0,-dx,0), float4x4(-0.118876561522484,0.113401621580124,-0.087124563753605,-0.019578889012337,-0.171805411577225,0.088835395872593,-0.186257332563400,0.104024641215801,0.055095855146646,-0.001009745639749,-0.013968732208014,-0.015456261113286,-0.133741632103920,0.008047258481383,0.071771129965782,0.095589108765125));
res += mul(Get(s0,-dx,dy), float4x4(-0.060247715562582,0.033239934593439,0.017448663711548,-0.016759270802140,-0.074928566813469,-0.035820245742798,0.022335173562169,0.000087807355158,-0.072862774133682,0.024092100560665,-0.006458386778831,-0.050045590847731,-0.169645622372627,0.033853530883789,-0.004499228205532,-0.056654259562492));
res += mul(Get(s0,0,-dy), float4x4(-0.015803052112460,-0.080842882394791,0.007476084865630,-0.067045375704765,-0.084420673549175,-0.037184964865446,-0.123143091797829,-0.032190151512623,-0.037020366638899,0.082294538617134,0.017882635816932,0.125100284814835,-0.065482318401337,0.037497762590647,0.066723175346851,0.026012120768428));
res += mul(Get(s0,0,0), float4x4(0.016416430473328,0.192524164915085,-0.049020964652300,-0.012148069217801,0.261038482189178,0.081913389265537,0.185861945152283,-0.014711569063365,0.136318951845169,0.027197675779462,0.106747798621655,0.081916756927967,-0.208158940076828,0.078539639711380,0.066764414310455,0.020006002858281));
res += mul(Get(s0,0,dy), float4x4(-0.052635386586189,-0.052324969321489,-0.028024738654494,0.064594231545925,-0.021721798926592,-0.010068133473396,-0.075753465294838,-0.072538472712040,-0.096518039703369,0.043379925191402,0.157078474760056,-0.024434633553028,-0.121380016207695,0.060715433210135,0.001408929470927,0.120509780943394));
res += mul(Get(s0,dx,-dy), float4x4(0.044939175248146,0.007811707910150,-0.039296563714743,0.069013521075249,0.135275498032570,0.106208764016628,-0.044681876897812,-0.065849043428898,0.017014898359776,0.125391438603401,0.042599052190781,-0.036569643765688,-0.052263796329498,-0.043654982000589,0.121446669101715,0.001367461751215));
res += mul(Get(s0,dx,0), float4x4(0.065117359161377,0.051071051508188,0.114382378757000,-0.001223639934324,0.036287963390350,-0.018377387896180,0.124193772673607,0.025610327720642,-0.009637297131121,-0.008574599400163,-0.036933962255716,0.042217094451189,-0.012653473764658,0.128584861755371,0.092343494296074,-0.038530860096216));
res += mul(Get(s0,dx,dy), float4x4(-0.107200898230076,-0.030204728245735,-0.001830645604059,0.053720407187939,0.078104645013809,0.046358104795218,0.025873202830553,-0.075829014182091,-0.042472250759602,0.037685029208660,0.060309305787086,0.023109884932637,0.079792127013206,-0.013241227716208,0.001601657830179,0.044235512614250));
res += mul(Get(s1,-dx,-dy), float4x4(0.010933258570731,0.017539218068123,-0.003611507359892,0.009946870617568,0.005071190185845,0.002168541541323,0.000107908519567,0.001735061290674,0.039581801742315,-0.004849511664361,-0.038087666034698,-0.041863799095154,-0.002341176616028,0.055190753191710,-0.082475997507572,0.014342437498271));
res += mul(Get(s1,-dx,0), float4x4(0.027770640328526,-0.017946751788259,0.005252555478364,0.014123551547527,0.002005275338888,-0.000201071365154,0.002448712941259,0.004300149623305,-0.001171053503640,-0.086594775319099,-0.025454858317971,0.002355606760830,-0.096766509115696,-0.039810888469219,-0.009930330328643,-0.006412153132260));
res += mul(Get(s1,-dx,dy), float4x4(0.032989125698805,-0.008125895634294,-0.000255482591456,0.003431665943936,0.008271697908640,-0.002120758639649,0.007572788279504,0.003703369759023,-0.057404022663832,0.015779558569193,-0.015231415629387,0.000247707532253,-0.058309298008680,-0.054614100605249,-0.068245455622673,-0.031206037849188));
res += mul(Get(s1,0,-dy), float4x4(0.004174530040473,-0.022817486897111,-0.003115853527561,-0.006916413549334,-0.004927779082209,-0.005135974846780,-0.000671095447615,-0.004635382909328,0.086624868214130,-0.086817957460880,-0.008356590755284,0.015422129072249,-0.098493099212646,0.162682667374611,0.052188202738762,0.039874974638224));
res += mul(Get(s1,0,0), float4x4(0.022747561335564,-0.030888661742210,0.011763405986130,-0.002928489120677,0.001266530714929,-0.002612100681290,-0.000169248698512,-0.007998617365956,0.046410292387009,-0.072902269661427,-0.058234989643097,0.038278393447399,-0.048479456454515,0.013346107676625,0.118138082325459,0.092059783637524));
res += mul(Get(s1,0,dy), float4x4(0.022692583501339,-0.008190034888685,0.008257647976279,-0.013039228506386,-0.010948319919407,0.001276570255868,0.002398542594165,0.009705335833132,-0.012346173636615,0.026330426335335,0.018967574462295,0.016552532091737,-0.022799484431744,0.083299629390240,0.040728963911533,0.124353542923927));
res += mul(Get(s1,dx,-dy), float4x4(0.005982168484479,-0.020080251619220,0.001895457040519,0.015087035484612,0.003865585662425,0.000357568002073,0.006184941623360,0.000698338029906,0.039682529866695,-0.027382615953684,0.037829369306564,-0.070817068219185,0.009778430685401,-0.007185829337686,-0.061058513820171,-0.024960700422525));
res += mul(Get(s1,dx,0), float4x4(0.013888960704207,-0.007040722761303,0.007810825482011,0.008463815785944,0.000645122025162,0.006887931842357,0.004703817889094,-0.008217284455895,-0.023532299324870,-0.035939287394285,-0.022583719342947,-0.041711658239365,0.121306926012039,-0.027794592082500,0.003664185293019,0.000724598532543));
res += mul(Get(s1,dx,dy), float4x4(0.008943904191256,0.021297378465533,0.011408287100494,0.003921168856323,-0.013176259584725,-0.002496060682461,0.002119469689205,0.000294928904623,-0.015375186689198,0.025755314156413,-0.023632558062673,-0.014088578522205,0.038834858685732,0.034136041998863,0.003479505423456,-0.036249130964279));
res += mul(Get(s2,-dx,-dy), float4x4(-0.005103010218590,-0.001345931435935,-0.004883625078946,0.003056355286390,0.057673223316669,-0.108063511550426,-0.055708941072226,0.030211770907044,0.066490404307842,-0.117988735437393,-0.072379522025585,0.095541790127754,-0.029147317633033,-0.011906412430108,-0.023531710729003,-0.012249796651304));
res += mul(Get(s2,-dx,0), float4x4(0.001444280147552,-0.004526021424681,-0.000064275212935,-0.005789096932858,0.069709151983261,0.028659233823419,-0.043384421616793,0.156696960330009,0.155754297971725,-0.036127984523773,0.099106281995773,0.034478206187487,0.080535121262074,-0.017470991238952,-0.004130235873163,-0.020544718950987));
res += mul(Get(s2,-dx,dy), float4x4(-0.001121890731156,0.003215086413547,-0.006880097556859,0.002646801294759,-0.153876900672913,0.068563699722290,0.062398653477430,0.055490508675575,0.071150772273540,-0.047001279890537,-0.224196478724480,-0.012105478905141,0.027415784075856,0.044784590601921,0.041849497705698,-0.049182359129190));
res += mul(Get(s2,0,-dy), float4x4(0.004504426848143,0.002049664268270,0.000601364590693,0.004723620135337,0.136899039149284,-0.098722137510777,-0.019635133445263,0.121535323560238,0.014210538007319,-0.058758743107319,-0.052550129592419,0.419050604104996,-0.031152561306953,0.026511294767261,-0.016986951231956,0.004745566751808));
res += mul(Get(s2,0,0), float4x4(-0.000992087181658,-0.001084502437152,0.002694930881262,0.000921747589018,-0.045995961874723,0.136744335293770,0.008521970361471,0.141113266348839,-0.224916830658913,-0.170011252164841,-0.025929549708962,-0.006580251269042,-0.063777059316635,-0.004229500889778,-0.040262706577778,0.007694521453232));
res += mul(Get(s2,0,dy), float4x4(-0.005654848646373,-0.003883215133101,-0.005327590741217,0.000334470212692,-0.182753443717957,-0.007461096160114,0.115172915160656,-0.052043154835701,0.069012977182865,-0.034781821072102,-0.153971105813980,-0.043016836047173,-0.019947344437242,0.020061079412699,-0.000535353785381,0.022814048454165));
res += mul(Get(s2,dx,-dy), float4x4(0.004982835613191,-0.001425192691386,-0.003777216887102,0.003703858004883,0.055089168250561,0.032780628651381,0.023876221850514,-0.009713963605464,-0.012175093404949,-0.032230615615845,0.182857125997543,-0.307125538587570,0.020573861896992,0.011110476218164,0.007794846780598,-0.080653458833694));
res += mul(Get(s2,dx,0), float4x4(0.003167247399688,-0.003072842489928,0.002187403617427,0.006388809066266,-0.041020631790161,0.031440742313862,0.037437088787556,0.030424708500504,-0.105348497629166,-0.062685467302799,-0.159876808524132,0.012029391713440,0.011851644143462,0.004874819424003,-0.007620957680047,-0.050288546830416));
res += mul(Get(s2,dx,dy), float4x4(-0.002088204491884,0.000302381056827,0.001775180804543,-0.002694529248402,-0.087478280067444,-0.037925340235233,0.023931358009577,-0.032095618546009,0.083751320838928,0.002902962965891,0.013048667460680,-0.023774093016982,-0.005976533517241,0.011936291120946,-0.007751448079944,-0.027606543153524));
res += mul(Get(s3,-dx,-dy), float4x4(0.037701554596424,0.014816770330071,-0.017018137499690,-0.090765193104744,-0.021337654441595,0.027010820806026,-0.042951889336109,0.009744359180331,-0.038956712931395,0.015302526764572,0.018679860979319,-0.000536929699592,0.002078287769109,-0.001244804589078,0.000517274485901,0.004467268474400));
res += mul(Get(s3,-dx,0), float4x4(-0.026034900918603,0.040038101375103,0.079159595072269,-0.046407546848059,-0.048342201858759,0.074097082018852,-0.095180384814739,-0.065455667674541,-0.032043714076281,-0.000509193050675,-0.000647076871246,-0.028717434033751,-0.002538613276556,-0.004075959790498,-0.001213637413457,-0.002700326498598));
res += mul(Get(s3,-dx,dy), float4x4(-0.025279706344008,-0.009849773719907,0.019639074802399,-0.009834934026003,-0.119804337620735,-0.021682607010007,-0.119548290967941,0.009039452299476,0.014832894317806,0.015212145633996,0.023475255817175,-0.006693837232888,-0.002239648718387,0.002878000494093,0.003969531971961,0.005717469379306));
res += mul(Get(s3,0,-dy), float4x4(0.040124759078026,0.011271154507995,0.076738156378269,-0.126522824168205,0.025323994457722,0.052730798721313,-0.016359800472856,-0.053288731724024,-0.018113225698471,0.007244791369885,0.005078441463411,0.021413754671812,0.002999182092026,-0.005807676818222,-0.007416160311550,0.000453898683190));
res += mul(Get(s3,0,0), float4x4(-0.019306212663651,-0.007047349121422,0.024373907595873,-0.004855961073190,0.101930029690266,0.026202028617263,-0.008047978393734,-0.066094838082790,0.029735520482063,0.009042124263942,-0.009786766022444,0.045211177319288,0.003024926874787,-0.001912901061587,-0.000133667504997,-0.006190491374582));
res += mul(Get(s3,0,dy), float4x4(0.033786613494158,0.037233278155327,0.043574638664722,0.004309100564569,-0.050404492765665,0.012891290709376,-0.003437973326072,0.011135036125779,0.041592940688133,0.006860453169793,0.032325189560652,0.009304414503276,-0.001367529272102,0.002257028361782,0.000537020212505,0.000904294895008));
res += mul(Get(s3,dx,-dy), float4x4(0.003146774601191,-0.049551881849766,0.004110305104405,0.004266540519893,-0.009832943789661,0.048117563128471,0.022787848487496,-0.100910209119320,-0.008035209029913,0.030570765957236,-0.006159814540297,0.001993248239160,0.001959088491276,-0.003724121022969,-0.009864270687103,0.002213126746938));
res += mul(Get(s3,dx,0), float4x4(-0.027921039611101,-0.007966087199748,-0.028156885877252,-0.029295763000846,0.066303245723248,0.010249819606543,-0.039106220006943,-0.034623585641384,0.005612802691758,0.001047202036716,-0.010983501560986,0.027197053655982,0.007328792475164,-0.003723040223122,0.003088566474617,-0.000520311470609));
res += mul(Get(s3,dx,dy), float4x4(-0.015549200586975,-0.010796088725328,-0.044710505753756,-0.052384961396456,-0.084964811801910,-0.030569847673178,0.048153512179852,-0.073095105588436,0.024958532303572,-0.020364290103316,0.030741674825549,0.013266915455461,0.003715271828696,0.001353114261292,0.000794508261606,-0.002950290916488));
return max(float4(0,0,0,0), res);
}
