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
res += mul(Get(s0,-dx,-dy), float4x4(-0.028067307546735,0.009404811076820,-0.027962937951088,0.048687849193811,-0.046943545341492,-0.061235625296831,-0.031883787363768,-0.095014080405235,-0.001594461267814,-0.004109127447009,0.002429180080071,-0.004956290591508,-0.061274908483028,0.040485907346010,-0.046308927237988,-0.042244419455528));
res += mul(Get(s0,-dx,0), float4x4(-0.072657950222492,0.017158176749945,0.004430803470314,0.094374202191830,-0.039988826960325,-0.052491772919893,-0.002856543054804,-0.106152035295963,0.001683957292698,-0.002605969551951,0.004260559566319,-0.002816081978381,0.069623894989491,0.021853206679225,-0.029899502173066,-0.121485702693462));
res += mul(Get(s0,-dx,dy), float4x4(-0.049217935651541,0.032268103212118,0.038434870541096,-0.002690470078960,0.018433488905430,-0.056382853537798,0.012091861106455,-0.077106259763241,0.001246259082109,-0.001744242617860,0.002335013588890,-0.002583676949143,-0.004688584711403,0.009950147941709,-0.022078661248088,-0.040968902409077));
res += mul(Get(s0,0,-dy), float4x4(0.041708525270224,-0.012437143363059,-0.042674422264099,0.050997752696276,0.019303679466248,-0.021631900221109,-0.023179052397609,0.022734092548490,-0.000098566451925,0.005624850280583,0.001386306481436,0.005317789502442,-0.040701951831579,-0.006252680439502,-0.019005602225661,0.020244505256414));
res += mul(Get(s0,0,0), float4x4(-0.055150318890810,-0.050065916031599,-0.031691838055849,-0.071790568530560,-0.004368755500764,-0.013275842182338,0.001241826452315,-0.020377783104777,0.002641295781359,0.006727022584528,0.002619401551783,0.002949916524813,0.002827019896358,-0.018333688378334,-0.015652155503631,-0.011791758239269));
res += mul(Get(s0,0,dy), float4x4(-0.031573556363583,-0.029795657843351,0.031114552170038,0.097688011825085,0.011839914135635,-0.040785983204842,0.014621523208916,-0.028455091640353,0.001137024140917,0.004600379616022,0.001403264119290,0.002356975805014,-0.027473242953420,-0.012404724955559,-0.020339939743280,-0.027039287611842));
res += mul(Get(s0,dx,-dy), float4x4(-0.001899290829897,-0.020934717729688,-0.027714177966118,0.021494340151548,-0.086589433252811,-0.043382488191128,-0.008769826032221,0.023596266284585,-0.003928573802114,0.005374613218009,-0.001662203110754,-0.004421294201165,-0.013410177081823,-0.007350486237556,-0.009863534010947,0.038852144032717));
res += mul(Get(s0,dx,0), float4x4(0.008836327120662,-0.042405180633068,0.006093300879002,0.039088793098927,-0.067999683320522,-0.073208138346672,-0.014059811830521,-0.003948079422116,-0.003575362032279,0.004300854634494,-0.001426246948540,0.002221876988187,-0.046033985912800,0.075111769139767,-0.016654031351209,-0.006536558270454));
res += mul(Get(s0,dx,dy), float4x4(-0.035555474460125,-0.034196943044662,0.030678967013955,-0.011228233575821,-0.020768875256181,-0.068296745419502,-0.004643976688385,0.018600875511765,-0.003890091320500,0.004204140510410,-0.001023129560053,-0.000447556871222,-0.012691950425506,0.051068622618914,-0.043827611953020,-0.003961561247706));
res += mul(Get(s1,-dx,-dy), float4x4(-0.013739896006882,0.011893345974386,0.027918796986341,-0.010153059847653,-0.008929349482059,-0.024305613711476,0.032960452139378,0.006382396910340,0.025076759979129,-0.015622172504663,0.020837733522058,0.018876526504755,0.004507361911237,0.022151352837682,-0.016492893919349,-0.056491468101740));
res += mul(Get(s1,-dx,0), float4x4(-0.042778424918652,0.026865404099226,0.037893287837505,-0.080778710544109,-0.035836867988110,0.012224446982145,0.051665049046278,-0.021131971850991,0.104588255286217,0.006935596931726,0.007962779141963,0.030145328491926,-0.096055626869202,0.067458465695381,-0.000622966792434,-0.023443670943379));
res += mul(Get(s1,-dx,dy), float4x4(0.052316915243864,-0.006524380762130,0.025127153843641,-0.008121701888740,-0.031181536614895,-0.045382253825665,0.029667131602764,-0.020581467077136,0.002996724564582,-0.014995384030044,-0.029254894703627,-0.007175149396062,-0.059964012354612,0.129465639591217,0.005944273900241,-0.024855686351657));
res += mul(Get(s1,0,-dy), float4x4(-0.037758830934763,-0.047193039208651,-0.008581942878664,-0.023651070892811,0.023653984069824,-0.004692801274359,-0.018939746543765,0.073543928563595,0.061361860483885,-0.004895093850791,-0.006078854203224,0.038135360926390,-0.012848209589720,0.012111533433199,-0.048518083989620,-0.089429959654808));
res += mul(Get(s1,0,0), float4x4(0.052378937602043,0.022974181920290,0.036303516477346,0.056738063693047,0.062447994947433,0.051071636378765,0.018533127382398,0.032991435378790,0.170877933502197,-0.024644654244184,0.016862479969859,0.053070697933435,0.011564178392291,-0.015444237738848,-0.026390455663204,-0.046221088618040));
res += mul(Get(s1,0,dy), float4x4(0.040162440389395,-0.005241545848548,0.022718179970980,0.028628833591938,-0.039884518831968,-0.008854109793901,0.009302156977355,0.011863810941577,0.010568197816610,-0.019440393894911,-0.036200873553753,-0.021364863961935,-0.042723312973976,0.037095475941896,-0.010129926726222,-0.056461948901415));
res += mul(Get(s1,dx,-dy), float4x4(0.026096366345882,-0.010782197117805,-0.029572950676084,-0.069702915847301,-0.042917486280203,0.013604439795017,-0.047628179192543,0.019609596580267,0.032164402306080,-0.026828952133656,-0.000425696634920,0.010036767460406,-0.087800495326519,0.000294566474622,-0.040527727454901,-0.036015998572111));
res += mul(Get(s1,dx,0), float4x4(0.004804966505617,-0.042553015053272,-0.020448256283998,-0.090230777859688,0.010225696489215,-0.034542895853519,-0.012562447227538,-0.011646947823465,0.049564585089684,-0.035525165498257,0.014430916868150,0.022681968286633,0.007528071291745,-0.028446989133954,-0.031048815697432,-0.015471617691219));
res += mul(Get(s1,dx,dy), float4x4(-0.030631892383099,-0.023524945601821,0.017758153378963,-0.086194887757301,-0.044307686388493,-0.049673520028591,-0.017104236409068,-0.026387002319098,0.029089840129018,-0.017401536926627,0.000071862144978,0.001631054328755,-0.047735370695591,0.045540086925030,-0.012835134752095,-0.008864365518093));
res += mul(Get(s2,-dx,-dy), float4x4(-0.046605158597231,0.030964676290751,-0.036098375916481,0.020676461979747,-0.039425168186426,0.009725739248097,-0.019567336887121,-0.025448795408010,-0.011508727446198,-0.000030175957363,0.009488079696894,-0.052602965384722,0.041179500520229,-0.005384142044932,-0.008205938152969,0.021661045029759));
res += mul(Get(s2,-dx,0), float4x4(0.031125823035836,-0.009136222302914,-0.000345652166288,0.071751415729523,-0.006549559533596,0.018852099776268,-0.004036101046950,-0.005157503299415,-0.050446607172489,-0.012969436123967,-0.000014763820218,0.068296961486340,0.045675929635763,0.057165753096342,-0.006814344786108,0.006850220263004));
res += mul(Get(s2,-dx,dy), float4x4(0.072249546647072,0.020440515130758,-0.010216865688562,0.056162651628256,0.000647278618999,0.025379933416843,-0.005453153047711,0.006241552066058,-0.030103746801615,0.052321452647448,-0.017839320003986,0.066938415169716,0.052447084337473,0.024662865325809,-0.006597434636205,0.044403016567230));
res += mul(Get(s2,0,-dy), float4x4(-0.071267873048782,-0.003069823142141,-0.027706751599908,0.049820199608803,-0.032369807362556,-0.034247163683176,-0.022698398679495,-0.024964962154627,-0.019837455824018,0.015941949561238,0.024061996489763,-0.033140532672405,0.010836798697710,0.004381987731904,-0.002204884774983,0.013692276552320));
res += mul(Get(s2,0,0), float4x4(0.116759799420834,-0.040945060551167,-0.001699280575849,0.092725224792957,-0.016360601410270,-0.020353971049190,0.006725931074470,-0.006547612138093,0.016438195481896,0.041161175817251,0.063272230327129,0.050274796783924,0.043849915266037,0.041174914687872,0.005622579250485,0.040113952010870));
res += mul(Get(s2,0,dy), float4x4(0.126995533704758,-0.030740674585104,-0.016292991116643,0.039413664489985,0.018460478633642,0.015144228003919,0.029060702770948,0.096670478582382,0.020743492990732,0.045523464679718,0.020273996517062,0.032476831227541,0.111485987901688,0.047097563743591,-0.002461812691763,0.055001966655254));
res += mul(Get(s2,dx,-dy), float4x4(0.032374557107687,-0.005608137696981,-0.000186286662938,0.025611683726311,-0.053416576236486,-0.013413771055639,-0.029363058507442,-0.032747853547335,-0.047106582671404,-0.022629827260971,0.065082423388958,-0.085017241537571,0.022747736424208,0.037742849439383,-0.001909253536724,-0.015739602968097));
res += mul(Get(s2,dx,0), float4x4(0.063153460621834,-0.053158264607191,0.008261769078672,0.091412000358105,-0.055481161922216,-0.030232226476073,-0.001491551636718,0.124528884887695,0.050760928541422,-0.040116932243109,0.112494602799416,-0.052688196301460,0.074764147400856,0.027022840455174,0.011859918013215,0.018945880234241));
res += mul(Get(s2,dx,dy), float4x4(0.096959471702576,-0.073395498096943,-0.018092265352607,0.051559299230576,-0.026101820170879,0.014058589003980,0.020113673061132,0.006778534036130,0.016254268586636,-0.050712414085865,0.093329459428787,-0.093378290534019,0.038864694535732,0.000332270807121,-0.002715490059927,0.082714587450027));
res += mul(Get(s3,-dx,-dy), float4x4(0.028585338965058,-0.003518480109051,-0.014331383630633,0.002872634446248,-0.085265375673771,0.061839643865824,0.044305518269539,0.049060478806496,0.006911468692124,0.116135790944099,-0.002623275155202,0.000582714856137,0.033358711749315,0.028023621067405,-0.014329044148326,0.002115456620231));
res += mul(Get(s3,-dx,0), float4x4(-0.006905371788889,0.029738776385784,-0.001422811415978,0.043219700455666,0.001798906829208,0.087250076234341,0.050353325903416,0.022338792681694,-0.007000164128840,0.086869791150093,0.024716502055526,-0.045881479978561,0.125189572572708,0.068535342812538,-0.007619312498719,0.021496841683984));
res += mul(Get(s3,-dx,dy), float4x4(-0.076591759920120,0.052858769893646,0.000598545302637,-0.000353295035893,-0.059023741632700,0.075588740408421,0.037368871271610,-0.001445844303817,-0.040820427238941,0.082992777228355,0.048509292304516,0.000372429960407,0.035031668841839,0.047139059752226,-0.028070768341422,0.002466778969392));
res += mul(Get(s3,0,-dy), float4x4(0.185903713107109,0.008830504491925,-0.046942103654146,0.003434369806200,-0.085077859461308,0.006629418581724,0.010332255624235,0.102001734077930,0.033926367759705,0.002807036042213,-0.024707857519388,0.028788799419999,0.050760556012392,0.018939709290862,-0.019799184054136,0.092144928872585));
res += mul(Get(s3,0,0), float4x4(-0.125674054026604,0.013103956356645,-0.027694487944245,-0.161760732531548,0.181380346417427,0.009490293450654,0.020814795047045,0.029888655990362,0.173832446336746,0.011804057285190,-0.019382746890187,0.030001286417246,-0.062692984938622,0.053551334887743,-0.003711137454957,-0.043393582105637));
res += mul(Get(s3,0,dy), float4x4(-0.036465603858232,-0.024387393146753,-0.020893177017570,0.080525852739811,-0.067047610878944,0.008955736644566,-0.003307476639748,-0.021577596664429,-0.083843365311623,0.013595866039395,0.000642524508294,-0.055936273187399,0.055983792990446,0.019236797466874,-0.011017707176507,0.097203761339188));
res += mul(Get(s3,dx,-dy), float4x4(0.047123607248068,0.055940423160791,-0.062158249318600,-0.050896819680929,-0.069013647735119,-0.075825020670891,-0.003809529356658,0.062003161758184,0.022723926231265,0.003004787722602,-0.025938073173165,0.051940079778433,-0.020585658028722,0.025335891172290,-0.028638392686844,0.051454380154610));
res += mul(Get(s3,dx,0), float4x4(0.017064765095711,0.031818397343159,-0.076186798512936,0.028998356312513,0.001859179115854,-0.019647140055895,0.018866401165724,0.020996361970901,0.027373878285289,-0.002485962351784,-0.020622169598937,-0.030227629467845,-0.071775920689106,0.072520278394222,-0.014792382717133,-0.005999023094773));
res += mul(Get(s3,dx,dy), float4x4(-0.045727670192719,-0.005423475056887,-0.040181957185268,0.066243655979633,0.024313803762197,-0.020206322893500,-0.003031935077161,0.022613272070885,-0.014110508374870,-0.031131936237216,-0.012215713039041,-0.014015563763678,0.011363489553332,0.008446360938251,-0.021806379780173,0.034370336681604));
res = max(float4(0,0,0,0), res);
return res;
}
