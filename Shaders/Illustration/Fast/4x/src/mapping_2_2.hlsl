sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.1226709559559822,0.1040964722633362,0.0456781908869743,-0.0047444142401218);
res += mul(Get(s0,-dx,-dy), float4x4(0.0377920120954514,0.1889161318540573,-0.1070069223642349,0.1298914700746536,0.0723420009016991,0.1439719051122665,-0.1049726903438568,0.0487689487636089,0.3118286728858948,0.0326094478368759,-0.3443951308727264,-0.0815200135111809,-0.0661175772547722,0.0585016347467899,0.0692910403013229,0.3233448565006256));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0025292064528912,-0.0535359270870686,-0.0833281353116035,-0.0188440084457397,-0.2394365221261978,-0.0201448611915112,0.2716183662414551,0.1283061951398849,-0.1299452781677246,-0.0170711614191532,0.0321879833936691,0.0764516741037369,0.1131951883435249,0.0975890308618546,-0.0568429008126259,0.0106936143711209));
res += mul(Get(s2,-dx,-dy), float4x4(0.0806447267532349,0.0777708142995834,-0.1117109730839729,0.0394893549382687,0.0200445856899023,0.0428276136517525,-0.0542468018829823,0.0619326457381248,0.0127556547522545,0.0262484550476074,0.0222117267549038,-0.0226051211357117,-0.0658770725131035,0.0254775173962116,0.0895840823650360,-0.0141621343791485));
res += mul(Get(s0,-dx,0), float4x4(-0.1270839422941208,0.2777211368083954,-0.0333336740732193,-0.1532080024480820,0.0052669588476419,0.0653241947293282,-0.0287395659834146,-0.1241035684943199,0.0984596610069275,-0.0098652411252260,-0.1821363270282745,0.3494785130023956,0.2387930750846863,0.0949818268418312,0.0139168715104461,-0.4103416204452515));
res += mul(Get(s1,-dx,0), float4x4(0.1275762021541595,-0.2347266077995300,0.1370839327573776,-0.0110305557027459,-0.0847973600029945,-0.0012957570143044,0.0821229293942451,-0.1974562555551529,0.1107050850987434,-0.1925163865089417,0.0755877941846848,-0.0916232839226723,0.0771946907043457,0.0974282473325729,0.1002577841281891,0.1367726624011993));
res += mul(Get(s2,-dx,0), float4x4(0.2486210018396378,-0.0235552582889795,-0.2949506640434265,0.4800370633602142,0.1137361377477646,0.0053161620162427,-0.1606613248586655,-0.0260225590318441,0.0408518165349960,-0.0055909999646246,-0.1779916435480118,-0.0097054243087769,-0.0304308608174324,0.0015131649561226,0.0352727957069874,0.0166597478091717));
res += mul(Get(s0,-dx,dy), float4x4(0.0042123710736632,0.0114285657182336,-0.0965037345886230,0.0363780185580254,0.0026506714057177,-0.0052345907315612,-0.0095249824225903,0.0046424828469753,0.1661796718835831,-0.1274686157703400,-0.1796672791242599,-0.0029782070778310,-0.0098437014967203,0.1518137007951736,0.0764622092247009,0.9471983909606934));
res += mul(Get(s1,-dx,dy), float4x4(-0.0671729892492294,-0.0320044308900833,0.0697094649076462,0.0264527201652527,-0.1898311525583267,0.1265791356563568,0.1799448430538177,-0.0177789106965065,0.0392334051430225,-0.0957087948918343,0.0082188174128532,-0.0770524293184280,-0.0903199762105942,-0.0244561396539211,0.0511403530836105,-0.0552018657326698));
res += mul(Get(s2,-dx,dy), float4x4(-0.0834615454077721,-0.0481435805559158,0.1796696186065674,-0.0817725434899330,0.0489573068916798,0.0407317355275154,-0.0481861457228661,-0.0314015932381153,-0.0629816874861717,0.3516800403594971,0.1469093263149261,-0.1267841607332230,0.0622033812105656,0.0274910964071751,-0.0632784962654114,-0.0258877500891685));
res += mul(Get(s0,0,-dy), float4x4(-0.0439226850867271,-0.2385380715131760,-0.1076727807521820,0.0190755389630795,0.1374942511320114,0.1595260500907898,-0.1512906104326248,0.0670279487967491,0.2547767460346222,0.1471425890922546,-0.3231854140758514,0.2999800443649292,-0.0213937573134899,-0.1337341517210007,-0.0746965557336807,0.2023379951715469));
res += mul(Get(s1,0,-dy), float4x4(-0.1530661135911942,0.0522496290504932,-0.0507998652756214,0.1772966831922531,-0.2769867181777954,-0.0894869938492775,0.1877279579639435,-0.0828899443149567,0.2245249897241592,-0.0900281369686127,-0.1670790910720825,0.0337264090776443,0.0332788005471230,-0.1197555586695671,0.0306113231927156,0.0476560667157173));
res += mul(Get(s2,0,-dy), float4x4(-0.0907331779599190,-0.0478255413472652,0.1053772717714310,0.1719041615724564,0.0990077331662178,0.0016919403569773,-0.1452320814132690,-0.0173027031123638,0.0064854361116886,-0.1684248745441437,0.0298587009310722,-0.0764856636524200,-0.1118097603321075,0.0039447383023798,0.1700650751590729,-0.0785845220088959));
res += mul(Get(s0,0,0), float4x4(-0.1154458299279213,-0.4116202890872955,-0.4059489071369171,0.1939421743154526,-0.1555194854736328,-0.0010853653075173,0.1428654938936234,-0.0573493354022503,-0.2143773734569550,-0.1065839454531670,0.3220450282096863,0.7663546204566956,-0.3644233047962189,0.2438293248414993,0.3382034897804260,-0.0279224328696728));
res += mul(Get(s1,0,0), float4x4(0.3329611420631409,0.8002107739448547,-0.4531084299087524,0.0548890829086304,0.2103838771581650,0.2963438034057617,-0.2334282845258713,-0.3061781227588654,0.5823558568954468,0.3045130968093872,0.5925522446632385,0.0491121523082256,-1.0811946392059326,1.2609961032867432,-0.3888135850429535,0.3082678020000458));
res += mul(Get(s2,0,0), float4x4(0.2153328508138657,-1.1367130279541016,-0.3423965275287628,0.5519061088562012,0.1303131580352783,0.0702911242842674,-0.2199145257472992,0.2342727929353714,0.0373502261936665,-0.0740849450230598,-0.0080493418499827,0.3210873901844025,-0.0219493396580219,0.0999616980552673,0.0357460863888264,0.0852859839797020));
res += mul(Get(s0,0,dy), float4x4(0.3338799178600311,-0.0413017310202122,-0.2801089882850647,-0.2490001469850540,0.0361730344593525,-0.0339324697852135,-0.0462355986237526,0.0024773888289928,0.3261454701423645,-0.0706567987799644,-0.3047575056552887,-0.0561578534543514,-0.1719070076942444,-0.0652178451418877,0.1903001070022583,0.1088788136839867));
res += mul(Get(s1,0,dy), float4x4(-0.1891126483678818,0.0190209429711103,0.2479960769414902,0.2112418264150620,-0.3640294969081879,0.0337144993245602,0.3578476905822754,0.1785106807947159,-0.0474530793726444,-0.1171268671751022,0.2208783626556396,0.0188141837716103,-0.0934877246618271,0.0527352914214134,0.0475193262100220,0.1923268884420395));
res += mul(Get(s2,0,dy), float4x4(-0.0749472677707672,0.0038996385410428,0.1116949543356895,0.1152566298842430,0.0289464816451073,0.1127742826938629,-0.0646874010562897,0.1884252578020096,-0.1490441262722015,0.1585794538259506,0.0784703642129898,-0.1625704616308212,0.1938809007406235,0.0123791471123695,-0.2565506994724274,0.2343975007534027));
res += mul(Get(s0,dx,-dy), float4x4(-0.0362860411405563,-0.1159326657652855,0.0084159588441253,-0.0121981687843800,-0.0750228762626648,-0.4185245931148529,0.1067131757736206,-0.1035924777388573,0.0643536895513535,-0.2600356042385101,-0.0024462640285492,-0.1989279389381409,-0.0797597020864487,-0.1303763836622238,0.1307909488677979,0.0852660089731216));
res += mul(Get(s1,dx,-dy), float4x4(-0.0895369425415993,-0.1954780817031860,0.0459302999079227,-0.0306717939674854,-0.0035854810848832,0.1562727391719818,-0.0368238687515259,0.2505480051040649,-0.0579916015267372,0.1544555425643921,0.0731573328375816,0.0490387491881847,-0.0043812817893922,-0.1794166117906570,0.0545331276953220,-0.1245517581701279));
res += mul(Get(s2,dx,-dy), float4x4(-0.0805066823959351,-0.0749056041240692,0.0892233997583389,-0.0863117948174477,0.0736224502325058,-0.0547182150185108,-0.0890106037259102,-0.1993629336357117,0.1097660735249519,-0.0803897008299828,-0.0651655644178391,0.0142197459936142,0.0191193372011185,0.0082993675023317,-0.0101680187508464,-0.1385364234447479));
res += mul(Get(s0,dx,0), float4x4(-0.1033374071121216,0.1318124234676361,0.1092879027128220,-0.0819306001067162,-0.0809358134865761,-0.0501587949693203,0.0844958797097206,0.0767894834280014,0.1844236254692078,-0.0653252452611923,-0.2594608068466187,0.1279233694076538,0.1629551947116852,-0.1715707331895828,-0.1694882065057755,-0.0616049356758595));
res += mul(Get(s1,dx,0), float4x4(0.0475425422191620,-0.2796735763549805,0.0355537533760071,-0.1663437783718109,-0.0429723598062992,0.0481228306889534,0.0636093318462372,-0.0489775016903877,-0.0030104294419289,0.5193939208984375,0.1084121689200401,0.2211125046014786,-0.0285842325538397,-0.4314915239810944,0.0021511323284358,-0.0921975299715996));
res += mul(Get(s2,dx,0), float4x4(-0.1227009966969490,-0.2151240110397339,0.1290396451950073,-0.1465495377779007,0.0972718819975853,-0.4162509441375732,-0.1172573119401932,-0.0184040796011686,0.0980275794863701,0.0196453426033258,-0.1243408694863319,0.1421688348054886,0.1239709034562111,-0.0878080576658249,-0.1671521365642548,0.1005301102995872));
res += mul(Get(s0,dx,dy), float4x4(0.0022521074861288,0.0983778163790703,0.0565762817859650,0.0392468646168709,0.0036964206956327,-0.0051222052425146,0.0032090444583446,-0.0702749267220497,0.1162043362855911,0.1621687263250351,-0.1032898128032684,-0.0941436886787415,-0.0304124951362610,-0.0569655671715736,0.1246001869440079,0.0332710519433022));
res += mul(Get(s1,dx,dy), float4x4(0.0725796446204185,-0.0888915434479713,-0.0457096323370934,-0.1239845454692841,-0.1749007999897003,-0.1838310211896896,0.1628870815038681,0.0806921944022179,0.0221681781113148,0.1447415202856064,-0.0025234685745090,0.1013688445091248,-0.0368589572608471,-0.0649740919470787,0.1193906143307686,-0.0165560282766819));
res += mul(Get(s2,dx,dy), float4x4(-0.0659011602401733,-0.0099838273599744,0.0706607103347778,-0.0792828351259232,-0.0021358663216233,-0.0264688879251480,-0.0020418644417077,0.0252129696309566,0.0785587802529335,-0.1245219111442566,-0.0527615584433079,-0.0913229286670685,-0.0303235817700624,-0.1152635291218758,0.0509645231068134,-0.0100771570578218));
res = max(float4(0, 0, 0, 0), res) + float4(1.0486909151077271,-0.3120697140693665,0.9706661701202393,4.5719680786132812) * min(float4(0, 0, 0, 0), res);
return res;
}