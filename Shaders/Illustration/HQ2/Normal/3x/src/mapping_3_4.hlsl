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
res += mul(Get(s0,-dx,-dy), float4x4(0.004341236781329,0.001657878397964,0.046499893069267,-0.037656199187040,-0.073779083788395,-0.014987183734775,-0.092001512646675,-0.059556610882282,0.079578459262848,0.149604246020317,-0.120227739214897,-0.029262170195580,-0.017024824395776,0.084648393094540,-0.039966650307178,-0.024450214579701));
res += mul(Get(s0,-dx,0), float4x4(-0.019366290420294,0.002344095846638,-0.038229454308748,-0.044070754200220,-0.049497321248055,-0.061209809035063,-0.027930904179811,-0.006160550750792,-0.087505988776684,-0.134148180484772,0.233351752161980,0.009613048285246,-0.034758046269417,0.078134641051292,0.014591079205275,-0.058998413383961));
res += mul(Get(s0,-dx,dy), float4x4(0.009271084330976,0.013489621691406,0.047378830611706,-0.008478861302137,-0.000847671879455,-0.019271295517683,-0.072714164853096,0.044448308646679,0.003033919492736,-0.046124994754791,-0.117284640669823,-0.114346735179424,-0.023023853078485,0.070323914289474,0.022899670526385,-0.020869659259915));
res += mul(Get(s0,0,-dy), float4x4(-0.036554124206305,-0.020834280177951,0.038997583091259,-0.036235392093658,-0.083736889064312,0.013028649613261,-0.053018309175968,-0.044590350240469,0.165449425578117,0.160080790519714,0.026632321998477,0.034903924912214,0.030769307166338,0.005847434978932,0.117164894938469,0.004487856291234));
res += mul(Get(s0,0,0), float4x4(-0.081386327743530,-0.007941249758005,0.007012063171715,-0.030253879725933,-0.009390268474817,-0.051937054842710,0.026156481355429,0.023639731109142,-0.140316337347031,-0.136737108230591,0.057101305574179,0.060106430202723,-0.015776509419084,-0.015755642205477,0.118701554834843,-0.015903761610389));
res += mul(Get(s0,0,dy), float4x4(0.020716648548841,-0.000336068536853,0.075685165822506,0.004617826547474,0.041500203311443,0.016768354922533,-0.014190766960382,0.061213254928589,-0.114494778215885,-0.148216053843498,0.092503242194653,-0.029754457995296,-0.013510338962078,0.049124103039503,0.037916030734777,0.008382360450923));
res += mul(Get(s0,dx,-dy), float4x4(-0.053739655762911,-0.001691307756118,0.025574099272490,-0.006590048316866,-0.075860537588596,-0.039971545338631,-0.017906766384840,-0.033007614314556,0.183534473180771,-0.090944021940231,-0.042260091751814,0.011909069493413,0.004214978311211,-0.009758159518242,0.036725133657455,-0.014383085072041));
res += mul(Get(s0,dx,0), float4x4(-0.061800185590982,-0.038582604378462,0.037487547844648,-0.006484589073807,-0.016478009521961,-0.049183364957571,-0.031171612441540,0.005230745300651,0.040295571088791,0.072764128446579,-0.236337706446648,0.053682975471020,-0.022248717024922,0.038926433771849,0.001899368595332,-0.007659338414669));
res += mul(Get(s0,dx,dy), float4x4(-0.007336383685470,-0.031743954867125,0.016016630455852,0.013887406326830,0.038317780941725,-0.016259871423244,-0.032437138259411,0.017128299921751,-0.087373130023479,-0.012788236141205,0.015304103493690,0.004953722469509,-0.028226224705577,0.031740423291922,0.014811731874943,-0.004569784272462));
res += mul(Get(s1,-dx,-dy), float4x4(-0.019618568941951,0.042442928999662,-0.011126726865768,0.019608102738857,-0.027493601664901,0.034123919904232,-0.034193307161331,0.011097580194473,-0.001095553277992,0.071082696318626,0.062643885612488,-0.048424486070871,0.081121243536472,0.013965761289001,-0.027691900730133,0.028541870415211));
res += mul(Get(s1,-dx,0), float4x4(0.005348171107471,-0.035673469305038,0.008617492392659,0.009498625062406,-0.041889633983374,0.025617521256208,-0.023755250498652,-0.016564240679145,-0.090459764003754,0.090922847390175,-0.018036693334579,-0.074118822813034,0.085753567516804,0.111618779599667,-0.005307711195201,-0.051698658615351));
res += mul(Get(s1,-dx,dy), float4x4(-0.012584315612912,-0.051422160118818,0.007526711560786,0.014798709191382,-0.012103564105928,-0.026146255433559,-0.041539195924997,-0.001897120149806,-0.099133163690567,-0.016199443489313,0.048501927405596,-0.065087027847767,0.031136935576797,0.026990946382284,-0.060777384787798,-0.028191173449159));
res += mul(Get(s1,0,-dy), float4x4(0.035294219851494,0.038431353867054,-0.013616284355521,-0.024100318551064,0.007051884662360,-0.006979560945183,-0.005239929072559,0.024186117574573,-0.032032877206802,-0.112196855247021,0.066427983343601,-0.016933705657721,0.059493117034435,0.021515812724829,-0.038021445274353,0.043638255447149));
res += mul(Get(s1,0,0), float4x4(0.052984599024057,0.041976235806942,-0.015570769086480,-0.014279510825872,-0.010052532888949,0.143587484955788,0.014936005696654,0.023331861943007,-0.055655620992184,0.038217023015022,-0.122038878500462,-0.049167260527611,0.231598109006882,0.068836227059364,0.009819499216974,-0.047105606645346));
res += mul(Get(s1,0,dy), float4x4(-0.067816197872162,0.022675625979900,0.035412397235632,0.009334556758404,0.036665868014097,0.062574528157711,0.063100889325142,0.025098385289311,-0.057573728263378,0.006132946815342,-0.022990584373474,-0.005501978565007,0.050790626555681,-0.026948936283588,0.005466595757753,-0.029803644865751));
res += mul(Get(s1,dx,-dy), float4x4(0.042593125253916,0.005015281029046,-0.052146773785353,-0.037711132317781,-0.048636391758919,-0.033801276236773,-0.027241662144661,0.090606227517128,-0.035509832203388,-0.107924632728100,-0.055887304246426,0.032092690467834,0.016270983964205,0.009306163527071,-0.014288045465946,0.041195910423994));
res += mul(Get(s1,dx,0), float4x4(-0.007602737285197,-0.023383371531963,-0.059910405427217,-0.023090079426765,-0.001920571667142,-0.011929816566408,0.030220387503505,0.059798803180456,0.080968491733074,0.019513601437211,-0.053114667534828,-0.000672062975354,0.063522182404995,0.023844938725233,-0.003996944520622,-0.024924494326115));
res += mul(Get(s1,dx,dy), float4x4(-0.052063167095184,-0.027488745748997,0.022197002544999,-0.007616415619850,0.026012517511845,-0.031957313418388,0.020277911797166,0.075977072119713,0.090575970709324,-0.013347799889743,-0.034422144293785,0.052116446197033,-0.013331756927073,-0.014025205746293,-0.057688035070896,-0.012813190929592));
res += mul(Get(s2,-dx,-dy), float4x4(-0.026082126423717,0.005501286592335,0.001792800263502,0.023660439997911,-0.040306989103556,-0.143165454268456,-0.053789176046848,-0.001880980329588,-0.026107612997293,0.042989369481802,-0.066008076071739,0.003001731121913,-0.053583003580570,-0.041518032550812,-0.043629974126816,-0.022049071267247));
res += mul(Get(s2,-dx,0), float4x4(0.051815707236528,0.101647302508354,0.014897513203323,-0.017227407544851,-0.011521836742759,0.042962349951267,0.001421591732651,-0.055184651166201,-0.050581775605679,0.085746876895428,0.003533378476277,0.025781506672502,-0.070685110986233,-0.007780799176544,-0.042379904538393,-0.093399263918400));
res += mul(Get(s2,-dx,dy), float4x4(0.028263038024306,0.035844679921865,-0.002858786610886,0.011649845167994,-0.024042805656791,-0.017914704978466,-0.054505515843630,0.023717202246189,-0.045775189995766,0.084755629301071,-0.020334027707577,-0.048307336866856,0.017356717959046,0.036543708294630,0.096017822623253,-0.038256108760834));
res += mul(Get(s2,0,-dy), float4x4(-0.006879920139909,0.036681853234768,0.005885087419301,0.053066182881594,0.057775158435106,-0.048849552869797,0.077318809926510,-0.039865978062153,0.000616125937086,0.026328489184380,-0.020379994064569,0.006772149354219,0.077817268669605,-0.017910018563271,-0.086587935686111,-0.012993189506233));
res += mul(Get(s2,0,0), float4x4(0.036213226616383,0.046020694077015,0.036613237112761,-0.004195751156658,0.092768415808678,0.202843397855759,-0.039849162101746,-0.047818146646023,-0.006744938436896,0.025980778038502,0.002329793991521,0.010762143880129,0.062420193105936,0.257422417402267,-0.012367798015475,-0.047224022448063));
res += mul(Get(s2,0,dy), float4x4(0.044229350984097,-0.008558349683881,-0.009414467960596,0.016433777287602,-0.031966529786587,0.035689443349838,0.021593771874905,0.069884836673737,-0.028702950105071,0.097884550690651,-0.035833764821291,-0.061159275472164,0.021878542378545,0.032822314649820,0.192108675837517,0.029715934768319));
res += mul(Get(s2,dx,-dy), float4x4(-0.016074951738119,0.046064019203186,0.061017766594887,0.094970077276230,0.009531935676932,-0.098942607641220,0.106800429522991,-0.053830705583096,-0.033340990543365,0.017801718786359,0.013474735431373,0.000127882638481,-0.010693864896894,-0.218478471040726,0.005227848421782,0.030428810045123));
res += mul(Get(s2,dx,0), float4x4(-0.002706724684685,0.059876184910536,0.098339341580868,0.060843236744404,-0.033539067953825,-0.028094839304686,0.137266829609871,-0.056739557534456,-0.037420034408569,-0.018259223550558,0.002929119393229,-0.000318053876981,-0.054218295961618,-0.090999871492386,0.034258779138327,-0.020332628861070));
res += mul(Get(s2,dx,dy), float4x4(0.040374834090471,0.023895019665360,0.050349313765764,0.047928702086210,-0.111575841903687,-0.065547831356525,-0.002441952470690,0.029963852837682,0.008153843693435,0.020370962098241,-0.043784201145172,-0.056572455912828,-0.041625250130892,-0.089830182492733,0.016825338825583,0.010744118131697));
res += mul(Get(s3,-dx,-dy), float4x4(-0.032488383352757,-0.050463832914829,-0.067511022090912,-0.061847098171711,-0.005158198066056,-0.033609077334404,-0.058862142264843,0.095786780118942,-0.065406188368797,-0.035921569913626,0.043906044214964,0.008595019578934,-0.038593512028456,0.097874581813812,0.083138719201088,0.036246955394745));
res += mul(Get(s3,-dx,0), float4x4(0.002531099598855,0.017010584473610,-0.026224171742797,-0.043951708823442,0.007649285253137,-0.007280786521733,0.026657940819860,0.062587261199951,-0.030440762639046,0.019240617752075,0.063312150537968,0.049308281391859,-0.017367886379361,0.002569683827460,0.109257861971855,0.031042395159602));
res += mul(Get(s3,-dx,dy), float4x4(0.054451588541269,0.001485360437073,-0.099120989441872,-0.025534367188811,-0.021949013695121,-0.014949912205338,0.016882838681340,0.049684613943100,-0.019611949101090,0.004899695981294,0.053254466503859,0.024699006229639,-0.006469279062003,0.038941368460655,-0.003334542736411,0.000164190569194));
res += mul(Get(s3,0,-dy), float4x4(-0.046654514968395,0.035479910671711,-0.007491042837501,-0.048964224755764,-0.032889466732740,-0.058594048023224,-0.036829981952906,0.070911429822445,-0.014987470582128,-0.039600264281034,0.025318467989564,-0.007135679945350,-0.006015859078616,0.052578203380108,0.106684230268002,0.050413012504578));
res += mul(Get(s3,0,0), float4x4(0.009275037795305,0.079951263964176,-0.082563884556293,-0.050492703914642,0.130364030599594,0.012010297738016,-0.033379107713699,0.001736251055263,-0.068495258688927,-0.046203657984734,-0.073180362582207,0.079294197261333,0.017154492437840,-0.013116275891662,-0.020214434713125,0.019498173147440));
res += mul(Get(s3,0,dy), float4x4(0.035220582038164,-0.031266883015633,0.018606904894114,-0.020331675186753,0.049424815922976,-0.037220735102892,0.000481536320876,-0.001177844009362,-0.055289953947067,-0.032858163118362,0.033188637346029,0.083748772740364,0.019014984369278,0.023214805871248,0.037576556205750,0.005353044718504));
res += mul(Get(s3,dx,-dy), float4x4(-0.086929984390736,-0.091983549296856,-0.014698294922709,-0.028879960998893,0.009759313426912,-0.018143797293305,-0.070521980524063,0.067310832440853,0.044028270989656,0.026880450546741,0.040676880627871,-0.052131187170744,0.003779588034377,-0.001588989864103,0.107968576252460,0.011626689694822));
res += mul(Get(s3,dx,0), float4x4(-0.106538988649845,-0.048186708241701,-0.052067629992962,-0.034896805882454,0.037384036928415,-0.000809775257949,-0.038059931248426,0.002177486196160,-0.018418133258820,-0.047782726585865,0.060450203716755,0.008574605919421,0.008058568462729,-0.023581154644489,-0.052023582160473,-0.006884534843266));
res += mul(Get(s3,dx,dy), float4x4(-0.041859373450279,-0.066371068358421,-0.027259076014161,-0.004198614507914,-0.003241238649935,-0.059386853128672,-0.000633010175079,-0.002648439956829,-0.049033980816603,-0.011455950327218,-0.065775334835052,0.016508532688022,0.015773816034198,0.013518923893571,0.029189819470048,-0.004604217596352));
return max(float4(0,0,0,0), res);
}
