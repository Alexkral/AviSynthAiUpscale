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
res += mul(Get(s0,-dx,-dy), float4x4(0.071746833622456,-0.026897381991148,0.061897277832031,0.105204582214355,-0.023818217217922,0.163505613803864,0.147912472486496,-0.148951888084412,0.123958371579647,0.125186368823051,0.033080715686083,-0.077177785336971,0.004471239168197,0.084517650306225,-0.042566005140543,-0.055687982589006));
res += mul(Get(s0,-dx,0), float4x4(0.096613541245461,-0.116878889501095,-0.076872959733009,-0.027963817119598,0.138137683272362,-0.170948430895805,-0.226500809192657,-0.147164776921272,-0.006162608973682,0.031768038868904,0.162682279944420,-0.026054253801703,0.038681428879499,0.156272724270821,-0.029011510312557,-0.111266143620014));
res += mul(Get(s0,-dx,dy), float4x4(0.132076174020767,0.007848694920540,-0.203250512480736,0.051863398402929,0.105288021266460,0.019412830471992,0.062968537211418,0.061485607177019,-0.087931156158447,-0.070058129727840,0.053440459072590,0.045547481626272,-0.040923684835434,0.074910879135132,-0.073553293943405,-0.002969030290842));
res += mul(Get(s0,0,-dy), float4x4(0.032120149582624,0.034940637648106,0.022774148732424,0.082809500396252,-0.074569612741470,0.223823204636574,-0.087999463081360,-0.076598413288593,0.027282826602459,0.059262134134769,0.100430443882942,-0.087090164422989,0.043098863214254,0.063905179500580,0.085280448198318,-0.029253095388412));
res += mul(Get(s0,0,0), float4x4(0.022719556465745,-0.135949060320854,0.012453551404178,0.052238296717405,0.081584013998508,-0.151734367012978,-0.027238834649324,0.043675616383553,0.031765270978212,0.055552434176207,0.027264256030321,-0.101437695324421,0.024122385308146,-0.046433035284281,-0.096705213189125,0.016973992809653));
res += mul(Get(s0,0,dy), float4x4(-0.028493531048298,0.003974439110607,-0.038581989705563,-0.005898146424443,0.023803938180208,0.043915838003159,0.104236073791981,0.059944815933704,0.032997265458107,0.078479833900928,-0.091737568378448,0.010517059825361,-0.034803736954927,0.047972641885281,-0.032229062169790,0.024961795657873));
res += mul(Get(s0,dx,-dy), float4x4(0.034598127007484,0.011716234497726,0.148863390088081,-0.019722636789083,0.027933176606894,0.106385521590710,0.047594066709280,-0.094205342233181,-0.009072736836970,-0.066526353359222,0.153090730309486,0.041883662343025,0.022599924355745,0.053994506597519,0.088457532227039,0.071317322552204));
res += mul(Get(s0,dx,0), float4x4(0.029600748792291,-0.079341731965542,0.123214021325111,0.089915551245213,-0.037172310054302,0.030672952532768,0.161039248108864,-0.000404692167649,-0.023537607863545,0.046898901462555,0.047754984349012,-0.101209037005901,-0.104174412786961,0.068268708884716,0.026928259059787,0.094679243862629));
res += mul(Get(s0,dx,dy), float4x4(0.018307613208890,-0.134120494127274,-0.041472695767879,0.063468448817730,0.001995200756937,-0.049463383853436,0.035380236804485,0.084713980555534,-0.019034933298826,-0.075046591460705,-0.145301744341850,0.046939983963966,-0.045038919895887,0.112567402422428,0.053795989602804,0.072860278189182));
res += mul(Get(s1,-dx,-dy), float4x4(-0.126945242285728,-0.040666244924068,0.093757152557373,-0.054410416632891,0.100329503417015,0.061608642339706,0.097522996366024,-0.060676559805870,-0.119484990835190,0.046368561685085,0.022688737139106,0.023417638614774,0.091189719736576,0.004209027625620,-0.027510868385434,0.009089418686926));
res += mul(Get(s1,-dx,0), float4x4(0.030796980485320,0.003535498864949,-0.014647891744971,0.006270301993936,0.044708140194416,-0.004736540373415,0.109659552574158,-0.057605817914009,-0.119355872273445,-0.017901228740811,0.105364851653576,-0.025189213454723,-0.024794017896056,-0.020974056795239,-0.046394076198339,-0.006518425885588));
res += mul(Get(s1,-dx,dy), float4x4(-0.040644016116858,-0.094161190092564,-0.040419183671474,-0.029679618775845,-0.077304430305958,0.028996732085943,-0.045696239918470,0.072086550295353,-0.054999802261591,-0.048423685133457,-0.051121931523085,0.067720912396908,-0.048145189881325,-0.049231681972742,-0.037749834358692,-0.015444752760231));
res += mul(Get(s1,0,-dy), float4x4(-0.061447132378817,0.086843021214008,0.100317969918251,-0.096134088933468,-0.029628204181790,-0.098774679005146,-0.006637566722929,0.052014812827110,-0.083458416163921,-0.045246798545122,0.003653451567516,0.005393407773226,-0.036204732954502,0.012445513159037,0.048511657863855,0.060623895376921));
res += mul(Get(s1,0,0), float4x4(-0.040534991770983,-0.021511603146791,-0.068582385778427,0.187724649906158,0.096618682146072,0.054642047733068,-0.017426811158657,0.124367974698544,0.233564481139183,0.094969727098942,0.071784488856792,-0.060421071946621,0.066006459295750,0.059991143643856,0.067809313535690,0.046745397150517));
res += mul(Get(s1,0,dy), float4x4(-0.083828568458557,0.040595639497042,-0.066621944308281,0.008269704878330,0.017897326499224,0.011799648404121,0.026571467518806,0.037809714674950,-0.145673945546150,0.154364794492722,0.036963362246752,-0.061170477420092,0.007832970470190,0.029028890654445,0.028059499338269,-0.064939022064209));
res += mul(Get(s1,dx,-dy), float4x4(0.041270811110735,0.094402864575386,0.079225435853004,-0.079800747334957,-0.033992134034634,0.012491756118834,0.017183447256684,0.078709542751312,0.114746756851673,-0.117661915719509,-0.065753377974033,0.199695244431496,-0.162389010190964,0.007765098940581,-0.030269358307123,0.067394420504570));
res += mul(Get(s1,dx,0), float4x4(0.018476366996765,0.079463861882687,-0.088184773921967,-0.016071010380983,0.080008074641228,-0.106359384953976,-0.105197064578533,0.074299193918705,0.012303797528148,-0.026543742045760,0.003475970122963,-0.033802516758442,0.083910264074802,0.000100041062979,0.105394825339317,-0.074911199510098));
res += mul(Get(s1,dx,dy), float4x4(-0.015588440932333,0.021087368950248,0.033021911978722,0.011483978480101,0.013111681677401,-0.013160207308829,0.029084192588925,0.113041661679745,0.012040147557855,-0.037747830152512,0.013256746344268,-0.073777958750725,-0.031790945678949,-0.050671208649874,-0.021463096141815,-0.083600766956806));
res += mul(Get(s2,-dx,-dy), float4x4(-0.061703033745289,-0.003593262284994,-0.019644293934107,-0.077398948371410,-0.198827728629112,0.029528943821788,0.074462778866291,-0.010116676799953,-0.007509784307331,0.106496505439281,0.006450459361076,0.063159398734570,0.181196033954620,0.091188058257103,0.102923512458801,0.084918834269047));
res += mul(Get(s2,-dx,0), float4x4(0.084604322910309,0.036249466240406,-0.033027917146683,-0.076053194701672,-0.080169878900051,0.153409391641617,0.245667308568954,-0.023393888026476,-0.090656377375126,0.106838658452034,0.065215840935707,0.064552120864391,-0.074186898767948,-0.017954632639885,0.040400512516499,0.044373795390129));
res += mul(Get(s2,-dx,dy), float4x4(-0.021512117236853,-0.008326185867190,-0.025437863543630,0.013105840422213,-0.086818888783455,-0.040687520056963,0.053050100803375,0.098566733300686,0.040730956941843,0.051170766353607,0.067355684936047,-0.114013671875000,0.065459385514259,0.060697663575411,0.063484981656075,0.133099570870399));
res += mul(Get(s2,0,-dy), float4x4(-0.015210079960525,0.026779502630234,0.015912273898721,0.061655621975660,0.066807076334953,0.039311125874519,-0.086967326700687,0.023006703704596,-0.061208214610815,0.122223794460297,0.144201204180717,-0.080002807080746,-0.042737044394016,0.054605960845947,0.021977907046676,0.074664577841759));
res += mul(Get(s2,0,0), float4x4(-0.001340011483990,-0.100987590849400,-0.082456812262535,-0.059372551739216,-0.038932140916586,-0.102636165916920,0.030757272616029,-0.095077693462372,-0.068258836865425,0.086837716400623,0.099049776792526,-0.051153607666492,0.123418167233467,-0.069328963756561,-0.025100952014327,-0.013157720677555));
res += mul(Get(s2,0,dy), float4x4(-0.016167819499969,0.093170143663883,0.040087837725878,0.035364143550396,-0.123639762401581,-0.040640182793140,0.018376724794507,0.063876532018185,0.024125231429935,0.044547587633133,0.056174509227276,0.046130407601595,-0.088533945381641,-0.045668259263039,0.018042705953121,-0.002628396498039));
res += mul(Get(s2,dx,-dy), float4x4(-0.041275221854448,-0.085065580904484,-0.003165170550346,0.003726713126525,0.037358190864325,0.038393840193748,-0.129028901457787,0.029586870223284,-0.011687494814396,0.067319042980671,0.037666812539101,0.012948242016137,0.040349870920181,0.017528766766191,0.099161028862000,0.050226990133524));
res += mul(Get(s2,dx,0), float4x4(0.033132821321487,0.031033257022500,-0.052482724189758,0.004024359397590,0.111038558185101,-0.090598255395889,-0.060203097760677,-0.082533754408360,-0.009900082834065,0.023474881425500,-0.026059053838253,-0.147536382079124,-0.011176072992384,-0.039745211601257,0.097968704998493,0.106521710753441));
res += mul(Get(s2,dx,dy), float4x4(-0.121646180748940,-0.093922823667526,-0.008899409323931,-0.112125672399998,-0.161590650677681,0.002504789270461,0.007951868698001,-0.075381822884083,-0.045462552458048,-0.023305520415306,-0.045331101864576,-0.003486442146823,-0.112602099776268,0.048517625778913,0.001808480010368,-0.091059364378452));
res += mul(Get(s3,-dx,-dy), float4x4(0.089725717902184,0.062384229153395,0.084739193320274,0.067698709666729,-0.015915498137474,-0.050959423184395,0.017511758953333,-0.007206606678665,0.078843779861927,0.082600310444832,-0.054525461047888,0.036917462944984,-0.008084669709206,-0.047288089990616,0.091251775622368,0.014023307710886));
res += mul(Get(s3,-dx,0), float4x4(-0.004053454380482,0.017603121697903,-0.006143551319838,-0.041139416396618,0.054381530731916,-0.081780649721622,0.038069192320108,-0.042007680982351,-0.045696321874857,0.004418336786330,-0.053570877760649,0.043443232774734,-0.091861978173256,-0.112611278891563,-0.032049994915724,0.066412590444088));
res += mul(Get(s3,-dx,dy), float4x4(0.051451686769724,-0.134290382266045,0.005186952184886,-0.087462432682514,-0.041614074259996,0.033205505460501,0.033167600631714,-0.088104300200939,0.109706781804562,-0.003253081580624,0.060934495180845,0.034407161176205,0.036290053278208,-0.007562152110040,-0.006008582189679,-0.173240408301353));
res += mul(Get(s3,0,-dy), float4x4(0.009395676665008,0.066335059702396,0.235798254609108,-0.008349755778909,-0.097698189318180,-0.156084790825844,-0.122786916792393,0.026053491979837,0.039354633539915,0.012393854558468,-0.057540949434042,-0.053742688149214,-0.009937396273017,0.051617246121168,-0.031613521277905,0.015180385671556));
res += mul(Get(s3,0,0), float4x4(0.073033250868320,0.028445221483707,0.123091369867325,0.083737209439278,-0.048201542347670,-0.006236836314201,-0.038354244083166,0.036105405539274,-0.039562843739986,-0.014155647717416,0.034811496734619,-0.030205981805921,-0.028586298227310,-0.041342400014400,0.018419520929456,0.105147615075111));
res += mul(Get(s3,0,dy), float4x4(0.183570504188538,-0.023962169885635,-0.121712416410446,-0.018663220107555,0.059380661696196,0.032754112035036,0.161295011639595,-0.017354361712933,-0.049644067883492,0.105103626847267,-0.026413584128022,0.043883163481951,0.064225152134895,-0.015940427780151,0.005886874161661,0.063381381332874));
res += mul(Get(s3,dx,-dy), float4x4(0.032219447195530,-0.030579037964344,-0.054270669817924,-0.020525461062789,-0.035301107913256,-0.109476171433926,-0.057823788374662,0.017374873161316,0.104551441967487,-0.069215767085552,-0.108021669089794,0.075591057538986,-0.066133692860603,0.129354923963547,-0.060966484248638,0.144454836845398));
res += mul(Get(s3,dx,0), float4x4(0.133971095085144,-0.090784609317780,-0.055299494415522,0.020673047751188,0.044643562287092,0.015879621729255,-0.004148376174271,0.005738989450037,-0.000472279643873,0.002547117648646,0.062219277024269,0.027801357209682,0.120052412152290,0.141834601759911,0.109758511185646,-0.019995184615254));
res += mul(Get(s3,dx,dy), float4x4(0.054430067539215,-0.024952864274383,-0.125174015760422,-0.000264081754722,-0.005480492021888,0.031841278076172,-0.091217398643494,-0.070369116961956,-0.004869311582297,-0.185953378677368,0.022883132100105,0.178066909313202,0.045620061457157,0.214948087930679,0.047593321651220,-0.090191721916199));
res = max(float4(0,0,0,0), res);
return res;
}