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
res += mul(Get(s0,-dx,-dy), float4x4(-0.035225890576839,0.048047494143248,0.108853951096535,0.003822328057140,0.031936712563038,0.000146063306602,0.180863752961159,-0.013940765522420,0.033193923532963,-0.139809012413025,-0.051120225340128,-0.053141072392464,-0.021861486136913,-0.001428088638932,-0.050674635916948,-0.032036080956459));
res += mul(Get(s0,-dx,0), float4x4(-0.016337741166353,0.098641827702522,-0.034521821886301,0.062881372869015,0.159233897924423,0.071100533008575,0.139936909079552,-0.070864707231522,0.065125852823257,-0.033420670777559,0.108275674283504,-0.048365391790867,0.029283456504345,-0.060998164117336,-0.069664649665356,0.020968843251467));
res += mul(Get(s0,-dx,dy), float4x4(-0.051438432186842,0.044136773794889,0.032522603869438,0.006351904943585,0.169086232781410,0.018045000731945,0.175982207059860,-0.075052179396152,0.089347086846828,0.036134287714958,0.005602085962892,-0.089032091200352,0.008089295588434,-0.104904495179653,-0.098158918321133,-0.039786379784346));
res += mul(Get(s0,0,-dy), float4x4(-0.041399192065001,-0.033119041472673,0.110557235777378,-0.000083047205408,0.051391635090113,0.064006507396698,-0.065479859709740,-0.010637691244483,-0.015816198661923,-0.082617707550526,-0.104808129370213,-0.051427122205496,-0.018398053944111,0.005349754821509,-0.036769069731236,-0.085631661117077));
res += mul(Get(s0,0,0), float4x4(-0.091519042849541,-0.026038672775030,0.013162515126169,-0.026209684088826,0.050346288830042,0.040454082190990,-0.114453010261059,-0.021486166864634,0.056559603661299,-0.022143714129925,-0.100925549864769,-0.100486248731613,0.000902373401914,-0.041752517223358,-0.008689736947417,-0.026074217632413));
res += mul(Get(s0,0,dy), float4x4(-0.084532424807549,0.015160308219492,0.062655806541443,-0.085418470203876,0.262863427400589,0.104180052876472,-0.011212332174182,-0.036998670548201,0.068347282707691,-0.003530304180458,-0.124024800956249,-0.002073604147881,0.048904772847891,-0.043883487582207,-0.042680736631155,-0.069623425602913));
res += mul(Get(s0,dx,-dy), float4x4(-0.042688548564911,0.070222452282906,0.005846444983035,-0.131246417760849,0.073089413344860,0.056955806910992,-0.017834346741438,-0.010649484582245,-0.011658656410873,-0.059577956795692,-0.097960561513901,-0.058746624737978,-0.003037778660655,0.040513686835766,-0.086002796888351,-0.097056485712528));
res += mul(Get(s0,dx,0), float4x4(-0.066763125360012,0.093261986970901,0.037525188177824,-0.074527658522129,0.052029196172953,0.082847453653812,-0.028466999530792,-0.064624041318893,0.020040998235345,0.013697042129934,-0.071213081479073,-0.044841844588518,-0.077810287475586,-0.017476560547948,-0.053091824054718,-0.051076363772154));
res += mul(Get(s0,dx,dy), float4x4(-0.035711213946342,0.113046601414680,0.140448778867722,-0.039625454694033,0.079747952520847,0.059517409652472,-0.025477292016149,-0.023740395903587,0.093552805483341,-0.059223894029856,-0.050122790038586,-0.056618846952915,0.020103737711906,0.000184045231435,-0.093331776559353,-0.071024499833584));
res += mul(Get(s1,-dx,-dy), float4x4(0.008121175691485,0.033592838793993,-0.012562553398311,0.047537438571453,-0.087106958031654,0.016625365242362,-0.031705152243376,0.018645243719220,0.027110552415252,0.021957466378808,0.034987170249224,-0.015366241335869,-0.105217061936855,-0.047123435884714,-0.124624803662300,-0.086840689182281));
res += mul(Get(s1,-dx,0), float4x4(-0.139832809567451,0.045475713908672,-0.027256188914180,0.035091400146484,0.090609006583691,0.043933358043432,-0.006991228554398,-0.040684923529625,0.006375076714903,0.040795397013426,0.099008165299892,0.036698188632727,-0.046343758702278,-0.087966807186604,-0.007581049110740,-0.001314074033871));
res += mul(Get(s1,-dx,dy), float4x4(-0.077046290040016,0.004267822485417,-0.038602177053690,-0.044964712113142,0.038452979177237,0.044176694005728,-0.076274536550045,0.083853565156460,-0.016407582908869,0.019136257469654,-0.012210750021040,0.078599281609058,-0.046746201813221,-0.119147308170795,0.110673390328884,-0.029302351176739));
res += mul(Get(s1,0,-dy), float4x4(0.032898407429457,-0.078729473054409,0.045701000839472,0.056122671812773,0.028896829113364,0.070325657725334,-0.066171355545521,0.015123386867344,0.011974498629570,-0.026511419564486,0.086962677538395,-0.021983038634062,-0.147341609001160,0.117524139583111,-0.142052382230759,-0.060648817569017));
res += mul(Get(s1,0,0), float4x4(-0.054952953010798,-0.033446501940489,-0.020442511886358,0.022951915860176,0.179882138967514,-0.061326045542955,-0.053855758160353,0.050377845764160,-0.003191081341356,0.006026029586792,0.137693122029305,0.024926928803325,0.108636491000652,0.156974241137505,0.069808669388294,-0.102657280862331));
res += mul(Get(s1,0,dy), float4x4(-0.059854939579964,0.016634529456496,-0.036008201539516,-0.027535749599338,-0.104912161827087,-0.105997912585735,-0.080576449632645,0.229348361492157,-0.005851144902408,-0.006259240675718,0.025156361982226,0.068944722414017,0.026053087785840,-0.092744469642639,-0.000814002647530,-0.011967764236033));
res += mul(Get(s1,dx,-dy), float4x4(0.036848656833172,-0.029496464878321,0.022144889459014,-0.010687902569771,0.054759308695793,0.041122715920210,-0.008399811573327,0.092964202165604,-0.004510763101280,-0.058798447251320,0.086091160774231,0.052052684128284,-0.017903452739120,0.069872647523880,0.041222129017115,0.000141565571539));
res += mul(Get(s1,dx,0), float4x4(-0.010960048064590,-0.029327796772122,0.021818377077579,-0.014101314358413,0.005793598946184,-0.074531853199005,0.014385708607733,0.147036507725716,-0.036760084331036,-0.003991413861513,0.116534031927586,0.030425244942307,-0.076808951795101,0.128858923912048,0.047695532441139,0.093114852905273));
res += mul(Get(s1,dx,dy), float4x4(-0.022616831585765,-0.001894207089208,0.003843614365906,-0.019354699179530,0.008462585508823,-0.068923108279705,-0.014428803697228,0.061792790889740,-0.038682136684656,0.020949693396688,0.053976014256477,0.061526760458946,-0.042309977114201,0.012409580871463,-0.016546702012420,-0.042696394026279));
res += mul(Get(s2,-dx,-dy), float4x4(0.031629595905542,-0.021891521289945,0.027020968496799,0.040721766650677,-0.021166862919927,-0.011463296599686,0.021741095930338,-0.024862904101610,-0.014910273253918,-0.097828261554241,-0.070257671177387,0.072189666330814,-0.039538282901049,0.049733348190784,-0.015423417091370,0.039928253740072));
res += mul(Get(s2,-dx,0), float4x4(0.075217336416245,-0.038616359233856,0.034259539097548,0.013431985862553,-0.003616770030931,0.027437912300229,0.018096398562193,-0.007835066877306,-0.011083320714533,-0.019808251410723,-0.061475485563278,-0.009594728238881,-0.037515442818403,0.044545792043209,0.012553106062114,0.098946236073971));
res += mul(Get(s2,-dx,dy), float4x4(-0.046572841703892,0.024362884461880,-0.089188665151596,0.045783702284098,-0.049391467124224,-0.010708112269640,-0.030725680291653,-0.012826174497604,0.018630981445313,0.030777500942349,-0.059727426618338,-0.120212398469448,0.027032805606723,0.062585197389126,0.004516032524407,0.066777199506760));
res += mul(Get(s2,0,-dy), float4x4(-0.085981197655201,-0.043436806648970,-0.008318781852722,0.047068726271391,0.044359151273966,-0.038179956376553,-0.049287937581539,0.033329125493765,0.026756945997477,-0.028835849836469,-0.035378411412239,0.064988076686859,-0.059260740876198,0.009251019917428,0.004684535786510,0.139706701040268));
res += mul(Get(s2,0,0), float4x4(-0.027474299073219,-0.047933660447598,-0.003889050800353,0.089709505438805,0.109958596527576,-0.028759526088834,0.031104959547520,0.059300713241100,-0.000852513883729,-0.075538828969002,0.016976593062282,0.075655952095985,-0.084619149565697,0.041982334107161,-0.007507017813623,0.092103533446789));
res += mul(Get(s2,0,dy), float4x4(-0.065355561673641,0.013538722880185,-0.052472356706858,0.011574261821806,0.115379966795444,-0.060128740966320,0.061774794012308,0.013804841786623,0.012816016562283,-0.097280599176884,0.042375646531582,0.088739052414894,-0.034664552658796,0.056013319641352,-0.038080908358097,-0.083399921655655));
res += mul(Get(s2,dx,-dy), float4x4(-0.042593404650688,-0.019167296588421,-0.035855025053024,-0.097971469163895,0.004348480608314,-0.059021510183811,0.024507287889719,0.041871111840010,0.113449834287167,0.028802033513784,0.011968365870416,-0.142586976289749,-0.010776436887681,0.004481067880988,0.010926391929388,0.014550185762346));
res += mul(Get(s2,dx,0), float4x4(0.003794381627813,-0.054840002208948,-0.008741480298340,-0.029179349541664,-0.018624931573868,-0.017545377835631,0.032169010490179,0.036928623914719,0.069863744080067,-0.013143277727067,0.058676876127720,0.001863636076450,-0.054640784859657,-0.003734344150871,0.031668048352003,-0.016603378579021));
res += mul(Get(s2,dx,dy), float4x4(-0.066368073225021,-0.045093555003405,-0.062646657228470,0.000939635559916,0.004143613390625,-0.004922601860017,0.064959757030010,-0.000993101624772,0.058081012219191,-0.056120533496141,0.057575713843107,0.085202336311340,-0.050965566188097,-0.000411683518905,0.037278093397617,-0.098254978656769));
res += mul(Get(s3,-dx,-dy), float4x4(-0.041025504469872,0.066295512020588,0.101528100669384,0.011837416328490,-0.001221839687787,0.007492336444557,-0.011580185964704,-0.014179210178554,0.022076020017266,0.011463657021523,0.008659106679261,-0.022914793342352,0.088431380689144,-0.067922607064247,-0.001746298512444,-0.054192710667849));
res += mul(Get(s3,-dx,0), float4x4(0.088239774107933,0.047391541302204,0.041147649288177,-0.022022945806384,0.006762940436602,-0.012729708105326,-0.033792424947023,-0.035075165331364,-0.052638355642557,0.032536078244448,0.038059059530497,-0.010361448861659,0.059265881776810,-0.015352507121861,0.016964521259069,0.003515777178109));
res += mul(Get(s3,-dx,dy), float4x4(0.071826808154583,-0.056919422000647,-0.041490375995636,0.032992701977491,0.041378166526556,-0.013144049793482,0.015875434502959,-0.026905724778771,0.001017219969071,0.010470094159245,0.011241541244090,-0.028306104242802,-0.028222583234310,0.022212285548449,0.013850827701390,0.147509932518005));
res += mul(Get(s3,0,-dy), float4x4(0.021067047491670,0.110771521925926,0.041720449924469,0.056715384125710,-0.001532371039502,-0.034640986472368,-0.085427239537239,-0.004836407024413,-0.030251448974013,0.025415455922484,0.005730783101171,0.064264833927155,-0.027845425531268,-0.127853259444237,-0.103615768253803,0.028117014095187));
res += mul(Get(s3,0,0), float4x4(-0.018288528546691,0.040697176009417,0.025103200227022,-0.000329152797349,-0.036680083721876,-0.046497616916895,-0.034839756786823,0.014813129790127,-0.058151014149189,0.026276456192136,0.045413225889206,-0.026816852390766,0.106751181185246,-0.001723207300529,-0.009514181874692,0.001099028391764));
res += mul(Get(s3,0,dy), float4x4(-0.043493513017893,0.026154629886150,-0.003582052187994,-0.088845953345299,-0.006371924653649,0.043160304427147,-0.011199903674424,-0.016343923285604,-0.072636455297470,0.017636649310589,-0.018902258947492,-0.089588075876236,0.091312631964684,0.015625359490514,-0.029127718880773,0.157179608941078));
res += mul(Get(s3,dx,-dy), float4x4(0.027469625696540,0.030990594998002,0.044959545135498,0.029356144368649,-0.016266519203782,-0.021105948835611,-0.086077392101288,-0.085718497633934,-0.001067429198883,0.019549759104848,0.013303701765835,0.035067595541477,0.001910409657285,-0.034457553178072,0.020838795229793,-0.027085928246379));
res += mul(Get(s3,dx,0), float4x4(-0.010132623836398,-0.003581948112696,0.056745707988739,0.025922343134880,-0.038018990308046,-0.008515571244061,-0.064092949032784,-0.060445405542850,-0.011181264184415,-0.009069631807506,0.070037528872490,-0.026821864768863,-0.002997085917741,0.023913675919175,0.025769116356969,-0.064083881676197));
res += mul(Get(s3,dx,dy), float4x4(-0.030550027266145,0.018340149894357,-0.000515723659191,-0.015087722800672,0.046076357364655,0.084468103945255,-0.039147656410933,-0.130249768495560,-0.056579180061817,-0.042594220489264,0.021410817280412,-0.052820432931185,0.100856110453606,-0.010974020697176,0.002026262693107,0.024000948294997));
return max(float4(0,0,0,0), res);
}
