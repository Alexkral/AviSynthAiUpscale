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
res += mul(Get(s0,-dx,-dy), float4x4(0.059766627848148,0.088931761682034,0.082416884601116,-0.216304212808609,-0.143587201833725,-0.115389093756676,0.281740307807922,0.198383867740631,-0.156379446387291,-0.183937773108482,0.112195596098900,0.105446964502335,-0.050975851714611,0.185175985097885,-0.084217153489590,0.067776128649712));
res += mul(Get(s0,-dx,0), float4x4(0.003369509940967,-0.031381018459797,0.104711629450321,0.129768610000610,0.046948354691267,0.034782607108355,0.084281809628010,-0.015824945643544,0.073336847126484,0.022246604785323,-0.044504828751087,0.074438884854317,-0.081107079982758,-0.127248689532280,-0.171625584363937,0.022620394825935));
res += mul(Get(s0,-dx,dy), float4x4(-0.062188476324081,0.070292323827744,0.074810266494751,-0.019978193566203,0.054505024105310,0.000788726902101,-0.153919845819473,-0.042769670486450,0.026570849120617,0.036137364804745,-0.040787100791931,-0.100936360657215,0.064367592334747,-0.051855184137821,-0.155468687415123,-0.020407851785421));
res += mul(Get(s0,0,-dy), float4x4(-0.061413358896971,0.046963438391685,0.161574020981789,0.103009410202503,-0.024632468819618,0.016223501414061,0.050145424902439,0.079333491623402,-0.024432029575109,-0.141777589917183,0.105442225933075,-0.121625088155270,-0.150027081370354,-0.161265134811401,-0.034884370863438,-0.043704174458981));
res += mul(Get(s0,0,0), float4x4(-0.001931528677233,0.008817537687719,0.050992466509342,0.150479778647423,-0.017949525266886,-0.135438069701195,0.019954670220613,0.007876858115196,0.220949366688728,0.254056870937347,-0.199771508574486,0.172449395060539,-0.273566752672195,0.030006285756826,0.092112615704536,-0.059409551322460));
res += mul(Get(s0,0,dy), float4x4(0.167459174990654,-0.132231712341309,0.226709410548210,-0.130925238132477,0.030972722917795,-0.024803103879094,-0.098153121769428,-0.048356428742409,-0.023936623707414,0.005895736627281,-0.228295221924782,-0.066946849226952,0.167001202702522,0.044090822339058,-0.248150363564491,-0.060317270457745));
res += mul(Get(s0,dx,-dy), float4x4(0.231682494282722,0.122611418366432,-0.022249847650528,-0.017654087394476,-0.056074313819408,0.110015735030174,-0.103627614676952,0.027995815500617,-0.053977739065886,0.028663478791714,-0.057863239198923,0.153109520673752,0.143307879567146,0.059510078281164,-0.054517608135939,0.173955887556076));
res += mul(Get(s0,dx,0), float4x4(0.124731279909611,-0.117091372609138,-0.005708799231797,-0.071921348571777,-0.045616403222084,0.243860021233559,-0.160929590463638,0.063605949282646,-0.075674511492252,0.090725176036358,-0.088353350758553,0.123551979660988,0.076766692101955,0.110918454825878,-0.074562519788742,-0.202359616756439));
res += mul(Get(s0,dx,dy), float4x4(0.016104789450765,0.003475571051240,-0.055197082459927,-0.149498179554939,-0.027714779600501,0.093799717724323,0.113977216184139,0.035929337143898,0.115951932966709,0.013307430781424,0.143252223730087,0.083232082426548,-0.179791033267975,-0.134663045406342,0.127475082874298,-0.010342396795750));
res += mul(Get(s1,-dx,-dy), float4x4(-0.048257425427437,0.126882627606392,0.214604407548904,0.066496513783932,0.140869423747063,-0.052794732153416,-0.110899172723293,-0.048464246094227,0.103278435766697,-0.102956734597683,0.094985581934452,0.059040479362011,-0.068016424775124,-0.117633774876595,0.066280625760555,0.033842038363218));
res += mul(Get(s1,-dx,0), float4x4(0.285805195569992,-0.159608021378517,0.046452760696411,0.169788926839828,0.104063346982002,-0.170306593179703,-0.102386377751827,0.108166135847569,0.105540610849857,-0.000563732988667,0.046181134879589,-0.038208074867725,0.083097614347935,-0.046833138912916,0.321487426757813,-0.216113865375519));
res += mul(Get(s1,-dx,dy), float4x4(0.094985567033291,0.100846529006958,0.069286674261093,0.100467182695866,0.187324538826942,-0.209961369633675,-0.105119459331036,-0.172060027718544,-0.092724815011024,0.003969717305154,-0.075874805450439,0.136013388633728,0.123987950384617,0.232730016112328,0.005859381984919,-0.117895200848579));
res += mul(Get(s1,0,-dy), float4x4(-0.049973238259554,-0.246681421995163,0.013177323155105,-0.099449381232262,-0.053962685167789,0.197105363011360,0.047437414526939,0.112111642956734,0.198855400085449,0.199223071336746,-0.222843140363693,0.116898611187935,-0.106377445161343,0.138651475310326,-0.080869100987911,-0.120481610298157));
res += mul(Get(s1,0,0), float4x4(-0.010656412690878,0.092388704419136,-0.103018201887608,0.120611086487770,0.023902634158731,0.084620289504528,0.063843101263046,-0.074289187788963,0.108070895075798,-0.137559354305267,-0.128553181886673,0.179769203066826,-0.049760837107897,-0.147950515151024,0.058665476739407,0.138722002506256));
res += mul(Get(s1,0,dy), float4x4(0.029672527685761,0.115664280951023,-0.017815006896853,0.181855395436287,-0.001938652945682,0.060634002089500,0.055196233093739,-0.042668860405684,0.067313320934772,0.152038305997849,-0.139133661985397,0.055878836661577,0.014468071982265,0.219943210482597,-0.045707352459431,0.064985357224941));
res += mul(Get(s1,dx,-dy), float4x4(0.025079343467951,0.020605141296983,0.109034225344658,-0.051315519958735,-0.080018997192383,0.055616460740566,0.071402162313461,-0.023154839873314,0.027834350243211,-0.056990154087543,-0.030578467994928,0.005351529456675,-0.059146799147129,0.011791839264333,-0.054497323930264,0.106178611516953));
res += mul(Get(s1,dx,0), float4x4(-0.041687753051519,-0.013153638690710,0.204888939857483,-0.056043967604637,0.075680620968342,-0.106145031750202,0.022006358951330,0.071264736354351,-0.041325043886900,-0.073481664061546,0.059912227094173,0.044339764863253,-0.089962497353554,0.049234673380852,0.069741629064083,-0.010011631064117));
res += mul(Get(s1,dx,dy), float4x4(0.210707932710648,0.174267053604126,0.028762707486749,-0.015483273193240,-0.011944719590247,0.015618724748492,-0.057818345725536,0.067581966519356,-0.035047840327024,0.345443576574326,-0.169235616922379,-0.054324317723513,-0.194384723901749,0.022117139771581,0.134543135762215,0.126152232289314));
res += mul(Get(s2,-dx,-dy), float4x4(0.065953716635704,-0.140520095825195,0.080955438315868,0.097667627036572,-0.241663828492165,0.075117908418179,-0.095236398279667,0.006968506611884,-0.003230232279748,-0.078384809195995,-0.028077442198992,-0.070382423698902,-0.178067758679390,-0.093341022729874,0.064361736178398,-0.063907146453857));
res += mul(Get(s2,-dx,0), float4x4(0.075244382023811,-0.127985626459122,0.040973424911499,0.202696740627289,0.022670989856124,-0.258497357368469,-0.176856994628906,0.007476673927158,0.115669496357441,0.202120289206505,-0.040268097072840,-0.032965041697025,-0.053579591214657,-0.055641479790211,0.115727774798870,-0.033553224056959));
res += mul(Get(s2,-dx,dy), float4x4(0.089913956820965,-0.052617955952883,0.016487674787641,0.020948795601726,-0.011477511376143,-0.066183105111122,0.016197904944420,0.036282017827034,0.038146153092384,-0.047951266169548,0.064831219613552,0.024077668786049,-0.117283657193184,-0.102889172732830,0.098012618720531,0.058664128184319));
res += mul(Get(s2,0,-dy), float4x4(-0.154109388589859,-0.135076358914375,-0.043068584054708,0.090059623122215,-0.070300690829754,0.061622034758329,0.046820390969515,0.063116937875748,-0.108124516904354,0.081068158149719,-0.003412496997043,-0.108529075980186,0.095689937472343,-0.118229158222675,-0.098064608871937,-0.076300777494907));
res += mul(Get(s2,0,0), float4x4(0.037022843956947,-0.113288179039955,-0.165975823998451,-0.130591481924057,-0.089716576039791,0.206165924668312,-0.058620627969503,-0.031842336058617,-0.142998456954956,-0.017521867528558,0.072852171957493,0.033440556377172,0.074522912502289,-0.051979470998049,-0.210044562816620,-0.089467018842697));
res += mul(Get(s2,0,dy), float4x4(0.149041205644608,0.121072754263878,0.016257561743259,0.030805787071586,-0.088471166789532,-0.043342195451260,-0.140036419034004,0.110152363777161,-0.172834739089012,0.038850206881762,0.206073269248009,-0.028044942766428,0.010312654078007,-0.102258943021297,0.052310749888420,-0.044126465916634));
res += mul(Get(s2,dx,-dy), float4x4(0.104403302073479,-0.092188417911530,-0.026052972301841,0.031292933970690,-0.181049928069115,0.090098500251770,-0.120099961757660,-0.048678006976843,-0.131075024604797,0.031632464379072,0.216943413019180,0.131421044468880,-0.097710095345974,-0.025373138487339,-0.075369827449322,-0.110381089150906));
res += mul(Get(s2,dx,0), float4x4(-0.148673072457314,-0.035337302833796,0.126293435692787,-0.023870281875134,-0.145232781767845,0.231864795088768,0.109043255448341,-0.124432779848576,-0.104504510760307,0.015512947924435,0.342131376266479,-0.023034324869514,-0.066592358052731,-0.070356316864491,0.162209033966064,0.091601096093655));
res += mul(Get(s2,dx,dy), float4x4(-0.050260890275240,-0.172946393489838,-0.015601157210767,-0.200661867856979,0.050119161605835,-0.064438886940479,-0.075280316174030,-0.042275067418814,-0.058515511453152,-0.290389895439148,0.064573824405670,-0.003925124648958,-0.194014087319374,-0.061819765716791,0.025236163288355,0.069327659904957));
res += mul(Get(s3,-dx,-dy), float4x4(0.103552244603634,-0.165487334132195,0.084441274404526,0.110287331044674,0.078928843140602,-0.030206385999918,0.025179067626595,0.078485555946827,-0.010620735585690,-0.013600390404463,0.076721459627151,-0.049151185899973,0.007338572759181,-0.054582875221968,0.003673708066344,0.078767113387585));
res += mul(Get(s3,-dx,0), float4x4(-0.108626827597618,0.136935383081436,0.068674243986607,-0.057208754122257,-0.133107319474220,0.020515639334917,0.000084083279944,0.086441025137901,0.093732908368111,-0.013117345981300,0.028412137180567,0.063418969511986,-0.003348446683958,0.178672626614571,-0.109614402055740,0.047745361924171));
res += mul(Get(s3,-dx,dy), float4x4(-0.248414620757103,-0.148445263504982,0.053121998906136,0.020109904929996,0.133097320795059,-0.035467877984047,-0.071796379983425,0.022046031430364,0.149189293384552,0.071893505752087,0.052101735025644,-0.104138076305389,-0.110015526413918,-0.124441228806973,-0.124838307499886,-0.292476683855057));
res += mul(Get(s3,0,-dy), float4x4(-0.008441564626992,0.073017165064812,-0.008098428137600,-0.024875612929463,0.121490150690079,-0.018263695761561,0.065905690193176,0.138880103826523,0.095645084977150,0.102253623306751,0.116030186414719,-0.212185248732567,-0.100044891238213,0.166801959276199,0.049705866724253,0.042651221156120));
res += mul(Get(s3,0,0), float4x4(0.110325686633587,0.032238204032183,0.005143839400262,0.089870549738407,0.073141150176525,0.098185017704964,-0.118099078536034,0.164679571986198,0.060353703796864,-0.214501827955246,0.140567198395729,-0.027393698692322,0.008141146041453,-0.048916917294264,-0.063242666423321,0.150725856423378));
res += mul(Get(s3,0,dy), float4x4(-0.009502389468253,0.122003227472305,-0.037817284464836,0.083506785333157,-0.119686372578144,-0.014898684807122,-0.071994997560978,-0.085570082068443,0.017838785424829,0.043076071888208,0.043058592826128,0.026714317500591,0.076209902763367,0.082962855696678,-0.007497758138925,0.008052704855800));
res += mul(Get(s3,dx,-dy), float4x4(0.011616517789662,-0.101920060813427,0.082727394998074,0.017317656427622,-0.100428022444248,-0.208519026637077,0.159477040171623,0.018648013472557,0.042016416788101,-0.009602598845959,0.017688861116767,-0.047577828168869,0.103769145905972,-0.016768921166658,-0.023069981485605,-0.167576342821121));
res += mul(Get(s3,dx,0), float4x4(0.041230991482735,0.029100008308887,0.101427838206291,0.235233619809151,0.003133519552648,0.171568036079407,-0.187814667820930,-0.247500926256180,0.000476430926938,-0.091743052005768,-0.093780428171158,-0.114647597074509,0.043887674808502,-0.077100530266762,0.016962684690952,0.053889103233814));
res += mul(Get(s3,dx,dy), float4x4(0.020377419888973,0.151086091995239,-0.017418133094907,-0.077417127788067,-0.013199642300606,-0.110672853887081,-0.193905651569366,-0.191787838935852,-0.172149553894997,0.016820522025228,0.013919158838689,-0.108512230217457,0.073875382542610,0.143319889903069,0.066633462905884,0.085527539253235));
return max(float4(0,0,0,0), res);
}
