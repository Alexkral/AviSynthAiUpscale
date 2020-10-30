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
res += mul(Get(s0,-dx,-dy), float4x4(-0.115713305771351,-0.020150879397988,-0.027872232720256,-0.106169842183590,0.076457984745502,-0.019373275339603,0.032390709966421,-0.015358665958047,0.123821251094341,-0.020612610504031,0.103622406721115,0.014457140117884,-0.068139337003231,-0.005518181249499,-0.054816477000713,0.113269053399563));
res += mul(Get(s0,-dx,0), float4x4(-0.172538354992867,0.023569000884891,-0.084439687430859,-0.035485286265612,0.033546969294548,-0.036413088440895,0.056930579245090,0.157578647136688,-0.100846894085407,-0.052861709147692,-0.073454067111015,-0.089587353169918,0.073607273399830,-0.036641184240580,-0.121745578944683,0.149429395794868));
res += mul(Get(s0,-dx,dy), float4x4(-0.077275037765503,-0.024222053587437,0.126491367816925,-0.089295484125614,0.070263870060444,-0.060952901840210,0.121346861124039,0.011565264314413,-0.046724360436201,0.000482229952468,0.001839980832301,-0.102773174643517,-0.038484819233418,0.127199307084084,-0.054514169692993,-0.043370172381401));
res += mul(Get(s0,0,-dy), float4x4(0.031326446682215,-0.058452207595110,0.060306631028652,-0.010097990743816,-0.049155533313751,-0.085425578057766,0.068891629576683,0.153951004147530,0.059682391583920,-0.208098486065865,-0.072017282247543,0.058264203369617,0.235350027680397,0.026274587959051,0.068071022629738,-0.020486146211624));
res += mul(Get(s0,0,0), float4x4(-0.051010578870773,0.015500234439969,0.082756422460079,-0.055500745773315,-0.004939668811858,-0.066078528761864,0.011288541369140,-0.093403652310371,-0.029240643605590,-0.057152595371008,-0.068619646131992,-0.008195101283491,0.012995367869735,0.043263223022223,0.047668319195509,-0.010567231103778));
res += mul(Get(s0,0,dy), float4x4(0.164797201752663,0.061242491006851,0.033949967473745,-0.087984248995781,0.104993253946304,0.154239609837532,0.030458115041256,-0.178331539034843,-0.019426729530096,-0.084188625216484,-0.052718900144100,-0.002477105008438,-0.120765671133995,0.047040309756994,-0.073246732354164,-0.087957255542278));
res += mul(Get(s0,dx,-dy), float4x4(0.179319962859154,-0.043084319680929,-0.035084277391434,-0.058272071182728,-0.099820360541344,0.058783184736967,-0.035949449986219,-0.121905826032162,-0.036038309335709,-0.081681765615940,0.005035199224949,-0.064340576529503,-0.044735588133335,-0.199230492115021,0.131715685129166,-0.029042182490230));
res += mul(Get(s0,dx,0), float4x4(0.011934445239604,0.020539740100503,-0.146520897746086,-0.025905679911375,-0.045609563589096,-0.086858727037907,-0.046036295592785,-0.101748339831829,-0.085928156971931,-0.020385969430208,-0.060292191803455,0.026898510754108,0.003354505868629,-0.009839738719165,0.117397263646126,-0.091924868524075));
res += mul(Get(s0,dx,dy), float4x4(0.181066378951073,0.066590219736099,0.039986714720726,-0.025308726355433,-0.029206249862909,0.047085728496313,0.160011097788811,-0.095860145986080,-0.066243886947632,-0.014055113308132,-0.015109866857529,0.313033998012543,-0.222376942634583,-0.102881893515587,-0.055090755224228,-0.257959425449371));
res += mul(Get(s1,-dx,-dy), float4x4(0.063492998480797,0.239485248923302,-0.133275583386421,-0.007960516028106,0.030416676774621,-0.068389505147934,0.037873513996601,0.003781324718148,0.013484434224665,0.272915542125702,-0.040268916636705,0.093349866569042,0.128658369183540,0.073010034859180,0.074627287685871,-0.036961469799280));
res += mul(Get(s1,-dx,0), float4x4(-0.089265860617161,0.079718545079231,-0.001266555162147,-0.046488657593727,-0.018359197303653,0.080897860229015,0.033700242638588,-0.045935258269310,0.059068925678730,0.026120480149984,-0.041566953063011,0.018144441768527,0.137106999754906,-0.065666176378727,0.072683796286583,-0.007972320541739));
res += mul(Get(s1,-dx,dy), float4x4(-0.096028268337250,-0.061769105494022,-0.064133785665035,0.013539257459342,0.043140091001987,0.262492686510086,0.066390693187714,-0.110610090196133,0.051233597099781,-0.054739616811275,-0.131834104657173,0.178111404180527,-0.021702472120523,-0.039329234510660,0.130306333303452,-0.001990191638470));
res += mul(Get(s1,0,-dy), float4x4(-0.039378717541695,-0.025139853358269,0.197774380445480,-0.128452375531197,-0.011591685004532,-0.110550299286842,-0.010446694679558,-0.003428648225963,-0.070345461368561,0.136712983250618,-0.147059127688408,0.191298782825470,0.064595095813274,-0.016493937000632,0.083710633218288,0.093235135078430));
res += mul(Get(s1,0,0), float4x4(-0.170001342892647,0.088656187057495,-0.040821876376867,-0.065563708543777,0.022173689678311,-0.080075725913048,-0.034518234431744,-0.035811152309179,0.075032532215118,-0.043898914009333,-0.059531804174185,0.005049802828580,0.036992616951466,-0.073329463601112,0.006748328451067,-0.018030531704426));
res += mul(Get(s1,0,dy), float4x4(-0.090189948678017,-0.044666264206171,-0.045688815414906,0.008755975402892,0.109078347682953,0.029254978522658,0.032872937619686,-0.085813492536545,0.117526382207870,-0.083559282124043,-0.006536830682307,0.019463939592242,-0.045395608991385,0.298603951931000,-0.023459713906050,-0.005503944586962));
res += mul(Get(s1,dx,-dy), float4x4(0.045032728463411,0.000989726744592,0.016057195141912,-0.166940823197365,-0.142688393592834,-0.022796217352152,-0.073715426027775,-0.100170679390430,-0.123669408261776,0.053517509251833,0.021519022062421,0.315189301967621,-0.023304650560021,-0.060654148459435,0.209845170378685,0.003256742144004));
res += mul(Get(s1,dx,0), float4x4(0.026345536112785,0.100597865879536,0.068415425717831,0.024761829525232,0.063440315425396,-0.032088171690702,0.032202586531639,-0.067590475082397,0.070540778338909,0.016375789418817,0.016666784882545,0.196928039193153,0.066191405057907,-0.051487136632204,0.144858807325363,-0.101164497435093));
res += mul(Get(s1,dx,dy), float4x4(-0.112052589654922,-0.085194326937199,-0.005516767501831,-0.047258816659451,-0.012423131614923,0.037067178636789,-0.044601313769817,-0.132150679826736,0.025180742144585,0.065015077590942,0.107213310897350,0.058650340884924,-0.159224256873131,-0.015145867131650,-0.088730961084366,0.050308987498283));
res += mul(Get(s2,-dx,-dy), float4x4(-0.182558774948120,-0.054873134940863,0.048885956406593,-0.069999456405640,-0.079452574253082,0.137344986200333,-0.060130037367344,-0.021081173792481,0.012039583176374,0.009368623606861,-0.073631487786770,0.028417093679309,-0.067294582724571,-0.083776935935020,-0.005372354760766,0.026002196595073));
res += mul(Get(s2,-dx,0), float4x4(-0.022357638925314,-0.109840944409370,-0.105816386640072,0.060839194804430,0.071407437324524,-0.009649918414652,-0.045532662421465,0.014143126085401,0.007660290692002,0.017222432419658,-0.089415751397610,0.078824974596500,0.137807399034500,0.051794275641441,-0.014360179193318,-0.049912333488464));
res += mul(Get(s2,-dx,dy), float4x4(-0.143628388643265,-0.019160870462656,-0.070450648665428,-0.029652804136276,0.091879673302174,-0.085131712257862,0.144211307168007,-0.107226893305779,0.065887689590454,-0.065777823328972,-0.140049725770950,0.110618934035301,0.075774490833282,-0.023024171590805,0.057377412915230,0.016842618584633));
res += mul(Get(s2,0,-dy), float4x4(-0.030022757127881,0.112078882753849,0.051716070622206,-0.008966904133558,-0.077841825783253,0.054552562534809,0.246417671442032,-0.005884762387723,0.000011127051948,-0.048218488693237,-0.027509624138474,-0.017889650538564,-0.051590871065855,-0.014566953293979,0.028389859944582,0.066685736179352));
res += mul(Get(s2,0,0), float4x4(0.092226468026638,0.034466158598661,0.024166855961084,0.183266580104828,0.075158625841141,0.005072136409581,-0.166351497173309,-0.019744679331779,-0.040927622467279,0.022490948438644,-0.152102559804916,0.055832918733358,0.041123688220978,0.077498547732830,-0.018816605210304,-0.015453427098691));
res += mul(Get(s2,0,dy), float4x4(-0.157295256853104,-0.011359120719135,0.007633731700480,-0.007979038171470,-0.061045333743095,-0.009313347749412,0.176128447055817,-0.028895955532789,0.078001931309700,0.046315751969814,-0.053853008896112,-0.028425510972738,0.010047533549368,-0.000419139425503,-0.007003954611719,0.062692813575268));
res += mul(Get(s2,dx,-dy), float4x4(-0.135045453906059,-0.010738626122475,0.000956560892519,-0.142832472920418,0.021328104659915,0.025237226858735,0.035697687417269,-0.099101521074772,-0.058407474309206,0.047504357993603,-0.024208303540945,-0.088623195886612,-0.107005111873150,0.050140086561441,-0.011999422684312,0.036088176071644));
res += mul(Get(s2,dx,0), float4x4(-0.014889590442181,-0.061580251902342,0.008505874313414,-0.172283485531807,-0.035398829728365,0.049662861973047,-0.057584919035435,-0.144169732928276,-0.090204730629921,-0.007118219044060,-0.160469546914101,-0.105325743556023,-0.087679684162140,-0.015654338523746,-0.013627831824124,0.246729448437691));
res += mul(Get(s2,dx,dy), float4x4(-0.063506238162518,-0.064119137823582,-0.054474048316479,-0.031488008797169,0.005356558598578,-0.005937124602497,0.004711567889899,-0.119213119149208,-0.026600537821651,-0.026761369779706,-0.070051498711109,-0.218232020735741,-0.139259994029999,-0.084641657769680,-0.047229561954737,0.349272221326828));
res += mul(Get(s3,-dx,-dy), float4x4(0.092198118567467,-0.106368638575077,-0.131586253643036,0.096353411674500,0.011691682040691,0.224149495363235,-0.120514579117298,-0.062456607818604,0.097891822457314,0.114734508097172,0.160526677966118,0.055345837026834,0.017031900584698,-0.082818649709225,-0.090410023927689,-0.004018904175609));
res += mul(Get(s3,-dx,0), float4x4(-0.091907501220703,-0.075480647385120,0.155345395207405,0.137215673923492,0.029688525944948,-0.030708078294992,-0.139807283878326,0.020215917378664,-0.037738416343927,-0.138687506318092,0.020155448466539,0.103165604174137,-0.034439802169800,0.029191851615906,0.044760201126337,-0.024091823026538));
res += mul(Get(s3,-dx,dy), float4x4(-0.109891049563885,0.104777507483959,0.073581695556641,0.034427020698786,0.175831526517868,0.038348186761141,-0.022484710440040,-0.083274334669113,-0.064364276826382,-0.142402023077011,-0.160224720835686,-0.020483905449510,-0.183548897504807,0.039776638150215,-0.234634757041931,-0.032551877200603));
res += mul(Get(s3,0,-dy), float4x4(0.216746643185616,-0.067804753780365,-0.169540166854858,0.131009951233864,-0.041247025132179,0.029928062111139,-0.027815522626042,-0.008524977602065,0.012346882373095,0.208991065621376,0.012054219841957,0.056363206356764,0.029482766985893,-0.132609665393829,0.017186230048537,0.029160782694817));
res += mul(Get(s3,0,0), float4x4(0.029017196968198,0.075786627829075,0.028464294970036,0.031374521553516,-0.020090455189347,0.043840672820807,-0.107782758772373,0.030843555927277,0.021765341982245,0.079861968755722,0.058355230838060,-0.101540446281433,0.090023897588253,0.013164511881769,0.024945734068751,0.067220814526081));
res += mul(Get(s3,0,dy), float4x4(-0.061526805162430,0.089138954877853,-0.045989211648703,-0.068541720509529,0.062690906226635,0.010706535540521,0.030613005161285,-0.106207974255085,-0.063111230731010,0.032464191317558,0.087105453014374,-0.153086483478546,-0.165701180696487,0.021092450246215,-0.168448582291603,-0.108058050274849));
res += mul(Get(s3,dx,-dy), float4x4(0.141548752784729,-0.178374812006950,0.083316609263420,0.044355925172567,0.111116386950016,-0.035777620971203,-0.022486088797450,-0.017029328271747,-0.134194388985634,0.019575729966164,-0.124423943459988,-0.005906373262405,-0.040871717035770,-0.008960854262114,0.045655671507120,-0.064497947692871));
res += mul(Get(s3,dx,0), float4x4(0.178937792778015,0.037762708961964,0.179859384894371,0.025657635182142,-0.089883871376514,0.076877303421497,0.007190593983978,-0.076749816536903,-0.064220875501633,-0.097248099744320,-0.066662721335888,-0.134604364633560,0.079104907810688,0.070460669696331,0.052284091711044,0.036476802080870));
res += mul(Get(s3,dx,dy), float4x4(-0.025705289095640,0.027323279529810,0.050980132073164,-0.094073213636875,0.070124976336956,-0.164053618907928,0.107149370014668,-0.168336808681488,-0.100028589367867,-0.130240187048912,-0.126392260193825,-0.186117917299271,-0.200846135616302,0.030141800642014,-0.057934984564781,0.014220507815480));
return max(float4(0,0,0,0), res);
}
