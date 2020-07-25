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
res += mul(Get(s0,-dx,-dy), float4x4(0.160014450550079,0.024397334083915,0.043029408901930,0.002026052912697,0.055755633860826,0.074990607798100,-0.044367190450430,-0.040182832628489,0.096264965832233,0.138942062854767,0.022458180785179,-0.257335692644119,-0.015534185804427,-0.012613706290722,0.072946466505527,0.120193094015121));
res += mul(Get(s0,-dx,0), float4x4(-0.046548843383789,-0.130058065056801,-0.135751292109489,0.105274543166161,0.088980913162231,-0.000015543644622,0.054713446646929,0.163252040743828,0.174769446253777,-0.089709974825382,-0.083779439330101,-0.105377316474915,0.066373579204082,-0.082732282578945,-0.198606267571449,0.142576143145561));
res += mul(Get(s0,-dx,dy), float4x4(-0.040272802114487,-0.053728051483631,0.043359380215406,0.148109823465347,0.083197526633739,0.033767957240343,0.027239518240094,-0.099644027650356,0.013731420971453,0.020467124879360,0.055064354091883,-0.135288700461388,0.091446876525879,-0.101156599819660,-0.106496848165989,-0.038665648549795));
res += mul(Get(s0,0,-dy), float4x4(0.070530854165554,0.087222054600716,0.007506655063480,0.059645663946867,0.001710948301479,-0.050352901220322,0.032509468495846,-0.034514807164669,-0.059846322983503,-0.121924452483654,-0.100128106772900,0.060965739190578,0.109808973968029,-0.114205591380596,-0.070454508066177,-0.057337705045938));
res += mul(Get(s0,0,0), float4x4(-0.169849753379822,-0.103593185544014,0.139161378145218,-0.161005258560181,-0.126060709357262,-0.012524635531008,-0.024035537615418,-0.109577782452106,0.101252332329750,0.049560885876417,0.208263009786606,0.085126429796219,0.026342105120420,0.032836541533470,-0.051030617207289,-0.088973864912987));
res += mul(Get(s0,0,dy), float4x4(-0.108364015817642,-0.017037604004145,-0.056377399712801,0.114992491900921,-0.154710635542870,0.074794329702854,-0.010581730864942,0.049688741564751,-0.075104348361492,-0.001697471830994,0.111501485109329,-0.200009346008301,-0.090474538505077,0.027779450640082,-0.116873368620872,0.049247905611992));
res += mul(Get(s0,dx,-dy), float4x4(-0.068064436316490,-0.081587307155132,-0.120066575706005,0.075367487967014,0.005530185066164,-0.117174334824085,-0.012652150355279,0.035454500466585,0.140380129218102,-0.087218679487705,-0.136760771274567,-0.154431015253067,0.019237142056227,-0.072034142911434,0.066074743866920,0.070446729660034));
res += mul(Get(s0,dx,0), float4x4(0.110671795904636,-0.087097391486168,0.014547932893038,0.011905823834240,0.156643256545067,-0.069379813969135,-0.005169617012143,-0.059949580579996,0.046281676739454,0.044067975133657,0.143241494894028,-0.038230825215578,-0.141872748732567,0.066767781972885,-0.049203760921955,-0.136006101965904));
res += mul(Get(s0,dx,dy), float4x4(0.064277283847332,-0.087712302803993,0.085968524217606,0.208672270178795,0.081370055675507,0.092500835657120,-0.132279887795448,-0.128213688731194,-0.072144277393818,0.104991711676121,0.017905209213495,0.075563229620457,0.034672051668167,-0.094401538372040,-0.015782739967108,-0.008847196586430));
res += mul(Get(s1,-dx,-dy), float4x4(0.053720194846392,0.133798778057098,-0.024159066379070,-0.038691420108080,-0.032093811780214,0.054251506924629,0.092837467789650,-0.064962580800056,-0.033089302480221,0.065600186586380,0.056868065148592,-0.003144955029711,-0.138240918517113,-0.066948063671589,0.129037961363792,-0.015164097771049));
res += mul(Get(s1,-dx,0), float4x4(-0.008565132506192,-0.192983999848366,-0.011031855829060,0.066594570875168,-0.034676130861044,0.096147216856480,-0.115276083350182,-0.194222480058670,-0.051887165755033,0.058692336082458,0.062085043638945,0.215700641274452,0.059939995408058,-0.003180496394634,0.135670796036720,-0.105951838195324));
res += mul(Get(s1,-dx,dy), float4x4(-0.109293922781944,-0.023306582123041,0.106191404163837,0.110127247869968,-0.028188770636916,-0.045269262045622,0.069967001676559,-0.100601941347122,0.138089209794998,-0.133925244212151,-0.025020912289619,0.095359928905964,0.066291727125645,0.026118200272322,0.050038650631905,0.184504061937332));
res += mul(Get(s1,0,-dy), float4x4(0.136983767151833,0.066100798547268,-0.136100873351097,0.112947471439838,-0.027321236208081,0.118508778512478,0.018544498831034,0.146283179521561,0.059237875044346,-0.139380544424057,0.099144607782364,-0.224667251110077,-0.037391241639853,0.015130946412683,-0.131079584360123,-0.022762032225728));
res += mul(Get(s1,0,0), float4x4(0.115097947418690,0.001326916855760,-0.047245457768440,0.053152631968260,0.188565120100975,0.025299547240138,0.117071911692619,0.018025090917945,0.219933435320854,0.120051279664040,-0.010961600579321,-0.073651224374771,0.006174642127007,0.010874040424824,-0.053424250334501,0.218541830778122));
res += mul(Get(s1,0,dy), float4x4(-0.027251292020082,0.009075881913304,-0.039633460342884,-0.022927189245820,0.002084576757625,-0.154341921210289,0.015181885100901,-0.051387943327427,0.002595078665763,0.076335139572620,-0.048565447330475,0.017652122303843,0.035615392029285,0.004500741139054,0.068569563329220,-0.093621708452702));
res += mul(Get(s1,dx,-dy), float4x4(-0.104753591120243,-0.053255300968885,0.032833911478519,-0.051449395716190,-0.138991057872772,-0.052151061594486,-0.150079801678658,0.007775487378240,0.075136080384254,0.025933064520359,-0.024679690599442,0.035289380699396,-0.158324614167213,0.101063467562199,-0.060528427362442,-0.011338840238750));
res += mul(Get(s1,dx,0), float4x4(0.087012387812138,0.172564879059792,-0.136383086442947,-0.108845695853233,-0.054539293050766,-0.026795331388712,-0.133954390883446,0.031004123389721,0.004696685355157,0.128950744867325,-0.116120122373104,-0.029668815433979,0.137739673256874,-0.252514749765396,0.051580596715212,-0.097004212439060));
res += mul(Get(s1,dx,dy), float4x4(0.081677511334419,-0.047156911343336,-0.097521759569645,0.103978186845779,0.124676458537579,0.032469931989908,0.028062077239156,0.032070290297270,0.068298488855362,0.159283310174942,0.026631416752934,0.002165581099689,0.040129542350769,-0.003824039828032,0.064930059015751,-0.079702407121658));
res += mul(Get(s2,-dx,-dy), float4x4(0.020475529134274,-0.013669766485691,-0.113822609186172,0.091746553778648,-0.087260849773884,-0.020756870508194,0.005685070063919,0.001445360248908,-0.004577145911753,-0.008938952349126,-0.089692175388336,0.028186053037643,-0.073260791599751,-0.055190857499838,0.018130728974938,-0.079359717667103));
res += mul(Get(s2,-dx,0), float4x4(0.051204379647970,-0.039106335490942,0.062473256140947,0.081535726785660,0.059932783246040,-0.103057436645031,-0.005939474795014,-0.143063187599182,-0.078063361346722,-0.034182611852884,0.169111460447311,-0.024761686101556,-0.012678984552622,-0.047374278306961,-0.136309847235680,-0.084171406924725));
res += mul(Get(s2,-dx,dy), float4x4(0.055443190038204,0.011255040764809,0.055331856012344,-0.086905598640442,0.120993204414845,-0.121351942420006,-0.066694885492325,-0.067602939903736,0.147274553775787,0.035571906715631,-0.049945961683989,0.052164703607559,0.068756721913815,0.161248654127121,-0.005332755390555,0.036162991076708));
res += mul(Get(s2,0,-dy), float4x4(0.104455910623074,0.042911961674690,0.162396848201752,0.007678566500545,-0.158115521073341,0.048687975853682,0.029084773734212,-0.126545876264572,0.052588656544685,0.066072314977646,0.106292627751827,0.109112307429314,0.176230952143669,0.039843987673521,0.012794059701264,0.146811902523041));
res += mul(Get(s2,0,0), float4x4(-0.094870530068874,-0.038689166307449,-0.050522446632385,-0.028239917010069,-0.060816943645477,0.002164001110941,0.010739482007921,0.128886640071869,0.020527075976133,-0.031927343457937,0.100722938776016,-0.089357383549213,-0.039354555308819,0.032673716545105,-0.028412099927664,-0.031777795404196));
res += mul(Get(s2,0,dy), float4x4(0.043126251548529,-0.006042453926057,-0.005491932854056,0.091343812644482,-0.127852737903595,0.113162934780121,0.167358040809631,-0.031953677535057,-0.038917344063520,-0.006812562700361,0.058060016483068,-0.105400398373604,0.050311006605625,0.024453323334455,0.030125282704830,0.095883756875992));
res += mul(Get(s2,dx,-dy), float4x4(0.136267155408859,-0.153791069984436,-0.150758713483810,-0.053854059427977,-0.078835986554623,0.053626567125320,0.255235403776169,0.028918242082000,-0.008793614804745,-0.073300525546074,-0.047403253614902,0.038528796285391,-0.039767377078533,0.033446583896875,0.077945843338966,0.126693353056908));
res += mul(Get(s2,dx,0), float4x4(0.014021038077772,-0.104051880538464,-0.137871906161308,0.156130403280258,0.062781259417534,-0.108147792518139,0.075081788003445,-0.126225888729095,-0.112559273838997,0.095595777034760,0.047855455428362,-0.013247800990939,0.007508735638112,0.037452783435583,-0.141147315502167,0.095026575028896));
res += mul(Get(s2,dx,dy), float4x4(0.039502825587988,-0.039225630462170,-0.152638748288155,-0.124021299183369,0.103958800435066,-0.200928986072540,0.007692632265389,-0.099285908043385,0.046345923095942,-0.017180440947413,-0.093984201550484,-0.019858144223690,0.246162921190262,-0.007784771267325,-0.124349728226662,0.133477628231049));
res += mul(Get(s3,-dx,-dy), float4x4(0.027196682989597,0.159258022904396,-0.045863378793001,0.045847579836845,-0.000358920922736,-0.180289268493652,0.019493620842695,0.039778616279364,-0.090601928532124,0.047110475599766,0.112460829317570,0.040756493806839,-0.061630699783564,0.011418698355556,-0.029484482482076,-0.151990517973900));
res += mul(Get(s3,-dx,0), float4x4(-0.021970588713884,-0.018421912565827,0.019992738962173,-0.130561068654060,0.091838829219341,0.066870771348476,0.067384824156761,0.169516116380692,0.073764123022556,-0.017266819253564,-0.076780505478382,-0.054779011756182,0.020087730139494,-0.279566645622253,-0.032297972589731,0.018707836046815));
res += mul(Get(s3,-dx,dy), float4x4(0.083059847354889,-0.077125877141953,-0.009884078986943,-0.061647810041904,0.116859152913094,-0.029573297128081,-0.015871113166213,-0.024894323199987,-0.028606396168470,-0.145521342754364,-0.054699193686247,0.051752183586359,-0.059255376458168,-0.082392543554306,0.059119321405888,0.071418642997742));
res += mul(Get(s3,0,-dy), float4x4(0.091568142175674,-0.040221072733402,-0.033658485859632,0.001375458901748,-0.017689181491733,-0.020835436880589,0.088485963642597,0.056981116533279,-0.011566372588277,-0.053303934633732,-0.007218922022730,-0.064331397414207,-0.025362258777022,-0.133208021521568,0.019475618377328,-0.093655139207840));
res += mul(Get(s3,0,0), float4x4(-0.102440856397152,0.102899082005024,0.029862457886338,-0.112261481583118,0.071569062769413,0.062781848013401,0.023024102672935,-0.117203757166862,-0.023192711174488,0.264487296342850,-0.046313557773829,0.032382991164923,0.083045795559883,-0.020179180428386,-0.181115046143532,-0.020468723028898));
res += mul(Get(s3,0,dy), float4x4(-0.047481868416071,0.064527362585068,0.166876554489136,-0.032281838357449,-0.053227648139000,-0.062020219862461,0.095663800835609,-0.088088832795620,0.090033061802387,0.038224123418331,-0.025471456348896,0.033494081348181,0.000810803554486,0.098835401237011,-0.047192625701427,0.109125502407551));
res += mul(Get(s3,dx,-dy), float4x4(-0.043051261454821,0.103027880191803,-0.102683976292610,0.124154902994633,0.061135288327932,0.033514704555273,0.024094909429550,0.030432388186455,0.145059719681740,0.015992511063814,0.050944365561008,0.126374810934067,0.099882692098618,0.045442584902048,-0.102652452886105,0.161241680383682));
res += mul(Get(s3,dx,0), float4x4(-0.046661783009768,-0.022078122943640,-0.130048006772995,-0.051998574286699,-0.009695103392005,-0.077311322093010,0.008988817222416,0.056993082165718,0.071049287915230,-0.035972163081169,-0.078840881586075,-0.094246909022331,-0.044757083058357,-0.041329439729452,0.008029741235077,0.004990433342755));
res += mul(Get(s3,dx,dy), float4x4(-0.030102359130979,0.009681865572929,-0.150791168212891,0.033467400819063,0.120677895843983,-0.059864915907383,0.006103474181145,-0.039978861808777,0.014422993175685,-0.167422473430634,0.018217390403152,0.022278891876340,0.043048065155745,-0.147446408867836,-0.072579249739647,0.141347423195839));
return max(float4(0,0,0,0), res);
}
