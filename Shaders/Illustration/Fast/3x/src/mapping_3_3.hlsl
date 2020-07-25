sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0502537414431572,-0.1063388362526894,0.1118703633546829,0.0165960118174553);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0702604874968529,-0.1814216375350952,-0.0665599554777145,-0.2032714337110519,-0.0147704062983394,0.1520295888185501,-0.0401809960603714,-0.0401255898177624,-0.2521229088306427,-0.1764310151338577,-0.0521386228501797,-0.1334195584058762,0.0473062060773373,-0.1898504942655563,0.2511371970176697,-0.0547759905457497));
res += mul(Get(s1,-dx,-dy), float4x4(0.0302404239773750,0.0228684619069099,0.1182338148355484,-0.0390753857791424,0.0641461461782455,0.0020737829618156,-0.0055984314531088,0.0338562503457069,0.1314839124679565,0.1704155951738358,0.3710687756538391,-0.0702503994107246,-0.1375161260366440,0.0359171070158482,-0.0445421338081360,-0.0833894759416580));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1170625314116478,-0.0210997760295868,-0.1492770463228226,0.0655741617083549,-0.0613003559410572,-0.0310823619365692,0.1731078624725342,0.0026011029258370,0.0198026839643717,0.1459625065326691,0.1201666072010994,-0.0111502539366484,0.1009753420948982,-0.0186963547021151,0.0807690247893333,-0.0341793037950993));
res += mul(Get(s0,-dx,0), float4x4(0.1116651892662048,-0.1106980741024017,0.3858104646205902,0.1295730024576187,0.1329476684331894,0.6348997354507446,-1.0143384933471680,0.2174026370048523,0.3667761087417603,-0.1094856411218643,0.0112873148173094,-0.1045318767428398,-0.4108299016952515,-0.1612926572561264,0.4082601070404053,-0.1363339126110077));
res += mul(Get(s1,-dx,0), float4x4(-0.0383063182234764,-0.0337432697415352,-0.1419019699096680,-0.0396835654973984,0.0031011109240353,-0.1680952757596970,-0.2713841795921326,0.0697962492704391,0.1255874782800674,0.2831304371356964,0.1198953017592430,0.0337933003902435,-0.1727593988180161,-0.0173763781785965,0.0301439594477415,0.2034600228071213));
res += mul(Get(s2,-dx,0), float4x4(0.1833668798208237,0.2185868471860886,0.0517268329858780,0.0156357064843178,0.0045697167515755,-0.1742694824934006,0.0054621035233140,-0.2313379198312759,-0.0216685552150011,-0.0093392143025994,0.0892898738384247,-0.0710320919752121,0.4086774289608002,-0.2176942676305771,-0.0820650383830070,-0.3517747521400452));
res += mul(Get(s0,-dx,dy), float4x4(-0.1765690296888351,0.1852991878986359,-0.1506976336240768,0.0487647317349911,0.0292393993586302,0.1151102259755135,-0.4785140454769135,0.0418677516281605,-0.0895845592021942,0.0278094224631786,-0.0514284297823906,-0.0157334338873625,-0.0089705092832446,0.0640783086419106,0.2594971060752869,-0.0563518889248371));
res += mul(Get(s1,-dx,dy), float4x4(0.0235073100775480,-0.0657129362225533,0.0784548968076706,-0.0090146884322166,0.1336956173181534,0.0770005807280540,-0.1231081783771515,-0.0617865137755871,0.1662777364253998,0.1248017176985741,0.1780072152614594,-0.0183120556175709,-0.2790832817554474,-0.1541433483362198,-0.1553227454423904,-0.0963654071092606));
res += mul(Get(s2,-dx,dy), float4x4(-0.2051890790462494,0.0651111677289009,0.0067545636557043,0.2570025324821472,0.0318411402404308,-0.0213388577103615,-0.2738939225673676,0.1033893227577209,0.0903071612119675,-0.0001973856560653,0.2153446674346924,0.1317365616559982,0.1874879598617554,0.0623776316642761,0.0358950048685074,-0.0572536513209343));
res += mul(Get(s0,0,-dy), float4x4(-0.6892572641372681,0.1211555525660515,-0.0214764513075352,0.0138629684224725,-0.1989815831184387,0.1766057908535004,-0.0100418375805020,-0.0352461189031601,-0.1775565147399902,0.2981152832508087,0.0649041384458542,-0.1737219989299774,0.0834536179900169,-0.1592961549758911,0.0497965253889561,-0.1656725108623505));
res += mul(Get(s1,0,-dy), float4x4(0.0170228928327560,-0.0463282093405724,0.0040056370198727,0.0262681227177382,0.1526793241500854,0.0378548949956894,0.1198098510503769,0.0797747448086739,-0.0238224714994431,0.2908752560615540,0.0654214620590210,0.0128776486963034,0.0222903508692980,-0.0683226138353348,0.1155112013220787,0.1530848294496536));
res += mul(Get(s2,0,-dy), float4x4(-0.6436935663223267,0.0551596060395241,0.0260728690773249,-0.2920142412185669,-0.2781540155410767,0.0483178459107876,-0.0484678596258163,0.0290534235537052,0.0410922020673752,0.0824498683214188,-0.0120904464274645,-0.1140078157186508,-0.3637730181217194,0.0059586944989860,-0.0903413817286491,0.1272685080766678));
res += mul(Get(s0,0,0), float4x4(0.3638460636138916,0.2605290710926056,0.0375764481723309,0.5462566018104553,0.3352470099925995,0.2009894251823425,-0.7321847081184387,0.3610100746154785,-0.3172224462032318,0.3052908182144165,-0.0865548253059387,0.1488405615091324,-0.2003107815980911,-0.1221957057714462,-0.0736813247203827,-0.1498750746250153));
res += mul(Get(s1,0,0), float4x4(0.3233027756214142,0.5240586996078491,-0.1855433285236359,0.2288005650043488,-0.7035076618194580,-0.2221586704254150,0.8615246415138245,-0.5716155171394348,0.1533037126064301,-0.4951016604900360,-0.1502887904644012,-0.1138651072978973,-0.5182501673698425,-0.0629604235291481,0.4534723758697510,-0.1820976436138153));
res += mul(Get(s2,0,0), float4x4(0.7111347317695618,-0.0565245114266872,-0.4224604368209839,0.5131393074989319,0.0977577492594719,-0.4162338078022003,0.2401461303234100,-0.3785945773124695,0.0125899193808436,-0.3923566639423370,-0.2680791318416595,-0.2180975973606110,0.3398014903068542,-0.0791988894343376,-0.2078091800212860,0.4083160758018494));
res += mul(Get(s0,0,dy), float4x4(-0.3390792608261108,-0.2252162843942642,0.1619943380355835,0.1439509093761444,0.1813733875751495,0.0454216264188290,-0.2749589085578918,0.0160761624574661,0.2125832438468933,-0.2668788135051727,0.0459523610770702,0.1281067878007889,-0.0956430584192276,-0.0987151712179184,0.0735994428396225,-0.1729972064495087));
res += mul(Get(s1,0,dy), float4x4(-0.0178368166089058,0.0385478772222996,0.0049569946713746,-0.0223379489034414,-0.2028052955865860,-0.0325562320649624,-0.1373291611671448,-0.2052768915891647,-0.0357557684183121,0.1447834521532059,-0.2426547706127167,0.1588696837425232,-0.4632959365844727,-0.1747689396142960,0.3619490861892700,-0.3635478019714355));
res += mul(Get(s2,0,dy), float4x4(0.5543322563171387,0.0512080192565918,0.1094677597284317,0.0249306932091713,-0.0726274698972702,-0.1441130787134171,0.3676156699657440,-0.1945257037878036,0.3604896068572998,0.0880797952413559,-0.1618302017450333,0.0417270027101040,-0.2999924719333649,-0.2414053678512573,0.0734381228685379,0.0385741926729679));
res += mul(Get(s0,dx,-dy), float4x4(0.1207476407289505,0.0607931539416313,0.0605350881814957,-0.0828434601426125,-0.0258147045969963,0.1277111917734146,0.0777188986539841,-0.0678794831037521,0.0231201648712158,0.1645869910717010,-0.0065646320581436,-0.0717871040105820,0.1870904862880707,0.0650715380907059,0.1035550534725189,-0.0427900552749634));
res += mul(Get(s1,dx,-dy), float4x4(-0.0914367064833641,-0.0057295775040984,0.0550467707216740,-0.0071605839766562,0.0194537825882435,0.0602390393614769,-0.1742670834064484,-0.0286970622837543,-0.1730408221483231,0.4202667474746704,-0.0326447859406471,0.1932609826326370,0.2258523702621460,-0.3057553470134735,-0.0228791702538729,0.0558889918029308));
res += mul(Get(s2,dx,-dy), float4x4(0.0951532796025276,0.0745366886258125,-0.0244143325835466,-0.1196055263280869,0.4078905582427979,-0.1131488904356956,0.0597369931638241,-0.0556919910013676,-0.0975436493754387,-0.0269637554883957,0.0712332800030708,0.1672646552324295,-0.0858409032225609,0.0753410533070564,-0.0282167810946703,-0.0521729737520218));
res += mul(Get(s0,dx,0), float4x4(0.0147975413128734,-0.0978947728872299,0.0992493554949760,0.0715078413486481,-0.0339217036962509,0.1512906253337860,-0.0093649988994002,0.0979229137301445,-0.1044408380985260,0.3838851451873779,-0.0633608996868134,0.4150816500186920,-0.0403737276792526,-0.1289340555667877,0.0833884254097939,-0.1831422597169876));
res += mul(Get(s1,dx,0), float4x4(0.0725843235850334,0.0630814805626869,-0.0282911639660597,0.0422894321382046,0.2202490866184235,-0.2024851441383362,-0.1961549669504166,-0.1709679067134857,-0.2292491793632507,0.0673077180981636,0.0755215808749199,0.2686093151569366,-0.0172213558107615,-0.0363936908543110,0.1538565456867218,-0.2588912546634674));
res += mul(Get(s2,dx,0), float4x4(-0.4330757260322571,0.0968184545636177,-0.0695684999227524,0.2242138534784317,-0.2926149964332581,0.0594858564436436,0.1433003991842270,0.0637863352894783,-0.2070317566394806,0.3360283076763153,-0.0047579705715179,0.1913889199495316,0.2757310569286346,-0.2462399601936340,0.2340149730443954,-0.0885223820805550));
res += mul(Get(s0,dx,dy), float4x4(-0.1309087723493576,0.0117414509877563,0.4378581345081329,0.1131683364510536,0.1330315023660660,0.0129970675334334,0.0390284322202206,-0.0651938468217850,0.1866659671068192,0.0650875121355057,0.0660317391157150,0.0396537706255913,-0.1656962484121323,-0.1742972433567047,0.1998396962881088,-0.1078312918543816));
res += mul(Get(s1,dx,dy), float4x4(0.0565937422215939,0.0108606964349747,-0.0467143841087818,-0.0485951378941536,0.0332744717597961,-0.1026780977845192,-0.0711464583873749,-0.0489020161330700,-0.0248939469456673,0.0358021147549152,-0.0261349491775036,-0.0287301391363144,-0.0608919747173786,0.0970418453216553,-0.1639307588338852,0.2859478592872620));
res += mul(Get(s2,dx,dy), float4x4(0.1680941432714462,0.2713017165660858,-0.1094776764512062,0.1040041893720627,-0.1616715192794800,-0.1906411498785019,-0.3132992982864380,0.1349383890628815,0.0789804905653000,-0.0225464180111885,0.0069163404405117,-0.1727190166711807,-0.2117665857076645,-0.0900255441665649,0.1758084148168564,-0.1227387934923172));
res = max(float4(0, 0, 0, 0), res) + float4(0.0623636171221733,0.5403282642364502,-0.0623794645071030,-0.1948173940181732) * min(float4(0, 0, 0, 0), res);
return res;
}
