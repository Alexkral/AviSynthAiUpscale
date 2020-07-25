sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0989941060543060,0.0428596958518028,-0.0111285876482725,-0.1148653477430344);
res += mul(Get(s0,-dx,-dy), float4x4(-0.2919741570949554,0.1467674076557159,0.0159407090395689,0.2193733751773834,-0.0228971522301435,0.1368408501148224,-0.0566953718662262,-0.0713472664356232,-0.1049589812755585,-0.1483984291553497,0.0170083213597536,0.0345197655260563,-0.0884559974074364,0.2274499684572220,0.2734867930412292,0.0724700838327408));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0919137671589851,-0.0089933509007096,-0.1323843449354172,0.0309947412461042,0.1623764932155609,0.2793329954147339,0.0658716410398483,-0.1880065500736237,0.2218164354562759,0.0120352031663060,-0.1858040541410446,-0.0964013561606407,-0.1511495411396027,0.0817544683814049,0.2375216186046600,-0.0321363769471645));
res += mul(Get(s2,-dx,-dy), float4x4(-0.2303816229104996,-0.0784963890910149,0.2319126576185226,-0.0208083577454090,0.0372232198715210,0.0310378801077604,-0.1544227302074432,-0.1099247261881828,-0.0120071778073907,-0.0109489671885967,-0.0020045060664415,0.0728441998362541,0.0372026190161705,0.0172914136201143,0.2823597490787506,0.0093812961131334));
res += mul(Get(s0,-dx,0), float4x4(0.1283263862133026,-0.0122508928179741,0.1674779802560806,-0.0356593988835812,-0.0811714008450508,-0.1019228324294090,0.1185361966490746,-0.0335364416241646,-0.3985177278518677,-0.0364946313202381,-0.1779770106077194,0.2994049191474915,1.7753069400787354,-0.7544203996658325,-0.8562874794006348,-0.3520763516426086));
res += mul(Get(s1,-dx,0), float4x4(0.1878608614206314,-0.0489175990223885,-0.1345833986997604,0.0108580607920885,0.0134783443063498,0.0904103145003319,0.1189826503396034,-0.2670704424381256,-0.0413044989109039,-0.0734492391347885,0.0323273614048958,0.0003462869208306,0.0679432079195976,0.0464752092957497,-0.0211109817028046,-0.1987015902996063));
res += mul(Get(s2,-dx,0), float4x4(-0.9732819795608521,-0.0366681143641472,0.2088420391082764,0.3591134846210480,-0.1340180337429047,-0.0053357258439064,-0.2018341273069382,-0.0629092827439308,-0.3172486126422882,0.0302410740405321,0.0213930271565914,-0.0438721254467964,0.1140551641583443,-0.0177707467228174,0.2440581470727921,-0.0843448713421822));
res += mul(Get(s0,-dx,dy), float4x4(0.1005597785115242,0.0073286532424390,0.1126675531268120,-0.1986871361732483,0.0560432560741901,0.0032912050373852,0.0328734181821346,-0.0307079032063484,-0.0862646922469139,-0.1239852160215378,-0.0714562386274338,-0.2056401073932648,-0.5992765426635742,0.0377201512455940,0.0648388713598251,0.3835976421833038));
res += mul(Get(s1,-dx,dy), float4x4(0.0540889836847782,0.0502251684665680,0.0050923423841596,0.2030014246702194,0.1353113055229187,0.1505273282527924,0.0362687744200230,0.2197343558073044,-0.1088488623499870,-0.0065189898014069,-0.1007197648286819,0.0361961722373962,0.0414074137806892,0.0261362735182047,0.0440402776002884,-0.1267870813608170));
res += mul(Get(s2,-dx,dy), float4x4(-0.0839308276772499,-0.0537484548985958,-0.0774910151958466,0.4082166552543640,0.0220365319401026,-0.0217468906193972,-0.2642630040645599,-0.0166611820459366,0.0044879387132823,0.0206552986055613,0.2536173760890961,0.1556438952684402,-0.0220613367855549,-0.0246207639575005,0.1411641091108322,-0.1078439429402351));
res += mul(Get(s0,0,-dy), float4x4(0.1577086746692657,0.0315045490860939,-0.2164854109287262,-0.1642849147319794,-0.1843582987785339,0.0252589546144009,0.0608684606850147,0.0690159872174263,-0.2326630502939224,-0.0559016019105911,-0.0346857495605946,0.2226372659206390,-0.1572519838809967,0.2523672580718994,-0.1632310599088669,0.4199155569076538));
res += mul(Get(s1,0,-dy), float4x4(-0.0177168641239405,0.2392232716083527,0.1964510381221771,-0.0104127088561654,-0.0348674058914185,-0.1129354387521744,0.0166754238307476,0.0249010007828474,0.1188271865248680,-0.0757262408733368,0.0522056110203266,0.1667382121086121,-0.0263773817569017,-0.1189354434609413,-0.2370685189962387,0.1263290047645569));
res += mul(Get(s2,0,-dy), float4x4(-0.0285152010619640,-0.0607435703277588,0.2606044411659241,0.1405049562454224,0.0800773277878761,-0.0303589608520269,-0.4049339592456818,-0.0112111214548349,0.0703793987631798,-0.1517442613840103,-0.0312349498271942,-0.1173968538641930,0.3157080709934235,0.0835530608892441,0.0988689213991165,-0.1051786914467812));
res += mul(Get(s0,0,0), float4x4(0.2926068007946014,-0.4236273467540741,-0.1803178191184998,-0.0217108875513077,0.0333390757441521,0.0901553258299828,-0.0501968450844288,-0.2203287035226822,-0.5856552124023438,0.4321969449520111,-0.0373204052448273,0.4689898788928986,0.3048943877220154,-0.1139151081442833,0.1933386623859406,-0.0633225217461586));
res += mul(Get(s1,0,0), float4x4(0.1818564385175705,-0.5334622263908386,0.1298024803400040,-0.2401070743799210,0.4670206904411316,-1.6851563453674316,0.1431778967380524,0.4303421676158905,0.6176638007164001,-0.3454014360904694,-0.2195540070533752,-0.0217748656868935,-0.1409252136945724,0.5589499473571777,0.4143477976322174,0.0688752979040146));
res += mul(Get(s2,0,0), float4x4(0.4747230112552643,0.0639841705560684,0.3517385423183441,0.4800328016281128,-0.9761940240859985,-0.0868436098098755,-0.6491998434066772,0.3167920112609863,0.2020397484302521,0.5004468560218811,0.3898359537124634,0.4452016651630402,0.1637790054082870,0.1632298976182938,0.4076617658138275,-0.3707979619503021));
res += mul(Get(s0,0,dy), float4x4(0.1266261488199234,-0.3138203322887421,-0.1999129354953766,0.1630704551935196,0.0890214443206787,-0.1332494616508484,-0.0119096916168928,0.0468749888241291,-0.0869852229952812,-0.1450688093900681,0.0075693484395742,-0.2506932914257050,-0.1634031236171722,-0.1502729505300522,0.3544393479824066,-0.1084232553839684));
res += mul(Get(s1,0,dy), float4x4(-0.3668814897537231,0.2215677946805954,0.1151105090975761,0.0016590351006016,0.1055074334144592,0.1268795877695084,0.0663677603006363,0.1616003215312958,0.0156503189355135,0.0767804458737373,0.0347771644592285,-0.1005780473351479,0.2904687523841858,-0.2867100238800049,-0.0739120766520500,-0.0817302018404007));
res += mul(Get(s2,0,dy), float4x4(0.0746037438511848,-0.0852860510349274,-0.0032986293081194,0.0156141007319093,-0.2470780462026596,-0.0925396457314491,-0.3239245414733887,-0.2007030546665192,0.1591026186943054,0.0369553007185459,-0.2765953242778778,-0.0613267645239830,-0.0420189537107944,0.1425068080425262,0.4411892294883728,0.0086361514404416));
res += mul(Get(s0,dx,-dy), float4x4(0.0274367909878492,0.0109274266287684,-0.0313776396214962,0.0378116667270660,0.0286835394799709,-0.0390238687396049,-0.0728490352630615,0.0339097082614899,0.2205369770526886,-0.1035022735595703,-0.1324842274188995,0.0397297255694866,0.0239727422595024,-0.0253565609455109,0.1179067194461823,0.0544916354119778));
res += mul(Get(s1,dx,-dy), float4x4(-0.1014314293861389,0.0707214847207069,0.0168566424399614,0.1024530753493309,-0.0891251266002655,0.1257097572088242,0.0203515682369471,0.1200810819864273,-0.0207062922418118,-0.0340390019118786,0.1200414523482323,-0.0401080884039402,0.0968328341841698,-0.0321140885353088,-0.1670072674751282,-0.0644777193665504));
res += mul(Get(s2,dx,-dy), float4x4(0.0623765438795090,0.0170204807072878,-0.0676457732915878,-0.0173379294574261,0.0403638333082199,0.0324382074177265,-0.6208313703536987,-0.1894247978925705,-0.0510251298546791,-0.1277094185352325,-0.1531027108430862,-0.1486040204763412,0.0474050007760525,-0.0324251763522625,0.0304919071495533,-0.1975380182266235));
res += mul(Get(s0,dx,0), float4x4(0.0890132188796997,-0.0293829087167978,0.0623069591820240,0.2729643881320953,0.0921267122030258,0.1575392037630081,0.0138229830190539,0.0106817409396172,-0.1364249140024185,0.0411256030201912,0.0349471382796764,0.2809094190597534,0.0892946943640709,-0.2102795094251633,-0.3094206452369690,0.2946180701255798));
res += mul(Get(s1,dx,0), float4x4(0.1160984188318253,-0.1203681305050850,-0.0432415828108788,0.1862512081861496,0.0752289593219757,0.0629461035132408,-0.0984680205583572,-0.1319034099578857,0.1067234799265862,0.0537636093795300,0.0641467645764351,0.1175311058759689,0.0747082307934761,0.0785319134593010,-0.0981299951672554,-0.0216853674501181));
res += mul(Get(s2,dx,0), float4x4(0.0397981293499470,-0.0089035099372268,0.0337164439260960,0.0931570157408714,-0.2110302746295929,0.0499038025736809,-0.6106014251708984,0.4010390639305115,-0.1438024342060089,0.0525274798274040,0.0000021549553821,0.0702381208539009,-0.3037170171737671,-0.0566410720348358,0.4411021471023560,0.1686480641365051));
res += mul(Get(s0,dx,dy), float4x4(-0.0416320823132992,-0.0684049502015114,-0.1016527786850929,0.0667328760027885,0.0087773157283664,-0.0488102771341801,-0.0568239986896515,-0.0435463860630989,-0.0482237078249454,-0.2033707797527313,0.0693863853812218,-0.0768748149275780,-0.0977709293365479,0.1729506850242615,0.1965876668691635,0.2232837677001953));
res += mul(Get(s1,dx,dy), float4x4(-0.0785954892635345,0.0444236844778061,-0.0046605053357780,-0.2947849929332733,0.1825175285339355,0.2284134179353714,0.0784436240792274,-0.0276855640113354,-0.1349009275436401,0.0083634983748198,-0.0882929712533951,0.0104063143953681,0.1461115628480911,0.0523704774677753,0.0622647032141685,0.1268577873706818));
res += mul(Get(s2,dx,dy), float4x4(0.0856100320816040,0.0124281551688910,-0.0178928878158331,-0.0616163536906242,-0.0974186733365059,0.0216292236000299,-0.4110801517963409,0.3988368809223175,0.2665578722953796,-0.0226221345365047,-0.2385237365961075,-0.3212392032146454,0.0069787697866559,-0.1260333061218262,0.3762124478816986,-0.1728639006614685));
res = max(float4(0, 0, 0, 0), res) + float4(0.0883029699325562,-0.3441081941127777,-0.3589738309383392,-1.4977918863296509) * min(float4(0, 0, 0, 0), res);
return res;
}