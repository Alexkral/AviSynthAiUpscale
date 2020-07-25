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
res += mul(Get(s0,-dx,-dy), float4x4(0.029074197635055,0.066835574805737,0.037380106747150,-0.047222103923559,0.140298619866371,-0.245491012930870,-0.066414453089237,-0.092264890670776,0.012332063168287,-0.089331142604351,-0.047266378998756,0.144153743982315,-0.082267656922340,-0.070952162146568,0.217379897832870,0.057986654341221));
res += mul(Get(s0,-dx,0), float4x4(-0.032256852835417,0.036093737930059,-0.042337581515312,-0.064066536724567,-0.103378593921661,0.061939924955368,-0.059927996248007,0.117494434118271,0.046239607036114,0.081473730504513,0.031165111809969,-0.040462154895067,-0.072330743074417,0.100975252687931,0.078125409781933,-0.092077054083347));
res += mul(Get(s0,-dx,dy), float4x4(-0.007366452366114,0.099558442831039,-0.156910702586174,0.050051663070917,-0.110579513013363,0.014131049625576,-0.116567037999630,-0.079060353338718,0.010433288291097,0.076661571860313,0.068078376352787,0.059258401393890,0.077161781489849,0.071962952613831,-0.103696048259735,-0.003691124729812));
res += mul(Get(s0,0,-dy), float4x4(-0.037134762853384,-0.024966433644295,-0.011671698652208,0.053356356918812,0.128307580947876,-0.126527816057205,-0.082995653152466,-0.020268647000194,-0.010075254365802,-0.099370159208775,-0.067041501402855,0.178383916616440,-0.152195200324059,0.033808141946793,-0.064804539084435,0.138017386198044));
res += mul(Get(s0,0,0), float4x4(-0.049398776143789,-0.002788417972624,-0.144875392317772,-0.172731921076775,0.025217143818736,0.199611604213715,-0.031115170568228,0.103450924158096,0.041296165436506,-0.213644251227379,0.190136626362801,0.070147119462490,-0.030952567234635,-0.005787574220449,0.085940487682819,0.027056561782956));
res += mul(Get(s0,0,dy), float4x4(-0.023361248895526,0.008593237958848,0.065896317362785,0.083986923098564,-0.085384450852871,0.055707402527332,-0.131127893924713,0.005613844376057,-0.055888283997774,-0.044543933123350,0.087978623807430,-0.232302680611610,0.061511993408203,-0.042738672345877,0.001440185355023,-0.042223006486893));
res += mul(Get(s0,dx,-dy), float4x4(0.065254107117653,0.190466493368149,-0.015921315178275,0.026925692334771,-0.076557233929634,0.075489975512028,-0.160129040479660,0.084767535328865,0.103276066482067,0.204062700271606,0.000614792690612,-0.119843743741512,-0.105294659733772,-0.072837084531784,-0.078084267675877,0.035746566951275));
res += mul(Get(s0,dx,0), float4x4(-0.003137316554785,-0.165093526244164,-0.045036863535643,0.068512231111526,-0.119215689599514,0.030733454972506,0.092944175004959,-0.000942779704928,0.090946711599827,-0.348231971263885,-0.261536180973053,-0.076874621212482,-0.222757801413536,-0.110477708280087,-0.224556699395180,0.040240168571472));
res += mul(Get(s0,dx,dy), float4x4(0.079983867704868,-0.015268259681761,0.058031890541315,-0.177913084626198,-0.010645199567080,0.008922063745558,-0.174143001437187,-0.140886694192886,0.128957241773605,-0.059730131179094,0.078888066112995,0.118638373911381,-0.128719761967659,-0.178636312484741,-0.014371823519468,-0.041053771972656));
res += mul(Get(s1,-dx,-dy), float4x4(-0.062910325825214,-0.072485059499741,-0.099743083119392,0.039094626903534,-0.024232687428594,0.078829094767570,0.170426443219185,-0.059044796973467,-0.050435077399015,0.160139322280884,0.159976124763489,0.063984937965870,0.147112116217613,-0.100669860839844,-0.081242635846138,0.010909569449723));
res += mul(Get(s1,-dx,0), float4x4(0.071058697998524,0.023152466863394,0.150032877922058,0.026235083118081,-0.029853001236916,0.006322734057903,-0.001692425576039,-0.073280043900013,-0.003436730708927,-0.144411444664001,0.195748642086983,-0.192297488451004,0.039400886744261,-0.061188582330942,0.096375040709972,-0.108479388058186));
res += mul(Get(s1,-dx,dy), float4x4(-0.153697595000267,0.097249634563923,0.281745970249176,-0.031345453113317,-0.064756095409393,-0.014298649504781,0.105807229876518,0.020664708688855,-0.051468651741743,-0.076944589614868,0.042724154889584,0.082538992166519,0.025888243690133,-0.090842030942440,-0.019732655957341,-0.052069708704948));
res += mul(Get(s1,0,-dy), float4x4(0.004234007094055,-0.155912756919861,0.044040724635124,-0.007602845318615,-0.045581933110952,-0.068321019411087,-0.161960914731026,0.068018332123756,0.009074452333152,0.313426554203033,-0.125623688101768,-0.061236411333084,0.203360274434090,-0.015755696222186,-0.032091066241264,-0.043659288436174));
res += mul(Get(s1,0,0), float4x4(0.093905664980412,-0.228866353631020,0.075006037950516,-0.265168786048889,-0.001300928648561,0.034009825438261,0.084999583661556,-0.107787258923054,0.001226412947290,-0.042505968362093,-0.313215553760529,0.117688067257404,0.198474660515785,-0.142546951770782,-0.082194738090038,-0.073128499090672));
res += mul(Get(s1,0,dy), float4x4(-0.010086385533214,-0.107362888753414,0.110830858349800,-0.025212718173862,-0.198312744498253,-0.099879279732704,-0.115900367498398,0.220975950360298,-0.151876285672188,-0.097249463200569,-0.166001766920090,0.042877413332462,-0.019510446116328,0.108940437436104,0.210241332650185,-0.132166102528572));
res += mul(Get(s1,dx,-dy), float4x4(-0.160867884755135,-0.152154192328453,0.224348112940788,0.140945032238960,0.125979363918304,0.215269565582275,0.098132185637951,-0.001224903156981,-0.058588344603777,0.010999033227563,-0.184676751494408,0.051273819059134,0.120484799146652,0.109745025634766,0.081190928816795,0.138242766261101));
res += mul(Get(s1,dx,0), float4x4(-0.227503240108490,-0.085199140012264,-0.097591944038868,-0.155776754021645,-0.064439974725246,0.053891807794571,0.123248204588890,-0.008415066637099,-0.017605921253562,0.139073029160500,0.035924654453993,0.136773973703384,-0.097745671868324,0.043852999806404,-0.081274442374706,0.002452524611726));
res += mul(Get(s1,dx,dy), float4x4(-0.176093548536301,-0.075844526290894,0.004380948375911,0.097970180213451,0.024074194952846,0.103747718036175,-0.005123529583216,0.101269096136093,-0.102568238973618,0.036568924784660,-0.060521088540554,-0.048777006566525,-0.015795702114701,-0.155084684491158,-0.052362926304340,-0.165848538279533));
res += mul(Get(s2,-dx,-dy), float4x4(-0.115701831877232,-0.166650548577309,0.064403586089611,0.076279781758785,0.174484342336655,-0.049505230039358,0.051416724920273,-0.085830330848694,0.088767684996128,0.142418280243874,0.176209449768066,-0.144482210278511,0.199756294488907,-0.083150975406170,0.107271365821362,-0.090736217796803));
res += mul(Get(s2,-dx,0), float4x4(0.058613855391741,0.003924340475351,0.037402324378490,0.189008444547653,0.135366156697273,0.135527849197388,0.045914251357317,-0.004442867822945,0.001595871755853,-0.022088754922152,0.009389370679855,-0.242413491010666,-0.007457449100912,-0.023012008517981,-0.169466897845268,-0.079194821417332));
res += mul(Get(s2,-dx,dy), float4x4(-0.042981520295143,0.075176313519478,-0.007539391983300,-0.014890247955918,-0.123534955084324,-0.170764192938805,0.270941197872162,-0.114904396235943,-0.073451347649097,-0.049748074263334,0.009397382847965,-0.128467306494713,0.129464745521545,-0.006281393114477,0.018468452617526,0.184475749731064));
res += mul(Get(s2,0,-dy), float4x4(0.041553419083357,-0.012374142184854,-0.077968209981918,0.169586300849915,0.033637840300798,0.081679627299309,-0.054034531116486,-0.012361122295260,-0.149632647633553,-0.236764147877693,-0.167434126138687,-0.090950310230255,-0.115599192678928,-0.071435123682022,0.066151544451714,0.183295503258705));
res += mul(Get(s2,0,0), float4x4(-0.035016059875488,0.096375674009323,0.130218118429184,-0.150686949491501,0.029723759740591,-0.044506471604109,0.074809968471527,-0.166882395744324,-0.020604807883501,-0.007273592986166,-0.040729213505983,0.016902538016438,-0.028903916478157,-0.055874947458506,-0.056213468313217,0.059567946940660));
res += mul(Get(s2,0,dy), float4x4(0.067823164165020,-0.026342805474997,-0.149983420968056,-0.112780995666981,-0.061931177973747,-0.048394564539194,-0.117547690868378,-0.072546422481537,-0.032724972814322,-0.008668622933328,-0.036019019782543,0.110477335751057,0.178780078887939,-0.045905590057373,0.013392855413258,0.108666479587555));
res += mul(Get(s2,dx,-dy), float4x4(-0.014988520182669,0.006972471252084,-0.017538519576192,0.089595630764961,-0.019126370549202,-0.011035985313356,-0.233557522296906,-0.089847624301910,-0.058496449142694,0.273693323135376,0.016897978261113,0.379191994667053,0.057564374059439,-0.180438742041588,0.180081367492676,0.019475629553199));
res += mul(Get(s2,dx,0), float4x4(-0.013255620375276,0.013330223038793,-0.137364327907562,-0.004818786866963,-0.013358224183321,-0.063403211534023,-0.048539239913225,-0.158606201410294,0.036956600844860,0.069547951221466,0.061742253601551,0.087409526109695,0.070133440196514,-0.118265241384506,0.042270988225937,0.164118781685829));
res += mul(Get(s2,dx,dy), float4x4(-0.154399842023849,-0.074085541069508,0.112959995865822,-0.120934799313545,0.060248732566833,-0.002679162658751,-0.050060305744410,-0.191356584429741,0.116487987339497,0.003688402473927,-0.032452169805765,-0.003879909170792,0.063387267291546,0.009849545545876,0.010286035016179,0.092143304646015));
res += mul(Get(s3,-dx,-dy), float4x4(0.039292983710766,-0.046924736350775,0.027357669547200,-0.089549921452999,-0.125836372375488,0.182798787951469,0.023302352055907,0.069816686213017,-0.072710283100605,-0.057469666004181,0.134640946984291,0.015701178461313,-0.057534068822861,-0.082897916436195,-0.130518168210983,0.060659665614367));
res += mul(Get(s3,-dx,0), float4x4(0.133727982640266,-0.069114990532398,0.011830678209662,-0.156483963131905,0.085149325430393,0.208027541637421,-0.039767395704985,0.028806401416659,-0.087586514651775,0.131724387407303,0.082177169620991,0.043823007494211,0.032846011221409,-0.082125194370747,-0.088447123765945,0.060600496828556));
res += mul(Get(s3,-dx,dy), float4x4(-0.061808414757252,0.096526868641376,0.162973567843437,-0.035479236394167,-0.069409161806107,-0.088014185428619,0.050246249884367,-0.006237934343517,0.047187630087137,-0.085652388632298,0.057585150003433,0.007553801406175,0.093702077865601,-0.085904143750668,0.063559979200363,-0.004206976387650));
res += mul(Get(s3,0,-dy), float4x4(-0.020528413355350,-0.055309809744358,-0.174591138958931,0.030924672260880,0.084781631827354,-0.005327508319169,0.097305141389370,-0.044290401041508,-0.011701310053468,-0.155938997864723,-0.169098809361458,-0.161823228001595,-0.106156401336193,-0.157417848706245,-0.159426882863045,0.017630543559790));
res += mul(Get(s3,0,0), float4x4(0.115163788199425,0.019837526604533,-0.048446346074343,0.011559688486159,0.028377823531628,0.032329514622688,-0.058269284665585,0.088322855532169,0.082856260240078,-0.124178856611252,-0.003438386600465,0.091566435992718,0.129752963781357,0.077705211937428,0.024017209187150,0.090056650340557));
res += mul(Get(s3,0,dy), float4x4(0.099089317023754,0.094188995659351,0.002429208485410,0.205653131008148,-0.069582261145115,-0.112232029438019,0.074903152883053,0.212707638740540,0.229515731334686,0.149372458457947,0.052082981914282,0.009707918390632,0.204324513673782,0.143642678856850,-0.046448592096567,-0.014771499671042));
res += mul(Get(s3,dx,-dy), float4x4(-0.078959338366985,0.202474668622017,-0.172640174627304,-0.020733419805765,0.096155673265457,-0.005578587763011,0.052541714161634,-0.075163267552853,-0.002236789092422,-0.114087589085102,-0.030188141390681,-0.056531209498644,-0.063913524150848,-0.105558544397354,0.062300834804773,0.138238415122032));
res += mul(Get(s3,dx,0), float4x4(-0.039479855448008,0.019393637776375,-0.076987139880657,-0.070511020720005,0.155285134911537,-0.076249547302723,0.067926518619061,0.017796410247684,0.102142274379730,-0.038260068744421,0.070246674120426,0.053968369960785,0.035448201000690,0.014780540019274,0.037040125578642,0.125916033983231));
res += mul(Get(s3,dx,dy), float4x4(-0.134185805916786,0.126831620931625,0.113164082169533,-0.069826871156693,-0.028364654630423,-0.119237206876278,-0.013194256462157,0.014380600303411,0.176423549652100,-0.056045692414045,0.018538935109973,-0.006543426774442,-0.030448952689767,-0.029424780979753,0.097601510584354,0.150561034679413));
return max(float4(0,0,0,0), res);
}
