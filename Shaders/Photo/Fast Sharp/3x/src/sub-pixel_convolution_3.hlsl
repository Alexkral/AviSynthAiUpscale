sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float3 res = float3(0.000720032141544,0.000326775189023,-0.000700069067534);
res += mul(Get(s0,-dx,-dy), float4x3(-0.001413077581674,-0.000084304709162,0.000049617890909,0.008603142574430,0.000164909521118,-0.000144834455568,0.000639136531390,0.001757310936227,0.000120279721159,0.000526314252056,-0.000407733430620,0.001622079522349));
res += mul(Get(s0,-dx,0), float4x3(-0.008107986301184,0.006243311800063,0.006611018907279,0.005183178000152,0.011399589478970,0.012436139397323,-0.012059997767210,-0.014190847054124,-0.007313594687730,-0.001120257657021,-0.000830901612062,-0.000161053030752));
res += mul(Get(s0,-dx,dy), float4x3(-0.004176943097264,-0.001390744699165,-0.005187413189560,-0.006785344798118,-0.006326427683234,-0.002349662594497,0.004332882817835,0.003167947288603,-0.005009090527892,0.001920791226439,0.000694012444001,-0.001607236103155));
res += mul(Get(s0,0,-dy), float4x3(0.012870244681835,-0.006650887429714,-0.008313674479723,-0.036070100963116,-0.004965353757143,0.009906912222505,0.017417542636395,0.014651959761977,0.007720080669969,-0.013887104578316,-0.019003987312317,0.005556364543736));
res += mul(Get(s0,0,0), float4x3(-0.018763329833746,-0.021979618817568,0.019752698019147,0.040877461433411,0.005125715862960,-0.042163435369730,-0.015190518461168,-0.007724135182798,0.007364659570158,-0.029058432206511,0.008196230977774,0.036592651158571));
res += mul(Get(s0,0,dy), float4x3(-0.004073820542544,0.012838373892009,0.021936617791653,-0.005929226521403,0.003691074438393,0.028698110952973,0.003661341732368,-0.001786981243640,-0.014183427207172,0.009948674589396,0.011129598133266,-0.009946821257472));
res += mul(Get(s0,dx,-dy), float4x3(-0.021477390080690,-0.002593719633296,0.002218966139480,0.013857951387763,0.003376795910299,0.002204715274274,0.000447184895165,0.000414963171352,0.001043111784384,0.018722936511040,-0.010318078100681,-0.010053397156298));
res += mul(Get(s0,dx,0), float4x3(-0.010562374256551,0.025406181812286,0.004160665441304,-0.027882359921932,-0.016671523451805,0.009556352160871,0.015178717672825,0.015541022643447,0.007953519932926,-0.008396420627832,-0.021196451038122,0.017979733645916));
res += mul(Get(s0,dx,dy), float4x3(0.005672220606357,0.008153490722179,-0.014362281188369,0.008156349882483,0.006824224255979,-0.009481894783676,-0.001547945081256,-0.002797152381390,0.000460393406684,0.001226941705681,0.003024465637282,0.007201621308923));
res += mul(Get(s1,-dx,-dy), float4x3(0.000990669592284,0.003899097675458,0.003062809351832,0.010322559624910,0.002658768557012,-0.000420984928496,0.000414740236010,0.000798665103503,0.000809897202998,0.000155768153490,-0.001954240957275,-0.002188431331888));
res += mul(Get(s1,-dx,0), float4x3(0.001992254983634,0.000799907895271,-0.000526627001818,0.009987496770918,0.011107205413282,0.013122369535267,0.002088400302455,0.003137785708532,0.002022901549935,-0.004672416485846,-0.005810423754156,-0.002006218535826));
res += mul(Get(s1,-dx,dy), float4x3(0.000392705027480,-0.000377068354283,0.000451125932159,0.003717375453562,0.008425570093095,0.008958961814642,-0.000713556481060,-0.002377015771344,-0.000975931587163,0.004054082557559,0.003171733580530,-0.001894941902719));
res += mul(Get(s1,0,-dy), float4x3(-0.035356339067221,0.015093824826181,0.021554136648774,-0.007528760936111,0.005269597284496,0.004590103402734,-0.011770256794989,-0.001510608708486,0.003303311066702,-0.016995057463646,0.004462369251996,0.008661003783345));
res += mul(Get(s1,0,0), float4x3(0.013316182419658,0.017515799030662,-0.017827382311225,-0.032352995127439,-0.050165500491858,-0.038662228733301,-0.004565848503262,-0.013069468550384,-0.020409392192960,0.015494526363909,0.000280811218545,-0.021794565021992));
res += mul(Get(s1,0,dy), float4x3(-0.005842741113156,-0.004472651053220,0.002186730969697,0.011354724876583,0.015426276251674,-0.003242056351155,-0.002521562855691,-0.003667975543067,-0.000858416315168,-0.008052677847445,-0.008230853825808,0.006833760533482));
res += mul(Get(s1,dx,-dy), float4x3(-0.005683041643351,0.010522978380322,-0.005043911281973,0.010212089866400,0.009627239778638,0.004687334410846,0.019697055220604,0.003843150101602,0.002680160105228,-0.011125960387290,0.002104282379150,0.008178292773664));
res += mul(Get(s1,dx,0), float4x3(0.004534582141787,0.006520559079945,-0.009338055737317,-0.001554033486173,-0.005554212722927,-0.000504541036207,0.024381829425693,0.045005574822426,0.041897177696228,0.014347745105624,0.002551165875047,-0.006879844702780));
res += mul(Get(s1,dx,dy), float4x3(-0.000530797289684,0.000003405537882,-0.000441533746198,0.005621333140880,0.009335417300463,0.004898724611849,0.001767331385054,0.001232752343640,0.005703643895686,-0.012090800330043,-0.006729681510478,0.014668102376163));
res += mul(Get(s2,-dx,-dy), float4x3(-0.003721293993294,-0.000285485526547,0.001060264417902,0.006254900712520,0.004069308284670,-0.001888342434540,-0.001255709445104,-0.003321608994156,-0.003616528585553,-0.002272661775351,-0.001876879134215,-0.002832622732967));
res += mul(Get(s2,-dx,0), float4x3(-0.004793043248355,-0.008333411067724,-0.007816840894520,-0.001347245415673,-0.007280063349754,-0.001245826482773,0.006154108792543,0.005873288959265,0.003440166590735,0.007421243470162,0.004245694726706,-0.005528521724045));
res += mul(Get(s2,-dx,dy), float4x3(0.001737972372212,0.001764561748132,-0.000968104985077,0.002179982373491,0.002985081868246,0.003281409619376,0.000172005282366,0.002520526759326,0.004715796094388,-0.003426439827308,-0.002231021411717,0.000548946787603));
res += mul(Get(s2,0,-dy), float4x3(0.009041870012879,0.000011316407836,-0.002816952299327,0.001388582051732,0.010443516075611,0.001700006774627,0.007302159443498,0.003888861974701,-0.003304527373984,0.015153929591179,0.013023114763200,0.000071290087362));
res += mul(Get(s2,0,0), float4x3(0.030323952436447,0.038243345916271,0.028785800561309,0.045408178120852,-0.006433976814151,-0.040785286575556,-0.044038202613592,-0.039864908903837,-0.010349186137319,0.021368550136685,-0.020328164100647,-0.018422571942210));
res += mul(Get(s2,0,dy), float4x3(0.001657945686020,0.002492888364941,0.012821524403989,-0.002258918248117,-0.015962552279234,0.007082880474627,0.003385610645637,-0.000021406292944,-0.019462222233415,-0.007348768878728,-0.008921989239752,0.011521886102855));
res += mul(Get(s2,dx,-dy), float4x3(0.011152061633766,0.000475725304568,-0.004354368895292,0.026406705379486,-0.011118896305561,-0.009266319684684,-0.021149531006813,-0.000119297044876,0.000883180298842,-0.013188953511417,0.007937630638480,0.005015254486352));
res += mul(Get(s2,dx,0), float4x3(-0.016000550240278,0.002597304759547,0.016270156949759,-0.010206416249275,-0.022857172414660,0.019944177940488,-0.028186216950417,-0.050333667546511,-0.048340119421482,0.007015400100499,0.025829207152128,-0.013529322110116));
res += mul(Get(s2,dx,dy), float4x3(0.006319318898022,-0.001755569246598,-0.013694442808628,-0.002881398657337,-0.002071463037282,0.005253367591649,-0.001828512293287,-0.003964571282268,-0.009582802653313,0.012974610552192,0.003346710931510,-0.028532642871141));
return float4(res, 0);
}
