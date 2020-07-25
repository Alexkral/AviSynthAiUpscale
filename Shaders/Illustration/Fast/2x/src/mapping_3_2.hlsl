sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0188321284949780,0.0191084053367376,0.0814511701464653,0.0204365774989128);
res += mul(Get(s0,-dx,-dy), float4x4(0.0972717106342316,0.0389447063207626,-0.0523091591894627,0.0486467853188515,-0.1000121459364891,-0.0583747625350952,0.0599711686372757,-0.1720947176218033,0.1319759935140610,-0.1114813834428787,-0.0264363884925842,-0.0126025639474392,0.1149203330278397,0.0982995778322220,0.0287332069128752,-0.0182384289801121));
res += mul(Get(s1,-dx,-dy), float4x4(0.2338214218616486,0.0519952215254307,-0.1461645066738129,0.1240976527333260,0.0837073773145676,0.0414433591067791,-0.0527288950979710,-0.0123466914519668,0.0361252352595329,-0.0147856269031763,0.0425831042230129,-0.0813904628157616,-0.1288543641567230,0.1285693794488907,0.0107371127232909,0.0607755221426487));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0198600385338068,0.0449446216225624,-0.0104115353897214,0.0679775550961494,0.1045374348759651,0.0539091750979424,-0.0392174869775772,0.0064423079602420,0.1142323687672615,-0.0082601988688111,-0.0815625861287117,0.2911983728408813,-0.1170999780297279,-0.0741000026464462,0.0658118650317192,-0.0859894081950188));
res += mul(Get(s0,-dx,0), float4x4(-0.0572648458182812,-0.0804460123181343,-0.1099850162863731,0.1431822031736374,0.0606860704720020,0.3505956232547760,0.2306481003761292,-0.3832700252532959,-0.0053621358238161,0.0012933345278725,0.0878281444311142,-0.1557834297418594,-0.1569485813379288,-0.0834054425358772,0.0092377718538046,0.0144903920590878));
res += mul(Get(s1,-dx,0), float4x4(-0.0181078333407640,-0.1512538045644760,-0.2094557136297226,-0.3041843175888062,-0.0456217713654041,0.1144805029034615,-0.0055193756707013,-0.2030858099460602,-0.0545319095253944,0.0666090697050095,0.1531859785318375,-0.1878189891576767,0.0269280429929495,0.1825121045112610,-0.0655668899416924,0.2466829717159271));
res += mul(Get(s2,-dx,0), float4x4(-0.0005879531381652,0.0662631317973137,-0.0183278825134039,-0.0670010745525360,-0.1275411397218704,-0.2375295311212540,-0.1333495676517487,0.1674453467130661,-0.0946382209658623,0.0500359982252121,-0.1237049251794815,0.0817991495132446,0.0446342937648296,-0.0347564816474915,0.0150342928245664,0.0678189918398857));
res += mul(Get(s0,-dx,dy), float4x4(0.0640763118863106,0.0277317482978106,-0.0784187316894531,0.1912319958209991,0.0081794569268823,0.1739113628864288,-0.0479237139225006,0.1732610762119293,-0.1407309025526047,-0.0343132875859737,0.0997756049036980,-0.2022566050291061,0.0076632611453533,-0.0028405636548996,0.0539716556668282,-0.1101927235722542));
res += mul(Get(s1,-dx,dy), float4x4(-0.1151315644383430,-0.0048311059363186,-0.0002457088849042,0.0660901069641113,0.0120379794389009,-0.0534121841192245,-0.0638835951685905,0.0026669609360397,-0.1292045265436172,-0.0072294631972909,-0.0760965943336487,0.0107100345194340,0.1221484392881393,0.1035606935620308,-0.0837998315691948,0.0435227043926716));
res += mul(Get(s2,-dx,dy), float4x4(-0.0112238153815269,0.0538416095077991,0.0267541166394949,0.0277400482445955,-0.0817765668034554,-0.0595292933285236,0.0724334567785263,-0.1875212639570236,-0.0144345117732882,-0.0498602204024792,0.0316424667835236,-0.1926864236593246,0.0195581670850515,0.0696682408452034,0.0512468777596951,-0.1001300364732742));
res += mul(Get(s0,0,-dy), float4x4(-0.0851240381598473,0.0057304757647216,0.0031945093069226,0.0576432943344116,0.0116487611085176,0.0611666887998581,0.1609225422143936,-0.1804247051477432,-0.1631921380758286,0.2241380959749222,0.0335533358156681,0.1396529078483582,0.1525319963693619,0.0419155322015285,-0.1539980173110962,0.0837442055344582));
res += mul(Get(s1,0,-dy), float4x4(0.0797614306211472,-0.0052409344352782,-0.3948311209678650,0.4248489439487457,0.0600069947540760,-0.1961351931095123,-0.1405035704374313,0.0758731216192245,-0.0117932623252273,0.1349730044603348,-0.0079834777861834,0.1162539124488831,-0.1389823406934738,0.0624481849372387,0.0382734946906567,-0.0317725911736488));
res += mul(Get(s2,0,-dy), float4x4(0.0002947487810161,0.0715787187218666,-0.0585164800286293,0.2492357343435287,0.3089383840560913,-0.0811290815472603,-0.1949879229068756,0.1442438066005707,-0.0791219398379326,-0.0586767010390759,0.0618355236947536,-0.1140862405300140,-0.0167736671864986,-0.0318494662642479,0.1401468068361282,-0.2387982457876205));
res += mul(Get(s0,0,0), float4x4(0.7083387970924377,-0.2991935014724731,-0.1503854244947433,0.2123072147369385,0.2403904646635056,-0.3904063999652863,-0.2791433632373810,0.2544208168983459,-0.5836641192436218,0.4517382979393005,-0.1097117811441422,0.1526434421539307,0.3329293429851532,-0.1462385058403015,0.0058491863310337,0.4466997385025024));
res += mul(Get(s1,0,0), float4x4(0.0987164229154587,-0.1797078996896744,-0.2916842401027679,-0.3030454814434052,-0.2877155244350433,-0.3676268756389618,-0.1570889353752136,-0.2775992751121521,-0.0531539879739285,-0.1267734766006470,-0.2532350718975067,0.2776239514350891,-0.0840779989957809,-0.2266633361577988,0.0007705557509325,-0.2250714898109436));
res += mul(Get(s2,0,0), float4x4(-0.1419338136911392,-0.0859608128666878,0.1680545955896378,-0.0659229010343552,0.4100124537944794,-0.2272368073463440,-0.0943167954683304,-0.0805974453687668,-0.2089802026748657,-0.2830320894718170,-0.2507211863994598,0.4370681941509247,0.2061730474233627,0.2422630935907364,-0.1086425110697746,0.0511491335928440));
res += mul(Get(s0,0,dy), float4x4(0.0170560721307993,0.1613101065158844,0.0422785691916943,0.4112187027931213,-0.0801385641098022,0.1064258739352226,0.1687601506710052,-0.3157495558261871,-0.1049621254205704,0.1020199432969093,-0.0831004679203033,-0.3625931143760681,-0.2088101506233215,-0.0323602035641670,0.1508871912956238,-0.5680208802223206));
res += mul(Get(s1,0,dy), float4x4(-0.2295130938291550,0.0886723250150681,-0.0238978881388903,-0.6670919060707092,-0.1822609901428223,-0.0360149666666985,0.0563216730952263,-0.1458429545164108,0.1712041646242142,-0.1447074711322784,-0.0995985642075539,-0.1602871716022491,-0.0756918489933014,0.0318100787699223,-0.0436976999044418,0.3484075069427490));
res += mul(Get(s2,0,dy), float4x4(-0.1412441879510880,-0.0942228287458420,0.1065975353121758,0.0121627142652869,0.0210857018828392,-0.0831612050533295,0.1257963329553604,-0.2508899867534637,-0.1371091157197952,0.1156094074249268,0.2606576681137085,-0.3822603821754456,0.0591101162135601,0.0772116184234619,-0.2450804263353348,0.0188357941806316));
res += mul(Get(s0,dx,-dy), float4x4(-0.0989927425980568,0.0476931966841221,0.0746825411915779,-0.0569317303597927,-0.0030300682410598,0.0355592295527458,0.0407520122826099,0.1204493716359138,-0.0679075419902802,0.0086388159543276,-0.0258254762738943,0.0618690513074398,-0.0133504867553711,-0.1040861681103706,-0.0125357527285814,0.2890625894069672));
res += mul(Get(s1,dx,-dy), float4x4(-0.0499665513634682,0.0458347797393799,-0.1197482049465179,-0.0977875143289566,-0.0311392378062010,-0.0086483107879758,-0.0661680176854134,-0.0334679521620274,0.1067631989717484,0.0927995070815086,-0.0404379330575466,0.0939843282103539,-0.0943940058350563,0.1092529520392418,0.0275024846196175,-0.0356698408722878));
res += mul(Get(s2,dx,-dy), float4x4(-0.0137983877211809,-0.0388102903962135,0.0032514336053282,0.0210940875113010,0.0053287656046450,-0.0614315010607243,-0.0221411082893610,-0.0186567343771458,-0.0604433119297028,0.1527290046215057,0.0866651237010956,-0.0276545360684395,0.0528211630880833,0.0189083572477102,0.0467459335923195,-0.0858814120292664));
res += mul(Get(s0,dx,0), float4x4(-0.4587118327617645,-0.0206252224743366,0.1817632615566254,0.0536291562020779,-0.0924867391586304,-0.1033184453845024,0.0236512236297131,-0.1190403103828430,0.0972721949219704,-0.0302871298044920,-0.0828860625624657,0.0575634688138962,0.1697302758693695,0.0682095587253571,0.1640825271606445,-0.1783849000930786));
res += mul(Get(s1,dx,0), float4x4(0.0360536649823189,-0.2972713410854340,-0.2090987414121628,0.0095529342070222,0.2889714837074280,0.0834718942642212,-0.1259643137454987,-0.0696508884429932,0.0454522147774696,0.1017094105482101,0.0609162673354149,-0.2451617121696472,-0.2118684053421021,-0.0576428994536400,-0.0048471353948116,-0.0721622928977013));
res += mul(Get(s2,dx,0), float4x4(-0.0677650198340416,0.1943928748369217,0.0235839206725359,-0.0294236708432436,-0.0821999832987785,-0.0447926037013531,0.0781564638018608,-0.1693937182426453,-0.1894490420818329,-0.0610234513878822,-0.0148771880194545,-0.0503449812531471,-0.1683280616998672,-0.1507692486047745,0.0112505275756121,0.1116238981485367));
res += mul(Get(s0,dx,dy), float4x4(-0.0226349644362926,-0.1381283700466156,-0.1361089199781418,0.3078186213970184,0.0289476644247770,-0.0100390659645200,0.0244018658995628,0.0383620373904705,0.1034981459379196,-0.0746268853545189,-0.2221446037292480,-0.1569775789976120,0.0078977560624480,0.0036224834620953,0.0406853444874287,-0.3440488576889038));
res += mul(Get(s1,dx,dy), float4x4(0.2246234416961670,-0.2036423385143280,-0.1308141350746155,-0.2425895333290100,0.1191681846976280,-0.0457465052604675,-0.0395967960357666,-0.0347663760185242,-0.0220850743353367,0.0343788824975491,0.0137056400999427,-0.2832351922988892,-0.1884839087724686,0.0828891992568970,0.1902295500040054,0.1374151259660721));
res += mul(Get(s2,dx,dy), float4x4(0.0679879710078239,0.0666192024946213,0.0617862157523632,-0.0294532645493746,0.1072192117571831,-0.0759553685784340,-0.0292313806712627,0.1677630096673965,0.0915087684988976,-0.0801975429058075,0.0131220733746886,0.0541294664144516,0.0289326719939709,-0.0740282312035561,-0.0003755444195122,0.0179359298199415));
res = max(float4(0, 0, 0, 0), res) + float4(1.0094451904296875,0.9037086367607117,3.0199439525604248,-0.3217488527297974) * min(float4(0, 0, 0, 0), res);
return res;
}