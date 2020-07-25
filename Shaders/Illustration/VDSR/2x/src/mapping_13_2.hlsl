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
res += mul(Get(s0,-dx,-dy), float4x4(0.078771531581879,-0.043334789574146,-0.003423222107813,-0.032046049833298,0.053362429141998,0.144841745495796,0.015515540726483,0.139568135142326,0.000890686991625,0.048343826085329,0.025075722485781,0.125875979661942,-0.228621855378151,0.043370094150305,0.144503936171532,0.012604709714651));
res += mul(Get(s0,-dx,0), float4x4(0.081712260842323,0.101513609290123,0.018275318667293,-0.167284846305847,-0.093360684812069,0.055431433022022,-0.013346336781979,-0.114932790398598,0.001481899060309,0.006950909737498,0.060831248760223,0.083261907100677,0.036244820803404,-0.000275114638498,-0.067431442439556,-0.055156167596579));
res += mul(Get(s0,-dx,dy), float4x4(-0.090047694742680,-0.079410031437874,-0.073189929127693,0.083131738007069,-0.138864368200302,0.032410524785519,-0.108005307614803,-0.041776087135077,0.050966717302799,0.020937213674188,-0.016351237893105,-0.084066927433014,-0.034374516457319,-0.030086360871792,-0.164223000407219,-0.189665675163269));
res += mul(Get(s0,0,-dy), float4x4(0.011318922042847,0.044388439506292,-0.033480223268270,-0.055830143392086,0.113607622683048,0.174605816602707,-0.011492319405079,0.009599718265235,-0.121598400175571,-0.093773886561394,-0.054883874952793,0.014278304763138,0.018098291009665,-0.066867455840111,-0.000961436599027,0.031859479844570));
res += mul(Get(s0,0,0), float4x4(-0.147250145673752,-0.027237508445978,0.028148869052529,-0.046616256237030,0.035661626607180,-0.086593940854073,0.052792053669691,-0.078862696886063,0.058173179626465,0.093450836837292,-0.098557844758034,-0.018191820010543,-0.080316774547100,-0.077908121049404,-0.018814878538251,0.038670044392347));
res += mul(Get(s0,0,dy), float4x4(-0.026264665648341,0.125360608100891,0.047073468565941,0.125550732016563,0.102535992860794,0.109151937067509,0.159000098705292,-0.004070562776178,-0.024837218225002,-0.029785044491291,-0.026491716504097,0.127260699868202,-0.059145711362362,0.298021435737610,-0.068165108561516,0.170407906174660));
res += mul(Get(s0,dx,-dy), float4x4(0.039394810795784,0.006187934428453,-0.020010426640511,0.017032956704497,0.026216220110655,-0.110175900161266,0.068414904177189,-0.080031566321850,-0.016970353201032,-0.189868018031120,0.049997977912426,0.222266912460327,-0.100877076387405,-0.024347720667720,0.019234538078308,0.099574387073517));
res += mul(Get(s0,dx,0), float4x4(0.110795922577381,-0.003527466207743,-0.023286977782845,-0.038951486349106,-0.136649861931801,-0.040922850370407,0.144642099738121,-0.033446025103331,-0.114949733018875,-0.053058255463839,0.060979999601841,0.033872053027153,-0.083398848772049,-0.097616925835609,-0.013160970062017,0.090748675167561));
res += mul(Get(s0,dx,dy), float4x4(-0.029216341674328,-0.015771040692925,0.024248249828815,-0.072968833148479,0.045237675309181,0.081457912921906,-0.133663430809975,-0.070769160985947,-0.063482463359833,0.048219244927168,0.045946072787046,0.008620013482869,-0.008388921618462,0.060124475508928,0.104344621300697,-0.016463542357087));
res += mul(Get(s1,-dx,-dy), float4x4(0.075765460729599,0.030663866549730,0.073889039456844,0.019165620207787,0.067792646586895,-0.061890013515949,-0.023820703849196,-0.031651247292757,0.043654374778271,0.105553627014160,0.011327545158565,-0.163506031036377,0.077812671661377,0.103157661855221,0.025279942899942,-0.070920988917351));
res += mul(Get(s1,-dx,0), float4x4(0.080798298120499,0.047099411487579,0.111153610050678,0.097536042332649,-0.010344812646508,0.036509670317173,-0.085586413741112,0.046076603233814,-0.139708951115608,-0.066423535346985,-0.067551955580711,-0.169282108545303,0.078984864056110,-0.251389354467392,-0.034070093184710,-0.025631207972765));
res += mul(Get(s1,-dx,dy), float4x4(0.064788803458214,-0.098730415105820,0.086926274001598,0.045988027006388,0.129126071929932,0.089905165135860,-0.021822705864906,-0.035351794213057,-0.043476089835167,-0.218086466193199,-0.063308760523796,-0.002785929478705,-0.008056356571615,0.031290583312511,-0.003426177892834,-0.027233891189098));
res += mul(Get(s1,0,-dy), float4x4(0.183337286114693,0.229346215724945,0.016668144613504,-0.061637349426746,-0.027046801522374,0.031696125864983,0.083893932402134,-0.064859904348850,-0.013835244812071,0.048879768699408,-0.120697997510433,-0.072399109601974,0.009461274370551,0.008793200366199,-0.154221266508102,0.037593431770802));
res += mul(Get(s1,0,0), float4x4(0.024034036323428,0.019455714151263,0.061261165887117,-0.016722155734897,-0.178752988576889,0.203112423419952,0.219627588987350,0.110792584717274,-0.066957391798496,-0.100573733448982,-0.002325983019546,-0.164717063307762,0.144995629787445,-0.155466705560684,0.020039398223162,0.093754261732101));
res += mul(Get(s1,0,dy), float4x4(-0.059880193322897,0.250529795885086,-0.132753491401672,0.034049186855555,0.045057710260153,0.073855526745319,0.082169763743877,-0.013581322506070,0.039714623242617,-0.053454380482435,-0.010432510636747,0.015893884003162,0.070883199572563,0.178658574819565,0.047898355871439,-0.001772950869054));
res += mul(Get(s1,dx,-dy), float4x4(0.059744864702225,0.076933391392231,-0.127078741788864,-0.050958670675755,-0.179744169116020,0.094575054943562,-0.237277686595917,-0.064445011317730,-0.056318003684282,0.091152071952820,-0.212899520993233,0.024708988144994,-0.012724940665066,0.032319970428944,-0.045420464128256,0.006539230234921));
res += mul(Get(s1,dx,0), float4x4(0.099549077451229,0.054317284375429,0.085722215473652,0.120826065540314,-0.045907340943813,-0.101050920784473,-0.003111361758783,-0.043616283684969,-0.116606891155243,0.070040196180344,-0.217274799942970,-0.111620686948299,0.067665286362171,-0.109693191945553,0.061894111335278,-0.012947359122336));
res += mul(Get(s1,dx,dy), float4x4(0.131269961595535,0.095254942774773,-0.007898975163698,-0.106655143201351,0.171955689787865,-0.057242788374424,0.149932146072388,-0.049222510308027,-0.022702360525727,-0.072838537395000,0.002923070220277,0.044330354779959,0.079434275627136,-0.052852015942335,-0.043731998652220,-0.070815600454807));
res += mul(Get(s2,-dx,-dy), float4x4(0.045917365700006,-0.009460547938943,0.126066014170647,-0.020400008186698,0.088071428239346,-0.065455891191959,0.084309652447701,-0.086562722921371,0.027300350368023,0.191050499677658,0.179124280810356,0.057141020894051,-0.027470974251628,0.210763454437256,0.000054688909586,-0.067881353199482));
res += mul(Get(s2,-dx,0), float4x4(-0.021500613540411,0.052022751420736,0.150397703051567,-0.118045687675476,-0.128724724054337,-0.041943665593863,-0.084591552615166,-0.131936714053154,0.039038285613060,0.052454043179750,-0.059959705919027,-0.004145375918597,-0.145812734961510,-0.086827091872692,0.053593847900629,-0.154457226395607));
res += mul(Get(s2,-dx,dy), float4x4(0.138696983456612,0.015126603655517,0.113078504800797,0.068262122571468,-0.011046151630580,0.026480451226234,0.013674992136657,-0.037438597530127,0.049277700483799,0.008788281120360,0.066879071295261,-0.098791845142841,-0.102365814149380,0.025805033743382,0.063790172338486,-0.088372319936752));
res += mul(Get(s2,0,-dy), float4x4(-0.045740980654955,-0.014658287167549,0.199669837951660,0.039106845855713,-0.114171348512173,-0.012886993587017,-0.005104177165776,0.071587949991226,-0.028215596452355,0.048923961818218,-0.077685654163361,-0.191898033022881,0.008650580421090,0.027605080977082,-0.024521907791495,-0.005194541066885));
res += mul(Get(s2,0,0), float4x4(-0.032853923738003,-0.143514633178711,0.026456626132131,-0.130322128534317,-0.197363823652267,-0.113705344498158,0.138778284192085,-0.097806043922901,-0.131536930799484,-0.090833365917206,0.013434972614050,0.001131680328399,0.017792489379644,-0.020530976355076,0.192692220211029,0.036875508725643));
res += mul(Get(s2,0,dy), float4x4(-0.004687309730798,-0.130303800106049,0.116588257253170,0.045970778912306,0.112762652337551,-0.025044284760952,-0.084240242838860,0.039742734283209,0.046142328530550,0.097812086343765,0.002989876316860,-0.088235370814800,-0.072646819055080,0.067950770258904,-0.013379946351051,-0.090749278664589));
res += mul(Get(s2,dx,-dy), float4x4(-0.083504982292652,-0.139578998088837,-0.019334746524692,0.056549575179815,0.080104976892471,-0.023208940401673,-0.046581406146288,0.066504642367363,0.000254605227383,-0.078294664621353,-0.196761906147003,0.025601524859667,0.037368658930063,0.131641790270805,0.072790063917637,0.080234847962856));
res += mul(Get(s2,dx,0), float4x4(-0.039050672203302,-0.027053410187364,0.015109771862626,0.111988812685013,-0.010406799614429,0.000204267271329,-0.152979165315628,0.028874844312668,-0.112360432744026,0.069060608744621,0.172152757644653,0.089013971388340,0.079990051686764,0.114259995520115,0.063484795391560,0.055756259709597));
res += mul(Get(s2,dx,dy), float4x4(0.004468719474971,-0.022001475095749,0.016529517248273,0.099518679082394,0.151323169469833,0.091722168028355,-0.149133473634720,0.090371206402779,-0.059925422072411,-0.130455061793327,-0.028671590611339,-0.036053147166967,-0.121309898793697,-0.041790537536144,-0.157490745186806,0.052922651171684));
res += mul(Get(s3,-dx,-dy), float4x4(-0.010458795353770,-0.012890372425318,0.004404788371176,0.088437601923943,-0.026044616475701,-0.102135442197323,0.267582654953003,0.357828915119171,0.123623944818974,-0.068576961755753,0.037153989076614,0.025772817432880,0.104954808950424,-0.052991058677435,0.106457203626633,-0.034031316637993));
res += mul(Get(s3,-dx,0), float4x4(0.036546804010868,0.051818102598190,0.221245095133781,-0.089352533221245,0.076782993972301,-0.035845864564180,0.083732955157757,0.140272125601768,0.050502147525549,0.010845649987459,-0.012883120216429,0.005995607469231,0.025748275220394,-0.099552005529404,-0.040153201669455,0.011074113659561));
res += mul(Get(s3,-dx,dy), float4x4(-0.047719489783049,-0.088593780994415,0.003658621339127,-0.042813822627068,-0.078552372753620,-0.233525022864342,0.091441132128239,0.158961504697800,0.076976954936981,-0.046339236199856,0.066385500133038,0.107733674347401,-0.102739498019218,0.014752409420907,0.059512190520763,0.086247473955154));
res += mul(Get(s3,0,-dy), float4x4(0.012618539854884,-0.008000126108527,-0.029128646478057,-0.200352147221565,0.046731136739254,-0.152015283703804,-0.018699878826737,0.183624908328056,0.322797626256943,0.053475253283978,-0.028384868055582,0.032407116144896,-0.033633291721344,0.062420938163996,-0.041991975158453,-0.058980543166399));
res += mul(Get(s3,0,0), float4x4(0.016310041770339,0.183056637644768,0.267544299364090,-0.070973873138428,0.059933543205261,-0.003782870480791,-0.060317661613226,-0.195527881383896,-0.125042989850044,0.049575291574001,0.067479126155376,-0.013133275322616,0.055620606988668,0.006142469123006,-0.010075376369059,-0.122612364590168));
res += mul(Get(s3,0,dy), float4x4(-0.069948732852936,0.079324871301651,-0.027314689010382,-0.069731049239635,-0.071448259055614,-0.117935083806515,-0.047764971852303,0.047821458429098,0.051892545074224,-0.064725629985332,-0.152991652488708,-0.081168487668037,0.113207690417767,0.040507026016712,0.001912015839480,-0.003052026499063));
res += mul(Get(s3,dx,-dy), float4x4(-0.085293352603912,-0.080136463046074,-0.133290603756905,-0.087135843932629,0.090374797582626,-0.009814601391554,-0.060217775404453,0.039233651012182,0.004142682068050,-0.180225834250450,0.002448001410812,-0.148404181003571,0.156502410769463,0.060100052505732,0.040540583431721,-0.048072844743729));
res += mul(Get(s3,dx,0), float4x4(0.068465568125248,-0.038695722818375,-0.076791860163212,0.042971815913916,-0.029570568352938,0.009770075790584,-0.060292880982161,0.049014661461115,0.100456364452839,-0.054192259907722,0.047800615429878,-0.039602313190699,-0.188480705022812,-0.038935195654631,-0.118188314139843,0.134059563279152));
res += mul(Get(s3,dx,dy), float4x4(0.055228821933270,-0.043516613543034,-0.037872977554798,-0.143823876976967,-0.115267127752304,-0.074553683400154,0.151745200157166,0.050753280520439,0.112825237214565,-0.147576212882996,0.110300548374653,-0.045610874891281,-0.093337066471577,0.092357054352760,-0.031921930611134,0.087055221199989));
return max(float4(0,0,0,0), res);
}
