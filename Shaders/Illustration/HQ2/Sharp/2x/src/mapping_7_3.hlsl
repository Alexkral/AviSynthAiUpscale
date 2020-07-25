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
res += mul(Get(s0,-dx,-dy), float4x4(0.095370121300220,0.002889459952712,-0.008933591656387,0.006051871925592,0.094665788114071,0.008598542772233,0.003441086970270,0.030883083119988,-0.006906355265528,0.005744360387325,0.013152059167624,0.033687908202410,0.019256535917521,-0.005457266699523,-0.014726443216205,0.008018488064408));
res += mul(Get(s0,-dx,0), float4x4(0.062172692269087,-0.015296669676900,-0.003710361663252,-0.044281136244535,0.216532751917839,-0.004008288495243,0.025704076513648,0.026323290541768,0.054787535220385,-0.000670645677019,-0.006191859953105,0.009488176554441,0.028422012925148,-0.008512456901371,0.011980159208179,0.000801277870778));
res += mul(Get(s0,-dx,dy), float4x4(-0.124852925539017,0.017921261489391,-0.000544701062609,0.008868905715644,-0.019476495683193,0.022207874804735,0.014224151149392,0.031205140054226,0.079636700451374,-0.009263379499316,-0.011081866919994,0.007816356606781,-0.012283888645470,-0.003563685109839,0.004985970444977,0.014149126596749));
res += mul(Get(s0,0,-dy), float4x4(0.087966158986092,-0.001581375719979,0.004857751540840,0.022692371159792,0.097606256604195,-0.011999006383121,-0.020461959764361,0.007923427969217,-0.041065368801355,0.007149034645408,0.015133659355342,0.031031517311931,-0.001632296713069,-0.003956712782383,-0.001924596028402,-0.012773850001395));
res += mul(Get(s0,0,0), float4x4(0.222915351390839,-0.001839254400693,0.022560199722648,0.054198589175940,0.097571916878223,-0.011054009199142,0.041641149669886,0.020927986130118,0.062933288514614,-0.009642129763961,0.010840841569006,0.024592841044068,0.012916470877826,-0.001772955874912,0.007097624707967,-0.007510332856327));
res += mul(Get(s0,0,dy), float4x4(0.036600861698389,0.028475441038609,0.002295376500115,0.011052354238927,-0.100536487996578,0.031460240483284,0.019333992153406,0.044089000672102,0.048623986542225,0.009149417281151,0.014817095361650,0.008824001997709,-0.014253850094974,0.013577618636191,0.002820278983563,-0.005140440538526));
res += mul(Get(s0,dx,-dy), float4x4(0.151030987501144,-0.005183026660234,-0.015364013612270,-0.008548297919333,0.119507052004337,0.012827835045755,-0.013129909522831,-0.007894101552665,-0.031387608498335,0.013370556756854,-0.007610667496920,0.012272416613996,0.001884231693111,0.008434398099780,-0.000380291749025,-0.004053614102304));
res += mul(Get(s0,dx,0), float4x4(0.095639519393444,-0.001934452913702,0.032554827630520,0.025954373180866,-0.030793586745858,0.011037951335311,-0.004102302715182,-0.032102812081575,-0.021188890561461,-0.010837976820767,-0.003976412583143,-0.032462280243635,0.007965007796884,0.011316313408315,0.012675429694355,-0.003529609413818));
res += mul(Get(s0,dx,dy), float4x4(0.060786083340645,0.013731630519032,0.025334002450109,0.090576291084290,-0.014340840280056,0.014750514179468,0.001683297450654,0.046205032616854,-0.059524044394493,-0.002589311683550,-0.004509761929512,-0.012267844751477,0.005532284732908,0.014231609180570,-0.001309252809733,0.003189442912117));
res += mul(Get(s1,-dx,-dy), float4x4(0.063658006489277,0.007263978477567,-0.001324150478467,0.015700962394476,-0.004853216931224,-0.002514159074053,0.011484908871353,0.000072258037108,0.057658933103085,0.010404478758574,0.021176612004638,-0.018489459529519,-0.014142323285341,-0.000486006960273,0.025399060919881,-0.029211230576038));
res += mul(Get(s1,-dx,0), float4x4(0.015241302549839,0.002921264618635,0.021218132227659,0.011297343298793,0.002114241244271,-0.004849417600781,-0.009265107102692,0.005001817364246,-0.140736728906631,0.008813741616905,-0.001799736055546,-0.037069212645292,-0.162207975983620,-0.012898562476039,-0.031998850405216,-0.066423423588276));
res += mul(Get(s1,-dx,dy), float4x4(-0.023370001465082,0.008296043612063,0.005320394877344,-0.010627076029778,0.009865870699286,0.008164267987013,0.005668819416314,0.004739993717521,-0.012778693810105,-0.030646333470941,-0.002089429181069,-0.059707686305046,-0.028430759906769,-0.030735448002815,-0.035192012786865,-0.036595739424229));
res += mul(Get(s1,0,-dy), float4x4(-0.035221006721258,0.017937384545803,-0.002524081384763,-0.010339295491576,-0.008732650429010,0.009876526892185,0.010269359685481,0.013788615353405,-0.101735405623913,0.009834652766585,0.004015249665827,0.060416508466005,-0.055872466415167,0.019523058086634,0.007903818972409,0.092382669448853));
res += mul(Get(s1,0,0), float4x4(-0.078651979565620,-0.004829556681216,0.002229408826679,-0.016319079324603,-0.010909221135080,-0.016944311559200,0.005221625324339,0.009519690647721,0.221358388662338,0.007110495120287,-0.015504311770201,0.083891116082668,0.360578805208206,0.006034514866769,-0.008488656021655,0.125226825475693));
res += mul(Get(s1,0,dy), float4x4(0.018097039312124,-0.002185835270211,-0.010452277027071,-0.002676146337762,-0.009499692358077,0.000667875341605,0.013051084242761,-0.010446006432176,0.353728383779526,0.004484245553613,0.031918127089739,0.030396521091461,0.294062316417694,0.013367495499551,0.055346447974443,0.050753749907017));
res += mul(Get(s1,dx,-dy), float4x4(-0.004432891961187,0.003426635405049,-0.003843008540571,0.013978522270918,-0.003997508436441,-0.006948156747967,0.002389893634245,0.013666355051100,0.064388237893581,0.009656158275902,0.012142857536674,0.038847029209137,0.048492681235075,0.004968714900315,0.007580676581711,-0.005654049105942));
res += mul(Get(s1,dx,0), float4x4(0.081823177635670,-0.001071963575669,-0.000042570896767,0.015433950349689,0.000822691188660,0.013893066905439,-0.004210059531033,0.002950767055154,0.162023335695267,0.005181147251278,0.020622765645385,0.034324616193771,0.020199377089739,-0.002928988542408,0.032435763627291,0.017616190016270));
res += mul(Get(s1,dx,dy), float4x4(0.064502514898777,0.002952507929876,0.006191546097398,-0.001528165303171,-0.010165758430958,0.008452278561890,-0.009588570334017,0.006678484380245,0.019532701000571,0.010961730964482,0.047868341207504,0.026073245331645,-0.127073124051094,0.023518225178123,0.035670764744282,0.046051844954491));
res += mul(Get(s2,-dx,-dy), float4x4(0.093780830502510,-0.015339115634561,0.031509209424257,0.019016301259398,0.033055078238249,-0.011208916082978,-0.012680079787970,0.026274548843503,0.020372705534101,0.007084676530212,0.004851444624364,0.018451014533639,0.033220015466213,0.002493518870324,0.005531000439078,0.018996452912688));
res += mul(Get(s2,-dx,0), float4x4(-0.058305598795414,0.023184087127447,0.042675461620092,0.044460788369179,0.091818310320377,0.007480192463845,0.016088223084807,0.021470801904798,0.040230341255665,0.003219682024792,-0.003407781245187,0.004201873671263,0.046056661754847,0.011509413830936,0.011390766128898,0.036060374230146));
res += mul(Get(s2,-dx,dy), float4x4(0.057696849107742,-0.012192369438708,0.011321656405926,0.024789797142148,0.036626663058996,0.002905197674409,0.000247490155743,0.011259869672358,0.061136838048697,0.009853021241724,0.010497326962650,-0.010298903100193,0.043289463967085,0.005493141710758,0.008124780841172,0.010914730839431));
res += mul(Get(s2,0,-dy), float4x4(-0.043604474514723,-0.010460597462952,0.006638877559453,-0.022598909214139,0.103621840476990,-0.001029290840961,-0.000662800041027,-0.002452274784446,0.047020655125380,-0.000305732159177,-0.000446806079708,0.035163056105375,-0.013751364313066,-0.006248148623854,0.000331238319632,-0.022998992353678));
res += mul(Get(s2,0,0), float4x4(-0.222812280058861,0.000810451398138,-0.018805567175150,-0.046350196003914,-0.050533838570118,0.000785688054748,0.026827808469534,0.019651999697089,-0.005582718178630,0.019922366365790,0.003002195386216,0.043178025633097,-0.046476934105158,-0.002145149977878,0.003731188131496,-0.014761644415557));
res += mul(Get(s2,0,dy), float4x4(-0.058193977922201,-0.003632443025708,-0.021020688116550,-0.047282185405493,-0.026402860879898,0.014357538893819,0.010265483520925,0.006259392946959,0.061649467796087,0.012608302757144,0.011345411650836,0.018898410722613,-0.000844400492497,0.006988099776208,0.007238059304655,0.016177760437131));
res += mul(Get(s2,dx,-dy), float4x4(-0.003739537438378,0.008614263497293,0.003982241265476,0.059937592595816,0.005669629201293,0.010217688046396,0.002271259203553,-0.000794804072939,-0.030249962583184,0.015082146972418,0.019411612302065,-0.006680508144200,0.043756183236837,0.006780310999602,0.002051918301731,0.013789098709822));
res += mul(Get(s2,dx,0), float4x4(0.151592552661896,-0.004484170116484,-0.011369019746780,0.118382588028908,-0.089465536177158,-0.002402109093964,0.011457961983979,-0.013036704622209,-0.073248699307442,-0.008201516233385,-0.004793280269951,-0.006588550284505,0.044779725372791,0.002179028932005,-0.010053942911327,-0.009527005255222));
res += mul(Get(s2,dx,dy), float4x4(0.233730778098106,0.030827568843961,-0.005504625849426,0.018245236948133,0.045048203319311,-0.007792058400810,-0.015023486688733,0.003021253738552,0.005378927104175,-0.003175913356245,-0.003236576449126,0.010326116345823,0.002651994815096,-0.004671532195061,0.001884784549475,-0.018331278115511));
res += mul(Get(s3,-dx,-dy), float4x4(0.000275796512142,-0.004232295788825,0.006011253222823,0.004199902527034,-0.001757817808539,0.019058290868998,0.000205925680348,0.100132875144482,-0.006092300172895,0.008226381614804,0.000063278777816,0.020952485501766,0.041735764592886,-0.000126442013425,-0.000442626740551,0.032729640603065));
res += mul(Get(s3,-dx,0), float4x4(0.002549133263528,-0.011378997936845,-0.004613538738340,-0.004297853913158,0.428576707839966,-0.005185504443944,-0.004481385927647,0.084318585693836,0.085809484124184,0.001267101848498,0.002195083536208,0.015578386373818,0.066789656877518,0.006291620433331,0.001332883955911,0.028570923954248));
res += mul(Get(s3,-dx,dy), float4x4(-0.017209379002452,-0.002811850514263,0.013998806476593,-0.003362123621628,0.303980290889740,0.027881953865290,0.017511026933789,0.024452155455947,0.061933334916830,0.007082090713084,0.004438488278538,0.009438855573535,0.042590104043484,0.003653601510450,-0.006654024124146,0.000440944044385));
res += mul(Get(s3,0,-dy), float4x4(0.006869154516608,-0.005933028180152,0.003310928586870,0.000082507176558,0.059490885585546,-0.006126997992396,0.006566380616277,0.032667640596628,0.019972506910563,0.002650498645380,-0.002306273439899,-0.012197491712868,0.002367750508711,-0.015426253899932,0.007333511486650,-0.006475463509560));
res += mul(Get(s3,0,0), float4x4(-0.004829192534089,0.004372538067400,-0.002488642465323,0.010485501028597,0.223390251398087,-0.010375139303505,0.048235505819321,0.058627471327782,0.146537676453590,0.002608008915558,-0.017932372167706,-0.001075014355592,-0.063594661653042,0.006077168975025,0.019849419593811,0.011821010150015));
res += mul(Get(s3,0,dy), float4x4(-0.006429349537939,0.014680121093988,-0.017557753250003,-0.008645276539028,0.006051518488675,0.037094868719578,0.075193047523499,0.090862743556499,0.104162529110909,0.012801403179765,0.022416181862354,0.050347976386547,0.052917044609785,0.005913304165006,0.003084646770731,0.020740097388625));
res += mul(Get(s3,dx,-dy), float4x4(0.002541174180806,-0.002683646045625,-0.011715149506927,0.002532434882596,-0.020634422078729,0.010274702683091,-0.008274601772428,-0.013583253137767,0.173005819320679,-0.003888585371897,-0.004197111818939,0.053186427801847,-0.032816212624311,0.000378504541004,-0.006046003196388,-0.006872183643281));
res += mul(Get(s3,dx,0), float4x4(0.008249177597463,-0.008115170523524,-0.002581859705970,0.008713465183973,-0.176763251423836,-0.020788246765733,-0.023168874904513,-0.154464066028595,0.197743147611618,0.004604065325111,0.005613221321255,-0.018239177763462,-0.032231155782938,-0.006059409584850,-0.016923692077398,-0.021080864593387));
res += mul(Get(s3,dx,dy), float4x4(0.014592040330172,0.009941420517862,-0.001888592028990,0.005439136177301,-0.172400921583176,-0.020516078919172,-0.004225647542626,-0.042131897062063,0.014373210258782,0.014907118864357,0.017555356025696,0.029337828978896,0.014439438469708,-0.023765608668327,0.003866652958095,-0.008439400233328));
return max(float4(0,0,0,0), res);
}
