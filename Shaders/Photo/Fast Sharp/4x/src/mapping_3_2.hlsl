sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.049438279122114,0.125205129384995,-0.002653281902894,-0.027107585221529);
res += mul(Get(s0,-dx,-dy), float4x4(-0.009254344739020,-0.056344076991081,0.200882032513618,0.268854916095734,-0.087898120284081,-0.015859840437770,0.225742891430855,-0.077716961503029,0.366804718971252,-0.021733229979873,-0.142015233635902,0.223505556583405,0.075757123529911,-0.034480240195990,-0.113364502787590,-0.024926254525781));
res += mul(Get(s0,-dx,0), float4x4(-0.083449080586433,0.167141884565353,0.053369417786598,0.071132048964500,-0.100873850286007,-0.198865637183189,-0.113489903509617,-0.091960161924362,-0.260703802108765,0.131052941083908,0.026493754237890,0.084565937519073,-0.000220790127059,-0.079804599285126,-0.116388127207756,0.062615483999252));
res += mul(Get(s0,-dx,dy), float4x4(-0.077730730175972,0.092387408018112,-0.112870983779430,0.178643971681595,0.011801533401012,-0.015586841851473,-0.005002933554351,0.092871479690075,-0.294722616672516,0.059470932930708,0.026603141799569,0.356924533843994,-0.140949934720993,0.048125136643648,-0.015377064235508,-0.027291089296341));
res += mul(Get(s0,0,-dy), float4x4(0.499668657779694,0.007203903980553,0.139146000146866,0.255397349596024,0.215115666389465,-0.094058364629745,0.058385569602251,0.317175388336182,0.251174151897430,0.041929323226213,0.058834969997406,0.068723306059837,-0.406727373600006,0.049941968172789,0.365154355764389,0.334552258253098));
res += mul(Get(s0,0,0), float4x4(-0.461558848619461,0.335408180952072,0.066675290465355,0.100064717233181,0.340540409088135,-0.648525953292847,-0.406349629163742,-0.441967427730560,-0.257000774145126,-0.117404341697693,-0.338571757078171,-0.135142117738724,0.563921749591827,-0.348255634307861,-0.209331482648849,-0.420165866613388));
res += mul(Get(s0,0,dy), float4x4(-0.277319163084030,-0.109255857765675,0.026889231055975,0.108462125062943,0.026691660284996,-0.019377298653126,0.083032459020615,0.183641746640205,-0.122677072882652,-0.004311258438975,0.151575937867165,-0.055971562862396,-0.043778114020824,0.182725116610527,0.028339004144073,-0.018163245171309));
res += mul(Get(s0,dx,-dy), float4x4(0.012900707311928,-0.101456739008427,0.022711358964443,0.025115761905909,-0.178729280829430,0.115988478064537,-0.001941465889104,0.214561462402344,0.064625315368176,-0.006438772659749,0.111223317682743,-0.124899744987488,-0.078781917691231,0.066105701029301,-0.164432197809219,0.196369245648384));
res += mul(Get(s0,dx,0), float4x4(0.024154171347618,-0.001540993805975,-0.000618308666162,0.024274893105030,-0.038120053708553,-0.273565530776978,0.116596288979053,0.026170738041401,-0.054643951356411,-0.029647771269083,0.161774441599846,-0.118604347109795,-0.048818990588188,-0.010148769244552,0.079861737787724,0.355639994144440));
res += mul(Get(s0,dx,dy), float4x4(0.028158076107502,0.050172675400972,0.069202892482281,-0.025042314082384,0.149933487176895,-0.126734122633934,-0.108582101762295,-0.145722389221191,-0.013178120367229,0.050263702869415,0.254001677036285,-0.043588232249022,-0.109969891607761,0.130583494901657,-0.028747731819749,0.026509273797274));
res += mul(Get(s1,-dx,-dy), float4x4(-0.065075233578682,0.062103904783726,0.027809510007501,0.007530064787716,0.027479277923703,-0.043085388839245,-0.150906533002853,0.016445204615593,0.013094165362418,-0.089647851884365,-0.181559726595879,0.051064867526293,0.115329459309578,0.030289152637124,0.236864015460014,-0.042668417096138));
res += mul(Get(s1,-dx,0), float4x4(-0.052085019648075,0.064318612217903,0.133207574486732,-0.088420219719410,0.323487281799316,-0.091913752257824,-0.014477242715657,-0.124026775360107,0.074210092425346,-0.041644860059023,-0.097111441195011,0.127952978014946,-0.109072484076023,0.044185154139996,0.220904842019081,0.108779199421406));
res += mul(Get(s1,-dx,dy), float4x4(-0.205091580748558,-0.062836922705173,-0.189669772982597,-0.067946001887321,0.048661373555660,0.005088282283396,-0.014269444160163,0.052641995251179,0.023301441222429,0.025949565693736,0.005340760108083,0.241721957921982,-0.243937909603119,-0.029336987063289,0.282371014356613,0.056763920933008));
res += mul(Get(s1,0,-dy), float4x4(-0.115297764539719,0.098776243627071,-0.304603308439255,0.005345588084310,-0.260762214660645,-0.022553436458111,-0.135123863816261,-0.204189866781235,-0.123664222657681,-0.200776785612106,-0.152883738279343,-0.127606630325317,0.313110709190369,-0.082933247089386,-0.218364104628563,0.177387103438377));
res += mul(Get(s1,0,0), float4x4(0.103280879557133,-0.092725880444050,-0.228146776556969,-0.130563318729401,0.394993573427200,-1.257430911064148,-0.133374467492104,-0.229593008756638,0.156372800469398,-0.215697407722473,-0.061316885054111,-0.259021073579788,-0.098508976399899,0.236669450998306,0.192981913685799,-0.037396896630526));
res += mul(Get(s1,0,dy), float4x4(-0.099556691944599,0.032457936555147,-0.172710403800011,0.038529571145773,0.330946564674377,-0.103689044713974,-0.104808390140533,0.101419582962990,0.275282561779022,-0.215219020843506,0.130995377898216,-0.121233887970448,-0.407689124345779,0.133735164999962,0.286238431930542,0.328493922948837));
res += mul(Get(s1,dx,-dy), float4x4(-0.075592197477818,0.098785720765591,-0.079303845763206,0.115611769258976,-0.146888345479965,-0.328659504652023,0.126682698726654,-0.193138331174850,-0.008655129000545,-0.320067256689072,-0.201510459184647,-0.194352477788925,0.230617925524712,-0.225543186068535,0.071429058909416,-0.158839017152786));
res += mul(Get(s1,dx,0), float4x4(0.117895685136318,-0.252732336521149,-0.243032127618790,-0.223230078816414,0.174223572015762,-0.232460960745811,-0.197713643312454,-0.178540006279945,0.210268020629883,-0.229081839323044,0.190010055899620,-0.092014223337173,-0.064636573195457,0.373851358890533,0.495862782001495,0.487715750932693));
res += mul(Get(s1,dx,dy), float4x4(-0.289540797472000,0.042452536523342,0.129221618175507,-0.095700010657310,0.170972108840942,-0.093700893223286,0.031423065811396,-0.038706738501787,-0.077164530754089,-0.060889001935720,0.015546245500445,-0.059277150779963,0.005965831223875,0.014217023737729,-0.154789820313454,0.212384790182114));
res += mul(Get(s2,-dx,-dy), float4x4(-0.085702903568745,-0.007909956388175,-0.003471173346043,-0.066219650208950,-0.023675087839365,0.021815055981278,0.098761633038521,-0.070627063512802,0.143878459930420,-0.075231000781059,-0.248625397682190,0.169478833675385,0.024833792820573,0.021212933585048,0.291630297899246,-0.048623397946358));
res += mul(Get(s2,-dx,0), float4x4(0.208149209618568,-0.109678104519844,-0.272665858268738,-0.056115835905075,-0.080130845308304,-0.001269798143767,0.174451723694801,-0.259846985340118,0.033100005239248,-0.003743247361854,-0.405732482671738,0.041773710399866,-0.008499985560775,0.116435207426548,0.092568002641201,0.103012062609196));
res += mul(Get(s2,-dx,dy), float4x4(0.130878344178200,0.035254377871752,-0.014974799007177,-0.068449713289738,-0.069376088678837,-0.003263029502705,0.082731120288372,-0.022346697747707,0.129356920719147,-0.096479594707489,-0.042001057416201,0.087434612214565,0.030219092965126,-0.072118587791920,-0.008368104696274,-0.120073460042477));
res += mul(Get(s2,0,-dy), float4x4(-0.233395472168922,0.039669457823038,0.142102614045143,0.031313888728619,0.222358405590057,-0.183162376284599,0.273398339748383,-0.416383177042007,0.091106034815311,-0.201090499758720,0.231509894132614,-0.103729471564293,0.119138576090336,0.078338444232941,-0.212269261479378,0.375769436359406));
res += mul(Get(s2,0,0), float4x4(-0.152055144309998,0.013008868321776,0.154031813144684,0.011462728492916,-0.156570211052895,0.438038259744644,0.617039799690247,0.132234334945679,0.131566286087036,-0.113100841641426,-0.334546715021133,-0.509754478931427,-0.069788582623005,0.150251761078835,-0.527465283870697,-0.307220578193665));
res += mul(Get(s2,0,dy), float4x4(0.323010146617889,-0.053264658898115,-0.040745858103037,-0.440447121858597,-0.094902366399765,-0.172260150313377,-0.023983033373952,-0.017102638259530,0.285562247037888,-0.033783745020628,0.007371362298727,0.219897195696831,-0.079963766038418,-0.234528660774231,-0.163088470697403,-0.226602122187614));
res += mul(Get(s2,dx,-dy), float4x4(-0.043077424168587,0.046489875763655,-0.225733265280724,-0.073754891753197,-0.004020983818918,0.051387578248978,-0.200925931334496,0.028649166226387,-0.168446615338326,-0.032603602856398,0.272235035896301,0.204437479376793,0.042569804936647,-0.002195335924625,0.123796150088310,0.206422850489616));
res += mul(Get(s2,dx,0), float4x4(-0.079958379268646,0.109429411590099,-0.047328226268291,0.103869602084160,-0.036706060171127,0.216178789734840,-0.376611649990082,0.166317999362946,0.074919894337654,0.114304274320602,0.290516197681427,-0.162374377250671,0.122171200811863,0.148153111338615,0.292503446340561,0.230392143130302));
res += mul(Get(s2,dx,dy), float4x4(-0.005750983022153,-0.007905385456979,-0.019320555031300,-0.070461586117744,0.054135050624609,-0.009041179902852,0.042655661702156,-0.106532260775566,0.327133625745773,-0.042520266026258,0.241791263222694,-0.088495045900345,-0.099686726927757,-0.083523802459240,-0.058123748749495,0.053953889757395));
res = max(float4(0, 0, 0, 0), res) + float4(-0.045787945389748,-0.272934943437576,0.343025147914886,0.905134737491608) * min(float4(0, 0, 0, 0), res);
return res;
}
