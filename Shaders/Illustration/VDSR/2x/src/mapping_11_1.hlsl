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
res += mul(Get(s0,-dx,-dy), float4x4(0.011221807450056,0.089526012539864,0.133237972855568,0.068644151091576,-0.224785372614861,-0.098232090473175,0.163311272859573,-0.010839190334082,0.125985071063042,0.030597189441323,0.051208917051554,-0.080125428736210,0.086516521871090,-0.146475136280060,0.001177939353511,0.123422309756279));
res += mul(Get(s0,-dx,0), float4x4(-0.036734230816364,-0.072700977325439,-0.092317625880241,0.168012425303459,-0.028870636597276,-0.029166342690587,0.053967271000147,0.109184637665749,-0.017621390521526,-0.010089525021613,0.141149953007698,0.057596199214458,0.014704194851220,-0.000098297306977,-0.115985408425331,-0.039543803781271));
res += mul(Get(s0,-dx,dy), float4x4(-0.227278277277946,-0.078849539160728,0.070617295801640,0.024695908650756,-0.168937534093857,-0.039250303059816,0.165616959333420,0.031502988189459,0.065822415053844,0.004134909249842,-0.246981367468834,0.052919879555702,0.002578529296443,0.005686233285815,0.084102317690849,0.294625669717789));
res += mul(Get(s0,0,-dy), float4x4(-0.111238360404968,-0.017238706350327,-0.090652897953987,-0.066398970782757,-0.056807260960340,-0.207394629716873,0.075272455811501,0.059118032455444,-0.088277459144592,0.013771970756352,0.144797414541245,-0.094020739197731,0.063705854117870,-0.113965108990669,-0.076301932334900,0.049070026725531));
res += mul(Get(s0,0,0), float4x4(-0.067085199058056,0.022309536114335,0.078278765082359,0.051152832806110,-0.013211479410529,-0.019307717680931,-0.088047027587891,0.022420110180974,-0.009038805961609,0.080995224416256,0.254040479660034,0.077949598431587,0.213047429919243,0.013493261300027,0.051832832396030,0.089786596596241));
res += mul(Get(s0,0,dy), float4x4(-0.061628729104996,0.107617355883121,0.151641368865967,0.035955287516117,-0.012884092517197,-0.012900843285024,-0.037006683647633,0.105608090758324,0.050047434866428,-0.097658105194569,0.204686969518661,0.177688583731651,-0.018585123121738,-0.100719615817070,-0.075120940804482,0.084125317633152));
res += mul(Get(s0,dx,-dy), float4x4(0.230429381132126,0.251762628555298,-0.172523602843285,0.080414436757565,-0.041466705501080,0.108057983219624,0.021077612414956,0.015602171421051,0.185004249215126,0.005291657522321,-0.118408806622028,-0.077800095081329,-0.028832081705332,-0.048578612506390,0.051688238978386,0.140396982431412));
res += mul(Get(s0,dx,0), float4x4(0.082837283611298,-0.038351707160473,0.039779715240002,0.078502066433430,0.056904409080744,0.002694119699299,0.005997656378895,-0.022776233032346,-0.009146390482783,0.027209956198931,-0.076095327734947,0.107018247246742,0.024622885510325,0.096395060420036,-0.091077089309692,0.054128706455231));
res += mul(Get(s0,dx,dy), float4x4(0.192995965480804,-0.082048512995243,0.061725687235594,0.061031028628349,0.088445015251637,0.251000225543976,0.195198222994804,0.105617463588715,-0.046186286956072,0.193864881992340,-0.174363583326340,0.174422308802605,0.005750134587288,-0.034016776829958,-0.136616960167885,0.113184429705143));
res += mul(Get(s1,-dx,-dy), float4x4(-0.082562401890755,0.013280371204019,0.095243833959103,-0.026148946955800,0.111859552562237,-0.021243752911687,-0.097622714936733,0.070683054625988,-0.119465306401253,0.002890722360462,-0.048230584710836,0.081037111580372,-0.132080644369125,0.019023068249226,-0.203945606946945,0.095202580094337));
res += mul(Get(s1,-dx,0), float4x4(-0.104415170848370,0.120093390345573,0.030879311263561,0.080482438206673,-0.116472519934177,-0.145283356308937,-0.150364860892296,-0.085550799965858,0.027354989200830,0.023954221978784,-0.095997489988804,0.008133050985634,-0.189161106944084,-0.172620594501495,0.033343981951475,-0.147298827767372));
res += mul(Get(s1,-dx,dy), float4x4(-0.066122680902481,0.000271580007393,0.090441554784775,0.049692973494530,-0.059301361441612,0.024627130478621,-0.102506473660469,0.093162618577480,-0.028510803356767,-0.028357502073050,0.026545012369752,-0.080122396349907,-0.067167066037655,-0.095606371760368,-0.039725694805384,0.040090218186378));
res += mul(Get(s1,0,-dy), float4x4(-0.085807651281357,0.038845609873533,-0.132779613137245,0.108174100518227,0.108447372913361,-0.224899753928185,0.087721407413483,0.105726659297943,-0.007756676059216,-0.046154696494341,-0.017948754131794,-0.168007820844650,0.024176677688956,0.006766621489078,-0.072571076452732,0.008351801894605));
res += mul(Get(s1,0,0), float4x4(0.119757354259491,0.019564319401979,0.040860202163458,-0.097084484994411,0.084115676581860,0.017157813534141,0.070290379226208,0.170057266950607,0.060445848852396,0.003210011636838,0.043148819357157,-0.105187416076660,0.035340692847967,0.015832988545299,-0.024784453213215,-0.101632259786129));
res += mul(Get(s1,0,dy), float4x4(0.033567104488611,-0.014596063643694,-0.031529124826193,-0.014947352930903,-0.132498398423195,-0.075037933886051,0.040392849594355,-0.082185454666615,-0.137330472469330,0.168784290552139,0.204642206430435,0.033534500747919,-0.122223563492298,0.060411375015974,-0.166215136647224,0.114008881151676));
res += mul(Get(s1,dx,-dy), float4x4(-0.005616077221930,0.055031705647707,-0.215943500399590,-0.043003164231777,-0.108643569052219,-0.028842790052295,-0.016323471441865,-0.044294822961092,-0.112083382904530,0.137575775384903,0.091548599302769,0.146590039134026,0.161118134856224,-0.110955961048603,0.076171331107616,-0.023081561550498));
res += mul(Get(s1,dx,0), float4x4(-0.084886468946934,0.074038997292519,0.064736947417259,-0.034156568348408,0.028193430975080,-0.029933817684650,0.118588894605637,-0.008123587816954,0.062922090291977,0.021702222526073,-0.258241266012192,-0.101035103201866,0.132106602191925,-0.129734903573990,0.144216313958168,-0.094490826129913));
res += mul(Get(s1,dx,dy), float4x4(-0.049775443971157,-0.010216454975307,-0.253977358341217,-0.027986433357000,-0.010747048072517,0.063097834587097,-0.009866516105831,-0.026434523984790,-0.017593752592802,0.040477260947227,0.039007782936096,0.048662837594748,-0.001763919251971,0.006332122255117,0.175653055310249,-0.024126976728439));
res += mul(Get(s2,-dx,-dy), float4x4(-0.034350637346506,-0.016973728314042,0.002985208062455,-0.093910083174706,-0.130631476640701,0.068158969283104,0.039533507078886,-0.112202890217304,-0.028432561084628,-0.068465560674667,-0.098169088363647,0.114784680306911,0.155785396695137,0.042056255042553,-0.097784370183945,0.112083829939365));
res += mul(Get(s2,-dx,0), float4x4(0.073687747120857,-0.004711129236966,0.062374878674746,-0.060267206281424,0.063718393445015,0.083815939724445,-0.223713368177414,0.009128591977060,0.000412665132899,-0.035789120942354,0.127222269773483,0.051587961614132,-0.023232040926814,0.032134607434273,-0.182935088872910,-0.009046657942235));
res += mul(Get(s2,-dx,dy), float4x4(0.042713180184364,-0.139887407422066,0.013198974542320,-0.102801062166691,-0.033535849303007,0.165953248739243,0.047727730125189,0.017055287957191,0.107428431510925,0.034812651574612,-0.056697063148022,0.084795527160168,-0.049883209168911,-0.090336598455906,-0.060833316296339,0.106099806725979));
res += mul(Get(s2,0,-dy), float4x4(-0.143069580197334,0.065916299819946,0.074420444667339,0.017612356692553,0.005915882065892,0.141505330801010,0.021803030744195,-0.070893228054047,-0.130097210407257,0.021746590733528,-0.040371552109718,0.076368346810341,0.029443386942148,0.009191531687975,0.118413612246513,-0.027297688648105));
res += mul(Get(s2,0,0), float4x4(-0.093613751232624,-0.066472798585892,0.134571388363838,-0.022910794243217,0.032484870404005,-0.152278631925583,-0.021991474553943,-0.150182440876961,-0.165880650281906,0.020411506295204,-0.107913151383400,0.085723802447319,-0.106933109462261,-0.061683747917414,0.171521872282028,0.223942041397095));
res += mul(Get(s2,0,dy), float4x4(-0.069101288914680,0.156336084008217,0.102948904037476,-0.106992207467556,0.127279818058014,-0.069611608982086,-0.024115465581417,-0.016557542607188,0.037745635956526,-0.065038919448853,-0.001519002835266,0.093374289572239,-0.052952762693167,-0.113006159663200,0.057142686098814,-0.085923977196217));
res += mul(Get(s2,dx,-dy), float4x4(0.001628552912734,0.116282157599926,-0.125611871480942,0.046017676591873,-0.168804332613945,0.096542060375214,-0.005650379229337,0.020324215292931,-0.185554653406143,-0.139746323227882,-0.035058867186308,-0.118879102170467,-0.080291047692299,0.077992409467697,-0.118391223251820,0.031539048999548));
res += mul(Get(s2,dx,0), float4x4(0.049127690494061,-0.023074852302670,0.137753501534462,0.193384468555450,-0.007826691493392,-0.014388645067811,0.023256955668330,-0.131209000945091,-0.027267336845398,-0.049163941293955,0.134875923395157,0.060842156410217,0.045630350708961,0.116971820592880,-0.068173140287399,-0.121299609541893));
res += mul(Get(s2,dx,dy), float4x4(-0.041424259543419,-0.144355788826942,0.036352451890707,0.022630043327808,-0.007528331596404,0.135763093829155,-0.045312635600567,-0.016395634040236,-0.070611715316772,0.125254690647125,-0.028863923624158,0.189190641045570,-0.078928463160992,-0.112383186817169,-0.042247522622347,-0.073944926261902));
res += mul(Get(s3,-dx,-dy), float4x4(0.011893046088517,0.037002332508564,-0.070005565881729,-0.128720298409462,-0.140275895595551,-0.172069042921066,0.094149798154831,0.017283719033003,-0.074262887239456,-0.077564872801304,-0.136122569441795,-0.148161187767982,-0.044899702072144,-0.043344851583242,-0.099971435964108,-0.167450487613678));
res += mul(Get(s3,-dx,0), float4x4(-0.141720786690712,-0.111233375966549,-0.073433645069599,-0.039602365344763,-0.117066241800785,-0.041169807314873,0.198170900344849,0.060624517500401,0.025990150868893,0.082934588193893,0.106298513710499,-0.167057514190674,-0.121962070465088,0.100339919328690,-0.006981154438108,0.064013175666332));
res += mul(Get(s3,-dx,dy), float4x4(0.094129472970963,0.083209410309792,0.010794628411531,-0.181688219308853,-0.131983041763306,-0.065602831542492,0.139318972826004,0.043224673718214,0.047809906303883,0.086668662726879,-0.001716244849376,0.026841370388865,0.178836837410927,-0.098892390727997,0.003733934834599,-0.030181443318725));
res += mul(Get(s3,0,-dy), float4x4(0.115128375589848,-0.031552400439978,-0.054531440138817,-0.058478116989136,0.182136893272400,0.007676238659769,-0.221421256661415,-0.103557549417019,0.131711825728416,-0.035483099520206,-0.239086702466011,-0.061953701078892,0.226296320557594,0.043981961905956,0.018863538280129,-0.021401127800345));
res += mul(Get(s3,0,0), float4x4(-0.115242838859558,-0.000386564177461,-0.057125411927700,0.034880243241787,-0.016774306073785,0.096690624952316,0.099834665656090,0.159286841750145,0.076575890183449,0.163523286581039,-0.040306847542524,-0.195033162832260,0.052240781486034,-0.132033720612526,0.154375538229942,-0.159492552280426));
res += mul(Get(s3,0,dy), float4x4(-0.049266774207354,0.028131702914834,-0.076191447675228,-0.031817406415939,0.028509167954326,-0.021153409034014,-0.036765865981579,0.010492588393390,-0.078680589795113,0.004840026143938,-0.017229452729225,-0.134228512644768,-0.119908474385738,-0.037698809057474,0.067275829613209,0.095555409789085));
res += mul(Get(s3,dx,-dy), float4x4(-0.053401261568069,0.068601511418819,-0.007985604926944,0.037143830209970,-0.138564020395279,0.070713303983212,-0.002413842361420,-0.005995300598443,0.129501461982727,-0.073671646416187,-0.288262635469437,-0.124097302556038,0.033432114869356,-0.045206401497126,-0.031648539006710,0.129068419337273));
res += mul(Get(s3,dx,0), float4x4(0.031941346824169,0.086697593331337,0.026106374338269,-0.030423667281866,0.053811199963093,-0.163743913173676,0.143260896205902,0.055445563048124,0.044984739273787,-0.057050187140703,-0.026456745341420,-0.297699123620987,-0.097777031362057,0.031267497688532,-0.094448402523994,0.117413863539696));
res += mul(Get(s3,dx,dy), float4x4(0.027914600446820,0.038886506110430,-0.012806000187993,-0.044500634074211,0.005516873672605,0.058322634547949,0.013200839981437,0.005543668754399,-0.113309301435947,-0.097090929746628,0.000420197495259,-0.065096683800220,0.089583940804005,0.009651814587414,-0.051875792443752,-0.090778045356274));
return max(float4(0,0,0,0), res);
}
