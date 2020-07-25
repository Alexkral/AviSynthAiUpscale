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
res += mul(Get(s0,-dx,-dy), float4x4(0.106863982975483,0.039103221148252,0.056571695953608,0.261625587940216,-0.131923690438271,-0.102260403335094,0.082223571836948,0.029607636854053,-0.120296664535999,-0.221074655652046,-0.034284915775061,-0.039731197059155,0.110566139221191,0.030045723542571,0.212126925587654,-0.013763050548732));
res += mul(Get(s0,-dx,0), float4x4(0.003564881859347,0.189831972122192,0.045468334108591,0.045663710683584,0.030543310567737,-0.153275996446609,-0.114594750106335,-0.239857837557793,0.006326482165605,-0.186762437224388,-0.015364735387266,-0.012249854393303,-0.000818861415610,-0.053487885743380,-0.019800499081612,-0.181282594799995));
res += mul(Get(s0,-dx,dy), float4x4(-0.092920325696468,0.115617476403713,-0.098552823066711,0.065219238400459,0.051214002072811,-0.027248451486230,0.004124614410102,-0.081332996487617,0.087151706218719,-0.020231200382113,0.193411126732826,0.085648253560066,0.018601113930345,-0.112445905804634,0.041445609182119,-0.096002198755741));
res += mul(Get(s0,0,-dy), float4x4(-0.006357875186950,-0.067857883870602,0.045010343194008,-0.062370844185352,0.096767067909241,0.071549706161022,-0.125744864344597,-0.043037880212069,-0.101626537740231,0.022978385910392,0.027495348826051,-0.100106894969940,-0.037402987480164,-0.341634958982468,0.110742911696434,0.011632076464593));
res += mul(Get(s0,0,0), float4x4(-0.016843188554049,-0.125586107373238,-0.033970277756453,0.169339150190353,0.020190771669149,-0.007587934844196,-0.155263021588326,0.063475728034973,0.033850155770779,0.066862344741821,0.049947470426559,-0.270966678857803,0.156507447361946,0.077382504940033,-0.118915759027004,-0.062067352235317));
res += mul(Get(s0,0,dy), float4x4(-0.211255431175232,-0.106285996735096,-0.026186361908913,-0.014937127940357,0.075365066528320,0.061371292918921,0.038410384207964,-0.026691980659962,0.047662772238255,-0.048601217567921,0.134814962744713,0.087146446108818,-0.163077741861343,-0.066928327083588,-0.236011222004890,0.111794762313366));
res += mul(Get(s0,dx,-dy), float4x4(-0.132964581251144,-0.087055332958698,-0.005422152113169,-0.175104036927223,0.124713607132435,0.010930889286101,0.153403744101524,-0.161795705556870,-0.057481095194817,0.028185475617647,0.317962080240250,-0.008859621360898,-0.145905956625938,-0.052411325275898,-0.028091356158257,0.013568360358477));
res += mul(Get(s0,dx,0), float4x4(0.033724796026945,-0.142778575420380,0.092453829944134,-0.173271790146828,-0.238614633679390,-0.030148323625326,0.006577389780432,0.004453013185412,-0.064252056181431,-0.195689186453819,0.154365450143814,0.198073610663414,0.120530262589455,0.145070031285286,0.148945778608322,-0.068129576742649));
res += mul(Get(s0,dx,dy), float4x4(-0.025360740721226,0.022155983373523,-0.013353389687836,-0.060638796538115,0.121723547577858,-0.141717806458473,-0.086225494742393,0.220721065998077,-0.127537220716476,0.177375495433807,0.094268284738064,-0.106964789330959,-0.151353761553764,0.034573588520288,-0.092663392424583,0.115512602031231));
res += mul(Get(s1,-dx,-dy), float4x4(-0.181352272629738,0.204689964652061,-0.047675460577011,-0.209179684519768,-0.059607859700918,-0.137892067432404,-0.023457733914256,-0.015954462811351,0.110848665237427,-0.253366500139236,-0.182915195822716,-0.102669224143028,0.103067912161350,0.089568145573139,-0.010629081167281,0.041297528892756));
res += mul(Get(s1,-dx,0), float4x4(0.085266061127186,0.047457233071327,-0.120454169809818,0.003885341575369,-0.168558865785599,0.050801895558834,0.126449048519135,-0.081647664308548,0.056956470012665,0.035566404461861,-0.056897290050983,-0.003172613214701,-0.181084811687469,0.088510029017925,0.027558669447899,0.077306054532528));
res += mul(Get(s1,-dx,dy), float4x4(0.062193322926760,0.101155996322632,0.071347713470459,0.060245081782341,0.000511564372573,0.034004263579845,-0.115899711847305,-0.100200511515141,-0.093759268522263,-0.059579208493233,0.068859450519085,0.170982271432877,0.056744571775198,-0.161296978592873,0.056820642203093,0.045116554945707));
res += mul(Get(s1,0,-dy), float4x4(-0.007065047975630,0.168750673532486,-0.040859520435333,0.073472850024700,-0.077527076005936,-0.166734069585800,-0.034821886569262,-0.039301447570324,-0.028119476512074,-0.079147592186928,0.099798046052456,0.051951080560684,0.120198279619217,-0.180202901363373,-0.111898526549339,-0.165359809994698));
res += mul(Get(s1,0,0), float4x4(-0.073907077312469,0.094799906015396,-0.132933869957924,0.076204776763916,0.031144995242357,0.079483367502689,0.050663027912378,-0.075575441122055,-0.020061835646629,0.094407990574837,-0.013944135047495,-0.098562560975552,-0.047868672758341,0.044593997299671,-0.011329260654747,-0.033071171492338));
res += mul(Get(s1,0,dy), float4x4(-0.097635641694069,-0.008036804385483,-0.040207084268332,-0.012959236279130,-0.233502894639969,0.049024924635887,0.051585618406534,-0.026507426053286,-0.145922794938087,0.067619606852531,0.004796128254384,0.070675343275070,-0.084418661892414,-0.123139709234238,-0.103617936372757,-0.150384515523911));
res += mul(Get(s1,dx,-dy), float4x4(-0.075323902070522,-0.003304399782792,-0.213176891207695,0.109716139733791,-0.086263284087181,0.035490456968546,0.038811180740595,0.138422742486000,-0.014876414090395,-0.054295100271702,-0.033184535801411,0.130534768104553,0.042315647006035,0.015880055725574,0.020409541204572,-0.135506033897400));
res += mul(Get(s1,dx,0), float4x4(-0.006501091644168,-0.057004202157259,-0.072092510759830,0.005120738875121,0.047335296869278,0.052589796483517,0.031795434653759,0.122784309089184,0.031457118690014,0.267150610685349,-0.175305709242821,-0.005439369007945,-0.026113141328096,-0.029310464859009,0.027355559170246,0.076750449836254));
res += mul(Get(s1,dx,dy), float4x4(0.056603346019983,-0.087069623172283,-0.005795547738671,-0.207521706819534,-0.101286388933659,-0.165845334529877,0.003535197582096,0.149563163518906,0.128968298435211,-0.107742868363857,-0.061068881303072,-0.084191463887691,-0.046333882957697,0.109514079988003,-0.037998177111149,-0.021785780787468));
res += mul(Get(s2,-dx,-dy), float4x4(-0.036465175449848,0.034788094460964,0.189575403928757,0.021457713097334,-0.114166714251041,0.021459769457579,-0.055473081767559,0.002342037158087,-0.150375828146935,0.299935340881348,-0.014212731271982,0.002259892411530,-0.128489911556244,-0.193746834993362,-0.090559363365173,-0.060084793716669));
res += mul(Get(s2,-dx,0), float4x4(-0.047742608934641,-0.093499943614006,0.114883631467819,-0.072322614490986,0.054117329418659,-0.034546621143818,0.045222159475088,-0.043812423944473,-0.027552822604775,0.031418956816196,0.065646447241306,0.029967375099659,0.043208532035351,0.038314089179039,-0.013154219835997,-0.064098849892616));
res += mul(Get(s2,-dx,dy), float4x4(-0.222046181559563,0.008397406898439,0.135036736726761,0.084382325410843,-0.032654449343681,-0.138982072472572,0.089966490864754,0.012236523441970,-0.109657615423203,-0.037271719425917,-0.019712219014764,0.142369836568832,0.032013028860092,0.178868219256401,-0.162074342370033,-0.040593847632408));
res += mul(Get(s2,0,-dy), float4x4(-0.115920692682266,-0.142870187759399,0.076588079333305,-0.094096437096596,-0.026782959699631,-0.063271023333073,-0.080684766173363,-0.047296799719334,0.023136513307691,-0.055785089731216,-0.062744513154030,0.110776662826538,-0.097170569002628,-0.011349429376423,0.105709962546825,-0.242735579609871));
res += mul(Get(s2,0,0), float4x4(0.046076882630587,0.013744452968240,0.169465452432632,-0.201425731182098,0.139068543910980,-0.071960784494877,-0.209420397877693,0.122052483260632,-0.020740870386362,0.161740481853485,-0.056550640612841,-0.104467645287514,-0.022320112213492,0.122191511094570,-0.028969831764698,0.071003213524818));
res += mul(Get(s2,0,dy), float4x4(0.001808288972825,-0.227593183517456,0.033910050988197,0.026064261794090,0.016534160822630,-0.064550846815109,0.051323328167200,-0.158475533127785,-0.140106752514839,-0.160847812891006,-0.046799607574940,-0.133265122771263,-0.064510717988014,0.134512498974800,-0.105630472302437,-0.141260996460915));
res += mul(Get(s2,dx,-dy), float4x4(0.081130370497704,-0.060000717639923,0.049117784947157,0.035372734069824,-0.014131121337414,-0.021698147058487,0.083040297031403,-0.117253310978413,-0.061476152390242,-0.112496629357338,0.065088868141174,0.020240727812052,-0.110113523900509,-0.023051267489791,-0.072412379086018,0.131058588624001));
res += mul(Get(s2,dx,0), float4x4(-0.235830113291740,-0.088843144476414,-0.065382882952690,-0.025380954146385,-0.240424886345863,-0.024028852581978,-0.065797239542007,-0.007606420665979,0.037960376590490,-0.110044986009598,-0.074778877198696,0.226901903748512,-0.091505832970142,0.008541096001863,0.000118657859275,0.113701753318310));
res += mul(Get(s2,dx,dy), float4x4(0.179281368851662,-0.000395377981476,-0.157459586858749,0.207469388842583,-0.028095861896873,-0.069900006055832,0.082228705286980,-0.064611308276653,-0.029768448323011,-0.243902057409286,0.165782883763313,-0.114863246679306,-0.227272808551788,-0.221647903323174,0.027922242879868,-0.239140972495079));
res += mul(Get(s3,-dx,-dy), float4x4(0.038038324564695,0.192180201411247,-0.036354064941406,0.135303869843483,-0.083462834358215,-0.004768998827785,-0.082375451922417,-0.073562286794186,0.080590762197971,0.053824599832296,-0.170248270034790,-0.091942518949509,0.099416829645634,-0.225260287523270,0.004249235615134,0.259895443916321));
res += mul(Get(s3,-dx,0), float4x4(0.304628312587738,0.232252895832062,0.152741491794586,-0.109548829495907,-0.006715732160956,-0.024680657312274,-0.015039335004985,0.104733064770699,0.090471886098385,-0.090556517243385,0.029073188081384,0.176364913582802,0.025528591126204,0.145004510879517,-0.033602036535740,-0.001001949305646));
res += mul(Get(s3,-dx,dy), float4x4(0.033194325864315,-0.087069422006607,-0.047086995095015,-0.129380866885185,-0.233881264925003,-0.047362901270390,-0.160785496234894,0.047901283949614,-0.057125687599182,-0.052329160273075,-0.258353561162949,-0.045183185487986,0.010763972066343,-0.018726184964180,-0.118304602801800,0.093144223093987));
res += mul(Get(s3,0,-dy), float4x4(0.071285113692284,-0.022190606221557,-0.115496978163719,-0.037678327411413,0.130139991641045,-0.074564762413502,-0.072481349110603,-0.062819801270962,-0.023003099486232,-0.082046009600163,-0.035199444741011,0.109505847096443,-0.071765035390854,0.262971848249435,-0.064965158700943,-0.038607906550169));
res += mul(Get(s3,0,0), float4x4(0.157910391688347,0.003833142109215,-0.085724070668221,-0.090479180216789,0.090752638876438,0.078060276806355,-0.000419676507590,0.125629454851151,-0.048642598092556,0.063878089189529,0.006638867780566,-0.013681338168681,-0.148522049188614,0.123198084533215,0.020718831568956,-0.079558059573174));
res += mul(Get(s3,0,dy), float4x4(-0.124178208410740,0.097715958952904,0.027187194675207,-0.169689118862152,-0.051065985113382,0.346595883369446,0.116741083562374,-0.068511895835400,-0.061251025646925,0.035903315991163,0.039588566869497,-0.221069604158401,-0.021446922793984,-0.088614888489246,-0.218591764569283,0.110117152333260));
res += mul(Get(s3,dx,-dy), float4x4(-0.069100841879845,-0.047465853393078,0.060887224972248,0.067343778908253,0.280151814222336,0.075079753994942,0.127737373113632,-0.116325408220291,-0.026610957458615,-0.198434785008430,0.063989102840424,-0.175015106797218,-0.095954820513725,-0.063451737165451,-0.130068019032478,-0.084303326904774));
res += mul(Get(s3,dx,0), float4x4(-0.201071634888649,0.068648830056190,-0.001424432266504,0.092482134699821,-0.132163360714912,0.090484648942947,0.072595767676830,0.062342371791601,-0.024988038465381,-0.174697414040565,-0.129627481102943,0.092805683612823,-0.150342449545860,0.117647044360638,0.089910492300987,-0.199372202157974));
res += mul(Get(s3,dx,dy), float4x4(0.078085042536259,-0.178300276398659,-0.015365142375231,0.057603292167187,-0.134562909603119,0.204556614160538,0.039847020059824,0.036890257149935,0.073884896934032,-0.031255587935448,-0.058872051537037,-0.131220713257790,0.135795190930367,-0.146229848265648,-0.005187808070332,-0.176012411713600));
return max(float4(0,0,0,0), res);
}