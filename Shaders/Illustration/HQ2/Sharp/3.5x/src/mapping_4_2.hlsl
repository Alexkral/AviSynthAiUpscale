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
res += mul(Get(s0,-dx,-dy), float4x4(0.091321200132370,-0.238312870264053,0.156924024224281,-0.161275371909142,-0.061601370573044,-0.095109954476357,-0.111018575727940,0.042402461171150,0.008297212421894,-0.037918344140053,0.078700073063374,-0.040301531553268,0.033149000257254,0.076338313519955,0.172177463769913,0.022733822464943));
res += mul(Get(s0,-dx,0), float4x4(-0.004566453397274,-0.160350799560547,0.009444963186979,0.038542255759239,0.021142410114408,0.011261549778283,-0.106653615832329,-0.017789622768760,0.035026311874390,-0.045684099197388,0.003753524040803,0.076682925224304,0.070088833570480,0.034452334046364,-0.040563777089119,0.019285432994366));
res += mul(Get(s0,-dx,dy), float4x4(-0.018492508679628,0.006147372536361,0.046002659946680,-0.034500792622566,-0.019976520910859,0.076957330107689,-0.094540037214756,0.084084935486317,-0.118231996893883,-0.184100359678268,-0.156355813145638,0.156953811645508,0.025756333023310,0.060134097933769,-0.046124916523695,-0.013750948011875));
res += mul(Get(s0,0,-dy), float4x4(0.077737003564835,0.031578171998262,0.214262649416924,0.134927898645401,0.140653029084206,-0.038342319428921,0.126751258969307,0.085474640130997,0.183700010180473,0.144890978932381,0.158176138997078,-0.030178850516677,0.053153049200773,0.076840586960316,0.031077830120921,0.016268424689770));
res += mul(Get(s0,0,0), float4x4(-0.074884124100208,-0.051049049943686,0.020434152334929,0.112480804324150,0.072517551481724,0.091863952577114,0.030890777707100,-0.045654200017452,0.043671958148479,-0.166293948888779,0.144310474395752,0.103738725185394,0.055915080010891,-0.020415665581822,0.052847228944302,-0.097390189766884));
res += mul(Get(s0,0,dy), float4x4(-0.048792600631714,0.063321471214294,-0.127926900982857,-0.059712611138821,0.066392995417118,0.219616666436195,-0.023623218759894,0.139735370874405,-0.072799302637577,-0.060512810945511,-0.085775859653950,0.241001904010773,0.020161919295788,-0.019119633361697,0.095635868608952,0.083700463175774));
res += mul(Get(s0,dx,-dy), float4x4(0.051742430776358,-0.066739968955517,0.241021111607552,-0.016306594014168,0.030968885868788,-0.072670541703701,0.040762167423964,0.039001755416393,0.086154773831367,-0.243303194642067,-0.029242895543575,0.055759180337191,-0.138555929064751,0.102079622447491,-0.083900757133961,0.048304453492165));
res += mul(Get(s0,dx,0), float4x4(0.026198254898190,-0.067395627498627,0.024391319602728,-0.039957247674465,0.095380626618862,-0.170022010803223,-0.119958445429802,0.011944756843150,0.169077470898628,-0.177167177200317,-0.091444730758667,-0.126664400100708,0.056771162897348,-0.008375998586416,0.004414639435709,0.075138278305531));
res += mul(Get(s0,dx,dy), float4x4(-0.055439580231905,-0.007461752742529,-0.142220079898834,0.047569774091244,-0.110771514475346,0.073510773479939,0.060931257903576,0.106884099543095,-0.073383092880249,-0.042778074741364,0.001634878222831,0.076556272804737,-0.013304206542671,0.074031911790371,-0.067668035626411,0.040721535682678));
res += mul(Get(s1,-dx,-dy), float4x4(-0.102197423577309,0.134767442941666,0.013050153851509,0.014545910060406,-0.069606520235538,-0.045403029769659,-0.015169602818787,-0.010932872071862,-0.036365155130625,0.059431247413158,-0.103094607591629,-0.024142460897565,0.040016047656536,0.058094620704651,-0.084297128021717,-0.116819299757481));
res += mul(Get(s1,-dx,0), float4x4(-0.029559619724751,0.110415078699589,-0.035669483244419,-0.057646088302135,0.096703261137009,-0.058984465897083,0.075436525046825,0.053512226790190,0.083834037184715,-0.155239582061768,0.064417526125908,0.063788644969463,-0.059503499418497,0.073301479220390,0.013346581719816,-0.184042528271675));
res += mul(Get(s1,-dx,dy), float4x4(-0.086283572018147,-0.001710322685540,-0.003379943780601,0.007526657078415,-0.016928959637880,0.066384777426720,0.103286303579807,0.030331900343299,-0.009111231192946,-0.092117480933666,-0.028598697856069,-0.034624483436346,0.012338261120021,0.021095935255289,-0.091414853930473,-0.019562106579542));
res += mul(Get(s1,0,-dy), float4x4(0.099377021193504,0.107267722487450,0.036661539226770,-0.009482331573963,-0.074419207870960,0.006063542794436,0.057567637413740,-0.153189525008202,-0.016799448058009,0.066867895424366,-0.083634257316589,-0.050782483071089,-0.059950638562441,0.110622122883797,-0.003279937431216,-0.035842511802912));
res += mul(Get(s1,0,0), float4x4(0.054115492850542,0.036635216325521,-0.050505790859461,0.013787314295769,0.134190812706947,-0.169636204838753,-0.061155058443546,-0.043176900595427,0.043882161378860,-0.052836757153273,-0.047081403434277,-0.170974090695381,0.077489115297794,-0.092849574983120,-0.003313612192869,-0.060093265026808));
res += mul(Get(s1,0,dy), float4x4(-0.129425078630447,-0.197481736540794,-0.084402598440647,0.034808780997992,-0.071251824498177,0.217283636331558,0.127472475171089,-0.017667971551418,-0.093161895871162,0.007384015247226,-0.018130516633391,0.232271671295166,0.085010446608067,0.121473930776119,-0.143993422389030,0.078874289989471));
res += mul(Get(s1,dx,-dy), float4x4(-0.002106073312461,0.126056894659996,-0.095856346189976,-0.069078981876373,0.059122376143932,0.055113434791565,-0.031997337937355,-0.085139043629169,-0.056783296167850,-0.055460985749960,-0.065411001443863,-0.087901115417480,0.076992742717266,0.065242446959019,0.084215380251408,0.017040412873030));
res += mul(Get(s1,dx,0), float4x4(-0.006683599203825,-0.066311076283455,0.264475345611572,-0.020794739946723,-0.020487306639552,-0.080872036516666,0.109949477016926,-0.018523411825299,0.005374800413847,-0.021176490932703,0.000566949136555,-0.074435830116272,-0.115795843303204,-0.130398988723755,-0.069885820150375,0.004270314238966));
res += mul(Get(s1,dx,dy), float4x4(-0.118792444467545,0.090340137481689,-0.024402085691690,0.031602781265974,-0.121646828949451,0.155257135629654,-0.090260446071625,-0.186245858669281,0.024343281984329,-0.008408877067268,0.000302024709526,0.044009950011969,-0.128098219633102,-0.030513614416122,0.012818970717490,-0.039896097034216));
res += mul(Get(s2,-dx,-dy), float4x4(0.063120529055595,0.022819353267550,-0.139237895607948,0.034557953476906,0.099066317081451,0.043005838990211,-0.030270602554083,0.148490488529205,-0.005782100372016,-0.036819405853748,0.038284011185169,-0.033296301960945,0.100169122219086,-0.187560126185417,-0.094235233962536,0.039961136877537));
res += mul(Get(s2,-dx,0), float4x4(0.040882483124733,-0.129973426461220,0.007045201025903,-0.032647639513016,-0.008241861127317,-0.108873315155506,-0.102584175765514,0.030260223895311,0.003472022712231,0.073938257992268,-0.152617290616035,0.054071817547083,-0.082841500639915,-0.080305069684982,-0.020466543734074,-0.089390873908997));
res += mul(Get(s2,-dx,dy), float4x4(0.121613882482052,0.286729782819748,0.069116458296776,0.108580730855465,0.032117657363415,-0.089255996048450,-0.053182806819677,-0.074540130794048,-0.044679518789053,0.008103870786726,0.031751897186041,-0.034382995218039,0.042452290654182,0.012215673923492,-0.003495546523482,0.178284049034119));
res += mul(Get(s2,0,-dy), float4x4(0.009733254089952,0.027920871973038,-0.177932828664780,0.051104452461004,0.000158940558322,-0.050537951290607,-0.055886842310429,0.086840398609638,0.005415217485279,0.091856755316257,-0.072103030979633,0.040343776345253,0.116219460964203,-0.047359675168991,0.064894653856754,0.047161452472210));
res += mul(Get(s2,0,0), float4x4(0.059497572481632,0.049500811845064,-0.151420354843140,-0.132194280624390,-0.096052333712578,0.027761988341808,-0.007621755823493,-0.032481577247381,0.019482068717480,0.125761821866035,-0.122213460505009,-0.145737498998642,-0.140192627906799,0.027457820251584,-0.034754969179630,0.176293671131134));
res += mul(Get(s2,0,dy), float4x4(-0.074837282299995,0.184702411293983,0.094260990619659,-0.070145204663277,0.033553123474121,0.005137759260833,-0.045488808304071,0.096833541989326,0.048265244811773,0.170610621571541,-0.018791973590851,0.120972342789173,-0.020895553752780,0.124280706048012,-0.076095238327980,0.057848997414112));
res += mul(Get(s2,dx,-dy), float4x4(0.034670531749725,-0.029552621766925,-0.038988284766674,-0.054717343300581,0.020459167659283,0.101550370454788,-0.081356801092625,-0.133420273661613,0.043111938983202,0.001413832418621,-0.016626445576549,0.004111491143703,0.004952229559422,0.040599953383207,-0.047297146171331,0.025342380627990));
res += mul(Get(s2,dx,0), float4x4(-0.094979383051395,0.053127441555262,-0.047166280448437,-0.036663040518761,-0.019886244088411,0.007804134394974,-0.049580983817577,-0.031149758026004,0.032300621271133,-0.028444245457649,0.217315375804901,0.057373482733965,-0.036030307412148,-0.015167982317507,-0.081347249448299,0.029935104772449));
res += mul(Get(s2,dx,dy), float4x4(-0.090048260986805,-0.007679371628910,-0.027192300185561,0.039245653897524,0.014425504952669,0.038997448980808,-0.067550070583820,0.059802167117596,0.046246606856585,-0.065897375345230,0.010436360724270,0.030958795920014,-0.001647343160585,0.030915051698685,-0.188241437077522,0.030706431716681));
res += mul(Get(s3,-dx,-dy), float4x4(0.068588301539421,-0.054818566888571,0.048294607549906,0.048019316047430,0.011234907433391,0.025830311700702,-0.051975958049297,-0.081682235002518,-0.000701999932062,-0.059301275759935,0.107451692223549,0.051178604364395,-0.007477499544621,0.062314338982105,0.041371785104275,0.116703286767006));
res += mul(Get(s3,-dx,0), float4x4(0.006551138591021,0.218990638852119,0.018995013087988,-0.024172971025109,-0.098526589572430,0.078871928155422,0.086570769548416,-0.038156811147928,0.077272124588490,0.022301308810711,-0.059373743832111,0.002444248413667,-0.205189734697342,0.066175773739815,0.030361838638783,-0.047684483230114));
res += mul(Get(s3,-dx,dy), float4x4(-0.048921037465334,-0.055959951132536,-0.037508968263865,0.004642739892006,0.066969849169254,-0.061895951628685,0.087704025208950,0.008761593140662,-0.134936541318893,0.118075989186764,-0.041587986052036,-0.056052897125483,-0.057814702391624,0.013512637466192,-0.135114267468452,0.012183399870992));
res += mul(Get(s3,0,-dy), float4x4(0.022404341027141,-0.017768152058125,0.181310594081879,0.041381165385246,0.065062411129475,-0.103834435343742,0.075313076376915,0.019493576139212,0.001368265715428,0.051257610321045,0.067736618220806,-0.040764626115561,-0.132274910807610,-0.110082045197487,-0.064186774194241,0.107344821095467));
res += mul(Get(s3,0,0), float4x4(0.089443087577820,0.100898407399654,0.169783756136894,0.029476413503289,0.120795093476772,0.061471462249756,0.166556015610695,0.202056720852852,-0.087118454277515,-0.024426996707916,-0.006993986200541,0.066494666039944,-0.112507022917271,0.248212441802025,-0.112547919154167,0.064271613955498));
res += mul(Get(s3,0,dy), float4x4(0.062604054808617,0.058654341846704,-0.044523987919092,0.113268986344337,-0.041595682501793,0.062616072595119,-0.011196627281606,-0.016092732548714,0.059153940528631,-0.074729830026627,0.018415983766317,0.031512878835201,-0.132977560162544,0.093527242541313,-0.180276229977608,-0.081772856414318));
res += mul(Get(s3,dx,-dy), float4x4(-0.194490835070610,0.126479208469391,-0.062919631600380,-0.020116375759244,0.016938239336014,-0.052338596433401,-0.108125150203705,0.108047813177109,0.051399067044258,0.014711829833686,0.065400518476963,0.028492327779531,0.038336254656315,0.109767295420170,0.048520084470510,-0.022470930591226));
res += mul(Get(s3,dx,0), float4x4(0.037486497312784,0.090498439967632,0.046687912195921,0.088190138339996,0.019720103591681,0.026350688189268,0.008993587456644,0.042871955782175,-0.142011970281601,0.001679438748397,-0.055588707327843,-0.087400346994400,-0.122707247734070,0.140662342309952,-0.050045583397150,0.041472602635622));
res += mul(Get(s3,dx,dy), float4x4(-0.097183555364609,-0.235891416668892,0.174348622560501,0.022916208952665,-0.123839259147644,0.114555500447750,-0.002048241905868,-0.108481705188751,0.038289237767458,0.049194782972336,-0.001675564097241,-0.004538039676845,-0.015050163492560,0.018645320087671,-0.170384287834167,-0.032207697629929));
return max(float4(0,0,0,0), res);
}
