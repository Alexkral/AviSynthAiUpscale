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
res += mul(Get(s0,-dx,-dy), float4x4(-0.040355473756790,-0.074414901435375,0.039387695491314,0.015858098864555,0.084056600928307,0.046441596001387,0.068964883685112,0.001092045102268,-0.013295457698405,0.181878924369812,0.029475212097168,-0.005039191339165,-0.049297206103802,0.028842728585005,0.040123540908098,-0.110443361103535));
res += mul(Get(s0,-dx,0), float4x4(0.080976389348507,0.048048164695501,0.146714344620705,-0.062692806124687,0.000865225854795,-0.050435885787010,-0.063304476439953,0.020436281338334,-0.105481646955013,-0.009387374855578,0.010663544759154,0.054256930947304,-0.092508412897587,0.040545552968979,-0.062608785927296,-0.075059555470943));
res += mul(Get(s0,-dx,dy), float4x4(0.018765449523926,0.080934993922710,0.003716811770573,0.003914009779692,0.083086848258972,0.045076645910740,-0.071222543716431,-0.149843961000443,-0.019652264192700,0.076281838119030,0.163635537028313,0.024650365114212,0.081157937645912,-0.139596417546272,-0.079469189047813,-0.035256162285805));
res += mul(Get(s0,0,-dy), float4x4(0.077901497483253,0.076772727072239,-0.018787547945976,0.043835923075676,-0.048528838902712,0.042224254459143,-0.051333103328943,-0.009840819053352,0.009303551167250,0.091072522103786,0.046050652861595,-0.072159506380558,-0.025228392332792,-0.016026424244046,-0.002682933118194,0.054472986608744));
res += mul(Get(s0,0,0), float4x4(0.001266298233531,-0.079448960721493,-0.000284065434244,0.032581884413958,-0.140073195099831,0.002483187709004,-0.054608397185802,-0.023274853825569,0.056002095341682,0.044002223759890,0.095747061073780,0.027158280834556,0.034254524856806,-0.087940953671932,0.254237622022629,0.012123938649893));
res += mul(Get(s0,0,dy), float4x4(0.072499863803387,-0.067174777388573,-0.071275748312473,-0.006408690474927,0.005709705408663,0.030786950141191,0.008409073576331,0.099977679550648,0.085635662078857,-0.065164819359779,0.032404467463493,0.018325120210648,0.083183206617832,-0.012465908192098,0.148641020059586,0.048304174095392));
res += mul(Get(s0,dx,-dy), float4x4(-0.110063731670380,-0.055395886301994,-0.170676842331886,0.038450337946415,-0.094069309532642,0.014541017822921,-0.011652805842459,0.012468331493437,0.036750450730324,0.036556057631969,-0.040990646928549,0.065275080502033,0.052846211940050,-0.011356929317117,-0.050263714045286,-0.109592072665691));
res += mul(Get(s0,dx,0), float4x4(-0.089706100523472,-0.031438406556845,-0.015111321583390,0.102724470198154,0.078040681779385,-0.050633449107409,0.106465734541416,-0.060690537095070,0.023831903934479,0.052973825484514,0.009221206419170,-0.085639633238316,0.060375396162271,-0.030877422541380,0.013037062250078,-0.043815858662128));
res += mul(Get(s0,dx,dy), float4x4(0.094954468309879,-0.043456871062517,-0.074188366532326,-0.056784655898809,-0.010619560256600,-0.095022387802601,0.001503921695985,-0.006350488401949,0.079263128340244,-0.090584717690945,-0.099907219409943,0.063280642032623,0.042410310357809,-0.011261073872447,-0.063921526074409,0.026620153337717));
res += mul(Get(s1,-dx,-dy), float4x4(-0.155632570385933,0.055082172155380,0.130211457610130,0.006312965881079,0.026137391105294,0.041056454181671,0.066969648003578,-0.053351659327745,0.057094834744930,0.005476359277964,0.045012611895800,0.080664619803429,-0.104241356253624,-0.014001626521349,-0.015394507907331,0.104495123028755));
res += mul(Get(s1,-dx,0), float4x4(-0.044609129428864,-0.170534700155258,-0.083854772150517,-0.081327296793461,0.038164217025042,0.061124458909035,-0.089610427618027,-0.009950239211321,-0.123050548136234,-0.051103446632624,-0.083602532744408,0.008665815927088,-0.015536386519670,-0.007102114614099,-0.041918214410543,-0.003926464822143));
res += mul(Get(s1,-dx,dy), float4x4(0.013838639482856,0.167603880167007,0.013194117695093,0.020123859867454,0.052182238548994,0.063380151987076,0.028607200831175,0.087906233966351,0.051382284611464,-0.025072483345866,-0.002414148999378,-0.070338480174541,0.099240750074387,0.034607790410519,-0.082788586616516,0.004470487590879));
res += mul(Get(s1,0,-dy), float4x4(0.031963825225830,0.159478589892387,0.107627213001251,0.081489242613316,0.064293324947357,-0.030530452728271,0.019165929406881,0.105806164443493,-0.044664815068245,0.085790045559406,0.063050940632820,0.048919551074505,-0.058359157294035,-0.033594463020563,0.002397761214525,-0.116759441792965));
res += mul(Get(s1,0,0), float4x4(-0.133289188146591,0.004176139365882,-0.161447405815125,-0.114012338221073,0.084059499204159,0.023019162937999,0.055171053856611,-0.049592453986406,0.016047498211265,0.051487140357494,0.017308151349425,-0.001099492073990,-0.107561752200127,0.007216544356197,0.232625409960747,-0.047893639653921));
res += mul(Get(s1,0,dy), float4x4(0.059008687734604,-0.036141719669104,0.064622029662132,0.057198047637939,-0.019719354808331,0.082503579556942,-0.028375530615449,0.015576846897602,0.066397331655025,0.062167841941118,-0.214647740125656,0.023033399134874,0.118748962879181,-0.022752733901143,0.054681673645973,-0.026735235005617));
res += mul(Get(s1,dx,-dy), float4x4(0.038668029010296,0.039940368384123,-0.002500250237063,0.001374188694172,0.034446880221367,0.087281264364719,-0.030147209763527,0.027515394613147,0.068020157516003,-0.101197727024555,0.033431883901358,-0.041544653475285,-0.040321152657270,-0.118696697056293,0.099097386002541,-0.051684468984604));
res += mul(Get(s1,dx,0), float4x4(-0.101149134337902,0.015908461064100,0.146404862403870,-0.029121076688170,-0.007606400176883,-0.020685425028205,-0.067228071391582,0.021143907681108,-0.027556870132685,-0.037572659552097,0.090824209153652,0.044548865407705,-0.096830107271671,-0.033503763377666,-0.056547809392214,-0.030325917527080));
res += mul(Get(s1,dx,dy), float4x4(-0.052079919725657,-0.066261880099773,-0.036361753940582,0.021708909422159,0.072646372020245,-0.025680178776383,-0.063699103891850,0.054120436310768,0.024951213970780,0.056984126567841,0.114492259919643,0.015968646854162,0.016878707334399,0.047426212579012,-0.033961076289415,0.026242006570101));
res += mul(Get(s2,-dx,-dy), float4x4(0.112549811601639,0.022108945995569,0.003168608294800,0.118420593440533,-0.031246578320861,-0.083624444901943,0.055700901895761,-0.010877904482186,-0.036514665931463,0.073738209903240,-0.044504117220640,0.008371855132282,-0.056729923933744,0.176395848393440,0.094276681542397,-0.092569306492805));
res += mul(Get(s2,-dx,0), float4x4(-0.082703918218613,0.001342492643744,0.041469171643257,-0.035790219902992,-0.004668504931033,0.044134989380836,-0.044185053557158,0.104742385447025,-0.169109225273132,0.000514027662575,0.123591713607311,0.006862624548376,-0.017964260652661,0.025101682171226,0.094238214194775,-0.087600283324718));
res += mul(Get(s2,-dx,dy), float4x4(-0.064136222004890,-0.045135442167521,-0.026378810405731,-0.061187643557787,0.022782199084759,0.159151256084442,-0.015220234170556,-0.056534618139267,-0.054374389350414,0.018586751073599,0.077752664685249,-0.140759229660034,-0.065239757299423,-0.099312804639339,-0.036274671554565,0.090007901191711));
res += mul(Get(s2,0,-dy), float4x4(0.162667408585548,0.033748656511307,0.034762479364872,0.054534379392862,0.029081249609590,0.177546203136444,0.146633937954903,0.019228741526604,0.110008239746094,-0.045173935592175,0.180942416191101,-0.035364069044590,-0.061435382813215,0.058055978268385,-0.084030546247959,-0.089304625988007));
res += mul(Get(s2,0,0), float4x4(-0.044274326413870,0.031841911375523,-0.077929101884365,0.122925631701946,0.033558525145054,0.048784691840410,-0.076565116643906,-0.059230770915747,-0.060958642512560,0.097665809094906,-0.081242732703686,0.045598033815622,-0.146053284406662,0.048340279608965,0.093406260013580,-0.073275811970234));
res += mul(Get(s2,0,dy), float4x4(0.036272328346968,-0.083125397562981,0.076169580221176,-0.032307755202055,-0.110999539494514,0.053120780736208,0.079009734094143,0.010829947888851,0.057733554393053,-0.010626424103975,-0.101981557905674,-0.042572010308504,-0.007687009871006,-0.015199312008917,0.113126926124096,-0.035736039280891));
res += mul(Get(s2,dx,-dy), float4x4(0.104497879743576,-0.016517153009772,-0.092519141733646,0.100200764834881,0.107262991368771,0.180088728666306,0.070368446409702,0.043607246130705,0.033974096179008,0.036264415830374,0.102433763444424,-0.110601007938385,-0.091385602951050,0.024951273575425,-0.102925069630146,-0.103484086692333));
res += mul(Get(s2,dx,0), float4x4(-0.037124298512936,0.040413971990347,-0.006319652311504,0.043097279965878,0.068849071860313,0.143312245607376,0.076220698654652,-0.013195756822824,-0.084413640201092,-0.071677811443806,0.146845921874046,0.084130950272083,-0.050843313336372,-0.119620293378830,0.085230864584446,0.020801875740290));
res += mul(Get(s2,dx,dy), float4x4(0.085249580442905,0.018772143870592,0.083834782242775,-0.044313959777355,0.045372407883406,-0.025975145399570,0.045859985053539,0.121972024440765,0.021899048238993,-0.114602878689766,0.105054453015327,-0.117054186761379,-0.017781935632229,-0.019290139898658,0.031247217208147,-0.029112223535776));
res += mul(Get(s3,-dx,-dy), float4x4(-0.012915723025799,0.018794845789671,0.031974241137505,0.012032081373036,0.131498321890831,0.037510037422180,0.057334568351507,-0.049039386212826,-0.006844321731478,0.145838722586632,-0.046923164278269,-0.025421280413866,-0.068980552256107,0.029561573639512,0.016436504200101,-0.030642848461866));
res += mul(Get(s3,-dx,0), float4x4(0.016256112605333,0.018142519518733,-0.092337869107723,-0.034751776605844,0.002335239900276,-0.062818683683872,-0.069081872701645,-0.070838369429111,0.137454882264137,-0.031771183013916,0.018132705241442,0.070250846445560,0.093190737068653,0.124340459704399,0.027397966012359,-0.051718726754189));
res += mul(Get(s3,-dx,dy), float4x4(-0.021534623578191,0.193111926317215,-0.065114907920361,-0.095060177147388,0.033153835684061,0.117609404027462,0.067711129784584,-0.109175160527229,-0.065427318215370,-0.003501720260829,0.055443093180656,-0.086702995002270,-0.043825335800648,0.025276165455580,-0.020957970991731,-0.040327832102776));
res += mul(Get(s3,0,-dy), float4x4(-0.030642457306385,-0.209507718682289,0.057196110486984,-0.026668183505535,0.030423222109675,-0.009671960026026,-0.058734305202961,-0.033909365534782,0.066110290586948,0.034324698150158,-0.023903729394078,-0.032897431403399,0.041602350771427,-0.112156212329865,0.079546250402927,0.063304252922535));
res += mul(Get(s3,0,0), float4x4(0.041927903890610,-0.053110547363758,0.240429937839508,0.059748675674200,-0.172663211822510,-0.124851062893867,-0.061130162328482,-0.052203454077244,-0.112929679453373,-0.009782881475985,-0.035383656620979,-0.016384178772569,0.080139249563217,-0.009476315230131,-0.095317028462887,-0.039263427257538));
res += mul(Get(s3,0,dy), float4x4(0.054378580302000,0.061938092112541,-0.029239701107144,0.068325296044350,-0.114966370165348,0.005318747833371,0.027685355395079,-0.008872409351170,-0.004821876063943,0.107340581715107,-0.031932592391968,0.032988760620356,-0.007798893842846,-0.010473006404936,0.025013018399477,-0.080673165619373));
res += mul(Get(s3,dx,-dy), float4x4(-0.022959832102060,-0.044486582279205,0.113389894366264,-0.057594381272793,-0.003094557207078,-0.008845784701407,0.015472172759473,-0.015900257974863,-0.058343306183815,0.091295562684536,0.019465530291200,0.038380570709705,0.016517391428351,-0.071522146463394,-0.080155082046986,-0.068002067506313));
res += mul(Get(s3,dx,0), float4x4(-0.143200144171715,-0.055262066423893,-0.069243364036083,-0.028261577710509,-0.055223774164915,0.040647596120834,0.018051182851195,-0.016259314492345,0.048027571290731,0.026288373395801,0.149419590830803,-0.001786404638551,-0.015051839873195,0.145985811948776,0.058870598673820,0.076767243444920));
res += mul(Get(s3,dx,dy), float4x4(-0.044540762901306,-0.066721744835377,-0.107331365346909,-0.055302321910858,0.122471071779728,-0.027325404807925,0.101657934486866,-0.007313431240618,0.018660569563508,-0.046174738556147,-0.058070421218872,-0.067373581230640,0.068083994090557,0.044229306280613,-0.022247293964028,-0.100722536444664));
res = max(float4(0,0,0,0), res);
return res;
}
