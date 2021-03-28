sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.000105198581878,0.000371108850231,0.000041554972995,-0.000247968273470);
res += mul(Get(s0,-dx,-dy), float4x4(0.000242853449890,-0.002070392947644,-0.004046788439155,-0.002521203365177,-0.004365959204733,-0.001498499885201,0.001802233164199,0.002923557534814,-0.001115595921874,0.002417285693809,0.002304313937202,0.001679170993157,0.009816050529480,0.005660953931510,0.000734702509362,-0.000823256385047));
res += mul(Get(s0,-dx,0), float4x4(0.000829058873933,-0.003296714741737,-0.005635152105242,-0.004103436134756,-0.003767637535930,-0.005914602894336,-0.007499331142753,-0.007792715448886,-0.005429946817458,-0.000954995048232,-0.001235583098605,-0.003030673600733,0.009197679348290,0.010943517088890,0.010351964272559,0.010071247816086));
res += mul(Get(s0,-dx,dy), float4x4(0.006336022634059,0.007607066538185,0.004840853158385,0.002486703218892,0.000436087197158,-0.000299801380606,-0.001064473530278,-0.001990962540731,-0.000127372215502,0.001154005876742,-0.001096969470382,-0.005160327535123,0.000985252088867,0.003234745934606,0.004414548631757,0.005350323393941));
res += mul(Get(s0,0,-dy), float4x4(0.030196269974113,0.009098605252802,-0.005898252129555,-0.007890239357948,0.009799026884139,0.001091131940484,-0.004128911532462,-0.005106970202178,0.017704978585243,-0.002374371746555,-0.010961464606225,-0.009686791338027,0.003057705005631,0.011326784268022,0.010134195908904,0.006759039591998));
res += mul(Get(s0,0,0), float4x4(-0.042034890502691,-0.019275939092040,0.022290030494332,0.043572109192610,0.015980787575245,0.021652732044458,0.022474771365523,0.017761206254363,-0.026010056957603,-0.029209878295660,0.007408313453197,0.031599085777998,-0.033791076391935,-0.041036698967218,-0.038435902446508,-0.021577944979072));
res += mul(Get(s0,0,dy), float4x4(0.003140710759908,-0.000915306096431,-0.012899768538773,-0.030143532902002,-0.000781070615631,0.001281028729863,0.004934570286423,0.010345374234021,-0.002145873149857,0.010052018798888,0.023389637470245,0.007332837209105,0.009102263487875,0.010703552514315,0.001174519537017,-0.016939833760262));
res += mul(Get(s0,dx,-dy), float4x4(-0.000838472740725,-0.000086463231128,-0.001906744088046,-0.002142787212506,-0.016370013356209,-0.004268891178071,0.001123942900449,0.001941424910910,0.003730626776814,-0.005921860225499,-0.008497820235789,-0.006427207496017,0.014269100502133,0.015590954571962,0.011596585623920,0.006381002254784));
res += mul(Get(s0,dx,0), float4x4(0.026257660239935,0.026486366987228,0.014259000308812,0.001546491286717,-0.042414195835590,-0.051564890891314,-0.045676745474339,-0.030694317072630,-0.016546152532101,0.002260925481096,0.017531946301460,0.014411705546081,0.000275816535577,-0.003536831587553,-0.002636784221977,0.004557176493108));
res += mul(Get(s0,dx,dy), float4x4(-0.004451034124941,-0.004947533831000,0.000450337858638,0.012988646514714,0.005196256097406,0.002235631691292,-0.009230940602720,-0.025853382423520,0.009042158722878,0.011357928626239,0.000159380913828,-0.016889266669750,0.006922283675522,0.011265097185969,0.010826011188328,0.006477937567979));
res += mul(Get(s1,-dx,-dy), float4x4(0.003034545108676,-0.001567612751387,-0.002708906074986,-0.002332889940590,0.000396584422560,0.002914341632277,0.005886677186936,0.004566896241158,0.001681609195657,0.001310850726441,0.002416214672849,0.002430372871459,-0.004566309042275,-0.002219180576503,-0.001663700561039,-0.001774868345819));
res += mul(Get(s1,-dx,0), float4x4(0.003082519629970,0.003853053785861,0.002947325119749,0.004445067141205,-0.004298996180296,-0.003834752133116,0.002550726523623,0.003006247803569,0.001281428034417,0.002903439570218,0.003252256894484,0.002022017026320,0.003859004704282,0.004148479085416,0.001416696468368,-0.004994862247258));
res += mul(Get(s1,-dx,dy), float4x4(-0.002584643196315,-0.005349664017558,-0.005892899353057,-0.000472510699183,0.000017448217477,-0.002254185266793,-0.000949604844209,-0.001755677512847,0.001409232849255,-0.000451267231256,-0.003008189378306,-0.002711808308959,0.002810513367876,0.004772066604346,0.004791015759110,0.002818272681907));
res += mul(Get(s1,0,-dy), float4x4(-0.003855923656374,0.015282084234059,0.009875935502350,0.003963042981923,-0.025684732943773,-0.023019816726446,-0.001113134436309,0.005757553037256,0.004888679366559,-0.003625732148066,-0.007411544211209,-0.006643627304584,-0.010799900628626,-0.004611735232174,0.006287654861808,0.006316378246993));
res += mul(Get(s1,0,0), float4x4(0.050073277205229,0.012681304477155,-0.042967304587364,-0.042848154902458,-0.013648684136569,0.021100645884871,0.038005102425814,0.004906337242573,-0.010098373517394,0.001953235361725,0.010158955119550,0.010196259245276,-0.038309976458549,0.017235623672605,0.045261472463608,0.017863642424345));
res += mul(Get(s1,0,dy), float4x4(-0.006704900413752,-0.014907090924680,-0.006246589124203,0.029701875522733,0.004638202954084,0.007138963788748,-0.002878467785195,-0.018590146675706,0.004160227719694,-0.002279635053128,-0.011792653240263,-0.015449139289558,0.005367813631892,0.011609316803515,-0.006890201941133,-0.042913712561131));
res += mul(Get(s1,dx,-dy), float4x4(0.000119015327073,0.002442634897307,0.004707173909992,0.004576399456710,0.011385879479349,-0.002567894523963,-0.007017705589533,-0.003766249865294,0.004496115725487,0.000098772135971,-0.000671841087751,-0.000925653264858,-0.015134812332690,0.008707007393241,0.012576756998897,0.008488371968269));
res += mul(Get(s1,dx,0), float4x4(-0.008797783404589,0.013196955434978,0.012938238680363,0.004718659911305,-0.010895364917815,-0.026509797200561,-0.008797575719655,0.013355636037886,0.006449140608311,0.013931084424257,0.016551859676838,0.013911883346736,0.022784303873777,0.011958656832576,-0.018373871222138,-0.033219128847122));
res += mul(Get(s1,dx,dy), float4x4(0.009846087545156,0.006225184071809,-0.014853873290122,-0.026789981871843,-0.001116743893363,0.002940800040960,0.013661542907357,0.012703727930784,-0.001398567226715,-0.005830511916429,-0.009552571922541,-0.006425075698644,-0.005634945351630,-0.005422924645245,0.001409066724591,0.013908114284277));
res += mul(Get(s2,-dx,-dy), float4x4(0.009250984527171,0.003576160175726,0.000352547271177,-0.001292049884796,0.006886174902320,-0.002614183351398,-0.007810153067112,-0.003561021294445,0.003141343127936,0.000359814293915,-0.001395378378220,-0.002459270181134,-0.005680119618773,0.001021900214255,0.002618584316224,0.000194511565496));
res += mul(Get(s2,-dx,0), float4x4(0.002644071355462,0.004156928509474,0.007647667545825,0.010724347084761,-0.000139890282298,-0.000914978270885,0.000709892890882,0.006936913356185,0.006041727494448,0.008593905717134,0.009520060382783,0.007927748374641,-0.007840718142688,-0.008981170132756,-0.007107906509191,-0.004881980363280));
res += mul(Get(s2,-dx,dy), float4x4(0.002058058977127,0.001892847358249,0.000368203938706,0.000389204506064,-0.001639804104343,-0.001515169278719,-0.000683224818204,0.001107589225285,-0.002630952978507,-0.003318565199152,-0.001604956109077,0.002033052500337,-0.002681440440938,-0.004440954420716,-0.005407589022070,-0.006756941787899));
res += mul(Get(s2,0,-dy), float4x4(-0.001217015902512,0.004970311652869,0.000932644237764,-0.004214359447360,0.053898055106401,0.016952652484179,-0.022212343290448,-0.023086942732334,-0.011583520099521,-0.006329108960927,-0.000252106052358,0.002438566647470,-0.028722725808620,-0.013641336932778,0.000803335802630,0.006446967367083));
res += mul(Get(s2,0,0), float4x4(-0.036497071385384,-0.049493450671434,-0.040319800376892,-0.019774572923779,-0.010827759280801,-0.034198544919491,-0.026284575462341,0.028390673920512,-0.001765887951478,-0.003205267479643,-0.007164718117565,-0.011674910783768,0.026090931147337,0.011451866477728,-0.019444685429335,-0.039123795926571));
res += mul(Get(s2,0,dy), float4x4(-0.002760652918369,0.001463299151510,0.001222563441843,-0.010788792744279,0.004558476153761,0.004577599000186,0.002755579771474,-0.000517775246408,-0.001009929343127,-0.003316894406453,-0.004066868685186,-0.002198719885200,-0.004751111846417,-0.004239749629050,0.003978126682341,0.016672285273671));
res += mul(Get(s2,dx,-dy), float4x4(-0.013165029697120,-0.005295898765326,-0.001424646470696,-0.000447529222583,-0.005756983533502,-0.018164187669754,-0.009201833978295,0.005456173792481,0.023285996168852,0.008253061212599,0.000865019916091,0.000499127781950,0.008874634280801,0.000303958513541,-0.001408578245901,-0.000495353189763));
res += mul(Get(s2,dx,0), float4x4(0.006027314346284,-0.004761953372508,-0.014412796124816,-0.016895309090614,-0.005146325565875,-0.005584320984781,0.002623404609039,0.007645646575838,0.046206668019295,0.064729683101177,0.064306996762753,0.047063503414392,-0.001802180195227,0.011326360516250,0.020947674289346,0.020277338102460));
res += mul(Get(s2,dx,dy), float4x4(-0.002232255646959,0.000681430625264,0.005498266313225,0.006702479440719,0.002347212983295,0.004264534451067,0.003772196127102,0.001059030648321,0.001829496002756,0.000023395034077,0.004847127944231,0.020142765715718,0.001911052851938,-0.003440744243562,-0.007177087944001,-0.006872693076730));
return res;
}
