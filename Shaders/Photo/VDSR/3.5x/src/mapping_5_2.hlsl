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
res += mul(Get(s0,-dx,-dy), float4x4(-0.104413583874702,0.042258836328983,-0.170912325382233,-0.145061731338501,0.082956403493881,0.045551609247923,0.028614666312933,0.147875964641571,0.012087174691260,-0.035121355205774,0.120419494807720,0.043393507599831,-0.032973613590002,-0.084949113428593,-0.035230819135904,-0.114996626973152));
res += mul(Get(s0,-dx,0), float4x4(-0.088353596627712,-0.050556164234877,-0.141293793916702,-0.076853729784489,0.245777979493141,0.089659079909325,0.089623801410198,0.022436672821641,0.017324697226286,-0.075196713209152,0.019570374861360,0.203384757041931,-0.079668514430523,-0.024536300450563,0.053708367049694,-0.058300022035837));
res += mul(Get(s0,-dx,dy), float4x4(-0.044407323002815,-0.008077600970864,0.004922241438180,-0.052056130021811,0.033512413501740,-0.144561424851418,0.090759173035622,-0.094585545361042,-0.090069130063057,-0.188014045357704,-0.034803099930286,0.096328638494015,-0.029861263930798,0.106381811201572,-0.033634301275015,-0.054884932935238));
res += mul(Get(s0,0,-dy), float4x4(-0.144056528806686,-0.046162981539965,-0.115789107978344,-0.155499354004860,0.029555374756455,0.076099686324596,0.057355821132660,0.028408152982593,-0.033534519374371,0.059138484299183,0.039773929864168,0.024446399882436,0.103369563817978,-0.001749621122144,0.030862892046571,-0.139304295182228));
res += mul(Get(s0,0,0), float4x4(-0.117120295763016,0.001820166595280,-0.079714462161064,-0.122633054852486,0.164663136005402,0.224226325750351,-0.062867105007172,-0.043607458472252,-0.003716504201293,0.079430513083935,-0.001322433236055,0.033917952328920,0.193365454673767,0.086734041571617,0.086978636682034,-0.030016561970115));
res += mul(Get(s0,0,dy), float4x4(-0.063758008182049,0.067443616688251,0.024361765012145,-0.058039247989655,0.054941035807133,0.048943676054478,0.004971704445779,-0.167443886399269,-0.046020336449146,-0.003997151739895,0.005241125822067,-0.066603437066078,0.204638555645943,0.110456302762032,-0.109993085265160,-0.042876452207565));
res += mul(Get(s0,dx,-dy), float4x4(-0.090269669890404,-0.073914438486099,-0.074393831193447,-0.049694325774908,-0.044512938708067,-0.133231356739998,0.006011271383613,-0.044417086988688,-0.040154628455639,-0.055454555898905,0.009706579148769,0.049503847956657,-0.037068177014589,-0.065782286226749,0.095571741461754,0.096991889178753));
res += mul(Get(s0,dx,0), float4x4(-0.008427515625954,-0.032153092324734,-0.006254050415009,0.064117126166821,0.017598187550902,-0.001372714526951,-0.087331071496010,-0.094513446092606,0.033028919249773,-0.032610431313515,-0.006731665693223,-0.017048025503755,-0.129905596375465,-0.017900468781590,0.057492978870869,-0.053258128464222));
res += mul(Get(s0,dx,dy), float4x4(0.029887368902564,0.030966470018029,0.063459649682045,0.212273716926575,0.038225486874580,-0.191444471478462,0.119679227471352,-0.096554361283779,0.011861113831401,-0.090327002108097,-0.039816804230213,0.016792165115476,-0.072469674050808,-0.032616533339024,-0.096344351768494,0.065132170915604));
res += mul(Get(s1,-dx,-dy), float4x4(-0.038199163973331,-0.074330359697342,0.033158365637064,-0.066789984703064,-0.130586683750153,-0.045272894203663,-0.063450798392296,-0.038160726428032,0.014891071245074,-0.097297050058842,0.024634610861540,-0.078683502972126,-0.000639070116449,-0.038326382637024,-0.005664491094649,-0.260536462068558));
res += mul(Get(s1,-dx,0), float4x4(-0.048567298799753,-0.054188437759876,0.003422604640946,0.013790489174426,-0.052190255373716,-0.032671593129635,-0.008068772964180,-0.105221986770630,0.048388779163361,-0.072402872145176,0.108065709471703,-0.096896976232529,-0.012550562620163,0.023517437279224,0.028619334101677,-0.128701582551003));
res += mul(Get(s1,-dx,dy), float4x4(-0.044234029948711,-0.066735699772835,-0.056759752333164,0.107272945344448,-0.010291493497789,0.007141170557588,0.144684597849846,-0.036678448319435,-0.164478421211243,-0.074485577642918,0.248308449983597,-0.097621954977512,0.051461715251207,-0.022344633936882,-0.144033566117287,-0.077641338109970));
res += mul(Get(s1,0,-dy), float4x4(0.040366180241108,0.075164675712585,0.036137484014034,-0.013192020356655,-0.047663804143667,-0.034946624189615,0.060320522636175,-0.078328102827072,0.103185392916203,0.097214318811893,-0.122636027634144,0.090109236538410,0.110917575657368,-0.007715766318142,0.076646737754345,-0.015099812299013));
res += mul(Get(s1,0,0), float4x4(0.043927516788244,0.157997548580170,-0.018215255811810,0.095747023820877,-0.023239189758897,-0.063794255256653,0.059124499559402,-0.045527353882790,-0.099635317921638,0.181544691324234,-0.009156637825072,-0.066498264670372,0.193607315421104,0.050480969250202,-0.010266302153468,-0.019098535180092));
res += mul(Get(s1,0,dy), float4x4(-0.073354862630367,0.028661962598562,-0.159959644079208,-0.074515350162983,0.004519881214947,-0.080602154135704,0.060566511005163,0.039077479392290,-0.089122168719769,0.088396929204464,0.258756905794144,-0.117391332983971,0.109790123999119,-0.100061669945717,-0.125220209360123,-0.102265805006027));
res += mul(Get(s1,dx,-dy), float4x4(0.015965823084116,-0.097140938043594,-0.018239296972752,0.028135981410742,0.059316121041775,-0.052719272673130,0.071327224373817,-0.025855913758278,0.023229526355863,-0.065771237015724,-0.016319693997502,0.144091233611107,0.139732077717781,0.004430146887898,0.053557526320219,-0.003646611934528));
res += mul(Get(s1,dx,0), float4x4(-0.056923802942038,0.013448913581669,0.029370365664363,0.075147531926632,0.091684006154537,-0.100055947899818,-0.096087165176868,-0.034016877412796,0.012094153091311,-0.072123393416405,0.115980960428715,-0.027951028198004,0.068539142608643,0.024124663323164,0.016772493720055,-0.004183453042060));
res += mul(Get(s1,dx,dy), float4x4(-0.143091604113579,0.006884544156492,-0.037768501788378,-0.020735396072268,0.114710196852684,-0.130087867379189,0.019822491332889,0.067372761666775,0.148002192378044,0.077301211655140,-0.065705902874470,-0.084011681377888,-0.048721484839916,-0.112350612878799,0.008450056426227,0.102494411170483));
res += mul(Get(s2,-dx,-dy), float4x4(-0.066561274230480,-0.093583650887012,-0.009581593796611,0.045173738151789,-0.043371476233006,-0.050808325409889,-0.061422795057297,-0.001690525212325,-0.007424816023558,0.081215910613537,0.001979482825845,-0.020351136103272,-0.079472228884697,0.005069173406810,0.059456638991833,-0.003357666078955));
res += mul(Get(s2,-dx,0), float4x4(-0.060037177056074,-0.137995779514313,-0.018303032964468,-0.011160897091031,0.032509930431843,0.156471103429794,0.045562282204628,0.001023670192808,-0.023043042048812,0.015023825690150,0.116859309375286,-0.022659219801426,0.064590737223625,0.131685227155685,-0.084086507558823,0.072218514978886));
res += mul(Get(s2,-dx,dy), float4x4(-0.060959797352552,-0.071916110813618,-0.116556279361248,-0.086417987942696,0.018136795610189,0.041988123208284,0.054022248834372,-0.033163916319609,0.065817326307297,-0.086534596979618,-0.016433877870440,-0.066131427884102,0.099541664123535,-0.020474558696151,-0.034259300678968,0.153540313243866));
res += mul(Get(s2,0,-dy), float4x4(0.137845173478127,0.046580862253904,-0.068029329180717,-0.154374748468399,-0.034081026911736,-0.011391932144761,-0.077524468302727,0.140386462211609,-0.014288021251559,0.102597199380398,-0.014732378534973,0.047195013612509,-0.064628362655640,0.049865413457155,-0.035373255610466,0.004743296653032));
res += mul(Get(s2,0,0), float4x4(0.029604127630591,0.063490509986877,0.008330492302775,-0.084957748651505,0.041704580187798,0.097638621926308,-0.011066954582930,0.052352864295244,-0.003295880043879,0.010728099383414,-0.009729250334203,0.002298814477399,-0.017346877604723,0.089072816073895,-0.079507842659950,0.008686598390341));
res += mul(Get(s2,0,dy), float4x4(-0.026933485642076,0.080670110881329,-0.118761308491230,-0.082600452005863,0.021171845495701,0.086038589477539,-0.051958527415991,0.058509223163128,0.141453057527542,-0.095774099230766,-0.065354324877262,-0.093970984220505,0.132115557789803,0.040550675243139,-0.064449980854988,0.046537593007088));
res += mul(Get(s2,dx,-dy), float4x4(0.169510304927826,-0.186126619577408,0.037324298173189,0.062323659658432,0.026273040100932,-0.049074217677116,0.047527313232422,0.036652535200119,-0.057948533445597,0.064427912235260,-0.196217939257622,0.045202851295471,-0.057834573090076,-0.015928538516164,-0.043737657368183,-0.033759109675884));
res += mul(Get(s2,dx,0), float4x4(-0.014449803158641,-0.154000177979469,0.041131112724543,-0.006817415822297,-0.090971983969212,-0.091885298490524,0.109489768743515,0.101761631667614,0.016590993851423,0.121441133320332,-0.181541204452515,0.086560770869255,-0.102775186300278,-0.025754535570741,0.014717578887939,0.057458538562059));
res += mul(Get(s2,dx,dy), float4x4(-0.116262570023537,-0.092394530773163,-0.153017431497574,-0.145525470376015,-0.087082348763943,-0.007832908071578,0.015543083660305,-0.017801238223910,0.027583232149482,-0.048006553202868,0.053830996155739,0.069250591099262,0.021862778812647,-0.042575355619192,-0.046460423618555,0.041545536369085));
res += mul(Get(s3,-dx,-dy), float4x4(0.122573621571064,0.132881641387939,-0.074710987508297,-0.038047879934311,-0.040071304887533,0.096908554434776,-0.024993490427732,-0.059862397611141,0.020134344696999,-0.108766980469227,0.045025523751974,0.060363236814737,0.249115392565727,0.028281765058637,-0.144845560193062,0.105655469000340));
res += mul(Get(s3,-dx,0), float4x4(-0.059899564832449,-0.003923212643713,-0.122552230954170,-0.016328968107700,0.036751013249159,0.123345308005810,-0.090722635388374,0.077183358371258,0.005448628216982,0.106366701424122,0.117749556899071,-0.038206554949284,-0.047271925956011,0.050246279686689,-0.040809419006109,0.287558853626251));
res += mul(Get(s3,-dx,dy), float4x4(0.020655173808336,0.024312201887369,-0.010183130390942,0.015424892306328,-0.069332830607891,-0.004276786465198,-0.053730610758066,-0.128294780850410,0.044793039560318,0.028462391346693,0.204365834593773,-0.042816665023565,-0.096452243626118,-0.070796996355057,-0.056890014559031,0.246188730001450));
res += mul(Get(s3,0,-dy), float4x4(0.064913399517536,0.065584264695644,-0.085092961788177,0.088565446436405,-0.034171398729086,-0.140219509601593,0.090172529220581,-0.132188111543655,-0.069911077618599,-0.089574649930000,0.057549253106117,-0.190964579582214,0.120853699743748,0.052395395934582,-0.132581636309624,-0.010206205770373));
res += mul(Get(s3,0,0), float4x4(-0.003517165780067,-0.015289217233658,-0.047658707946539,-0.000406254373956,-0.074515119194984,-0.090983681380749,-0.144203364849091,-0.128621563315392,-0.055153727531433,0.051638476550579,0.031977467238903,-0.163867950439453,0.008382938802242,0.046288937330246,-0.039871118962765,0.068853721022606));
res += mul(Get(s3,0,dy), float4x4(0.023202190175653,0.038894370198250,-0.075619481503963,0.060834959149361,-0.140603274106979,-0.118090093135834,-0.164094418287277,-0.046994432806969,0.012666571885347,-0.133260786533356,0.239992573857307,-0.096969179809093,-0.158583089709282,-0.079417705535889,-0.080805554986000,0.184466570615768));
res += mul(Get(s3,dx,-dy), float4x4(0.114639215171337,0.011719366535544,-0.052544612437487,0.021024053916335,-0.108433134853840,0.100811310112476,0.072479888796806,-0.026731042191386,0.035358678549528,0.043583936989307,0.036867238581181,0.117886766791344,0.025735393166542,-0.159683704376221,-0.086664229631424,0.008740091696382));
res += mul(Get(s3,dx,0), float4x4(-0.067196831107140,-0.007069604471326,0.005664164200425,0.138881862163544,-0.045772753655910,0.185905069112778,0.051806140691042,-0.015100910328329,-0.005625472404063,0.209149762988091,-0.225272223353386,0.039765339344740,-0.144659370183945,-0.205709025263786,0.022597407922149,-0.206172034144402));
res += mul(Get(s3,dx,dy), float4x4(-0.174831226468086,-0.124008566141129,-0.027060875669122,-0.102047078311443,0.038772724568844,-0.218619823455811,0.074507243931293,-0.057561073452234,-0.029588833451271,0.000180066999746,-0.004469547420740,-0.003079447429627,-0.202778503298759,-0.130761250853539,-0.027892773970962,-0.145325884222984));
return max(float4(0,0,0,0), res);
}
