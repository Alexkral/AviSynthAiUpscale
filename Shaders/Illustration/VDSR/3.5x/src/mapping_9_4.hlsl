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
res += mul(Get(s0,-dx,-dy), float4x4(0.093340456485748,-0.000482968665892,0.097055606544018,0.019961692392826,-0.048247948288918,-0.078850850462914,-0.274682462215424,-0.008584900759161,0.001192646916024,0.089838027954102,0.096733108162880,-0.013884092681110,-0.032076001167297,0.129964455962181,0.252073884010315,-0.013205438852310));
res += mul(Get(s0,-dx,0), float4x4(-0.014376280829310,-0.075607843697071,0.125984802842140,0.020054398104548,0.171451687812805,0.105987302958965,-0.217669278383255,-0.022909091785550,0.071391455829144,0.060388363897800,-0.040838532149792,-0.057527221739292,-0.261268168687820,-0.051470186561346,-0.011346348561347,-0.055490128695965));
res += mul(Get(s0,-dx,dy), float4x4(0.235744684934616,0.237375989556313,-0.019329901784658,0.020369051024318,-0.094793990254402,0.065065383911133,0.110721647739410,0.189861074090004,0.104163512587547,-0.014296079054475,0.134969562292099,0.008629032410681,-0.035192206501961,-0.065733455121517,0.042055830359459,0.068822510540485));
res += mul(Get(s0,0,-dy), float4x4(0.119475968182087,0.054013032466173,0.047187581658363,0.031568385660648,-0.046356018632650,-0.001489748945460,0.132547587156296,-0.131500661373138,0.079972296953201,0.082276687026024,-0.153711006045341,0.002646534936503,0.116987057030201,0.128878235816956,-0.064657986164093,0.062063176184893));
res += mul(Get(s0,0,0), float4x4(-0.027958987280726,-0.108072958886623,0.038494586944580,-0.106629662215710,-0.075360544025898,-0.035572089254856,-0.147543966770172,-0.295683920383453,0.221064284443855,0.018299287185073,0.094083443284035,0.063317410647869,0.223895862698555,-0.091823525726795,0.006109616253525,0.047634121030569));
res += mul(Get(s0,0,dy), float4x4(0.051384527236223,0.182377681136131,0.141377240419388,-0.083023473620415,-0.003642912488431,-0.295588821172714,-0.231138333678246,0.046349819749594,-0.160999014973640,-0.173521459102631,0.224608629941940,-0.108910322189331,0.198694929480553,-0.130329355597496,0.031233210116625,0.066113077104092));
res += mul(Get(s0,dx,-dy), float4x4(-0.276555120944977,-0.130052804946899,0.034656818956137,-0.222978964447975,0.020884778350592,-0.048914276063442,-0.079450339078903,-0.102391861379147,0.088393434882164,0.297857850790024,0.062325131148100,0.037216190248728,-0.076754093170166,0.126597821712494,0.010889017954469,-0.094088144600391));
res += mul(Get(s0,dx,0), float4x4(0.041722003370523,-0.098776020109653,0.156668171286583,-0.087637975811958,0.014193648472428,0.316061526536942,-0.214707404375076,-0.073120400309563,0.080687679350376,0.063430964946747,-0.100042566657066,0.088828697800636,0.146620512008667,0.060897614806890,0.082182295620441,0.009111937135458));
res += mul(Get(s0,dx,dy), float4x4(-0.092400379478931,0.092750743031502,0.003892268519849,0.108228616416454,0.059193454682827,0.052507709711790,0.100532792508602,-0.093219973146915,-0.074428491294384,0.214758962392807,0.061268720775843,-0.259623259305954,-0.182082474231720,0.018613623455167,0.009471956640482,0.026792932301760));
res += mul(Get(s1,-dx,-dy), float4x4(-0.084251500666142,-0.007460083812475,-0.010599280707538,-0.053239300847054,0.043480589985847,-0.115571230649948,-0.033118061721325,0.011514331214130,-0.048740353435278,0.053741335868835,0.128805577754974,0.101051256060600,-0.244092404842377,0.272528111934662,-0.237481683492661,0.123950034379959));
res += mul(Get(s1,-dx,0), float4x4(-0.283786773681641,0.035717632621527,-0.137373805046082,-0.175687327980995,0.128140017390251,0.076687753200531,-0.059866413474083,-0.023677593097091,0.115177616477013,0.055621434003115,-0.189017698168755,-0.002969820983708,0.042019862681627,-0.048197865486145,0.034998826682568,-0.011027664877474));
res += mul(Get(s1,-dx,dy), float4x4(-0.050919376313686,0.075643502175808,-0.114342048764229,0.008733090013266,-0.088753491640091,-0.317977815866470,0.129744887351990,-0.048971816897392,-0.080774113535881,0.124656669795513,-0.172208562493324,-0.196808040142059,-0.155161395668983,0.020071975886822,0.069039985537529,-0.102086983621120));
res += mul(Get(s1,0,-dy), float4x4(0.062781564891338,-0.011248456314206,-0.022583933547139,0.114491656422615,-0.049037985503674,-0.104563154280186,-0.042494352906942,-0.118719808757305,-0.097576163709164,0.040154121816158,-0.128211751580238,0.056079398840666,-0.119742609560490,0.051573053002357,-0.015268639661372,0.062833011150360));
res += mul(Get(s1,0,0), float4x4(0.058108519762754,-0.079374104738235,0.058057628571987,0.023080788552761,0.082205481827259,-0.069194339215755,-0.015863088890910,0.042155407369137,0.200914978981018,-0.073799654841423,-0.010786056518555,0.040218565613031,0.119035854935646,-0.074160955846310,-0.054810121655464,0.034163713455200));
res += mul(Get(s1,0,dy), float4x4(-0.041093513369560,0.069768041372299,0.104054883122444,0.023368015885353,-0.055810943245888,-0.043884519487619,0.218350619077682,-0.075902529060841,-0.155465632677078,0.025273732841015,0.083900623023510,0.085358962416649,0.268139958381653,-0.011971222236753,-0.144363999366760,-0.099405974149704));
res += mul(Get(s1,dx,-dy), float4x4(0.012736807577312,0.254225432872772,0.040338806807995,0.160721778869629,0.183349266648293,-0.059227548539639,-0.005114459898323,-0.044118218123913,-0.014202940277755,-0.100633032619953,-0.025036545470357,-0.175917625427246,-0.213316634297371,-0.019386993721128,-0.062021251767874,-0.065539278090000));
res += mul(Get(s1,dx,0), float4x4(0.054824393242598,-0.030990347266197,0.113993808627129,-0.084575533866882,-0.291380167007446,-0.002585483947769,0.222928568720818,0.009019058197737,0.004978687968105,0.013242175802588,-0.210270971059799,-0.110146373510361,-0.084890983998775,-0.187588065862656,0.081901267170906,-0.121311746537685));
res += mul(Get(s1,dx,dy), float4x4(-0.066656112670898,-0.064420454204082,-0.004423328209668,-0.098138071596622,-0.104534812271595,0.000436242757132,0.072728238999844,-0.102109268307686,-0.173560246825218,0.005700008012354,-0.031683042645454,0.133256956934929,0.000659832381643,-0.176763489842415,0.107624404132366,0.158529549837112));
res += mul(Get(s2,-dx,-dy), float4x4(0.065775528550148,0.141226366162300,-0.095727093517780,-0.006852012127638,0.012114486657083,-0.046623338013887,0.224632516503334,-0.027675461024046,0.095528960227966,-0.248553752899170,-0.257849097251892,-0.054107621312141,0.024237932637334,0.131467029452324,0.136306568980217,0.220944136381149));
res += mul(Get(s2,-dx,0), float4x4(-0.003268560627475,-0.032279811799526,-0.007334804628044,0.040961291640997,-0.077265948057175,-0.010222408920527,-0.067497678101063,0.004615901503712,0.051020134240389,-0.009897961281240,0.058688275516033,0.036235317587852,0.051788028329611,0.009638814255595,0.112365938723087,0.070998452603817));
res += mul(Get(s2,-dx,dy), float4x4(-0.172807097434998,-0.019200775772333,-0.007588207256049,-0.039278332144022,-0.135618731379509,0.115618444979191,-0.219539850950241,-0.090917162597179,-0.062510721385479,0.092918276786804,-0.248967185616493,-0.228038072586060,0.110973432660103,0.062435720115900,0.138285383582115,-0.076752305030823));
res += mul(Get(s2,0,-dy), float4x4(0.153907820582390,0.154704913496971,0.194756314158440,0.017195554450154,0.063138671219349,-0.231557413935661,0.040569439530373,0.160162985324860,-0.295183986425400,0.055038720369339,-0.043089423328638,-0.049825914204121,0.152942076325417,0.051932387053967,0.058520052582026,-0.069305382668972));
res += mul(Get(s2,0,0), float4x4(-0.031276598572731,0.106582634150982,-0.121065028011799,-0.088648244738579,-0.090853273868561,-0.079778879880905,-0.032503381371498,-0.196681052446365,-0.178975135087967,-0.070443280041218,-0.186279669404030,-0.054677225649357,-0.018386473879218,0.039614964276552,-0.105764791369438,-0.055727094411850));
res += mul(Get(s2,0,dy), float4x4(0.117747910320759,0.175203919410706,-0.105244569480419,0.007491378579289,-0.093110084533691,0.121269270777702,-0.185257092118263,-0.057266481220722,-0.036197792738676,-0.025198515504599,0.119635365903378,-0.100521951913834,0.281596451997757,0.010020792484283,-0.042864575982094,0.050081253051758));
res += mul(Get(s2,dx,-dy), float4x4(-0.076387211680412,0.059828061610460,-0.099751867353916,-0.225737944245338,0.012859251350164,-0.366272002458572,-0.075241170823574,-0.134451910853386,0.224364161491394,-0.097833782434464,-0.086602441966534,0.170789808034897,0.007572235073894,-0.049677528440952,-0.034332077950239,0.015449686907232));
res += mul(Get(s2,dx,0), float4x4(-0.055288363248110,-0.023762652650476,-0.060139458626509,-0.028852280229330,-0.086772367358208,0.114632450044155,-0.056807942688465,-0.006106463260949,-0.104346923530102,-0.114309288561344,-0.064304277300835,-0.103643268346786,-0.089022360742092,0.051647044718266,-0.034929297864437,-0.073053583502769));
res += mul(Get(s2,dx,dy), float4x4(-0.056758169084787,-0.001215321710333,-0.104199849069118,-0.120451100170612,0.155651614069939,0.163836330175400,-0.102690435945988,0.008067563176155,0.018190138041973,0.166991367936134,0.025154856964946,-0.124647930264473,-0.096025496721268,0.131277173757553,-0.252395063638687,0.077240154147148));
res += mul(Get(s3,-dx,-dy), float4x4(-0.202892735600471,0.022421220317483,-0.157868847250938,0.044745847582817,-0.081658869981766,-0.028365911915898,-0.022497188299894,-0.222661495208740,-0.025702556595206,-0.004304999951273,0.037857975810766,0.172542244195938,0.034391444176435,-0.062351487576962,-0.213031247258186,-0.130546957254410));
res += mul(Get(s3,-dx,0), float4x4(0.014018703252077,-0.010251446627080,-0.151285752654076,-0.118569500744343,0.026146458461881,0.047870431095362,0.054161034524441,0.009317279793322,-0.133824139833450,0.155619174242020,-0.184282779693604,0.006501967553049,0.060329645872116,0.075410321354866,0.091033905744553,-0.055075313895941));
res += mul(Get(s3,-dx,dy), float4x4(-0.052542816847563,0.013724877499044,-0.066827051341534,-0.010766427963972,0.245851948857307,0.024410067126155,-0.209611922502518,0.120196036994457,0.028273252770305,-0.142731979489326,-0.158652380108833,-0.102806523442268,-0.056129038333893,0.045934315770864,0.074280701577663,-0.081219568848610));
res += mul(Get(s3,0,-dy), float4x4(-0.064404837787151,-0.125885277986526,0.026013415306807,0.034027718007565,0.170604512095451,0.066198177635670,-0.049461923539639,0.085981614887714,-0.005943135824054,-0.102268405258656,0.035411857068539,-0.015445391647518,0.230910092592239,0.092074580490589,0.071083724498749,-0.275380581617355));
res += mul(Get(s3,0,0), float4x4(-0.069198608398438,-0.147741824388504,0.030094644054770,0.195139154791832,0.328470736742020,-0.014532099477947,-0.136097714304924,-0.105788744986057,0.124762997031212,-0.009188664145768,-0.003735035890713,0.021910576149821,0.017717333510518,0.017054060474038,0.218931823968887,0.233926489949226));
res += mul(Get(s3,0,dy), float4x4(-0.081211619079113,-0.017740659415722,-0.009568608365953,0.039413049817085,0.026746299117804,-0.117098160088062,0.214474648237228,0.077892832458019,-0.052578773349524,0.134203091263771,0.168709814548492,-0.036519195884466,0.178432270884514,0.016402339562774,-0.048877656459808,0.002289422554895));
res += mul(Get(s3,dx,-dy), float4x4(-0.062574565410614,-0.014539347961545,0.001748797600158,0.092495538294315,-0.121190056204796,-0.070863388478756,0.061879623681307,0.073044180870056,-0.051329027861357,0.022541349753737,-0.043790813535452,0.030719891190529,0.187368080019951,-0.185510233044624,0.095157943665981,-0.080742046236992));
res += mul(Get(s3,dx,0), float4x4(0.096864528954029,0.028884312137961,0.106257729232311,0.094730883836746,0.089750394225121,-0.118746608495712,0.057274140417576,-0.132795438170433,0.229255750775337,-0.032654833048582,0.112488262355328,-0.250184267759323,-0.054442659020424,0.002907612593845,0.231120318174362,0.191125407814980));
res += mul(Get(s3,dx,dy), float4x4(-0.125572636723518,0.154887214303017,-0.005319996736944,0.110916808247566,-0.104308873414993,-0.041389841586351,0.024096844717860,0.004407262429595,0.021468186751008,-0.218843966722488,0.229532957077026,0.074017815291882,-0.005828801542521,0.200855687260628,-0.050208598375320,0.056613985449076));
return max(float4(0,0,0,0), res);
}
