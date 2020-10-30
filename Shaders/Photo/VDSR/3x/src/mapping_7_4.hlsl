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
res += mul(Get(s0,-dx,-dy), float4x4(-0.111349344253540,0.158848911523819,0.003955862484872,-0.097777768969536,-0.025551067665219,0.073090225458145,0.124647937715054,-0.060552794486284,-0.073246158659458,0.093277789652348,0.013906942680478,-0.007947328500450,-0.140117868781090,-0.031829215586185,-0.061156410723925,-0.201265469193459));
res += mul(Get(s0,-dx,0), float4x4(0.002276610583067,0.070032693445683,0.113260358572006,-0.084800705313683,0.130758583545685,0.014971102587879,0.031544968485832,-0.059746578335762,0.044969197362661,-0.052618570625782,0.033246047794819,-0.049509380012751,-0.041146893054247,0.123445682227612,-0.002792986808345,-0.074399232864380));
res += mul(Get(s0,-dx,dy), float4x4(-0.116119071841240,-0.001113071921282,-0.048471435904503,-0.143482059240341,0.043262790888548,-0.076941616833210,-0.040546245872974,0.059507768601179,-0.064602300524712,-0.105890311300755,0.004299013409764,-0.064043208956718,0.001763307955116,-0.030399750918150,-0.042910639196634,0.042260836809874));
res += mul(Get(s0,0,-dy), float4x4(-0.086706832051277,0.229216337203979,0.000383788341423,0.023685811087489,0.083978697657585,-0.160021156072617,0.099108770489693,-0.087480865418911,-0.063318915665150,0.035537909716368,-0.040353648364544,-0.066921561956406,-0.017480125650764,0.010833226144314,-0.081669636070728,-0.016254153102636));
res += mul(Get(s0,0,0), float4x4(0.053987361490726,0.108898565173149,0.100412808358669,-0.049121290445328,-0.035297870635986,0.069168202579021,-0.020964119583368,0.027730621397495,0.017408134415746,-0.012948798015714,-0.073324516415596,0.040032021701336,0.068694159388542,0.215835154056549,-0.003997012041509,-0.020925572142005));
res += mul(Get(s0,0,dy), float4x4(0.017182441428304,0.040716104209423,-0.057095002382994,-0.112494811415672,0.027064651250839,-0.053372699767351,-0.086222104728222,-0.020766949281096,0.022667987272143,-0.123386651277542,-0.137203916907310,0.023013403639197,0.168202474713326,0.001395763480105,0.130194351077080,-0.044070288538933));
res += mul(Get(s0,dx,-dy), float4x4(-0.028249908238649,0.129474461078644,0.135277137160301,0.022125994786620,-0.047516461461782,0.027963865548372,0.052932459861040,-0.106738552451134,-0.040333554148674,0.008053148165345,0.000162912561791,-0.040352638810873,0.014168489724398,-0.050813890993595,-0.059667840600014,-0.106945469975471));
res += mul(Get(s0,dx,0), float4x4(0.054958648979664,-0.028407987207174,0.104342035949230,-0.118464358150959,-0.002699004486203,0.078659310936928,-0.067558132112026,0.101801291108131,-0.025619382038713,-0.047481387853622,-0.032641127705574,0.042717989534140,0.030831864103675,-0.139020830392838,-0.011230598203838,-0.211545497179031));
res += mul(Get(s0,dx,dy), float4x4(-0.013002486899495,0.102480731904507,-0.099542893469334,-0.164025470614433,-0.069658063352108,-0.097578905522823,-0.057659033685923,0.110021248459816,-0.024785961955786,-0.144413068890572,-0.144018426537514,0.196764320135117,-0.204472780227661,-0.011447623372078,0.079039536416531,0.092385247349739));
res += mul(Get(s1,-dx,-dy), float4x4(0.060137953609228,0.042581245303154,0.043818909674883,-0.110038481652737,-0.123230621218681,0.090328976511955,0.085821859538555,-0.099347203969955,-0.088074728846550,0.019719069823623,0.031658988445997,0.022582985460758,0.022502565756440,0.047606080770493,0.131380543112755,-0.107955023646355));
res += mul(Get(s1,-dx,0), float4x4(0.099157802760601,0.033642910420895,-0.041933547705412,0.023015722632408,-0.108315356075764,0.126051142811775,0.084437981247902,-0.092256717383862,0.112980961799622,0.060166262090206,0.056204874068499,-0.082059547305107,-0.088588997721672,-0.058142628520727,0.073787510395050,0.068205758929253));
res += mul(Get(s1,-dx,dy), float4x4(-0.006264102645218,-0.086716346442699,-0.146987006068230,0.021241929382086,0.044172845780849,0.168680638074875,0.083808310329914,-0.013425417244434,-0.008736701682210,0.038496773689985,0.040030371397734,0.022903725504875,0.194050371646881,-0.057239755988121,-0.044968850910664,0.015584792010486));
res += mul(Get(s1,0,-dy), float4x4(-0.051918253302574,-0.022097842767835,-0.080501832067966,-0.010409905575216,0.071284100413322,0.021747795864940,-0.041457291692495,0.049590758979321,-0.115913473069668,-0.151196151971817,0.007602279074490,0.023327419534326,-0.071172289550304,-0.031164959073067,0.136156678199768,-0.089749157428741));
res += mul(Get(s1,0,0), float4x4(0.003846603678539,-0.027331765741110,0.121374070644379,0.147887960076332,-0.021264765411615,0.089211501181126,0.012390099465847,-0.100204117596149,-0.110099740326405,-0.086771823465824,-0.009518435224891,-0.014550480991602,-0.230919733643532,-0.006916068959981,0.046214036643505,0.030575422570109));
res += mul(Get(s1,0,dy), float4x4(0.017287859693170,-0.036712732166052,-0.121464520692825,0.020134758204222,-0.014635767787695,0.134751006960869,-0.093375571072102,-0.109255403280258,-0.083104714751244,-0.126041516661644,-0.132582619786263,-0.027435608208179,0.216589003801346,0.003376525361091,-0.039595052599907,0.012367760762572));
res += mul(Get(s1,dx,-dy), float4x4(-0.143723726272583,-0.123389750719070,-0.162783056497574,0.029825622215867,0.066782601177692,-0.051278799772263,-0.020271042361856,0.077676840126514,-0.003048179671168,-0.093941956758499,-0.080293931066990,0.182292029261589,-0.114192306995392,0.150017991662025,0.239488944411278,-0.076417967677116));
res += mul(Get(s1,dx,0), float4x4(-0.008318603970110,0.033868458122015,0.246290177106857,0.056819636374712,0.041482988744974,0.087963707745075,0.136346921324730,-0.067332454025745,0.068401664495468,-0.061126057058573,-0.034762039780617,-0.066450409591198,-0.090695708990097,-0.005653293803334,0.003377124899998,0.076622202992439));
res += mul(Get(s1,dx,dy), float4x4(0.028165610507131,-0.066079229116440,-0.156933516263962,-0.121053427457809,-0.039526320993900,0.058774296194315,0.033293116837740,-0.052289590239525,0.056916318833828,-0.098926618695259,-0.066306903958321,-0.109875902533531,0.212072893977165,-0.065365351736546,-0.177687585353851,0.060924187302589));
res += mul(Get(s2,-dx,-dy), float4x4(0.013277384452522,-0.090730458498001,0.070802047848701,0.041830617934465,-0.102010786533356,0.042730674147606,-0.137215629220009,0.004978011827916,0.124234937131405,0.046055473387241,-0.187785193324089,0.023019177839160,-0.112746879458427,0.008871684782207,0.056987691670656,0.035149108618498));
res += mul(Get(s2,-dx,0), float4x4(0.060054183006287,-0.045042060315609,-0.073097951710224,-0.127557814121246,-0.086743660271168,0.133597165346146,-0.028172552585602,0.066611342132092,0.049529515206814,-0.032923147082329,0.088157333433628,-0.019521007314324,0.004482687916607,0.018901644274592,0.157953470945358,0.100573681294918));
res += mul(Get(s2,-dx,dy), float4x4(0.082856245338917,-0.012283792719245,-0.108707860112190,0.019623490050435,-0.047513172030449,0.073970392346382,-0.109387099742889,0.072143562138081,-0.001664690207690,-0.022171828895807,-0.130918160080910,0.109268903732300,-0.097766987979412,-0.038023814558983,0.166856527328491,0.006555683910847));
res += mul(Get(s2,0,-dy), float4x4(0.021971287205815,-0.096106566488743,0.104643523693085,0.123413704335690,0.022626502439380,0.026381354779005,0.012870289385319,0.008461900986731,0.102076627314091,0.124890461564064,-0.156388923525810,-0.074673481285572,-0.089509919285774,0.068777084350586,0.014972452074289,-0.093994282186031));
res += mul(Get(s2,0,0), float4x4(-0.024271013215184,-0.026295393705368,0.004108562599868,0.098687648773193,0.016222629696131,0.139744043350220,-0.081411994993687,-0.010629503987730,-0.031238155439496,-0.010212121531367,0.140865072607994,0.000237497704802,-0.031926143914461,-0.024611260741949,-0.000114438189485,0.011558493599296));
res += mul(Get(s2,0,dy), float4x4(0.107119351625443,0.149633347988129,-0.034238819032907,0.020343810319901,-0.004286842886358,0.014766249805689,-0.082574099302292,0.143705204129219,-0.048276931047440,0.016606111079454,-0.051938012242317,0.072941638529301,0.074504882097244,0.122290514409542,0.090463675558567,-0.053443115204573));
res += mul(Get(s2,dx,-dy), float4x4(-0.040559414774179,0.185578733682632,0.113473191857338,0.052992671728134,0.235009133815765,0.045083407312632,0.056568082422018,-0.007275772280991,0.060126684606075,-0.198766991496086,-0.184016704559326,-0.066235691308975,-0.075561828911304,-0.126590505242348,-0.052190091460943,-0.087163396179676));
res += mul(Get(s2,dx,0), float4x4(0.122990980744362,0.021274413913488,-0.015750817954540,0.134204089641571,-0.015462066978216,-0.087584786117077,-0.136513113975525,0.007298830896616,-0.044486999511719,-0.076438315212727,0.032774150371552,-0.024204144254327,-0.043757930397987,-0.003417528932914,-0.089439362287521,-0.084664471447468));
res += mul(Get(s2,dx,dy), float4x4(-0.022983210161328,0.028276707977057,-0.035786364227533,0.048964783549309,-0.026778127998114,-0.090448595583439,-0.186429738998413,0.130489796400070,-0.021666599437594,0.096337877213955,-0.059941027313471,0.069362893700600,-0.033059202134609,-0.117703191936016,0.030043842270970,-0.078457877039909));
res += mul(Get(s3,-dx,-dy), float4x4(0.045620910823345,-0.088473781943321,0.089233562350273,0.054443057626486,0.273766875267029,0.067808806896210,0.073331087827682,-0.069677077233791,-0.172778844833374,0.012319201603532,0.035490743815899,-0.036426208913326,0.095579877495766,-0.079238228499889,0.064094811677933,0.005189329385757));
res += mul(Get(s3,-dx,0), float4x4(-0.043157983571291,-0.050072621554136,0.042732037603855,0.005617616698146,-0.032588306814432,0.016640946269035,0.002507064025849,0.107608139514923,-0.163595139980316,-0.081231616437435,0.048194881528616,-0.017733283340931,-0.143632426857948,-0.111510716378689,0.019809303805232,-0.066985376179218));
res += mul(Get(s3,-dx,dy), float4x4(-0.091067805886269,0.083771392703056,0.019137673079967,-0.043329149484634,-0.036551404744387,-0.003848203690723,-0.018700318410993,0.030409028753638,-0.137618705630302,0.046746902167797,0.095611013472080,-0.067140311002731,-0.069227978587151,0.018411163240671,0.138199403882027,-0.087182760238647));
res += mul(Get(s3,0,-dy), float4x4(0.110473491251469,-0.066115580499172,0.003084307769313,0.187879458069801,0.063993893563747,-0.036186721175909,-0.001958798151463,-0.057899121195078,-0.007988542318344,-0.024243833497167,-0.125778600573540,-0.015347531996667,0.009429655037820,-0.029676018282771,-0.065118804574013,-0.048676621168852));
res += mul(Get(s3,0,0), float4x4(0.083354808390141,-0.080424867570400,-0.040527593344450,-0.001393965794705,-0.059189021587372,-0.044732313603163,-0.015983449295163,-0.114610403776169,-0.018255539238453,-0.007837284356356,-0.017704317346215,-0.018840322270989,-0.003461807733402,-0.063658908009529,-0.010353995487094,-0.063624016940594));
res += mul(Get(s3,0,dy), float4x4(0.210345998406410,-0.023121064528823,-0.022797819226980,0.073618710041046,-0.075530320405960,-0.091078057885170,-0.000079297111370,-0.144098505377769,0.078267052769661,-0.063912026584148,-0.052124548703432,-0.001639080350287,0.206957861781120,0.230326965451241,-0.045428406447172,-0.088869914412498));
res += mul(Get(s3,dx,-dy), float4x4(0.034615032374859,-0.009190937504172,-0.122713580727577,0.111953981220722,0.037013787776232,0.007873706519604,0.043790526688099,-0.019484275951982,0.029750589281321,0.121889121830463,-0.142970830202103,-0.095375590026379,-0.135397866368294,-0.029199961572886,-0.078038752079010,-0.026490155607462));
res += mul(Get(s3,dx,0), float4x4(0.029409218579531,0.010763715021312,-0.073284544050694,-0.060185123234987,0.091977864503860,-0.000070295514888,-0.039675761014223,0.121629096567631,0.033126674592495,0.077132835984230,-0.018632574006915,-0.013853612355888,-0.185109108686447,-0.001770658767782,0.056916382163763,-0.031090347096324));
res += mul(Get(s3,dx,dy), float4x4(0.030412487685680,0.089186474680901,-0.096586294472218,-0.042590532451868,-0.051166895776987,-0.083534494042397,-0.071645192801952,0.011525710113347,-0.006383097730577,0.052329320460558,0.027195259928703,-0.123818673193455,-0.009902322664857,0.045369897037745,0.093581892549992,-0.114406690001488));
return max(float4(0,0,0,0), res);
}
