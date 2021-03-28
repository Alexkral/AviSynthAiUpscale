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
float4 res = float4(0.000757597445045,0.000083824437752,-0.000211809834582,0.000394403556129);
res += mul(Get(s0,-dx,-dy), float4x4(-0.000570462725591,0.001539982971735,0.000872029282618,-0.000200666007004,0.001641654176638,-0.001609798404388,-0.003360731294379,-0.003881131764501,-0.000166996906046,-0.000602223502938,-0.000244243565248,0.000559433538001,-0.002491813153028,-0.000289038231131,0.000954946794081,0.001039236783981));
res += mul(Get(s0,-dx,0), float4x4(-0.028755398467183,-0.026821749284863,-0.014623661525548,-0.004345415160060,0.002165860962123,0.004504818469286,0.004378063138574,0.002871269360185,-0.002109400229529,-0.002621116116643,-0.002533485647291,-0.001717547886074,-0.000416080554714,-0.001629137899727,-0.002153176581487,-0.002351937349886));
res += mul(Get(s0,-dx,dy), float4x4(0.005316409282386,0.001327920006588,-0.008840668015182,-0.018431713804603,-0.000908701855224,-0.001065507181920,-0.001821532030590,-0.000778798130341,-0.001338975969702,-0.000975971692242,-0.000299760606140,-0.000434357323684,0.001672548940405,0.001936595886946,0.000770843238570,-0.000197175657377));
res += mul(Get(s0,0,-dy), float4x4(0.003988118842244,0.001996167004108,0.000469194346806,-0.000991489039734,-0.007173142395914,0.010717328637838,0.006533296313137,0.001666980679147,0.000686996092554,-0.000530109566171,-0.000553947407752,0.000356190721504,0.004268240649253,-0.001047431374900,-0.002727798651904,-0.001040121656843));
res += mul(Get(s0,0,0), float4x4(-0.002498676069081,-0.000094422619441,0.001216939766891,0.003201877931133,-0.002309199189767,-0.002991151530296,-0.014664082787931,-0.023665471002460,0.031544454395771,0.020416701212525,0.008820420131087,0.003654155880213,0.001224537147209,0.008557131513953,0.009879002347589,0.007875243201852));
res += mul(Get(s0,0,dy), float4x4(-0.000712148088496,-0.000877127866261,-0.000545277958736,-0.002251123543829,0.005334708839655,0.006358991842717,0.001373961917125,-0.006890522781760,-0.002515180734918,0.003457183949649,0.015146656893194,0.025789190083742,-0.002782726427540,-0.007697377819568,-0.005952028557658,-0.001614915789105));
res += mul(Get(s0,dx,-dy), float4x4(0.000138720221003,0.000224490780965,-0.000176248373464,-0.000002744116955,-0.056966684758663,-0.024127895012498,0.015142801217735,0.014466146007180,-0.005379336886108,-0.002613510703668,0.000374061986804,0.001300920732319,0.002140741329640,0.000434702087659,0.000004078175152,0.000638487632386));
res += mul(Get(s0,dx,0), float4x4(0.001129921642132,0.000146108141053,0.000549502030481,-0.000501270405948,0.000534923165105,0.019501451402903,0.030821176245809,-0.018941123038530,0.027205530554056,0.021040413528681,0.005879008676857,-0.003859074087813,0.032406784594059,0.036544002592564,0.026932751759887,0.011996766552329));
res += mul(Get(s0,dx,dy), float4x4(0.000128984960611,0.000548736774363,0.000254814076470,0.001749669318087,-0.000461665185867,-0.000931776943617,-0.001980396686122,-0.001461269683205,-0.006217159796506,-0.003179864957929,0.006816061213613,0.017686169594526,-0.001373934443109,-0.001353163970634,0.006027640774846,0.018686855211854));
res += mul(Get(s1,-dx,-dy), float4x4(-0.001770865288563,-0.000715946312994,0.000437487702584,0.001255824114196,-0.009919675067067,-0.005254672374576,-0.001191161689349,-0.000099454875453,0.000057141638536,0.000389970955439,0.000191343831830,-0.000584659108426,0.004212862811983,0.004482537973672,-0.001516903052106,-0.002211215673015));
res += mul(Get(s1,-dx,0), float4x4(0.001313621993177,-0.002581577282399,-0.002329591661692,-0.000609933456872,-0.003294183406979,-0.002312229480594,-0.008051330223680,-0.012420658022165,-0.000258323794696,0.001220921636559,0.001152555341832,0.001209681970067,0.001525791129097,0.001084745512344,0.001644421601668,0.001907228492200));
res += mul(Get(s1,-dx,dy), float4x4(-0.000666132080369,-0.001441685017198,-0.001505484455265,0.000733489112463,0.000330949056661,-0.000680308905430,-0.000963689235505,-0.002821035217494,0.000311697483994,0.000732414715458,-0.001114998711273,-0.003445842768997,0.001353883184493,0.002397227333859,-0.000076836615335,-0.002531343605369));
res += mul(Get(s1,0,-dy), float4x4(0.002718365052715,-0.001822774531320,-0.003006389131770,-0.002605628687888,-0.001181492349133,-0.007365203928202,-0.003195198252797,0.000012398305444,0.006501358933747,0.004598656203598,0.002282304223627,-0.001242497004569,-0.010587160475552,-0.010471252724528,0.001701518427581,-0.000526802032255));
res += mul(Get(s1,0,0), float4x4(-0.003809442976490,0.022191416472197,0.012054385617375,0.006682061590254,0.027565760537982,0.042857136577368,0.033972974866629,0.020595297217369,-0.002279060892761,-0.000994349829853,0.001866661827080,0.006531091872603,-0.023123709484935,-0.022289138287306,0.021873148158193,0.027212394401431));
res += mul(Get(s1,0,dy), float4x4(0.017614226788282,0.033364597707987,-0.009819271974266,-0.047050621360540,-0.004760429728776,-0.007883390411735,-0.004445066209882,0.001973538193852,-0.000323491694871,0.000324674561853,-0.000725807156414,-0.002546775853261,0.003692378289998,0.003780888859183,-0.000528932490852,-0.003823162522167));
res += mul(Get(s1,dx,-dy), float4x4(0.002007600618526,-0.001820408273488,-0.003251925110817,-0.003221040358767,-0.005290385801345,-0.004245475865901,-0.002508968114853,-0.000497975037433,-0.001941894413903,0.001840057549998,0.005229194182903,0.005413678940386,-0.022160902619362,-0.008138243108988,0.005099851172417,0.002421564655378));
res += mul(Get(s1,dx,0), float4x4(-0.008248367346823,0.005768659524620,0.006816415116191,0.004540784750134,-0.010882383212447,-0.005528473295271,-0.008583703078330,-0.007018432952464,0.004231998231262,0.002297901781276,-0.001112788217142,-0.002950282068923,-0.009194316342473,-0.001992697129026,0.024108674377203,0.007465391885489));
res += mul(Get(s1,dx,dy), float4x4(0.006726257968694,0.012453504838049,-0.006931225303560,-0.024628736078739,-0.003826869186014,-0.007404000498354,-0.009102200157940,-0.015093039721251,0.000234172868659,-0.000119165822980,0.000745366385672,0.002499977825209,0.002255832310766,0.002979225246236,-0.002252482343465,-0.001921000541188));
res += mul(Get(s2,-dx,-dy), float4x4(0.000488276506076,0.002060372615233,0.003339714603499,0.002324494533241,-0.002201086608693,-0.001982100075111,-0.001882934127934,-0.001074790954590,0.008883582428098,0.006467243656516,0.002881205175072,-0.001131253433414,-0.001259172451682,-0.006538443733007,0.004347553476691,0.006882350426167));
res += mul(Get(s2,-dx,0), float4x4(0.001008977997117,-0.000575666839723,-0.004793880973011,-0.003032083623111,-0.010467194020748,-0.001705054775812,0.010878583416343,0.002647284418344,0.004148428793997,0.007089267484844,0.012051786296070,0.014866645447910,-0.008824330754578,-0.013594836927950,-0.001012442167848,0.011633558198810));
res += mul(Get(s2,-dx,dy), float4x4(0.001960804685950,0.004315373487771,0.003693098202348,-0.000126444589114,0.001994607504457,0.003547730855644,0.002803875133395,-0.002241561654955,-0.000424289464718,-0.000467551843030,-0.001618852140382,-0.000290393654723,0.000080722151324,0.000300851621432,0.001209514797665,0.000468442041893));
res += mul(Get(s2,0,-dy), float4x4(0.015945130959153,-0.004607845097780,-0.010558716021478,-0.008302467875183,-0.014560013078153,0.004068677313626,0.001719063729979,0.000495813088492,0.028447719290853,0.015175495296717,0.004273136612028,-0.001856490271166,0.018038000911474,0.018232386559248,-0.001372607541271,-0.005949134007096));
res += mul(Get(s2,0,0), float4x4(-0.056592985987663,-0.041286934167147,0.035387855023146,0.051872037351131,-0.055451698601246,-0.001844557351433,0.053563687950373,-0.002338121179491,0.013173772022128,0.023892786353827,0.032966129481792,0.036674484610558,0.048150416463614,0.005856641568244,-0.059360254555941,-0.038076259195805));
res += mul(Get(s2,0,dy), float4x4(0.003713012440130,0.008092971518636,0.011299553327262,-0.007117870263755,0.003307891543955,0.002102510072291,0.014841606840491,0.001111709163524,0.002193873515353,0.003751737764105,0.004784918390214,0.006948639173061,-0.007954935543239,-0.008258164860308,0.000899016042240,0.024186056107283));
res += mul(Get(s2,dx,-dy), float4x4(0.001423466484994,-0.000049283320550,-0.002605135319754,-0.000865206646267,0.002434704918414,-0.000109342196083,0.000294737023069,-0.000185164797585,-0.002379066077992,-0.001453391276300,-0.000235682280618,0.000928522320464,-0.005677794106305,-0.000066327964305,0.002731399610639,0.002555041806772));
res += mul(Get(s2,dx,0), float4x4(-0.001939062378369,0.007299451157451,-0.000304622604745,-0.003103613154963,0.000679313612636,-0.002188622253016,-0.000564724905416,0.004145476035774,-0.004770181607455,-0.005899406038225,-0.004659832920879,-0.004492489155382,0.004682437051088,0.004374666139483,-0.000670573383104,-0.007055084686726));
res += mul(Get(s2,dx,dy), float4x4(-0.003358553163707,-0.001600594725460,0.004066194873303,-0.002042041160166,0.000375548843294,0.000328142574290,0.000374608149286,-0.000073288807471,0.002165928017348,0.001162420259789,-0.000990373897366,-0.001087281620130,-0.003192669013515,-0.004224234726280,0.002512319246307,0.006206589285284));
res += mul(Get(s3,-dx,-dy), float4x4(0.001217946410179,0.001751856529154,0.000376281677745,-0.000365017243894,0.000215724809095,-0.000050724294852,0.000913206895348,0.001793034374714,-0.002478067763150,-0.000274920574157,0.000437711714767,0.000217442197027,-0.002524109557271,-0.002767856931314,0.000285487651126,0.001476563164033));
res += mul(Get(s3,-dx,0), float4x4(-0.001913785468787,-0.001430250587873,-0.000555763777811,-0.001755613717251,0.018743861466646,0.023318381980062,0.016379339620471,0.002634447300807,-0.004589069169015,-0.005929175298661,-0.006613958161324,-0.006480220239609,0.003599647199735,-0.001032228348777,-0.003593243891373,-0.000629025860690));
res += mul(Get(s3,-dx,dy), float4x4(0.001251175301149,0.001902019721456,0.000468621874461,-0.000630264054053,0.002016291720793,0.002327573485672,0.002340081613511,0.008470339700580,0.000140080184792,-0.000726118334569,-0.001788871712051,-0.002810840494931,-0.000945771869738,-0.001047838013619,-0.001863645156845,0.000200890455744));
res += mul(Get(s3,0,-dy), float4x4(0.064425207674503,-0.017676357179880,-0.040807608515024,0.000529356417246,0.005985906813294,-0.005639569833875,-0.006061771418899,-0.003359382506460,0.006105740088969,0.002320632571355,0.001795549993403,0.001468027592637,0.010909253731370,0.033306322991848,-0.002669117413461,-0.010231932625175));
res += mul(Get(s3,0,0), float4x4(-0.009996848180890,-0.015280519612134,-0.018522873520851,0.033828847110271,-0.009428963065147,0.004577893298119,0.017693957313895,0.016941443085670,0.011512026190758,0.020790928974748,0.023108290508389,0.018802091479301,0.007722832728177,0.041899789124727,-0.006286348681897,-0.053986750543118));
res += mul(Get(s3,0,dy), float4x4(0.003853841684759,0.005537851247936,0.002009968506172,-0.005850213579834,-0.002589274663478,-0.004105156753212,-0.007124105002731,-0.010288410820067,-0.001468630391173,-0.003005289239809,-0.004427442327142,-0.001484142383561,-0.000316404097248,-0.002678579417989,0.001576734706759,-0.001758219208568));
res += mul(Get(s3,dx,-dy), float4x4(0.002561384346336,0.002471342682838,-0.004182211123407,-0.003321102354676,-0.001550557208247,0.000226642529014,0.001240021083504,0.001928891171701,-0.002278920728713,-0.005284077487886,-0.004612882621586,-0.001512741902843,0.000311970623443,0.006366377696395,0.003283890429884,0.001124014146626));
res += mul(Get(s3,dx,0), float4x4(-0.000949611130636,-0.001747743226588,-0.001257301541045,-0.002167302882299,-0.000064095584094,-0.001667748438194,-0.003045258810744,-0.002914692042395,0.008566988632083,0.009579510428011,0.007495209109038,0.002594998804852,0.003675209823996,0.004708042368293,-0.005563910119236,-0.008940261788666));
res += mul(Get(s3,dx,dy), float4x4(0.001364156603813,0.001423976733349,0.000225569412578,0.000307075737510,-0.000342398445355,-0.000417532282881,0.000393326918129,0.000382008031011,0.000240889552515,0.000873279990628,0.001420284970663,0.003273277776316,-0.001562701654620,-0.002243326278403,-0.001554190646857,0.000157983842655));
res += mul(Get(s4,-dx,-dy), float4x4(-0.001836221083067,-0.000546585593838,0.002066923538223,-0.001743166707456,-0.000724033161532,0.001466664718464,0.002790113911033,0.002795469248667,0.004365613218397,0.000779783935286,-0.001243156031705,-0.001368608092889,0.003091753926128,0.003800721140578,0.001460566767491,-0.000728287734091));
res += mul(Get(s4,-dx,0), float4x4(0.000989649211988,0.001682617818005,0.002691632136703,0.003117691492662,-0.000306314468617,-0.001604381133802,-0.002718552481383,-0.001382509712130,0.005662265699357,0.006488142069429,0.007479828316718,0.007313099224120,-0.002744854195043,0.000914937467314,-0.000975962961093,-0.001869345665909));
res += mul(Get(s4,-dx,dy), float4x4(-0.002923182910308,-0.003577294759452,0.000431541120633,0.003066810313612,0.000224634219194,-0.002986877458170,-0.002973622176796,0.000005068470273,-0.000870627700351,0.000011291383998,0.002050158567727,0.004484155680984,-0.003146183677018,-0.004640471190214,-0.007079227827489,-0.006187064107507));
res += mul(Get(s4,0,-dy), float4x4(-0.033229831606150,0.013754232786596,0.014460056088865,0.005536442622542,-0.009530046954751,-0.004924003966153,-0.002069833222777,-0.000534818158485,-0.011866960674524,-0.002724566031247,0.002813911763951,0.004656091798097,0.015050520189106,-0.000586192763876,-0.007367159239948,-0.007210252806544));
res += mul(Get(s4,0,0), float4x4(0.021031271666288,0.037513598799706,-0.011731660924852,-0.071037575602531,0.010606749914587,0.031570553779602,0.011342487297952,-0.015205345116556,-0.012842037715018,-0.022710092365742,-0.025821793824434,-0.024713031947613,-0.027915220707655,-0.025237772613764,0.005670203361660,0.023078560829163));
res += mul(Get(s4,0,dy), float4x4(-0.006308889016509,-0.008448256179690,-0.003528112545609,0.004711470101029,0.006766270380467,0.000099058510386,-0.009992381557822,-0.010574014857411,0.003199588973075,0.004693074151874,0.001873861299828,-0.002261319663376,0.009379213675857,0.015405294485390,0.014041228219867,-0.000850957643706));
res += mul(Get(s4,dx,-dy), float4x4(-0.002559611340985,-0.000461058923975,0.002807258162647,0.001566089573316,0.015107681043446,0.000654506497085,-0.004298812709749,-0.003925455734134,0.002048100344837,-0.000535434461199,-0.000136369460961,0.000492312887218,-0.000874554039910,-0.000740990391932,0.000463997508632,0.000864694593474));
res += mul(Get(s4,dx,0), float4x4(-0.004314540885389,-0.002719980897382,-0.001805886742659,-0.001856019720435,0.013092339970171,-0.015996020287275,-0.018137788400054,0.011423146352172,-0.016000038012862,-0.018030725419521,-0.014903195202351,-0.005325458478183,0.007006884086877,0.004127698950469,-0.003240926656872,-0.002750659128651));
res += mul(Get(s4,dx,dy), float4x4(0.002719962503761,0.002453312510625,0.000495410000440,-0.003866573097184,0.002896611345932,0.002621783409268,-0.002819582587108,0.009149924851954,0.002093538641930,0.002229739679024,0.000620085746050,-0.007430081255734,0.001042089075781,-0.001339714159258,-0.002787800505757,0.002261804416776));
res += mul(Get(s5,-dx,-dy), float4x4(-0.001922330586240,-0.000974699505605,0.000091978537966,0.000785734329838,0.014621315523982,0.001312793465331,0.001720894593745,0.007413166109473,0.006912811193615,0.005347702186555,0.004019621293992,0.002868671668693,0.000010464245861,0.000217947672354,0.000529655953869,-0.000033127271308));
res += mul(Get(s5,-dx,0), float4x4(-0.002767649246380,-0.004629237111658,-0.005550759844482,-0.004441971890628,0.015613337978721,0.000920936581679,-0.023204103112221,-0.001391027704813,0.004622638225555,0.004862737376243,0.006540542934090,0.006264849100262,0.001045481534675,-0.000862865068484,-0.001452666474506,-0.002077823504806));
res += mul(Get(s5,-dx,dy), float4x4(0.001445341738872,0.003476633690298,0.002626430476084,-0.000868208124302,-0.005263345316052,-0.005835586693138,-0.002534731756896,0.004821205511689,-0.002113282447681,-0.002992406487465,0.000857836857904,0.004901258274913,-0.001597152324393,-0.002724092220888,0.000191779399756,0.004301839042455));
res += mul(Get(s5,0,-dy), float4x4(-0.028916046023369,-0.012242836877704,-0.001971235498786,0.001038484973833,-0.001844003447331,-0.012399129569530,-0.004837507382035,0.000124112935737,-0.022884298115969,-0.003446198068559,0.007113731000572,0.007962388917804,-0.007791565731168,0.003048874204978,0.004991299938411,0.003941860049963));
res += mul(Get(s5,0,0), float4x4(-0.046377073973417,-0.064628548920155,-0.067832618951797,-0.054098535329103,-0.018019814044237,-0.011442778632045,0.037178184837103,0.042651560157537,0.010932808741927,-0.001926160533912,-0.022654538974166,-0.034255020320415,0.035858303308487,-0.019302880391479,-0.017357209697366,-0.012591879814863));
res += mul(Get(s5,0,dy), float4x4(0.001705858390778,0.003843306330964,-0.004214618355036,-0.020741699263453,0.002849601209164,0.003121661720797,-0.002145181410015,-0.004352218937129,-0.009051778353751,-0.007965265773237,0.001622445648536,0.010111277922988,0.003187067573890,-0.041292928159237,-0.024251535534859,0.060003008693457));
res += mul(Get(s5,dx,-dy), float4x4(-0.001022879150696,0.000309443974402,0.000530704390258,0.002246117219329,0.002726556267589,0.000652456132229,-0.002279530745000,-0.001866670441814,0.002479933435097,0.001616773311980,0.000767256948166,-0.000595427700318,-0.000432981847553,0.000569067837205,0.001518937409855,0.001250749803148));
res += mul(Get(s5,dx,0), float4x4(-0.004553242586553,-0.006523108109832,-0.006021526176482,-0.004906749818474,0.001811958383769,-0.001109123579226,-0.001612451625988,0.000436679663835,0.003360349684954,0.004537666682154,0.005133519414812,0.003074875799939,0.002566184848547,0.001277996925637,-0.000120631302707,-0.001341943629086));
res += mul(Get(s5,dx,dy), float4x4(0.002261154120788,0.003293309593573,0.001591615378857,-0.000600320578087,-0.000262113811914,-0.000053447020036,0.000039970062062,0.001865600352176,0.001331555075012,0.002069063019007,0.002454193308949,0.003530457848683,-0.001561269280501,-0.001066773431376,-0.000045769415010,0.002218784531578));
return res;
}
