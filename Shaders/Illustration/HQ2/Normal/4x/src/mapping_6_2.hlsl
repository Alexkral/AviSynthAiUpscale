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
res += mul(Get(s0,-dx,-dy), float4x4(0.039646144956350,-0.035790164023638,0.014132391661406,-0.022044284269214,-0.065870262682438,-0.049274601042271,-0.120705291628838,0.070278324186802,-0.051932256668806,0.005564610939473,-0.026104539632797,-0.036940179765224,0.023313753306866,-0.056182283908129,0.050725031644106,0.054843254387379));
res += mul(Get(s0,-dx,0), float4x4(-0.028453983366489,0.003073069034144,0.078999392688274,-0.017223723232746,-0.060835666954517,0.009703842923045,-0.061774127185345,-0.056728877127171,-0.044276472181082,0.026169277727604,-0.012919352389872,0.091457389295101,-0.101508699357510,-0.036065511405468,0.141015186905861,0.056562572717667));
res += mul(Get(s0,-dx,dy), float4x4(-0.020219294354320,0.027093866840005,0.161639466881752,-0.052207883447409,-0.025410534814000,0.052771914750338,0.030557047575712,-0.080291308462620,0.067447111010551,-0.041705936193466,-0.034631941467524,0.080269299447536,-0.141005814075470,0.041482161730528,0.242468968033791,-0.011391959153116));
res += mul(Get(s0,0,-dy), float4x4(0.052939563989639,0.055810183286667,0.022360714152455,0.012243757024407,0.032181728631258,-0.029862552881241,-0.033996429294348,0.009088218212128,-0.086988903582096,0.111915774643421,0.015422530472279,-0.092258669435978,0.072041504085064,-0.030985742807388,-0.008179885335267,0.095192722976208));
res += mul(Get(s0,0,0), float4x4(-0.067116469144821,0.016376247629523,0.129998549818993,-0.065442517399788,0.069316975772381,-0.098547138273716,-0.021653095260262,-0.076853238046169,-0.160225108265877,-0.038342602550983,-0.035960126668215,-0.062838442623615,0.041508235037327,-0.020456830039620,-0.025925297290087,0.051337715238333));
res += mul(Get(s0,0,dy), float4x4(-0.047809835523367,0.012108867056668,0.217106163501740,-0.039246037602425,0.021142952144146,0.002502157585695,0.156607404351234,-0.071954272687435,0.203570395708084,-0.073240466415882,0.002460214309394,0.050222177058458,-0.040818933397532,0.042873274534941,0.009615099988878,0.014645175077021));
res += mul(Get(s0,dx,-dy), float4x4(0.042309638112783,-0.036453012377024,0.077516168355942,0.107915297150612,-0.048705399036407,0.036831807345152,-0.035995814949274,-0.124146580696106,-0.149438187479973,0.114628002047539,-0.086654782295227,0.117394968867302,0.049285139888525,-0.029082262888551,0.077110774815083,-0.004111915826797));
res += mul(Get(s0,dx,0), float4x4(-0.007863295264542,-0.051397833973169,0.039829514920712,0.096448630094528,-0.010243022814393,-0.043006792664528,0.041907943785191,-0.158969372510910,-0.026713993400335,-0.086440742015839,0.043553151190281,0.116417698562145,-0.013844175264239,-0.095596790313721,-0.010786217637360,-0.007789866533130));
res += mul(Get(s0,dx,dy), float4x4(-0.040452592074871,-0.032097760587931,0.115394718945026,0.066268764436245,-0.143653854727745,0.050365198403597,0.104333832859993,-0.082029841840267,-0.055481262505054,-0.060895401984453,0.105632893741131,0.093743808567524,-0.026434404775500,-0.023300234228373,-0.057580828666687,0.039016507565975));
res += mul(Get(s1,-dx,-dy), float4x4(-0.079707384109497,0.037748090922832,-0.091896809637547,-0.029295859858394,-0.072954885661602,0.029180981218815,0.060127738863230,0.029653459787369,-0.007610545959324,-0.069419160485268,-0.046265479177237,0.145480439066887,0.042349644005299,-0.178832277655602,-0.054473843425512,-0.159297779202461));
res += mul(Get(s1,-dx,0), float4x4(-0.125642880797386,0.026848599314690,0.011536138132215,-0.087500825524330,-0.037997126579285,-0.086469389498234,-0.063910678029060,0.114550493657589,0.018075058236718,-0.054474528878927,-0.194583982229233,0.104594923555851,0.104043878614902,-0.100893236696720,0.056548144668341,-0.050630412995815));
res += mul(Get(s1,-dx,dy), float4x4(-0.048473834991455,-0.010373041033745,0.025262668728828,-0.169458135962486,0.020600652322173,-0.071890801191330,-0.099138803780079,0.089579716324806,-0.086033500730991,-0.007596708368510,0.172752812504768,0.018693491816521,0.045101266354322,-0.067942135035992,0.129951775074005,0.113846249878407));
res += mul(Get(s1,0,-dy), float4x4(-0.051758624613285,0.048907082527876,0.098463803529739,0.008000008761883,-0.026670856401324,0.116281747817993,0.092387922108173,0.080559290945530,0.152823641896248,-0.000737606489565,0.115601673722267,-0.043709058314562,-0.101777367293835,-0.012564756907523,-0.022686900570989,-0.225264385342598));
res += mul(Get(s1,0,0), float4x4(0.001829620101489,-0.029069589450955,0.032774303108454,-0.060421437025070,-0.016756774857640,0.043049607425928,-0.131323248147964,0.039142251014709,0.031386926770210,-0.039258439093828,-0.003389913821593,-0.012673650868237,0.081335276365280,0.113515622913837,-0.052361156791449,-0.128150433301926));
res += mul(Get(s1,0,dy), float4x4(0.009741949848831,-0.004836157429963,0.204657062888145,-0.053374532610178,0.048385750502348,-0.097974210977554,-0.163044974207878,-0.026431107893586,-0.046021413058043,0.032464105635881,0.068727932870388,-0.092583112418652,-0.083163380622864,-0.021141961216927,-0.035926137119532,0.088208518922329));
res += mul(Get(s1,dx,-dy), float4x4(0.077242299914360,-0.041044570505619,0.154718235135078,-0.045762758702040,0.011029794812202,0.069775789976120,-0.017358984798193,0.054154437035322,0.065583720803261,0.003582733450457,0.023487420752645,-0.159655809402466,-0.187835380434990,0.101777009665966,-0.005812305491418,0.012395851314068));
res += mul(Get(s1,dx,0), float4x4(0.141472294926643,-0.052435040473938,0.055718231946230,-0.046712767332792,0.110890679061413,-0.160090535879135,-0.082804031670094,0.036110702902079,-0.010811152867973,-0.010945764370263,0.045703966170549,-0.050371032208204,-0.051623627543449,0.052213106304407,-0.005934216082096,-0.031853415071964));
res += mul(Get(s1,dx,dy), float4x4(-0.051385536789894,-0.007537346798927,0.048682320863008,-0.022866435348988,0.148573309183121,-0.115407049655914,-0.027913922443986,0.002704741898924,-0.059682890772820,-0.002208008663729,-0.016718935221434,-0.103668063879013,-0.050619143992662,-0.056285955011845,0.057679384946823,0.076258420944214));
res += mul(Get(s2,-dx,-dy), float4x4(0.009301133453846,-0.043087735772133,-0.078707590699196,-0.026285605505109,0.059316873550415,0.084050707519054,0.020905733108521,0.147335723042488,0.018590554594994,-0.040413782000542,-0.030845129862428,-0.016180658712983,0.067760944366455,0.056517850607634,-0.004142233636230,0.009048952721059));
res += mul(Get(s2,-dx,0), float4x4(0.000442881049821,-0.049991074949503,-0.186101421713829,-0.045013979077339,0.174473121762276,0.074855037033558,-0.040546510368586,0.092345207929611,0.149035632610321,-0.134686157107353,-0.071086905896664,0.024707045406103,0.157499328255653,0.090830087661743,0.091084890067577,-0.024247514083982));
res += mul(Get(s2,-dx,dy), float4x4(-0.023219492286444,0.016714047640562,0.011076109483838,-0.016849594190717,0.131609454751015,0.003995093982667,-0.001202420447953,0.090912267565727,0.043046087026596,-0.033304870128632,-0.108042418956757,0.030197903513908,0.010628617368639,0.054151851683855,0.114043876528740,-0.041166204959154));
res += mul(Get(s2,0,-dy), float4x4(-0.081360980868340,0.019144888967276,-0.035674698650837,-0.006507989950478,-0.005208891350776,0.083598919212818,0.016015125438571,0.078616328537464,0.079977154731750,-0.023664953187108,-0.034968517720699,0.059271506965160,0.060914225876331,0.014366927556694,-0.016831535845995,-0.029448522254825));
res += mul(Get(s2,0,0), float4x4(-0.088941283524036,0.008557786233723,-0.076546296477318,-0.035502739250660,0.077776007354259,0.137631028890610,-0.052827678620815,0.053992927074432,0.105202786624432,0.111774563789368,-0.048587176948786,0.085148029029369,0.172047957777977,0.032848231494427,0.071046099066734,-0.030762048438191));
res += mul(Get(s2,0,dy), float4x4(0.034789782017469,-0.020551873371005,0.031268041580915,-0.031994149088860,-0.065579652786255,0.015009253285825,0.063882708549500,0.016334943473339,0.035677485167980,0.006928803864866,-0.070197202265263,0.010813808068633,0.044984191656113,0.021853489801288,0.088485635817051,-0.045221723616123));
res += mul(Get(s2,dx,-dy), float4x4(0.010443732142448,0.048801191151142,-0.106495998799801,0.004219017922878,-0.030688742175698,-0.003210241207853,-0.086351491510868,0.048551402986050,-0.055704981088638,0.142484158277512,-0.003718077437952,-0.023417523130774,0.017070105299354,0.003456603037193,-0.008225005120039,-0.028856104239821));
res += mul(Get(s2,dx,0), float4x4(-0.017892228439450,0.010394596494734,-0.044565297663212,0.047679271548986,-0.116364195942879,0.011203208938241,-0.021207550540566,-0.001766354544088,-0.139974251389503,0.095754146575928,-0.022970514371991,-0.027974572032690,0.053092088550329,-0.023426627740264,0.098844237625599,-0.035411261022091));
res += mul(Get(s2,dx,dy), float4x4(0.059836015105247,-0.012602888979018,0.002746793208644,0.009055246599019,-0.122783467173576,-0.002474609296769,-0.018981499597430,-0.016173996031284,0.028249422088265,-0.045884847640991,0.005394543986768,0.040483072400093,-0.048914432525635,-0.009183305315673,0.051048066467047,0.005561294034123));
res += mul(Get(s3,-dx,-dy), float4x4(-0.070816211402416,-0.009715146385133,0.103929512202740,0.084839679300785,-0.048273801803589,0.025726912543178,-0.079696483910084,-0.032823093235493,-0.041981346905231,-0.070380084216595,0.072768963873386,0.123545289039612,0.003788259811699,-0.052563600242138,-0.022414596751332,-0.095402590930462));
res += mul(Get(s3,-dx,0), float4x4(0.154232427477837,0.033898189663887,-0.121401965618134,0.058472976088524,-0.084275372326374,0.051390290260315,0.014365468174219,-0.011491347104311,0.032495688647032,-0.047322187572718,0.082829728722572,0.058876875787973,0.155264690518379,0.072892107069492,-0.071956112980843,-0.013482780195773));
res += mul(Get(s3,-dx,dy), float4x4(0.056882694363594,-0.006855334155262,0.010665984824300,0.106033354997635,-0.050345204770565,0.084296174347401,-0.081976793706417,-0.009223025292158,-0.042948223650455,-0.024453645572066,-0.103760726749897,0.051064025610685,0.114122420549393,-0.026098929345608,-0.012701969593763,0.036954469978809));
res += mul(Get(s3,0,-dy), float4x4(0.048344772309065,-0.062529407441616,0.113989256322384,0.100560277700424,-0.070001438260078,-0.008263650350273,-0.048644337803125,-0.089138559997082,0.059714958071709,-0.150120943784714,-0.017599899321795,0.103501699864864,-0.046048704534769,-0.012712234631181,0.009918213821948,-0.137596413493156));
res += mul(Get(s3,0,0), float4x4(0.120489023625851,-0.018695391714573,-0.015078343451023,0.069097533822060,-0.069470182061195,0.004247245378792,-0.039877422153950,0.039325185120106,-0.023030927404761,-0.004435176029801,0.123153917491436,0.013223714195192,0.038380853831768,0.134729593992233,0.002164113568142,-0.113012365996838));
res += mul(Get(s3,0,dy), float4x4(0.035721208900213,-0.023450836539268,0.000971614150330,0.044388998299837,-0.046491943299770,0.066601842641830,-0.005212095566094,-0.009839227423072,-0.098135501146317,0.131136700510979,0.059392184019089,-0.060302361845970,-0.089798159897327,-0.042059998959303,-0.039889741688967,-0.103775680065155));
res += mul(Get(s3,dx,-dy), float4x4(0.049985241144896,-0.067159369587898,-0.007850551046431,0.045698393136263,-0.083801761269569,0.074295468628407,-0.122603878378868,-0.046344254165888,0.052113078534603,-0.062135249376297,-0.076245106756687,-0.032152485102415,-0.058863349258900,-0.016204444691539,-0.008286922238767,-0.042485199868679));
res += mul(Get(s3,dx,0), float4x4(0.083257846534252,0.017177166417241,-0.013176445849240,-0.005944418720901,-0.025236269459128,0.105347044765949,-0.081140913069248,0.021251702681184,-0.114201746881008,0.173567280173302,-0.010194768197834,-0.150210425257683,-0.066780768334866,-0.011521694250405,-0.045257076621056,-0.103838279843330));
res += mul(Get(s3,dx,dy), float4x4(-0.018580626696348,-0.076156653463840,-0.019348111003637,0.021187115460634,-0.020460978150368,0.104309968650341,-0.075773544609547,0.035839021205902,-0.081687241792679,0.144797116518021,-0.060993455350399,-0.092151612043381,0.048220772296190,-0.009115321561694,-0.007867284119129,-0.092371359467506));
return max(float4(0,0,0,0), res);
}
