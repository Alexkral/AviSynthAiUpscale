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
res += mul(Get(s0,-dx,-dy), float4x4(0.021546358242631,-0.009518489241600,0.030151417478919,0.021791536360979,0.008999507874250,0.003446429036558,0.005346986465156,0.003298505675048,-0.022493652999401,-0.014657795429230,-0.047608979046345,-0.045152164995670,-0.069872483611107,0.052319485694170,0.004421278368682,0.073266573250294));
res += mul(Get(s0,-dx,0), float4x4(0.037549518048763,-0.029270850121975,0.026233974844217,-0.034603428095579,0.004128861241043,-0.001934829866514,0.002405200619251,0.006700464524329,0.011321634054184,0.027700673788786,-0.028854083269835,0.019300464540720,-0.065028607845306,-0.066891305148602,-0.052049938589334,-0.009428160265088));
res += mul(Get(s0,-dx,dy), float4x4(0.030520640313625,-0.035497505217791,-0.010698283091187,0.014553361572325,-0.006886499002576,0.002532863290980,0.002146236831322,-0.006146171130240,0.033787280321121,0.030115915462375,0.043866004794836,-0.031098261475563,-0.068555064499378,0.042132422327995,0.025291312485933,-0.014664571732283));
res += mul(Get(s0,0,-dy), float4x4(0.036908511072397,0.028613723814487,0.057269513607025,0.045984666794538,0.002360604237765,0.002948809647933,0.000326473236782,-0.006522815208882,0.005194795317948,0.008499585092068,-0.027699697762728,-0.041555460542440,-0.048228666186333,0.046289611607790,-0.009425465948880,0.109998203814030));
res += mul(Get(s0,0,0), float4x4(0.066340968012810,0.014204686507583,0.001217619166709,-0.007703407201916,-0.002514117630199,-0.005677585955709,-0.001318482332863,0.001326330704615,0.029171820729971,-0.016551638022065,-0.014753616414964,-0.045339729636908,-0.045595012605190,-0.068728916347027,-0.091807410120964,-0.025220397859812));
res += mul(Get(s0,0,dy), float4x4(0.015369053930044,-0.010446886532009,-0.005704426672310,0.014831147156656,0.002989981090650,0.003832936752588,-0.002761889481917,0.002149134641513,0.106421850621700,0.019911803305149,0.066052056849003,0.015457583591342,-0.067205086350441,0.036223694682121,0.017567943781614,-0.076336175203323));
res += mul(Get(s0,dx,-dy), float4x4(0.004665890242904,0.002281305380166,0.044667553156614,0.024540366604924,-0.011284410953522,-0.009190639480948,-0.000378638214897,-0.003502410603687,0.023768419399858,-0.012615649960935,0.005125015974045,-0.024475473910570,-0.024765497073531,0.011010782793164,0.041833840310574,-0.024752564728260));
res += mul(Get(s0,dx,0), float4x4(0.010013231076300,0.006124750245363,-0.033844593912363,0.037597734481096,-0.006916624028236,0.005246030166745,-0.006944012362510,0.006910089869052,-0.007746144197881,-0.040018308907747,0.009519441053271,-0.006248097401112,-0.050104681402445,-0.014782501384616,-0.036601237952709,-0.017763510346413));
res += mul(Get(s0,dx,dy), float4x4(-0.010439955629408,-0.014658907428384,0.030377458781004,0.026826964691281,-0.002720359247178,0.003263207850978,-0.003487318288535,-0.003424417693168,-0.026908213272691,0.012239845469594,0.009892029687762,-0.002467833459377,-0.082462310791016,0.013089971616864,0.107956260442734,-0.052484299987555));
res += mul(Get(s1,-dx,-dy), float4x4(0.003388392273337,-0.089088805019855,-0.023823747411370,-0.092258214950562,-0.000514505431056,0.001176270423457,0.002286830218509,-0.002734109526500,-0.015071533620358,0.002233573002741,-0.035812415182590,0.027466138824821,-0.000682680809405,0.001131162396632,0.011493626981974,-0.009981786832213));
res += mul(Get(s1,-dx,0), float4x4(0.005511592142284,-0.005296824965626,-0.029295967891812,0.006536972709000,-0.000346893037204,-0.001065782969818,0.002639113692567,-0.004664099309593,-0.019476387649775,-0.001583670265973,0.000907963898499,0.000049949521781,0.005487459246069,0.012019787915051,-0.003355193184689,0.002926171990111));
res += mul(Get(s1,-dx,dy), float4x4(-0.004188328515738,0.041630957275629,0.064064785838127,-0.019702637568116,0.003522632876411,-0.000401130557293,-0.000832990102936,-0.000600696424954,-0.002042760374025,-0.048729225993156,-0.020766040310264,-0.025239573791623,-0.004069264512509,-0.000122869852930,0.005131995305419,-0.002708161482587));
res += mul(Get(s1,0,-dy), float4x4(-0.012020754627883,-0.074006207287312,-0.018569577485323,-0.047184757888317,0.001090938923880,-0.001593715511262,0.000856510770973,-0.002280553802848,0.063897877931595,0.009500059299171,0.038764160126448,0.042926043272018,-0.002011258853599,-0.000393997848732,-0.006217013113201,0.004109438043088));
res += mul(Get(s1,0,0), float4x4(-0.008154259063303,-0.025519039481878,-0.033204771578312,-0.036470483988523,-0.009874158538878,-0.000968216627371,-0.004409650806338,0.000823046546429,0.066572584211826,-0.049629975110292,0.042635295540094,-0.014570797793567,-0.000486728618853,-0.000655686599202,-0.003100075991824,-0.005157101433724));
res += mul(Get(s1,0,dy), float4x4(-0.004045182839036,0.056079678237438,0.070467233657837,-0.027882872149348,0.001130638993345,0.005332063417882,0.000481120427139,0.005928883329034,0.033764321357012,0.079508259892464,0.069338433444500,0.025493014603853,0.006739590782672,0.005132070276886,-0.006894099526107,-0.000683750899043));
res += mul(Get(s1,dx,-dy), float4x4(0.002484829630703,-0.052657704800367,0.012167643755674,-0.085120394825935,0.000664291961584,0.002380440942943,0.001074964879081,0.004447237588465,0.023145722225308,0.211205095052719,-0.013704455457628,0.293663889169693,0.001221187296323,0.002239717869088,-0.003045640420169,-0.006654205732048));
res += mul(Get(s1,dx,0), float4x4(-0.006399856414646,-0.009833296760917,-0.007583854719996,0.013772390782833,-0.003009877167642,-0.002237253356725,0.011953376233578,0.003058646107092,-0.073511399328709,-0.123616471886635,-0.096767686307430,-0.202382057905197,0.004667413886636,0.010280626825988,0.001868139719591,-0.012047539465129));
res += mul(Get(s1,dx,dy), float4x4(-0.023063538596034,0.052875574678183,0.020286127924919,-0.030036397278309,-0.002933557378128,-0.004098677542061,-0.002433655085042,-0.000028185309930,-0.092590488493443,0.011685331352055,-0.010005044750869,-0.130016103386879,-0.002107542706653,-0.001069571939297,-0.004062679596245,0.003020492149517));
res += mul(Get(s2,-dx,-dy), float4x4(0.029451098293066,-0.029772525653243,0.018147682771087,0.031564150005579,0.023506034165621,-0.093224674463272,-0.010186408646405,-0.018138011917472,-0.020525438711047,0.033597122877836,-0.011671960353851,0.008135544136167,0.033831678330898,-0.003180575789884,0.004352255724370,0.029513666406274));
res += mul(Get(s2,-dx,0), float4x4(0.017499014735222,0.029828982427716,0.006257151253521,0.046855200082064,-0.023295709863305,-0.045577611774206,-0.015691230073571,-0.036620445549488,-0.009637437760830,-0.027396138757467,-0.013024473562837,-0.017685290426016,0.008852846920490,-0.027603695169091,-0.017531732097268,-0.025388488546014));
res += mul(Get(s2,-dx,dy), float4x4(-0.005162396933883,0.008037303574383,-0.033437464386225,-0.008325485512614,-0.010788859799504,-0.010835436172783,-0.010516383685172,0.017716219648719,-0.005332865752280,0.001604425371625,-0.003359492402524,-0.005512929055840,-0.005884882528335,0.004017294384539,-0.002374005969614,-0.024490904062986));
res += mul(Get(s2,0,-dy), float4x4(-0.001739898696542,-0.029426641762257,0.021862579509616,0.034818936139345,0.032471362501383,-0.096812412142754,0.039460893720388,-0.015266837552190,-0.017538120970130,-0.000895140285138,-0.005293691996485,-0.003331237705424,-0.007545975968242,0.012677832506597,0.009815275669098,0.065209336578846));
res += mul(Get(s2,0,0), float4x4(-0.003954829648137,0.046349532902241,-0.001137930434197,0.071502104401588,-0.030183034017682,-0.004504175856709,0.009527687914670,-0.078434623777866,-0.008346234448254,-0.016759976744652,-0.004549794830382,-0.028478335589170,-0.022571332752705,0.016715496778488,-0.010259259492159,-0.016650430858135));
res += mul(Get(s2,0,dy), float4x4(-0.010588563978672,0.003910870291293,-0.068304531276226,-0.002033495577052,-0.010627854615450,-0.006460822653025,-0.015142946504056,-0.018432790413499,-0.013765995390713,0.005852662492543,-0.001180735300295,-0.013255428522825,-0.014061549678445,0.008719377219677,-0.007903149351478,-0.017649943009019));
res += mul(Get(s2,dx,-dy), float4x4(-0.001376557280309,-0.050243128091097,0.031153814867139,-0.018575910478830,0.029968088492751,-0.069326892495155,0.014002701267600,-0.087235189974308,-0.008176918141544,-0.007103268988431,-0.011252173222601,-0.019863639026880,-0.010653469711542,-0.006429604254663,0.024457711726427,-0.008776111528277));
res += mul(Get(s2,dx,0), float4x4(-0.007882763631642,0.013363598845899,0.045619018375874,-0.004429636523128,-0.021998440846801,-0.014752193354070,0.013267543166876,-0.068259775638580,0.001885125413537,-0.007263770792633,-0.007727522403002,-0.021199502050877,-0.016594439744949,0.010496987029910,0.013717611320317,-0.014867274090648));
res += mul(Get(s2,dx,dy), float4x4(-0.019627662375569,0.013990157283843,-0.044285673648119,-0.028777230530977,-0.008117028512061,0.028295664116740,0.001298851915635,-0.012231487780809,0.001173929311335,0.003553622635081,-0.001140627078712,-0.010144232772291,-0.023373927921057,0.031788468360901,-0.016745632514358,0.019832935184240));
res += mul(Get(s3,-dx,-dy), float4x4(0.030261356383562,-0.006602163892239,-0.024777188897133,-0.018740661442280,-0.018775118514895,0.044870175421238,0.002917158184573,0.019164189696312,0.067863762378693,-0.066628478467464,-0.009328156709671,-0.051897414028645,0.001198481302708,-0.018541155382991,-0.004015163984150,-0.008363801985979));
res += mul(Get(s3,-dx,0), float4x4(0.036437477916479,-0.040825538337231,-0.016024822369218,0.023216584697366,-0.017502868548036,-0.015001483261585,-0.024255203083158,-0.005935847293586,0.049290411174297,-0.023218324407935,-0.006362703628838,0.002117233118042,-0.004757390357554,0.005872158333659,-0.003143029287457,0.006281109526753));
res += mul(Get(s3,-dx,dy), float4x4(0.019511744379997,0.025262176990509,-0.059417255222797,-0.007972832769156,-0.021441869437695,-0.005758125334978,-0.020943913608789,-0.023997245356441,0.043258588761091,-0.002316333120689,-0.000343945401255,0.035497434437275,-0.006340070627630,-0.004832104314119,0.000180844086572,-0.004247854929417));
res += mul(Get(s3,0,-dy), float4x4(-0.005821903236210,-0.019028363749385,0.014913626015186,0.028840813785791,-0.008173691108823,0.015896936878562,0.021944204345345,-0.010103311389685,-0.011287584900856,0.089331805706024,-0.021347047761083,0.139911428093910,-0.004862116184086,0.006844591349363,0.005272760521621,0.003870479762554));
res += mul(Get(s3,0,0), float4x4(-0.003668489400297,-0.021827640011907,-0.005030642263591,0.138801172375679,-0.003628393635154,-0.026207694783807,-0.027711808681488,-0.013638435862958,-0.053537171334028,0.001207319088280,-0.010718956589699,-0.140087604522705,0.005023055709898,0.004720780998468,0.003342541400343,0.010604281909764));
res += mul(Get(s3,0,dy), float4x4(-0.024525491520762,0.007691498380154,-0.094871997833252,-0.005261084530503,-0.008503286167979,0.008701787330210,0.014592675492167,-0.015904597938061,-0.027991119772196,-0.000381350924727,-0.006712534464896,-0.059134323149920,-0.005757093895227,-0.008261447772384,-0.004433399997652,-0.005655748303980));
res += mul(Get(s3,dx,-dy), float4x4(0.004142458084971,-0.018008945509791,0.023180205374956,-0.033001504838467,-0.021994307637215,-0.003383227158338,0.005680181551725,-0.007888563908637,-0.005183477886021,0.053093761205673,0.030080229043961,0.016020115464926,-0.001654770690948,0.002765962854028,-0.003416835796088,-0.005486533045769));
res += mul(Get(s3,dx,0), float4x4(0.030068023130298,-0.028392385691404,0.051808983087540,0.003899273928255,-0.024317471310496,-0.011308612301946,-0.027761533856392,-0.004529871512204,-0.029032703489065,0.005431077443063,-0.003125361865386,-0.015892593190074,-0.005991407204419,0.008790855295956,-0.004619441460818,-0.005694180261344));
res += mul(Get(s3,dx,dy), float4x4(-0.021999111399055,-0.003623558674008,-0.089263521134853,-0.019378012046218,-0.002909634960815,-0.032166875898838,0.044945321977139,-0.001096805674024,-0.020627504214644,0.027590688318014,0.045340631157160,0.022831892594695,-0.006532824598253,0.001046880148351,-0.004564227070659,-0.000955841562245));
return max(float4(0,0,0,0), res);
}
