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
res += mul(Get(s0,-dx,-dy), float4x4(-0.028173523023725,0.012367453426123,-0.039784878492355,0.041534289717674,-0.057987570762634,0.091058783233166,0.004321997519583,-0.015387291088700,0.166325867176056,-0.035962693393230,-0.036046989262104,-0.029149403795600,-0.042167659848928,0.094479411840439,0.001774144475348,0.062918551266193));
res += mul(Get(s0,-dx,0), float4x4(-0.000059121350205,0.093882769346237,0.110072031617165,-0.048744082450867,0.130289673805237,0.106144644320011,-0.046546727418900,0.017257651314139,0.012867570854723,0.077377587556839,0.003142488654703,0.001986410934478,-0.075538799166679,0.121183700859547,-0.010382834821939,0.034967049956322));
res += mul(Get(s0,-dx,dy), float4x4(0.066054008901119,-0.003310451516882,-0.073788620531559,-0.169026345014572,-0.038732647895813,-0.074807673692703,-0.145187005400658,0.030027762055397,0.008167453110218,0.065474212169647,-0.005855629220605,-0.168699637055397,0.023602066561580,0.091032378375530,-0.019791571423411,-0.148891583085060));
res += mul(Get(s0,0,-dy), float4x4(-0.004934876691550,0.038276620209217,0.023648547008634,-0.016861209645867,0.074413172900677,-0.041594784706831,0.004489301703870,0.089440189301968,0.167247965931892,-0.021837476640940,0.061362106353045,-0.034644693136215,0.025751139968634,0.027386665344238,0.053974743932486,0.020438646897674));
res += mul(Get(s0,0,0), float4x4(-0.075907066464424,-0.021809171885252,0.154810503125191,0.047025348991156,0.012533290311694,0.029609791934490,-0.020616520196199,0.008432589471340,0.032830074429512,-0.073254607617855,-0.125613242387772,-0.074781008064747,-0.054980996996164,0.060235362499952,0.201761439442635,-0.025414656847715));
res += mul(Get(s0,0,dy), float4x4(0.173611626029015,-0.094627946615219,0.038113713264465,-0.052884925156832,-0.154059186577797,-0.063135519623756,-0.086176693439484,0.011291619390249,0.080626703798771,0.003617270151153,0.023385204374790,-0.248446285724640,-0.022073712199926,0.031190605834126,0.065050981938839,-0.104184150695801));
res += mul(Get(s0,dx,-dy), float4x4(-0.039646215736866,0.001479183323681,-0.001951043377630,0.017745193094015,-0.042366988956928,-0.022101933136582,-0.099766582250595,0.191004782915115,-0.015702972188592,-0.016741190105677,-0.023152312263846,0.048748672008514,0.068020470440388,-0.007078910246491,-0.054466169327497,-0.037189960479736));
res += mul(Get(s0,dx,0), float4x4(-0.052439387887716,-0.136594027280807,-0.090660586953163,-0.005555867683142,0.243796795606613,-0.007267992943525,-0.071886062622070,0.045985545963049,0.000345147534972,0.026306243613362,-0.030834883451462,0.011194709688425,0.023377791047096,-0.023022837936878,-0.000631591421552,-0.014073662459850));
res += mul(Get(s0,dx,dy), float4x4(0.009761396795511,-0.091869562864304,-0.103834636509418,0.083821080625057,0.046592541038990,0.061550687998533,-0.005647456273437,0.019908849149942,0.041683465242386,-0.036014657467604,-0.080306060612202,-0.193267717957497,0.074484370648861,-0.000351154885720,0.046281389892101,-0.120156757533550));
res += mul(Get(s1,-dx,-dy), float4x4(-0.052327174693346,0.011194592341781,0.059511099010706,-0.101231969892979,-0.074343807995319,0.044429074972868,0.093635015189648,0.013800947926939,0.002270767465234,-0.026491858065128,0.011160339228809,0.006807419937104,0.033714011311531,-0.084287315607071,0.117476925253868,0.036882821470499));
res += mul(Get(s1,-dx,0), float4x4(0.070938274264336,0.037617292255163,0.051572889089584,-0.062754616141319,-0.032416708767414,0.054313670843840,0.071352891623974,-0.044010784476995,-0.115353547036648,0.057871364057064,0.053769793361425,0.037730235606432,-0.043976299464703,-0.004453376401216,0.176837980747223,0.056033365428448));
res += mul(Get(s1,-dx,dy), float4x4(-0.149435669183731,0.079870231449604,0.017775768414140,-0.144510999321938,-0.112944513559341,0.077433176338673,-0.050536826252937,0.043688833713531,0.008668436668813,0.053684942424297,-0.003733541350812,-0.043323505669832,0.055002704262733,-0.012274901382625,0.025056554004550,-0.017265707254410));
res += mul(Get(s1,0,-dy), float4x4(0.110061503946781,-0.036377638578415,-0.022010684013367,-0.006821074988693,-0.028380446135998,0.008630192838609,0.105704367160797,0.006289251148701,0.025412345305085,-0.043505419045687,0.007324390579015,0.147333413362503,0.007460432127118,0.038228683173656,-0.003607526887208,0.034455928951502));
res += mul(Get(s1,0,0), float4x4(-0.006201501935720,0.084612019360065,0.022670151665807,0.040541198104620,-0.018354261294007,0.114424020051956,0.075002841651440,-0.059766385704279,-0.126773223280907,-0.004749086685479,0.180923908948898,0.085351794958115,0.061620611697435,0.064614400267601,0.024840997532010,-0.137628600001335));
res += mul(Get(s1,0,dy), float4x4(-0.109598472714424,-0.010015965439379,-0.023929059505463,-0.125209122896194,-0.069234520196915,0.043033584952354,0.107371859252453,0.076366178691387,0.094332128763199,-0.069291494786739,0.234042063355446,0.045133966952562,-0.042845807969570,0.100176855921745,-0.069425210356712,0.038276039063931));
res += mul(Get(s1,dx,-dy), float4x4(-0.112249113619328,-0.001291858265176,0.126648396253586,0.046945299953222,0.009907925501466,0.004801808390766,0.037499241530895,-0.021847179159522,0.137488335371017,-0.079317390918732,0.007442056667060,0.108597703278065,0.038207069039345,0.029145423322916,0.058034803718328,0.018829394131899));
res += mul(Get(s1,dx,0), float4x4(0.001999778673053,0.035931002348661,-0.031955588608980,0.086102969944477,-0.069564193487167,0.051590491086245,0.070831216871738,-0.096560053527355,-0.064433090388775,0.070158846676350,-0.012844510376453,-0.068262517452240,-0.019227089360356,-0.012319180183113,0.057902488857508,-0.053245719522238));
res += mul(Get(s1,dx,dy), float4x4(-0.043624740093946,-0.058795347809792,0.003704759059474,0.044581212103367,-0.024581823498011,0.086459107697010,0.008119429461658,0.021391954272985,-0.037784803658724,-0.093199267983437,0.155606359243393,0.026431620121002,0.016263848170638,-0.017500106245279,-0.005045505706221,0.127990022301674));
res += mul(Get(s2,-dx,-dy), float4x4(-0.051955085247755,-0.031758323311806,-0.010951981879771,0.057892728596926,-0.006932202260941,0.087939344346523,0.030309794470668,0.006172878667712,0.059280563145876,0.049605611711740,0.008515066467226,0.074371941387653,-0.021828424185514,0.092535011470318,0.027448603883386,-0.013832844793797));
res += mul(Get(s2,-dx,0), float4x4(-0.009610496461391,-0.054305829107761,0.040967237204313,-0.045287474989891,-0.149211168289185,0.191351994872093,-0.029474662616849,0.070760317146778,0.028949318453670,0.065715201199055,-0.104809522628784,0.045382987707853,0.085925340652466,0.025828987360001,0.043480314314365,-0.064061693847179));
res += mul(Get(s2,-dx,dy), float4x4(0.003998952917755,0.117658853530884,-0.058486044406891,0.118908382952213,0.088176488876343,0.093567207455635,-0.013197501190007,0.057797685265541,0.033648278564215,-0.008806343190372,0.038390815258026,-0.055501919239759,-0.052038725465536,0.058640472590923,0.001093312399462,0.097874619066715));
res += mul(Get(s2,0,-dy), float4x4(-0.087757587432861,-0.135486990213394,-0.142732590436935,0.156203731894493,0.027350824326277,-0.036323115229607,-0.022668974474072,-0.112504981458187,0.036274202167988,0.039409454911947,-0.005936582572758,0.090950198471546,0.039087835699320,-0.094424746930599,-0.071867212653160,0.059776961803436));
res += mul(Get(s2,0,0), float4x4(-0.045726429671049,-0.053501419723034,0.017624553292990,0.030976492911577,-0.055955309420824,0.070535562932491,0.029822874814272,0.033303890377283,0.098510548472404,0.053473584353924,-0.016294468194246,-0.070385098457336,-0.053506847470999,-0.155403792858124,0.030245982110500,0.019639568403363));
res += mul(Get(s2,0,dy), float4x4(-0.002911884337664,-0.055367425084114,0.016255836933851,0.052400629967451,-0.074299871921539,-0.047438655048609,0.058288753032684,-0.000691313762218,0.154024660587311,-0.058794990181923,0.084327787160873,-0.143096446990967,-0.019644867628813,-0.205726534128189,0.142012849450111,0.069227054715157));
res += mul(Get(s2,dx,-dy), float4x4(0.034676469862461,-0.002768137492239,0.050828613340855,0.059324692934752,-0.066126085817814,0.184437811374664,0.046326957643032,-0.009500692598522,0.020410882309079,-0.049794957041740,0.062718644738197,-0.037393897771835,-0.075336880981922,-0.122339949011803,-0.044683843851089,0.086254134774208));
res += mul(Get(s2,dx,0), float4x4(-0.020409533753991,0.062458388507366,0.024197766557336,-0.059314798563719,-0.062928654253483,0.322358906269073,0.012092625722289,0.060914684087038,0.064455501735210,0.071468636393547,-0.073582902550697,-0.011351511813700,-0.048487223684788,-0.148610115051270,-0.051694348454475,0.028651129454374));
res += mul(Get(s2,dx,dy), float4x4(-0.029146844521165,-0.159590795636177,0.066200911998749,0.020796796306968,-0.047017157077789,0.072743631899357,0.036409351974726,0.039659254252911,-0.008049268275499,0.165133208036423,-0.023452362045646,0.033748097717762,-0.053568921983242,-0.071342736482620,0.038171373307705,0.151512235403061));
res += mul(Get(s3,-dx,-dy), float4x4(-0.029224930331111,-0.015862159430981,-0.054449297487736,-0.026991289108992,0.102095603942871,0.139186978340149,-0.000059862286435,-0.057669457048178,0.077085956931114,-0.231635943055153,-0.067897848784924,0.000853649049532,-0.000913232041057,0.034985426813364,0.039394181221724,0.146380186080933));
res += mul(Get(s3,-dx,0), float4x4(0.014401693828404,0.107570186257362,0.001563987811096,0.060484156012535,-0.115504741668701,-0.134456515312195,-0.071179419755936,0.001784156658687,-0.078942440450191,-0.189533054828644,-0.088124230504036,-0.122359842061996,0.091724075376987,-0.029277868568897,0.070600181818008,-0.002218722831458));
res += mul(Get(s3,-dx,dy), float4x4(-0.053392063826323,-0.016861908137798,-0.106012903153896,-0.080812774598598,-0.006202332209796,-0.120576024055481,-0.006469047162682,-0.083336487412453,0.028442077338696,-0.046253297477961,-0.019058499485254,-0.080920241773129,-0.058685611933470,-0.045239560306072,-0.012264934368432,0.081291705369949));
res += mul(Get(s3,0,-dy), float4x4(-0.024015638977289,-0.083439022302628,0.062986753880978,0.003949916455895,0.193240121006966,0.069163322448730,-0.013357488438487,-0.026597978547215,0.029755169525743,0.037669479846954,-0.089938521385193,0.042628362774849,-0.012187874875963,0.092702381312847,0.054958764463663,0.178627490997314));
res += mul(Get(s3,0,0), float4x4(0.139285758137703,0.079949147999287,-0.049728225916624,-0.008417055942118,0.066030018031597,0.028310600668192,-0.041763354092836,-0.003438072279096,0.019588429480791,0.096784934401512,-0.052552334964275,-0.039649870246649,-0.023233873769641,-0.002220029011369,0.056197635829449,-0.079527951776981));
res += mul(Get(s3,0,dy), float4x4(-0.009206554852426,-0.102172762155533,-0.132507666945457,-0.051402296870947,-0.041436064988375,-0.058369416743517,-0.011349608190358,-0.086084097623825,-0.029233843088150,-0.001127997529693,-0.039504922926426,-0.059866361320019,-0.024569543078542,0.010177883319557,0.070738181471825,-0.070937842130661));
res += mul(Get(s3,dx,-dy), float4x4(-0.081938251852989,-0.097695417702198,0.065228052437305,-0.050426587462425,0.104179739952087,0.022511744871736,-0.025990577414632,0.036340117454529,0.015002144500613,-0.061758212745190,0.088260337710381,-0.037709336727858,-0.054347459226847,0.119943492114544,-0.045542012900114,0.110773533582687));
res += mul(Get(s3,dx,0), float4x4(0.120881184935570,-0.070647902786732,-0.006616095546633,-0.008648624643683,0.018699808046222,-0.012413095682859,-0.130230054259300,0.003673312487081,0.039619885385036,0.020277941599488,0.001658794470131,-0.032328404486179,0.110124669969082,0.165236547589302,-0.030299672856927,-0.049511522054672));
res += mul(Get(s3,dx,dy), float4x4(-0.047881316393614,-0.172969117760658,0.013101638294756,-0.103497445583344,-0.088915437459946,0.053098712116480,-0.024175671860576,0.056950785219669,-0.089648358523846,-0.032092053443193,-0.109666727483273,-0.083100490272045,-0.048066332936287,0.163683906197548,-0.008726340718567,0.091984510421753));
return max(float4(0,0,0,0), res);
}
