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
float4 res = float4(-0.301146030426025,-0.179075688123703,-0.365523070096970,-0.247043862938881);
res += mul(Get(s0,-dx,-dy), float4x4(0.017544440925121,0.019004242494702,0.028021501377225,-0.001554702292196,0.058594349771738,0.012298075482249,0.060108549892902,0.001922632101923,0.057173438370228,0.036296911537647,0.003395682666451,-0.061697710305452,-0.026520265266299,0.002575658028945,-0.016959972679615,-0.018688447773457));
res += mul(Get(s0,-dx,0), float4x4(0.043770223855972,0.052341774106026,-0.018214806914330,0.016842769458890,-0.102267384529114,-0.085349239408970,-0.082779720425606,0.077726043760777,-0.171711370348930,0.060210026800632,-0.078531548380852,0.001166288624518,-0.040754012763500,0.056105595082045,-0.028825219720602,0.059514660388231));
res += mul(Get(s0,-dx,dy), float4x4(0.068839848041534,-0.098045036196709,0.051125850528479,-0.024240458384156,0.028676467016339,0.030584225431085,-0.002355073811486,-0.038839522749186,-0.011591834016144,-0.025220725685358,0.004551533609629,0.048425756394863,-0.009803174994886,0.009936195798218,0.032421551644802,-0.008253836072981));
res += mul(Get(s0,0,-dy), float4x4(-0.010838908143342,0.019084695726633,-0.001236485084519,0.018654478713870,-0.198986828327179,0.013714074157178,0.008661417290568,0.025121349841356,0.028905609622598,0.244377538561821,0.150727152824402,0.197933256626129,0.196012929081917,0.034761298447847,0.159637153148651,-0.106410153210163));
res += mul(Get(s0,0,0), float4x4(-0.001681403722614,-0.392122626304626,0.211545169353485,-0.221129208803177,0.152731776237488,-0.000064862229920,0.212559118866920,0.021511649712920,0.167001008987427,-0.084368161857128,-0.093694008886814,-0.319867044687271,-0.115032345056534,-0.052003894001245,-0.077815912663937,-0.063822291791439));
res += mul(Get(s0,0,dy), float4x4(0.087284304201603,0.042978096753359,-0.295065760612488,-0.324831932783127,0.114072628319263,0.047819320112467,0.078724630177021,0.016419714316726,0.001947872573510,0.025778198614717,-0.081573493778706,-0.029343813657761,0.026110835373402,0.038752935826778,0.038936529308558,0.033298555761576));
res += mul(Get(s0,dx,-dy), float4x4(0.039333093911409,0.039442121982574,0.025859415531158,0.026007628068328,-0.010027508251369,0.055169619619846,0.012470379471779,-0.055222135037184,-0.106888405978680,0.187676951289177,-0.006680831778795,0.040458966046572,-0.084851920604706,-0.066658660769463,-0.152504682540894,-0.048078604042530));
res += mul(Get(s0,dx,0), float4x4(-0.069533266127110,-0.018274703994393,-0.057270199060440,0.030633537098765,0.156091198325157,0.004726645071059,-0.033046223223209,-0.008232013322413,-0.020771758630872,-0.047665577381849,-0.004941992461681,0.215152099728584,-0.033205013722181,-0.129087746143341,0.172336891293526,0.099280700087547));
res += mul(Get(s0,dx,dy), float4x4(-0.046398147940636,-0.010976579040289,0.007440018467605,-0.005419478751719,-0.051305554807186,-0.023403219878674,-0.015190227888525,0.010477849282324,-0.001553226378746,0.115890823304653,-0.001800594618544,-0.015309972688556,-0.024127051234245,0.015839537605643,-0.105182960629463,-0.016308050602674));
res += mul(Get(s1,-dx,-dy), float4x4(-0.010923868976533,-0.013050008565187,-0.000318786303978,0.065386496484280,-0.114756606519222,-0.056221406906843,0.010802620090544,-0.106925666332245,0.101182371377945,-0.026966771110892,0.049835093319416,-0.058265078812838,-0.003023108467460,-0.009051406756043,-0.014548176899552,-0.028633305802941));
res += mul(Get(s1,-dx,0), float4x4(-0.092335283756256,0.024957088753581,-0.123093642294407,0.096428178250790,-0.086259067058563,0.212483704090118,0.042325511574745,0.042057823389769,-0.071290962398052,-0.097464941442013,-0.032573845237494,0.085183404386044,-0.035663861781359,0.028401071205735,-0.037827551364899,-0.035461664199829));
res += mul(Get(s1,-dx,dy), float4x4(0.026664676144719,0.009790913201869,0.015983693301678,0.009593695402145,0.000468437676318,-0.044613622128963,-0.037945840507746,0.038031827658415,0.021777536720037,0.103804707527161,0.096360750496387,-0.047603260725737,-0.018076945096254,-0.015104464255273,0.039332263171673,-0.027371140196919));
res += mul(Get(s1,0,-dy), float4x4(-0.118465669453144,-0.176380187273026,0.005025889724493,-0.071371421217918,0.015333873219788,-0.070354141294956,-0.063825786113739,0.074818484485149,0.011786326766014,-0.012604782357812,-0.063326403498650,0.229238823056221,-0.083084926009178,-0.278122484683990,-0.102691151201725,-0.088592194020748));
res += mul(Get(s1,0,0), float4x4(0.107868760824203,-0.163689568638802,-0.027342259883881,0.133307754993439,-0.262369334697723,0.256148755550385,-0.218731954693794,-0.012016100808978,-0.015430170111358,-0.279132753610611,-0.081952944397926,-0.285676807165146,-0.057747073471546,0.109741151332855,-0.052269730716944,0.072807960212231));
res += mul(Get(s1,0,dy), float4x4(-0.042303919792175,0.007224257569760,-0.122917413711548,-0.015499399043620,-0.010744092054665,-0.001272919937037,-0.034555353224277,-0.042051151394844,0.027805751189590,0.099576406180859,-0.021374780684710,0.144307091832161,-0.038882624357939,-0.048303473740816,-0.043346423655748,0.000992064480670));
res += mul(Get(s1,dx,-dy), float4x4(0.005224263295531,-0.024547174572945,-0.028358792886138,0.084147311747074,0.011093427427113,0.055357418954372,-0.037689629942179,-0.012499590404332,-0.042742952704430,0.007169356103987,0.028981963172555,-0.057491477578878,-0.080600097775459,-0.226096332073212,-0.009953406639397,0.017753453925252));
res += mul(Get(s1,dx,0), float4x4(0.016476845368743,0.124063193798065,-0.010107778944075,-0.075793124735355,0.048448503017426,0.179850354790688,-0.084772251546383,-0.041651479899883,0.018269808962941,-0.119420051574707,0.029132759198546,0.102152235805988,0.046866215765476,0.019666571170092,-0.228323087096214,-0.186594262719154));
res += mul(Get(s1,dx,dy), float4x4(-0.026045832782984,0.012650197371840,0.018168997019529,0.077595010399818,0.003419980173931,-0.046441886574030,-0.011811440810561,-0.040779475122690,0.088070742785931,0.140322387218475,0.167596265673637,0.025291366502643,-0.018803380429745,-0.052367653697729,-0.096161305904388,0.005896014161408));
res += mul(Get(s2,-dx,-dy), float4x4(-0.136028096079826,-0.124707370996475,-0.000176740242750,-0.097376637160778,0.034088302403688,-0.009778094477952,-0.015446288511157,-0.028246844187379,-0.029315318912268,0.020088775083423,-0.035445004701614,-0.027793973684311,-0.077418141067028,0.067476674914360,-0.047022968530655,0.000166697267559));
res += mul(Get(s2,-dx,0), float4x4(-0.020946178585291,0.172020792961121,0.072806730866432,-0.050493855029345,-0.125972598791122,-0.137770265340805,-0.078580029308796,-0.028487430885434,0.060158163309097,-0.025632554665208,0.079493209719658,-0.019923385232687,-0.011642439290881,0.055425751954317,0.008416024968028,-0.009395486675203));
res += mul(Get(s2,-dx,dy), float4x4(-0.031791150569916,-0.022424541413784,0.046769082546234,-0.042523346841335,0.028323955833912,-0.040675070136786,0.046479515731335,0.000325921457261,0.025373391807079,-0.015375819057226,-0.012366302311420,0.007676194421947,-0.058407902717590,-0.062143072485924,-0.065080307424068,-0.038463190197945));
res += mul(Get(s2,0,-dy), float4x4(0.100542403757572,-0.175308689475060,-0.034675687551498,-0.078478284180164,-0.101878806948662,-0.184257224202156,-0.057744160294533,-0.081724688410759,0.046162825077772,0.113394893705845,0.028158180415630,0.008203088305891,0.078092277050018,0.189336284995079,0.021675469353795,0.112265974283218));
res += mul(Get(s2,0,0), float4x4(0.193666622042656,0.305468589067459,-0.091038011014462,0.106181249022484,-0.023781411349773,-0.106499381363392,-0.060264341533184,-0.117887333035469,0.406774342060089,-0.112264096736908,0.278436839580536,0.045619770884514,-0.033444549888372,-0.130792081356049,-0.061597939580679,-0.175707951188087));
res += mul(Get(s2,0,dy), float4x4(-0.059114795178175,-0.014106139540672,-0.097560383379459,-0.074360102415085,-0.048940613865852,-0.032124683260918,-0.121677227318287,-0.042311169207096,-0.052891094237566,0.046659830957651,-0.081965766847134,-0.008093948476017,0.047834523022175,-0.104742266237736,0.029516192153096,-0.031167563050985));
res += mul(Get(s2,dx,-dy), float4x4(-0.002559507032856,-0.016467904672027,-0.010351131670177,-0.017752917483449,0.046877793967724,-0.228594094514847,0.133861109614372,0.066782027482986,-0.058716110885143,0.059348545968533,-0.049004230648279,-0.003434097161517,-0.147504210472107,-0.003637002082542,0.006420300342143,-0.013626809231937));
res += mul(Get(s2,dx,0), float4x4(-0.018053986132145,0.141572132706642,0.066229782998562,-0.045926798135042,-0.065887048840523,0.031866900622845,-0.128319293260574,0.041911680251360,-0.180545315146446,-0.023301359266043,-0.050809364765882,0.021279407665133,0.009420088492334,-0.080994576215744,0.058333657681942,0.213120847940445));
res += mul(Get(s2,dx,dy), float4x4(-0.037516210228205,0.061559803783894,-0.115546159446239,-0.073907926678658,0.026435283944011,-0.011579073965549,0.010744237340987,0.034459255635738,0.032152675092220,0.028763251379132,0.081946365535259,-0.059653390198946,-0.013793196529150,-0.015173009596765,-0.024455741047859,0.001153601333499));
res += mul(Get(s3,-dx,-dy), float4x4(-0.086409166455269,-0.112684577703476,-0.056255385279655,-0.011930428445339,0.083042107522488,-0.046759143471718,0.130777463316917,0.018590191379189,0.063119009137154,0.000734648841899,0.076526805758476,-0.026770070195198,-0.005497010890394,0.008227949030697,-0.001629688194953,-0.001979148946702));
res += mul(Get(s3,-dx,0), float4x4(-0.061879519373178,0.173312768340111,-0.026016853749752,-0.090495787560940,0.037053458392620,-0.002985412254930,-0.003429864766076,0.170055687427521,0.216347485780716,0.100826136767864,-0.051390815526247,-0.056702937930822,-0.019789760932326,-0.091434873640537,-0.022984413430095,-0.130734816193581));
res += mul(Get(s3,-dx,dy), float4x4(0.008818251080811,-0.048422589898109,-0.001506097498350,0.122058667242527,0.055908296257257,0.089898288249969,0.045127011835575,0.016300760209560,0.088869668543339,-0.004395126365125,0.100095376372337,0.046663407236338,-0.058520093560219,-0.038624148815870,-0.153074964880943,-0.086444921791553));
res += mul(Get(s3,0,-dy), float4x4(0.035938125103712,-0.070339687168598,0.071537159383297,-0.176538750529289,0.047164361923933,-0.365721464157104,0.134714066982269,0.038052998483181,-0.146158948540688,0.095571078360081,-0.142926946282387,0.034344382584095,0.064118862152100,0.032937448471785,0.034651581197977,0.045134108513594));
res += mul(Get(s3,0,0), float4x4(-0.094028748571873,0.139638483524323,-0.087955199182034,0.149020120501518,-0.063311718404293,-0.136254057288170,-0.197245508432388,-0.088241226971149,-0.037449158728123,0.207447141408920,0.569240212440491,-0.028654983267188,-0.328891009092331,0.018977208063006,-0.394383162260056,0.135476320981979));
res += mul(Get(s3,0,dy), float4x4(0.060978759080172,-0.007135049439967,0.077308535575867,-0.139041289687157,0.060305934399366,0.026919391006231,-0.007813250645995,0.084342122077942,0.025998394936323,0.081048935651779,0.180449679493904,-0.027181515470147,-0.019665094092488,0.010963290929794,0.055473025888205,-0.023407395929098));
res += mul(Get(s3,dx,-dy), float4x4(-0.102360017597675,0.150987878441811,0.025468826293945,0.111951887607574,-0.109360009431839,-0.150645986199379,-0.037116985768080,-0.027501272037625,0.130409270524979,-0.069660909473896,0.034736339002848,0.065915703773499,-0.154122337698936,0.112055562436581,-0.026236308738589,0.026974588632584));
res += mul(Get(s3,dx,0), float4x4(0.070960052311420,-0.085082486271858,-0.111226275563240,-0.365032017230988,0.001236220472492,-0.073996864259243,0.020264226943254,-0.079736597836018,0.058648038655519,-0.045064952224493,0.004091054666787,-0.011354272253811,0.019600288942456,-0.015398743562400,-0.096841208636761,-0.016511583700776));
res += mul(Get(s3,dx,dy), float4x4(0.002964067272842,0.137774303555489,0.062885247170925,0.107797555625439,0.057139832526445,0.052758142352104,0.027092386037111,-0.039818476885557,-0.006553805433214,0.078785412013531,-0.054017305374146,-0.003199307713658,0.015944736078382,-0.024844693019986,0.023753637447953,0.029815521091223));
res += mul(Get(s4,-dx,-dy), float4x4(-0.017339009791613,-0.041022602468729,0.006459020078182,-0.023398227989674,0.010503948666155,-0.052559416741133,0.021633220836520,0.016580309718847,0.070520013570786,0.113771274685860,0.036010537296534,-0.028449926525354,0.060654837638140,0.051829937845469,0.024717066437006,-0.025000721216202));
res += mul(Get(s4,-dx,0), float4x4(0.070738606154919,0.128054708242416,0.004041031468660,0.022061519324780,-0.016823647543788,-0.130567580461502,-0.075354598462582,0.022726276889443,-0.055802132934332,0.007622698321939,-0.038327321410179,0.046190310269594,-0.035655781626701,-0.143749237060547,0.058192361146212,-0.050571147352457));
res += mul(Get(s4,-dx,dy), float4x4(-0.043250318616629,0.017769200727344,-0.102606125175953,0.078727900981903,0.001119593274780,-0.001664006733336,0.087724380195141,-0.012407603673637,0.020418379455805,0.016127852723002,0.086172774434090,0.043522775173187,0.015107899904251,0.031400416046381,-0.081379592418671,-0.045072399079800));
res += mul(Get(s4,0,-dy), float4x4(-0.108792692422867,0.060705140233040,-0.116951994597912,-0.040953986346722,0.070584744215012,-0.133791446685791,-0.062371339648962,-0.038821350783110,0.012297636829317,-0.178987070918083,-0.010992808267474,0.000459681643406,0.002722218399867,0.124790199100971,0.061044327914715,0.126181244850159));
res += mul(Get(s4,0,0), float4x4(0.029155494645238,0.488552838563919,0.182210609316826,0.098720848560333,0.163329094648361,-0.201736941933632,-0.058988261967897,-0.071077302098274,-0.550155222415924,0.020299635827541,-0.311674565076828,-0.242666214704514,-0.185256198048592,-0.308343857526779,-0.143532231450081,0.120022840797901));
res += mul(Get(s4,0,dy), float4x4(0.160588160157204,0.156303644180298,0.114702880382538,-0.043624632060528,-0.063947670161724,-0.036148715764284,0.071942865848541,-0.005912675522268,0.045409396290779,-0.005072769708931,0.074709877371788,0.054360743612051,0.036754444241524,0.108871720731258,0.075442425906658,0.038867235183716));
res += mul(Get(s4,dx,-dy), float4x4(0.039779584854841,-0.108825214207172,-0.023467523977160,0.057977594435215,0.120984353125095,0.019157394766808,0.067918516695499,-0.034260053187609,0.016559341922402,-0.035302337259054,-0.020307570695877,0.023473897948861,0.042600583285093,0.059019882231951,-0.047851439565420,-0.067235603928566));
res += mul(Get(s4,dx,0), float4x4(0.058390974998474,0.020143887028098,-0.031942900270224,-0.091267071664333,-0.040402814745903,-0.193878620862961,0.270287990570068,-0.108031451702118,0.117796950042248,0.133485093712807,0.125683680176735,-0.058910127729177,0.004751484841108,-0.029665593057871,0.059272967278957,0.064735636115074));
res += mul(Get(s4,dx,dy), float4x4(-0.028325820341706,0.049132253974676,-0.019500907510519,0.009847295470536,0.083721309900284,-0.079611055552959,-0.067851871252060,0.027429994195700,0.008940605446696,-0.008661568164825,-0.073822252452374,0.034415114670992,0.030023155733943,0.035307552665472,0.027114272117615,0.005249579437077));
res += mul(Get(s5,-dx,-dy), float4x4(0.022427501156926,0.092521876096725,0.025549307465553,0.021414982154965,-0.108153723180294,-0.139552190899849,-0.071776099503040,0.115468248724937,0.002987769199535,0.010607570409775,0.027053516358137,-0.024070829153061,-0.036729611456394,0.030209055170417,-0.035150438547134,0.057872757315636));
res += mul(Get(s5,-dx,0), float4x4(0.064210884273052,-0.109708756208420,0.058291211724281,0.091199755668640,0.076919496059418,-0.073572106659412,0.081288747489452,-0.031624279916286,0.012423111125827,-0.031507298350334,-0.009424781426787,-0.018540631979704,0.016945807263255,0.006473130546510,-0.014360105618834,0.082193069159985));
res += mul(Get(s5,-dx,dy), float4x4(-0.000238769804128,0.060573458671570,0.079740665853024,0.011798378080130,-0.028470043092966,0.051586151123047,-0.063305616378784,0.025163773447275,-0.013288985006511,-0.040871918201447,-0.042254991829395,0.021076660603285,0.001413226826116,0.020381353795528,0.012838417664170,-0.031442683190107));
res += mul(Get(s5,0,-dy), float4x4(0.234800592064857,0.365464895963669,0.033122092485428,0.203109875321388,0.100027538836002,-0.022866837680340,0.076950140297413,0.086322978138924,-0.182420700788498,0.057750690728426,-0.031800985336304,-0.079575017094612,0.012762661091983,0.080126218497753,-0.117432519793510,-0.063094593584538));
res += mul(Get(s5,0,0), float4x4(-0.006133717484772,-0.307261943817139,-0.122112862765789,-0.216993987560272,-0.164652511477470,0.242777630686760,-0.107730776071548,0.520678758621216,-0.252820402383804,-0.188124835491180,-0.029497163370252,-0.295190870761871,-0.276478886604309,-0.589577496051788,-0.005326874554157,-0.550060868263245));
res += mul(Get(s5,0,dy), float4x4(-0.032893802970648,0.032993007451296,-0.077393434941769,0.046363186091185,0.053152393549681,0.031582459807396,0.090285539627075,0.003782910062000,0.061165142804384,-0.005568843334913,0.061378668993711,0.015985593199730,-0.019777659326792,-0.025125686079264,0.186762735247612,0.119106367230415));
res += mul(Get(s5,dx,-dy), float4x4(-0.054517034441233,0.133152484893799,0.069918751716614,-0.080335974693298,-0.057125654071569,0.031593833118677,0.022717148065567,-0.044052317738533,-0.096083410084248,0.049122352153063,-0.031826816499233,-0.006021005567163,0.021747268736362,0.116010226309299,0.001972401048988,-0.029238957911730));
res += mul(Get(s5,dx,0), float4x4(0.032662607729435,-0.219946056604385,0.147022426128387,0.095869742333889,0.014888704754412,0.019218284636736,-0.070811137557030,0.049488853663206,0.087086193263531,-0.100262634456158,-0.023281963542104,-0.049745507538319,0.037520937621593,-0.017754562199116,0.039401378482580,-0.054146498441696));
res += mul(Get(s5,dx,dy), float4x4(0.033664725720882,0.063459984958172,0.010766705498099,-0.025503326207399,-0.038457404822111,-0.058012947440147,-0.037478100508451,0.083507053554058,-0.049329407513142,0.049688953906298,-0.063076809048653,-0.016910063102841,-0.010118721053004,0.011397049762309,0.031332120299339,-0.027522763237357));
res = max(float4(0, 0, 0, 0), res) + float4(0.028055932372808,0.012920674867928,0.033962272107601,0.007028660736978) * min(float4(0, 0, 0, 0), res);
return res;
}
