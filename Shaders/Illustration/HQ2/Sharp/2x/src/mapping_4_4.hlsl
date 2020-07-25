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
res += mul(Get(s0,-dx,-dy), float4x4(0.002481575589627,-0.034929443150759,0.014712422154844,0.008392842486501,-0.035929743200541,0.017208909615874,-0.002290708944201,-0.016415473073721,-0.008932427503169,-0.019162768498063,0.020426880568266,0.033424165099859,-0.019870569929481,-0.004489460028708,-0.061722319573164,0.018167834728956));
res += mul(Get(s0,-dx,0), float4x4(-0.032433204352856,-0.020376186817884,0.036511890590191,-0.012739449739456,-0.008487368002534,-0.005197410937399,0.002340576145798,-0.032189320772886,-0.030333276838064,-0.022802200168371,0.020776683464646,-0.004667821340263,0.051822051405907,-0.026071688160300,-0.057376984506845,-0.013908029533923));
res += mul(Get(s0,-dx,dy), float4x4(-0.000158262613695,0.016536461189389,0.001793598523363,-0.020456524565816,0.047335594892502,0.009104073978961,-0.021924935281277,-0.016396973282099,0.010254621505737,-0.027735620737076,0.017102904617786,-0.004158856347203,0.086746051907539,-0.051574774086475,0.040329881012440,0.005158689804375));
res += mul(Get(s0,0,-dy), float4x4(0.014967840164900,0.002557448577136,0.047526672482491,-0.025354040786624,-0.029879689216614,-0.028127720579505,0.040933392941952,0.024314850568771,0.060851670801640,-0.020114608108997,0.040166579186916,0.013065887615085,-0.088277757167816,0.055472213774920,-0.079743735492229,0.020211022347212));
res += mul(Get(s0,0,0), float4x4(0.030276011675596,0.003046766854823,0.019919978454709,-0.017810678109527,0.006653070915490,-0.029448211193085,-0.014921426773071,-0.009079772979021,0.001579424599186,-0.016632040962577,0.007885221391916,-0.037867132574320,0.008212584070861,0.019269200041890,-0.012171790003777,-0.013123783282936));
res += mul(Get(s0,0,dy), float4x4(0.011317767202854,0.012484519742429,0.024572489783168,-0.033759798854589,0.021267360076308,0.029054954648018,0.061780042946339,0.010814598761499,-0.042799986898899,-0.016862804070115,0.034933269023895,-0.015808247029781,0.000411168788560,-0.031411938369274,0.019826227799058,0.024227637797594));
res += mul(Get(s0,dx,-dy), float4x4(0.011618631891906,0.001990422140807,-0.001308037550189,0.009062361903489,0.022865410894156,0.008172811008990,-0.011188982985914,0.038650732487440,-0.005733398254961,-0.012019650079310,0.024880507960916,-0.004925266839564,0.003359464462847,0.036274667829275,-0.058199740946293,0.016437036916614));
res += mul(Get(s0,dx,0), float4x4(0.035083524882793,0.016758913174272,-0.031154256314039,0.005115272942930,0.020870456472039,-0.006605258677155,-0.013807667419314,0.036077894270420,-0.017269464209676,0.002274045953527,-0.022899836301804,0.006044734735042,0.035534404218197,-0.013987593352795,-0.022560227662325,0.040505722165108));
res += mul(Get(s0,dx,dy), float4x4(0.042535755783319,0.016442725434899,-0.010396614670753,0.009592444635928,0.023827342316508,0.009613815695047,-0.025106329470873,0.043496057391167,-0.015467808581889,-0.018514193594456,0.049842946231365,-0.019681748002768,-0.010799035429955,-0.053401261568069,0.008844722993672,-0.001665694522671));
res += mul(Get(s1,-dx,-dy), float4x4(0.030619179829955,0.004673584364355,-0.049547869712114,-0.026533493772149,-0.102356031537056,-0.026477303355932,0.009496061131358,-0.004299799911678,0.028016904368997,-0.017453530803323,-0.005866586696357,0.015736250206828,-0.004253876861185,-0.012818964198232,-0.057623650878668,-0.007999347522855));
res += mul(Get(s1,-dx,0), float4x4(0.000219522975385,0.000415407703258,-0.015338016673923,-0.017965953797102,0.003461180720478,-0.017936795949936,-0.013839663937688,0.022013438865542,-0.030097270384431,-0.013421894982457,-0.068858273327351,0.011364790610969,-0.010366723872721,-0.027783697471023,0.028646273538470,-0.017336508259177));
res += mul(Get(s1,-dx,dy), float4x4(0.078946076333523,-0.014846582897007,-0.036935154348612,-0.058330003172159,-0.006922585424036,-0.043156396597624,-0.010914718732238,0.044763538986444,-0.003895652247593,0.003208596725017,-0.071054212749004,0.020120739936829,0.016442855820060,-0.067624539136887,0.004180572461337,-0.033742599189281));
res += mul(Get(s1,0,-dy), float4x4(-0.016467902809381,0.002717744559050,-0.059691101312637,-0.025457646697760,-0.018711056560278,-0.009260539896786,-0.009029287844896,-0.037713404744864,-0.032086879014969,0.002336370991543,-0.008437495678663,-0.000371285103029,-0.022423755377531,0.038291249424219,0.003727942705154,0.000398352858610));
res += mul(Get(s1,0,0), float4x4(0.015615331940353,0.003953491803259,0.027415227144957,-0.009486404247582,0.006126908585429,0.003717259038240,0.030924869701266,-0.025918139144778,-0.033958777785301,0.004188342485577,-0.002915541874245,0.040358349680901,-0.022971574217081,-0.016985094174743,0.014827567152679,0.008416118100286));
res += mul(Get(s1,0,dy), float4x4(0.037434786558151,0.022835820913315,-0.044407196342945,-0.008796245791018,-0.010682026855648,0.013942883349955,0.046500571072102,0.009781691245735,0.002232470549643,-0.000787618278991,-0.096135109663010,0.017365548759699,0.063867397606373,-0.049305357038975,0.001553016016260,-0.023935362696648));
res += mul(Get(s1,dx,-dy), float4x4(0.010137743316591,0.016694763675332,-0.011740578338504,-0.023064158856869,0.034212753176689,0.019504491239786,-0.017717426642776,0.028508950024843,-0.012992704287171,0.008594905026257,-0.018084215000272,-0.003497209399939,-0.011160328052938,-0.044212471693754,0.000593950098846,-0.005781818646938));
res += mul(Get(s1,dx,0), float4x4(0.013931361958385,0.017375180497766,0.036234188824892,-0.018134785816073,0.032809689640999,-0.009596644900739,0.008760947734118,0.032857280224562,0.015139007009566,0.013307760469615,-0.062966153025627,-0.004172516986728,-0.007746655959636,0.031443450599909,-0.046456970274448,0.023463811725378));
res += mul(Get(s1,dx,dy), float4x4(0.035656955093145,-0.010308104567230,-0.012872677296400,0.002558982931077,-0.007009838242084,0.020126238465309,0.031725578010082,0.028440738096833,0.007134133018553,0.014042341150343,-0.079735226929188,0.012388212606311,0.048570103943348,0.031300339847803,-0.030468918383121,0.029721995815635));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000907804351300,-0.016542091965675,-0.019861286506057,0.001735012978315,-0.008516587316990,-0.006025067530572,0.020334873348475,0.005943055730313,0.007272920571268,-0.002067298861220,0.009397175163031,-0.011771066114306,-0.076775826513767,-0.024125549942255,0.006832641549408,-0.037902347743511));
res += mul(Get(s2,-dx,0), float4x4(-0.016889987513423,0.001041605952196,0.012223784811795,-0.006915322504938,-0.001388605218381,-0.013813719153404,0.003040128853172,0.000687116058543,0.006930406205356,0.004749902989715,-0.026612222194672,0.018670354038477,-0.060506727546453,-0.001576863811351,-0.005682622548193,-0.024086492136121));
res += mul(Get(s2,-dx,dy), float4x4(0.042709026485682,-0.003794023301452,0.027696976438165,-0.007032732479274,0.007047444116324,-0.017528831958771,-0.001617957022972,-0.002881919732317,-0.011732010170817,-0.006807530298829,-0.005171306431293,0.002135846763849,-0.078562811017036,-0.024191530421376,-0.006408934481442,-0.022544575855136));
res += mul(Get(s2,0,-dy), float4x4(0.020535748451948,-0.006524857133627,-0.015594856813550,0.023786583915353,-0.032270144671202,0.014157424680889,-0.011228280141950,-0.008601334877312,0.014922194182873,0.007736412808299,0.020434172824025,-0.006628039758652,-0.061672277748585,-0.008226089179516,0.004151963628829,-0.000585080008022));
res += mul(Get(s2,0,0), float4x4(0.033842254430056,0.004929232411087,-0.024090183898807,-0.010022980161011,-0.013669217005372,-0.016231028363109,-0.023301485925913,-0.021210266277194,0.015038182958961,0.004925328772515,-0.019486920908093,0.020145408809185,-0.036474823951721,0.073725715279579,0.048795875161886,-0.041859533637762));
res += mul(Get(s2,0,dy), float4x4(0.033371564000845,-0.004888944793493,0.031288187950850,0.006274868268520,0.016101211309433,-0.000812603859231,0.035927463322878,-0.014256065711379,-0.017496816813946,-0.001594335772097,0.008311240933836,0.008485468104482,-0.048018593341112,0.076647184789181,0.032110627740622,-0.004020920954645));
res += mul(Get(s2,dx,-dy), float4x4(0.007568098139018,0.008737958036363,0.055708743631840,0.019336994737387,0.067985408008099,0.011822081170976,-0.005416230298579,-0.003105167532340,0.014321616850793,-0.031218580901623,0.013691945932806,-0.007485881447792,-0.013608673587441,0.017900293692946,0.005769240669906,0.004177785944194));
res += mul(Get(s2,dx,0), float4x4(0.070049203932285,-0.009115193039179,0.007339541334659,-0.024175077676773,-0.022811269387603,0.011596730910242,-0.027309989556670,-0.005075754597783,0.009649176150560,0.009254523552954,-0.035977859050035,0.001496309880167,0.008891215547919,0.023956820368767,0.017920380458236,-0.006511350627989));
res += mul(Get(s2,dx,dy), float4x4(0.022083666175604,-0.024492014199495,-0.001518729492091,-0.011222750879824,0.005467069800943,0.000510010169819,0.022082250565290,-0.008700776845217,-0.006834173575044,-0.016330726444721,-0.012489086017013,0.004419883713126,0.001984505681321,0.078944005072117,0.007019159384072,0.010161371901631));
res += mul(Get(s3,-dx,-dy), float4x4(0.006814357824624,-0.009254782460630,0.025264780968428,0.015874586999416,-0.067380920052528,-0.002920066006482,0.034251328557730,0.008156256750226,-0.006018952466547,-0.037720475345850,-0.026007249951363,-0.017693122848868,-0.007097181398422,0.019246915355325,0.007988340221345,-0.049165755510330));
res += mul(Get(s3,-dx,0), float4x4(-0.040816422551870,-0.012914584949613,0.006750204600394,0.000916521530598,0.025525927543640,0.005598089192063,0.037701863795519,0.017757654190063,-0.016829578205943,-0.071919158101082,0.002585001755506,-0.052344169467688,0.030916435644031,0.004136104136705,-0.030719041824341,-0.035455193370581));
res += mul(Get(s3,-dx,dy), float4x4(-0.020247858017683,-0.014115685597062,0.010371156036854,-0.002076925709844,0.010852954350412,-0.031524483114481,0.016204209998250,0.002390227280557,-0.021281560882926,0.006557603366673,-0.002704548183829,-0.030921919271350,0.027099046856165,0.004914703778923,-0.007758808322251,-0.025821955874562));
res += mul(Get(s3,0,-dy), float4x4(0.006422025617212,-0.021934993565083,0.019903948530555,-0.012101589702070,-0.058488391339779,0.026559261605144,-0.012460083700716,0.018466137349606,0.066401913762093,0.009084642864764,-0.050738994032145,-0.001962181180716,0.003481940599158,-0.063483230769634,-0.008805612102151,-0.046955287456512));
res += mul(Get(s3,0,0), float4x4(0.043516136705875,-0.002680419478565,0.005065272096545,-0.027984999120235,0.001386254327372,0.016139952465892,0.027142474427819,-0.005545459222049,-0.058530986309052,-0.043808221817017,0.033946782350540,-0.021964590996504,0.019002754241228,-0.023949312046170,-0.038301266729832,-0.036365713924170));
res += mul(Get(s3,0,dy), float4x4(-0.013131587766111,-0.006428634747863,0.003463213099167,0.000716160458978,-0.013099581934512,-0.027126902714372,0.004064776003361,0.000945857958868,-0.003260666504502,-0.041326433420181,-0.015061219222844,-0.033344786614180,0.002093284623697,0.004091030918062,0.001815075753257,-0.010723960585892));
res += mul(Get(s3,dx,-dy), float4x4(-0.026952862739563,-0.006793148349971,0.014834422618151,0.009997324086726,-0.015476047061384,0.021303769201040,-0.009814268909395,-0.013810413889587,0.046200778335333,0.061206132173538,0.039705958217382,0.033363956958055,-0.004180603194982,-0.027546057477593,-0.007398292422295,0.015069477260113));
res += mul(Get(s3,dx,0), float4x4(0.006717060692608,0.004318590275943,-0.039339911192656,0.011563808657229,-0.031033487990499,0.006061439402401,-0.003292704466730,0.013042113743722,0.032764416188002,0.037162084132433,-0.005917772650719,0.013687427155674,0.044729646295309,-0.016720725223422,0.056838497519493,0.004907148424536));
res += mul(Get(s3,dx,dy), float4x4(-0.023504585027695,0.005846984218806,0.017689486965537,-0.008458179421723,-0.030819848179817,0.015791200101376,-0.023856312036514,-0.002737492090091,-0.019638746976852,-0.012503552250564,-0.032682817429304,0.015735054388642,0.013526801019907,-0.014328858815134,-0.014216146431863,0.006054211873561));
return max(float4(0,0,0,0), res);
}