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
res += mul(Get(s0,-dx,-dy), float4x4(0.327592223882675,-0.129880771040916,-0.039893932640553,0.054508246481419,-0.105961933732033,-0.116339735686779,-0.159960672259331,-0.108956895768642,-0.146653130650520,-0.016473060473800,-0.214521482586861,-0.091257899999619,0.102283284068108,0.001068507903256,-0.019101161509752,0.046949516981840));
res += mul(Get(s0,-dx,0), float4x4(0.209435880184174,-0.250119596719742,-0.119337715208530,-0.317224860191345,0.041197590529919,-0.014590098522604,-0.072468742728233,0.029833110049367,-0.086677201092243,0.083610922098160,-0.022490862756968,0.096959710121155,-0.037618838250637,0.109951816499233,0.119863778352737,0.098513603210449));
res += mul(Get(s0,-dx,dy), float4x4(0.096401266753674,-0.253024339675903,-0.187264457345009,0.047608014196157,-0.126980394124985,0.088937327265739,-0.051769997924566,0.235456064343452,-0.139967665076256,0.004156327806413,-0.099806420505047,-0.154028385877609,0.159854128956795,0.132452428340912,0.021723065525293,0.106455802917480));
res += mul(Get(s0,0,-dy), float4x4(-0.010300982743502,-0.036315377801657,-0.106997288763523,0.130580186843872,0.230508223176003,-0.167804002761841,-0.287427335977554,-0.076845496892929,0.004132502712309,-0.011739220470190,-0.133976548910141,-0.098500125110149,0.063517652451992,-0.018952742218971,0.041385799646378,-0.128378063440323));
res += mul(Get(s0,0,0), float4x4(-0.041837755590677,0.156302079558372,-0.143297225236893,-0.073236823081970,0.303957253694534,-0.154776901006699,-0.117210157215595,-0.102960683405399,0.028456827625632,0.040238935500383,-0.021644813939929,0.262691676616669,-0.044674970209599,0.024282271042466,0.014775953255594,-0.088022783398628));
res += mul(Get(s0,0,dy), float4x4(0.113460019230843,0.562936425209045,-0.154172509908676,0.119778357446194,-0.039498575031757,0.090091437101364,0.035531684756279,0.106152676045895,-0.028101833537221,0.054275907576084,0.045815967023373,-0.046997994184494,0.007739791646600,0.091146372258663,0.026610977947712,0.103400021791458));
res += mul(Get(s0,dx,-dy), float4x4(0.104768104851246,-0.090435363352299,0.059439051896334,0.105726271867752,-0.135961905121803,0.142796903848648,0.077536769211292,-0.189282625913620,-0.018865616992116,-0.047446392476559,-0.000210854646866,-0.418658077716827,-0.039345361292362,-0.019382167607546,-0.105092190206051,-0.080187320709229));
res += mul(Get(s0,dx,0), float4x4(-0.084696523845196,-0.141783043742180,-0.117521516978741,-0.247890263795853,0.011080277152359,-0.049014739692211,0.197820216417313,0.012818570248783,-0.097432300448418,-0.029017327353358,0.057950001209974,-0.083171911537647,-0.019315734505653,-0.048791378736496,-0.101304516196251,-0.260034918785095));
res += mul(Get(s0,dx,dy), float4x4(0.222582772374153,0.100539967417717,-0.119930416345596,-0.005020847078413,-0.157032266259193,0.157038897275925,0.103227749466896,-0.177410915493965,-0.147636726498604,-0.002043865621090,0.009944473393261,-0.126842364668846,-0.037097342312336,0.008899102918804,-0.094929359853268,0.201624751091003));
res += mul(Get(s1,-dx,-dy), float4x4(-0.192459121346474,0.023264696821570,0.089647248387337,0.309772402048111,0.063810244202614,-0.077347159385681,-0.022788928821683,-0.134439662098885,0.082013279199600,-0.119201622903347,0.161332085728645,0.027949415147305,-0.133845984935760,-0.033368002623320,0.014275660738349,-0.188715636730194));
res += mul(Get(s1,-dx,0), float4x4(-0.179487824440002,-0.140985235571861,-0.139037534594536,0.370264679193497,0.102090261876583,-0.137234732508659,-0.012622650712729,-0.137807682156563,0.129065796732903,0.101559340953827,0.041575767099857,0.126045316457748,-0.159991204738617,-0.131074965000153,0.180103138089180,-0.147734522819519));
res += mul(Get(s1,-dx,dy), float4x4(-0.100626498460770,0.124945394694805,-0.113128259778023,0.220829188823700,-0.043392136693001,0.021892705932260,0.098297573626041,-0.151553809642792,0.144161894917488,0.012768495827913,-0.152761399745941,-0.074965827167034,-0.024072136729956,0.153391361236572,-0.007463928312063,-0.114183999598026));
res += mul(Get(s1,0,-dy), float4x4(-0.142135560512543,-0.034530937671661,0.055723149329424,0.144636318087578,0.147026687860489,-0.009365933015943,-0.143147811293602,-0.177020922303200,-0.019150825217366,0.125202044844627,-0.019709510728717,-0.197928935289383,0.094975233078003,0.026953658089042,0.122766062617302,-0.192452162504196));
res += mul(Get(s1,0,0), float4x4(-0.116630427539349,0.128865376114845,0.115730278193951,-0.083412863314152,0.112107023596764,-0.107609674334526,-0.080074325203896,-0.126280039548874,0.228892713785172,0.118791520595551,0.154025226831436,-0.022366525605321,-0.011236667633057,-0.199604883790016,-0.043066926300526,0.010722484439611));
res += mul(Get(s1,0,dy), float4x4(0.006445057690144,0.006071438081563,0.019676147028804,-0.056524384766817,-0.043189428746700,-0.051487110555172,0.044043034315109,0.053227476775646,-0.034734155982733,0.271207034587860,-0.192014306783676,0.026674864813685,-0.071219079196453,0.073041163384914,0.039064727723598,0.029129063710570));
res += mul(Get(s1,dx,-dy), float4x4(-0.019832653924823,-0.032257661223412,-0.049391914159060,0.057261619716883,0.126427605748177,0.378863722085953,-0.415327906608582,0.158214762806892,0.035358406603336,0.099111132323742,-0.133371457457542,-0.364372014999390,-0.078121669590473,-0.068563863635063,0.053634352982044,-0.143879696726799));
res += mul(Get(s1,dx,0), float4x4(-0.112615711987019,0.082229070365429,-0.049988321959972,-0.082840122282505,-0.028288124129176,0.185178354382515,-0.198732212185860,0.081719882786274,0.146066695451736,-0.094521827995777,0.028076380491257,-0.136294871568680,-0.070428557693958,-0.156073704361916,0.237119466066360,-0.018507737666368));
res += mul(Get(s1,dx,dy), float4x4(0.012964864261448,0.151456221938133,-0.096660025417805,0.187283247709274,0.114612497389317,-0.044826805591583,-0.086270637810230,0.275503963232040,0.203362122178078,0.057262573391199,-0.125299558043480,-0.165343150496483,-0.191731646656990,0.096675224602222,0.034747287631035,0.063325658440590));
res += mul(Get(s2,-dx,-dy), float4x4(0.058048583567142,-0.272402167320251,-0.116625137627125,-0.199650391936302,-0.079872466623783,-0.094430685043335,-0.065409965813160,-0.200360223650932,-0.024114539846778,-0.035410620272160,0.084516316652298,0.044373389333487,0.009318972006440,-0.120793759822845,-0.026675930246711,0.094877056777477));
res += mul(Get(s2,-dx,0), float4x4(-0.078429944813251,-0.256552308797836,-0.115805484354496,-0.008970622904599,-0.099574357271194,0.008895698003471,0.097309775650501,-0.131681337952614,-0.048138760030270,0.078120604157448,-0.019302228465676,0.032943584024906,0.047032956033945,-0.199184939265251,-0.047285046428442,0.003210452385247));
res += mul(Get(s2,-dx,dy), float4x4(-0.067240528762341,-0.040985818952322,-0.084366396069527,0.182126089930534,-0.228734940290451,0.189768135547638,0.143617361783981,-0.145939499139786,0.006848249118775,0.360282093286514,-0.047437693923712,-0.079959474503994,-0.220276564359665,-0.219890788197517,-0.068004012107849,0.303104400634766));
res += mul(Get(s2,0,-dy), float4x4(-0.108820818364620,-0.223289147019386,-0.038827672600746,-0.272988736629486,-0.042960941791534,0.036799140274525,0.004527119919658,-0.106834858655930,0.064567729830742,-0.157680019736290,0.188139989972115,-0.041667342185974,0.085680991411209,-0.116956360638142,0.100406996905804,0.124874934554100));
res += mul(Get(s2,0,0), float4x4(-0.093253500759602,-0.089029110968113,-0.043913416564465,-0.243109926581383,-0.131271839141846,0.192400738596916,0.298694312572479,0.393085330724716,0.098170973360538,0.074203275144100,0.102683946490288,-0.067423023283482,-0.093572825193405,0.020289486274123,0.014473361894488,-0.197665378451347));
res += mul(Get(s2,0,dy), float4x4(-0.092400126159191,0.072254613041878,-0.131258949637413,-0.077676057815552,-0.143529236316681,0.111503638327122,0.001521326368675,0.177359700202942,0.273245573043823,-0.010412639938295,0.070949755609035,-0.126696497201920,-0.117338754236698,0.289394736289978,0.179065123200417,0.209760010242462));
res += mul(Get(s2,dx,-dy), float4x4(0.026792392134666,-0.087196499109268,0.140592172741890,-0.204325482249260,-0.168917059898376,0.009926242753863,-0.180786922574043,-0.072938717901707,0.085381425917149,0.060552507638931,0.148406296968460,0.025458822026849,-0.167693346738815,-0.199702039361000,-0.024490827694535,0.269375830888748));
res += mul(Get(s2,dx,0), float4x4(-0.165631338953972,0.027790471911430,-0.065906859934330,-0.162293091416359,-0.121558189392090,0.025750346481800,-0.130594179034233,0.128570988774300,0.057124767452478,0.022843247279525,0.074304617941380,0.150990545749664,-0.061706870794296,-0.136480629444122,0.013418702408671,-0.192640393972397));
res += mul(Get(s2,dx,dy), float4x4(-0.120215490460396,0.172612488269806,0.177146270871162,-0.008326522074640,-0.008059641346335,-0.000205627322430,-0.127707093954086,0.154349327087402,0.086943835020065,-0.073005713522434,0.013982301577926,-0.001327975653112,-0.257004052400589,-0.040068618953228,-0.100855074822903,-0.079380474984646));
res += mul(Get(s3,-dx,-dy), float4x4(-0.092955611646175,-0.173923060297966,0.318769842386246,0.083460129797459,-0.118472896516323,-0.013338268734515,0.133904799818993,-0.183788955211639,-0.065530031919479,0.106719307601452,0.035331502556801,-0.016859905794263,0.007977765053511,-0.157920360565186,0.071342177689075,-0.285294085741043));
res += mul(Get(s3,-dx,0), float4x4(-0.100350134074688,-0.129688471555710,0.111299961805344,-0.075291700661182,-0.145096153020859,-0.067129120230675,0.022384488955140,-0.124135211110115,-0.075021423399448,0.157136008143425,-0.026539683341980,0.038086261600256,-0.037061680108309,-0.021810602396727,-0.063475482165813,-0.160500153899193));
res += mul(Get(s3,-dx,dy), float4x4(-0.052602741867304,-0.190553203225136,-0.001286973361857,0.037930324673653,-0.188400372862816,-0.054285250604153,0.065075896680355,0.205467134714127,-0.035469420254230,-0.062459975481033,-0.084718979895115,0.206331238150597,-0.188808873295784,0.113072827458382,-0.008373278193176,-0.053769040852785));
res += mul(Get(s3,0,-dy), float4x4(-0.158677518367767,-0.175767019391060,0.007909432984889,-0.009433054365218,-0.175983965396881,-0.286660611629486,-0.040343780070543,-0.257891237735748,0.026313820853829,0.084639400243759,-0.122336558997631,-0.153686180710793,-0.019442670047283,-0.072662450373173,0.011030699126422,-0.211869284510612));
res += mul(Get(s3,0,0), float4x4(-0.082682661712170,-0.152266010642052,-0.046180035918951,-0.101493887603283,-0.109843052923679,-0.131881028413773,0.110283136367798,-0.048730067908764,0.004470450803638,-0.026935936883092,-0.131465375423431,0.091146506369114,0.248255074024200,0.077488809823990,-0.171871542930603,0.020676478743553));
res += mul(Get(s3,0,dy), float4x4(-0.059028197079897,-0.235616952180862,-0.208860307931900,0.099099107086658,-0.155126944184303,-0.199565812945366,-0.279274523258209,0.186418503522873,0.040685944259167,-0.005454364232719,0.014000020921230,0.096214503049850,0.075886860489845,-0.026822799816728,-0.138407483696938,0.041111648082733));
res += mul(Get(s3,dx,-dy), float4x4(-0.099781610071659,-0.034326396882534,-0.232224196195602,0.185628995299339,-0.106406204402447,0.008335521444678,0.005110386759043,-0.274411976337433,-0.024817625060678,-0.010619355365634,-0.023687472566962,0.002583168679848,-0.067608155310154,0.068478398025036,-0.163753539323807,-0.179213494062424));
res += mul(Get(s3,dx,0), float4x4(-0.054250501096249,-0.060104288160801,-0.060561336576939,0.253407895565033,-0.077809751033783,-0.012223385274410,0.012448497116566,-0.025061318650842,0.081058219075203,-0.108556002378464,0.285773187875748,0.114437974989414,0.083273112773895,0.123520530760288,-0.284173160791397,0.114057593047619));
res += mul(Get(s3,dx,dy), float4x4(-0.068108849227428,0.042168363928795,-0.176946923136711,-0.019434779882431,-0.081278234720230,-0.385544776916504,0.125180125236511,0.267989933490753,-0.001532505499199,0.138452902436256,0.202141568064690,0.015328245237470,0.232582002878189,0.103459775447845,-0.024600138887763,-0.042779557406902));
return max(float4(0,0,0,0), res);
}
