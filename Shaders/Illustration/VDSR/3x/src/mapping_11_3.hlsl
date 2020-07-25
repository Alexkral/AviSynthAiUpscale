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
res += mul(Get(s0,-dx,-dy), float4x4(-0.071685343980789,0.008522023446858,0.227388188242912,0.053926359862089,-0.075442165136337,-0.067495562136173,0.139774948358536,0.037265546619892,-0.098092362284660,0.115068413317204,-0.176223054528236,-0.070552580058575,0.087893441319466,-0.062774315476418,-0.081572860479355,-0.091973878443241));
res += mul(Get(s0,-dx,0), float4x4(0.019692588597536,0.029265092685819,0.026981530711055,0.069124586880207,-0.024063099175692,0.062007360160351,0.029529441148043,0.184242621064186,0.070061020553112,-0.163477256894112,-0.084691196680069,0.162779524922371,0.101794965565205,0.103220470249653,-0.074306607246399,0.104423299431801));
res += mul(Get(s0,-dx,dy), float4x4(0.028999287635088,0.065893962979317,-0.000624234206043,0.054746139794588,-0.017787834629416,-0.001018010894768,-0.174299269914627,0.117772795259953,-0.040973238646984,0.024237498641014,-0.228956162929535,0.029087293893099,0.062382020056248,0.073042847216129,-0.067284554243088,-0.039744492620230));
res += mul(Get(s0,0,-dy), float4x4(0.059034962207079,-0.104021057486534,0.249377474188805,-0.023724554106593,0.064452618360519,0.107081912457943,-0.009971697814763,0.106992185115814,0.221672371029854,-0.026081331074238,0.176598057150841,-0.131786271929741,0.063079975545406,-0.109160996973515,-0.167694687843323,0.135263353586197));
res += mul(Get(s0,0,0), float4x4(-0.013973425142467,-0.060119215399027,0.102402582764626,-0.025833452120423,0.017111513763666,-0.047821629792452,-0.031252287328243,0.108185403048992,0.140162229537964,-0.280819773674011,-0.148979455232620,0.096816301345825,0.180397912859917,0.069729231297970,0.017157109454274,-0.000907109817490));
res += mul(Get(s0,0,dy), float4x4(-0.305040359497070,-0.064196065068245,0.125964835286140,0.082647725939751,-0.081003025174141,-0.258771806955338,-0.045032370835543,-0.014762854203582,0.072136886417866,0.201406061649323,-0.066707007586956,0.159526959061623,0.018015850335360,-0.037838224321604,0.176934272050858,-0.075168572366238));
res += mul(Get(s0,dx,-dy), float4x4(0.021046200767159,0.147198930382729,0.218237742781639,-0.132551178336143,-0.004560480359942,-0.093877241015434,-0.005171968135983,0.110031850636005,-0.079987689852715,-0.110907010734081,0.207236990332603,0.184415400028229,-0.053361825644970,-0.205773830413818,0.072699792683125,-0.067703008651733));
res += mul(Get(s0,dx,0), float4x4(-0.000166810292285,-0.005453689489514,0.129150301218033,0.121590852737427,-0.060536794364452,0.008663189597428,-0.027950588613749,0.189425408840179,-0.030589714646339,0.032680269330740,0.052565842866898,0.005353779532015,-0.008153546601534,0.048347622156143,0.095072232186794,-0.023037750273943));
res += mul(Get(s0,dx,dy), float4x4(-0.024347916245461,-0.105004534125328,0.030909307301044,0.123596772551537,-0.090782143175602,-0.060974985361099,0.127477496862411,0.022065930068493,-0.042509511113167,0.081122599542141,0.220788881182671,-0.082986757159233,0.035311385989189,0.180950731039047,-0.160241693258286,-0.121545918285847));
res += mul(Get(s1,-dx,-dy), float4x4(-0.148160293698311,0.051341008394957,0.019068945199251,0.054958797991276,-0.060934390872717,0.008542416617274,-0.234495416283607,0.014650881290436,-0.112991683185101,0.212183848023415,0.016462309285998,-0.121883071959019,-0.256153672933578,0.013468441553414,0.092415779829025,-0.037758883088827));
res += mul(Get(s1,-dx,0), float4x4(0.022403253242373,-0.044655013829470,0.158201307058334,0.066233709454536,0.335449874401093,0.002780396258458,-0.092483446002007,-0.022559093311429,-0.042133945971727,-0.139298111200333,-0.055224593728781,-0.088262550532818,-0.331154137849808,-0.116474896669388,0.042799308896065,0.087620556354523));
res += mul(Get(s1,-dx,dy), float4x4(0.048828560858965,-0.119228005409241,0.089489325881004,-0.123868778347969,-0.062293689697981,0.012950653210282,-0.085263751447201,-0.119772411882877,0.179859757423401,-0.014026535674930,-0.084367245435715,0.067130804061890,-0.286553502082825,0.109368652105331,0.054418936371803,0.126102983951569));
res += mul(Get(s1,0,-dy), float4x4(0.042564224451780,0.005840125493705,0.001813174691051,-0.002864786190912,0.056943800300360,-0.105628468096256,-0.020742602646351,0.144479081034660,0.108678430318832,-0.177086174488068,-0.076325617730618,0.036906655877829,-0.203889876604080,0.000336245255312,-0.050351366400719,-0.100669287145138));
res += mul(Get(s1,0,0), float4x4(-0.036518193781376,-0.077481016516685,0.220274820923805,0.013270845636725,0.030481191352010,-0.127263396978378,-0.102823831140995,-0.003522966755554,-0.014944190159440,-0.060985602438450,-0.050299014896154,0.097314782440662,-0.114186234772205,-0.078458100557327,0.016368566080928,-0.053665217012167));
res += mul(Get(s1,0,dy), float4x4(-0.017891779541969,-0.102578192949295,0.203366532921791,-0.012937663123012,-0.010137234814465,-0.135361328721046,-0.070700943470001,0.111724585294724,0.199325278401375,0.033804580569267,-0.186559408903122,0.166493579745293,0.088894903659821,-0.147827789187431,-0.016821667551994,-0.016102647408843));
res += mul(Get(s1,dx,-dy), float4x4(0.151558682322502,-0.066763065755367,0.262334793806076,0.049919392913580,0.060390245169401,-0.031070457771420,0.085885316133499,0.271050989627838,-0.052734915167093,-0.223248586058617,-0.178772285580635,0.038151789456606,-0.031265653669834,-0.036218315362930,-0.127253651618958,0.049593802541494));
res += mul(Get(s1,dx,0), float4x4(0.136596500873566,-0.181019246578217,0.051436565816402,-0.041107390075922,-0.141692131757736,-0.074961923062801,0.100526571273804,0.082200184464455,0.055817212909460,0.104857392609119,0.103413470089436,0.032473314553499,-0.102597728371620,0.019356692209840,-0.011955750174820,-0.051231287419796));
res += mul(Get(s1,dx,dy), float4x4(0.121456086635590,-0.022982040420175,-0.005406741984189,-0.111314713954926,-0.019855033606291,0.013977766036987,0.099186487495899,-0.156314253807068,0.066620551049709,0.110577538609505,-0.002199707087129,-0.008575530722737,0.075954504311085,0.098891608417034,-0.042996924370527,-0.016903191804886));
res += mul(Get(s2,-dx,-dy), float4x4(0.066186226904392,-0.069312207400799,0.196412563323975,0.113712057471275,0.135947421193123,-0.062111768871546,0.083581589162350,-0.020022373646498,-0.025824522599578,-0.072341680526733,0.186161130666733,0.129135772585869,-0.016484271734953,-0.252611368894577,-0.128446444869041,0.223728060722351));
res += mul(Get(s2,-dx,0), float4x4(0.126073643565178,0.035690512508154,-0.010793389752507,-0.286185353994370,0.118486382067204,-0.138813197612762,0.098854929208755,0.148624286055565,0.060423821210861,-0.057872131466866,-0.028807271271944,0.187683463096619,-0.153092145919800,-0.182330027222633,0.170447081327438,-0.027146248146892));
res += mul(Get(s2,-dx,dy), float4x4(-0.077694520354271,-0.111269354820251,-0.091009251773357,-0.070467188954353,-0.097202152013779,-0.068022400140762,0.075288921594620,-0.241272076964378,-0.083833895623684,0.192014589905739,-0.061587408185005,0.000911481096409,-0.058248512446880,-0.189550623297691,0.036388374865055,-0.004611487034708));
res += mul(Get(s2,0,-dy), float4x4(-0.104550272226334,-0.128506213426590,-0.151550218462944,-0.142311379313469,-0.141071617603302,0.080944634974003,0.014227149076760,-0.201337888836861,-0.018462330102921,0.017748862504959,0.028563614934683,-0.133305609226227,-0.000827462645248,-0.130773752927780,-0.043006591498852,0.218515604734421));
res += mul(Get(s2,0,0), float4x4(0.079397954046726,0.113906629383564,-0.114786453545094,0.054753426462412,-0.153591975569725,0.087575368583202,0.006454197689891,-0.075204946100712,-0.030867982655764,-0.053038571029902,0.013731275685132,0.319061458110809,0.124541044235229,-0.007058835122734,0.102593198418617,0.047875132411718));
res += mul(Get(s2,0,dy), float4x4(-0.244386672973633,-0.151659652590752,-0.115518674254417,0.102351956069469,0.065525680780411,-0.015314340591431,-0.154214948415756,0.044426299631596,0.175038605928421,0.211410954594612,0.166428893804550,-0.105261392891407,-0.167296007275581,0.007964259013534,0.015669323503971,-0.044289935380220));
res += mul(Get(s2,dx,-dy), float4x4(0.026554329320788,0.076846547424793,0.022453483194113,0.013260468840599,-0.185152664780617,-0.149368092417717,-0.144264757633209,0.068090185523033,-0.053642999380827,0.023340875282884,-0.103003777563572,0.063842318952084,-0.182570174336433,0.084371313452721,0.082748793065548,0.008181343786418));
res += mul(Get(s2,dx,0), float4x4(-0.144356265664101,0.109687842428684,0.049647029489279,-0.048336550593376,-0.134573340415955,-0.043740209192038,0.141144514083862,0.087262764573097,-0.097574636340141,0.220176354050636,-0.167124196887016,-0.029100041836500,-0.235036373138428,-0.109674043953419,0.095891445875168,-0.181491836905479));
res += mul(Get(s2,dx,dy), float4x4(-0.088208213448524,-0.059396114200354,0.031259324401617,0.020191967487335,0.057036463171244,-0.050652649253607,-0.175741836428642,-0.219597801566124,0.012568756006658,0.128757521510124,0.101330704987049,-0.028462171554565,0.106216751039028,0.078067533671856,-0.022274665534496,-0.089343845844269));
res += mul(Get(s3,-dx,-dy), float4x4(0.118262514472008,0.011605056002736,-0.262631535530090,-0.103776641190052,0.009834793396294,-0.118834532797337,0.044647760689259,-0.102533027529716,-0.107675470411777,-0.055577959865332,-0.076940327882767,0.005179085768759,0.044811554253101,0.005013774149120,0.085636205971241,-0.025652352720499));
res += mul(Get(s3,-dx,0), float4x4(-0.117125332355499,-0.014349725097418,-0.107025012373924,0.120490409433842,0.191740512847900,0.038799580186605,0.039995558559895,0.033575169742107,-0.019063951447606,0.013199700973928,0.086692653596401,0.007879749871790,-0.168764457106590,0.000389963155612,0.083798035979271,0.122610963881016));
res += mul(Get(s3,-dx,dy), float4x4(-0.076605975627899,0.021274764090776,-0.072657734155655,0.086043730378151,0.239277064800262,-0.097793444991112,0.143146514892578,0.087779551744461,-0.108564220368862,-0.220242872834206,0.040196947753429,-0.137878432869911,0.006622192449868,-0.084869921207428,-0.043696407228708,0.006184433121234));
res += mul(Get(s3,0,-dy), float4x4(-0.029735725373030,0.114827267825603,-0.201786071062088,-0.003775514196604,0.043169632554054,0.157849922776222,0.074768029153347,-0.101074539124966,-0.044239424169064,-0.081219203770161,-0.150395974516869,0.164866760373116,0.054227277636528,-0.006810883525759,-0.009934559464455,0.107700020074844));
res += mul(Get(s3,0,0), float4x4(-0.024179447442293,-0.036097247153521,0.001542882062495,-0.172395348548889,0.083669692277908,-0.212567508220673,-0.043039433658123,0.034106981009245,-0.005388780497015,0.004054677207023,0.043294914066792,0.048013564199209,0.167314365506172,0.107542797923088,-0.142595812678337,0.060256242752075));
res += mul(Get(s3,0,dy), float4x4(0.062094211578369,-0.088568739593029,0.123092532157898,-0.077827312052250,0.079494163393974,-0.170681297779083,0.018287267535925,0.019073452800512,0.320721656084061,-0.156569421291351,-0.061716768890619,0.201257333159447,0.017383104190230,0.095979824662209,0.093582920730114,0.026004578918219));
res += mul(Get(s3,dx,-dy), float4x4(0.004436884541065,-0.039323568344116,0.059979524463415,-0.141698732972145,0.139534115791321,0.084834180772305,-0.027997134253383,0.017233414575458,0.012300606817007,-0.033553816378117,-0.183841347694397,0.151395112276077,-0.163254469633102,-0.128235578536987,-0.113823585212231,-0.144080251455307));
res += mul(Get(s3,dx,0), float4x4(0.000075876152550,0.152315869927406,-0.026317728683352,-0.203089773654938,-0.168898433446884,-0.059178866446018,0.028989508748055,0.182943105697632,-0.056778714060783,-0.043713372200727,-0.128925487399101,0.172094151377678,-0.071468055248260,0.141727671027184,0.117950893938541,-0.011883863247931));
res += mul(Get(s3,dx,dy), float4x4(0.111597217619419,0.072673499584198,-0.118366487324238,-0.090535432100296,-0.055450774729252,0.039955582469702,0.042246304452419,-0.050328940153122,-0.308686792850494,-0.079204834997654,0.014336048625410,0.122355781495571,0.128629818558693,0.052751667797565,0.039603527635336,0.025708893314004));
return max(float4(0,0,0,0), res);
}
