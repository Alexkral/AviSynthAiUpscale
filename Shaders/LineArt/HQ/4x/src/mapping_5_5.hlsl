sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.015435618348420,-0.260097503662109,-0.161627233028412,0.445587337017059);
res += mul(Get(s0,-dx,-dy), float4x4(-0.020194657146931,-0.107338033616543,-0.036793276667595,-0.134487584233284,-0.011971699073911,-0.015892129391432,0.008957828395069,-0.118360556662083,0.238435953855515,-0.015227671712637,-0.046476855874062,-0.050919517874718,0.166128545999527,-0.070826038718224,0.031970724463463,0.060978233814240));
res += mul(Get(s0,-dx,0), float4x4(-0.206203103065491,0.146402046084404,0.019033528864384,-0.139923959970474,0.052878841757774,-0.067451663315296,0.062577351927757,-0.057265274226665,-0.029513452202082,0.121844083070755,0.081435479223728,0.106243833899498,0.159367069602013,-0.251339823007584,-0.057657159864902,-0.363273173570633));
res += mul(Get(s0,-dx,dy), float4x4(0.028929274529219,-0.140573799610138,-0.093501739203930,0.002233334351331,-0.043821603059769,-0.007582220714539,0.053647741675377,-0.008765095844865,0.081585384905338,0.022929199039936,-0.013283840380609,0.132630422711372,0.049102801829576,-0.161282643675804,0.091073773801327,-0.050783406943083));
res += mul(Get(s0,0,-dy), float4x4(0.091055147349834,-0.041861139237881,0.073578633368015,-0.044844087213278,-0.192751646041870,-0.164941251277924,0.038765072822571,-0.039949417114258,-0.031758990138769,0.128945723176003,0.063539087772369,-0.207064986228943,-0.110900685191154,-0.230923697352409,0.059298466891050,-0.110787287354469));
res += mul(Get(s0,0,0), float4x4(-0.230643555521965,0.146058380603790,0.196468919515610,0.225608229637146,0.153754323720932,-0.198423683643341,-0.110002845525742,-0.228744298219681,0.126843303442001,-0.478991329669952,0.182626187801361,0.034217212349176,0.268737703561783,0.002030361676589,0.193457588553429,-0.159106388688087));
res += mul(Get(s0,0,dy), float4x4(-0.146633997559547,0.021823564544320,0.093179874122143,-0.186204463243484,0.055654399096966,-0.012690240517259,-0.264284878969193,-0.112616859376431,-0.032966777682304,0.025916567072272,0.055834021419287,-0.083046190440655,0.094630531966686,-0.200700238347054,-0.022295754402876,-0.387170076370239));
res += mul(Get(s0,dx,-dy), float4x4(-0.102794669568539,0.071155913174152,0.017922652885318,-0.024959549307823,0.107514098286629,-0.102043688297272,-0.105585157871246,0.008335964754224,-0.255782037973404,-0.054512873291969,0.025683112442493,0.202549949288368,0.012033390812576,-0.097634859383106,0.134037792682648,0.025885827839375));
res += mul(Get(s0,dx,0), float4x4(0.322903752326965,0.090096481144428,-0.110187187790871,0.165502518415451,-0.154115930199623,-0.085489392280579,-0.301611214876175,-0.029152350500226,0.096968829631805,-0.120944365859032,-0.141396030783653,0.018678950145841,0.170983165502548,0.000040280574467,-0.072643153369427,0.262451887130737));
res += mul(Get(s0,dx,dy), float4x4(-0.107731416821480,-0.021043723449111,0.098982594907284,-0.102959036827087,-0.006358657963574,0.046065799891949,-0.122537434101105,0.189976394176483,0.119143962860107,-0.077271454036236,0.007034287787974,-0.016148388385773,-0.047476068139076,-0.174024969339371,-0.018542066216469,0.091211944818497));
res += mul(Get(s1,-dx,-dy), float4x4(-0.072820983827114,-0.098158173263073,0.013854136690497,-0.142883345484734,0.053486611694098,0.042866718024015,-0.021717300638556,-0.059634152799845,0.101795926690102,0.118837699294090,0.000874591700267,0.157589837908745,-0.006006648764014,-0.039797201752663,0.036856148391962,-0.061865888535976));
res += mul(Get(s1,-dx,0), float4x4(-0.177166506648064,0.084720492362976,0.037408202886581,-0.112699091434479,-0.063963733613491,-0.027634304016829,-0.038220595568419,0.007069934159517,-0.304495811462402,0.176075518131256,0.233919039368629,-0.150503948330879,0.495705544948578,-0.088969454169273,-0.077922210097313,0.019396012648940));
res += mul(Get(s1,-dx,dy), float4x4(0.015001218765974,0.100705906748772,0.118247345089912,0.029790207743645,-0.028525376692414,-0.061947382986546,-0.052945509552956,-0.053940068930387,-0.097946241497993,-0.074274532496929,0.043273579329252,-0.060659725219011,-0.025936000049114,-0.089261941611767,0.038926675915718,-0.041078273206949));
res += mul(Get(s1,0,-dy), float4x4(0.364219605922699,-0.057877156883478,0.043370887637138,-0.248443320393562,0.077015094459057,-0.069780640304089,-0.192555055022240,-0.113324560225010,0.094588071107864,0.066733576357365,-0.002100481418893,-0.088653199374676,-0.053479813039303,0.136066839098930,0.075291194021702,0.040829028934240));
res += mul(Get(s1,0,0), float4x4(0.008746239356697,0.189488366246223,-0.053011577576399,-0.024520549923182,-0.264857798814774,-0.350362390279770,0.024585107341409,0.213395342230797,0.216424763202667,-0.261521518230438,-0.487596154212952,-0.126393064856529,0.105652242898941,-0.138606742024422,-0.158523201942444,-0.179122507572174));
res += mul(Get(s1,0,dy), float4x4(-0.122086301445961,0.053546201437712,0.211803779006004,-0.036755915731192,-0.172235533595085,-0.145410865545273,-0.010279560461640,-0.043564319610596,0.081701844930649,-0.078079588711262,-0.262948006391525,0.003628698177636,0.345595747232437,-0.002466952428222,-0.082825005054474,0.200477883219719));
res += mul(Get(s1,dx,-dy), float4x4(-0.010555149056017,-0.073680236935616,0.019780034199357,0.098478458821774,-0.085268326103687,0.021353876218200,-0.039513207972050,0.005542006343603,0.116890721023083,-0.031723503023386,-0.030443528667092,0.101074397563934,0.220277085900307,0.095949657261372,-0.067309141159058,-0.036305572837591));
res += mul(Get(s1,dx,0), float4x4(-0.389578223228455,0.213362455368042,-0.057215128093958,-0.022270545363426,0.078271806240082,0.055733829736710,0.033199839293957,-0.051266942173243,0.167250514030457,0.227652147412300,0.260304152965546,0.010031279176474,-0.388304531574249,0.004419673699886,0.144868865609169,-0.107421942055225));
res += mul(Get(s1,dx,dy), float4x4(-0.135572269558907,0.045068576931953,0.051709637045860,0.008858010172844,-0.012723573483527,0.006716833915561,0.025784667581320,-0.049879822880030,-0.233588144183159,-0.147733405232430,0.013751104474068,0.024482687935233,0.067851364612579,-0.114945031702518,-0.007575639057904,0.098829805850983));
res += mul(Get(s2,-dx,-dy), float4x4(-0.281848520040512,-0.200154244899750,-0.068676181137562,-0.007958028465509,0.013036645017564,0.131837978959084,-0.076071098446846,-0.047284997999668,-0.086106702685356,0.164755180478096,0.052693821489811,-0.110031470656395,0.040225453674793,0.025433177128434,-0.029787719249725,-0.041196107864380));
res += mul(Get(s2,-dx,0), float4x4(0.129654318094254,-0.256861239671707,-0.263846248388290,0.048252612352371,-0.075257606804371,-0.170288205146790,-0.130967929959297,-0.162836477160454,-0.142813876271248,0.054543543606997,-0.001276589347981,-0.012576428242028,-0.070260651409626,0.053066823631525,0.176947057247162,-0.020200654864311));
res += mul(Get(s2,-dx,dy), float4x4(0.063626244664192,-0.258747786283493,0.002068615052849,0.289449393749237,-0.114655390381813,-0.017376236617565,0.036426536738873,0.143145218491554,0.088224209845066,-0.115478485822678,-0.007076380774379,-0.122418574988842,0.002330849179998,0.081947542726994,0.037143956869841,-0.052592389285564));
res += mul(Get(s2,0,-dy), float4x4(-0.024716885760427,-0.166934564709663,-0.051672283560038,-0.119636118412018,0.051131121814251,-0.048543140292168,-0.121536880731583,-0.087829083204269,0.041761025786400,0.012642306275666,-0.007689991500229,0.052803851664066,-0.109348505735397,0.142434909939766,-0.035869117826223,0.020020259544253));
res += mul(Get(s2,0,0), float4x4(0.103025674819946,-0.227440640330315,-0.028342746198177,-0.309898555278778,-0.074194997549057,0.206611692905426,-0.062751561403275,-0.206160485744476,-0.170111581683159,-0.209939762949944,-0.350425332784653,-0.028155127540231,-0.218188732862473,0.271857559680939,0.201549559831619,-0.275466501712799));
res += mul(Get(s2,0,dy), float4x4(-0.149057149887085,0.093903884291649,0.011994281783700,-0.217971861362457,-0.195348769426346,-0.133366152644157,0.098992407321930,-0.083747468888760,0.025974761694670,-0.018649825826287,-0.071077518165112,0.102969273924828,0.032782897353172,0.094434037804604,-0.022207330912352,0.143140912055969));
res += mul(Get(s2,dx,-dy), float4x4(-0.094647265970707,-0.137170314788818,0.033122260123491,0.122502297163010,0.040537815541029,0.103933952748775,-0.093340769410133,-0.009574715048075,0.079569563269615,-0.007036770228297,-0.124101877212524,0.106769323348999,-0.021333711221814,0.055471505969763,0.014608740806580,-0.138564497232437));
res += mul(Get(s2,dx,0), float4x4(-0.033086564391851,-0.262702226638794,-0.059490896761417,0.083440512418747,0.156918644905090,-0.123661190271378,0.075297094881535,0.045570034533739,0.131896793842316,0.076820008456707,-0.068994402885437,0.099279485642910,-0.034400060772896,-0.044633846729994,0.065867505967617,-0.033651974052191));
res += mul(Get(s2,dx,dy), float4x4(-0.247779935598373,-0.162798017263412,0.135471686720848,0.027619948610663,0.066263884305954,-0.004904544446617,-0.069598399102688,-0.011570712551475,-0.130915269255638,0.004126285202801,0.066505946218967,-0.069630101323128,-0.097028777003288,0.106948859989643,0.058372326195240,0.113690413534641));
res += mul(Get(s3,-dx,-dy), float4x4(-0.106348559260368,-0.023447897285223,0.057849805802107,-0.265190333127975,-0.053591705858707,-0.122878648340702,-0.145853295922279,-0.153663754463196,-0.151857197284698,-0.115497164428234,0.028930846601725,-0.000143563680467,0.132829904556274,-0.084500774741173,0.088094346225262,-0.142307817935944));
res += mul(Get(s3,-dx,0), float4x4(-0.025266194716096,-0.024300383403897,-0.032311078161001,0.014140052720904,-0.008132283575833,-0.234769776463509,-0.094617716968060,0.048345107585192,-0.101506933569908,0.153990238904953,0.275641322135925,0.028940184041858,-0.020254064351320,0.126886561512947,0.027201443910599,0.137869089841843));
res += mul(Get(s3,-dx,dy), float4x4(0.135328650474548,-0.047223132103682,0.005443553440273,0.074551835656166,0.092969879508018,-0.082865566015244,-0.103543177247047,0.035481933504343,0.182748720049858,-0.060023311525583,0.087204955518246,0.158821582794189,-0.138534188270569,0.060771513730288,0.111991286277771,-0.018881879746914));
res += mul(Get(s3,0,-dy), float4x4(0.162937656044960,0.014764657244086,0.057584989815950,0.161274835467339,-0.006973696872592,-0.261906743049622,0.109137758612633,-0.310297697782516,0.041475605219603,-0.192611426115036,-0.041682906448841,0.143125548958778,0.297357857227325,0.000280347507214,0.018786864355206,0.020336624234915));
res += mul(Get(s3,0,0), float4x4(0.038476813584566,-0.191647514700890,0.034486152231693,0.184219434857368,0.152299836277962,0.012937481515110,-0.342148780822754,-0.278549224138260,-0.680704474449158,0.351181209087372,-0.126801401376724,-0.082505926489830,-0.081470273435116,0.039127826690674,-0.175314471125603,0.086485765874386));
res += mul(Get(s3,0,dy), float4x4(-0.242054462432861,0.088251896202564,-0.091440908610821,-0.123454883694649,0.131504878401756,0.003430942539126,-0.110308229923248,-0.146257087588310,-0.167894437909126,0.142104655504227,0.054699003696442,-0.028084052726626,0.005859265103936,0.216972738504410,-0.002263527130708,-0.031298238784075));
res += mul(Get(s3,dx,-dy), float4x4(0.095654472708702,0.021845418959856,-0.068487502634525,0.152869060635567,-0.053286861628294,-0.110501199960709,0.011421026661992,0.222069129347801,0.077620461583138,0.039988618344069,-0.039122764021158,0.012635078281164,-0.093106523156166,0.088179193437099,0.070389725267887,-0.098239570856094));
res += mul(Get(s3,dx,0), float4x4(0.168899416923523,-0.043053328990936,0.299806326627731,0.333152532577515,0.068287335336208,0.017710728570819,-0.080057911574841,-0.043836794793606,-0.281983435153961,-0.161695927381516,-0.083334654569626,-0.021479884162545,0.274383664131165,0.186688482761383,0.037688855081797,-0.099145747721195));
res += mul(Get(s3,dx,dy), float4x4(0.125563159584999,0.162740543484688,0.106820665299892,-0.086921930313110,0.115150488913059,-0.050354890525341,-0.082493498921394,0.025394039228559,-0.102006487548351,-0.151831507682800,-0.048713285475969,-0.168946951627731,0.105043724179268,0.225591421127319,0.122114591300488,-0.021294359117746));
res += mul(Get(s4,-dx,-dy), float4x4(0.242402330040932,-0.057086121290922,0.001569263869897,0.081921190023422,0.062147438526154,0.118411056697369,0.040109585970640,-0.018816832453012,-0.129700392484665,0.116816475987434,-0.040959682315588,-0.148613438010216,-0.037367206066847,0.050008002668619,0.012468929402530,0.164984330534935));
res += mul(Get(s4,-dx,0), float4x4(0.058790050446987,-0.088011540472507,-0.003127531846985,0.003755482612178,0.061612434685230,-0.119456984102726,0.087899163365364,-0.277391552925110,-0.144139438867569,0.185448154807091,0.039194647222757,0.068664573132992,-0.154629588127136,0.079958058893681,0.134909048676491,-0.197274252772331));
res += mul(Get(s4,-dx,dy), float4x4(-0.182912051677704,0.063635759055614,-0.027863172814250,-0.085059106349945,0.056888580322266,0.050674356520176,0.020441537722945,-0.091129198670387,-0.040297720581293,0.202231109142303,0.102670364081860,0.093271560966969,0.072946824133396,0.033642370253801,0.016348687931895,-0.081349723041058));
res += mul(Get(s4,0,-dy), float4x4(-0.091479480266571,0.140725851058960,0.062042593955994,-0.105991981923580,0.006620030384511,-0.011999952606857,-0.035211768001318,0.029410075396299,-0.226327434182167,0.099674850702286,-0.275773167610168,-0.055978480726480,0.310655564069748,0.145127803087234,0.101545579731464,-0.037639662623405));
res += mul(Get(s4,0,0), float4x4(-0.273270726203918,0.077241435647011,0.312853842973709,-0.414921730756760,-0.231899306178093,-0.315907359123230,0.127748444676399,0.085584148764610,0.196076497435570,0.198601305484772,-0.205290585756302,-0.025009395554662,0.035151824355125,-0.347950577735901,-0.642560362815857,0.068327635526657));
res += mul(Get(s4,0,dy), float4x4(0.545356452465057,-0.352633774280548,-0.096898242831230,0.262682855129242,-0.156863048672676,0.146675765514374,-0.021604856476188,0.056389678269625,0.149749562144279,0.149463474750519,0.174304425716400,0.077318564057350,-0.208304390311241,0.169584810733795,0.099916212260723,0.006268666125834));
res += mul(Get(s4,dx,-dy), float4x4(-0.107005834579468,0.133917778730392,0.002298468491063,0.071208208799362,0.003095513442531,0.058579068630934,0.025790520012379,-0.078915946185589,0.128006130456924,-0.083101794123650,-0.122909724712372,-0.181844249367714,-0.025078842416406,0.019463172182441,-0.192303195595741,-0.079819165170193));
res += mul(Get(s4,dx,0), float4x4(-0.388336360454559,-0.023840328678489,-0.028691172599792,0.035855941474438,0.110577940940857,-0.057202752679586,-0.024033773690462,0.051666315644979,-0.232690021395683,-0.260489642620087,0.093115150928497,-0.143546536564827,0.039611112326384,-0.123451747000217,-0.097324460744858,-0.046508882194757));
res += mul(Get(s4,dx,dy), float4x4(0.114309296011925,0.015748551115394,-0.058320887386799,0.182528182864189,0.262353688478470,0.071920856833458,0.017218176275492,0.019394716247916,-0.323639452457428,-0.095844902098179,-0.068731665611267,0.124726258218288,0.030437519773841,-0.015199385583401,0.001769421622157,-0.024369057267904));
res += mul(Get(s5,-dx,-dy), float4x4(-0.174523025751114,0.038423363119364,0.040273644030094,0.072624623775482,-0.170543476939201,-0.013930303975940,-0.013864877633750,0.348376899957657,-0.032354854047298,-0.152439743280411,0.049870893359184,0.188938960433006,-0.148789942264557,0.068641945719719,-0.177803665399551,-0.055899336934090));
res += mul(Get(s5,-dx,0), float4x4(0.057278599590063,0.367659330368042,0.229623779654503,-0.038517527282238,0.134816333651543,0.177127182483673,-0.070971705019474,0.028503978624940,0.062064215540886,0.027404636144638,0.114316679537296,0.032103583216667,0.229773104190826,-0.012171446345747,-0.242960035800934,0.189691573381424));
res += mul(Get(s5,-dx,dy), float4x4(-0.020727010443807,0.036164976656437,0.111666709184647,0.056490439921618,0.024689331650734,0.088159240782261,0.036679051816463,0.188876941800117,-0.130654051899910,0.118172079324722,-0.017321523278952,-0.136354133486748,-0.118344455957413,0.182388812303543,-0.137121543288231,-0.057953149080276));
res += mul(Get(s5,0,-dy), float4x4(-0.166274875402451,0.096592046320438,-0.031610012054443,0.103819213807583,0.234165415167809,0.117429278790951,0.064913310110569,0.153266251087189,-0.166500553488731,-0.197765052318573,-0.219171702861786,0.160271272063255,0.066488876938820,0.072177685797215,-0.105453118681908,0.055616021156311));
res += mul(Get(s5,0,0), float4x4(0.291187375783920,-0.051158066838980,-0.449543356895447,-0.009004168212414,0.018823603168130,-0.061044700443745,0.001664712792262,-0.104356706142426,0.161075681447983,0.435230612754822,0.237114667892456,0.132840096950531,-0.294445902109146,0.108327724039555,0.291874170303345,0.192860722541809));
res += mul(Get(s5,0,dy), float4x4(-0.023879954591393,0.152071207761765,0.015798252075911,-0.065557971596718,0.218311950564384,-0.266448348760605,0.010616168379784,0.097691051661968,0.215580582618713,-0.127351522445679,0.052239418029785,-0.016720145940781,-0.155188098549843,0.009153684601188,-0.012106552720070,-0.139229744672775));
res += mul(Get(s5,dx,-dy), float4x4(-0.104953199625015,-0.047674432396889,-0.043335221707821,-0.010784672573209,0.152582019567490,-0.016001649200916,0.041907716542482,-0.135183006525040,0.017798632383347,-0.156742841005325,-0.210114866495132,0.077891454100609,0.167942464351654,0.005928690545261,-0.073844440281391,0.130556195974350));
res += mul(Get(s5,dx,0), float4x4(-0.121453694999218,0.003593616187572,0.132980734109879,-0.016209479421377,-0.298392534255981,-0.124682128429413,-0.193668007850647,-0.150919511914253,-0.004379100166261,-0.095249101519585,-0.419524520635605,-0.009271577000618,0.038691271096468,0.113480567932129,0.023032562807202,0.020886465907097));
res += mul(Get(s5,dx,dy), float4x4(-0.121060937643051,0.015887347981334,0.014185697771609,-0.108297988772392,0.092501834034920,-0.093341372907162,-0.128107368946075,0.252591818571091,-0.115710906684399,-0.201835036277771,-0.076288782060146,0.111122965812683,0.091409876942635,0.041038487106562,0.150584235787392,0.080202788114548));
res = max(float4(0, 0, 0, 0), res) + float4(-0.042113967239857,0.160409346222878,0.408227801322937,0.294507473707199) * min(float4(0, 0, 0, 0), res);
return res;
}