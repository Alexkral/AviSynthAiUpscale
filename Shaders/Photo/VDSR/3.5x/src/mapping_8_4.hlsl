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
res += mul(Get(s0,-dx,-dy), float4x4(-0.113377109169960,-0.003994011320174,0.135194197297096,0.098724417388439,0.144796997308731,-0.051460109651089,-0.125503197312355,0.088157318532467,0.166252389550209,0.122333846986294,-0.163174971938133,0.161785185337067,0.127543836832047,0.036455739289522,0.106873005628586,0.038885429501534));
res += mul(Get(s0,-dx,0), float4x4(0.064059339463711,-0.016847675666213,0.069775834679604,-0.088580176234245,-0.092841550707817,-0.163938254117966,-0.080528810620308,0.079935826361179,-0.015938267111778,0.073904886841774,0.143872365355492,0.107226699590683,0.018229657784104,0.091495171189308,0.192909717559814,-0.139826104044914));
res += mul(Get(s0,-dx,dy), float4x4(-0.001836791401729,0.148935958743095,0.025249723345041,0.048189263790846,0.000488666584715,-0.006469536572695,0.125169932842255,0.009452120400965,0.042228825390339,-0.137645125389099,-0.045647442340851,0.128526300191879,0.214388981461525,-0.160975977778435,0.012748253531754,-0.053586050868034));
res += mul(Get(s0,0,-dy), float4x4(-0.016092970967293,0.006014985498041,0.065802052617073,-0.069329991936684,0.069786876440048,0.063118994235992,-0.219506546854973,-0.055208284407854,0.069424487650394,0.066527597606182,-0.052464067935944,-0.242444425821304,0.074436530470848,-0.111013732850552,0.160427436232567,-0.011261196807027));
res += mul(Get(s0,0,0), float4x4(-0.110974237322807,-0.028114845976233,0.031120622530580,0.043163228780031,-0.016074059531093,-0.055121213197708,-0.066717475652695,0.102691978216171,-0.111406192183495,0.083243221044540,-0.058906625956297,0.093975700438023,-0.159539639949799,-0.101028837263584,-0.134208664298058,0.038996405899525));
res += mul(Get(s0,0,dy), float4x4(-0.040505707263947,-0.066418260335922,-0.043618820607662,-0.028868906199932,-0.008587197400630,0.020348930731416,-0.183809608221054,-0.002712692134082,-0.063653200864792,0.119719050824642,-0.325007766485214,0.039174228906631,0.067176491022110,-0.063049502670765,0.059031058102846,0.070359297096729));
res += mul(Get(s0,dx,-dy), float4x4(-0.010561716742814,-0.118602864444256,-0.007057945709676,-0.280967533588409,0.127738043665886,0.091733425855637,-0.099602796137333,-0.265373229980469,-0.017590545117855,-0.160911038517952,0.024731773883104,0.035568375140429,-0.005265315994620,0.131510481238365,-0.085660055279732,0.034743335098028));
res += mul(Get(s0,dx,0), float4x4(0.036632169038057,0.048236321657896,0.108989253640175,-0.115073636174202,-0.040389407426119,-0.047596532851458,-0.046329587697983,-0.125438094139099,0.029630141332746,-0.171288505196571,-0.052359104156494,-0.214492261409760,0.042839966714382,0.013401661068201,-0.222227811813354,-0.003126072231680));
res += mul(Get(s0,dx,dy), float4x4(0.145007953047752,-0.055851139128208,0.000107376392407,-0.083134613931179,-0.055903844535351,-0.055090647190809,0.038642559200525,-0.314865767955780,-0.009275621734560,-0.082575693726540,-0.141844868659973,-0.124459445476532,0.098796978592873,0.002418654970825,0.144534468650818,0.032183006405830));
res += mul(Get(s1,-dx,-dy), float4x4(0.106074132025242,0.032120715826750,0.085983119904995,-0.010133346542716,-0.199241518974304,0.116143569350243,0.106107443571091,-0.042610764503479,0.166321024298668,0.077351070940495,-0.004684000741690,0.061905067414045,-0.327933430671692,-0.076770991086960,-0.008468514308333,-0.196912139654160));
res += mul(Get(s1,-dx,0), float4x4(0.155709937214851,0.125903859734535,0.167757824063301,0.007984934374690,0.053007666021585,-0.009538697078824,0.095223292708397,0.055220425128937,-0.047850199043751,0.121783763170242,0.068670816719532,-0.061349570751190,0.093822263181210,-0.184716701507568,0.016919033601880,-0.082987971603870));
res += mul(Get(s1,-dx,dy), float4x4(0.131437361240387,0.010507279075682,0.107305772602558,-0.043037641793489,0.003317885100842,-0.012994113378227,-0.132870957255363,0.009752359241247,0.186089977622032,-0.037875499576330,0.028548026457429,0.094572491943836,-0.103259660303593,-0.020807622000575,-0.107846997678280,0.007760167121887));
res += mul(Get(s1,0,-dy), float4x4(0.025055211037397,-0.086933627724648,0.020032683387399,-0.005977962631732,0.132859826087952,-0.042677268385887,0.018954278901219,-0.250359088182449,-0.031007619574666,-0.055652879178524,-0.011440147645772,-0.153644099831581,0.193978592753410,0.004856161307544,-0.055605050176382,-0.143615260720253));
res += mul(Get(s1,0,0), float4x4(0.097216583788395,-0.191095724701881,0.196900144219398,-0.041991598904133,-0.183335706591606,0.166711479425430,-0.141022756695747,0.113441735506058,-0.031704291701317,-0.063391312956810,0.058637239038944,-0.001148206531070,-0.008298817090690,-0.024441821500659,-0.025053730234504,-0.013134442269802));
res += mul(Get(s1,0,dy), float4x4(-0.011662330478430,0.249039441347122,0.141279906034470,-0.005478169303387,0.080695070326328,-0.050264015793800,-0.060616966336966,-0.016066500917077,0.004678816068918,0.152805089950562,0.052369281649590,-0.124134920537472,0.074863672256470,0.060005702078342,0.102721124887466,0.090663820505142));
res += mul(Get(s1,dx,-dy), float4x4(-0.121680222451687,0.186624214053154,0.080197878181934,0.008090554736555,0.115831941366196,-0.036633402109146,0.060940228402615,0.105465903878212,0.120123207569122,0.088464312255383,0.253565728664398,-0.272226125001907,-0.004379966761917,-0.241994604468346,0.082539014518261,-0.188097983598709));
res += mul(Get(s1,dx,0), float4x4(-0.048296749591827,0.079680047929287,0.006908845156431,-0.105251684784889,-0.136565610766411,-0.073247335851192,0.087926432490349,-0.043255556374788,0.097314357757568,0.045614216476679,-0.033674225211143,0.033511735498905,-0.029281795024872,-0.001926534692757,0.090613581240177,0.092845484614372));
res += mul(Get(s1,dx,dy), float4x4(0.026660433039069,0.203341409564018,-0.036469534039497,0.016872527077794,0.086927793920040,0.114222973585129,0.182324871420860,-0.099772699177265,-0.017781123518944,-0.072866179049015,0.044511232525110,-0.036089144647121,-0.072930410504341,-0.020632283762097,0.131427600979805,0.123758584260941));
res += mul(Get(s2,-dx,-dy), float4x4(-0.069783322513103,-0.101228810846806,0.047331210225821,0.054207064211369,-0.034552291035652,-0.023543920367956,0.001150456955656,0.019025672227144,0.045785691589117,-0.044519357383251,0.149776786565781,0.025024669244885,0.038600392639637,-0.000057912584452,-0.012374366633594,0.040020618587732));
res += mul(Get(s2,-dx,0), float4x4(0.022673053666949,-0.004010275937617,-0.162283137440681,0.081997111439705,0.008039741776884,-0.132100149989128,-0.089098088443279,-0.058790165930986,-0.197250172495842,0.076810494065285,0.030015293508768,0.026479097083211,0.097299672663212,-0.001071926206350,-0.049819353967905,0.205361887812614));
res += mul(Get(s2,-dx,dy), float4x4(-0.080703042447567,-0.101204678416252,-0.015097248367965,0.026193926110864,-0.088769085705280,0.139935255050659,0.178902193903923,0.022977504879236,0.093051739037037,0.058050487190485,0.210974499583244,-0.030341867357492,-0.014831199310720,-0.021693345159292,0.083330921828747,0.089903049170971));
res += mul(Get(s2,0,-dy), float4x4(0.185716852545738,0.075464323163033,-0.046171050518751,0.102710090577602,0.069869585335255,-0.039189774543047,0.191767007112503,0.045261129736900,-0.110511720180511,0.148517996072769,-0.109935916960239,0.113531284034252,0.085339508950710,-0.238040372729301,0.031236898154020,-0.031412091106176));
res += mul(Get(s2,0,0), float4x4(-0.043707981705666,0.025216408073902,-0.000946984975599,0.097222201526165,-0.072605885565281,0.088910922408104,-0.301446706056595,0.066374711692333,-0.137752339243889,-0.066692657768726,-0.116147302091122,0.105132453143597,-0.018232684582472,0.018381651490927,-0.054229162633419,0.106332696974277));
res += mul(Get(s2,0,dy), float4x4(-0.001749240793288,-0.039453294128180,-0.099481634795666,-0.055099155753851,-0.025147318840027,-0.048212666064501,0.224747791886330,0.122815273702145,0.128792837262154,-0.055746279656887,-0.156239852309227,0.086212165653706,0.047798331826925,-0.058140754699707,-0.061372447758913,-0.051432974636555));
res += mul(Get(s2,dx,-dy), float4x4(0.206777602434158,-0.099593892693520,-0.037709448486567,0.038861338049173,-0.027546143159270,0.077264025807381,0.059027291834354,-0.219110742211342,0.144924461841583,0.002459084847942,-0.021145915612578,-0.087635435163975,-0.086083874106407,-0.029534541070461,0.137961938977242,-0.014695876277983));
res += mul(Get(s2,dx,0), float4x4(0.090092830359936,0.153171196579933,-0.132369965314865,-0.115105427801609,0.010496948845685,-0.012526696547866,-0.116979181766510,-0.077118009328842,0.144552513957024,0.137709081172943,-0.084953278303146,0.001826860243455,0.091478608548641,-0.164536848664284,-0.161301240324974,0.086628004908562));
res += mul(Get(s2,dx,dy), float4x4(-0.120977066457272,0.098181284964085,-0.034683305770159,0.034138262271881,0.066881082952023,0.094160512089729,-0.097860723733902,0.129234328866005,0.017715621739626,-0.101639948785305,-0.231663584709167,-0.052616838365793,-0.018620628863573,-0.296035259962082,0.089634068310261,0.022964958101511));
res += mul(Get(s3,-dx,-dy), float4x4(0.151368111371994,-0.020891664549708,0.017282618209720,-0.019583366811275,-0.126656949520111,-0.109346710145473,-0.203288838267326,0.040568105876446,-0.022361971437931,-0.055771064013243,0.063435643911362,-0.006540669128299,0.017432063817978,-0.141876712441444,-0.066187754273415,0.102389544248581));
res += mul(Get(s3,-dx,0), float4x4(0.006168909836560,-0.137510195374489,0.046678267419338,0.075886338949203,0.124475061893463,-0.210947424173355,0.060654543340206,0.142898857593536,0.208491861820221,0.160035178065300,-0.094395555555820,0.135663658380508,0.108851298689842,-0.166110649704933,0.073882430791855,0.323561370372772));
res += mul(Get(s3,-dx,dy), float4x4(0.075532525777817,0.034419398754835,0.019273720681667,-0.044396847486496,0.015724418684840,0.093636654317379,0.036588866263628,0.097624331712723,0.040348868817091,-0.028442706912756,-0.019327115267515,-0.064701154828072,-0.149516806006432,0.015013815835118,0.007507300004363,-0.068299569189548));
res += mul(Get(s3,0,-dy), float4x4(0.045308981090784,0.046865031123161,-0.019007418304682,-0.192054644227028,0.122078575193882,-0.127712905406952,-0.280620366334915,0.019749227911234,-0.049715001136065,0.038729682564735,-0.040483184158802,-0.060422118753195,0.219262868165970,-0.086234122514725,0.310572445392609,-0.126912370324135));
res += mul(Get(s3,0,0), float4x4(0.002728709718212,0.003976754378527,-0.016065863892436,-0.058294434100389,0.136252194643021,0.048850677907467,-0.149911999702454,-0.111524805426598,0.161688506603241,-0.037610776722431,0.047159194946289,-0.175025194883347,-0.049071513116360,0.067900501191616,-0.129040479660034,-0.166105777025223));
res += mul(Get(s3,0,dy), float4x4(-0.040882311761379,0.116111896932125,-0.204479098320007,0.192692846059799,-0.095398992300034,-0.141158819198608,-0.127216085791588,-0.045833852142096,-0.038006290793419,0.005921661388129,-0.147088214755058,0.023684078827500,-0.086840711534023,-0.047678627073765,-0.098661407828331,0.035779897123575));
res += mul(Get(s3,dx,-dy), float4x4(-0.007268853951246,0.146753966808319,-0.008500597439706,-0.154406517744064,0.272362738847733,-0.152276605367661,-0.088682025671005,-0.123421803116798,-0.034480921924114,-0.220869660377502,0.055902525782585,-0.036696359515190,-0.039233852177858,0.036826848983765,0.156951606273651,-0.063456013798714));
res += mul(Get(s3,dx,0), float4x4(-0.148229420185089,-0.214659169316292,-0.040895044803619,0.078263580799103,0.018520606681705,0.118030309677124,0.102962538599968,-0.129359990358353,-0.154661938548088,-0.101895213127136,0.117076866328716,-0.183661386370659,0.073402225971222,-0.157644212245941,-0.024787241593003,-0.074532896280289));
res += mul(Get(s3,dx,dy), float4x4(0.034254241734743,-0.058150246739388,-0.114611588418484,0.007195662241429,0.128551706671715,-0.188772559165955,0.024903031066060,-0.056078739464283,0.128138661384583,0.013614749535918,0.054176419973373,0.041067291051149,-0.018039733171463,-0.013016682118177,0.010592663660645,0.069974362850189));
return max(float4(0,0,0,0), res);
}
