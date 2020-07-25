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
res += mul(Get(s0,-dx,-dy), float4x4(0.087170056998730,0.148562833666801,0.056975346058607,0.019123528152704,-0.081861056387424,-0.060937389731407,0.048064488917589,-0.050805218517780,0.047288279980421,0.129121929407120,0.035956941545010,-0.140085175633430,-0.020964728668332,-0.186542257666588,-0.064966470003128,0.067406930029392));
res += mul(Get(s0,-dx,0), float4x4(0.090845458209515,-0.078305914998055,-0.021375922486186,-0.059121303260326,0.137909561395645,0.044982295483351,0.082434281706810,-0.069861516356468,-0.100238516926765,-0.094162993133068,0.170596167445183,0.130199909210205,-0.026033841073513,0.017631798982620,0.092730872333050,-0.010345264337957));
res += mul(Get(s0,-dx,dy), float4x4(0.149602785706520,-0.132692784070969,-0.117606423795223,-0.016207275912166,-0.114788681268692,0.045544672757387,-0.057587869465351,0.181814715266228,-0.062897235155106,-0.067753545939922,0.041301555931568,0.173171967267990,-0.067721486091614,-0.022592553868890,0.006519304122776,0.177294522523880));
res += mul(Get(s0,0,-dy), float4x4(0.033187542110682,-0.101192682981491,0.058734942227602,0.147123470902443,0.025453286245465,-0.046198535710573,0.059003401547670,0.112780414521694,0.166871100664139,0.067378498613834,-0.100220508873463,-0.133502379059792,-0.001748253474943,-0.073490746319294,0.012507222592831,-0.001704528112896));
res += mul(Get(s0,0,0), float4x4(-0.045935731381178,0.055789336562157,-0.144688382744789,0.140941128134727,-0.054410025477409,-0.124859228730202,0.027236133813858,0.048759043216705,0.181022614240646,-0.170237809419632,0.204099640250206,0.008542069233954,-0.061544820666313,0.032142762094736,0.098759815096855,0.077618531882763));
res += mul(Get(s0,0,dy), float4x4(0.024960914626718,-0.068696126341820,-0.188328936696053,0.057592652738094,-0.056648358702660,-0.090437069535255,0.234523639082909,0.132410287857056,-0.214315131306648,-0.113160893321037,0.093902856111526,0.154131874442101,0.085242353379726,0.012078785337508,-0.050223395228386,-0.014538677409291));
res += mul(Get(s0,dx,-dy), float4x4(-0.097888842225075,0.151116624474525,0.081692293286324,-0.015465040691197,-0.034694168716669,0.124796055257320,0.087783597409725,0.015498436987400,0.038143228739500,-0.021453611552715,-0.186812460422516,-0.172537073493004,0.121885746717453,0.091770097613335,-0.059607706964016,0.072121128439903));
res += mul(Get(s0,dx,0), float4x4(-0.073104336857796,-0.068345256149769,-0.098401866853237,0.098270513117313,0.056988041847944,0.034631837159395,-0.068827420473099,-0.109523363411427,0.099312625825405,0.041860956698656,-0.226616084575653,-0.089413240551949,-0.003786711487919,-0.038175150752068,-0.044523108750582,-0.051291007548571));
res += mul(Get(s0,dx,dy), float4x4(0.027040179818869,0.070793688297272,0.067973732948303,-0.003696947824210,-0.180277541279793,-0.090693332254887,-0.075571596622467,-0.034735202789307,0.031276594847441,-0.117048189043999,0.045571032911539,0.029424495995045,0.223515808582306,-0.216969728469849,0.003444805508479,0.117212004959583));
res += mul(Get(s1,-dx,-dy), float4x4(0.031688667833805,0.176028475165367,0.202662885189056,0.058041449636221,0.120262093842030,-0.161325708031654,0.024553302675486,-0.003839068347588,0.006288704928011,-0.151562348008156,-0.191337808966637,0.043625902384520,0.026464533060789,-0.050474781543016,0.107224360108376,0.019103273749352));
res += mul(Get(s1,-dx,0), float4x4(0.010853206738830,-0.171422764658928,0.055497899651527,-0.188792094588280,0.176048085093498,-0.091533571481705,0.150131702423096,-0.188212707638741,0.000749504368287,0.173259869217873,-0.014484439045191,0.008054043166339,-0.268214941024780,0.122320517897606,-0.003126475261524,0.039244096726179));
res += mul(Get(s1,-dx,dy), float4x4(0.056609284132719,-0.002122769365087,-0.036401066929102,0.061574023216963,0.004359846934676,-0.003951032646000,-0.000851032207720,-0.106056258082390,0.033757578581572,0.058533560484648,0.050115752965212,0.147894158959389,0.150149524211884,0.032362651079893,0.040307287126780,-0.112200304865837));
res += mul(Get(s1,0,-dy), float4x4(-0.016396770253778,-0.032513469457626,-0.018678620457649,-0.034969564527273,-0.116978585720062,0.140204817056656,-0.030195644125342,0.153702899813652,0.207678258419037,0.011800729669631,-0.023359758779407,0.032611608505249,0.003863306017593,-0.176252618432045,-0.000178773028892,-0.030232224613428));
res += mul(Get(s1,0,0), float4x4(0.078714109957218,0.048140004277229,-0.077476359903812,-0.135109543800354,-0.121067859232426,0.103281103074551,0.044925402849913,-0.026868086308241,0.165238156914711,-0.062742866575718,0.117284260690212,-0.015580328181386,0.089061565697193,0.173511236906052,0.208157092332840,0.050982575863600));
res += mul(Get(s1,0,dy), float4x4(0.076267577707767,-0.052309963852167,0.104145579040051,0.033996075391769,0.091517254710197,-0.118825353682041,0.106471657752991,0.093330778181553,0.159558817744255,-0.069383323192596,0.008191536180675,0.035934604704380,0.054598629474640,-0.118480265140533,0.083643905818462,0.050129815936089));
res += mul(Get(s1,dx,-dy), float4x4(-0.164689466357231,-0.057858649641275,0.011642289347947,0.042208451777697,-0.170078262686729,0.068439438939095,-0.067478306591511,0.003197930054739,0.026988968253136,0.028222551569343,-0.043685022741556,0.094176754355431,-0.072912409901619,-0.103528581559658,-0.016013091430068,0.049742031842470));
res += mul(Get(s1,dx,0), float4x4(0.035802505910397,0.028286131098866,-0.189708992838860,0.036628145724535,0.025218034163117,0.062612824141979,-0.192443653941154,-0.013111748732626,0.040750768035650,-0.123355001211166,0.040725063532591,0.157609403133392,-0.170733019709587,-0.024735052138567,0.193401217460632,-0.172600626945496));
res += mul(Get(s1,dx,dy), float4x4(-0.148765057325363,0.188963547348976,0.057254247367382,-0.052029471844435,-0.058547627180815,-0.068854689598083,0.092448115348816,-0.001283384859562,-0.130484446883202,0.080691471695900,0.006522975396365,-0.230155229568481,0.088589400053024,-0.110916249454021,-0.002425286918879,0.053662523627281));
res += mul(Get(s2,-dx,-dy), float4x4(-0.252157211303711,0.031952366232872,0.013030494563282,0.110101327300072,0.104062616825104,-0.155838131904602,0.057391338050365,-0.049818038940430,-0.049853205680847,-0.035972278565168,-0.220487251877785,-0.034997548907995,0.029968166723847,-0.162934184074402,-0.163926169276237,-0.011013641022146));
res += mul(Get(s2,-dx,0), float4x4(-0.136315882205963,-0.149825409054756,-0.039447728544474,0.194779887795448,0.006911049131304,0.100412845611572,-0.068581096827984,-0.091135822236538,0.076651237905025,-0.080538630485535,-0.193888798356056,-0.095456227660179,0.011550292372704,-0.167478889226913,-0.165055200457573,-0.105257831513882));
res += mul(Get(s2,-dx,dy), float4x4(0.050439439713955,0.084929056465626,0.012940888293087,0.114765159785748,-0.126723423600197,0.194384008646011,-0.090953558683395,-0.190647318959236,0.048064038157463,0.121685929596424,-0.025441629812121,-0.224995732307434,-0.145408526062965,0.191070780158043,0.149715900421143,-0.017054382711649));
res += mul(Get(s2,0,-dy), float4x4(-0.035017669200897,0.064240679144859,-0.122682273387909,-0.126401066780090,-0.045043740421534,0.202471449971199,-0.235514402389526,0.075589910149574,0.043155860155821,-0.087602190673351,-0.066425554454327,-0.377121478319168,0.068353988230228,0.004610955249518,-0.159591957926750,0.002815852640197));
res += mul(Get(s2,0,0), float4x4(-0.000707734143361,-0.074012279510498,0.125423848628998,0.054640848189592,0.036128375679255,0.059795480221510,0.065457552671432,-0.207421228289604,0.209310203790665,-0.136631742119789,-0.158307373523712,-0.117001585662365,-0.054397888481617,-0.134709388017654,-0.077684454619884,-0.115736961364746));
res += mul(Get(s2,0,dy), float4x4(0.207808539271355,0.093100287020206,0.071903131902218,-0.018312180414796,-0.020742906257510,-0.050410348922014,-0.016661515459418,0.183610439300537,0.112717568874359,-0.071681328117847,-0.195081189274788,-0.078949443995953,-0.143478065729141,0.078442722558975,-0.275671124458313,-0.136582359671593));
res += mul(Get(s2,dx,-dy), float4x4(-0.050188165158033,0.156511902809143,0.077326178550720,-0.029366331174970,-0.042173087596893,-0.286156594753265,-0.050256911665201,-0.060887746512890,0.224218741059303,0.139384001493454,-0.226039871573448,0.111393868923187,-0.001807641470805,0.048104282468557,0.104681693017483,0.026855999603868));
res += mul(Get(s2,dx,0), float4x4(0.114981420338154,-0.094345606863499,0.067326046526432,-0.008338651619852,-0.313521444797516,-0.026995386928320,0.060069717466831,-0.011702156625688,-0.112409375607967,0.099139720201492,0.068537704646587,0.064545899629593,-0.110982716083527,-0.128048568964005,0.003970565740019,0.252902686595917));
res += mul(Get(s2,dx,dy), float4x4(0.021004620939493,0.000844420865178,0.040507175028324,-0.067547589540482,0.072659119963646,0.079209730029106,0.348429679870605,-0.034511066973209,-0.093395993113518,-0.108017012476921,-0.148876786231995,0.058961845934391,-0.076408296823502,-0.003627297468483,0.007131817284971,-0.110457405447960));
res += mul(Get(s3,-dx,-dy), float4x4(0.048780538141727,-0.040549032390118,0.302449524402618,0.094842754304409,-0.116721801459789,0.017317062243819,0.073823735117912,-0.111226066946983,-0.133409172296524,0.023885164409876,0.137941047549248,-0.051627896726131,0.156863868236542,0.046810060739517,-0.060754649341106,0.115589432418346));
res += mul(Get(s3,-dx,0), float4x4(0.033776383846998,0.053855020552874,-0.076418332755566,0.058985229581594,0.104950658977032,-0.187240764498711,-0.053857605904341,0.205747619271278,-0.097934812307358,-0.043900266289711,-0.028339777141809,0.149090170860291,0.040903147310019,0.095672063529491,0.015753753483295,-0.048629399389029));
res += mul(Get(s3,-dx,dy), float4x4(-0.025803986936808,0.296742767095566,0.177481532096863,0.148244351148605,-0.089953258633614,0.048506103456020,0.039469674229622,-0.012112522497773,0.053503688424826,-0.243388622999191,0.020856196060777,-0.102902643382549,-0.157855719327927,-0.030133780092001,0.176572605967522,-0.085636556148529));
res += mul(Get(s3,0,-dy), float4x4(0.235110610723495,0.097008854150772,-0.014964167028666,-0.179319515824318,-0.134412065148354,0.103223174810410,0.146038472652435,0.160554036498070,-0.211496025323868,-0.194338724017143,0.018511869013309,-0.062513224780560,0.026732556521893,0.022881783545017,-0.244470909237862,-0.309600859880447));
res += mul(Get(s3,0,0), float4x4(-0.029057396575809,0.093498528003693,0.181396678090096,-0.042073082178831,0.055207647383213,-0.074261963367462,-0.001060650218278,0.068599201738834,-0.098982758820057,-0.194445237517357,-0.108331039547920,-0.041949789971113,-0.024730972945690,0.008173864334822,-0.198645487427711,0.032647483050823));
res += mul(Get(s3,0,dy), float4x4(0.058476816862822,0.006604626774788,-0.077645987272263,-0.099924162030220,0.041626293212175,-0.033894624561071,0.121334552764893,0.174485221505165,-0.187736481428146,0.010734303854406,0.138522401452065,-0.039993152022362,0.083491489291191,-0.104022093117237,-0.044041961431503,0.100119918584824));
res += mul(Get(s3,dx,-dy), float4x4(0.049927461892366,-0.060865748673677,0.242154285311699,0.031953144818544,0.043748963624239,0.010110636241734,0.003788339439780,0.001316011650488,-0.034312289208174,0.118052646517754,0.095111541450024,0.009443084709346,0.169224843382835,-0.023543441668153,0.058659814298153,-0.017683368176222));
res += mul(Get(s3,dx,0), float4x4(0.147195175290108,-0.099272109568119,-0.151237010955811,0.152082711458206,0.194128811359406,0.099070042371750,-0.108886644244194,0.292561173439026,-0.017872691154480,-0.109539493918419,-0.036183133721352,0.132387667894363,0.388245940208435,0.001483303261921,-0.015107873827219,-0.006089122500271));
res += mul(Get(s3,dx,dy), float4x4(-0.029026053845882,-0.195239990949631,0.142477840185165,0.087823748588562,-0.053702399134636,-0.098948977887630,-0.064082160592079,0.055250111967325,0.110752701759338,-0.106616124510765,0.010490355081856,-0.063920356333256,0.249606654047966,0.132561132311821,0.036571260541677,0.021975681185722));
return max(float4(0,0,0,0), res);
}
