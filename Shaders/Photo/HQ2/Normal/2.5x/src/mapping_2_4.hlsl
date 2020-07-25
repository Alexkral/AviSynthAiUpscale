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
res += mul(Get(s0,-dx,-dy), float4x4(0.047093100845814,0.031352631747723,0.002169070765376,0.010886037722230,-0.001581939170137,-0.004383930005133,-0.021002139896154,-0.001875039422885,0.000753795786295,0.000368377979612,0.000717463612091,0.000267146766419,0.031402289867401,0.036198172718287,0.006543974857777,0.033594444394112));
res += mul(Get(s0,-dx,0), float4x4(0.073868818581104,0.008431919850409,0.006525364238769,0.010971836745739,0.057056244462729,-0.033150717616081,-0.006767229642719,-0.000963632424828,-0.000735512410756,0.000510551908519,-0.000800698297098,-0.000701231707353,0.020835645496845,0.019920440390706,-0.000356689153705,0.022395189851522));
res += mul(Get(s0,-dx,dy), float4x4(0.013973627239466,0.009341198019683,-0.017826976254582,0.038082264363766,0.058178544044495,-0.054194837808609,0.004850341472775,-0.006144814193249,-0.000225136318477,0.000525029841810,0.000248109834502,0.000636955432128,-0.031375922262669,-0.010802038013935,-0.002191099105403,0.016351224854589));
res += mul(Get(s0,0,-dy), float4x4(0.005825976375490,0.037847455590963,0.010318312793970,-0.000732680724468,0.030162004753947,0.008227231912315,-0.010882381349802,-0.042487721890211,-0.000462375639472,0.000316827557981,0.001333718304522,0.000212850281969,0.038032311946154,0.045413434505463,0.012702303007245,0.010049557313323));
res += mul(Get(s0,0,0), float4x4(0.013264827430248,0.060020908713341,0.006426564883441,-0.021720957010984,0.111342109739780,-0.002244552830234,0.004538760520518,-0.024465734139085,-0.000209213438211,-0.000151137734065,0.000419029587647,0.000153632092406,0.055631019175053,0.050287861377001,0.000554833444767,-0.009640644304454));
res += mul(Get(s0,0,dy), float4x4(0.000107395622763,0.067215777933598,-0.023617710918188,0.038832712918520,0.115659400820732,-0.005726073868573,0.009417864494026,0.027631862089038,0.000208121768082,0.001366792246699,0.001043534954078,0.000615984841716,0.020792789757252,0.004184401128441,-0.002116397721693,0.023899368941784));
res += mul(Get(s0,dx,-dy), float4x4(0.035934351384640,0.056689973920584,0.028994597494602,-0.002836811356246,0.039643738418818,0.009113569743931,-0.027782374992967,-0.023393560200930,0.000902273401152,-0.000315222161589,0.000047472123697,0.000270115444437,0.025870593264699,0.029118416830897,0.012992965988815,-0.004849582444876));
res += mul(Get(s0,dx,0), float4x4(0.020840084180236,0.036266509443521,0.034590803086758,0.024563301354647,0.055497124791145,0.024528743699193,-0.012880468741059,-0.011892802082002,-0.000868282571901,-0.000293098302791,-0.000655291427393,-0.000176679313881,0.026442270725965,0.034840192645788,0.007037215866148,-0.025756444782019));
res += mul(Get(s0,dx,dy), float4x4(0.006004814524204,0.022782472893596,0.001426160219125,0.045165147632360,0.081397235393524,0.048665199428797,-0.015229542739689,-0.005180869717151,-0.000535264611244,0.000113170106488,0.000478636735352,-0.000276441714959,0.025406025350094,0.017813447862864,-0.005124085117131,-0.014586347155273));
res += mul(Get(s1,-dx,-dy), float4x4(0.005717384163290,0.009148065932095,0.001249593566172,-0.001750117982738,-0.014932195656002,0.070482753217220,-0.011085509322584,0.040487121790648,-0.016901751980186,0.012765822932124,0.005592677742243,-0.000985672464594,-0.008130115456879,0.011624831706285,0.004090571310371,0.027080789208412));
res += mul(Get(s1,-dx,0), float4x4(0.010815087705851,-0.017019949853420,0.009375923313200,-0.063758380711079,-0.042871210724115,0.010681048966944,0.004043666645885,0.013052470050752,-0.017486795783043,0.005153673700988,0.007739942055196,0.021987380459905,-0.006743696052581,-0.025431120768189,-0.003173775970936,0.032305870205164));
res += mul(Get(s1,-dx,dy), float4x4(0.022780895233154,-0.009876281954348,0.023921919986606,-0.062399920076132,-0.092342011630535,0.017145054414868,-0.003751544514671,0.131104260683060,-0.005182481370866,-0.000060137565015,0.020078808069229,-0.005606900434941,-0.025029137730598,-0.007426537107676,0.000437695533037,-0.058610014617443));
res += mul(Get(s1,0,-dy), float4x4(0.005131112877280,0.015298838727176,0.001375892083161,-0.000733289110940,-0.008903028443456,0.094517126679420,-0.003300926880911,0.018722953274846,-0.011903852224350,-0.002835798775777,-0.022180270403624,0.068456485867500,-0.050217896699905,0.012669177725911,-0.032381333410740,0.108228519558907));
res += mul(Get(s1,0,0), float4x4(0.014542143791914,-0.022334991022944,0.006609242875129,-0.048189591616392,0.004010005388409,0.067454822361469,-0.002373943571001,0.076392076909542,-0.032717537134886,-0.021222302690148,-0.025774188339710,0.039692949503660,-0.064023576676846,-0.025649428367615,-0.049032073467970,0.027955520898104));
res += mul(Get(s1,0,dy), float4x4(0.025501416996121,-0.011306235566735,0.018243603408337,-0.062370110303164,-0.025272985920310,0.008006146177649,-0.001931334030814,0.225824251770973,-0.025032622739673,-0.003348147030920,-0.020908217877150,-0.068872310221195,-0.065222069621086,0.001168927876279,-0.030511884018779,-0.150269210338593));
res += mul(Get(s1,dx,-dy), float4x4(0.004470801446587,0.013170841149986,-0.000289901101496,0.001490771537647,0.004573572892696,0.085487276315689,0.006962169893086,0.022316323593259,0.003469549817964,0.015683118253946,0.002105178777128,0.022267496213317,0.036303192377090,0.029468260705471,-0.010501436889172,-0.025323901325464));
res += mul(Get(s1,dx,0), float4x4(0.026016831398010,-0.018327094614506,0.003578972071409,-0.037791807204485,0.015221594832838,0.032956235110760,0.003136944258586,-0.013221550732851,0.010740729048848,0.012871200218797,0.001144802430645,0.001578194671310,0.097988210618496,-0.002664299914613,-0.030539216473699,-0.024734355509281));
res += mul(Get(s1,dx,dy), float4x4(0.039945345371962,-0.011242857202888,0.012290277518332,-0.051566824316978,0.034534972161055,-0.015586915425956,-0.009786109440029,0.060436736792326,-0.000626239983831,0.012392909266055,0.005074858665466,0.009565749205649,0.044168561697006,-0.013606649823487,-0.023064734414220,0.015505975112319));
res += mul(Get(s2,-dx,-dy), float4x4(0.027786906808615,0.003790890099481,0.007579596713185,0.004717372357845,-0.017743498086929,0.032405536621809,-0.008415467105806,0.022030362859368,-0.034559249877930,0.042689774185419,0.027180884033442,0.002630382776260,-0.074773766100407,0.041601162403822,0.030070617794991,0.019403332844377));
res += mul(Get(s2,-dx,0), float4x4(0.024486530572176,0.002628392772749,-0.006059928797185,0.012454835698009,-0.053837921470404,-0.025639381259680,-0.036908514797688,0.052598431706429,-0.044025011360645,0.040102496743202,0.016189398244023,-0.018837105482817,-0.087995417416096,0.023730097338557,0.023198988288641,-0.051552359014750));
res += mul(Get(s2,-dx,dy), float4x4(0.015551147051156,-0.004633707925677,0.002689076121897,-0.001015299349092,-0.060403306037188,-0.057170182466507,0.052258137613535,-0.125565469264984,-0.047224760055542,-0.015416215173900,0.026948099955916,-0.040395297110081,-0.076104395091534,0.025382164865732,0.015091476030648,-0.036494117230177));
res += mul(Get(s2,0,-dy), float4x4(0.030763914808631,0.009614154696465,0.003454583929852,0.009464564733207,-0.023616263642907,0.095587566494942,-0.065719947218895,0.210769340395927,-0.005555092357099,0.023937594145536,0.006159262731671,0.011189511045814,-0.001238352386281,0.026325000450015,0.009149812161922,0.022106429561973));
res += mul(Get(s2,0,0), float4x4(0.025161871686578,0.005441922694445,-0.004570341669023,0.016239173710346,-0.100867033004761,-0.099019855260849,-0.116224534809589,0.291637688875198,-0.007668503094465,0.011115795932710,0.017529712989926,-0.026847410947084,-0.014060378074646,0.001326304743998,0.028611866757274,-0.005297695286572));
res += mul(Get(s2,0,dy), float4x4(0.009689025580883,0.000744941004086,0.003404892748222,-0.003690397134051,-0.140782386064529,-0.062743589282036,-0.025592332705855,-0.321496635675430,-0.002978792646900,-0.032923702150583,0.038616526871920,-0.079552464187145,-0.008946380577981,-0.019992772489786,0.024061687290668,-0.000075243297033));
res += mul(Get(s2,dx,-dy), float4x4(0.043560966849327,0.007592331152409,0.004369715228677,0.003418452106416,0.054831359535456,0.079092070460320,-0.046919681131840,0.012328730896115,-0.019974507391453,0.015848165377975,0.012628113850951,0.030284123495221,0.012366910465062,-0.003112458856776,0.003422379959375,0.071191504597664));
res += mul(Get(s2,dx,0), float4x4(0.038628254085779,0.007741081062704,-0.005401880946010,0.006164319813251,0.141639515757561,-0.043824471533298,-0.106999285519123,0.014396329410374,-0.029873223975301,0.006370536983013,0.027724400162697,0.026450753211975,-0.002990468172356,-0.024167552590370,0.025594070553780,0.043435204774141));
res += mul(Get(s2,dx,dy), float4x4(0.012384031899273,0.006393272429705,0.003087477758527,-0.009114797227085,0.029201528057456,-0.052554529160261,-0.048349399119616,-0.091701120138168,-0.022103168070316,-0.016589993610978,0.069867290556431,-0.029304735362530,-0.007844789884984,-0.037286974489689,0.045552067458630,-0.045294187963009));
res += mul(Get(s3,-dx,-dy), float4x4(0.039887282997370,-0.002211137209088,0.005399068351835,-0.017516253516078,-0.055489167571068,0.056998599320650,0.041319224983454,-0.018983310088515,-0.012325054034591,-0.002101913327351,-0.005041550379246,-0.007711827754974,-0.090776890516281,-0.007020608987659,0.004837764427066,-0.025487953796983));
res += mul(Get(s3,-dx,0), float4x4(0.063145384192467,0.011291200295091,0.000192185019841,-0.008476537652314,-0.053676627576351,0.047929622232914,0.045611999928951,0.001225180923939,-0.012947406619787,-0.002754290588200,-0.003395823994651,-0.009968100115657,-0.100834362208843,-0.032287616282701,0.033181197941303,-0.054862644523382));
res += mul(Get(s3,-dx,dy), float4x4(0.031182521954179,0.018437074497342,-0.006528194062412,0.018448933959007,-0.038966000080109,0.053721763193607,0.038027312606573,0.035600233823061,0.003199275117368,-0.001993900630623,0.005127653945237,-0.009904919192195,0.003039553528652,-0.068982496857643,0.038059037178755,-0.088117137551308));
res += mul(Get(s3,0,-dy), float4x4(0.003166392445564,0.001028095488437,0.008819870650768,-0.014140293933451,-0.022615207359195,0.039115116000175,0.047875441610813,-0.040037691593170,0.007314822170883,-0.001062864670530,-0.001104840193875,-0.009764831513166,-0.031019274145365,-0.046895377337933,-0.028305429965258,-0.046787131577730));
res += mul(Get(s3,0,0), float4x4(0.004536067135632,0.038236044347286,-0.002248099539429,-0.009943204931915,-0.016509339213371,0.016287546604872,0.076454512774944,-0.010159762576222,0.013685991056263,-0.004064672626555,0.000337776873494,-0.007248174864799,-0.047409068793058,-0.046921852976084,0.034313488751650,-0.069442175328732));
res += mul(Get(s3,0,dy), float4x4(0.004629997536540,0.041409313678741,-0.006802348885685,0.011085339821875,-0.008879238739610,-0.007179005071521,0.062194399535656,0.032404117286205,0.016072418540716,-0.002574537182227,0.008960382081568,-0.000234153470956,0.008442380465567,-0.123300403356552,0.059986416250467,-0.090413518249989));
res += mul(Get(s3,dx,-dy), float4x4(0.010983594693244,0.009359135292470,0.023687360808253,-0.015478359535336,-0.018000274896622,0.000582036562264,0.025916166603565,0.004847520496696,0.019612861797214,-0.000560333894100,-0.002913424978033,-0.006621894426644,0.045851413160563,-0.040181487798691,-0.058579463511705,-0.043433681130409));
res += mul(Get(s3,dx,0), float4x4(0.008848595432937,0.025908717885613,0.016257081180811,0.004122931975871,-0.021681636571884,-0.022950528189540,0.062788650393486,-0.007671198341995,0.028463035821915,0.001772202900611,0.001156684826128,-0.007981775328517,0.059852045029402,-0.038259882479906,0.007450656965375,-0.058901041746140));
res += mul(Get(s3,dx,dy), float4x4(0.004363465122879,0.013660984113812,0.005115007515997,0.020936921238899,-0.010509723797441,-0.045259375125170,0.071317069232464,-0.030429672449827,0.028552860021591,0.006615019403398,0.006200545467436,-0.002334234304726,0.107374399900436,-0.071144461631775,0.056818149983883,-0.060491349548101));
return max(float4(0,0,0,0), res);
}