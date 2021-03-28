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
float4 res = float4(0.001184384920634,0.000882823893335,0.000514303101227,0.000569408352021);
res += mul(Get(s0,-dx,-dy), float4x4(0.019807448610663,0.007285510655493,-0.007127490360290,-0.004476462025195,-0.004172480199486,-0.001182971638627,-0.001341256196611,-0.001448493450880,-0.005148537922651,-0.003544813254848,-0.003931130748242,-0.002303748158738,0.016904842108488,0.002561437198892,-0.002794901141897,-0.005931631661952));
res += mul(Get(s0,-dx,0), float4x4(0.024112617596984,-0.031843762844801,-0.049692548811436,-0.010933723300695,-0.006888358853757,-0.007628453895450,-0.005569342989475,-0.004485917743295,-0.007200833875686,0.016093041747808,0.013790688477457,-0.004104474093765,-0.021389165893197,-0.011450143530965,0.019939605146646,0.034415192902088));
res += mul(Get(s0,-dx,dy), float4x4(-0.002224358730018,-0.002706695580855,0.012453976087272,0.037550192326307,-0.001801356673241,-0.003069047816098,-0.004233070649207,-0.005259584169835,0.002508983248845,0.006009237840772,0.002988958964124,-0.009718050248921,-0.000684051308781,0.002684948733076,-0.001630259444937,-0.012952964752913));
res += mul(Get(s0,0,-dy), float4x4(-0.020404828712344,-0.004081166349351,-0.001883013988845,-0.003437885781750,0.004425028339028,0.001741996849887,0.002939535072073,0.004766224417835,0.009561530314386,0.002422501333058,-0.005351437255740,-0.003460887819529,-0.024966411292553,-0.003958588000387,0.005762758199126,0.004330306779593));
res += mul(Get(s0,0,0), float4x4(0.023196710273623,0.038037784397602,0.009724266827106,-0.028944931924343,0.037713717669249,0.038131371140480,0.028398063033819,0.014556203037500,-0.020796461030841,-0.049492646008730,-0.007389307487756,0.016169469803572,0.041631944477558,0.030966211110353,-0.009378868155181,-0.034120816737413));
res += mul(Get(s0,0,dy), float4x4(0.003784920088947,-0.004022832494229,-0.014982816763222,-0.006317480932921,-0.000920356425922,0.001911587314680,0.011298176832497,0.024073762819171,-0.009196571074426,-0.008345987647772,0.036878965795040,0.049984045326710,-0.005946929566562,-0.005410803481936,-0.004470573738217,0.015549565665424));
res += mul(Get(s0,dx,-dy), float4x4(0.001761142164469,0.008074594661593,0.008336472325027,0.004238044377416,-0.012406392022967,-0.004929895047098,-0.000219167020987,0.001131358207203,0.002944856649265,0.002862752648070,-0.002901879139245,-0.002977079246193,-0.002535094041377,0.001478940015659,0.005468811374158,0.005868738982826));
res += mul(Get(s0,dx,0), float4x4(-0.001650266116485,-0.001706975628622,-0.002927294932306,-0.002611072268337,-0.016833640635014,-0.018886703997850,-0.019530177116394,-0.019479250535369,0.001587761566043,-0.000856827711686,0.000284868612653,0.000161395291798,-0.003141381777823,-0.004315156955272,-0.004614145029336,-0.003674878505990));
res += mul(Get(s0,dx,dy), float4x4(-0.003399504348636,-0.005078397691250,-0.004393497947603,-0.002383729442954,-0.002003061119467,-0.005212884396315,-0.007792294491082,-0.010026625357568,-0.000864825095050,-0.006251430138946,-0.006793338805437,0.003805143060163,0.002221722854301,0.000059331869124,-0.004783158656210,-0.005741330794990));
res += mul(Get(s1,-dx,-dy), float4x4(0.006960447411984,0.005451985169202,0.002836016006768,-0.000417120609200,-0.012121245265007,-0.000777704000939,0.007650962099433,0.006897715851665,0.000677697418723,0.002889761701226,0.002885571448132,0.000973831978627,-0.021855441853404,-0.004665141925216,0.004565641283989,0.002260750858113));
res += mul(Get(s1,-dx,0), float4x4(-0.001970205456018,-0.001374869141728,0.004079323261976,0.009702558629215,0.010228136554360,-0.000723313598428,-0.011068190447986,-0.016110755503178,-0.006803134921938,0.004062329418957,0.007503848057240,0.003276223782450,-0.029210319742560,0.005603107158095,0.038806505501270,0.000666473293677));
res += mul(Get(s1,-dx,dy), float4x4(0.002847358118743,0.003049410879612,0.000928450899664,-0.000107823732833,-0.002766354708001,-0.002606524387375,0.005364428739995,0.012836696580052,-0.006899039261043,-0.004431135021150,0.002464874181896,-0.003970079123974,0.004127237945795,0.007247021421790,0.006547341588885,-0.008119652047753));
res += mul(Get(s1,0,-dy), float4x4(-0.007435338571668,-0.003605507779866,-0.005958606489003,-0.005945862270892,-0.019813435152173,-0.001810982823372,0.012840134091675,0.010872649028897,-0.017371632158756,-0.000518643762916,0.006567553151399,0.008289225399494,-0.002349988557398,-0.006817205809057,-0.006137750111520,-0.005174969322979));
res += mul(Get(s1,0,0), float4x4(-0.050627101212740,-0.051681082695723,-0.038506671786308,-0.020478518679738,0.013236265629530,0.001768721500412,-0.006808768026531,-0.015723388642073,0.060849037021399,0.075671397149563,-0.020319608971477,-0.052271343767643,-0.028177538886666,-0.015409128740430,0.027359750121832,0.022376878187060));
res += mul(Get(s1,0,dy), float4x4(0.001637509209104,-0.001617075176910,-0.012808152474463,-0.030319219455123,-0.006620594765991,-0.005715857259929,0.006673773285002,0.019518274813890,0.003529430832714,0.002000481123105,-0.035376515239477,-0.035522025078535,0.005590426269919,0.003818624420092,0.003160413587466,-0.002524686977267));
res += mul(Get(s1,dx,-dy), float4x4(0.004456707742065,0.002692757407203,0.001128274830990,-0.000371857808204,0.000888119102456,-0.001162807457149,-0.001621317584068,-0.002123725833371,-0.006239134818316,-0.008438855409622,0.001738402759656,0.003857551608235,0.001104296185076,-0.001337990746833,-0.002118927659467,-0.002324207220227));
res += mul(Get(s1,dx,0), float4x4(0.006591046694666,0.005642713978887,0.006879137363285,0.009202707558870,-0.000935102812946,-0.002751286607236,-0.000353484821972,0.000903618405573,0.011720618233085,0.004950555507094,-0.001735565718263,0.001514407340437,-0.002651273272932,-0.000974441878498,-0.002703294623643,-0.000178011774551));
res += mul(Get(s1,dx,dy), float4x4(0.004326547961682,0.007996730506420,0.009906128048897,0.008837850764394,0.001042394549586,0.002073048148304,0.002220687922090,0.001943970913999,-0.000517116452102,-0.003378881607205,-0.003521183272824,0.003685563569888,0.001191575662233,0.001508533721790,-0.000489137077238,-0.004092154093087));
res += mul(Get(s2,-dx,-dy), float4x4(0.021168077364564,0.007641484495252,0.000910383823793,0.000173292151885,-0.010467633605003,0.009032694622874,0.009564462117851,0.000309570576064,0.001117812469602,-0.003606319194660,-0.006487202830613,-0.003818243741989,-0.015576104633510,-0.000524122908246,0.005776481702924,0.004405456129462));
res += mul(Get(s2,-dx,0), float4x4(0.031461466103792,0.043420691043139,0.046214390546083,0.038848083466291,0.002199935959652,0.018637785688043,0.006842740345746,-0.017565017566085,-0.009684911929071,0.002705919090658,0.011041091755033,0.008428162895143,-0.030252750962973,-0.045972894877195,-0.048812858760357,-0.036384351551533));
res += mul(Get(s2,-dx,dy), float4x4(0.000449135579402,0.002177205868065,0.007303107995540,0.016836553812027,-0.003022978082299,-0.004949823487550,-0.005871172063053,-0.005185064859688,0.005564108490944,0.011786870658398,0.003828975837678,-0.011559259146452,-0.000200854061404,0.001034097629599,-0.001540763070807,-0.011961759068072));
res += mul(Get(s2,0,-dy), float4x4(-0.014305105432868,-0.008551613427699,-0.002119243843481,0.001143182977103,0.021077912300825,0.026969090104103,-0.007673041429371,-0.006621106993407,0.003806928405538,-0.007238807622343,-0.008662492968142,-0.003752807620913,-0.021788422018290,-0.009891116991639,-0.000652751885355,0.003390423953533));
res += mul(Get(s2,0,0), float4x4(-0.013706508092582,-0.013746698386967,-0.016464289277792,-0.018593182787299,0.027399234473705,0.031012048944831,-0.030507201328874,-0.043883603066206,-0.023768968880177,0.019561145454645,0.027858672663569,0.016964305192232,-0.022795416414738,-0.033443827182055,-0.038514420390129,-0.035846676677465));
res += mul(Get(s2,0,dy), float4x4(-0.000623552943580,-0.004477928392589,-0.006861540023237,-0.009688277728856,-0.003242229111493,-0.003984894603491,-0.006619224790484,-0.002068939385936,0.025723610073328,0.030003739520907,-0.010783379897475,-0.048532053828239,0.002944425912574,0.002417841693386,-0.000777547655161,-0.008497491478920));
res += mul(Get(s2,dx,-dy), float4x4(0.003416037186980,0.001826469902880,-0.000220292262384,-0.000811397796497,-0.007006525062025,0.002814620966092,0.006010868586600,0.000677549687680,0.001079136156477,-0.002237338339910,-0.001414843602106,0.000085113933892,0.000727377715521,0.003315526992083,0.003540772944689,0.003801140235737));
res += mul(Get(s2,dx,0), float4x4(0.005417786072940,0.005379745736718,0.005539566278458,0.004693272523582,-0.000434285553638,-0.000440126372268,0.002819901565090,-0.002589788055047,0.001212700735778,-0.000051196715503,-0.002294050762430,0.000168539758306,-0.001593804452568,-0.002748714527115,-0.001658262801357,-0.002546153496951));
res += mul(Get(s2,dx,dy), float4x4(-0.001293275272474,-0.000649905472528,0.002046673325822,0.004615605343133,-0.002450861968100,-0.002664465224370,-0.000095859380963,0.003707613563165,-0.000679435208440,0.001960691064596,0.001066745840944,-0.000437162962044,0.002418347867206,0.001873540459201,0.001268949825317,0.001283328514546));
res += mul(Get(s3,-dx,-dy), float4x4(-0.027522984892130,-0.003694216487929,0.009907240048051,0.003891866886988,-0.015587581321597,-0.017673050984740,-0.013803052715957,-0.005585285834968,0.004124556668103,0.008058751001954,0.008231881074607,0.005369386635721,0.019269194453955,0.006211786065251,-0.002472331281751,0.000406594976084));
res += mul(Get(s3,-dx,0), float4x4(0.010235738940537,0.016371719539165,0.003444042056799,-0.024760531261563,-0.016856832429767,-0.014940268360078,-0.014516869559884,-0.014276122674346,-0.008069735020399,-0.013304281048477,-0.011182025074959,-0.003778527490795,0.021177588030696,-0.017739590257406,-0.038722742348909,-0.003772881580517));
res += mul(Get(s3,-dx,dy), float4x4(-0.001484129694290,0.000449744111393,0.001757912337780,0.002915066434070,-0.001791011658497,-0.004125151783228,-0.008786406368017,-0.013578368350863,0.004781904164702,0.006034073419869,0.004072630777955,0.000092641705123,-0.000351665425114,-0.003800820093602,0.000760009512305,0.019953560084105));
res += mul(Get(s3,0,-dy), float4x4(0.031101774424314,-0.023923909291625,-0.029648147523403,-0.012053410522640,0.010497143492103,-0.005928839091212,-0.009956372901797,-0.004617389291525,-0.000723114528228,0.007059621158987,0.008712370879948,0.004654302727431,0.006550167687237,0.000758876325563,-0.001764754648320,-0.003628443228081));
res += mul(Get(s3,0,0), float4x4(-0.046691529452801,-0.023575922474265,0.048160232603550,0.081455655395985,0.026783628389239,0.038426820188761,0.038949973881245,0.029550706967711,-0.013289058580995,-0.021183565258980,-0.018826715648174,-0.010087687522173,-0.056707154959440,-0.012631503865123,0.028850656002760,0.020878080278635));
res += mul(Get(s3,0,dy), float4x4(0.007312878966331,0.007419919129461,-0.002955411560833,-0.024362238124013,-0.001470790477470,0.000443853292381,0.003698476590216,0.012649834156036,0.005213189404458,0.006554214283824,0.003769920440391,-0.001659558038227,0.000257921376033,0.012231291271746,0.017609594389796,-0.024044983088970));
res += mul(Get(s3,dx,-dy), float4x4(-0.003536215052009,-0.001075973501429,0.003636574372649,0.007764576002955,-0.005705079529434,-0.005253876559436,-0.003268575062975,-0.000352160277544,0.001586179831065,-0.000296269892715,-0.001287435647100,-0.001312725711614,0.004081475548446,-0.002521995222196,-0.004311887547374,-0.001293802401051));
res += mul(Get(s3,dx,0), float4x4(-0.001899139140733,-0.008899806067348,-0.010140500962734,-0.005166125483811,-0.003045743796974,-0.003895660862327,-0.004862543195486,-0.004912216216326,0.004925561137497,0.005827442742884,0.005825226660818,0.004588734358549,0.001585285179317,0.001352835213766,-0.002779087051749,0.001145270885900));
res += mul(Get(s3,dx,dy), float4x4(0.007997008971870,0.008094352670014,0.001340619521216,-0.000707341765519,-0.000785278039984,-0.000998998410068,-0.001253990340047,-0.001949679688551,-0.000684746948536,-0.000026263280233,0.001922667841427,0.003803906962276,0.001999749569222,0.003559058997780,0.002966427942738,-0.000980427372269));
res += mul(Get(s4,-dx,-dy), float4x4(-0.023088693618774,-0.005496294237673,0.003297783201560,0.004598072730005,-0.026481134817004,-0.015029000118375,-0.003840714693069,-0.001208568224683,-0.004655594937503,-0.017283564433455,0.000554977625143,0.010058467276394,0.011450879275799,0.005208668299019,0.000244485912845,-0.002663919702172));
res += mul(Get(s4,-dx,0), float4x4(0.038364809006453,0.044290676712990,0.005941430572420,-0.026650054380298,0.011193733662367,0.015394549816847,0.009688125923276,-0.016881089657545,-0.006651571020484,-0.016106540337205,0.005655367393047,0.023872036486864,0.001442678156309,0.004235370084643,0.007902851328254,0.014134856872261));
res += mul(Get(s4,-dx,dy), float4x4(-0.006494087632746,-0.014854469336569,-0.015657398849726,0.006796693429351,0.003141921479255,0.005632814951241,0.009631179273129,0.010818297974765,0.004090517293662,0.003277007956058,0.000841902336106,0.001906153862365,-0.002194724977016,-0.000492408056743,0.000043848085625,-0.002378558274359));
res += mul(Get(s4,0,-dy), float4x4(0.019695499911904,0.005903712008148,-0.002917743753642,-0.002977843629196,0.009234996512532,0.011107102967799,0.011913550086319,0.005642843432724,-0.069345057010651,-0.006505871657282,0.034530274569988,0.011821629479527,0.055869955569506,0.036545492708683,0.011444657109678,-0.003682841081172));
res += mul(Get(s4,0,0), float4x4(-0.035938501358032,-0.007217074744403,0.025145336985588,0.031961429864168,-0.003074336564168,-0.046389475464821,-0.055004544556141,-0.014313139021397,-0.009631010703743,0.026742409914732,0.047025769948959,-0.021773919463158,0.007640200667083,0.029799161478877,0.058107417076826,0.069722943007946));
res += mul(Get(s4,0,dy), float4x4(0.005384823773056,0.004019949119538,-0.007012620568275,-0.028178296983242,0.002203980460763,0.006002767942846,0.006423311773688,0.008218050934374,-0.004922621883452,-0.004150277469307,-0.006210579536855,-0.008807742968202,0.007745120674372,0.003805472515523,-0.000536146864761,0.000452399923233));
res += mul(Get(s4,dx,-dy), float4x4(-0.005050135310739,-0.006809836253524,-0.004770543426275,-0.001842044643126,0.001384479575790,0.001155606471002,0.002711128443480,-0.001852091867477,-0.002986697480083,-0.001047186437063,0.007114128675312,0.004959240555763,0.016882143914700,0.008939549326897,0.003196725854650,0.001071161706932));
res += mul(Get(s4,dx,0), float4x4(0.005938659422100,0.000094907169114,-0.004346723202616,-0.005952972918749,0.006102419923991,0.011950610205531,0.016940768808126,0.010437480174005,0.004827376920730,-0.005697761196643,-0.004755181260407,0.004259838722646,0.003808314446360,0.011660953052342,0.018243312835693,0.019947182387114));
res += mul(Get(s4,dx,dy), float4x4(0.004935300443321,0.003975603729486,0.003741971217096,0.005837234668434,-0.008995003066957,-0.007544583175331,-0.001609957544133,0.002661154838279,-0.000940563448239,-0.001734983758070,-0.002130544977263,0.001896412926726,0.001216437784024,-0.000318450824125,-0.001832866575569,-0.000488199875690));
res += mul(Get(s5,-dx,-dy), float4x4(-0.001505505759269,0.002929897978902,0.004039760213345,0.002493355423212,-0.003905655117705,-0.003965909127146,-0.003023999743164,-0.000910189643037,0.000823468668386,0.001425600145012,0.000881571962964,-0.000272060220595,0.036059092730284,-0.001777996076271,-0.020460227504373,-0.007164634764194));
res += mul(Get(s5,-dx,0), float4x4(0.015139060094953,-0.000672855065204,-0.010763627476990,-0.010076751932502,-0.001837752992287,0.003603531979024,0.004430465400219,-0.001865796861239,-0.014197120442986,-0.016656242311001,-0.013728667050600,-0.005826757289469,-0.000010337709682,-0.019972804933786,-0.023178583011031,0.019449897110462));
res += mul(Get(s5,-dx,dy), float4x4(-0.003285156795755,-0.015951808542013,-0.009762858971953,0.013391659595072,-0.000160902825883,-0.003504728665575,-0.002959961537272,-0.000937185599469,0.002660165773705,0.000999216455966,-0.005246386863291,-0.009689327329397,0.003581835655496,0.006025257054716,0.001678593107499,-0.001665768097155));
res += mul(Get(s5,0,-dy), float4x4(-0.004390082322061,0.003989624325186,0.008873502723873,0.003919425420463,-0.002523165894672,0.000715822156053,0.002670870395377,0.002329934388399,0.000672643538564,0.003796790493652,0.003704070812091,0.001019571791403,0.021927377209067,-0.016724567860365,-0.015469810925424,-0.001084311166778));
res += mul(Get(s5,0,0), float4x4(0.032633263617754,-0.007260949350893,-0.015562642365694,-0.011690377257764,0.003870680928230,-0.000761869770940,-0.003621159819886,-0.002590581309050,-0.002998813986778,-0.005302329082042,-0.006077904719859,-0.003149186028168,-0.007089443039149,-0.025415692478418,-0.010047302581370,0.030014039948583));
res += mul(Get(s5,0,dy), float4x4(-0.005937112029642,-0.036325309425592,-0.017143271863461,0.040554467588663,-0.001590352039784,0.001452756812796,0.002454072469845,0.000975699513219,-0.000054495478253,-0.000863786553964,-0.001319118659012,-0.000923793588299,0.004491907544434,0.005413993261755,0.007491846103221,0.005608417093754));
res += mul(Get(s5,dx,-dy), float4x4(-0.000784651609138,0.001192567870021,0.000171337189386,-0.000378755881684,-0.000315267243423,0.000947173801251,-0.000102163867268,-0.001199177466333,0.002336147241294,-0.000877186132129,-0.002532405313104,-0.003155814949423,0.006394295487553,0.000168519589351,-0.002749799517915,-0.000842201057822));
res += mul(Get(s5,dx,0), float4x4(-0.001996450824663,-0.000541352084838,-0.001261616591364,-0.001564689213410,-0.000710855063517,-0.001331126317382,-0.000172662912519,-0.001371967722662,0.008864324539900,0.009549172595143,0.007828938774765,0.005671147257090,-0.001151122152805,0.000663809943944,0.001234874594957,0.005412486847490));
res += mul(Get(s5,dx,dy), float4x4(-0.000356464734068,0.000347225810401,0.001901648938656,-0.000879041559529,-0.001928386162035,-0.003484251676127,-0.003268836066127,-0.000494493229780,-0.000821907364298,0.000956966949161,0.003445259993896,0.007700235582888,0.000848525145557,0.000500972964801,-0.001676399842836,-0.002976579591632));
return res;
}