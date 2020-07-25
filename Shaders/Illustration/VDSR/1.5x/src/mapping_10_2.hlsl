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
res += mul(Get(s0,-dx,-dy), float4x4(0.001346908276901,0.038176581263542,0.006795819383115,0.153764203190804,-0.050157897174358,-0.102373816072941,-0.045946586877108,0.007741243578494,0.040843635797501,0.076196767389774,-0.031022578477859,0.070478327572346,0.147981375455856,0.129583194851875,-0.113641567528248,-0.031112307682633));
res += mul(Get(s0,-dx,0), float4x4(-0.059170406311750,-0.039175525307655,0.050897870212793,0.079097673296928,-0.031583286821842,-0.100694283843040,0.012529539875686,0.079855427145958,0.065873920917511,0.142679527401924,-0.015436457470059,-0.029277669265866,0.061686582863331,0.092268437147141,0.010028352960944,0.026213185861707));
res += mul(Get(s0,-dx,dy), float4x4(-0.029186902567744,-0.035998683422804,-0.057927533984184,-0.065354995429516,0.002636406803504,0.005426160991192,-0.106567539274693,-0.011995492503047,-0.133004963397980,0.032287292182446,-0.082763306796551,0.038396738469601,0.100972071290016,0.105912975966930,0.059052035212517,0.051954995840788));
res += mul(Get(s0,0,-dy), float4x4(0.032768417149782,0.133180946111679,-0.006353177130222,-0.024168409407139,-0.036680426448584,-0.058967065066099,0.086033932864666,0.095811277627945,0.110430806875229,0.035775505006313,-0.035256356000900,0.017653973773122,0.010317803360522,0.025563862174749,-0.045756995677948,-0.074970826506615));
res += mul(Get(s0,0,0), float4x4(0.020363092422485,0.066016681492329,0.044682577252388,0.127494573593140,0.034795384854078,0.084725067019463,0.070402942597866,0.019741140305996,-0.175125375390053,0.023263677954674,-0.020048504695296,-0.042504824697971,0.117985308170319,0.098599068820477,-0.052575349807739,-0.015761032700539));
res += mul(Get(s0,0,dy), float4x4(0.063379988074303,0.077002637088299,0.009503662586212,0.007825137116015,0.040237888693810,0.052688419818878,-0.009586347267032,-0.017853152006865,-0.067342311143875,0.050447221845388,-0.074777469038963,-0.056014176458120,0.046079669147730,-0.010920577682555,-0.009157177992165,0.008730672299862));
res += mul(Get(s0,dx,-dy), float4x4(-0.036291960626841,-0.093410812318325,0.127810850739479,0.126301348209381,-0.078418277204037,0.028308162465692,-0.023964252322912,-0.030865743756294,-0.029467191547155,0.058008786290884,0.040001817047596,-0.100204691290855,-0.052178338170052,-0.002505201846361,-0.096004508435726,0.032472368329763));
res += mul(Get(s0,dx,0), float4x4(0.044283147901297,0.081552416086197,0.024283807724714,0.072535328567028,0.111807510256767,0.031714059412479,0.088675215840340,0.074725434184074,-0.147531867027283,0.030278418213129,-0.042736727744341,0.096150889992714,0.056064181029797,0.057381492108107,-0.052644196897745,0.063702479004860));
res += mul(Get(s0,dx,dy), float4x4(0.041044645011425,-0.074929974973202,0.003346824320033,0.009395081549883,0.033147118985653,-0.024843063205481,-0.039201147854328,0.081070572137833,-0.083434730768204,0.025865757837892,-0.162281706929207,0.114445045590401,-0.018889361992478,0.104072414338589,-0.009816395118833,0.029086552560329));
res += mul(Get(s1,-dx,-dy), float4x4(-0.077847339212894,0.010790476575494,-0.004532440099865,0.077738597989082,-0.031839568167925,-0.105419568717480,0.036758571863174,0.017040073871613,0.024147531017661,-0.102600358426571,-0.007447609677911,0.013158469460905,0.069408908486366,-0.056699562817812,-0.027719674631953,0.024929875507951));
res += mul(Get(s1,-dx,0), float4x4(-0.097827605903149,-0.070444829761982,-0.067850351333618,-0.066375143826008,0.034456260502338,-0.095284290611744,-0.076358996331692,0.175846531987190,0.046318732202053,0.063388906419277,-0.043738264590502,0.039230123162270,0.086183369159698,-0.000787911354564,0.016136910766363,-0.013316244818270));
res += mul(Get(s1,-dx,dy), float4x4(0.022919444367290,-0.098497554659843,-0.149806246161461,-0.006774073932320,0.099016524851322,-0.098480850458145,0.084963619709015,-0.114029571413994,-0.031551517546177,-0.054566886276007,-0.041432358324528,-0.065634407103062,0.188134074211121,-0.016276178881526,0.099806666374207,0.082263246178627));
res += mul(Get(s1,0,-dy), float4x4(0.082303300499916,0.212673902511597,0.181842938065529,0.032988574355841,-0.009814634919167,0.119704075157642,0.130796596407890,0.043519739061594,-0.064186498522758,0.143821060657501,-0.009453034028411,-0.071003861725330,-0.055522292852402,-0.121673047542572,-0.041999764740467,-0.052637130022049));
res += mul(Get(s1,0,0), float4x4(-0.056553937494755,-0.003709097392857,0.032407194375992,-0.081723935902119,0.055665321648121,0.059115465730429,-0.105726979672909,0.224660456180573,0.016750868409872,0.028355738148093,-0.096361815929413,0.039920449256897,-0.105122037231922,0.035480346530676,-0.064172662794590,-0.100520841777325));
res += mul(Get(s1,0,dy), float4x4(-0.052621651440859,-0.072288244962692,-0.061930384486914,-0.012660807929933,-0.034932512789965,0.002691581612453,-0.088681422173977,0.133632317185402,-0.103006727993488,-0.005335385445505,0.043182272464037,0.051624342799187,-0.014558934606612,-0.054260019212961,0.135110020637512,0.092815876007080));
res += mul(Get(s1,dx,-dy), float4x4(-0.044137679040432,-0.077490836381912,0.021106297150254,-0.159560784697533,-0.077149935066700,0.023395188152790,0.063971154391766,-0.061353508383036,0.100871831178665,-0.041280277073383,-0.048828635364771,-0.040495209395885,-0.093025267124176,-0.048321519047022,-0.018905287608504,-0.015368461608887));
res += mul(Get(s1,dx,0), float4x4(-0.066220439970493,-0.005166447255760,0.168714210391045,0.113232411444187,0.045695915818214,-0.018315993249416,-0.005062092095613,0.024086926132441,0.075415343046188,0.123013839125633,0.031921423971653,-0.046618089079857,-0.031265772879124,-0.039156261831522,0.029828730970621,-0.073329843580723));
res += mul(Get(s1,dx,dy), float4x4(0.051113519817591,0.066465362906456,0.014436501078308,0.036240980029106,-0.026747405529022,-0.038260493427515,-0.094316430389881,0.002432277658954,0.029757129028440,0.031607676297426,0.027657940983772,0.153011322021484,-0.092132724821568,0.064834609627724,0.000304107641568,0.049710027873516));
res += mul(Get(s2,-dx,-dy), float4x4(-0.042088311165571,-0.015618595294654,-0.058883164077997,0.043184176087379,0.041916482150555,0.016427589580417,-0.039271492511034,0.013003895059228,-0.010596033185720,-0.146536752581596,-0.131524294614792,-0.060055825859308,-0.041086327284575,-0.073376305401325,0.023992730304599,-0.074771218001842));
res += mul(Get(s2,-dx,0), float4x4(0.001482537249103,-0.118984140455723,-0.012427907437086,0.076578602194786,-0.098824173212051,0.182649388909340,0.059825919568539,0.068734429776669,0.018010489642620,0.090975493192673,0.156398892402649,0.027255119755864,0.020928137004375,-0.004244421143085,0.099676139652729,-0.063545323908329));
res += mul(Get(s2,-dx,dy), float4x4(-0.040710363537073,-0.009581262245774,0.007618167903274,0.100303016602993,-0.002835141262040,0.022325892001390,-0.075288549065590,-0.012524332851171,-0.020830122753978,-0.011905894614756,0.030951878055930,0.075498946011066,-0.012831718660891,-0.007042945828289,-0.054740395396948,0.050288211554289));
res += mul(Get(s2,0,-dy), float4x4(-0.086099833250046,0.079301461577415,0.015385432168841,0.062533602118492,0.118757419288158,0.020192356780171,-0.102004811167717,-0.043829910457134,0.091043174266815,-0.079605072736740,-0.187254920601845,-0.169790118932724,-0.052929278463125,0.090916931629181,0.054612908512354,-0.000661634607241));
res += mul(Get(s2,0,0), float4x4(0.044111881405115,-0.079430557787418,0.059653952717781,0.021858297288418,0.101041115820408,-0.087479300796986,0.034525014460087,0.200678557157516,0.117443829774857,0.048541761934757,0.074922613799572,0.110127553343773,0.132351040840149,0.006041918415576,-0.121937327086926,-0.041942711919546));
res += mul(Get(s2,0,dy), float4x4(0.058406386524439,-0.083847895264626,-0.051851585507393,-0.151060312986374,0.038475677371025,0.035684816539288,-0.039622385054827,0.039598114788532,0.033828113228083,0.021248813718557,0.050875354558229,0.040306188166142,-0.007181206252426,0.078435637056828,0.084687620401382,-0.086970627307892));
res += mul(Get(s2,dx,-dy), float4x4(-0.018161166459322,-0.014407240785658,0.025313911959529,-0.042541399598122,0.042686551809311,0.145207792520523,0.013080277480185,0.030643060803413,0.026972370222211,0.144305139780045,-0.001445314264856,-0.122654974460602,0.012032857164741,-0.060769792646170,0.030372042208910,-0.054799478501081));
res += mul(Get(s2,dx,0), float4x4(0.033400639891624,-0.135125115513802,0.039455913007259,0.236226558685303,-0.046015072613955,0.153956443071365,0.036210905760527,-0.010757167823613,-0.058327708393335,-0.021873928606510,0.001809869543649,0.003058662870899,0.153472676873207,0.168420895934105,-0.033596105873585,0.028187703341246));
res += mul(Get(s2,dx,dy), float4x4(0.142556324601173,0.026796426624060,-0.035976488143206,-0.029712853953242,0.196267127990723,-0.004327523522079,0.055725388228893,-0.021981110796332,0.005674656014889,0.032200273126364,-0.020054876804352,0.056747414171696,0.072018563747406,0.042953655123711,0.099394351243973,0.036791820079088));
res += mul(Get(s3,-dx,-dy), float4x4(-0.031950980424881,0.016247343271971,-0.011820857413113,0.055685892701149,0.003085379721597,0.060560844838619,0.042727742344141,0.072016790509224,0.003227037843317,-0.006190686486661,-0.084721446037292,-0.027943713590503,0.083081044256687,-0.010889724828303,0.018301023170352,0.037242356687784));
res += mul(Get(s3,-dx,0), float4x4(0.061951324343681,-0.021271424368024,0.073046624660492,-0.085330992937088,-0.124220728874207,-0.005652805790305,0.002493620617315,0.059251651167870,0.115433283150196,-0.011453953571618,-0.026933806017041,0.028503505513072,-0.076301597058773,-0.143987625837326,0.004360111895949,-0.038514345884323));
res += mul(Get(s3,-dx,dy), float4x4(-0.032536618411541,0.055234480649233,-0.118166223168373,0.020403290167451,0.029038157314062,0.053874492645264,-0.115199968218803,0.022637018933892,0.071731083095074,0.025551855564117,-0.003328623482957,-0.018586480990052,-0.036257635802031,-0.037870530039072,0.009516506455839,0.012327860109508));
res += mul(Get(s3,0,-dy), float4x4(-0.024854149669409,0.142165794968605,-0.025069629773498,-0.037077628076077,-0.108144067227840,0.021398106589913,0.086498089134693,0.020708888769150,-0.090362899005413,-0.019307250156999,-0.071067191660404,-0.070559695363045,-0.003860001219437,0.004325066227466,-0.028548503294587,0.034013804048300));
res += mul(Get(s3,0,0), float4x4(-0.019642286002636,0.106708861887455,-0.058905865997076,-0.051370117813349,-0.072638258337975,-0.030950510874391,-0.001108170486987,0.084686875343323,0.079795382916927,0.000611964904238,0.166804969310760,-0.024983946233988,-0.046119399368763,0.145695134997368,0.045166306197643,-0.049155849963427));
res += mul(Get(s3,0,dy), float4x4(-0.062581881880760,-0.019109783694148,-0.107656739652157,-0.048930577933788,0.061664883047342,0.076713860034943,-0.088243320584297,0.034794259816408,-0.071627497673035,-0.081216715276241,0.079691872000694,0.140093594789505,-0.122132681310177,0.060594197362661,-0.025781348347664,0.025478413328528));
res += mul(Get(s3,dx,-dy), float4x4(0.034254811704159,0.042968016117811,0.036316957324743,0.037935160100460,-0.025119638070464,-0.036138862371445,-0.037648677825928,0.070763587951660,0.055663138628006,0.006110948510468,0.011099742725492,0.090945445001125,0.014012827537954,-0.013187717646360,-0.149523556232452,0.024478269740939));
res += mul(Get(s3,dx,0), float4x4(0.004354048985988,-0.045761145651340,-0.008488859981298,0.113094031810760,-0.039183001965284,-0.004312302451581,0.030070114880800,0.148695230484009,0.029026199132204,0.093461312353611,0.005757300648838,0.089728541672230,-0.008205663412809,-0.124777264893055,0.011623658239841,0.064584463834763));
res += mul(Get(s3,dx,dy), float4x4(-0.017494201660156,0.052192974835634,-0.040067099034786,0.073706798255444,0.115957476198673,0.031303025782108,0.006247227545828,-0.037426710128784,0.054173983633518,0.050393693149090,0.031468074768782,-0.097593508660793,0.049668122082949,0.087697207927704,-0.079827636480331,-0.000832833466120));
return max(float4(0,0,0,0), res);
}
