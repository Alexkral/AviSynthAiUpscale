sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.075868673622608,0.035710752010345,-0.003867128631100,-0.068260274827480);
res += mul(Get(s0,-dx,-dy), float4x4(-0.176240906119347,-0.065886959433556,-0.021844459697604,-0.035620789974928,0.071389742195606,0.065520845353603,-0.206714853644371,0.059716407209635,-0.033658150583506,-0.053695507347584,0.099316246807575,0.114057250320911,0.064498431980610,0.181966096162796,-0.191605329513550,0.082614131271839));
res += mul(Get(s0,-dx,0), float4x4(-0.090471513569355,0.329073011875153,0.070915825664997,-0.016063302755356,0.076056972146034,0.174285292625427,-0.056607928127050,-0.016927091404796,0.149537920951843,0.010074914433062,0.115451723337173,0.348566472530365,-0.062728323042393,0.115166284143925,0.115446992218494,-0.295339852571487));
res += mul(Get(s0,-dx,dy), float4x4(0.015444891527295,0.131204679608345,0.028362860903144,0.028105240315199,0.132351621985435,0.019123358651996,-0.048192407935858,-0.093864582479000,-0.098095335066319,-0.018559947609901,0.121622212231159,-0.148841202259064,-0.090493261814117,-0.060616638511419,0.055524341762066,0.067848384380341));
res += mul(Get(s0,0,-dy), float4x4(-0.091000109910965,0.258406311273575,0.031554315239191,0.025486666709185,0.310777187347412,-0.160535514354706,-0.048086259514093,-0.073421843349934,0.216993853449821,-0.263083040714264,0.488098770380020,-0.187680438160896,0.192972987890244,0.421746253967285,-0.517106890678406,0.180681928992271));
res += mul(Get(s0,0,0), float4x4(0.246782049536705,0.156478613615036,0.205147355794907,-0.412392556667328,-0.063213452696800,0.216239303350449,-0.594268560409546,0.265462636947632,0.942439258098602,-0.711920320987701,-0.217055529356003,-0.552364110946655,-0.123042374849319,-0.345057547092438,0.346925228834152,-0.186016663908958));
res += mul(Get(s0,0,dy), float4x4(0.085298776626587,0.008004118688405,0.270001381635666,-0.175438866019249,-0.172648280858994,-0.089388720691204,-0.034011509269476,-0.180909425020218,0.157840266823769,0.124535687267780,-0.167108252644539,0.249510094523430,-0.093351505696774,0.096374124288559,0.062770746648312,-0.203718468546867));
res += mul(Get(s0,dx,-dy), float4x4(-0.056565076112747,0.126929461956024,0.047711536288261,-0.222804591059685,0.108812294900417,0.240733116865158,-0.031709551811218,-0.254904538393021,-0.065596267580986,0.159583136439323,-0.076469294726849,0.004087167326361,0.005201268475503,0.017017984762788,-0.315962046384811,-0.557077288627625));
res += mul(Get(s0,dx,0), float4x4(0.080598354339600,0.175176918506622,-0.104040883481503,-0.399319261312485,-0.087801076471806,0.166419520974159,-0.105237379670143,-0.321114927530289,0.141637682914734,-0.115230791270733,0.054453480988741,0.058400388807058,0.095132112503052,-0.112352997064590,0.075195573270321,0.327127605676651));
res += mul(Get(s0,dx,dy), float4x4(0.094899281859398,0.054335564374924,-0.007662943098694,-0.394221484661102,-0.106581248342991,0.022373264655471,-0.037282135337591,0.296636492013931,-0.055498849600554,-0.073268808424473,0.134282469749451,0.055026575922966,0.047983836382627,0.020104587078094,0.124399721622467,0.040146902203560));
res += mul(Get(s1,-dx,-dy), float4x4(0.057005334645510,-0.369184076786041,0.102691814303398,-0.049743667244911,-0.120045572519302,0.007842381484807,0.145091205835342,0.210474029183388,-0.070735409855843,-0.163231447339058,-0.253511250019073,0.333526730537415,0.150044247508049,0.114015549421310,0.020837789401412,0.126611784100533));
res += mul(Get(s1,-dx,0), float4x4(0.257059842348099,0.020246241241693,0.054240111261606,-0.019554359838367,-0.269934087991714,0.044601619243622,-0.137627869844437,-0.158718511462212,0.088256306946278,0.260563701391220,0.057359322905540,0.300970166921616,-0.059776183217764,0.225642323493958,-0.040529605001211,0.204777047038078));
res += mul(Get(s1,-dx,dy), float4x4(0.211516112089157,-0.018009334802628,0.156602501869202,-0.238226577639580,0.015784319490194,0.249237865209579,-0.048013076186180,0.185383141040802,-0.046428825706244,-0.014729772694409,0.075935743749142,0.222996488213539,-0.114277020096779,-0.139318764209747,0.112722486257553,-0.043814595788717));
res += mul(Get(s1,0,-dy), float4x4(0.043830107897520,-0.022900922223926,0.233558401465416,-0.467791944742203,-0.526940584182739,-0.370258361101151,0.040624540299177,-0.304237633943558,-0.114537835121155,-0.167247146368027,-0.021237285807729,0.132926911115646,0.021972611546516,-0.597173273563385,0.598439812660217,-0.362479984760284));
res += mul(Get(s1,0,0), float4x4(-0.241402089595795,-0.291285157203674,0.141772702336311,-0.640805721282959,-0.332239568233490,0.282611817121506,0.170926570892334,0.268469363451004,-0.016388168558478,0.021549927070737,0.006426879204810,0.317413032054901,0.254882872104645,0.441983997821808,-0.031502213329077,0.078962840139866));
res += mul(Get(s1,0,dy), float4x4(0.239698961377144,-0.063513807952404,-0.061114903539419,-0.037592913955450,-0.144203662872314,-0.016003046184778,-0.070594586431980,0.050031661987305,0.004555498715490,0.017484132200480,-0.001974815502763,0.313583612442017,-0.069912940263748,-0.009114687331021,0.026912288740277,0.109356574714184));
res += mul(Get(s1,dx,-dy), float4x4(-0.080170720815659,0.231238201260567,0.240871071815491,0.119066864252090,-0.283021062612534,0.154770389199257,0.075725547969341,-0.575339555740356,-0.040127620100975,-0.064921975135803,-0.033399559557438,0.014500597491860,0.047010783106089,0.205493032932281,-0.101074598729610,-0.006968983449042));
res += mul(Get(s1,dx,0), float4x4(-0.130050301551819,-0.282735049724579,-0.034000061452389,-0.105366185307503,-0.149283304810524,0.144736185669899,-0.273070156574249,-0.151254326105118,-0.007927614264190,-0.052933182567358,0.067679956555367,0.183263257145882,-0.054420728236437,-0.057059615850449,0.105633668601513,0.081026688218117));
res += mul(Get(s1,dx,dy), float4x4(0.080719739198685,-0.081599585711956,0.049706630408764,-0.160488456487656,0.042445562779903,-0.147306695580482,0.068635053932667,0.249872952699661,-0.053532693535089,0.036656882613897,0.059283431619406,0.271747618913651,-0.052702099084854,-0.013226037845016,0.060848683118820,-0.118034198880196));
res += mul(Get(s2,-dx,-dy), float4x4(-0.028931174427271,0.085246279835701,0.012313949875534,-0.031266473233700,0.001517970464192,0.098422653973103,0.113498091697693,-0.148559406399727,0.083223722875118,-0.199693292379379,-0.018744863569736,0.142262652516365,-0.053993847221136,-0.069741979241371,-0.090613536536694,-0.142990648746490));
res += mul(Get(s2,-dx,0), float4x4(0.075109824538231,-0.011751163750887,0.071981973946095,0.081951148808002,0.170808762311935,-0.300679653882980,-0.196997329592705,0.039322443306446,0.084233865141869,-0.168728038668633,-0.120131202042103,0.083845496177673,-0.051398925483227,-0.034952763468027,0.006456998176873,-0.123392902314663));
res += mul(Get(s2,-dx,dy), float4x4(0.006006305571645,0.028544235974550,0.067726813256741,0.017741410061717,0.154158204793930,0.095700770616531,-0.037322077900171,0.226316690444946,-0.025610124692321,-0.001376197906211,-0.175897657871246,-0.106769017875195,-0.057578712701797,0.017536655068398,-0.098671860992908,-0.303302943706512));
res += mul(Get(s2,0,-dy), float4x4(0.003849863307551,-0.077773712575436,0.080521181225777,-0.019696613773704,0.203779026865959,0.672195315361023,0.033670768141747,0.169643118977547,-0.141900643706322,-0.218751534819603,0.287123262882233,-0.052832223474979,0.030374871566892,-0.207334861159325,0.136345326900482,-0.118302665650845));
res += mul(Get(s2,0,0), float4x4(-0.048683371394873,0.004938193131238,0.108625046908855,0.186852276325226,-1.253694772720337,-0.572749555110931,0.376015007495880,-0.388406306505203,-0.104707598686218,-0.317798972129822,0.016433153301477,-0.115310110151768,0.131207555532455,-0.127493366599083,-0.706815242767334,-0.078303374350071));
res += mul(Get(s2,0,dy), float4x4(-0.008681007660925,0.011823335662484,0.037385486066341,0.068943522870541,-0.005725828465074,0.002401815028861,-0.113159678876400,0.001569489948452,0.059579685330391,-0.131444111466408,-0.117231845855713,0.136381670832634,0.056141346693039,0.103185161948204,-0.214308470487595,-0.240960195660591));
res += mul(Get(s2,dx,-dy), float4x4(0.021645961329341,-0.054529886692762,-0.089867509901524,0.090653486549854,0.075828127563000,0.006224452052265,0.043934375047684,-0.067969545722008,-0.104756824672222,-0.580395221710205,0.288183063268661,0.186275899410248,-0.037836305797100,-0.281366884708405,-0.149161040782928,-0.250442504882813));
res += mul(Get(s2,dx,0), float4x4(0.200171172618866,0.280878484249115,-0.128009766340256,0.354526072740555,0.091364510357380,-0.231188848614693,0.028368700295687,0.292112708091736,0.058047823607922,-0.104723244905472,-0.148319542407990,0.057268720120192,-0.013671019114554,-0.188601195812225,-0.027048420161009,0.180564790964127));
res += mul(Get(s2,dx,dy), float4x4(-0.049254275858402,0.007748651318252,-0.032225709408522,-0.032287932932377,0.205150067806244,0.065306909382343,-0.046082042157650,-0.016132012009621,-0.076085999608040,-0.024538481608033,-0.178128957748413,0.289388656616211,0.037966396659613,0.086771599948406,0.000655525072943,-0.161647468805313));
res = max(float4(0, 0, 0, 0), res) + float4(-0.730809688568115,-0.096795976161957,-0.051289565861225,0.248375087976456) * min(float4(0, 0, 0, 0), res);
return res;
}