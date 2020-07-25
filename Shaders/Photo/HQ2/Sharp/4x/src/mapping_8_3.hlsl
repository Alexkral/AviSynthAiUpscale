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
res += mul(Get(s0,-dx,-dy), float4x4(0.070071861147881,0.006203182041645,-0.123584099113941,0.060752458870411,0.057484734803438,0.039340905845165,-0.112659469246864,-0.020283941179514,0.079261489212513,0.023708842694759,0.151406377553940,0.028201673179865,-0.102649137377739,-0.054857611656189,0.098862960934639,-0.082193218171597));
res += mul(Get(s0,-dx,0), float4x4(0.014225595630705,-0.046339116990566,0.117878392338753,0.036181617528200,-0.024501837790012,0.025832073763013,-0.025377467274666,0.009396772831678,0.010473463684320,0.035697419196367,0.174714729189873,-0.084624476730824,-0.045242968946695,-0.016559554263949,0.043683122843504,-0.150873810052872));
res += mul(Get(s0,-dx,dy), float4x4(0.022633211687207,0.008734082803130,0.036137774586678,0.047415658831596,0.073795229196548,0.017026215791702,-0.041939765214920,-0.042074777185917,0.028473261743784,0.064163126051426,0.009955704212189,0.016166923567653,-0.091140136122704,-0.053837120532990,0.114948049187660,0.060087095946074));
res += mul(Get(s0,0,-dy), float4x4(0.133158609271049,-0.102206304669380,0.053643919527531,-0.016484538093209,-0.037705168128014,0.102412790060043,-0.032828260213137,-0.008205726742744,0.063143193721771,0.008253836072981,0.024224052205682,-0.080902792513371,-0.130574822425842,-0.055647581815720,-0.057057611644268,-0.066737599670887));
res += mul(Get(s0,0,0), float4x4(-0.011799844913185,0.044211458414793,0.079937256872654,-0.029747758060694,0.036618329584599,0.073196798563004,0.069601617753506,0.082471184432507,-0.042230047285557,0.028834350407124,0.019712923094630,-0.083767324686050,-0.061008319258690,0.081658698618412,0.009217934682965,-0.110589630901814));
res += mul(Get(s0,0,dy), float4x4(0.013569079339504,-0.123368769884109,0.127783969044685,0.120230898261070,-0.022803017869592,-0.016829548403621,-0.086494408547878,0.012823824770749,-0.051002081483603,0.018064755946398,0.074894182384014,0.075225688517094,-0.156684458255768,0.115378364920616,0.073597416281700,0.049638006836176));
res += mul(Get(s0,dx,-dy), float4x4(-0.069938383996487,0.011228016577661,-0.077406287193298,0.000318740116199,0.055444061756134,0.036363679915667,0.012560090050101,-0.026941532269120,-0.089840404689312,-0.111757621169090,0.026617538183928,0.023147821426392,-0.040970556437969,0.109434381127357,-0.102339901030064,0.014670002274215));
res += mul(Get(s0,dx,0), float4x4(0.034296829253435,-0.010793387889862,-0.080228440463543,-0.016491888090968,0.072261549532413,0.000635840231553,0.015880737453699,0.166313976049423,-0.007601793389767,0.020115172490478,0.007997810840607,-0.052445668727160,0.044520471245050,0.038936182856560,-0.076631434261799,0.155670627951622));
res += mul(Get(s0,dx,dy), float4x4(0.002671344671398,-0.112412661314011,0.006973290350288,0.084905803203583,0.034136008471251,0.016924034804106,0.067940048873425,0.080296136438847,-0.024839535355568,0.135687306523323,0.071267031133175,-0.059967257082462,-0.064570724964142,0.061805281788111,0.138409450650215,0.003096195636317));
res += mul(Get(s1,-dx,-dy), float4x4(-0.059461224824190,-0.022561989724636,-0.019492872059345,-0.028648754581809,-0.065260365605354,-0.071300260722637,0.037298262119293,0.010722462087870,0.160467788577080,-0.103611037135124,-0.037175703793764,0.044938907027245,0.047174111008644,-0.074478268623352,0.016913846135139,-0.034444056451321));
res += mul(Get(s1,-dx,0), float4x4(0.040411897003651,0.057188905775547,-0.061295427381992,0.080469839274883,-0.065050430595875,0.137868687510490,0.014937751926482,-0.037631910294294,0.013281949795783,0.086145564913750,0.095927692949772,0.016736464574933,-0.087586976587772,0.044247452169657,0.070541530847549,-0.027937887236476));
res += mul(Get(s1,-dx,dy), float4x4(0.028337968513370,-0.016477962955832,-0.038887321949005,0.005958618596196,0.033125247806311,-0.018295312300324,-0.003515247721225,-0.048507455736399,-0.039819344878197,-0.123230904340744,0.009104922413826,-0.021841099485755,0.077579483389854,-0.078107550740242,-0.016841605305672,0.047393374145031));
res += mul(Get(s1,0,-dy), float4x4(-0.051082313060760,-0.002724767895415,0.080565132200718,-0.009789858013391,0.242091983556747,-0.105222992599010,0.067756079137325,0.006388493813574,0.017812678590417,-0.034719299525023,0.042177576571703,-0.159889042377472,0.049555025994778,-0.039939578622580,0.076938405632973,0.002846624003723));
res += mul(Get(s1,0,0), float4x4(0.105912536382675,0.074697613716125,-0.174378290772438,-0.020708434283733,0.134314477443695,0.159245267510414,-0.019796691834927,0.193406656384468,-0.023973667994142,0.084810957312584,0.015733681619167,-0.087068632245064,-0.110185265541077,-0.031657461076975,0.100442610681057,-0.031866669654846));
res += mul(Get(s1,0,dy), float4x4(-0.191631615161896,0.108936972916126,-0.007008944172412,0.181394219398499,-0.111446812748909,0.018577292561531,-0.008939142338932,0.062371712177992,0.038833640515804,0.140362635254860,0.018698303028941,-0.013421525247395,-0.153059482574463,-0.127872675657272,0.141912981867790,0.080708876252174));
res += mul(Get(s1,dx,-dy), float4x4(-0.015810647979379,-0.011406718753278,-0.050319232046604,-0.048040039837360,0.032275207340717,-0.025431890040636,0.105312973260880,0.019136453047395,-0.023671420291066,-0.024257410317659,-0.007267947308719,-0.085242711007595,0.007545155007392,-0.019833570346236,0.061911627650261,0.023670973256230));
res += mul(Get(s1,dx,0), float4x4(0.002317775273696,-0.015344935469329,0.009259305894375,0.071749821305275,0.127201318740845,0.027619520202279,0.100547119975090,0.104991130530834,0.032979473471642,-0.014683457091451,0.039545767009258,-0.002018616069108,-0.029585013166070,-0.038565639406443,0.057387124747038,-0.111577063798904));
res += mul(Get(s1,dx,dy), float4x4(0.091332241892815,0.047627847641706,0.074025608599186,0.225256875157356,0.018300648778677,0.039260670542717,0.123696602880955,0.146030366420746,0.040525130927563,-0.039678946137428,-0.010969378985465,0.043110787868500,-0.009294761344790,0.003965868148953,0.057153467088938,-0.032700248062611));
res += mul(Get(s2,-dx,-dy), float4x4(0.061101768165827,-0.025984531268477,0.059926614165306,0.094418451189995,0.018766790628433,0.032550055533648,-0.067518711090088,-0.009441813454032,-0.001216916833073,-0.012791151180863,0.057312022894621,-0.027594787999988,0.123907662928104,0.097097337245941,-0.064396418631077,0.091609969735146));
res += mul(Get(s2,-dx,0), float4x4(0.015185082331300,-0.067055709660053,0.009170835837722,-0.104060940444469,0.069910675287247,-0.036295559257269,-0.045328259468079,0.048098392784595,0.013125186786056,-0.041748661547899,-0.072621338069439,-0.019664980471134,0.057525850832462,0.117413789033890,0.072135567665100,-0.079571895301342));
res += mul(Get(s2,-dx,dy), float4x4(0.079271227121353,-0.136966019868851,-0.070455834269524,0.096451424062252,-0.097532853484154,-0.136880517005920,-0.121362797915936,0.082439832389355,-0.016467591747642,0.077044315636158,-0.063281290233135,-0.069977335631847,-0.000610127404798,-0.063763849437237,-0.028044875711203,-0.140451297163963));
res += mul(Get(s2,0,-dy), float4x4(0.005083450116217,-0.161915510892868,0.030588062480092,-0.065447241067886,-0.012562160380185,0.075540781021118,-0.050235606729984,-0.093955822288990,-0.029537186026573,-0.012675915844738,-0.078476279973984,-0.064730778336525,0.055814772844315,0.043878696858883,-0.017585713416338,0.108646161854267));
res += mul(Get(s2,0,0), float4x4(-0.107186652719975,-0.080767266452312,0.032124485820532,-0.046398147940636,0.095062211155891,0.042180232703686,-0.070982694625854,0.085040092468262,0.145697027444839,0.089711263775826,-0.151712864637375,0.200230538845062,0.084141381084919,0.053689137101173,0.112472385168076,0.031535163521767));
res += mul(Get(s2,0,dy), float4x4(-0.134349510073662,0.042513318359852,-0.049024447798729,0.018249107524753,-0.011411589570343,0.022117046639323,0.090332493185997,0.036909542977810,0.043432414531708,-0.043870851397514,-0.002547403099015,0.056210145354271,0.084973543882370,0.032206419855356,0.058549530804157,0.003277064533904));
res += mul(Get(s2,dx,-dy), float4x4(0.006030939985067,-0.034333277493715,-0.003633702872321,-0.059846024960279,-0.048187248408794,0.113141737878323,-0.022841067984700,0.082791574299335,-0.097396716475487,0.118133082985878,0.067397020757198,-0.100948505103588,-0.001989200478420,0.133305802941322,0.031627673655748,-0.070552818477154));
res += mul(Get(s2,dx,0), float4x4(0.031649950891733,0.011886384338140,-0.037384260445833,-0.005934150423855,0.004761077929288,-0.033871132880449,0.050684615969658,0.168933838605881,-0.067834816873074,0.032138243317604,0.057266686111689,-0.075875960290432,0.020166033878922,0.014517832547426,-0.031342063099146,-0.025294156745076));
res += mul(Get(s2,dx,dy), float4x4(-0.044734865427017,0.166474595665932,-0.114524640142918,0.001565319253132,-0.019197791814804,-0.083672679960728,0.074145041406155,0.011292627081275,-0.036629244685173,-0.198400735855103,0.005777892656624,-0.086115233600140,-0.019346024841070,0.006101600360125,-0.019126079976559,0.052224427461624));
res += mul(Get(s3,-dx,-dy), float4x4(0.029946433380246,-0.025193551555276,-0.040601126849651,-0.048659101128578,0.025984965264797,-0.111112944781780,-0.081891179084778,-0.022415695711970,0.109528645873070,-0.082477822899818,0.078256510198116,-0.058336719870567,0.058137830346823,0.014392036944628,-0.059107683598995,-0.042428739368916));
res += mul(Get(s3,-dx,0), float4x4(0.061346743255854,-0.043653160333633,-0.098086878657341,0.026177186518908,0.014032156206667,0.086550816893578,-0.043382480740547,0.013874747790396,0.075737185776234,0.065770283341408,0.019906578585505,-0.080847613513470,-0.048538189381361,-0.040877059102058,0.041343398392200,-0.060738760977983));
res += mul(Get(s3,-dx,dy), float4x4(0.086914621293545,-0.019650282338262,-0.005134301260114,-0.003248808206990,-0.096062950789928,0.016072433441877,0.030140452086926,0.097200319170952,0.115862943232059,-0.019660279154778,0.007550565060228,-0.061978351324797,0.006514041218907,-0.056058108806610,-0.015248965471983,0.077152781188488));
res += mul(Get(s3,0,-dy), float4x4(0.072521805763245,-0.055309828370810,0.037695843726397,0.004571271594614,0.072364620864391,-0.025654571130872,-0.022149743512273,0.066990397870541,-0.019866159185767,0.046152375638485,0.024824330583215,-0.096468389034271,-0.050176303833723,0.006102045066655,-0.062587395310402,-0.014811119064689));
res += mul(Get(s3,0,0), float4x4(-0.056989111006260,0.097504213452339,0.037282783538103,0.039654906839132,-0.049602642655373,-0.017207423225045,0.057854227721691,0.095213219523430,0.125953957438469,-0.006900213658810,-0.069994188845158,0.059243157505989,0.077742971479893,0.008808589540422,0.059610724449158,0.003849268425256));
res += mul(Get(s3,0,dy), float4x4(-0.090904720127583,0.004155688919127,-0.059511188417673,0.063291184604168,-0.015955390408635,-0.056073263287544,-0.005819612648338,-0.004428415093571,0.040425721555948,-0.110972955822945,-0.013537406921387,0.037732884287834,-0.083048567175865,0.055285029113293,-0.001332288375124,0.045017339289188));
res += mul(Get(s3,dx,-dy), float4x4(0.103188529610634,0.058898776769638,-0.065659359097481,0.049354821443558,0.016325443983078,0.002058601938188,0.079107999801636,0.064668200910091,-0.104412846267223,0.020706070587039,0.093131177127361,0.040325321257114,0.006761069875211,0.153011858463287,-0.136953935027122,0.139953419566154));
res += mul(Get(s3,dx,0), float4x4(0.059448637068272,0.094494342803955,-0.002008084440604,-0.085332885384560,0.100586198270321,0.040552027523518,-0.018498545512557,0.037409346550703,-0.052299514412880,-0.045843835920095,0.079418465495110,-0.005438677966595,0.008759657852352,0.087982147932053,-0.022700073197484,0.230132266879082));
res += mul(Get(s3,dx,dy), float4x4(-0.082449704408646,-0.104524619877338,0.013604535721242,0.023144189268351,0.068994820117950,0.083454743027687,0.000084798193711,0.033910345286131,0.031931333243847,-0.237374559044838,0.047667250037193,0.036965209990740,0.148795381188393,0.048966959118843,0.047905813902617,-0.041225515305996));
res = max(float4(0,0,0,0), res);
return res;
}