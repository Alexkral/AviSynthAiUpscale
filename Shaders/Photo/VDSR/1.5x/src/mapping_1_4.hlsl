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
res += mul(Get(s0,-dx,-dy), float4x4(0.086671359837055,-0.052085746079683,-0.079111389815807,0.027864024043083,0.035000290721655,-0.028752125799656,0.028734654188156,-0.007316291332245,-0.125183820724487,-0.100126527249813,-0.161111682653427,0.416683256626129,0.013627119362354,0.000576984253712,0.100557141005993,0.005288570653647));
res += mul(Get(s0,-dx,0), float4x4(0.049595173448324,-0.110625751316547,0.000031297509850,-0.016840059310198,0.076360866427422,0.016438443213701,0.170727491378784,-0.005594455171376,-0.070197716355324,-0.028467031195760,-0.343779325485229,-0.202064886689186,-0.028253704309464,-0.019420135766268,0.061189003288746,-0.081302039325237));
res += mul(Get(s0,-dx,dy), float4x4(-0.017839098349214,-0.065914168953896,-0.020298477262259,-0.003227685345337,0.031362738460302,0.014759841375053,0.098397910594940,0.032196838408709,-0.021975992247462,-0.150944203138351,0.057899225503206,-0.023388296365738,-0.012528032064438,0.018977304920554,-0.046681206673384,-0.063648752868176));
res += mul(Get(s0,0,-dy), float4x4(0.029910024255514,0.041546229273081,-0.086233399808407,-0.046172369271517,0.116353683173656,0.017906822264194,0.025996554642916,-0.000435429916251,-0.244856595993042,-0.051083333790302,0.067541621625423,0.202330127358437,0.053323063999414,-0.008551266975701,0.022860849276185,0.007417700719088));
res += mul(Get(s0,0,0), float4x4(0.015713905915618,0.038193028420210,0.003514159703627,-0.102053821086884,0.119503937661648,0.001612615888007,0.110720731317997,-0.009721432812512,-0.000111268578621,0.555905342102051,0.000284808833385,-0.352017492055893,-0.017689527943730,-0.058204293251038,0.042033080011606,-0.097828909754753));
res += mul(Get(s0,0,dy), float4x4(-0.072874605655670,-0.015598078258336,0.002231859834865,-0.076448030769825,0.042570155113935,-0.015249112620950,0.043107379227877,0.017810124903917,0.070001117885113,0.193624213337898,0.118387661874294,-0.050012487918139,-0.016424404457211,0.011531452648342,-0.080044381320477,-0.008715112693608));
res += mul(Get(s0,dx,-dy), float4x4(0.067413024604321,-0.011487084440887,-0.029730888083577,0.003001090837643,0.084204867482185,0.030849540606141,0.002855571219698,-0.018831983208656,-0.028172675520182,-0.167964324355125,0.097209349274635,0.092820301651955,0.045077215880156,0.019480589777231,0.036622818559408,0.048243314027786));
res += mul(Get(s0,dx,0), float4x4(0.045858580619097,0.035043358802795,0.025209290906787,-0.001379543216899,0.051907237619162,0.023819152265787,0.044323395937681,-0.045303657650948,0.137721866369247,-0.182637080550194,0.081780172884464,-0.035683378577232,0.007038822397590,-0.023179125040770,0.097006559371948,-0.050660919398069));
res += mul(Get(s0,dx,dy), float4x4(-0.075056903064251,0.017240071669221,-0.021467745304108,0.007151912432164,0.021496040746570,0.009433304890990,0.027802696451545,-0.017634212970734,0.041869811713696,-0.116005532443523,-0.021614255383611,-0.101610355079174,-0.008994496427476,0.019490350037813,-0.028762077912688,0.042582932859659));
res += mul(Get(s1,-dx,-dy), float4x4(0.014507945626974,0.003595453221351,0.074999526143074,0.027353294193745,-0.105668768286705,-0.107949867844582,0.137395218014717,0.037595640867949,0.011050613597035,0.006096723489463,0.047915209084749,-0.009027060121298,0.014621683396399,-0.049122855067253,-0.010668140836060,0.166400015354156));
res += mul(Get(s1,-dx,0), float4x4(0.012104560621083,-0.009643593803048,0.008832887746394,-0.045700363814831,0.006726826541126,0.049750633537769,0.144195169210434,-0.075846374034882,-0.007133156061172,0.004952002782375,0.030113760381937,0.006092013325542,0.025998989120126,0.002523605944589,-0.040936447679996,-0.021342940628529));
res += mul(Get(s1,-dx,dy), float4x4(-0.030264588072896,-0.001639243331738,-0.014182408340275,-0.016405958682299,0.000544044945855,-0.046111516654491,0.068337537348270,-0.000021387486413,0.004788178950548,0.004699536133558,-0.002792394487187,-0.004846917930990,0.018099173903465,-0.037805221974850,-0.014711177907884,0.015732284635305));
res += mul(Get(s1,0,-dy), float4x4(0.007841834798455,0.005621316377074,0.045460268855095,0.065774440765381,0.058209616690874,-0.093175828456879,-0.024516170844436,0.118625864386559,0.024133842438459,-0.002172692911699,0.023532889783382,-0.000690266489983,-0.021078236401081,-0.010638205334544,-0.006578069645911,0.091221116483212));
res += mul(Get(s1,0,0), float4x4(-0.001912914682180,0.027465067803860,0.013076920062304,-0.047292083501816,0.097916767001152,-0.168774411082268,-0.001944170682691,0.074670009315014,0.006517167668790,-0.012580574490130,0.018729601055384,0.017041679471731,-0.022408198565245,0.057840876281261,-0.005110582802445,-0.062603257596493));
res += mul(Get(s1,0,dy), float4x4(-0.035373214632273,0.038424775004387,-0.009710578247905,-0.041268218308687,0.033214706927538,-0.118024483323097,-0.044925920665264,-0.012569016776979,0.005303956102580,0.004000575747341,-0.019994212314487,0.027369424700737,-0.012057547457516,0.085601516067982,-0.017754022032022,-0.074001312255859));
res += mul(Get(s1,dx,-dy), float4x4(-0.005259927362204,0.001446435460821,0.014310500584543,0.025102294981480,-0.020376941189170,0.101554386317730,0.056588329374790,0.036892537027597,0.028967982158065,0.001160393585451,0.018791871145368,0.001551581779495,-0.016694493591785,-0.000858987565152,-0.040152471512556,-0.005255170632154));
res += mul(Get(s1,dx,0), float4x4(-0.002358774654567,0.006831038277596,0.036850664764643,-0.121487393975258,-0.026085069403052,0.065773010253906,0.090785339474678,-0.115065783262253,0.013087368570268,0.005056160967797,0.015234949067235,0.023667259141803,-0.007035519927740,-0.043211344629526,-0.006375046446919,-0.071162454783916));
res += mul(Get(s1,dx,dy), float4x4(-0.045558013021946,0.011026184074581,-0.003652034327388,-0.029213378205895,-0.039717737585306,0.084097638726234,0.106484264135361,-0.145133584737778,-0.002937165554613,-0.003029673360288,-0.003727816278115,0.031185192987323,-0.007674002088606,-0.032844148576260,-0.022632336243987,-0.033425327390432));
res += mul(Get(s2,-dx,-dy), float4x4(0.009579132311046,0.006845735013485,0.002398788928986,-0.013290316797793,0.071043707430363,-0.030726850032806,-0.069980397820473,0.224952787160873,0.000003931362698,0.000824274960905,0.024072742089629,0.059725005179644,0.041882634162903,-0.049671206623316,0.064020588994026,0.315282762050629));
res += mul(Get(s2,-dx,0), float4x4(0.022876106202602,0.021670009940863,0.025153491646051,-0.022705230861902,-0.109886303544044,-0.084402114152908,0.069563969969749,0.320974647998810,-0.002139540622011,0.027160342782736,0.005332002416253,-0.067771896719933,0.037357825785875,-0.001896697562188,-0.055532120168209,-0.107675135135651));
res += mul(Get(s2,-dx,dy), float4x4(-0.001320934155956,0.012004862539470,0.018027046695352,-0.010542607866228,-0.092790700495243,-0.015527004376054,-0.225107878446579,-0.189258560538292,-0.037849217653275,0.018448580056429,-0.002605630550534,-0.055668432265520,0.033306669443846,-0.041779432445765,0.002542069181800,-0.000935125688557));
res += mul(Get(s2,0,-dy), float4x4(0.036781694740057,0.024953531101346,0.036110602319241,0.004161632154137,0.076020851731300,0.118147104978561,-0.101822257041931,0.056955326348543,-0.001723062247038,-0.010978454723954,0.012542542070150,0.012521222233772,-0.024989094585180,-0.093191638588905,-0.011818782426417,0.248684570193291));
res += mul(Get(s2,0,0), float4x4(0.042846444994211,0.043426241725683,0.036170758306980,-0.000895144534297,-0.150388807058334,-0.038012217730284,0.106679163873196,0.146638542413712,0.000299754552543,0.014035438187420,0.029612256214023,-0.090947948396206,-0.031033756211400,0.024513646960258,-0.002182581461966,-0.181176006793976));
res += mul(Get(s2,0,dy), float4x4(0.030211370438337,0.033518951386213,0.032328605651855,0.017301907762885,-0.084949471056461,0.143747746944427,-0.057027634233236,-0.237596035003662,-0.033308520913124,0.037629652768373,0.004943063016981,-0.036376770585775,0.005432940553874,0.040972914546728,0.007368691731244,-0.068816497921944));
res += mul(Get(s2,dx,-dy), float4x4(0.033027369529009,0.002704025013372,0.009332612156868,-0.012686308473349,0.036130908876657,0.069862641394138,-0.069070607423782,0.028375899419188,0.002625992754474,0.005821340251714,0.015823360532522,0.010381830856204,-0.048695482313633,0.045917972922325,-0.043136347085238,-0.014629948884249));
res += mul(Get(s2,dx,0), float4x4(0.020229168236256,0.007235429715365,0.015874324366450,-0.008478528819978,-0.056358631700277,0.020534193143249,0.076022714376450,-0.069268077611923,0.015685895457864,0.009582623839378,0.046433292329311,-0.068363733589649,-0.023491995409131,0.009814527817070,0.001207669149153,-0.166801765561104));
res += mul(Get(s2,dx,dy), float4x4(0.016814434900880,0.008852903731167,0.011690529994667,0.010837939567864,0.012630705721676,-0.106975451111794,-0.003497303463519,-0.079905271530151,-0.027517963200808,0.015987660735846,0.014773944392800,-0.023601533845067,-0.014865857549012,-0.055331483483315,-0.047563076019287,-0.030594378709793));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001258669537492,-0.007401502225548,0.035350665450096,0.079641096293926,-0.008195973932743,-0.013211562298238,0.054072663187981,0.002065080450848,0.008195145986974,0.014752524904907,-0.009555005468428,0.009857650846243,0.053740762174129,0.017788851633668,-0.044701475650072,0.054994735866785));
res += mul(Get(s3,-dx,0), float4x4(-0.009956097230315,0.001640398870222,-0.014412042684853,0.016173571348190,0.007205423433334,0.042833674699068,0.063320912420750,-0.047317463904619,0.020632987841964,0.017615444958210,0.002802683273330,-0.004833194427192,0.077885866165161,0.016536556184292,0.032206907868385,-0.050208799540997));
res += mul(Get(s3,-dx,dy), float4x4(-0.018077058717608,-0.000812970218249,-0.015088582411408,-0.027553971856833,0.031088523566723,0.045267149806023,-0.005320781841874,-0.017821412533522,0.002207997022197,0.001210060203448,0.009247025474906,-0.016921773552895,0.057173859328032,0.017414700239897,0.045461706817150,-0.047212958335876));
res += mul(Get(s3,0,-dy), float4x4(0.006452659144998,-0.034190353006124,-0.017792860046029,0.064541727304459,0.056609813123941,0.022083649411798,0.079255752265453,0.007618156727403,0.007875006645918,0.036098547279835,0.004318736493587,-0.000175560417119,0.022679666057229,0.070921346545219,-0.058609660714865,0.044515617191792));
res += mul(Get(s3,0,0), float4x4(-0.012847295962274,-0.007729032076895,-0.015432369895279,-0.028015868738294,0.060895718634129,0.025475686416030,0.131205350160599,0.017896303907037,0.027588326483965,0.024855475872755,0.013043943792582,0.000304995250190,0.068951189517975,0.049791224300861,-0.016010224819183,-0.013565069064498));
res += mul(Get(s3,0,dy), float4x4(-0.012513974681497,0.052821367979050,0.004453030880541,-0.043809313327074,0.081837296485901,0.088585637509823,0.015137841925025,0.042625330388546,0.004342502914369,0.005272535607219,0.015071806497872,-0.004929885733873,0.033367983996868,0.006118429359049,-0.012854889966547,-0.017713708803058));
res += mul(Get(s3,dx,-dy), float4x4(-0.002893782220781,0.022493965923786,0.000517672509886,-0.003896706039086,0.041732817888260,0.025380764156580,0.130537658929825,-0.011716095730662,0.018278110772371,0.005550073925406,-0.004215526860207,0.007293870672584,0.015782546252012,0.014182775281370,-0.000259810040006,0.007170412689447));
res += mul(Get(s3,dx,0), float4x4(0.012078685685992,0.019875852391124,0.009504238143563,-0.050258576869965,0.019737331196666,-0.003078395500779,0.123029634356499,0.017254330217838,0.017446102574468,0.005256371106952,0.000881525978912,-0.003796852892265,0.031360697001219,0.059789370745420,0.012586164288223,0.000055041942687));
res += mul(Get(s3,dx,dy), float4x4(-0.000485238269903,-0.007970041595399,0.000661836471409,0.004651088267565,0.027399774640799,0.004047725815326,0.065105170011520,0.062665924429893,0.001276286086068,0.004287638701499,0.001413298305124,-0.005393043160439,0.020684447139502,0.008022609166801,-0.040002956986427,0.013903574086726));
return max(float4(0,0,0,0), res);
}
