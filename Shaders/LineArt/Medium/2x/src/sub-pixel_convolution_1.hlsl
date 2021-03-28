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
float4 res = float4(-0.003011112101376,0.000023812646759,-0.000583161017857,0.002331813797355);
res += mul(Get(s0,-dx,-dy), float4x4(0.002639235695824,-0.003075190354139,0.014431022107601,0.003486059373245,0.018038127571344,-0.012350389733911,0.001119818538427,-0.010106153786182,-0.003860916709527,0.006776534952223,-0.001784504507668,-0.000976150971837,0.019663838669658,0.003209391608834,-0.013495016843081,-0.004171160049736));
res += mul(Get(s0,-dx,0), float4x4(0.018909318372607,-0.040441457182169,0.012900533154607,0.005351829808205,-0.003080830676481,-0.014552988111973,-0.006976271979511,0.008666963316500,-0.037447575479746,-0.036453686654568,-0.009867641143501,-0.006686275824904,0.012140752747655,0.025295147672296,-0.006223192438483,-0.012430124916136));
res += mul(Get(s0,-dx,dy), float4x4(-0.012654433958232,0.019421895965934,-0.008617721498013,0.000447755388450,-0.011001002974808,0.011870585381985,-0.000159508839715,-0.000066010237788,0.006836012471467,-0.000650410249364,0.008393948897719,0.003361830720678,0.004689947701991,0.007994499988854,0.000309055147227,-0.003929646220058));
res += mul(Get(s0,0,-dy), float4x4(0.025934437289834,-0.008877791464329,0.010147470049560,-0.005292699672282,-0.034665394574404,0.031382665038109,0.006792129948735,0.020320152863860,0.001184589462355,0.009997715242207,0.001089155091904,0.012338608503342,-0.027213919907808,-0.010071885772049,0.003470210358500,0.013242091983557));
res += mul(Get(s0,0,0), float4x4(0.002574501326308,0.014621843583882,-0.002122580073774,-0.046433284878731,0.048251517117023,-0.018520694226027,0.043457008898258,-0.051684085279703,-0.002719550626352,-0.012607415206730,-0.033661901950836,-0.039069890975952,0.013563408516347,-0.007202476728708,-0.014963784255087,-0.030242174863815));
res += mul(Get(s0,0,dy), float4x4(0.000631812785286,0.001224597217515,-0.008846458978951,0.017263960093260,-0.001501466729678,-0.021994639188051,-0.016006434336305,0.003615336259827,0.007122320123017,0.014280820265412,0.017002463340759,0.018397243693471,-0.005030568223447,-0.001909281709231,-0.004953145515174,0.002232286380604));
res += mul(Get(s0,dx,-dy), float4x4(0.000554548925720,-0.001734605990350,0.009846446104348,-0.007498959545046,-0.007841858081520,0.005543407052755,-0.028995262458920,0.017364930361509,-0.000589837378357,0.000293308374239,-0.000452038773801,0.002295898040757,-0.000509414880071,0.001470740884542,0.014825007878244,0.000292641692795));
res += mul(Get(s0,dx,0), float4x4(-0.009649963118136,-0.014246284030378,0.000984243000858,0.005212487187237,-0.005118332803249,0.007089888211340,0.003618281334639,0.014461081475019,-0.007536076009274,-0.005297833587974,0.020722387358546,0.009119801223278,-0.015996601432562,-0.010194528847933,0.011185741052032,0.028723599389195));
res += mul(Get(s0,dx,dy), float4x4(0.001800956437364,0.001320461276919,0.003757835365832,0.000170005616383,0.006168274674565,-0.002122315112501,0.008768787607551,-0.013953470624983,0.002526725642383,0.000453248998383,0.005120498128235,0.019376905634999,0.004249407909811,-0.002136980649084,0.004697312600911,0.001769650960341));
res += mul(Get(s1,-dx,-dy), float4x4(0.008446073159575,0.001131666358560,-0.008889224380255,-0.002661053091288,-0.040467664599419,0.020933046936989,-0.002019560663030,0.009116293862462,-0.001429587835446,-0.005418477114290,-0.002145525533706,0.001215382246301,-0.023944577202201,0.001082382979803,0.010520795360208,0.007906782440841));
res += mul(Get(s1,-dx,0), float4x4(-0.017035545781255,-0.002298955339938,0.001637125387788,-0.004655587021261,0.002677475102246,0.010911708697677,-0.000111877256131,0.013627477921546,-0.005307591054589,0.018277306109667,-0.000105197934317,-0.002315082820132,0.034582652151585,-0.011051690205932,-0.034931525588036,-0.017018461599946));
res += mul(Get(s1,-dx,dy), float4x4(0.007572642993182,-0.006029415410012,-0.000700090196915,-0.002507915720344,0.004070402588695,-0.003689401317388,0.000960136472713,0.000414755515521,0.018764875829220,-0.021896054968238,0.002105860970914,-0.007891238667071,0.001341896248050,0.022922936826944,-0.000435016176198,-0.013237917795777));
res += mul(Get(s1,0,-dy), float4x4(-0.000052588107792,-0.025022368878126,0.026233114302158,-0.012432341463864,-0.007797102909535,0.021954437717795,-0.053175650537014,0.030222458764911,0.002852618228644,-0.010574013926089,0.006998401135206,-0.012672736309469,0.006539139430970,0.008182030171156,0.014299657195807,-0.013776636682451));
res += mul(Get(s1,0,0), float4x4(-0.009414593689144,0.028579549863935,-0.039983578026295,0.026503995060921,0.007886958308518,0.007737399544567,0.011946727521718,-0.005670174956322,-0.022141704335809,0.016154425218701,-0.026879660785198,0.045667644590139,-0.044443260878325,-0.034957896918058,0.020996630191803,0.052229043096304));
res += mul(Get(s1,0,dy), float4x4(0.013184003531933,-0.019815810024738,0.024565514177084,-0.016264047473669,-0.004789902828634,-0.002604772802442,-0.002025515073910,-0.009639863856137,0.026651840656996,-0.003949730657041,0.041312821209431,-0.028144242241979,0.005145803559572,-0.005910937208682,-0.004023265093565,-0.011758302338421));
res += mul(Get(s1,dx,-dy), float4x4(0.002051030285656,0.002900087973103,-0.008013520389795,-0.010283149778843,-0.009927440434694,0.002643320942298,-0.006546912714839,0.004177617840469,-0.001014225068502,0.002246456919238,0.000416554976255,0.000147411046783,0.010520255193114,0.000703396508470,-0.019444538280368,-0.002309229923412));
res += mul(Get(s1,dx,0), float4x4(0.002650174545124,0.004361358005553,0.012095149606466,0.006109422072768,0.000498331035487,-0.004707488697022,0.006199888419360,0.009617049247026,-0.000507421209477,0.003018385497853,-0.004355385899544,-0.004791848361492,0.007878758944571,0.018990825861692,0.015580919571221,-0.009996557608247));
res += mul(Get(s1,dx,dy), float4x4(-0.001047224737704,-0.003182418178767,0.004036995582283,-0.000369804562069,0.000589851231780,0.000141141281347,-0.001425134250894,0.002041344065219,-0.002128507010639,-0.004975072573870,0.003098927205428,0.004113460890949,-0.005189916584641,-0.005434882361442,-0.000237174448557,0.009485634043813));
res += mul(Get(s2,-dx,-dy), float4x4(-0.001828000182286,0.003177702659741,-0.000653779192362,-0.001039490685798,-0.011697493493557,0.014990610070527,-0.006224511191249,0.009078917093575,-0.001051426865160,-0.000771944818553,0.001466518035159,-0.002335984492674,0.005050195846707,0.002766329329461,-0.007287601940334,-0.002161810174584));
res += mul(Get(s2,-dx,0), float4x4(0.004130742978305,-0.001981368754059,-0.004321143031120,0.001280497875996,0.018669690936804,-0.005819710902870,-0.004819526802748,-0.000764002907090,0.028440520167351,0.015079948119819,-0.010947273112833,-0.002135111484677,0.020340507850051,0.011852435767651,-0.028855031356215,-0.022556534036994));
res += mul(Get(s2,-dx,dy), float4x4(-0.001412780256942,0.002210514154285,-0.000171113293618,0.000104720573290,0.000488952849992,-0.009433351457119,0.008496904745698,0.003597238566726,-0.000659332261421,0.015145212411880,-0.003588154213503,-0.009025865234435,-0.000754819309805,0.008663501590490,-0.003989686723799,-0.017855366691947));
res += mul(Get(s2,0,-dy), float4x4(0.001696000108495,0.007268460001796,-0.001185752800666,0.008748583495617,0.036933977156878,-0.017222534865141,0.007927401922643,0.012490409426391,0.010559798218310,-0.003352070925757,-0.002526188502088,-0.000331313378410,-0.005839274264872,0.001129674259573,0.003011907683685,0.005684156436473));
res += mul(Get(s2,0,0), float4x4(-0.010229377076030,-0.020703790709376,0.011655124835670,-0.017288515344262,-0.023707699030638,-0.019189037382603,0.039766665548086,-0.045475434511900,0.034570455551147,0.038552984595299,-0.044590722769499,-0.032079230993986,-0.043085135519505,-0.030840793624520,0.040601883083582,0.015228032134473));
res += mul(Get(s2,0,dy), float4x4(-0.044388268142939,0.052143923938274,-0.030343065038323,0.031357493251562,-0.021434038877487,0.042942818254232,-0.028042666614056,0.009879145771265,-0.004184570629150,0.005256530828774,0.004924061242491,-0.010202268138528,-0.006401600781828,-0.027662739157677,0.004632411524653,0.026843933388591));
res += mul(Get(s2,dx,-dy), float4x4(-0.001336533343419,-0.001149030984379,0.000369661836885,0.001323859207332,-0.005166911054403,-0.006908141076565,0.011530961841345,-0.023799650371075,0.004345476627350,0.003925318829715,-0.010631850920618,0.000304572429741,0.001246428699233,-0.000846656213980,-0.001956817228347,-0.001260682009161));
res += mul(Get(s2,dx,0), float4x4(-0.001028899336234,0.007202532608062,-0.010592990554869,-0.000692997477017,-0.015744803473353,0.022477487102151,-0.045037236064672,0.032630641013384,-0.006369411479682,-0.001266022445634,-0.002562912646681,-0.015552459284663,0.016675759106874,0.010739775374532,-0.003674738341942,0.001589668099768));
res += mul(Get(s2,dx,dy), float4x4(0.001620569033548,0.001474632299505,-0.016628496348858,0.026277502998710,0.013256921432912,-0.013194061815739,0.010804775170982,0.018687073141336,0.002444873098284,-0.002441904973239,-0.002915848512203,-0.000045618675358,0.008410426788032,0.015213451348245,-0.004883881658316,-0.011805374175310));
res += mul(Get(s3,-dx,-dy), float4x4(0.005012876819819,-0.000073233488365,-0.003860934171826,0.000142068936839,0.012441973201931,0.002217941218987,0.003466209862381,-0.002207837533206,-0.004933664109558,0.007009802851826,-0.002499433932826,0.002349824178964,-0.001169924275018,-0.002795045031235,0.007215146441013,0.004463843069971));
res += mul(Get(s3,-dx,0), float4x4(-0.011697519570589,-0.001630995189771,-0.000824595859740,-0.008696374483407,0.027982387691736,0.027353396639228,0.024552514776587,0.020024195313454,0.012801185250282,-0.004469837062061,0.003985878080130,-0.003239147597924,-0.005374198779464,-0.003003421006724,-0.002650216221809,0.002373794326559));
res += mul(Get(s3,-dx,dy), float4x4(0.002222620183602,-0.004669668618590,0.001091000856832,0.006696728523821,0.000596821133513,0.005853622220457,-0.004533255472779,0.003852814435959,-0.001742959953845,-0.005231486167759,0.002637954894453,0.002020898973569,0.001207711407915,-0.007593864575028,0.000975771166850,-0.002219561953098));
res += mul(Get(s3,0,-dy), float4x4(-0.021846722811460,0.000526174902916,0.010452619753778,-0.004700399003923,0.013121891766787,0.009706369601190,0.005042200908065,0.004765491932631,-0.006062096450478,0.020111057907343,-0.013076066039503,0.014248578809202,0.031073460355401,-0.008299145847559,0.003250242676586,-0.014783360064030));
res += mul(Get(s3,0,0), float4x4(-0.029709599912167,-0.049966368824244,0.030621152371168,0.038301311433315,-0.045989155769348,-0.032195225358009,-0.043054085224867,-0.033943090587854,0.051064975559711,-0.051772221922874,0.042693056166172,-0.027657689526677,-0.007843182422221,0.034064888954163,-0.002574139041826,0.012067942880094));
res += mul(Get(s3,0,dy), float4x4(0.000063064268033,0.000145525744301,-0.002493506763130,0.003872606437653,0.009613568894565,-0.007861996069551,0.008164183236659,-0.012549957260489,-0.017595930024981,0.000282668363070,-0.010373388417065,-0.009624495171010,0.011167172342539,-0.012051479890943,0.007154863327742,-0.006916945334524));
res += mul(Get(s3,dx,-dy), float4x4(-0.013805760070682,-0.006305690389127,0.022896740585566,0.007519045844674,0.003924792166799,-0.000046187102271,0.018134266138077,0.007347012404352,0.000131423992570,-0.001437285798602,0.003306350205094,0.006717655342072,0.000651050650049,0.002497598063201,0.019131857901812,-0.001539264805615));
res += mul(Get(s3,dx,0), float4x4(-0.005556139629334,-0.010677758604288,0.017520746216178,0.033974494785070,0.016943864524364,0.014283222146332,0.016126133501530,0.020396903157234,0.007177264895290,-0.004742256365716,0.022234920412302,-0.030043950304389,-0.006431739777327,-0.009158799424767,-0.006198977120221,0.011171095073223));
res += mul(Get(s3,dx,dy), float4x4(-0.000575935759116,-0.001797991688363,0.001346634933725,0.002216719090939,-0.003733528777957,0.002320548053831,0.002709304681048,0.005078454967588,-0.004815565887839,0.003320093965158,-0.013494828715920,0.006179952993989,-0.000160768366186,-0.003259732620791,0.001486827968620,-0.010702241212130));
res += mul(Get(s4,-dx,-dy), float4x4(-0.002996591618285,-0.007307380903512,0.001698299311101,-0.000812722078990,0.003117263549939,-0.007460510358214,-0.003047094913200,0.001338878762908,-0.002171938540414,-0.002291084267199,0.010785299353302,0.003430657321587,0.004858449567109,-0.000345589738572,-0.005964906420559,-0.005724507849663));
res += mul(Get(s4,-dx,0), float4x4(-0.015694253146648,0.019165972247720,-0.004480137489736,0.006315104663372,-0.026572097092867,0.020683109760284,-0.001441586762667,0.000534296385013,0.001611417857930,-0.000664915191010,0.006530100014061,0.013787120580673,-0.015262229368091,-0.002359862904996,0.016029257327318,0.004782230593264));
res += mul(Get(s4,-dx,dy), float4x4(0.011991037987173,-0.010632609948516,0.005002150777727,-0.002852379344404,0.004501232411712,0.010049723088741,-0.001505104009993,0.003454350167885,-0.000992529792711,-0.000773484760430,-0.000947514548898,-0.000056374978158,0.004039182793349,-0.005460347514600,0.001222237246111,0.008321231231093));
res += mul(Get(s4,0,-dy), float4x4(0.007825303822756,-0.017833707854152,-0.000245141127380,-0.016239937394857,0.016692815348506,-0.001795023330487,0.022447435185313,-0.015044542960823,0.019981598481536,-0.001320062787272,-0.021531194448471,-0.012132927775383,-0.012199217453599,0.005182878114283,0.013795465230942,0.001552165369503));
res += mul(Get(s4,0,0), float4x4(-0.037491783499718,0.037162158638239,-0.036800306290388,0.040626324713230,0.004639791324735,-0.027150444686413,-0.038986001163721,0.008864966221154,-0.003553743707016,0.038583144545555,-0.021194577217102,-0.025235783308744,0.042955942451954,-0.002429850399494,-0.028543995693326,0.005990339908749));
res += mul(Get(s4,0,dy), float4x4(0.019293222576380,-0.005980435293168,0.020463809370995,-0.010214542038739,-0.030589237809181,0.035492781549692,-0.013434220105410,0.033168029040098,0.007225023582578,-0.007327713072300,0.004584717098624,-0.001220497186296,-0.002176784444600,0.023496782407165,-0.002955239731818,-0.027759607881308));
res += mul(Get(s4,dx,-dy), float4x4(0.003726320806891,-0.004434469621629,0.006073256954551,-0.011527549475431,0.004198774695396,-0.001833481015638,0.000714360503480,0.001820756820962,-0.020861612632871,-0.007556844037026,0.014478688128293,-0.000535410712473,0.007602166384459,0.006013205274940,-0.013724385760725,0.005750305484980));
res += mul(Get(s4,dx,0), float4x4(-0.005931993946433,0.006951185874641,-0.017111871391535,0.014878001995385,-0.004452342167497,-0.002050145994872,0.014061754569411,-0.017963789403439,-0.012533864006400,-0.022764563560486,0.001063990755938,0.031534451991320,-0.011913942173123,0.000741700874642,0.006824849173427,-0.023658456280828));
res += mul(Get(s4,dx,dy), float4x4(0.003265374572948,-0.001598981791176,0.010712494142354,-0.003786907996982,-0.000889476679731,0.004432456102222,-0.014463567174971,0.010132214985788,0.002316043013707,0.001234426163137,0.004765539895743,-0.005398016888648,-0.007902137935162,-0.017050685361028,0.001888990635052,0.014977440237999));
res += mul(Get(s5,-dx,-dy), float4x4(-0.000518027460203,0.002731201006100,0.002510365331545,-0.001850195811130,-0.005657097790390,0.001710188109428,0.001970412908122,-0.000276367005426,0.001131448312663,0.000918973237276,-0.005595958326012,0.000438865448814,-0.008815894834697,0.004698228556663,0.013777506537735,-0.002304688794538));
res += mul(Get(s5,-dx,0), float4x4(0.011261926963925,-0.004589749500155,-0.002206270815805,-0.000385225925129,-0.008657754398882,-0.014961558394134,-0.005476796068251,0.001939668087289,0.003213585354388,0.001815208815970,-0.011594959534705,-0.014803633093834,-0.013639593496919,-0.032349701970816,0.017970126122236,0.025323439389467));
res += mul(Get(s5,-dx,dy), float4x4(0.001471942523494,-0.008148401044309,0.000455299363239,-0.000609657901805,0.002478036563843,-0.000299891660688,-0.001842973753810,-0.008185273036361,-0.002858360763639,-0.000675511255395,0.001973288133740,-0.002446730155498,-0.006287040188909,-0.004895887337625,0.001323341974057,0.007751998491585));
res += mul(Get(s5,0,-dy), float4x4(-0.019164627417922,0.016731897369027,-0.017687689512968,0.013347237370908,0.001515678013675,-0.004857353400439,0.008670132607222,0.006163061130792,-0.006340226158500,-0.001706158393063,0.008517052046955,0.002674014773220,0.022006750106812,0.004789850208908,-0.029126979410648,0.000500336347613));
res += mul(Get(s5,0,0), float4x4(0.047337360680103,-0.026807321235538,0.045198433101177,-0.025848621502519,-0.026839241385460,-0.002782075200230,0.038573771715164,0.024005938321352,-0.025224657729268,-0.023033801466227,0.028005402535200,0.027850421145558,0.011777104809880,0.033590607345104,0.009082389995456,-0.026852544397116));
res += mul(Get(s5,0,dy), float4x4(0.007244304288179,-0.035403523594141,0.012952565215528,-0.028884816914797,-0.000721724296454,-0.021611809730530,0.008103541098535,0.023818438872695,0.000521903566550,-0.006486669182777,0.001259784912691,0.009391931816936,0.003549859393388,-0.000289007177344,-0.002361141378060,0.003297587856650));
res += mul(Get(s5,dx,-dy), float4x4(-0.000142659017001,-0.003528696950525,-0.005443098954856,0.005364552605897,0.011977394111454,0.004611313343048,-0.010706254281104,-0.006692256312817,0.015543757937849,0.004618223756552,-0.008834554813802,-0.006146729458123,-0.012442683801055,-0.005866848398000,0.004716749303043,0.001463252468966));
res += mul(Get(s5,dx,0), float4x4(0.003825465915725,0.001577548682690,0.020934017375112,-0.005203461274505,0.030637098476291,0.024170832708478,-0.030830912292004,-0.025914017111063,0.026701034978032,0.027089230716228,-0.018571570515633,-0.020867060869932,-0.000227010154049,-0.010700215585530,-0.010319768451154,-0.002187884645537));
res += mul(Get(s5,dx,dy), float4x4(0.002450292697176,-0.003419806249440,-0.002273468300700,-0.014910097233951,0.001434860052541,0.015970027074218,-0.001857085037045,-0.012820171192288,0.001002717763186,0.008726839907467,-0.001547363353893,-0.005700348410755,0.001902989344671,0.004798810929060,-0.001618303009309,-0.005770253017545));
return res;
}