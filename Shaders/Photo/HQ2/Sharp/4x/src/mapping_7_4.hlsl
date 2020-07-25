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
res += mul(Get(s0,-dx,-dy), float4x4(0.056846670806408,0.102641217410564,-0.132924482226372,0.101363711059093,-0.016285723075271,-0.073443084955215,0.000489182712045,-0.024369766935706,0.084750376641750,-0.066568665206432,0.007426173891872,-0.063224092125893,0.020936785265803,-0.047110598534346,-0.047934319823980,0.056723017245531));
res += mul(Get(s0,-dx,0), float4x4(0.185043692588806,0.172444686293602,-0.050264876335859,0.078040443360806,-0.013875194825232,-0.054007150232792,-0.045874875038862,0.059827335178852,-0.096456803381443,-0.013530069962144,-0.027054948732257,-0.044860381633043,0.144249573349953,-0.042636610567570,0.019141726195812,0.024837113916874));
res += mul(Get(s0,-dx,dy), float4x4(-0.005102504044771,0.093018651008606,-0.008637228049338,0.016300972551107,-0.001883454853669,0.084168478846550,0.051958471536636,-0.104744546115398,-0.116652630269527,-0.057932466268539,-0.002599928993732,-0.145027637481689,-0.104647591710091,-0.008437600918114,0.032164197415113,0.009757527150214));
res += mul(Get(s0,0,-dy), float4x4(0.001594764995389,0.014327868819237,0.016286870464683,0.020686341449618,-0.062485836446285,0.028732599690557,-0.009198043495417,-0.030954310670495,0.042130932211876,-0.052288889884949,0.091906897723675,-0.038341153413057,-0.041002567857504,0.026320403441787,0.088268741965294,-0.062997028231621));
res += mul(Get(s0,0,0), float4x4(0.000419165589847,-0.036573961377144,-0.014824192970991,0.030914925038815,-0.115094684064388,0.022066919133067,-0.167338564991951,0.057723399251699,0.030085356906056,-0.038845211267471,-0.084438070654869,-0.063907057046890,0.035218462347984,0.019120048731565,0.006205089855939,-0.062045667320490));
res += mul(Get(s0,0,dy), float4x4(0.070767186582088,-0.038202732801437,0.073617778718472,-0.001548279076815,0.041117683053017,0.013716979883611,0.032286331057549,-0.066877938807011,-0.064634785056114,0.019464336335659,-0.001717930543236,-0.030684357509017,0.129842251539230,0.007957314141095,-0.120122298598289,0.108456946909428));
res += mul(Get(s0,dx,-dy), float4x4(-0.095184572041035,-0.009169815108180,-0.039364576339722,-0.061195928603411,-0.058536801487207,0.083650849759579,0.095554143190384,-0.014572177082300,-0.064050599932671,-0.130692198872566,0.039607711136341,-0.007151372730732,0.149065777659416,-0.073535509407520,0.064338013529778,-0.034174669533968));
res += mul(Get(s0,dx,0), float4x4(-0.058529332280159,-0.061468742787838,-0.019442873075604,-0.115392155945301,0.011308675631881,0.007939285598695,0.182735383510590,-0.001092849066481,0.034889679402113,-0.112767308950424,0.111972674727440,-0.104249432682991,-0.049386061728001,0.010362617671490,-0.023616122081876,0.034241378307343));
res += mul(Get(s0,dx,dy), float4x4(-0.087140426039696,-0.089504115283489,-0.017661893740296,-0.012257809750736,-0.002419797703624,0.137866199016571,0.074140273034573,-0.044935870915651,0.085506170988083,0.006206464022398,0.051308490335941,-0.061214730143547,-0.136536210775375,-0.072359375655651,-0.046229355037212,0.071099400520325));
res += mul(Get(s1,-dx,-dy), float4x4(-0.111139006912708,-0.075651220977306,-0.015266489237547,-0.012540818192065,0.030305596068501,0.030427562072873,-0.008585548959672,-0.006852486636490,-0.039345167577267,-0.027339501306415,-0.065592378377914,-0.040444687008858,-0.054075740277767,-0.071988470852375,-0.066887669265270,0.089029140770435));
res += mul(Get(s1,-dx,0), float4x4(0.047780618071556,-0.008343239314854,-0.062259189784527,0.047367736697197,-0.077317737042904,0.005219735205173,0.059972047805786,-0.035742409527302,0.024556318297982,0.064076729118824,-0.039143633097410,0.005672197323292,0.074006706476212,-0.039335940033197,0.040015045553446,0.025506805628538));
res += mul(Get(s1,-dx,dy), float4x4(0.004598151892424,0.049311622977257,-0.014369390904903,0.079096779227257,-0.023524798452854,-0.031742062419653,0.014984791167080,-0.000444711506134,-0.049946412444115,0.028004353865981,-0.033987931907177,0.053800299763680,-0.020069520920515,0.037991635501385,-0.005052934866399,0.055710818618536));
res += mul(Get(s1,0,-dy), float4x4(-0.056169919669628,-0.077049501240253,0.088434234261513,0.080665484070778,-0.029159110039473,0.075537219643593,0.013615765608847,0.029210897162557,-0.056344263255596,-0.024134425446391,0.136875733733177,0.009621687233448,-0.083881147205830,0.099647447466850,-0.039117000997066,0.052452653646469));
res += mul(Get(s1,0,0), float4x4(0.092694364488125,-0.063249416649342,0.035779073834419,-0.011066816747189,-0.087173298001289,-0.037468805909157,0.019016530364752,0.068759329617023,0.111735932528973,-0.025063136592507,0.141153082251549,0.079712577164173,-0.144807383418083,0.036156494170427,-0.012189883738756,0.083551228046417));
res += mul(Get(s1,0,dy), float4x4(-0.089891947805882,-0.004634989425540,0.005259321536869,-0.043814510107040,-0.007363659795374,0.067403033375740,-0.060644157230854,-0.023451065644622,-0.053675871342421,-0.030331315472722,0.016619779169559,0.030990719795227,0.040787745267153,0.050190873444080,0.032815486192703,0.062685400247574));
res += mul(Get(s1,dx,-dy), float4x4(-0.002942480612546,-0.044018626213074,0.021957013756037,-0.014744487591088,-0.060807514935732,-0.049937877804041,-0.028242679312825,0.041407521814108,0.000852662255056,-0.056456841528416,0.037564042955637,-0.014676787890494,-0.009055636823177,0.071430690586567,-0.054419744759798,-0.077818274497986));
res += mul(Get(s1,dx,0), float4x4(0.044357020407915,-0.023831149563193,0.089290574193001,0.015161975286901,0.019674954935908,0.055672701448202,0.095545217394829,-0.056222502142191,0.086604617536068,-0.133115381002426,0.021713282912970,-0.130789920687675,-0.046005181968212,-0.000008265624274,0.029185341671109,-0.016288420185447));
res += mul(Get(s1,dx,dy), float4x4(0.093663446605206,-0.108394227921963,0.002379616256803,0.003338151844218,-0.119971983134747,0.030027531087399,-0.032755423337221,-0.009370682761073,0.061403602361679,-0.006527656223625,0.035164754837751,0.032846353948116,0.003344381460920,-0.008706843480468,0.112710289657116,-0.061403065919876));
res += mul(Get(s2,-dx,-dy), float4x4(-0.070901773869991,0.067979283630848,-0.019740529358387,0.048215527087450,0.056748181581497,-0.072236776351929,-0.179450824856758,0.071310445666313,-0.048357874155045,0.030935185030103,-0.017916359007359,-0.083612978458405,0.018061120063066,-0.044341523200274,-0.047973070293665,0.009053714573383));
res += mul(Get(s2,-dx,0), float4x4(-0.057412981987000,0.058684490621090,-0.044027343392372,-0.037251245230436,0.016899080947042,-0.008404251188040,0.050033833831549,0.112759739160538,-0.146297737956047,-0.018364684656262,0.007171809207648,-0.101732708513737,-0.004659408237785,-0.014017365872860,0.106810584664345,0.008173922076821));
res += mul(Get(s2,-dx,dy), float4x4(-0.065072342753410,0.057286877185106,0.093715995550156,-0.101770795881748,0.049884755164385,-0.084695048630238,-0.030203860253096,0.053988043218851,0.010770275257528,0.035469207912683,0.075597494840622,0.049596760421991,0.044925220310688,0.053877521306276,0.098834991455078,0.071882091462612));
res += mul(Get(s2,0,-dy), float4x4(-0.042946286499500,-0.016250690445304,0.058263935148716,0.047623418271542,0.022808626294136,-0.009550913237035,-0.119253426790237,-0.037213809788227,0.057379871606827,0.073869958519936,-0.016743039712310,-0.098631598055363,0.023297954350710,-0.011643957346678,0.053049262613058,0.099538668990135));
res += mul(Get(s2,0,0), float4x4(0.087627314031124,-0.136312365531921,-0.023049581795931,-0.175444722175598,-0.105539426207542,0.016454035416245,0.052216164767742,0.059162117540836,-0.004339393228292,-0.029779626056552,-0.029079327359796,-0.062359560281038,0.048477880656719,-0.032247338443995,0.097666956484318,-0.033091425895691));
res += mul(Get(s2,0,dy), float4x4(-0.001170712523162,0.063410080969334,-0.002002145396546,0.072850443422794,-0.041091028600931,0.063647150993347,0.169039115309715,0.040166623890400,0.120142079889774,0.006109409965575,0.020495280623436,0.069607108831406,0.011727098375559,-0.059945449233055,-0.035211332142353,-0.133293837308884));
res += mul(Get(s2,dx,-dy), float4x4(0.003468749346212,-0.135105714201927,-0.011098138988018,-0.034652698785067,-0.020026553422213,-0.019701292738318,-0.152985721826553,-0.038686752319336,0.039465021342039,-0.007334986701608,-0.004775000270456,0.003083172952756,-0.123909942805767,0.103522062301636,0.035590127110481,0.030548872426152));
res += mul(Get(s2,dx,0), float4x4(0.026081634685397,-0.047608841210604,0.004090129863471,0.002986141713336,0.039817892014980,-0.021127242594957,-0.120494715869427,0.006797107867897,-0.064245909452438,0.050450339913368,0.128506332635880,-0.069630973041058,-0.068006418645382,-0.057561185210943,0.005719777196646,-0.101690098643303));
res += mul(Get(s2,dx,dy), float4x4(-0.009747231379151,-0.093757301568985,0.027407620102167,-0.112481556832790,-0.086854010820389,-0.034287109971046,0.127305880188942,0.038893800228834,0.074240244925022,-0.006463695783168,-0.075471572577953,-0.014117215760052,-0.006233263760805,-0.144940987229347,-0.049444373697042,0.044932674616575));
res += mul(Get(s3,-dx,-dy), float4x4(0.039583608508110,0.120983198285103,-0.023944370448589,-0.095324285328388,-0.091076083481312,-0.011793888173997,0.045785944908857,-0.097032375633717,0.025143058970571,0.043381605297327,-0.025275250896811,0.065782845020294,-0.070441462099552,-0.022648077458143,-0.059589985758066,-0.071241378784180));
res += mul(Get(s3,-dx,0), float4x4(-0.055994749069214,-0.012004232034087,0.033042524009943,-0.026596922427416,0.158141016960144,0.026460081338882,0.059995114803314,-0.107196688652039,-0.100108191370964,0.011691788211465,0.047370918095112,0.005536238197237,-0.064139522612095,-0.054430391639471,-0.038105834275484,0.054688122123480));
res += mul(Get(s3,-dx,dy), float4x4(0.067611038684845,-0.020480761304498,0.059019073843956,0.080604299902916,-0.012398565188050,0.093229472637177,0.035019993782043,0.104682117700577,0.026347868144512,0.070879660546780,0.005325009580702,0.085797555744648,0.023092905059457,-0.030867805704474,0.001506097381935,0.055554140359163));
res += mul(Get(s3,0,-dy), float4x4(-0.116539187729359,0.013120960444212,0.051439348608255,0.041550651192665,0.034298632293940,0.045090030878782,-0.015054128132761,0.010052888654172,0.025121511891484,-0.045185741037130,-0.060936588793993,0.029890939593315,0.061808392405510,0.071483880281448,0.021443765610456,-0.115932337939739));
res += mul(Get(s3,0,0), float4x4(0.048085588961840,-0.073922194540501,-0.018329190090299,0.002269026124850,-0.046354573220015,0.115629836916924,-0.121531061828136,0.067297197878361,-0.008679063059390,0.011147133074701,-0.031362455338240,-0.036674443632364,0.003429540432990,0.011565932072699,-0.051842663437128,0.011634252965450));
res += mul(Get(s3,0,dy), float4x4(-0.109733954071999,0.034509442746639,-0.096378892660141,0.067289054393768,0.132676646113396,0.003118922933936,-0.050876606255770,0.185023456811905,-0.077029466629028,-0.030705127865076,-0.046651218086481,-0.031834900379181,-0.014343044720590,-0.075992085039616,0.054836258292198,-0.085212722420692));
res += mul(Get(s3,dx,-dy), float4x4(-0.066300585865974,-0.142919570207596,-0.026697866618633,-0.180448353290558,0.058398272842169,-0.021994128823280,0.087409965693951,-0.024390725418925,0.011182656511664,0.099277608096600,0.035705398768187,-0.035992875695229,-0.018357073888183,-0.044870793819427,0.036994215101004,0.093703933060169));
res += mul(Get(s3,dx,0), float4x4(-0.138367131352425,-0.026548162102699,0.080551281571388,-0.106599472463131,0.040002670139074,-0.049312971532345,-0.134818434715271,0.022907178848982,0.046401780098677,0.000020248658984,-0.089024953544140,0.047171354293823,0.108626812696457,0.023346843197942,-0.050279501825571,-0.066403038799763));
res += mul(Get(s3,dx,dy), float4x4(-0.180951029062271,-0.031754761934280,-0.027830842882395,-0.252855718135834,-0.006268793717027,-0.098820768296719,-0.085986100137234,-0.007290192879736,0.013681317679584,0.089499518275261,-0.032454762607813,-0.018052935600281,0.018902566283941,-0.013030874542892,0.101990438997746,-0.139268830418587));
res = max(float4(0,0,0,0), res);
return res;
}
