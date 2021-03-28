sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.069905824959278,0.131668478250504,0.016085151582956,0.050971165299416);
res += mul(Get(s0,-dx,-dy), float4x4(-0.171389177441597,0.027344649657607,0.309503734111786,-0.046427842229605,0.101333089172840,0.054901745170355,0.059431180357933,-0.313181817531586,0.075326934456825,0.064240701496601,0.174949362874031,-0.018570842221379,0.083292573690414,0.069694735109806,0.351860612630844,0.013163099065423));
res += mul(Get(s0,-dx,0), float4x4(-0.185222044587135,0.093570403754711,-0.314439684152603,0.253120094537735,0.017950586974621,-0.080658309161663,-0.232315763831139,-0.206995829939842,-0.073677696287632,-0.037614237517118,0.141482368111610,0.007470985874534,0.135579198598862,0.280693709850311,-0.210552960634232,-0.201488748192787));
res += mul(Get(s0,-dx,dy), float4x4(-0.335586220026016,-0.029468216001987,-0.087753571569920,0.041629455983639,-0.064362615346909,-0.076338559389114,-0.055783145129681,-0.162885367870331,-0.126595512032509,-0.081709690392017,0.074776999652386,-0.106678068637848,-0.052433058619499,-0.278792381286621,0.040370058268309,-0.011350177228451));
res += mul(Get(s0,0,-dy), float4x4(0.214233830571175,-0.278527438640594,-0.216347098350525,0.205698877573013,-0.281203925609589,0.031353421509266,-0.475448906421661,-0.127427160739899,0.079612284898758,0.034490592777729,-0.333999603986740,0.232866480946541,0.260161101818085,-0.308550685644150,-0.113353520631790,0.109581202268600));
res += mul(Get(s0,0,0), float4x4(0.250074952840805,0.246404871344566,0.126383468508720,0.217773392796516,0.322559386491776,0.168211042881012,-0.334151774644852,-0.567707002162933,-0.117689408361912,-0.043580170720816,0.230549871921539,0.385479569435120,-0.147882595658302,0.354164361953735,-0.321459680795670,-0.286815583705902));
res += mul(Get(s0,0,dy), float4x4(-0.018420917913318,0.190465748310089,0.413751035928726,0.173626065254211,-0.044681813567877,-0.038405176252127,0.091505423188210,0.009178645908833,-0.087454810738564,-0.021269131451845,0.094502106308937,-0.043124668300152,0.003022872610018,-0.622363686561584,0.046326473355293,-0.467755109071732));
res += mul(Get(s0,dx,-dy), float4x4(0.018618276342750,-0.191851109266281,0.012758863158524,0.207338348031044,-0.279379934072495,0.114302463829517,-0.361635923385620,-0.044082209467888,0.131254091858864,0.068844355642796,-0.010980905964971,0.053983148187399,0.047838084399700,0.076288968324661,0.218306347727776,0.057276926934719));
res += mul(Get(s0,dx,0), float4x4(-0.004598823376000,0.247631579637527,-0.168939560651779,-0.594539105892181,0.157815635204315,0.169239088892937,-0.370400130748749,-0.287216007709503,0.076553866267204,0.098060145974159,0.089261449873447,0.528272092342377,-0.143347203731537,-0.048855114728212,0.429657548666000,0.461209297180176));
res += mul(Get(s0,dx,dy), float4x4(0.091006793081760,0.075362570583820,0.308840245008469,-0.014464093372226,0.030585985630751,-0.092490501701832,0.098289035260677,-0.148440375924110,0.052473939955235,0.031842358410358,0.082521572709084,0.192287474870682,-0.020583624020219,-0.079978108406067,-0.145928561687469,0.186008557677269));
res += mul(Get(s1,-dx,-dy), float4x4(-0.069805055856705,0.069785676896572,0.086879648268223,0.073959261178970,0.249615341424942,0.088551089167595,-0.376523107290268,0.069450363516808,-0.052951142191887,0.064336590468884,-0.172996774315834,-0.178195327520370,-0.077026687562466,0.050528604537249,-0.462706774473190,0.192887410521507));
res += mul(Get(s1,-dx,0), float4x4(-0.032285790890455,-0.036572292447090,0.146207407116890,-0.159874558448792,0.459397584199905,0.205856263637543,0.046621806919575,-0.029611073434353,-0.050670552998781,0.311065047979355,0.108234211802483,0.278737604618073,0.009176667779684,0.323812067508698,0.172019228339195,0.508960068225861));
res += mul(Get(s1,-dx,dy), float4x4(-0.134832173585892,-0.148304298520088,0.058369949460030,0.101977214217186,0.221128195524216,0.103991530835629,0.159929946064949,-0.102459684014320,-0.073670409619808,0.006462211720645,0.052576713263988,-0.056683890521526,-0.034719336777925,-0.012221822515130,-0.308233797550201,-0.241818144917488));
res += mul(Get(s1,0,-dy), float4x4(-0.166993722319603,0.105862252414227,0.124732516705990,0.165518209338188,-0.394791096448898,-0.343212366104126,-0.149512261152267,-0.094558656215668,0.240066647529602,-0.157558277249336,0.390105664730072,-0.306653797626495,0.057888370007277,0.160490721464157,0.230900466442108,-0.246775045990944));
res += mul(Get(s1,0,0), float4x4(0.325997740030289,0.185449793934822,-0.372864603996277,0.036716554313898,-0.173360735177994,-0.252807915210724,-0.574213981628418,-0.730531275272369,0.325126469135284,-0.487226635217667,0.074841544032097,0.604522049427032,0.305531650781631,-0.627546608448029,0.095317676663399,-0.096600741147995));
res += mul(Get(s1,0,dy), float4x4(-0.437075763940811,-0.302662551403046,0.308010280132294,-0.131571009755135,0.161394461989403,0.121529564261436,-0.094452492892742,0.170656353235245,-0.195099398493767,0.062916584312916,0.035736095160246,-0.104134872555733,-0.017368519678712,-0.103701844811440,-0.413145571947098,-0.021356677636504));
res += mul(Get(s1,dx,-dy), float4x4(0.073226504027843,-0.039909277111292,0.409388065338135,0.347013056278229,-0.020239382982254,0.021342048421502,-0.114732675254345,-0.122439309954643,-0.296832531690598,0.121736057102680,-0.132809266448021,-0.167074009776115,0.009697408415377,0.007385374512523,0.044396452605724,0.094819016754627));
res += mul(Get(s1,dx,0), float4x4(0.000612419040408,0.011013355106115,0.136150732636452,0.106073051691055,-0.158311426639557,-0.155776813626289,-0.301193624734879,-0.117235124111176,0.360811233520508,-0.174178674817085,-0.301433682441711,-0.124048970639706,-0.085845015943050,0.134824231266975,-0.036263208836317,-0.290271192789078));
res += mul(Get(s1,dx,dy), float4x4(-0.205857545137405,-0.209362640976906,-0.120531022548676,-0.117683015763760,0.010883810929954,-0.032642915844917,0.034065231680870,-0.034208998084068,0.016252018511295,0.071697205305099,0.049022633582354,0.010941861197352,-0.030120695009828,-0.068343259394169,0.157868251204491,-0.088775925338268));
res += mul(Get(s2,-dx,-dy), float4x4(-0.079499587416649,-0.085852853953838,-0.281781911849976,0.555701017379761,0.061564095318317,0.001727515133098,0.042252078652382,0.080661132931709,-0.065449342131615,-0.132659614086151,0.094581685960293,0.081588186323643,0.041085332632065,0.109799519181252,0.212408661842346,-0.047109529376030));
res += mul(Get(s2,-dx,0), float4x4(-0.118584975600243,0.072460755705833,0.212649136781693,0.251641571521759,-0.141347393393517,0.011728377081454,-0.084491819143295,0.022764166817069,0.015062293037772,-0.060613822191954,-0.108855158090591,0.000904870161321,-0.095456905663013,0.091111294925213,-0.022534374147654,-0.173391997814178));
res += mul(Get(s2,-dx,dy), float4x4(-0.035845715552568,0.009564372710884,-0.139780983328819,0.062696523964405,-0.181019470095634,-0.006663388106972,0.072244815528393,-0.074546568095684,0.166736215353012,0.064238488674164,-0.048747591674328,-0.018618760630488,0.045287694782019,0.080072790384293,0.280270189046860,-0.159177199006081));
res += mul(Get(s2,0,-dy), float4x4(0.345418244600296,-0.000544298323803,-0.129729092121124,0.218888744711876,0.188133329153061,0.041757527738810,-0.094190932810307,0.052597172558308,-0.036352977156639,-0.170854449272156,0.107678592205048,0.074955366551876,0.151813775300980,0.047575496137142,0.019666681066155,-0.007817965000868));
res += mul(Get(s2,0,0), float4x4(-0.183406308293343,-0.003434491343796,-0.022662151604891,0.359472364187241,0.045261550694704,0.126502782106400,0.466384470462799,-0.314732611179352,-0.460052967071533,-0.355920314788818,-0.403383314609528,-0.474312454462051,0.180326342582703,0.065078869462013,-0.215858995914459,-0.479921787977219));
res += mul(Get(s2,0,dy), float4x4(-0.043143261224031,0.139961406588554,-0.290083914995193,0.306645810604095,-0.216598883271217,0.038288880139589,0.124921329319477,0.129575818777084,0.272067755460739,0.118901178240776,-0.350932836532593,0.137905642390251,0.186560466885567,0.091688185930252,0.273750096559525,-0.184090539813042));
res += mul(Get(s2,dx,-dy), float4x4(0.112435691058636,-0.041014961898327,-0.138963684439659,-0.021160107105970,0.095254972577095,0.020747231319547,0.196402072906494,-0.130160793662071,0.021952714771032,-0.063644893467426,-0.176788374781609,-0.119865663349628,0.126928955316544,-0.030964607372880,0.202054157853127,-0.219970583915710));
res += mul(Get(s2,dx,0), float4x4(0.125486001372337,-0.100698567926884,0.107958078384399,0.529345333576202,-0.148029461503029,-0.008290718309581,0.176530689001083,0.120672836899757,-0.013010759837925,-0.041851382702589,-0.256474673748016,0.045655362308025,0.164850592613220,-0.050848256796598,0.237163230776787,-0.052937623113394));
res += mul(Get(s2,dx,dy), float4x4(0.007855792529881,0.047680627554655,0.024688342586160,0.375668495893478,-0.134190335869789,0.046956028789282,-0.020522326231003,0.087921947240829,0.137247100472450,0.041899796575308,0.131090641021729,0.168920144438744,0.054346438497305,-0.035518631339073,0.239491477608681,-0.000437291018898));
res = max(float4(0, 0, 0, 0), res) + float4(1.230537414550781,1.051147222518921,0.191630914807320,0.132520735263824) * min(float4(0, 0, 0, 0), res);
return res;
}
