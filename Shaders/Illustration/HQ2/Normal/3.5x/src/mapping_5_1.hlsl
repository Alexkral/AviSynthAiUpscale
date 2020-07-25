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
res += mul(Get(s0,-dx,-dy), float4x4(-0.041629921644926,0.070189543068409,-0.032025311142206,-0.074715875089169,-0.182842895388603,-0.158794239163399,0.016182767227292,-0.005265266168863,-0.083781033754349,-0.020006064325571,0.014416732825339,-0.042112655937672,0.003071935847402,-0.066454611718655,-0.161384582519531,0.054990950971842));
res += mul(Get(s0,-dx,0), float4x4(0.062445502728224,0.009544368833303,0.068126834928989,-0.001150088268332,-0.092133142054081,-0.115003727376461,0.042642664164305,0.060468662530184,-0.069432176649570,0.062802739441395,0.040348641574383,-0.066614672541618,0.028656031936407,-0.193682670593262,-0.094764150679111,-0.018994498997927));
res += mul(Get(s0,-dx,dy), float4x4(0.041856925934553,0.051525268703699,-0.051964662969112,0.046409346163273,0.016000129282475,0.053689882159233,0.027168048545718,0.019089313223958,-0.073284007608891,-0.105378217995167,-0.034508001059294,-0.008491604588926,0.056092295795679,-0.140340000391006,0.025505555793643,-0.109399564564228));
res += mul(Get(s0,0,-dy), float4x4(-0.071992151439190,0.170624032616615,0.009325642138720,-0.017316283658147,-0.002075060969219,-0.060311533510685,0.174851894378662,0.014110135845840,0.013112812303007,0.058255180716515,0.043702464550734,-0.013744511641562,-0.085988938808441,-0.041899561882019,-0.110235214233398,0.096821293234825));
res += mul(Get(s0,0,0), float4x4(-0.023469004780054,0.044132512062788,0.043414618819952,-0.058534163981676,0.145360812544823,0.214786738157272,0.061894204467535,0.062853239476681,-0.054172940552235,-0.043120972812176,0.037083927541971,-0.019946474581957,-0.010744595900178,-0.022091044113040,-0.121832937002182,0.008181411772966));
res += mul(Get(s0,0,dy), float4x4(-0.050622880458832,-0.023349462077022,-0.041259132325649,0.010893439874053,0.029939262196422,0.005216728895903,-0.047439638525248,0.038845352828503,-0.062824666500092,-0.093646898865700,0.012910715304315,-0.057863913476467,0.047457948327065,-0.150354817509651,-0.113282486796379,-0.083638541400433));
res += mul(Get(s0,dx,-dy), float4x4(-0.093334607779980,-0.061352647840977,-0.067218229174614,0.062187425792217,-0.027085371315479,0.072287976741791,0.109500251710415,-0.033552691340446,-0.033999115228653,0.105036482214928,-0.062947548925877,-0.013615127652884,0.089600682258606,-0.112249635159969,-0.057050522416830,0.048856336623430));
res += mul(Get(s0,dx,0), float4x4(-0.060429215431213,-0.089428618550301,0.033732216805220,-0.017099689692259,0.091225005686283,0.067017726600170,0.012236381880939,-0.024557080119848,-0.062400087714195,-0.118717819452286,0.058988515287638,-0.015994647517800,0.036075267940760,-0.051101230084896,-0.041848707944155,-0.012408558279276));
res += mul(Get(s0,dx,dy), float4x4(-0.077003479003906,-0.010708607733250,0.013766716234386,0.023596756160259,0.000713734130841,0.013327289372683,0.068080149590969,-0.009743859991431,-0.028444407507777,-0.029526999220252,-0.007351122796535,-0.027293259277940,-0.006401429884136,-0.055503025650978,-0.001978394808248,-0.091374926269054));
res += mul(Get(s1,-dx,-dy), float4x4(-0.009351441636682,-0.167646601796150,0.061206094920635,-0.019055465236306,-0.042224798351526,-0.053919982165098,0.122421242296696,0.031904950737953,0.051852591335773,-0.092004992067814,-0.049496449530125,0.050786644220352,0.009857904165983,0.075491897761822,-0.099487550556660,0.126461893320084));
res += mul(Get(s1,-dx,0), float4x4(0.108563795685768,0.018135033547878,0.025548363104463,0.007605149410665,0.004961150698364,0.138328373432159,0.079766094684601,-0.017790516838431,0.043953824788332,-0.074193678796291,-0.067352436482906,0.134187772870064,0.038615852594376,-0.035427827388048,-0.034417130053043,0.050503350794315));
res += mul(Get(s1,-dx,dy), float4x4(0.069478973746300,0.054414253681898,0.067361548542976,-0.022906355559826,-0.089107684791088,0.022765573114157,0.032544657588005,0.018024493008852,0.074773818254471,-0.072362750768661,0.002576947212219,0.080168381333351,0.094689346849918,0.010106662288308,-0.036890465766191,0.129024893045425));
res += mul(Get(s1,0,-dy), float4x4(0.016566168516874,-0.092756018042564,-0.007880738005042,-0.028220571577549,-0.035214498639107,-0.085407942533493,0.059309624135494,0.001999135361984,0.082536123692989,-0.074353598058224,-0.046308759599924,-0.021919135004282,-0.152848586440086,0.112536378204823,-0.164088934659958,0.015125555917621));
res += mul(Get(s1,0,0), float4x4(0.090849801898003,-0.039655715227127,0.061398658901453,0.064435303211212,0.017194017767906,-0.029761258512735,0.179387509822845,-0.032060902565718,0.050063889473677,-0.118862085044384,-0.095613382756710,0.053409878164530,0.069239117205143,-0.057862933725119,-0.021832071244717,-0.072322919964790));
res += mul(Get(s1,0,dy), float4x4(0.008132051676512,0.053991973400116,0.141312569379807,0.012242078781128,0.046193480491638,0.092953585088253,0.018820727244020,-0.011566329747438,0.069679372012615,-0.054320398718119,0.005528425332159,0.052436269819736,0.064062476158142,0.022235553711653,-0.014487366192043,0.104017056524754));
res += mul(Get(s1,dx,-dy), float4x4(-0.167080804705620,-0.061259482055902,-0.014834869652987,-0.004880191292614,-0.097111627459526,-0.020353835076094,-0.021445566788316,0.053219445049763,-0.013842648826540,0.134675309062004,-0.108401246368885,-0.034361708909273,-0.262418985366821,0.125943660736084,-0.144089445471764,0.063008286058903));
res += mul(Get(s1,dx,0), float4x4(-0.035486776381731,-0.056148350238800,0.040825314819813,0.025221776217222,-0.137920930981636,-0.132802367210388,0.022315423935652,-0.053035203367472,-0.152421340346336,-0.054036214947701,-0.153568297624588,-0.065454676747322,-0.138450324535370,-0.073072567582130,-0.076743490993977,-0.053400870412588));
res += mul(Get(s1,dx,dy), float4x4(-0.105445630848408,-0.031032251194119,0.095305323600769,0.005631486885250,-0.005505062174052,-0.089517854154110,0.018497919663787,-0.038172423839569,-0.069568186998367,0.029928313568234,0.079233549535275,-0.053734142333269,-0.091589510440826,-0.097842499613762,-0.054676469415426,0.132601514458656));
res += mul(Get(s2,-dx,-dy), float4x4(0.030712053179741,0.112735778093338,-0.114628657698631,-0.025033487007022,0.099095292389393,0.124047130346298,-0.005317864008248,-0.117616713047028,0.125786587595940,0.093166276812553,-0.001382045098580,-0.055164150893688,0.127823799848557,-0.029833655804396,0.071767076849937,0.004223521798849));
res += mul(Get(s2,-dx,0), float4x4(0.010508545674384,-0.194786772131920,-0.079913921654224,-0.039308708161116,0.026682382449508,-0.078709185123444,0.039257664233446,-0.062750421464443,0.003935185261071,-0.050656739622355,-0.056639980524778,0.004295578692108,0.001448938157409,0.049387298524380,0.027333052828908,-0.048412237316370));
res += mul(Get(s2,-dx,dy), float4x4(0.087712869048119,-0.090453013777733,-0.036706555634737,0.002020829357207,-0.085867740213871,-0.006955666001886,0.060158602893353,-0.035797674208879,-0.008949339389801,-0.090397171676159,-0.046726640313864,-0.073328636586666,0.070756718516350,0.000234471575823,0.034281469881535,-0.014608460478485));
res += mul(Get(s2,0,-dy), float4x4(0.065192304551601,0.139669865369797,-0.051027804613113,0.008356960490346,0.018245473504066,0.122133150696754,-0.005340791773051,-0.043430827558041,-0.092898175120354,-0.043673846870661,-0.139614552259445,-0.029850840568542,0.113911114633083,0.016771676018834,0.045323178172112,0.103080891072750));
res += mul(Get(s2,0,0), float4x4(0.020905354991555,-0.068487383425236,-0.108686037361622,-0.011345776729286,0.006186812184751,-0.022456118836999,0.029150946065784,-0.093100108206272,-0.006737514864653,-0.120798349380493,-0.109205700457096,0.011881129816175,-0.011166395619512,0.010183464735746,0.043404530733824,-0.014650755561888));
res += mul(Get(s2,0,dy), float4x4(-0.055776908993721,-0.096858873963356,-0.042862650007010,-0.123086385428905,-0.075917206704617,-0.039434622973204,0.067375183105469,-0.096905231475830,0.150672346353531,-0.044975731521845,-0.077937617897987,-0.076879866421223,0.054004479199648,0.036777172237635,0.103162586688995,-0.053428426384926));
res += mul(Get(s2,dx,-dy), float4x4(0.096704863011837,0.090955793857574,-0.047231324017048,0.042524915188551,-0.163185596466064,-0.132305994629860,0.079075239598751,-0.048207793384790,-0.049470156431198,-0.123312622308731,-0.052279263734818,0.024927398189902,-0.077240355312824,0.099699765443802,0.153161808848381,0.038046311587095));
res += mul(Get(s2,dx,0), float4x4(0.002711293986067,-0.060543507337570,-0.016007812693715,0.095186211168766,-0.069461435079575,0.157391071319580,0.134326741099358,-0.073772646486759,0.119629971683025,-0.022381696850061,-0.024829307571054,-0.059343528002501,-0.118888229131699,0.200287416577339,0.143924653530121,0.006095134187490));
res += mul(Get(s2,dx,dy), float4x4(-0.154176399111748,-0.033724848181009,-0.022146839648485,0.009801519103348,-0.103364385664463,0.052926264703274,-0.047665555030107,-0.114443220198154,0.078051522374153,0.028799317777157,-0.036851260811090,-0.104232788085938,0.033141437917948,0.084171138703823,0.049007371068001,-0.123746991157532));
res += mul(Get(s3,-dx,-dy), float4x4(-0.006151768844575,0.134835779666901,-0.028196070343256,-0.034549959003925,-0.114921100437641,0.055710997432470,-0.042894292622805,0.038836356252432,0.026624727994204,0.039568699896336,-0.078028969466686,-0.000246362586040,0.083970420062542,-0.042642362415791,-0.125744536519051,0.000225363939535));
res += mul(Get(s3,-dx,0), float4x4(0.072694681584835,0.211413905024529,0.038126818835735,-0.069250628352165,-0.045215837657452,-0.010008745826781,0.015513980761170,0.100853808224201,0.026402849704027,-0.024291824549437,-0.004616511985660,-0.008941299282014,0.013606112450361,-0.065823525190353,-0.066296838223934,-0.039280325174332));
res += mul(Get(s3,-dx,dy), float4x4(-0.044881381094456,0.155940517783165,-0.032812703400850,0.082171782851219,-0.056349463760853,0.001939846435562,0.002165287733078,-0.062286492437124,0.134559273719788,0.129797473549843,-0.020171396434307,0.133790463209152,-0.093553386628628,-0.117555856704712,-0.076188951730728,-0.022585347294807));
res += mul(Get(s3,0,-dy), float4x4(-0.000493181170896,0.006017355248332,0.065005727112293,-0.039516448974609,-0.073703892529011,0.064397506415844,-0.070696406066418,-0.067345380783081,-0.010863862000406,-0.040041640400887,-0.114763207733631,-0.022390626370907,0.100299052894115,0.235129088163376,-0.054434679448605,-0.012261549010873));
res += mul(Get(s3,0,0), float4x4(0.046998068690300,0.064403876662254,0.094800874590874,-0.060399115085602,0.075627170503139,0.011358467862010,-0.029624206945300,0.130419328808784,-0.145917847752571,-0.053671330213547,-0.025306699797511,-0.053847074508667,0.044868636876345,0.010331155732274,-0.045650791376829,0.025712922215462));
res += mul(Get(s3,0,dy), float4x4(-0.056557048112154,0.045493446290493,-0.001363244373351,-0.001242226688191,0.060866244137287,-0.077304244041443,-0.043840389698744,0.123190402984619,0.007500624749810,0.000687059015036,-0.008256692439318,0.124368585646152,-0.033141303807497,-0.090655311942101,0.020440120249987,-0.060766246169806));
res += mul(Get(s3,dx,-dy), float4x4(-0.092600107192993,0.124560311436653,-0.024666143581271,0.012595929205418,-0.123341791331768,0.140009447932243,-0.032373052090406,-0.036834768950939,0.117765009403229,0.007375235203654,-0.162107944488525,-0.006840771995485,0.041528854519129,0.060775667428970,-0.028139146044850,-0.031670685857534));
res += mul(Get(s3,dx,0), float4x4(-0.045681484043598,-0.041226860135794,0.001861684606411,-0.017597503960133,-0.056883908808231,0.117091476917267,-0.051654130220413,-0.000694282935001,0.091940447688103,-0.156972035765648,-0.021183311939240,-0.063945971429348,0.164362654089928,0.105570606887341,-0.063195548951626,0.064909346401691));
res += mul(Get(s3,dx,dy), float4x4(-0.050910010933876,0.033491984009743,0.043426513671875,-0.027347531169653,-0.063360884785652,0.055596992373466,-0.049947485327721,0.048349544405937,0.106397338211536,0.031449846923351,0.022517720237374,0.031865905970335,0.127247571945190,-0.042814671993256,-0.049568999558687,0.058479860424995));
return max(float4(0,0,0,0), res);
}
