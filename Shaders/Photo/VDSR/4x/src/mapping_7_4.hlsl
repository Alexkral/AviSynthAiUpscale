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
res += mul(Get(s0,-dx,-dy), float4x4(-0.052144400775433,0.000438893563114,-0.032714039087296,-0.004660107661039,-0.020906468853354,-0.030075393617153,0.132778480648994,-0.025276994332671,-0.126375377178192,0.105896815657616,-0.007865353487432,0.105041712522507,-0.131711840629578,-0.032697677612305,-0.027056012302637,0.163755953311920));
res += mul(Get(s0,-dx,0), float4x4(-0.100663945078850,-0.066659025847912,-0.163739711046219,0.049841009080410,0.049457941204309,-0.046006076037884,0.015169180929661,-0.034868676215410,-0.170343443751335,-0.097869731485844,-0.041810680180788,-0.063783846795559,-0.096944332122803,-0.005768529139459,0.016690250486135,-0.029781935736537));
res += mul(Get(s0,-dx,dy), float4x4(-0.061164390295744,0.246297389268875,0.080940663814545,-0.000552053912543,-0.002817868255079,-0.041292060166597,-0.071509681642056,-0.014199540950358,0.162922620773315,0.095045357942581,-0.119421765208244,0.082034580409527,-0.017393767833710,0.355440437793732,-0.008198289200664,0.177519813179970));
res += mul(Get(s0,0,-dy), float4x4(-0.087117351591587,-0.057272206991911,-0.056884814053774,-0.020996671169996,0.063435450196266,0.096383683383465,0.154039934277534,0.039617311209440,-0.034734830260277,0.026568915694952,0.001470083137974,-0.159488409757614,-0.233427077531815,-0.073523402214050,0.003591920947656,0.120984427630901));
res += mul(Get(s0,0,0), float4x4(-0.116838134825230,-0.101103924214840,0.046761631965637,-0.094385214149952,0.035561196506023,0.044961065053940,-0.008241733536124,-0.015938835218549,-0.029805805534124,-0.092459745705128,-0.015840340405703,-0.052696131169796,-0.134896486997604,-0.114167757332325,-0.034941658377647,-0.065659627318382));
res += mul(Get(s0,0,dy), float4x4(-0.072901941835880,0.196550831198692,-0.037377920001745,-0.066555440425873,0.059359073638916,0.013418785296381,-0.104227587580681,0.057263195514679,0.088135398924351,0.048788428306580,-0.033796768635511,0.001170973060653,0.051600471138954,0.087723240256310,0.006891277153045,0.065932832658291));
res += mul(Get(s0,dx,-dy), float4x4(-0.059405449777842,0.014777712523937,-0.170787930488586,0.023485152050853,-0.019543066620827,-0.233320787549019,0.199302539229393,0.005051763262600,0.014307026751339,0.105065986514091,0.048682928085327,0.176952421665192,-0.038655098527670,-0.082267031073570,0.002184960758314,-0.022865559905767));
res += mul(Get(s0,dx,0), float4x4(-0.065357923507690,-0.075227439403534,-0.091860324144363,-0.174980685114861,-0.031322162598372,-0.043226052075624,0.036833941936493,-0.088536225259304,-0.042134460061789,0.128849059343338,-0.030882326886058,-0.055227316915989,-0.039234191179276,-0.051355812698603,0.183072805404663,-0.144144698977470));
res += mul(Get(s0,dx,dy), float4x4(-0.082761764526367,0.089559972286224,-0.047786619514227,-0.167360141873360,0.076976887881756,-0.198333606123924,-0.193864986300468,-0.016695197671652,0.056434791535139,0.199202522635460,-0.191060826182365,0.011570343747735,-0.023007309064269,-0.021532846614718,0.153308138251305,0.023194696754217));
res += mul(Get(s1,-dx,-dy), float4x4(0.001416841521859,-0.018681576475501,-0.209024831652641,-0.079052276909351,-0.016623660922050,-0.027241505682468,0.187054991722107,-0.067662499845028,0.095643356442451,-0.088571123778820,0.088776074349880,-0.117032907903194,0.047911565750837,0.182596504688263,0.073755234479904,-0.076054491102695));
res += mul(Get(s1,-dx,0), float4x4(-0.071556374430656,0.088173016905785,-0.134125784039497,0.173284411430359,-0.033651288598776,-0.039202183485031,0.098644085228443,0.008605261333287,0.240752413868904,-0.117922879755497,0.192397400736809,-0.113935165107250,0.061721608042717,0.138819381594658,-0.045500289648771,0.027388477697968));
res += mul(Get(s1,-dx,dy), float4x4(-0.059223130345345,-0.053143579512835,-0.115137584507465,0.354144781827927,-0.175664976239204,0.031317725777626,-0.131045177578926,0.040914691984653,-0.188740715384483,-0.049742016941309,-0.028672503307462,-0.075725778937340,-0.079515509307384,-0.015303985215724,0.024573564529419,-0.048770979046822));
res += mul(Get(s1,0,-dy), float4x4(-0.081498652696609,0.135471686720848,-0.060785327106714,-0.053214583545923,0.022786283865571,-0.115534745156765,0.085301429033279,0.063003979623318,-0.049273241311312,0.025286780670285,-0.072957441210747,-0.016385626047850,0.135887786746025,-0.139244586229324,-0.015889447182417,0.013113453984261));
res += mul(Get(s1,0,0), float4x4(0.200627714395523,-0.020799770951271,-0.037215474992990,0.040303766727448,0.013803198933601,-0.098772972822189,0.037144899368286,-0.003787948749959,0.052501462399960,-0.037736866623163,0.036367125809193,-0.092252582311630,0.256796807050705,-0.098454818129539,-0.055775109678507,0.154101788997650));
res += mul(Get(s1,0,dy), float4x4(0.098743125796318,0.176227331161499,-0.043189067393541,-0.071140587329865,-0.094429209828377,-0.087792173027992,0.069733180105686,0.140164986252785,-0.106257319450378,-0.051312152296305,-0.100963950157166,-0.076305039227009,0.046056948602200,0.003423885907978,-0.137351393699646,0.008786432445049));
res += mul(Get(s1,dx,-dy), float4x4(0.094331949949265,0.070034958422184,-0.073181137442589,-0.155616000294685,-0.021076824516058,-0.112296350300312,-0.115322865545750,0.070560440421104,-0.077927820384502,0.026520075276494,0.140317142009735,0.074156761169434,-0.003577566472813,-0.037172138690948,0.082628481090069,-0.051482625305653));
res += mul(Get(s1,dx,0), float4x4(0.057994011789560,0.065225183963776,-0.106806643307209,0.010154746472836,-0.029447952285409,0.127619400620461,-0.037171620875597,-0.163243934512138,0.018370363861322,0.027536265552044,0.112394362688065,-0.089199364185333,-0.027653716504574,-0.142187073826790,0.043573867529631,-0.063568592071533));
res += mul(Get(s1,dx,dy), float4x4(-0.072019867599010,0.138257026672363,0.050804063677788,-0.068479426205158,0.030500285327435,0.070493757724762,0.049800083041191,-0.067550174891949,-0.084648117423058,0.015222826972604,-0.030339432880282,-0.147776335477829,-0.083779193460941,-0.097510837018490,-0.047555401921272,-0.160077348351479));
res += mul(Get(s2,-dx,-dy), float4x4(0.303512394428253,-0.182585909962654,0.061151519417763,-0.073772691190243,0.240580424666405,0.099154099822044,-0.055353268980980,0.169969752430916,-0.081652283668518,-0.068732649087906,-0.097688384354115,0.027101987972856,-0.138583481311798,-0.027166511863470,0.059977576136589,0.009294664487243));
res += mul(Get(s2,-dx,0), float4x4(0.131785556674004,-0.070054650306702,0.014877947978675,-0.132048219442368,0.127689868211746,-0.001230464782566,-0.100081607699394,-0.031286083161831,-0.081675551831722,-0.095213845372200,-0.029869250953197,-0.031806234270334,-0.066977232694626,-0.074006572365761,0.004343216773123,-0.074285104870796));
res += mul(Get(s2,-dx,dy), float4x4(0.090846799314022,-0.022547436878085,0.000891995674465,-0.152865350246429,-0.129962474107742,-0.057049900293350,0.017951995134354,0.101992569863796,-0.143412157893181,-0.051762543618679,0.027599396184087,0.007070123218000,-0.066972874104977,0.043915852904320,0.015566864050925,-0.053068161010742));
res += mul(Get(s2,0,-dy), float4x4(0.012456604279578,-0.120542056858540,-0.020923528820276,0.101442962884903,0.124577626585960,0.097005292773247,0.067583598196507,0.140101850032806,-0.147944375872612,0.146142482757568,0.123847894370556,0.174386397004128,-0.032973621040583,0.073465138673782,0.120955288410187,-0.004179833456874));
res += mul(Get(s2,0,0), float4x4(-0.062275681644678,0.056596044450998,-0.038240637630224,-0.105002194643021,0.200384050607681,0.018412943929434,-0.004844260402024,0.016713390126824,-0.094180800020695,-0.057824742048979,-0.005263141822070,-0.022371338680387,-0.017906542867422,0.110272832214832,0.054688982665539,-0.051129039376974));
res += mul(Get(s2,0,dy), float4x4(-0.000118520307296,-0.060437008738518,-0.083278164267540,-0.045844156295061,-0.085281468927860,0.008003347553313,0.029052201658487,0.031261689960957,-0.108177497982979,0.120862424373627,-0.005370193161070,-0.089974865317345,-0.061508614569902,0.125695362687111,0.026986904442310,-0.002411712426692));
res += mul(Get(s2,dx,-dy), float4x4(0.132065892219543,0.069190226495266,0.028902756050229,0.089716367423534,-0.042710524052382,-0.154413282871246,0.066692978143692,0.093572318553925,-0.192779213190079,0.012313939630985,-0.013055978342891,0.057553838938475,-0.124499090015888,-0.148465946316719,0.039640542119741,-0.183033972978592));
res += mul(Get(s2,dx,0), float4x4(-0.088860459625721,0.041281234472990,0.093323923647404,-0.128098353743553,0.030143748968840,-0.051332857459784,0.005749113857746,-0.000029916724088,-0.197763070464134,-0.126873791217804,-0.199990794062614,0.009450002573431,-0.055794257670641,-0.079115621745586,0.096375547349453,-0.133007138967514));
res += mul(Get(s2,dx,dy), float4x4(-0.037118241190910,-0.067420586943626,-0.088677108287811,0.020486677065492,0.165852993726730,-0.041481193155050,-0.086853094398975,-0.031879540532827,-0.159020647406578,-0.017137115821242,-0.042061742395163,-0.061277817934752,-0.012551385909319,-0.025000356137753,0.086701877415180,-0.030684079974890));
res += mul(Get(s3,-dx,-dy), float4x4(0.012649268843234,0.098872408270836,-0.028900122269988,0.142269864678383,0.254608929157257,0.011477893218398,-0.174646347761154,0.156977325677872,-0.040679983794689,0.147424578666687,-0.027353541925550,0.087019518017769,0.012166709639132,0.086745589971542,-0.159222096204758,0.102789387106895));
res += mul(Get(s3,-dx,0), float4x4(0.001458272337914,-0.007273351773620,0.039589330554008,0.156108960509300,-0.172940880060196,-0.107955992221832,-0.059619285166264,0.010716297663748,0.095540732145309,0.082359008491039,-0.081766404211521,0.043110813945532,-0.218892350792885,-0.071921408176422,-0.001266639912501,0.091083645820618));
res += mul(Get(s3,-dx,dy), float4x4(-0.006340993568301,-0.221401065587997,0.022783014923334,-0.005646639037877,0.030042093247175,-0.071694485843182,-0.019087813794613,0.146140903234482,-0.013540725223720,-0.105542913079262,-0.189838781952858,-0.045373264700174,-0.000362807273632,-0.047272641211748,0.115231499075890,0.073957614600658));
res += mul(Get(s3,0,-dy), float4x4(0.015713205561042,0.043188784271479,0.201356604695320,0.152802273631096,0.176482111215591,-0.025491120293736,-0.032154899090528,-0.068301364779472,-0.012862374074757,0.005369905848056,-0.044083245098591,0.031083656474948,0.039718721061945,0.010220908559859,-0.079429790377617,-0.055943462997675));
res += mul(Get(s3,0,0), float4x4(0.050364896655083,0.154954731464386,-0.020592961460352,-0.000883709813934,0.164716929197311,-0.058552291244268,0.050172865390778,0.040933113545179,-0.127008706331253,-0.030404761433601,-0.153394550085068,0.063765078783035,-0.127977699041367,0.108396418392658,-0.091824933886528,0.035788148641586));
res += mul(Get(s3,0,dy), float4x4(0.020860113203526,0.137816637754440,0.080464154481888,-0.080320000648499,-0.098163492977619,-0.058989763259888,0.119385264813900,0.120401091873646,-0.055295534431934,-0.056421075016260,-0.146034628152847,0.063881419599056,-0.030820265412331,-0.102674044668674,0.076180949807167,-0.084058359265327));
res += mul(Get(s3,dx,-dy), float4x4(0.067584946751595,-0.087570838630199,-0.007250258699059,0.051029328256845,0.047752298414707,-0.220193356275558,-0.047567263245583,-0.008438210934401,-0.092357769608498,-0.114901125431061,0.070704869925976,-0.199130758643150,0.074690870940685,-0.024788493290544,-0.100216656923294,-0.144856750965118));
res += mul(Get(s3,dx,0), float4x4(0.179159685969353,-0.013891095295548,-0.039086543023586,-0.005800517741591,0.088535465300083,-0.199799031019211,0.030524648725986,-0.037313360720873,0.109050221741199,-0.086673237383366,-0.129799410700798,0.067071311175823,0.019178045913577,0.209876000881195,-0.093712098896503,-0.052546650171280));
res += mul(Get(s3,dx,dy), float4x4(0.023732773959637,0.099998764693737,0.015544167719781,0.007648016791791,0.117753341794014,-0.115366771817207,0.041366025805473,0.032555431127548,-0.104905210435390,-0.066574141383171,-0.109104178845882,0.086571656167507,-0.038192499428988,0.053160682320595,-0.001079729991034,-0.093854501843452));
return max(float4(0,0,0,0), res);
}
