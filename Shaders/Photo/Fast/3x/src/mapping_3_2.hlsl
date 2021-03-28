sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.177193298935890,-0.345084965229034,-0.191404968500137,-0.037344504147768);
res += mul(Get(s0,-dx,-dy), float4x4(0.169406101107597,-0.279718637466431,-0.162437647581100,-0.059352647513151,0.308785110712051,0.610390186309814,0.061595387756824,0.171680152416229,0.052003785967827,-0.223153248429298,0.057459384202957,0.197801932692528,-0.059062432497740,-0.122639983892441,-0.046495199203491,0.035988803952932));
res += mul(Get(s0,-dx,0), float4x4(0.209226533770561,-0.104653015732765,-0.294384807348251,-0.155401632189751,0.264883965253830,0.053350608795881,0.022517051547766,0.164261102676392,-0.125844925642014,-0.418555200099945,-0.264548331499100,0.381905198097229,-0.054311219602823,-0.072175964713097,0.181142836809158,0.539319336414337));
res += mul(Get(s0,-dx,dy), float4x4(-0.157258138060570,-0.178708940744400,-0.036322627216578,0.162967324256897,-0.050084963440895,-0.140435680747032,-0.195215061306953,0.127186357975006,0.098899751901627,0.056868370622396,0.303051680326462,0.179393559694290,-0.114811308681965,0.011508783325553,-0.197613820433617,0.007645076140761));
res += mul(Get(s0,0,-dy), float4x4(0.099648915231228,0.450376480817795,-0.172950744628906,-0.229748174548149,0.226962417364120,0.322044551372528,0.067844077944756,-0.303367584943771,0.048817213624716,0.043155033141375,0.127731367945671,-0.104406163096428,0.005438449326903,0.013309725560248,-0.100640788674355,-0.039010126143694));
res += mul(Get(s0,0,0), float4x4(-0.319853335618973,0.072563745081425,-0.331025630235672,-0.939811110496521,-0.040820159018040,-0.373580336570740,0.317756652832031,-0.148932605981827,0.234325081110001,0.261449247598648,0.122244656085968,-0.672602415084839,-0.017579529434443,-0.456500619649887,0.294773131608963,-0.280344128608704));
res += mul(Get(s0,0,dy), float4x4(0.020717630162835,0.162203013896942,0.098411291837692,0.016934072598815,-0.090464882552624,-0.233089491724968,-0.332137972116470,-0.026172790676355,-0.091719903051853,0.013402687385678,-0.085586749017239,0.110256008803844,-0.053374707698822,0.207802772521973,-0.097778812050819,-0.200388252735138));
res += mul(Get(s0,dx,-dy), float4x4(0.092233568429947,-0.075178243219852,-0.040941987186670,-0.010038925334811,-0.081111311912537,0.216528326272964,0.164174705743790,-0.253727555274963,-0.058714777231216,-0.010921177454293,0.128365069627762,-0.172779411077499,-0.197345286607742,-0.121266320347786,0.059005994349718,0.175584331154823));
res += mul(Get(s0,dx,0), float4x4(0.073437742888927,0.092140316963196,0.098221637308598,0.431986391544342,0.011238321661949,0.400260210037231,-0.019550245255232,-0.290048092603683,-0.024925522506237,-0.134210258722305,0.103250220417976,0.046251282095909,0.024729263037443,-0.010172687470913,0.010075695812702,-0.450109392404556));
res += mul(Get(s0,dx,dy), float4x4(-0.007028983905911,0.007505926769227,-0.123696729540825,-0.085370153188705,-0.305902868509293,0.052559327334166,-0.240414097905159,-0.359512388706207,0.014397257938981,0.194340467453003,-0.085310190916061,-0.039189115166664,0.163602411746979,0.102143324911594,0.110285691916943,-0.145577967166901));
res += mul(Get(s1,-dx,-dy), float4x4(0.032198894768953,-0.002899900777265,0.090596616268158,-0.050596989691257,-0.022668311372399,-0.216002747416496,-0.141401320695877,-0.002277586376294,-0.014162786304951,0.074427351355553,-0.053535334765911,-0.063136056065559,0.064538426697254,0.045481745153666,-0.078394919633865,-0.156633168458939));
res += mul(Get(s1,-dx,0), float4x4(0.028989037498832,-0.087362900376320,-0.152697980403900,0.118976175785065,-0.300015389919281,0.294978618621826,0.235741063952446,-0.160169556736946,0.046983137726784,0.058169711381197,-0.184705182909966,-0.117818936705589,-0.208677470684052,0.259905517101288,0.211902439594269,0.422786504030228));
res += mul(Get(s1,-dx,dy), float4x4(-0.067820161581039,-0.049266271293163,-0.122011803090572,0.035933338105679,0.177821516990662,-0.090827457606792,-0.291786819696426,0.103771023452282,-0.004148508422077,0.165074884891510,0.486139029264450,-0.165750324726105,0.064600899815559,-0.020265426486731,0.166444063186646,0.055973969399929));
res += mul(Get(s1,0,-dy), float4x4(0.156421020627022,0.002529037650675,0.087602943181992,0.019003234803677,0.097582943737507,0.257882624864578,-0.197109833359718,0.074673086404800,-0.194569095969200,0.019013660028577,-0.017175113782287,-0.101201966404915,0.127183631062508,-0.419228225946426,0.020854583010077,-0.047075167298317));
res += mul(Get(s1,0,0), float4x4(0.080265171825886,0.692267179489136,-0.201004326343536,-0.011472754180431,-0.716705381870270,-0.575874209403992,0.244527086615562,0.110450141131878,0.451831758022308,-0.547187268733978,-0.143628716468811,-0.130714520812035,-0.102408029139042,-0.351780891418457,-0.117675274610519,-0.181552156805992));
res += mul(Get(s1,0,dy), float4x4(-0.042507942765951,-0.092616371810436,-0.162824809551239,0.221791714429855,0.666637122631073,0.627360165119171,-0.329446196556091,-0.107594557106495,-0.036403641104698,-0.439381957054138,0.684220314025879,-0.048658624291420,-0.045878686010838,-0.001006136415526,0.073579221963882,0.101376123726368));
res += mul(Get(s1,dx,-dy), float4x4(0.007361100520939,-0.094711564481258,0.060738857835531,-0.206032708287239,0.004327937960625,-0.122610978782177,-0.091068141162395,-0.067100308835506,-0.057631507515907,-0.141973495483398,-0.040639765560627,0.061076000332832,-0.090961098670959,-0.167454704642296,0.110032513737679,-0.019138710573316));
res += mul(Get(s1,dx,0), float4x4(0.074361354112625,-0.006228863261640,0.127980202436447,-0.303922176361084,-0.071042604744434,0.096369564533234,-0.082922495901585,-0.008014873601496,0.125975251197815,0.023319503292441,0.035325251519680,0.103701889514923,-0.074807293713093,-0.103274881839752,-0.165302172303200,-0.125646620988846));
res += mul(Get(s1,dx,dy), float4x4(-0.194179356098175,-0.039400652050972,-0.134207352995872,-0.177173182368279,-0.041595768183470,-0.002820715773851,0.084008440375328,-0.132430940866470,0.075638927519321,-0.031314615160227,-0.040747471153736,0.166564166545868,0.065295971930027,0.219306930899620,-0.004802898038179,-0.152041360735893));
res += mul(Get(s2,-dx,-dy), float4x4(0.109684780240059,0.169078484177589,0.141980901360512,0.162901297211647,-0.055344432592392,-0.033471591770649,-0.021076779812574,0.007933155633509,0.008860076777637,-0.263267844915390,-0.057184860110283,-0.170071616768837,0.024688113480806,-0.033604025840759,-0.031564094126225,-0.118650615215302));
res += mul(Get(s2,-dx,0), float4x4(-0.027489947155118,0.030979730188847,-0.024142796173692,0.080105334520340,0.156717717647552,-0.093335673213005,0.151999667286873,-0.481872975826263,-0.061316292732954,0.038480110466480,-0.031444672495127,-0.063595287501812,-0.101631261408329,0.044433012604713,0.289189636707306,0.123801589012146));
res += mul(Get(s2,-dx,dy), float4x4(-0.102855555713177,-0.074811287224293,0.003443775465712,0.059712473303080,0.223585709929466,-0.096088148653507,-0.117821678519249,-0.088515795767307,0.075596034526825,0.152942195534706,0.249591037631035,0.024543320760131,0.058950498700142,-0.100115932524204,0.117631174623966,-0.025136800482869));
res += mul(Get(s2,0,-dy), float4x4(0.128736317157745,0.325637161731720,0.274397253990173,0.196560010313988,0.035271495580673,0.155108213424683,0.009845632128417,0.093521043658257,0.149442419409752,-0.118186824023724,-0.232003778219223,-0.039352566003799,-0.694675028324127,-0.458825618028641,0.330908805131912,0.218001976609230));
res += mul(Get(s2,0,0), float4x4(-0.241337493062019,0.158330678939819,-0.267651319503784,-0.024347366765141,-0.463084459304810,-0.061279650777578,0.109999261796474,0.271843880414963,-0.274538666009903,-0.111315809190273,0.334991544485092,0.276866555213928,0.011612277477980,0.169945999979973,0.152587294578552,-0.016690852120519));
res += mul(Get(s2,0,dy), float4x4(-0.090549059212208,0.177844241261482,-0.154130280017853,0.100085049867630,-0.058914814144373,0.006556440144777,-0.074305839836597,0.075787477195263,0.126065105199814,0.005776196718216,-0.061342071741819,0.205775365233421,0.118865184485912,-0.055182352662086,0.301917046308517,-0.060842961072922));
res += mul(Get(s2,dx,-dy), float4x4(-0.023329090327024,0.167798385024071,0.171093717217445,-0.237662971019745,0.024907309561968,-0.003192357718945,0.112206481397152,0.283764213323593,0.110476821660995,-0.057824887335300,-0.116485096514225,0.198502406477928,0.010718276724219,-0.096057817339897,-0.056336261332035,-0.159877836704254));
res += mul(Get(s2,dx,0), float4x4(-0.285165607929230,-0.230470821261406,-0.109623990952969,-0.217373386025429,-0.000554997997824,-0.407228767871857,-0.121450513601303,0.155625745654106,0.178085371851921,0.066838830709457,0.082327984273434,0.051858656108379,0.278244853019714,0.144204378128052,0.159671545028687,0.106461837887764));
res += mul(Get(s2,dx,dy), float4x4(-0.076400130987167,-0.167032063007355,0.003445402719080,0.220218390226364,-0.026460509747267,-0.032141260802746,0.005463381297886,0.162488847970963,0.067564658820629,0.007183309178799,0.016697039827704,-0.032577123492956,-0.031566478312016,-0.073298476636410,0.000890816270839,-0.044771846383810));
res = max(float4(0, 0, 0, 0), res) + float4(0.166223794221878,0.082755461335182,-0.172763317823410,0.025329690426588) * min(float4(0, 0, 0, 0), res);
return res;
}