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
res += mul(Get(s0,-dx,-dy), float4x4(-0.027027640491724,-0.040063854306936,-0.048679638653994,-0.160557642579079,-0.034232415258884,-0.151546165347099,0.240439027547836,-0.008247950114310,0.305011361837387,-0.132096156477928,-0.005136198829859,0.018394527956843,0.030246650800109,-0.125099226832390,-0.064124070107937,-0.002337386133149));
res += mul(Get(s0,-dx,0), float4x4(-0.105436474084854,0.069737799465656,-0.067547664046288,0.000495386251714,0.017677186056972,-0.076116770505905,0.075121231377125,0.078655123710632,-0.135130777955055,0.052217509597540,-0.093131586909294,-0.018378363922238,-0.002613737247884,-0.067537911236286,-0.064733564853668,-0.075127728283405));
res += mul(Get(s0,-dx,dy), float4x4(0.097012437880039,-0.207257956266403,0.073688477277756,0.074048742651939,0.058155190199614,0.025720527395606,-0.003915957640857,-0.084037095308304,-0.218487948179245,-0.077430196106434,-0.079208254814148,-0.247614860534668,-0.124647051095963,-0.064836300909519,0.145130395889282,-0.086579792201519));
res += mul(Get(s0,0,-dy), float4x4(0.030501089990139,-0.003737437073141,-0.020394926890731,-0.212598487734795,0.036315880715847,0.028114803135395,-0.178895190358162,-0.068537726998329,0.079970985651016,0.028957122936845,-0.148138582706451,0.209774762392044,-0.158146604895592,-0.106624841690063,0.039585407823324,-0.088873147964478));
res += mul(Get(s0,0,0), float4x4(-0.031212521716952,-0.123333707451820,-0.074414581060410,0.030114073306322,0.122447386384010,0.011179260909557,0.017756927758455,-0.047958508133888,-0.037211764603853,0.014802073128521,0.056090850383043,0.020809134468436,0.133785694837570,0.110145486891270,0.139671996235847,0.020906262099743));
res += mul(Get(s0,0,dy), float4x4(-0.062941171228886,0.174784392118454,0.136913254857063,-0.187712937593460,-0.070021025836468,-0.220092326402664,0.066436141729355,0.050250045955181,0.027932289987803,0.056424502283335,0.079529926180840,0.031113002449274,0.009509595111012,-0.026928978040814,-0.089688777923584,0.027025584131479));
res += mul(Get(s0,dx,-dy), float4x4(0.017084613442421,-0.081070207059383,-0.151121005415916,-0.074390053749084,-0.186671733856201,0.174560084939003,-0.000139363284688,0.086632214486599,0.021486412733793,0.146179169416428,-0.044522866606712,0.204203993082047,-0.062709085643291,-0.165683582425117,0.031867839396000,0.069706708192825));
res += mul(Get(s0,dx,0), float4x4(0.038146458566189,0.046524379402399,-0.004899855237454,-0.070233367383480,0.096088126301765,-0.107968129217625,0.041630804538727,0.163091123104095,0.013555741868913,-0.083195246756077,-0.078713744878769,0.045288056135178,0.113868288695812,-0.110583014786243,0.065002277493477,-0.000129425548948));
res += mul(Get(s0,dx,dy), float4x4(-0.112290166318417,0.015235099010170,-0.049871880561113,-0.017581690102816,-0.156388968229294,0.056102011352777,-0.004395114723593,-0.081171974539757,-0.038491930812597,0.038421001285315,-0.020713863894343,-0.148458749055862,-0.150619208812714,0.061617448925972,0.106432132422924,0.000307324517053));
res += mul(Get(s1,-dx,-dy), float4x4(-0.089462645351887,0.040208697319031,0.034649774432182,0.077159039676189,0.004287191666663,0.139781102538109,-0.097047455608845,-0.011263191699982,-0.018311662599444,-0.036001313477755,-0.055078923702240,0.170154601335526,0.017110809683800,0.019348826259375,0.114491157233715,0.072184383869171));
res += mul(Get(s1,-dx,0), float4x4(-0.063034467399120,-0.089702993631363,0.071598500013351,-0.152806505560875,-0.036578714847565,0.078260399401188,0.182507798075676,0.078663744032383,0.148872807621956,0.104594059288502,0.053790584206581,-0.085162252187729,-0.067999251186848,0.090565383434296,-0.035001475363970,-0.054329246282578));
res += mul(Get(s1,-dx,dy), float4x4(0.192224726080894,-0.223446235060692,0.068350657820702,0.073153480887413,-0.072909779846668,0.069946117699146,0.019546058028936,0.090865671634674,-0.044699121266603,-0.074069060385227,0.184785157442093,0.046984896063805,0.008991688489914,0.144570410251617,0.046487800776958,0.100844942033291));
res += mul(Get(s1,0,-dy), float4x4(0.187794268131256,0.040038008242846,0.095536656677723,0.000348019442754,-0.006738393567502,0.108040548861027,-0.059811424463987,0.111941985785961,0.160877868533134,0.038429308682680,0.032970741391182,0.193554297089577,0.225386559963226,-0.173063442111015,0.060827907174826,0.122227199375629));
res += mul(Get(s1,0,0), float4x4(0.064176127314568,0.211220100522041,0.121233724057674,-0.092825651168823,-0.071297064423561,-0.092532612383366,0.083992712199688,-0.058095227926970,0.147987321019173,0.016915934160352,-0.000549022573978,-0.083209566771984,-0.076177135109901,-0.142901390790939,-0.120409421622753,-0.107986979186535));
res += mul(Get(s1,0,dy), float4x4(0.036733746528625,-0.007695817854255,0.086627610027790,-0.258821487426758,-0.003953945823014,-0.095292232930660,-0.024101402610540,-0.118946343660355,0.029170447960496,0.024855310097337,0.061673637479544,-0.041482906788588,-0.116395890712738,-0.228177323937416,-0.191605359315872,0.081200972199440));
res += mul(Get(s1,dx,-dy), float4x4(-0.053454436361790,0.014772024005651,-0.050906419754028,0.251873791217804,-0.105307191610336,0.041842535138130,0.015189494937658,-0.081611528992653,-0.151602596044540,-0.273008853197098,-0.039405860006809,-0.076271921396255,0.001880735857412,-0.014053333550692,0.068219050765038,-0.054400011897087));
res += mul(Get(s1,dx,0), float4x4(0.079360581934452,-0.305995732545853,0.006731660570949,0.146831080317497,-0.035869110375643,-0.004384046420455,-0.026268342509866,0.043494187295437,0.115494452416897,0.063827417790890,0.003949969075620,-0.076733440160751,0.027576388791203,0.038198571652174,0.059058316051960,-0.038404162973166));
res += mul(Get(s1,dx,dy), float4x4(0.183261379599571,0.040826622396708,-0.076735436916351,0.076600447297096,0.217660754919052,-0.020744677633047,0.221780031919479,-0.159284636378288,0.035055939108133,-0.096318885684013,-0.058750454336405,0.044489558786154,0.052076626569033,0.108162678778172,0.129522442817688,-0.079765632748604));
res += mul(Get(s2,-dx,-dy), float4x4(-0.112540394067764,-0.094517536461353,-0.159792363643646,-0.025543710216880,-0.287561863660812,-0.008335464634001,-0.079472750425339,-0.215215206146240,-0.048241037875414,-0.001928409445100,-0.054705664515495,0.085371814668179,0.018724119290709,-0.086179971694946,0.145850405097008,0.090135768055916));
res += mul(Get(s2,-dx,0), float4x4(-0.172287032008171,-0.005482721608132,0.083549603819847,0.003520937869325,-0.051935035735369,-0.038714889436960,-0.054976403713226,-0.060218159109354,-0.057900797575712,0.104524664580822,0.098635777831078,0.070403568446636,0.141745030879974,-0.024800844490528,0.106208048760891,-0.051258414983749));
res += mul(Get(s2,-dx,dy), float4x4(0.037444178014994,-0.017459850758314,-0.044862192124128,-0.160533890128136,-0.078389577567577,-0.010733482427895,0.101046279072762,0.040812145918608,-0.068388588726521,-0.040718119591475,-0.147124618291855,0.092930845916271,-0.094709113240242,0.022098738700151,-0.129140630364418,0.099571488797665));
res += mul(Get(s2,0,-dy), float4x4(0.108285747468472,0.123536221683025,0.136764645576477,0.020497113466263,0.105371259152889,-0.015827095136046,-0.065925441682339,0.174006059765816,0.077201783657074,-0.043527308851480,0.102409377694130,0.024337805807590,-0.064669378101826,-0.143529772758484,0.094851188361645,0.184092611074448));
res += mul(Get(s2,0,0), float4x4(0.085410341620445,-0.037304718047380,0.027004742994905,-0.228668153285980,0.053615696728230,-0.007096051704139,-0.090983510017395,-0.155200988054276,0.012237573973835,-0.087255105376244,0.149988502264023,-0.110215105116367,0.016182029619813,0.149861782789230,0.069015339016914,0.126629456877708));
res += mul(Get(s2,0,dy), float4x4(-0.211277961730957,-0.047250829637051,-0.146395802497864,0.037728540599346,-0.081770993769169,-0.122182264924049,0.038796123117208,0.142666146159172,0.132916077971458,0.014901285059750,0.150691539049149,0.015085053630173,-0.083311587572098,0.161414414644241,-0.148560777306557,-0.006882491987199));
res += mul(Get(s2,dx,-dy), float4x4(-0.108239375054836,-0.079290591180325,0.019143726676702,-0.056981105357409,0.131102427840233,-0.067994095385075,0.052342601120472,0.017788887023926,-0.309960752725601,0.187356621026993,-0.085102222859859,-0.013924127444625,-0.204340234398842,0.109647728502750,0.174152255058289,-0.080784246325493));
res += mul(Get(s2,dx,0), float4x4(0.044412314891815,0.043627403676510,-0.162844508886337,0.072649814188480,0.088358141481876,0.054386761039495,0.284811735153198,-0.135966286063194,-0.173851430416107,-0.046788893640041,-0.004589089192450,-0.075312234461308,0.060394581407309,0.016791835427284,0.131437987089157,-0.267426848411560));
res += mul(Get(s2,dx,dy), float4x4(-0.175496444106102,-0.219153687357903,-0.025683810934424,-0.164479255676270,0.154056012630463,-0.034603014588356,0.164019793272018,0.072677157819271,-0.075471423566341,-0.168368339538574,0.022468363866210,0.029406780377030,0.191284105181694,0.121079795062542,-0.084387324750423,0.064288787543774));
res += mul(Get(s3,-dx,-dy), float4x4(0.032289985567331,-0.144553482532501,-0.166678756475449,0.090038761496544,-0.068826586008072,-0.022773347795010,0.131896138191223,-0.068049125373363,0.089085981249809,0.172252282500267,0.093668900430202,-0.061349347233772,-0.041340019553900,-0.045743457973003,-0.046377394348383,0.022933429107070));
res += mul(Get(s3,-dx,0), float4x4(0.149416163563728,0.017329672351480,-0.193292245268822,-0.111228704452515,0.102510921657085,0.003820340381935,0.149401575326920,0.064403995871544,-0.002900632331148,0.101922787725925,0.085522674024105,-0.142163768410683,0.039561871439219,-0.088142566382885,-0.052940502762794,-0.020889675244689));
res += mul(Get(s3,-dx,dy), float4x4(0.061775695532560,0.016064180061221,-0.099417723715305,-0.079848721623421,0.143075570464134,-0.190650984644890,0.073581218719482,-0.300323307514191,-0.067556567490101,-0.000221096735913,-0.167112812399864,0.300043165683746,-0.194064646959305,-0.141932815313339,0.005350561812520,-0.210426241159439));
res += mul(Get(s3,0,-dy), float4x4(0.185031667351723,-0.002730350941420,0.101238481700420,0.013308600522578,-0.166802659630775,-0.056980803608894,-0.130607038736343,-0.031287185847759,0.064703710377216,0.060254506766796,-0.135311022400856,0.021513739600778,-0.068228051066399,0.025691105052829,0.097055293619633,-0.069875508546829));
res += mul(Get(s3,0,0), float4x4(0.059001412242651,-0.121899276971817,-0.007647614460438,0.024821681901813,0.061403464525938,0.227508276700974,-0.077843204140663,-0.142372936010361,-0.088388845324516,0.001305957674049,0.206142112612724,0.028354091569781,-0.063155114650726,0.068548828363419,-0.029133688658476,0.218325689435005));
res += mul(Get(s3,0,dy), float4x4(-0.139352947473526,0.026317993178964,-0.043434429913759,0.215572938323021,-0.051503166556358,-0.168325275182724,0.073442883789539,-0.045184593647718,-0.110678732395172,0.014259806834161,-0.061682872474194,0.150077074766159,0.014389824122190,-0.067444771528244,-0.234427914023399,-0.107815809547901));
res += mul(Get(s3,dx,-dy), float4x4(0.032365724444389,0.080574110150337,-0.058477662503719,0.037644155323505,-0.214590162038803,-0.114986687898636,-0.063352636992931,-0.104885935783386,0.033953305333853,0.150497913360596,0.156311705708504,-0.093390315771103,-0.042737096548080,-0.018946098163724,-0.212400317192078,-0.169243156909943));
res += mul(Get(s3,dx,0), float4x4(0.102286204695702,0.057112142443657,-0.062821470201015,0.132203534245491,-0.116804361343384,0.142296224832535,-0.081469170749187,-0.041557621210814,-0.116643138229847,-0.078248769044876,-0.015602985396981,0.006057242397219,-0.077461294829845,0.052449647337198,0.083635821938515,0.021870421245694));
res += mul(Get(s3,dx,dy), float4x4(0.056699853390455,-0.018961794674397,-0.020968116819859,0.111507900059223,-0.089556366205215,-0.036666095256805,0.085896916687489,-0.131524533033371,0.008302714675665,0.126660823822021,-0.078327797353268,0.182351425290108,0.035723317414522,0.183863893151283,-0.132230728864670,-0.004789566621184));
return max(float4(0,0,0,0), res);
}
