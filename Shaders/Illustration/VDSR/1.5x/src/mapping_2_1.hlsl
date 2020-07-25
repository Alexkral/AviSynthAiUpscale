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
res += mul(Get(s0,-dx,-dy), float4x4(-0.035741932690144,0.006686176173389,0.032846324145794,-0.013194459490478,0.071862578392029,-0.014056750573218,-0.055683542042971,0.023213233798742,0.081376478075981,-0.011664396151900,-0.098667301237583,-0.095620192587376,-0.038552507758141,-0.111031085252762,-0.143990337848663,-0.009489135816693));
res += mul(Get(s0,-dx,0), float4x4(0.060422107577324,-0.040331222116947,-0.052160341292620,0.023811513558030,-0.084602117538452,-0.032275084406137,0.041087340563536,-0.068721242249012,0.008849347010255,0.029999593272805,0.026111848652363,-0.009784808382392,-0.146982103586197,-0.103130035102367,0.050550766289234,0.021549765020609));
res += mul(Get(s0,-dx,dy), float4x4(-0.094252206385136,-0.085115797817707,0.035215932875872,-0.034218475222588,-0.025521047413349,0.068587549030781,0.059931721538305,-0.020848423242569,0.015662308782339,0.043395575135946,0.038387890905142,-0.007469131611288,-0.051190692931414,-0.019834941253066,-0.246067628264427,-0.004039924591780));
res += mul(Get(s0,0,-dy), float4x4(0.127542510628700,-0.023516718298197,0.053951296955347,-0.094943247735500,0.401768416166306,0.125186860561371,-0.033378526568413,0.047708820551634,-0.001867359736934,0.034130338579416,0.071562409400940,-0.022138126194477,-0.004820866975933,-0.060591462999582,-0.063152171671391,-0.040554583072662));
res += mul(Get(s0,0,0), float4x4(0.094332531094551,-0.043132830411196,-0.022714834660292,-0.017531694844365,-0.123155422508717,0.053016819059849,-0.019708540290594,0.005636716727167,-0.115662649273872,0.033165603876114,0.018755527213216,-0.058238513767719,-0.083578519523144,0.081239044666290,-0.145587965846062,0.059388998895884));
res += mul(Get(s0,0,dy), float4x4(0.049739219248295,0.006604801863432,0.020731324329972,0.028277447447181,0.067978888750076,0.030863469466567,0.223761007189751,-0.092514239251614,-0.187726378440857,0.082220658659935,-0.018290208652616,-0.111790947616100,0.083639331161976,0.105699054896832,-0.109871223568916,-0.078894995152950));
res += mul(Get(s0,dx,-dy), float4x4(-0.090692080557346,-0.066581852734089,0.091152466833591,-0.033986039459705,0.012263069860637,-0.056119047105312,0.110758714377880,0.097167275846004,-0.027958244085312,0.036966320127249,0.006311253644526,0.201288968324661,0.083620376884937,0.024856545031071,0.037816569209099,0.129016146063805));
res += mul(Get(s0,dx,0), float4x4(-0.052998114377260,-0.040225103497505,0.047386486083269,-0.011780693195760,-0.125354662537575,-0.069867588579655,0.071933619678020,-0.051302134990692,-0.071629621088505,0.049108259379864,0.032258324325085,0.100013583898544,0.099150158464909,0.069419085979462,-0.066008128225803,-0.119163416326046));
res += mul(Get(s0,dx,dy), float4x4(-0.029773963615298,0.036814559251070,0.034137256443501,0.025447806343436,0.133782923221588,0.002724323421717,0.161114856600761,-0.052618324756622,-0.031141960993409,0.003687727730721,0.018041420727968,-0.024244461208582,-0.037449739873409,0.040456544607878,0.067620538175106,-0.022180357947946));
res += mul(Get(s1,-dx,-dy), float4x4(-0.040099009871483,0.018982624635100,0.040630914270878,0.056811500340700,0.160878449678421,-0.080275520682335,0.075097829103470,-0.014462202787399,0.060913771390915,-0.071335479617119,-0.035866614431143,-0.185966774821281,0.037048369646072,0.057563692331314,-0.018731189891696,0.001601266907528));
res += mul(Get(s1,-dx,0), float4x4(0.056371081620455,0.021311039105058,-0.046318642795086,0.006877169013023,0.173876255750656,0.106128312647343,-0.002882274799049,-0.027934534475207,-0.024390218779445,0.066427394747734,-0.035865858197212,0.056325543671846,-0.038063868880272,0.085591584444046,0.070482805371284,-0.056669477373362));
res += mul(Get(s1,-dx,dy), float4x4(-0.016355140134692,0.074664607644081,-0.077763251960278,-0.101229041814804,-0.100783072412014,0.039148945361376,-0.058463126420975,-0.040889721363783,-0.023753240704536,-0.013237382285297,0.009929827414453,-0.036206375807524,0.016122460365295,0.036681808531284,0.090119577944279,0.079009890556335));
res += mul(Get(s1,0,-dy), float4x4(0.011947964318097,0.027343774214387,-0.052823159843683,0.056430570781231,-0.085178650915623,0.041078772395849,0.037972163408995,-0.134678632020950,-0.084526136517525,0.124855443835258,0.070090509951115,-0.086961403489113,0.081110343337059,-0.084684818983078,-0.132534012198448,0.013257031328976));
res += mul(Get(s1,0,0), float4x4(0.171165108680725,-0.151382014155388,0.007081363815814,0.009317031130195,0.390581816434860,0.081978805363178,0.234045222401619,0.028705431148410,0.002535569015890,-0.027795610949397,-0.020805098116398,-0.005064559169114,-0.088900692760944,0.112092375755310,0.025444576516747,-0.091145753860474));
res += mul(Get(s1,0,dy), float4x4(0.112833015620708,-0.014979714527726,-0.179171741008759,-0.055977601557970,0.073106452822685,-0.094708420336246,-0.070757478475571,-0.143404915928841,-0.069633468985558,0.009987122379243,0.121869809925556,0.013655083253980,0.127531558275223,0.031524676829576,0.019052276387811,0.038732938468456));
res += mul(Get(s1,dx,-dy), float4x4(0.088295526802540,0.016672715544701,0.032270565629005,0.024451643228531,-0.044184926897287,0.021247573196888,-0.098473928868771,-0.023018356412649,0.091810740530491,0.114707268774509,-0.076092302799225,-0.028566733002663,0.010576874949038,0.088504143059254,0.068067863583565,-0.127371147274971));
res += mul(Get(s1,dx,0), float4x4(0.185430377721786,0.063040800392628,-0.003108235774562,0.048175521194935,0.142460435628891,0.040076602250338,-0.034440755844116,-0.029545685276389,0.063064508140087,0.114860780537128,-0.017572835087776,-0.101389877498150,0.036351162940264,-0.018861150369048,0.009515712969005,-0.076293200254440));
res += mul(Get(s1,dx,dy), float4x4(0.086558140814304,0.141924649477005,0.081521973013878,0.142761617898941,-0.081048108637333,-0.042944051325321,-0.067634537816048,0.044421955943108,0.067542165517807,-0.010287151671946,-0.076436169445515,0.078449569642544,0.112544685602188,-0.089205309748650,-0.075582392513752,0.006545750424266));
res += mul(Get(s2,-dx,-dy), float4x4(0.079858034849167,0.009406408295035,0.032903924584389,0.027439270168543,0.001943000825122,0.010705762542784,-0.146361917257309,0.016806459054351,-0.033369664102793,0.113117679953575,-0.048025209456682,0.089854612946510,-0.121333807706833,-0.128840968012810,-0.044962953776121,-0.060527533292770));
res += mul(Get(s2,-dx,0), float4x4(0.061660636216402,-0.018464418128133,-0.021168505772948,0.004628133960068,-0.121497504413128,0.079358465969563,0.074825249612331,0.016860730946064,0.010074043646455,0.030966801568866,0.036222610622644,-0.086160503327847,0.076361581683159,0.017524663358927,0.044163174927235,0.011322896927595));
res += mul(Get(s2,-dx,dy), float4x4(0.019914509728551,0.136395230889320,-0.024487188085914,-0.129604533314705,0.033373329788446,0.005135159008205,-0.032809965312481,-0.051647767424583,-0.022859765216708,0.031226404011250,0.020593699067831,-0.146876260638237,0.084134168922901,0.045033864676952,-0.058929800987244,0.077641725540161));
res += mul(Get(s2,0,-dy), float4x4(-0.046331189572811,0.017179578542709,-0.021599872037768,0.054362144321203,0.037568662315607,-0.004254694562405,0.087876036763191,0.061210434883833,0.136067405343056,-0.126818031072617,-0.128309011459351,0.088722951710224,-0.124647065997124,-0.016268402338028,0.008256872184575,-0.000160021008924));
res += mul(Get(s2,0,0), float4x4(-0.025009421631694,-0.009956432506442,0.168678820133209,0.083928525447845,-0.081905871629715,-0.038237389177084,-0.064219839870930,0.056569393724203,0.054948836565018,0.032600380480289,-0.074605718255043,-0.005323946941644,-0.091890022158623,-0.070815883576870,0.022059271112084,-0.143785312771797));
res += mul(Get(s2,0,dy), float4x4(0.111007653176785,-0.006916470825672,0.163099452853203,0.077551163733006,-0.032574452459812,-0.042713969945908,-0.067981757223606,0.043742567300797,0.067587070167065,-0.123859226703644,0.250991970300674,0.076637588441372,-0.001786318025552,-0.085261411964893,-0.099368743598461,0.082005567848682));
res += mul(Get(s2,dx,-dy), float4x4(-0.138176068663597,-0.046231210231781,-0.113838635385036,-0.038864657282829,-0.078977935016155,0.110904194414616,0.162140354514122,-0.050780538469553,-0.057827372103930,-0.088589385151863,0.021345835179090,0.062381163239479,0.080951280891895,-0.139885514974594,0.048561181873083,-0.001807157183066));
res += mul(Get(s2,dx,0), float4x4(-0.075781539082527,0.134503364562988,-0.030442202463746,-0.027333136647940,0.113334208726883,0.058702085167170,0.048046600073576,-0.090084925293922,0.017155522480607,0.070712171494961,-0.142619237303734,-0.082519680261612,0.097506389021873,0.032684680074453,0.001278325449675,-0.032027125358582));
res += mul(Get(s2,dx,dy), float4x4(-0.029272746294737,0.052983593195677,0.079970248043537,-0.069411255419254,0.038776241242886,0.013288331218064,-0.010629886761308,0.043093126267195,0.045983616262674,-0.033372841775417,-0.037717100232840,-0.030521698296070,0.046064041554928,-0.136444658041000,-0.054914135485888,-0.142317414283752));
res += mul(Get(s3,-dx,-dy), float4x4(0.047785516828299,-0.002234680345282,0.069695368409157,0.008800612762570,0.078872755169868,0.119789324700832,-0.111964687705040,-0.059689506888390,0.114463672041893,-0.023362237960100,0.092739611864090,0.054443322122097,0.043555300682783,0.126662597060204,0.000813049497083,-0.008201945573092));
res += mul(Get(s3,-dx,0), float4x4(-0.026227628812194,-0.130483523011208,0.018530532717705,0.000787923636381,-0.045533407479525,0.048130311071873,0.114980936050415,0.057037133723497,-0.105779983103275,0.025777198374271,0.086037039756775,0.010345970280468,0.109533563256264,0.023381710052490,-0.161898151040077,0.080085210502148));
res += mul(Get(s3,-dx,dy), float4x4(-0.157846912741661,-0.000388735148590,-0.038842640817165,0.018945995718241,-0.028250750154257,-0.016190798953176,0.041701685637236,-0.000778530840762,-0.060210384428501,0.067804537713528,-0.007972766645253,0.057720944285393,-0.125772327184677,0.002281572902575,0.000044468568376,-0.037417653948069));
res += mul(Get(s3,0,-dy), float4x4(0.111180938780308,0.214248940348625,-0.046312682330608,-0.085606217384338,0.013044281862676,-0.016956146806479,-0.072847828269005,0.004004377406090,0.080934278666973,-0.054918006062508,-0.091693438589573,0.132597520947456,-0.017047001048923,0.028646849095821,0.047713570296764,-0.023874020203948));
res += mul(Get(s3,0,0), float4x4(0.063022062182426,0.229206398129463,0.229611843824387,-0.059695988893509,0.132293254137039,0.113785125315189,0.028355270624161,0.061873972415924,-0.089499458670616,0.021111700683832,0.065936513245106,0.070665039122105,-0.142133995890617,0.068439736962318,0.094823718070984,-0.019228843972087));
res += mul(Get(s3,0,dy), float4x4(-0.046090137213469,0.015366998501122,0.056761454790831,-0.065537095069885,0.026813322678208,0.002564778085798,-0.078297384083271,0.045110713690519,0.043398212641478,0.019564760848880,-0.027242269366980,-0.076164834201336,0.080000206828117,-0.088321991264820,-0.065369337797165,0.039483588188887));
res += mul(Get(s3,dx,-dy), float4x4(0.176188513636589,-0.005830307491124,-0.039363145828247,0.109646163880825,-0.022561684250832,-0.037917055189610,0.033138815313578,0.051906771957874,0.170961603522301,0.094124741852283,-0.031531155109406,-0.060631986707449,-0.068449236452579,-0.037025339901447,0.092589318752289,0.066073305904865));
res += mul(Get(s3,dx,0), float4x4(-0.099052332341671,0.121930137276649,-0.100275598466396,-0.063291244208813,-0.008590610697865,0.020709220319986,0.025608509778976,-0.144068658351898,0.119506627321243,-0.039371907711029,-0.067754872143269,-0.010770156048238,-0.090196691453457,0.009456452913582,-0.092252276837826,-0.014563171193004));
res += mul(Get(s3,dx,dy), float4x4(0.071988806128502,-0.008659881539643,0.042519949376583,-0.017640439793468,-0.023304255679250,-0.090436749160290,0.010944696143270,0.014281757175922,0.049187507480383,0.020925255492330,0.085612997412682,-0.043293043971062,-0.182465776801109,0.038190182298422,-0.011512585915625,-0.024945255368948));
return max(float4(0,0,0,0), res);
}
