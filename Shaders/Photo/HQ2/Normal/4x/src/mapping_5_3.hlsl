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
res += mul(Get(s0,-dx,-dy), float4x4(0.083482131361961,-0.075935699045658,-0.134707629680634,0.003385493298993,0.009279118850827,-0.014304238371551,0.003955703228712,-0.008601319044828,0.023539146408439,-0.086081169545650,-0.015986882150173,0.018775060772896,0.013212665915489,-0.077740855515003,0.013350625522435,-0.013965920545161));
res += mul(Get(s0,-dx,0), float4x4(0.157394364476204,-0.018840895965695,-0.139251574873924,0.061070989817381,-0.009606627747416,-0.021574903279543,-0.039616391062737,0.001768857706338,0.072893686592579,-0.058898743242025,-0.029576269909739,-0.006324836984277,0.015597947873175,0.004849365446717,-0.030483592301607,0.029965413734317));
res += mul(Get(s0,-dx,dy), float4x4(0.100702412426472,-0.055571440607309,-0.054343063384295,-0.035879969596863,-0.005569606088102,-0.018013598397374,-0.050437115132809,0.010730351321399,-0.063991121947765,-0.055522747337818,0.006321099121124,-0.043101940304041,-0.120374940335751,0.057980809360743,-0.051762066781521,0.008846664801240));
res += mul(Get(s0,0,-dy), float4x4(0.007202183827758,-0.081096969544888,-0.067091010510921,0.004805634729564,0.011217586696148,-0.022510062903166,0.044253256171942,0.004837515298277,-0.063213504850864,-0.023980023339391,-0.021967504173517,0.006392198614776,-0.025388279929757,-0.051068432629108,0.044015016406775,-0.024367062374949));
res += mul(Get(s0,0,0), float4x4(0.012715079821646,-0.026867397129536,-0.077752567827702,0.054380312561989,0.003390596015379,-0.012623596936464,0.064914040267467,-0.006834993604571,-0.037086922675371,0.031046202406287,0.014711550436914,0.005701373331249,-0.000945225125179,0.003092579543591,0.006384083535522,0.013250323012471));
res += mul(Get(s0,0,dy), float4x4(-0.090647749602795,-0.035867150872946,-0.041634801775217,-0.057257495820522,-0.003307393752038,-0.007886029779911,0.048050269484520,0.026208162307739,-0.106620751321316,0.013191170059144,-0.004651803057641,-0.030927279964089,-0.069697551429272,0.012781179510057,-0.099345296621323,-0.018803909420967));
res += mul(Get(s0,dx,-dy), float4x4(-0.112247064709663,-0.134626328945160,-0.060771565884352,0.003445507492870,0.034418787807226,0.000703822937794,0.006447668187320,0.020254964008927,-0.093642711639404,-0.037338811904192,0.074897214770317,-0.016798516735435,-0.034216549247503,-0.046616926789284,0.088399752974510,-0.008093846030533));
res += mul(Get(s0,dx,0), float4x4(-0.124246671795845,-0.107468120753765,-0.038022909313440,-0.018301770091057,0.019318172708154,0.009380230680108,0.036737397313118,-0.009090537205338,-0.066651083528996,0.011064912192523,0.152405023574829,0.008937015198171,-0.063265457749367,-0.018421512097120,0.120806984603405,-0.004794884007424));
res += mul(Get(s0,dx,dy), float4x4(-0.085965946316719,-0.054586958140135,-0.051106709986925,-0.029516108334064,0.015605329535902,0.002512268722057,0.049353610724211,0.036601305007935,-0.067544497549534,-0.028111398220062,0.098112940788269,0.011883460916579,-0.081978812813759,0.017696434631944,0.023898752406240,-0.037954099476337));
res += mul(Get(s1,-dx,-dy), float4x4(0.064031474292278,0.092037148773670,-0.020439479500055,-0.012982437387109,0.046940993517637,-0.010647089220583,0.070362292230129,0.031703207641840,-0.041983284056187,-0.032706961035728,-0.013305630534887,0.011102492921054,-0.077607795596123,-0.210845246911049,-0.032668773084879,-0.127280667424202));
res += mul(Get(s1,-dx,0), float4x4(0.023945238441229,0.072810582816601,-0.006903584580868,-0.000512358441483,0.018745763227344,0.016794368624687,0.038715589791536,0.047767706215382,-0.033050384372473,-0.031700707972050,0.014261729083955,-0.019921544939280,0.013297680765390,-0.097482040524483,-0.037969626486301,-0.103692524135113));
res += mul(Get(s1,-dx,dy), float4x4(-0.026590934023261,0.041105549782515,0.006139522418380,0.031794965267181,-0.039240382611752,-0.047005064785480,0.019380498677492,-0.007989130914211,0.002174896653742,-0.019922580569983,0.064476326107979,-0.021184083074331,0.006568303797394,-0.021212443709373,-0.004686232656240,0.069407433271408));
res += mul(Get(s1,0,-dy), float4x4(0.045602850615978,-0.036319755017757,-0.121366560459137,-0.008094217628241,0.029941795393825,-0.065840117633343,-0.016367679461837,0.079175658524036,-0.011908395215869,-0.015843417495489,0.131328910589218,0.014554968103766,-0.057517122477293,0.129322588443756,-0.056629989296198,-0.081993289291859));
res += mul(Get(s1,0,0), float4x4(0.100786410272121,-0.014902871102095,-0.065121307969093,-0.039284117519855,-0.040512561798096,-0.006206186488271,-0.039127804338932,-0.004942577332258,-0.020109802484512,-0.010559706948698,0.194290712475777,-0.015391979366541,0.128621518611908,0.036615733057261,0.062585331499577,0.018745016306639));
res += mul(Get(s1,0,dy), float4x4(0.007631695363671,0.016168596222997,-0.033575858920813,-0.026951067149639,-0.040265105664730,-0.042467765510082,0.038274575024843,-0.012055567465723,0.029841657727957,-0.030786411836743,0.123407676815987,0.008541358634830,-0.050540305674076,0.004069156013429,0.032617352902889,0.130879938602448));
res += mul(Get(s1,dx,-dy), float4x4(-0.030675774440169,-0.031195132061839,-0.051603414118290,0.038304481655359,0.048692364245653,-0.055820897221565,-0.013378025032580,0.013315986841917,-0.027771783992648,0.008686493150890,0.055320635437965,0.003645862685516,-0.031519334763288,0.103199854493141,-0.034018512815237,-0.024329863488674));
res += mul(Get(s1,dx,0), float4x4(0.019354015588760,-0.024976506829262,-0.092408053576946,-0.002294786274433,0.013589274138212,0.000421816599555,-0.034771800041199,-0.056749332696199,0.042333889752626,-0.007402181625366,0.048069465905428,0.006931529380381,0.027710078284144,-0.006665108259767,0.020469227805734,-0.061312437057495));
res += mul(Get(s1,dx,dy), float4x4(-0.026220770552754,-0.003226024331525,-0.025721199810505,-0.026501126587391,-0.000806464173365,-0.042860928922892,0.026096522808075,-0.038613274693489,0.080083765089512,0.003153748577461,0.061908759176731,-0.001725351903588,-0.069312132894993,0.055417682975531,0.139591902494431,0.078126549720764));
res += mul(Get(s2,-dx,-dy), float4x4(-0.080684632062912,0.068743057549000,0.027621168643236,-0.007206940557808,0.181237503886223,-0.050891119986773,-0.081159994006157,-0.016661839559674,0.013692617416382,-0.022820387035608,0.010608579032123,-0.027462603524327,0.005961510818452,0.003748455550522,0.000393307476770,-0.007024175021797));
res += mul(Get(s2,-dx,0), float4x4(-0.008152708411217,0.120349496603012,-0.021297654137015,0.102588489651680,0.044028211385012,0.065151870250702,-0.023659581318498,-0.066296562552452,0.030923133715987,-0.007901618257165,0.023215508088470,0.000402312318329,-0.002169232815504,0.008895576000214,0.007410190068185,-0.011260622180998));
res += mul(Get(s2,-dx,dy), float4x4(-0.011937392875552,0.044884320348501,0.003126440569758,0.062350995838642,-0.015856655314565,0.097794055938721,-0.039277277886868,-0.026996303349733,0.012685876339674,0.025986887514591,-0.004502141848207,0.011102774180472,-0.005464163143188,-0.004121169913560,0.004240200389177,0.007711119018495));
res += mul(Get(s2,0,-dy), float4x4(-0.034895181655884,0.020314686000347,-0.032549075782299,0.043030954897404,0.011842580512166,-0.051596093922853,-0.089559547603130,-0.018112462013960,0.031720727682114,-0.002395329996943,0.008265263400972,-0.046835195273161,-0.007156338542700,0.009215637110174,0.002166254213080,0.002805428113788));
res += mul(Get(s2,0,0), float4x4(0.013806606642902,0.073679342865944,0.031490914523602,0.047630444169044,-0.053055204451084,0.043938912451267,-0.025111570954323,-0.094554536044598,0.004139817785472,0.018175322562456,0.021622948348522,-0.005857074633241,-0.006646841298789,-0.006506570149213,0.001528412336484,-0.005172172095627));
res += mul(Get(s2,0,dy), float4x4(-0.038647569715977,-0.029823008924723,0.039400976151228,-0.009617489762604,-0.062181189656258,0.101688437163830,-0.045595023781061,0.021742688491940,0.002241842681542,0.042025268077850,-0.021467139944434,0.008956647478044,0.006192524917424,0.002546421485022,-0.003627241123468,0.001256963587366));
res += mul(Get(s2,dx,-dy), float4x4(0.059876579791307,0.004183159675449,0.028863906860352,0.025456266477704,-0.008397513069212,0.011782784014940,-0.008568086661398,-0.033802963793278,0.020141663029790,-0.002181071322411,0.024764187633991,-0.035512875765562,0.002929086331278,-0.000880471779965,0.011457051150501,-0.000191284707398));
res += mul(Get(s2,dx,0), float4x4(0.175293385982513,0.085113309323788,0.147863253951073,-0.023213196545839,0.005408742465079,0.055669099092484,-0.006592903286219,-0.069440685212612,-0.005687090568244,0.009654209017754,0.026999436318874,-0.004729062784463,0.001364677213132,-0.009117479436100,-0.009007011540234,-0.004707823041826));
res += mul(Get(s2,dx,dy), float4x4(0.088535927236080,-0.004938345868140,0.132512316107750,-0.073574155569077,-0.070046514272690,0.101735785603523,-0.005227656569332,-0.008896357379854,-0.002018043072894,0.060699198395014,-0.023563902825117,0.018596054986119,0.000253799429629,-0.007916988804936,-0.008579805493355,0.004904211498797));
res += mul(Get(s3,-dx,-dy), float4x4(-0.003049654187635,-0.005462226457894,-0.001306884456426,0.062612958252430,0.066490352153778,-0.013774254359305,-0.018297025933862,0.014342759735882,0.012158888392150,-0.050177786499262,-0.008339994587004,0.046607602387667,0.208018466830254,-0.020261347293854,-0.061724860221148,0.068069636821747));
res += mul(Get(s3,-dx,0), float4x4(0.100550271570683,-0.024436045438051,0.031720522791147,-0.007335830945522,0.053079858422279,-0.004748092032969,-0.027681255713105,0.013228225521743,-0.008220120333135,-0.007250857073814,-0.033993903547525,0.097757354378700,0.096871294081211,-0.012438773177564,-0.051137533038855,0.103985004127026));
res += mul(Get(s3,-dx,dy), float4x4(0.069418452680111,-0.028970085084438,0.057501066476107,0.004380689468235,0.052194561809301,-0.010577687993646,-0.020039105787873,-0.021086031571031,-0.120834298431873,0.040310710668564,0.035600658506155,-0.009059436619282,-0.014696508646011,-0.023510422557592,0.036914106458426,-0.021326651796699));
res += mul(Get(s3,0,-dy), float4x4(-0.020083660259843,-0.010366280563176,-0.007981362752616,0.055654074996710,-0.006500174291432,-0.032387189567089,-0.005107274744660,-0.016807965934277,-0.024879198521376,-0.045118659734726,-0.023559566587210,0.096610471606255,0.037219997495413,-0.040388226509094,-0.047070160508156,0.149381265044212));
res += mul(Get(s3,0,0), float4x4(0.111799493432045,-0.006050549447536,-0.015665682032704,0.031828064471483,-0.005482145585120,-0.017835341393948,-0.013700333423913,-0.014684579335153,-0.022608455270529,-0.004289419855922,-0.019989740103483,0.085991211235523,-0.038644842803478,-0.000236246778513,0.072265326976776,0.028028585016727));
res += mul(Get(s3,0,dy), float4x4(0.075257413089275,-0.025154065340757,-0.004096125252545,-0.016102816909552,0.003474918892607,0.006925187539309,-0.013978270813823,-0.012115793302655,-0.013781166635454,0.048847451806068,0.040685560554266,-0.065790235996246,-0.000496364373248,0.021931067109108,0.081688530743122,-0.031262811273336));
res += mul(Get(s3,dx,-dy), float4x4(-0.051536541432142,-0.014507875777781,0.002026310190558,0.026077803224325,-0.036078948527575,-0.005697780754417,0.001495380303822,-0.020910557359457,-0.048159535974264,-0.056931119412184,0.041773639619350,0.069250822067261,-0.050052177160978,-0.033100713044405,0.064198613166809,0.069792129099369));
res += mul(Get(s3,dx,0), float4x4(-0.027266500517726,-0.018432132899761,-0.019217051565647,0.023163730278611,-0.003219574922696,-0.035760082304478,-0.001063124043867,-0.012667417526245,-0.034309502691031,-0.013664770871401,-0.030656173825264,0.051385242491961,0.007171899545938,-0.001805573003367,0.075986362993717,-0.011217247694731));
res += mul(Get(s3,dx,dy), float4x4(0.027322858572006,-0.032835118472576,-0.027858553454280,-0.012372823432088,-0.003097342327237,-0.027274144813418,-0.013619996607304,-0.022061517462134,0.073905400931835,0.018085580319166,-0.067067876458168,-0.052731234580278,0.104345425963402,0.007523247040808,-0.050198357552290,0.026920704171062));
res = max(float4(0,0,0,0), res);
return res;
}
