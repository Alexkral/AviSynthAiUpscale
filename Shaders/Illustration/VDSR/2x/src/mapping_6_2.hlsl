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
res += mul(Get(s0,-dx,-dy), float4x4(0.040180113166571,0.002642174018547,-0.054107490926981,-0.197950780391693,0.007747476454824,-0.071413077414036,-0.143639296293259,-0.116868488490582,-0.082162551581860,-0.053414694964886,0.123588867485523,0.097769886255264,-0.080773107707500,-0.098844736814499,-0.035375732928514,-0.068271510303020));
res += mul(Get(s0,-dx,0), float4x4(-0.051312185823917,0.126101106405258,-0.085372827947140,-0.210712194442749,-0.177031919360161,-0.079726576805115,-0.021753227338195,-0.173884645104408,0.002055858029053,-0.050890475511551,0.095415562391281,-0.028838740661740,0.114067509770393,-0.096148565411568,-0.077331170439720,0.046704720705748));
res += mul(Get(s0,-dx,dy), float4x4(-0.038853786885738,0.108821220695972,0.124371223151684,-0.159770473837852,-0.044327002018690,-0.125141590833664,-0.120864346623421,-0.052275896072388,-0.017998905852437,-0.012438506819308,0.026819638907909,0.225634917616844,-0.062257342040539,0.061208546161652,-0.118258610367775,-0.153925761580467));
res += mul(Get(s0,0,-dy), float4x4(-0.011845482513309,-0.047208160161972,-0.045356478542089,-0.035215079784393,0.170070812106133,0.151694729924202,-0.001586528378539,-0.016381526365876,0.111182697117329,-0.034820109605789,-0.129050299525261,0.071218483150005,-0.111113026738167,0.141224279999733,-0.018732024356723,-0.011500180698931));
res += mul(Get(s0,0,0), float4x4(-0.046067796647549,0.077985025942326,-0.166747152805328,-0.059924829751253,0.131100773811340,-0.181974649429321,0.014768737368286,-0.003314540488645,0.055645447224379,0.099877290427685,-0.110186927020550,0.070665657520294,0.001683471025899,0.058795697987080,0.058632101863623,0.065485335886478));
res += mul(Get(s0,0,dy), float4x4(-0.016441656276584,-0.021928342059255,0.036991633474827,-0.091466233134270,0.034580558538437,-0.160845860838890,0.246588990092278,-0.135055035352707,-0.014816418290138,0.234613701701164,0.028496291488409,-0.003045385004953,-0.086368918418884,-0.045367930084467,-0.069118365645409,0.003785896347836));
res += mul(Get(s0,dx,-dy), float4x4(-0.026949340477586,0.016098286956549,0.155920371413231,-0.011929996311665,0.000094123271992,0.255638360977173,-0.049205344170332,-0.032427504658699,-0.008281762711704,-0.035388879477978,0.025447931140661,0.021365944296122,0.034036990255117,0.013149821199477,0.023602779954672,-0.070762261748314));
res += mul(Get(s0,dx,0), float4x4(-0.083733431994915,0.160877689719200,0.076114997267723,-0.160992562770844,0.078141346573830,0.043098431080580,0.105092562735081,-0.036922022700310,-0.063232623040676,-0.014401461929083,-0.006048157345504,0.006771587766707,0.132803574204445,-0.073728814721107,0.071423724293709,-0.027413830161095));
res += mul(Get(s0,dx,dy), float4x4(-0.050999283790588,-0.018569879233837,0.112905800342560,-0.094375669956207,0.172331050038338,-0.023898517712951,0.120864905416965,0.025457322597504,-0.021135833114386,0.009211401455104,0.011798163875937,0.081413917243481,-0.024557938799262,-0.102797619998455,-0.032790534198284,-0.130276083946228));
res += mul(Get(s1,-dx,-dy), float4x4(0.070021234452724,-0.005058035254478,-0.037408232688904,0.241012156009674,0.143613770604134,-0.130908578634262,0.021313454955816,-0.061032827943563,-0.082080528140068,0.119949743151665,-0.027678687125444,0.141574293375015,-0.018552854657173,-0.018165517598391,0.020743278786540,0.114359579980373));
res += mul(Get(s1,-dx,0), float4x4(0.168530225753784,0.012114842422307,-0.025637412443757,0.039388876408339,-0.003652237821370,-0.019487123936415,-0.022773101925850,-0.142673313617706,0.062552891671658,0.049195785075426,-0.021438803523779,0.143260627985001,-0.011509383097291,-0.183909997344017,-0.010430034250021,0.192196875810623));
res += mul(Get(s1,-dx,dy), float4x4(0.382280737161636,-0.148798018693924,-0.142097651958466,0.021020108833909,0.036493081599474,0.012947882525623,-0.111440062522888,0.000068894900323,-0.138474181294441,-0.004312219563872,0.132581502199173,0.079161085188389,0.032441623508930,-0.118752948939800,-0.019865624606609,-0.085067130625248));
res += mul(Get(s1,0,-dy), float4x4(0.018106704577804,0.009058712981641,0.088022969663143,0.086414821445942,0.026092968881130,-0.054535917937756,0.011980950832367,-0.095960676670074,-0.028988018631935,0.088217400014400,-0.062365766614676,-0.047523260116577,0.029502399265766,0.001047035795636,-0.009986902587116,-0.009957266971469));
res += mul(Get(s1,0,0), float4x4(-0.022673334926367,0.115113563835621,-0.008454563096166,0.138353794813156,0.006402811966836,-0.030723206698895,-0.042891044169664,-0.027785668149590,-0.011478706263006,-0.110185928642750,0.067943960428238,0.040243618190289,-0.092395514249802,-0.068939477205276,-0.072542034089565,-0.063281096518040));
res += mul(Get(s1,0,dy), float4x4(0.032166156917810,-0.031934384256601,-0.052113320678473,0.206232547760010,0.018132936209440,-0.066653326153755,-0.033737931400537,-0.104415446519852,-0.024285331368446,0.103796638548374,-0.038429360836744,0.393605262041092,0.082317180931568,-0.038060121238232,0.024917095899582,0.038044072687626));
res += mul(Get(s1,dx,-dy), float4x4(0.094932548701763,-0.020370395854115,-0.025884628295898,0.101378574967384,0.059495866298676,0.055220954120159,-0.010748947970569,0.004298905842006,-0.093492642045021,-0.051521856337786,-0.032329041510820,0.056507769972086,0.086314566433430,-0.044191371649504,0.043832231312990,0.049295186996460));
res += mul(Get(s1,dx,0), float4x4(0.073427893221378,0.024073837324977,-0.010914416983724,-0.186521112918854,0.019228328019381,-0.001722958520986,-0.022145820781589,-0.049543466418982,0.078219987452030,-0.059621412307024,-0.031436994671822,0.132872134447098,-0.027737956494093,-0.086799442768097,-0.030888888984919,-0.027425697073340));
res += mul(Get(s1,dx,dy), float4x4(0.124244965612888,-0.079096674919128,-0.053470071405172,0.007294021546841,0.067820094525814,-0.084704995155334,0.038047768175602,-0.033546842634678,-0.206856504082680,0.100022673606873,0.216428920626640,0.223664939403534,0.183966174721718,-0.096812784671783,0.029141956940293,-0.032990008592606));
res += mul(Get(s2,-dx,-dy), float4x4(0.081170044839382,-0.037835080176592,0.026668604463339,0.100252598524094,-0.020884318277240,-0.005776727106422,0.060106497257948,-0.012078896164894,0.186903282999992,-0.028419751673937,-0.098935492336750,0.034915696829557,0.013385130092502,-0.042734157294035,-0.072278812527657,-0.077244363725185));
res += mul(Get(s2,-dx,0), float4x4(0.090789362788200,-0.011941472068429,-0.035319495946169,0.139095723628998,-0.017725288867950,0.013438045978546,0.166698724031448,-0.025643469765782,-0.026628771796823,0.111405037343502,0.026668755337596,0.012429162859917,0.060691658407450,0.090501710772514,-0.029916113242507,-0.084936365485191));
res += mul(Get(s2,-dx,dy), float4x4(0.025907019153237,0.007731058634818,-0.057516168802977,0.008433867245913,-0.012292421422899,-0.071137599647045,0.169269546866417,-0.060654476284981,0.062044065445662,0.084105335175991,-0.096668988466263,0.085982933640480,-0.053692083805799,0.007941559888422,-0.020491275936365,-0.164628729224205));
res += mul(Get(s2,0,-dy), float4x4(-0.013724213466048,-0.012070733122528,-0.013833258301020,-0.009884453378618,-0.051812432706356,-0.099956907331944,0.177682638168335,0.137120932340622,0.097106844186783,-0.029945323243737,0.010435891337693,0.072482191026211,0.000931384915020,0.201217845082283,0.008627895265818,-0.039222400635481));
res += mul(Get(s2,0,0), float4x4(0.019845962524414,-0.009428632445633,0.012441843748093,0.005942566320300,-0.034398578107357,-0.079061098396778,-0.036287833005190,0.033462204039097,-0.082502476871014,-0.090309947729111,0.186223611235619,-0.013648869469762,0.037414979189634,0.076600506901741,0.220640271902084,-0.068596586585045));
res += mul(Get(s2,0,dy), float4x4(0.059094741940498,0.007715309970081,-0.064198955893517,0.008782027289271,0.078296534717083,-0.047144945710897,0.012444918043911,-0.018297649919987,-0.058661453425884,0.044551454484463,-0.041109841316938,0.220211997628212,-0.029571136459708,-0.064633481204510,0.020179776474833,-0.002207853365690));
res += mul(Get(s2,dx,-dy), float4x4(-0.076803527772427,-0.025325091555715,-0.012927832081914,0.125658243894577,0.014792962931097,0.163846433162689,0.135494813323021,0.082050785422325,-0.060051463544369,-0.006218213122338,-0.017684917896986,0.033480327576399,-0.031431522220373,0.037228047847748,-0.011390279047191,0.142977192997932));
res += mul(Get(s2,dx,0), float4x4(0.086907908320427,0.061697173863649,0.017690636217594,0.048163313418627,0.022901205345988,-0.061016805469990,-0.054171308875084,0.058276042342186,-0.147175416350365,0.129287242889404,-0.027660325169563,-0.066958881914616,0.022801864892244,0.156583681702614,-0.155219703912735,0.085715852677822));
res += mul(Get(s2,dx,dy), float4x4(-0.016799103468657,-0.023015119135380,0.017880028113723,-0.034850135445595,-0.002011368749663,0.015516432002187,-0.126635804772377,0.062771484255791,-0.072904713451862,0.020025173202157,0.004449445754290,0.037175502628088,-0.083223074674606,-0.113771900534630,-0.008823502808809,0.121052920818329));
res += mul(Get(s3,-dx,-dy), float4x4(0.033912111073732,0.105276815593243,-0.055395465344191,-0.068471059203148,0.014535349793732,-0.151628404855728,0.011991969309747,-0.136741101741791,0.028615333139896,0.035491831600666,0.008633629418910,-0.031958896666765,0.036658320575953,0.104844801127911,-0.047628220170736,0.040158685296774));
res += mul(Get(s3,-dx,0), float4x4(0.018926255404949,0.152459710836411,-0.048607222735882,-0.088724993169308,-0.068314380943775,0.003664277493954,0.056206062436104,-0.133570656180382,-0.009330609813333,0.034101247787476,-0.018178431317210,-0.007446904666722,0.038885477930307,-0.023609656840563,0.004259491804987,0.081272147595882));
res += mul(Get(s3,-dx,dy), float4x4(-0.002512751845643,0.006414157338440,0.061253607273102,-0.144263684749603,-0.005008209962398,-0.062224127352238,-0.020281530916691,-0.084697328507900,-0.111697018146515,0.074607223272324,-0.014041826128960,-0.051118444651365,-0.049544803798199,-0.063664816319942,-0.060234803706408,0.071616649627686));
res += mul(Get(s3,0,-dy), float4x4(-0.001858757226728,-0.001832859241404,-0.000969553599134,0.028222706168890,0.011578395031393,-0.134678110480309,0.018814124166965,-0.058099776506424,-0.051697690039873,-0.059577919542789,0.010318554006517,0.042347677052021,-0.061145812273026,0.052580613642931,0.039114952087402,0.068595200777054));
res += mul(Get(s3,0,0), float4x4(0.008279767818749,-0.221320137381554,-0.088349446654320,-0.013831108808517,-0.002196149667725,0.357922494411469,-0.063626065850258,-0.075101815164089,0.075241215527058,-0.050914485007524,-0.020525116473436,-0.102290287613869,-0.101203911006451,-0.144365072250366,0.039589826017618,0.045829609036446));
res += mul(Get(s3,0,dy), float4x4(-0.099092334508896,-0.054425463080406,-0.051703032106161,-0.057688064873219,-0.017575539648533,0.114527940750122,-0.036995787173510,-0.023259012028575,-0.109470382332802,-0.070886112749577,0.007467926014215,-0.076813556253910,-0.118304312229156,-0.070373103022575,0.013053710572422,0.065342172980309));
res += mul(Get(s3,dx,-dy), float4x4(0.080083400011063,0.108441270887852,-0.046060658991337,0.119458660483360,0.014523181132972,-0.050126280635595,-0.049806378781796,-0.100879937410355,-0.026179518550634,-0.115295015275478,-0.058349933475256,-0.019607111811638,0.071621887385845,0.095300443470478,-0.102671205997467,0.052828244864941));
res += mul(Get(s3,dx,0), float4x4(-0.029559839516878,0.116904422640800,-0.087293751537800,-0.078393243253231,-0.102539345622063,0.095750674605370,-0.059297204017639,0.078033760190010,0.027737515047193,-0.045759633183479,0.007511635776609,-0.033327870070934,0.196637436747551,-0.131342217326164,-0.056137893348932,0.040279161185026));
res += mul(Get(s3,dx,dy), float4x4(0.015964068472385,0.107264466583729,0.186788588762283,-0.035619378089905,-0.179652035236359,-0.007100241258740,-0.009327922016382,0.135249122977257,-0.088490411639214,0.041809786111116,0.107663333415985,0.018581619486213,-0.089001983404160,-0.065949499607086,-0.129708409309387,-0.030723327770829));
return max(float4(0,0,0,0), res);
}
