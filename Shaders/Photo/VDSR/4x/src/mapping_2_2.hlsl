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
res += mul(Get(s0,-dx,-dy), float4x4(0.231022700667381,0.186408057808876,0.105927102267742,0.165516346693039,-0.002946332562715,-0.042240615934134,0.094862446188927,0.146131426095963,0.081004120409489,0.146334737539291,0.029069125652313,-0.115751862525940,0.106720775365829,0.084571138024330,0.037880580872297,-0.012454206123948));
res += mul(Get(s0,-dx,0), float4x4(0.036604683846235,0.185732200741768,-0.114153452217579,0.178081914782524,-0.075946465134621,0.043823584914207,0.041339978575706,0.132769584655762,-0.165568605065346,0.012514326721430,0.027930987998843,-0.047945659607649,-0.039047364145517,-0.040206659585238,0.001193392788991,0.083673723042011));
res += mul(Get(s0,-dx,dy), float4x4(-0.207533389329910,-0.074374563992023,0.070382490754128,0.107651464641094,0.180414915084839,-0.234804168343544,-0.049773257225752,-0.084856577217579,-0.169776052236557,-0.016992613673210,-0.147055029869080,0.023626169189811,-0.050572507083416,0.083536185324192,0.005176236387342,-0.055411238223314));
res += mul(Get(s0,0,-dy), float4x4(0.148962527513504,-0.015596036799252,-0.139467030763626,0.224281564354897,0.063521184027195,0.060384724289179,-0.137397274374962,0.021926263347268,-0.039617199450731,-0.030532820150256,-0.059218868613243,0.035693518817425,-0.030242457985878,0.300292909145355,0.023322373628616,-0.031437750905752));
res += mul(Get(s0,0,0), float4x4(0.163773953914642,-0.052295833826065,-0.107057027518749,0.058259908109903,0.013103809207678,-0.106269031763077,-0.080851800739765,-0.025986384600401,-0.005940927192569,0.023920122534037,0.137952655553818,0.035578474402428,-0.068012356758118,-0.013805703260005,0.009771301411092,-0.047135703265667));
res += mul(Get(s0,0,dy), float4x4(0.037064466625452,0.120295375585556,-0.004661855753511,0.206709206104279,0.091249428689480,-0.059367425739765,-0.044051308184862,0.038182936608791,0.109817452728748,-0.178753390908241,0.069823890924454,-0.298526644706726,0.236797213554382,-0.207651361823082,-0.041079994291067,0.116406358778477));
res += mul(Get(s0,dx,-dy), float4x4(0.086138322949409,-0.178484290838242,0.013315891847014,0.006373166572303,-0.089331202208996,0.080188117921352,0.047153614461422,-0.098748795688152,0.013365112245083,0.044237967580557,0.071157582104206,-0.047320660203695,0.107086531817913,0.029595583677292,0.120294861495495,-0.038329329341650));
res += mul(Get(s0,dx,0), float4x4(-0.252966165542603,-0.034342017024755,-0.030903650447726,0.044756259769201,-0.085369020700455,0.002731477376074,0.213777408003807,0.061519738286734,-0.067381508648396,0.144707739353180,-0.149819716811180,0.071238435804844,-0.173889338970184,0.016843130812049,-0.110671140253544,-0.049875117838383));
res += mul(Get(s0,dx,dy), float4x4(-0.027413269504905,-0.120126925408840,-0.088749930262566,-0.048897739499807,0.103521712124348,-0.046640302985907,0.142222210764885,-0.066366687417030,-0.047923192381859,0.024929275736213,-0.027862431481481,0.112934619188309,-0.031044350937009,-0.028290413320065,-0.029299575835466,0.205619111657143));
res += mul(Get(s1,-dx,-dy), float4x4(0.094113521277905,0.115796953439713,0.270943850278854,-0.115977346897125,-0.025288321077824,-0.163636043667793,0.089928612112999,0.002306299749762,-0.123012214899063,0.075040221214294,-0.112782463431358,0.039408728480339,0.007675417233258,0.038554348051548,-0.100108921527863,-0.093629345297813));
res += mul(Get(s1,-dx,0), float4x4(-0.254551768302917,0.059045705944300,-0.111288510262966,0.177285313606262,0.154941722750664,0.020678209140897,0.054342061281204,-0.001017250586301,0.158738702535629,0.070161357522011,-0.063527375459671,-0.058708008378744,0.058750215917826,0.081767335534096,-0.006671263836324,0.131179392337799));
res += mul(Get(s1,-dx,dy), float4x4(0.166099548339844,0.161323055624962,-0.147762581706047,0.112955413758755,0.070113308727741,0.023375581949949,0.021390795707703,0.239807173609734,-0.006951363757253,0.113069117069244,0.011804537847638,-0.066114485263824,-0.042748294770718,-0.080113261938095,-0.191994488239288,0.109749600291252));
res += mul(Get(s1,0,-dy), float4x4(-0.002493434585631,0.026201251894236,0.026002127677202,-0.117218650877476,0.032742373645306,-0.005991292186081,-0.026069056242704,-0.108711041510105,0.049976408481598,-0.070558622479439,0.054097123444080,0.017117140814662,-0.164050012826920,-0.153175130486488,0.263025969266891,-0.028039420023561));
res += mul(Get(s1,0,0), float4x4(0.071991890668869,0.050094604492188,0.086917415261269,-0.061119403690100,0.059111353009939,-0.125938057899475,-0.061139836907387,-0.001986169256270,0.149499550461769,-0.058560036122799,-0.111663334071636,0.048030592501163,-0.179641976952553,-0.162891894578934,0.083309032022953,-0.086314283311367));
res += mul(Get(s1,0,dy), float4x4(0.048106152564287,0.046346087008715,-0.121348299086094,0.078507550060749,0.075943514704704,0.209345340728760,0.153387427330017,0.087323792278767,-0.069750852882862,-0.037783898413181,0.068887136876583,-0.005318715237081,0.029720382764935,0.211327567696571,0.012584703043103,-0.009910577908158));
res += mul(Get(s1,dx,-dy), float4x4(-0.096028119325638,-0.020399389788508,-0.024194842204452,0.017211752012372,-0.069363377988338,-0.069984562695026,0.115994885563850,-0.061347890645266,-0.016318097710609,0.034633949398994,-0.125608056783676,0.068029627203941,0.120879217982292,-0.008701648563147,-0.153333544731140,0.054986190050840));
res += mul(Get(s1,dx,0), float4x4(-0.045088466256857,0.245262145996094,0.159506037831306,0.012146534398198,-0.027655906975269,0.032410569489002,-0.109844237565994,0.005203249864280,-0.098313383758068,-0.124127626419067,0.100706763565540,-0.113706648349762,-0.162102654576302,0.263376682996750,-0.101768560707569,-0.063334539532661));
res += mul(Get(s1,dx,dy), float4x4(0.148035690188408,0.123028978705406,-0.090204998850822,0.071348883211613,0.082536250352859,0.172097221016884,0.116542838513851,0.108542501926422,-0.045534439384937,0.122224725782871,-0.016623426228762,-0.038581348955631,-0.014380799606442,0.089557945728302,-0.099968917667866,-0.014013445004821));
res += mul(Get(s2,-dx,-dy), float4x4(0.116439722478390,-0.136957690119743,-0.044547699391842,-0.122493483126163,-0.194352746009827,0.019592624157667,0.045401819050312,-0.071901589632034,-0.141576945781708,0.100507557392120,-0.081225790083408,0.295094937086105,0.079533644020557,-0.090095601975918,-0.088243804872036,-0.069539107382298));
res += mul(Get(s2,-dx,0), float4x4(0.045105677098036,-0.006771417800337,-0.048550348728895,0.108633771538734,-0.257160604000092,-0.035604484379292,0.358716338872910,0.109184071421623,-0.015969866886735,-0.091915011405945,0.067227356135845,-0.063322611153126,-0.065512403845787,-0.086384378373623,0.021305231377482,-0.057903420180082));
res += mul(Get(s2,-dx,dy), float4x4(-0.134013891220093,0.000306462025037,0.007172828540206,0.003712560283020,0.124673493206501,-0.014831598848104,0.172254830598831,-0.124514065682888,0.072645947337151,-0.079600676894188,-0.004834014922380,0.144654303789139,0.080199897289276,0.028291478753090,0.142531499266624,0.008574694395065));
res += mul(Get(s2,0,-dy), float4x4(0.003471534466371,0.038359537720680,0.119610629975796,0.117298401892185,-0.019977701827884,-0.035171136260033,-0.012439299374819,-0.062215525656939,-0.008839587680995,-0.051267709583044,0.255647838115692,0.075810797512531,0.080363675951958,0.064611807465553,-0.083824701607227,0.073546588420868));
res += mul(Get(s2,0,0), float4x4(0.040041707456112,-0.125842735171318,-0.153260692954063,-0.026446515694261,0.132128819823265,-0.034676887094975,-0.128531992435455,0.100705198943615,-0.232808232307434,0.023885047063231,-0.080959960818291,-0.196648433804512,0.030567675828934,-0.087860479950905,0.129055321216583,0.097844488918781));
res += mul(Get(s2,0,dy), float4x4(0.166916325688362,-0.206207379698753,0.072490118443966,-0.072773486375809,-0.008806832134724,0.297544121742249,0.040934205055237,0.105542644858360,-0.034441079944372,-0.083448655903339,-0.023767404258251,0.171429395675659,0.159138634800911,0.034223061054945,0.055398054420948,0.116436585783958));
res += mul(Get(s2,dx,-dy), float4x4(0.005924115888774,0.056250151246786,0.038704928010702,0.230550453066826,-0.141502246260643,-0.068303883075714,0.028084736317396,0.104428656399250,0.051905199885368,0.051145493984222,0.217079490423203,0.009825547225773,-0.040561679750681,0.066535018384457,0.018690740689635,0.115577921271324));
res += mul(Get(s2,dx,0), float4x4(0.048944324254990,0.047212094068527,-0.110474795103073,-0.048172656446695,0.085888609290123,0.029026806354523,-0.036054860800505,0.088965266942978,-0.049434598535299,0.062884829938412,-0.137431338429451,0.007404637057334,-0.053801756352186,-0.145063459873199,-0.028649890795350,-0.032304584980011));
res += mul(Get(s2,dx,dy), float4x4(-0.114410072565079,-0.044354036450386,-0.043965790420771,0.131521850824356,-0.164804458618164,-0.236578270792961,0.099147595465183,-0.105495683848858,-0.023537551984191,0.096384331583977,-0.152621448040009,0.079453773796558,0.153215289115906,-0.076347954571247,-0.003260881174356,0.049569841474295));
res += mul(Get(s3,-dx,-dy), float4x4(-0.231554508209229,-0.201358810067177,-0.061141807585955,-0.011179407127202,-0.288682073354721,-0.167468443512917,0.026014866307378,0.019290264695883,0.047616910189390,-0.171217143535614,0.021888215094805,-0.020591493695974,-0.104395307600498,-0.038788005709648,0.292152553796768,-0.103288419544697));
res += mul(Get(s3,-dx,0), float4x4(0.118321865797043,0.016662143170834,-0.035756841301918,-0.026235969737172,0.049986854195595,0.204229235649109,-0.105038404464722,0.086063675582409,0.131794318556786,-0.095296569168568,0.093845672905445,-0.067464947700500,0.087443605065346,0.017966862767935,-0.033742394298315,-0.001592360902578));
res += mul(Get(s3,-dx,dy), float4x4(0.114731542766094,0.061415150761604,0.200677588582039,-0.040850501507521,0.108425177633762,-0.124912396073341,0.000190035978449,-0.050772797316313,0.042654104530811,-0.184082627296448,-0.028436865657568,-0.102445714175701,0.001171911833808,0.138700664043427,-0.287758827209473,-0.031217573210597));
res += mul(Get(s3,0,-dy), float4x4(0.052150726318359,0.017829567193985,-0.035274621099234,-0.119925141334534,0.144989416003227,-0.032903198152781,-0.142155185341835,0.030109208077192,-0.033777061849833,0.056239642202854,-0.118674486875534,-0.029751528054476,-0.028062637895346,-0.031117731705308,-0.048858929425478,0.246349781751633));
res += mul(Get(s3,0,0), float4x4(-0.032914202660322,-0.161650568246841,0.053785327821970,-0.126852080225945,0.090620048344135,0.217504724860191,-0.010080723091960,0.001977051608264,-0.220613092184067,0.078381530940533,0.042845547199249,0.059533886611462,-0.195483341813087,-0.008179125376046,-0.017860792577267,0.085557602345943));
res += mul(Get(s3,0,dy), float4x4(-0.134153559803963,0.158978104591370,0.106645435094833,-0.069982856512070,-0.054688084870577,-0.020365998148918,0.017478242516518,0.291694641113281,0.019989226013422,0.035221148282290,0.167850226163864,-0.077510707080364,-0.026499127969146,-0.062977150082588,-0.149204924702644,0.027277551591396));
res += mul(Get(s3,dx,-dy), float4x4(0.018187569454312,0.018422206863761,0.091880723834038,-0.048478897660971,-0.008316117338836,0.038627617061138,-0.153153970837593,-0.053060505539179,-0.142162203788757,0.111805133521557,0.171429932117462,0.051668737083673,0.177380874752998,-0.041071645915508,0.043377157300711,0.123790778219700));
res += mul(Get(s3,dx,0), float4x4(0.019569346681237,0.052368432283401,-0.076610229909420,0.017439918592572,0.019580783322453,0.006477312650532,-0.023408919572830,0.099768273532391,-0.039647269994020,-0.001133285346441,0.000075594100053,-0.079050213098526,-0.211365520954132,0.145529985427856,0.301004827022552,-0.047746919095516));
res += mul(Get(s3,dx,dy), float4x4(0.052733909338713,-0.207415863871574,0.079189985990524,0.098390869796276,-0.166103720664978,-0.114023953676224,0.051397684961557,-0.020138954743743,-0.127802178263664,-0.059078846126795,-0.087904460728168,-0.155621871352196,-0.066297307610512,-0.168010398745537,0.299559801816940,-0.291624814271927));
return max(float4(0,0,0,0), res);
}
