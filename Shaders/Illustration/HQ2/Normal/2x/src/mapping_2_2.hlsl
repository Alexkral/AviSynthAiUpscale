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
res += mul(Get(s0,-dx,-dy), float4x4(0.043813928961754,0.013959812931716,0.018111649900675,-0.011933119036257,0.100308626890182,0.032767854630947,0.060835886746645,0.006941112224013,0.000514609157108,0.023310096934438,0.007996634580195,0.019929913803935,-0.003833638736978,0.030242163687944,-0.012511531822383,-0.016171224415302));
res += mul(Get(s0,-dx,0), float4x4(-0.020666932687163,0.038614220917225,-0.018973559141159,0.004056176636368,0.003183857072145,0.018365738913417,0.034907069057226,0.014723949134350,0.046832751482725,0.008838402107358,0.004633270204067,0.026668071746826,-0.039992980659008,0.056043203920126,0.012424942106009,-0.007792976684868));
res += mul(Get(s0,-dx,dy), float4x4(0.025284759700298,0.026545587927103,0.000915147655178,-0.030670531094074,-0.024573899805546,0.090409755706787,0.003453848883510,0.025535495951772,0.012847123667598,0.019776245579123,-0.017295511439443,0.032042849808931,0.055423725396395,-0.017525514587760,-0.016368795186281,0.001118614221923));
res += mul(Get(s0,0,-dy), float4x4(0.004433013033122,0.012716438621283,0.012350498698652,-0.006059247069061,0.011205351911485,-0.064905732870102,-0.041212990880013,-0.015575467608869,0.042238894850016,-0.018929220736027,0.044600568711758,-0.011580705642700,-0.009298793971539,-0.005768106784672,-0.016690757125616,-0.015048675239086));
res += mul(Get(s0,0,0), float4x4(-0.036508720368147,0.025781063362956,-0.022123623639345,0.021192925050855,-0.062482036650181,0.055227816104889,-0.060902468860149,-0.006658603437245,-0.006608852185309,0.007169243879616,0.025508707389235,-0.018337914720178,-0.016114799305797,0.033835969865322,0.020370606333017,0.002218452282250));
res += mul(Get(s0,0,dy), float4x4(0.079785123467445,0.009672546759248,-0.001337009132840,0.014648271724582,0.018967071548104,0.000692052883096,0.006163310725242,-0.006400878075510,-0.016292998567224,-0.004649573005736,-0.001378554617986,0.029633563011885,0.022228030487895,-0.039684239774942,0.001304307021201,0.025544296950102));
res += mul(Get(s0,dx,-dy), float4x4(-0.017775312066078,-0.004569931421429,0.012220367789268,0.005501034669578,0.058165512979031,0.022363744676113,0.052051059901714,0.008941502310336,-0.004382744897157,0.025698607787490,0.007153825834394,-0.019980963319540,-0.029471721500158,-0.011688437312841,-0.017673766240478,-0.006026959512383));
res += mul(Get(s0,dx,0), float4x4(-0.029554409906268,0.005845043808222,0.014584721066058,0.039560589939356,0.085825964808464,0.011510339565575,0.094615772366524,-0.023920271545649,-0.022137178108096,-0.019192697480321,-0.001626378856599,0.021825086325407,0.021024506539106,0.000474895146908,-0.008733916096389,0.002696574898437));
res += mul(Get(s0,dx,dy), float4x4(0.033821746706963,-0.031212195754051,0.003529035486281,-0.018313270062208,0.059985212981701,-0.026613403111696,0.059078324586153,-0.023846616968513,0.004866117611527,0.003295976901427,0.023967577144504,-0.004798269830644,0.015348204411566,0.003095371648669,-0.024657778441906,0.005324952770025));
res += mul(Get(s1,-dx,-dy), float4x4(-0.006738496944308,0.001924740732647,0.023457152768970,-0.005321758799255,0.011366965249181,0.040929917246103,-0.000164434852195,0.022898966446519,0.003181124804541,0.073910206556320,0.017901083454490,0.005990828853101,0.025889314711094,-0.002569007687271,0.014343512244523,-0.003124437993392));
res += mul(Get(s1,-dx,0), float4x4(0.032414805144072,0.011652099899948,0.054426748305559,0.008766207844019,-0.013458310626447,0.030010854825377,0.039530143141747,0.001792338094674,0.117236085236073,-0.044406339526176,0.023486724123359,-0.012403624132276,0.022376438602805,-0.014498066157103,0.006762112025172,-0.006004627328366));
res += mul(Get(s1,-dx,dy), float4x4(0.035975564271212,0.014140680432320,0.045972589403391,0.004812827333808,0.031906288117170,-0.015989538282156,0.005666835699230,-0.007794276345521,-0.002588975243270,0.028489753603935,0.034395284950733,0.004333734977990,-0.017838286235929,0.014654416590929,-0.014317629858851,-0.003656361019239));
res += mul(Get(s1,0,-dy), float4x4(0.026686668395996,0.010557150468230,0.069811217486858,-0.012360789813101,-0.022136930376291,-0.003787555033341,-0.019560469314456,-0.026924256235361,0.109183803200722,0.022167572751641,0.078641660511494,0.013678215444088,0.026440491899848,-0.007349142339081,-0.014054057188332,0.017962083220482));
res += mul(Get(s1,0,0), float4x4(0.094625607132912,0.025978310033679,0.032570928335190,0.043683234602213,0.008284557610750,-0.012048093602061,0.023768210783601,0.001426398521289,0.030645001679659,-0.025500778108835,-0.034033194184303,0.013600555248559,-0.013570457696915,0.012277844361961,-0.023815812543035,0.049255039542913));
res += mul(Get(s1,0,dy), float4x4(0.015290051698685,0.041663251817226,0.064207419753075,-0.006176278460771,-0.024029174819589,-0.016410864889622,-0.039731457829475,-0.016670322045684,-0.011575065553188,0.028713036328554,0.017671778798103,-0.032773662358522,0.007111552637070,0.016684366390109,0.012812624685466,-0.021723933517933));
res += mul(Get(s1,dx,-dy), float4x4(0.006097855977714,-0.010958463884890,-0.007944761775434,-0.016588067635894,0.019893243908882,0.011686840094626,0.014203813858330,0.005497047677636,0.000263609312242,-0.020325720310211,-0.000012466007320,-0.007638454437256,0.025517230853438,-0.001546919695102,-0.025770818814635,-0.005853899288923));
res += mul(Get(s1,dx,0), float4x4(0.028942605480552,-0.026080550625920,-0.041788879781961,-0.047361716628075,0.003263990860432,0.030580824241042,-0.008828534744680,0.014424795284867,-0.007788910064846,0.013733010739088,-0.020043944939971,0.023893389850855,0.009563053958118,0.057742878794670,0.025479700416327,-0.008906991221011));
res += mul(Get(s1,dx,dy), float4x4(0.001393384533003,0.038617935031652,-0.030026210471988,0.025594156235456,-0.028349654749036,0.051276538521051,0.004384669009596,-0.012360416352749,0.017204053699970,0.027918700128794,0.046619094908237,0.006156153976917,-0.041199080646038,-0.020975159481168,0.012024569325149,0.026148395612836));
res += mul(Get(s2,-dx,-dy), float4x4(-0.059218332171440,0.034729383885860,-0.022441750392318,0.019624749198556,0.070278033614159,0.016809185966849,0.030250383540988,-0.016536457464099,-0.000107312749606,-0.000453057553386,0.036385130137205,0.035717826336622,0.087394133210182,-0.025476571172476,-0.005959339439869,-0.010041583329439));
res += mul(Get(s2,-dx,0), float4x4(0.032583300024271,0.024353209882975,0.014403909444809,0.010961176827550,0.000905473076273,-0.001536204363219,-0.009703570976853,0.015533920377493,0.007678903639317,-0.030507398769259,-0.026604250073433,0.017966464161873,-0.023142445832491,0.041862659156322,0.008140781894326,0.037336856126785));
res += mul(Get(s2,-dx,dy), float4x4(0.035007946193218,0.015148445032537,0.047144014388323,-0.006069740280509,-0.037326313555241,0.056337557733059,0.021269137039781,-0.010678114369512,0.011924150399864,-0.004219860304147,0.032693635672331,-0.008061620406806,0.063340522348881,-0.039299264550209,0.024950595572591,-0.009161008521914));
res += mul(Get(s2,0,-dy), float4x4(0.018170390278101,0.040082104504108,0.031224206089973,-0.003539292141795,0.001528571592644,0.036496281623840,0.034483879804611,0.009960422292352,0.011232474818826,-0.011759727261961,0.048066172748804,-0.017489911988378,0.079138241708279,-0.000738864066079,0.021042605862021,-0.025900958105922));
res += mul(Get(s2,0,0), float4x4(0.093232668936253,-0.040944125503302,0.075362354516983,-0.033757336437702,0.023348914459348,-0.009389492683113,-0.055346008390188,0.007969918660820,0.030292877927423,-0.022271765395999,-0.006470202933997,0.032701086252928,0.001659860019572,0.090352319180965,0.072278551757336,0.029967257753015));
res += mul(Get(s2,0,dy), float4x4(-0.008502944372594,0.040603283792734,-0.001690168166533,-0.004204227123410,0.000635510019492,0.044539477676153,0.040248062461615,0.005468593910336,0.016344197094440,0.034865222871304,0.019074134528637,0.017432525753975,0.057064842432737,-0.019442014396191,0.049066256731749,0.052438113838434));
res += mul(Get(s2,dx,-dy), float4x4(0.012641024775803,0.006646149791777,0.019631756469607,-0.020539972931147,-0.005724871996790,0.029404899105430,0.017398225143552,-0.029071940109134,0.022005323320627,0.067008450627327,0.024208333343267,-0.008653304539621,0.023610722273588,0.019388031214476,-0.030220774933696,-0.000815523555502));
res += mul(Get(s2,dx,0), float4x4(0.028340017423034,0.006689731497318,-0.045162606984377,-0.009161955676973,0.058522120118141,-0.025249879807234,0.016784427687526,0.012993563897908,-0.001719474093989,-0.006464032921940,-0.023764546960592,0.003579413983971,0.034038767218590,0.038696411997080,0.029450049623847,0.001418633968569));
res += mul(Get(s2,dx,dy), float4x4(-0.021707005798817,0.032435234636068,-0.008935964666307,-0.008334175683558,-0.021234733983874,0.043375596404076,-0.013673552311957,-0.017037812620401,0.006731691304594,-0.004930903669447,-0.009049364365637,-0.008439067751169,0.016148272901773,-0.010061089880764,0.013178072869778,0.004947800189257));
res += mul(Get(s3,-dx,-dy), float4x4(-0.027645476162434,0.061443179845810,0.049754265695810,-0.002312734490260,0.016267215833068,-0.025346891954541,0.011574119329453,0.019574623554945,0.016369780525565,-0.020637156441808,0.012354410253465,0.002366163069382,-0.001987298252061,0.031261142343283,0.045236047357321,-0.064264357089996));
res += mul(Get(s3,-dx,0), float4x4(0.107834525406361,-0.046569112688303,0.007233165204525,-0.016998598352075,0.008433365263045,0.009907662868500,0.007974338717759,0.009970114566386,0.000054666579672,-0.006764311809093,-0.035098172724247,-0.027220448479056,0.067194722592831,-0.027194967493415,0.003912402782589,-0.024999056011438));
res += mul(Get(s3,-dx,dy), float4x4(-0.015640130266547,0.013157813809812,-0.003404428716749,-0.015217725187540,0.045443031936884,-0.002610344672576,0.038041934370995,0.010854539461434,-0.019137224182487,0.062138456851244,0.018694657832384,-0.001241731923074,-0.027860864996910,-0.003109682118520,-0.011811257340014,0.011046201921999));
res += mul(Get(s3,0,-dy), float4x4(0.066602818667889,0.029658060520887,0.005632131360471,0.003511074930429,0.003452758770436,-0.022057009860873,-0.020248169079423,0.024406827986240,-0.038867406547070,0.025953153148293,-0.014182612299919,-0.015763416886330,0.027040896937251,-0.014140541665256,0.042760618031025,-0.008363944478333));
res += mul(Get(s3,0,0), float4x4(0.097999937832355,-0.040239695459604,-0.014318359084427,0.000542700756341,0.010273716412485,0.006779980380088,0.022762970998883,0.012508644722402,0.027487862855196,0.033252179622650,-0.015845566987991,-0.010239865630865,0.070397563278675,-0.044700775295496,-0.037112385034561,0.012352923862636));
res += mul(Get(s3,0,dy), float4x4(-0.083085872232914,0.061366248875856,0.012125696055591,-0.042421709746122,0.012742058373988,-0.030475880950689,0.013661540113389,0.017140487208962,0.068725176155567,0.010734723880887,0.068297073245049,0.011495686136186,-0.066058970987797,0.041040372103453,-0.016689794138074,-0.007150622084737));
res += mul(Get(s3,dx,-dy), float4x4(0.034173645079136,0.006315669976175,0.015266652218997,0.017210273072124,0.012220321223140,-0.020861132070422,-0.041827820241451,-0.004798318259418,0.019293818622828,0.020336186513305,0.054691672325134,-0.031309735029936,-0.001290749642067,0.027007026597857,0.017612159252167,0.004125105682760));
res += mul(Get(s3,dx,0), float4x4(0.009839782491326,0.011015532538295,-0.052272252738476,-0.002416156930849,0.004824215546250,0.005551679991186,-0.000251922552707,-0.001638861373067,0.069951951503754,-0.049031045287848,0.021558681502938,0.010316553525627,-0.007875628769398,-0.028174553066492,-0.042433794587851,0.008411741815507));
res += mul(Get(s3,dx,dy), float4x4(-0.051040485501289,0.080935955047607,0.022619253024459,-0.008173075504601,-0.014786825515330,0.030947742983699,-0.008928581140935,0.050754487514496,-0.011526445858181,0.020259456709027,-0.005686774384230,-0.012052112258971,0.009645761922002,0.011721142567694,0.037268009036779,-0.064661137759686));
return max(float4(0,0,0,0), res);
}