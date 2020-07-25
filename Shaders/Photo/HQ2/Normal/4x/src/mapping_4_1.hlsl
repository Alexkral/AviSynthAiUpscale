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
res += mul(Get(s0,-dx,-dy), float4x4(0.128794789314270,-0.022660184651613,0.023246353492141,0.077681884169579,-0.066528588533401,-0.017653934657574,0.008937372826040,0.076542489230633,-0.024788979440928,0.002670758171007,-0.002507899189368,0.023112883791327,0.143614768981934,-0.011385227553546,-0.036872819066048,-0.037978388369083));
res += mul(Get(s0,-dx,0), float4x4(0.085565336048603,-0.032297898083925,-0.059825509786606,-0.054592810571194,-0.059312596917152,-0.054418273270130,0.043694078922272,0.001078746747226,0.008680756203830,0.006112402770668,0.027105143293738,-0.028072344139218,0.081992171704769,-0.003364170202985,-0.069852352142334,-0.014580219984055));
res += mul(Get(s0,-dx,dy), float4x4(0.128658890724182,-0.013621888123453,-0.023785030469298,-0.102616280317307,0.023975567892194,-0.054263561964035,-0.007764438167214,-0.053832311183214,0.001257454045117,-0.006339197512716,0.012179536744952,-0.017974905669689,-0.000488096469780,-0.008383012376726,0.042575910687447,-0.052899491041899));
res += mul(Get(s0,0,-dy), float4x4(0.116282872855663,0.003264454193413,0.030794730409980,0.080637000501156,0.024903789162636,-0.013345495797694,0.054379273205996,0.062148083001375,-0.038058672100306,-0.000994994072244,-0.020477671176195,0.009672739543021,0.199181497097015,0.006673936266452,0.037173196673393,-0.018894966691732));
res += mul(Get(s0,0,0), float4x4(0.078522339463234,-0.016646644100547,-0.018690750002861,-0.043654605746269,0.030516548082232,-0.028317300602794,0.102412387728691,0.045103807002306,0.010376777499914,-0.000519078923389,0.008853827603161,-0.014651408419013,-0.018118944019079,-0.004910382442176,0.002241584239528,-0.006595434155315));
res += mul(Get(s0,0,dy), float4x4(0.017999667674303,-0.008479866199195,-0.065990008413792,-0.120488554239273,0.008824965916574,-0.027234872803092,0.090980432927608,-0.029085250571370,0.006668813992292,0.001692339661531,-0.005552039481699,-0.013912382535636,-0.065653450787067,0.009673212654889,0.017931012436748,-0.074920661747456));
res += mul(Get(s0,dx,-dy), float4x4(0.044444508850574,-0.018698051571846,0.024753628298640,0.026984380558133,0.047823373228312,0.086612775921822,0.070418357849121,0.029582250863314,-0.032819919288158,-0.000653227791190,-0.015853727236390,0.006473151035607,-0.001812074100599,-0.001660472596996,0.038787983357906,-0.011449888348579));
res += mul(Get(s0,dx,0), float4x4(-0.002007899573073,-0.017272341996431,0.027677511796355,-0.033663883805275,-0.018072325736284,0.068778410553932,0.160336390137672,0.037602741271257,-0.022212101146579,-0.007234601303935,0.025287108495831,-0.017029801383615,-0.042329087853432,-0.013773111626506,-0.025115231052041,-0.023978631943464));
res += mul(Get(s0,dx,dy), float4x4(-0.049938961863518,-0.016088893637061,-0.038900382816792,-0.016064124181867,-0.067421652376652,0.024905849248171,0.132965072989464,0.011947300285101,0.007267497014254,0.004374123178422,0.011797972023487,-0.023882929235697,0.010464322753251,-0.004330426454544,0.000983340316452,-0.070607855916023));
res += mul(Get(s1,-dx,-dy), float4x4(0.071581132709980,-0.016319423913956,0.024776106700301,-0.027742287144065,-0.011919442564249,-0.018542330712080,0.014381912536919,-0.005942929536104,-0.027187442407012,-0.005666623823345,0.010153448209167,0.025953898206353,-0.113804936408997,-0.001705962116830,-0.035141773521900,0.042768113315105));
res += mul(Get(s1,-dx,0), float4x4(-0.026028826832771,-0.027160046622157,-0.097861118614674,-0.006744945421815,-0.044558707624674,-0.008338694460690,-0.015444539487362,-0.030382001772523,-0.009319393895566,-0.010114475153387,0.030073825269938,-0.021762859076262,-0.098708711564541,0.006745014805347,-0.015887239947915,0.026113802567124));
res += mul(Get(s1,-dx,dy), float4x4(0.018795505166054,-0.031863193958998,-0.087295331060886,-0.010828945785761,-0.050201080739498,-0.014282510615885,0.005263003055006,-0.032279070466757,0.057071112096310,0.005173734389246,0.003052100772038,-0.022748418152332,-0.118418037891388,-0.002996768336743,-0.071986399590969,-0.003078334499151));
res += mul(Get(s1,0,-dy), float4x4(0.094049237668514,-0.013425443321466,0.079760931432247,-0.003536482108757,0.008878160268068,-0.005394695326686,0.001810592482798,0.035698909312487,-0.014381193555892,-0.013176281936467,0.028280002996325,0.037130977958441,-0.095695197582245,0.009614037349820,0.014483562670648,0.073084250092506));
res += mul(Get(s1,0,0), float4x4(0.063660770654678,-0.036928787827492,-0.047794450074434,0.014323412440717,0.001699077663943,0.003321659518406,-0.012378257699311,0.007784571498632,-0.044545020908117,-0.019755158573389,0.065143845975399,-0.010899002663791,-0.063542358577251,-0.007241901475936,0.022696701809764,0.065595380961895));
res += mul(Get(s1,0,dy), float4x4(0.027504881843925,-0.047668006271124,0.004632948432118,-0.064536347985268,-0.008841389790177,-0.001954496139660,0.008919226005673,-0.012018158100545,0.005737347062677,-0.002776956185699,0.042385838925838,-0.041081398725510,-0.080875709652901,-0.026167562231421,-0.040590576827526,0.058949228376150));
res += mul(Get(s1,dx,-dy), float4x4(0.021660355851054,-0.034472625702620,0.083642728626728,0.028096696361899,-0.055916659533978,0.022308591753244,0.009063894860446,0.024961883202195,0.015407070517540,0.025206292048097,-0.008495585061610,0.014647192321718,-0.057488992810249,0.036568991839886,0.030521795153618,0.076229862868786));
res += mul(Get(s1,dx,0), float4x4(-0.032708045095205,-0.022584332153201,0.033493809401989,-0.012678050436080,-0.037914641201496,0.003259922843426,-0.003141612512991,-0.013238734565675,-0.028992261737585,0.013136228546500,0.018342273309827,0.007426556199789,-0.032845515757799,0.015234334394336,0.037025574594736,0.051968194544315));
res += mul(Get(s1,dx,dy), float4x4(-0.115435048937798,-0.033893670886755,0.032334040850401,-0.088743127882481,0.025494614616036,-0.002550403354689,0.015456896275282,-0.030918927863240,-0.001414233469404,0.004996103234589,0.007272514048964,-0.021567268297076,-0.006588667165488,-0.000632199109532,0.018379651010036,0.029345700517297));
res += mul(Get(s2,-dx,-dy), float4x4(-0.064832754433155,-0.000928985478822,-0.112777486443520,0.158845365047455,0.001844839658588,-0.009687653742731,-0.031645838171244,0.015734653919935,0.002743490273133,0.024594819173217,-0.030832016840577,-0.001131294877268,-0.125722482800484,0.017905127257109,-0.122613705694675,0.078078605234623));
res += mul(Get(s2,-dx,0), float4x4(0.018837889656425,-0.030860438942909,-0.128659293055534,0.004300850909203,0.083962343633175,-0.003465583082289,-0.024671472609043,-0.035280387848616,0.039312511682510,0.008431117050350,-0.062055941671133,0.080493658781052,-0.018492333590984,-0.011313096620142,-0.006929013412446,-0.027223573997617));
res += mul(Get(s2,-dx,dy), float4x4(0.038823679089546,-0.002765435026959,-0.070996269583702,-0.030058935284615,0.013230172917247,-0.007602232042700,-0.033536091446877,-0.055976651608944,0.015468625351787,-0.024801621213555,-0.033104386180639,0.068680569529533,0.048161551356316,-0.011572706513107,0.010929755866528,-0.094506859779358));
res += mul(Get(s2,0,-dy), float4x4(0.065559171140194,-0.011766758747399,0.016523754224181,0.186904475092888,0.005231007933617,-0.005222209263593,0.067438393831253,0.078976355493069,-0.002587573137134,0.028154287487268,-0.031048264354467,-0.077026352286339,-0.021294169127941,0.022696428000927,0.003060301067308,0.006924587767571));
res += mul(Get(s2,0,0), float4x4(0.080960154533386,-0.063772857189178,-0.000638475874439,0.024740340188146,0.009355155751109,-0.005153823178262,0.047693233937025,0.017678154632449,0.098105311393738,0.012480075471103,-0.021515000611544,-0.010963346809149,-0.142440348863602,0.049261845648289,-0.061271294951439,-0.035037331283092));
res += mul(Get(s2,0,dy), float4x4(0.027164459228516,-0.042013350874186,-0.047830689698458,0.015307656489313,0.000404521066230,-0.006449269130826,0.027006475254893,-0.046012330800295,0.164159938693047,-0.035084243863821,0.073870725929737,0.009514889679849,0.019651899114251,0.016476763412356,-0.046558573842049,0.010794213041663));
res += mul(Get(s2,dx,-dy), float4x4(0.032383799552917,0.061291202902794,0.089365549385548,0.161822035908699,-0.028233069926500,-0.006081896368414,0.016512816771865,0.035286437720060,0.042654491961002,0.030630797147751,-0.010919880121946,-0.100411124527454,-0.016748959198594,-0.006666670553386,0.119342841207981,0.072430208325386));
res += mul(Get(s2,dx,0), float4x4(-0.024455290287733,-0.001436854479834,0.115998044610023,0.004264316987246,-0.052330411970615,-0.003894584719092,0.002948461798951,0.002854853169993,0.060462616384029,0.022247696295381,-0.019912200048566,-0.067184492945671,0.015230866149068,0.018607594072819,0.056111071258783,0.066721446812153));
res += mul(Get(s2,dx,dy), float4x4(-0.051882620900869,-0.057542856782675,0.063245832920074,0.033145487308502,-0.039438158273697,-0.015737324953079,-0.050915505737066,-0.038822032511234,0.051744956523180,-0.008269291371107,0.114281006157398,-0.043881002813578,0.015010297298431,-0.000002857974323,-0.010085384361446,0.042039107531309));
res += mul(Get(s3,-dx,-dy), float4x4(-0.042153734713793,0.015949442982674,-0.025395968928933,0.077000230550766,0.046661913394928,-0.044359441846609,-0.090201325714588,-0.038402907550335,0.045091480016708,-0.004347028210759,0.026278218254447,-0.060473084449768,0.022931909188628,-0.007281770929694,-0.003239785786718,0.001950741629116));
res += mul(Get(s3,-dx,0), float4x4(0.014802360907197,-0.012822263874114,-0.039610285311937,0.055974174290895,0.095308624207973,-0.036467030644417,-0.069800212979317,-0.061538238078356,-0.035805698484182,-0.004356937948614,-0.034800875931978,-0.020244318991899,0.001981852110475,-0.009573397226632,0.011700091883540,0.023584643378854));
res += mul(Get(s3,-dx,dy), float4x4(-0.005107910837978,-0.020174257457256,-0.011715482920408,0.008178955875337,0.088113442063332,-0.039167061448097,-0.022247724235058,-0.065634354948997,0.052799005061388,-0.001907897647470,0.052336301654577,0.013597290031612,-0.011157318018377,0.011706472374499,0.000710736960173,0.013611160218716));
res += mul(Get(s3,0,-dy), float4x4(-0.051004983484745,0.080090232193470,-0.038600504398346,0.029347984120250,-0.067648366093636,-0.008040715940297,0.052840325981379,-0.003301611170173,0.081085406243801,-0.013198863714933,0.045627094805241,-0.104746103286743,0.016190331429243,-0.009129841811955,-0.002805727301165,0.006014360580593));
res += mul(Get(s3,0,0), float4x4(0.016062883660197,0.046554096043110,-0.015617754310369,0.034369096159935,-0.072723470628262,-0.001199688296765,0.016090627759695,-0.033036477863789,-0.030792349949479,-0.019905224442482,-0.068966053426266,-0.042964242398739,-0.000739302136935,0.004230688791722,0.004569624084979,-0.003821654478088));
res += mul(Get(s3,0,dy), float4x4(0.008076203987002,0.024842808023095,0.000862910703290,0.019235000014305,0.048060666769743,-0.002142969984561,0.061426650732756,-0.032526072114706,-0.034006796777248,-0.008016828447580,-0.009283397346735,-0.061834428459406,-0.011035789735615,0.006957439705729,0.003695881459862,0.006558892782778));
res += mul(Get(s3,dx,-dy), float4x4(-0.063492104411125,0.058306291699409,-0.079220719635487,-0.012408623471856,-0.034116446971893,-0.016794651746750,-0.039786010980606,0.001259795390069,0.014466304332018,-0.020168796181679,0.050772521644831,-0.107771754264832,-0.008826279081404,0.000711882486939,0.004931121598929,-0.006047274917364));
res += mul(Get(s3,dx,0), float4x4(-0.056320048868656,0.055576771497726,-0.045077264308929,-0.008828220888972,0.063047736883163,-0.010965874418616,-0.062540508806705,-0.021662680432200,-0.051477644592524,-0.046002160757780,-0.034496571868658,-0.055734556168318,-0.008360879495740,-0.003666630247608,-0.002648836933076,0.009260085411370));
res += mul(Get(s3,dx,dy), float4x4(-0.034223031252623,0.008663292974234,-0.003013539826497,0.009355880320072,0.090231008827686,-0.012130959890783,-0.023503318428993,-0.018473472446203,0.007831515744328,-0.043504644185305,0.017327414825559,-0.112761445343494,-0.017007863149047,-0.006464914418757,0.003096821252257,-0.007622518576682));
res = max(float4(0,0,0,0), res);
return res;
}
