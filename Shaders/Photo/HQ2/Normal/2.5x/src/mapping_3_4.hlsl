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
res += mul(Get(s0,-dx,-dy), float4x4(0.020829519256949,0.020778115838766,-0.012822860851884,0.031554386019707,-0.012828764505684,-0.048945538699627,0.051749836653471,-0.056411795318127,-0.044733390212059,-0.012585577555001,0.034540951251984,0.049060996621847,-0.023405995219946,-0.016112720593810,-0.098445124924183,0.091801285743713));
res += mul(Get(s0,-dx,0), float4x4(-0.024948216974735,0.056515615433455,0.001896660774946,-0.001361086964607,-0.015898879617453,-0.039914704859257,0.004275422077626,-0.085240617394447,-0.035600896924734,-0.030232749879360,0.054930489510298,0.108135797083378,-0.020004313439131,0.061909686774015,-0.147942036390305,0.103720001876354));
res += mul(Get(s0,-dx,dy), float4x4(0.006480382755399,0.017935901880264,-0.011413629166782,-0.002486145589501,0.038572289049625,-0.031096680089831,-0.114637196063995,-0.030298683792353,0.002303459215909,-0.054396953433752,0.043688148260117,0.096524842083454,-0.095746926963329,0.017522137612104,-0.042641367763281,0.072126805782318));
res += mul(Get(s0,0,-dy), float4x4(0.021773640066385,0.016791800037026,-0.008108233101666,0.022866319864988,0.031692653894424,-0.103975042700768,-0.001910936087370,-0.011438614688814,-0.027300188317895,0.020669620484114,0.040331777185202,-0.004284361377358,-0.038316868245602,0.067860387265682,-0.069070927798748,0.070395290851593));
res += mul(Get(s0,0,0), float4x4(-0.021829895675182,0.072069220244884,0.007029155269265,-0.006132549140602,0.120128713548183,0.134357079863548,-0.180311113595963,-0.040967244654894,0.061304330825806,0.010042305104434,-0.089563414454460,0.008062739856541,-0.049046896398067,0.038957066833973,0.030088925734162,0.038755979388952));
res += mul(Get(s0,0,dy), float4x4(0.007667972706258,0.002648519119248,0.013198131695390,-0.003532581031322,0.032053418457508,-0.061829831451178,0.019923191517591,0.166691422462463,0.228630453348160,0.001025562291034,-0.065955772995949,-0.064749322831631,-0.073146715760231,-0.004194217734039,0.097851298749447,-0.032523002475500));
res += mul(Get(s0,dx,-dy), float4x4(0.033981245011091,0.024610495194793,-0.002462837845087,0.011512817814946,0.021635569632053,-0.015077884308994,-0.048216994851828,-0.007125416304916,-0.038734480738640,0.002380682621151,-0.001461929874495,-0.013443924486637,-0.073514640331268,0.033445380628109,0.037459004670382,-0.015645449981093));
res += mul(Get(s0,dx,0), float4x4(0.003989107441157,0.036835353821516,0.022430043667555,-0.003257579868659,0.000959890836384,-0.007986081764102,0.030124828219414,0.055954944342375,-0.002575353719294,0.014330188743770,-0.107337176799774,-0.068994946777821,-0.107584342360497,0.012792397290468,0.107107810676098,-0.029459645971656));
res += mul(Get(s0,dx,dy), float4x4(0.014496074058115,0.003379434347153,0.033201035112143,0.004584528971463,0.068447440862656,-0.094056122004986,0.178192839026451,0.135064795613289,0.055948957800865,-0.014686808921397,-0.037555083632469,-0.061803165823221,-0.126590415835381,-0.009356594644487,0.041654713451862,-0.006929208058864));
res += mul(Get(s1,-dx,-dy), float4x4(-0.018162330612540,-0.005236606113613,0.049773104488850,-0.017585957422853,0.035642988979816,0.051628541201353,-0.080423690378666,-0.056981239467859,-0.011355608701706,0.001554987858981,0.014759728685021,-0.007371519226581,0.000178781730938,-0.000555948703550,0.000422486336902,0.000400437507778));
res += mul(Get(s1,-dx,0), float4x4(-0.011645833030343,-0.012218949384987,0.013927239924669,-0.025363199412823,-0.038411181420088,0.021085442975163,-0.059182442724705,-0.036047033965588,-0.007789722643793,-0.005882864352316,0.014389298856258,-0.017234941944480,0.000213247854845,-0.000402274774387,-0.001430395059288,0.000213633553358));
res += mul(Get(s1,-dx,dy), float4x4(0.031601496040821,0.014652889221907,0.003187247319147,0.009142563678324,-0.021595748141408,-0.089229948818684,-0.032150063663721,-0.083372890949249,-0.006093322299421,0.003868630388752,-0.010311665013433,-0.003740366082639,-0.001352536841296,0.000796986918431,0.000986254308373,-0.001251460984349));
res += mul(Get(s1,0,-dy), float4x4(-0.052420929074287,-0.006820608861744,0.066050581634045,-0.039789721369743,0.020457306876779,0.071564450860023,-0.012268008664250,0.084750741720200,-0.018404943868518,-0.010312070138752,0.033369455486536,-0.009447383694351,-0.001252240152098,-0.000298631610349,0.000932809023652,-0.000725702266209));
res += mul(Get(s1,0,0), float4x4(-0.042870245873928,-0.014271765947342,-0.031417075544596,-0.003755209967494,-0.055488232523203,-0.040891554206610,0.168142095208168,0.129806384444237,-0.016857251524925,-0.005397466477007,0.017220947891474,-0.018004914745688,-0.000360304577043,0.000732685730327,-0.001206497545354,0.001140353968367));
res += mul(Get(s1,0,dy), float4x4(0.039331164211035,-0.011409834958613,-0.027513714507222,0.017496848478913,-0.076718613505363,-0.114452354609966,0.085802115499973,0.002464648801833,0.005680945236236,-0.033347871154547,-0.029038298875093,0.009096776135266,0.000611616473179,-0.000686358311214,0.001136089907959,-0.000257713429164));
res += mul(Get(s1,dx,-dy), float4x4(-0.005751022137702,-0.011939651332796,0.052056375890970,-0.024286555126309,0.045072544366121,-0.045597951859236,0.077009923756123,0.015034619718790,-0.007770978845656,-0.000517355510965,0.031035633757710,-0.006862785667181,0.000583844666835,-0.000801497662906,0.000246973009780,0.001039349939674));
res += mul(Get(s1,dx,0), float4x4(-0.025756288319826,-0.015675909817219,0.005973643623292,-0.001056033768691,0.054490122944117,-0.017554052174091,0.038245350122452,0.027789266780019,-0.001700433902442,-0.006542929913849,0.000574152276386,-0.006869735196233,0.000860730418935,0.000902138766833,-0.001622561365366,0.000639256322756));
res += mul(Get(s1,dx,dy), float4x4(0.010276720859110,0.025810435414314,-0.020117793232203,0.004327669274062,0.045208811759949,-0.016681028530002,-0.079882666468620,0.016632746905088,-0.002228812547401,-0.026947444304824,-0.008200485259295,0.004564575385302,-0.000206077369512,-0.000102568883449,0.000509814650286,-0.000222181377467));
res += mul(Get(s2,-dx,-dy), float4x4(0.020339183509350,-0.042367957532406,-0.041830610483885,0.034572601318359,0.019255606457591,-0.027463180944324,-0.081621281802654,-0.013148536905646,-0.011538426391780,-0.039341796189547,0.032331567257643,-0.034448731690645,0.029524253681302,-0.024459794163704,0.028021216392517,0.006547735538334));
res += mul(Get(s2,-dx,0), float4x4(0.010059690102935,0.019893333315849,-0.057893868535757,0.036287307739258,0.061437629163265,-0.016115231439471,-0.035370167344809,-0.032898180186749,0.009354475885630,-0.028240300714970,0.019592555239797,-0.027419434860349,-0.009775062091649,-0.020304091274738,-0.022792475298047,-0.009520361199975));
res += mul(Get(s2,-dx,dy), float4x4(-0.013464826159179,-0.016661565750837,0.075325824320316,0.072662405669689,0.156398773193359,-0.066459886729717,-0.002231834921986,0.085521996021271,0.001537678646855,0.015631034970284,-0.044698774814606,-0.020189844071865,0.058086682111025,0.010760182514787,-0.000723257777281,-0.017252160236239));
res += mul(Get(s2,0,-dy), float4x4(0.056460626423359,-0.001936097629368,-0.102269671857357,0.007346464321017,0.003164557274431,-0.015564054250717,-0.149741098284721,0.001056572073139,0.016701683402061,-0.005185804795474,0.032374419271946,-0.001958022825420,0.021224075928330,-0.007190948352218,0.006207549944520,-0.006899239029735));
res += mul(Get(s2,0,0), float4x4(-0.027488192543387,0.029995916411281,-0.049115084111691,-0.049290515482426,-0.012899791821837,0.000028485796065,-0.004342132713646,-0.061682544648647,-0.020719174295664,0.051142629235983,0.006038277409971,-0.026226498186588,-0.047208718955517,0.031329445540905,-0.073789045214653,-0.097443617880344));
res += mul(Get(s2,0,dy), float4x4(-0.070229776203632,0.017342919483781,0.090359427034855,0.018333941698074,0.049641408026218,-0.013571169227362,0.093790367245674,0.104320622980595,-0.002820633118972,0.012652522884309,-0.010913382284343,0.047320850193501,-0.021426288411021,0.035000275820494,-0.070465870201588,-0.014293181709945));
res += mul(Get(s2,dx,-dy), float4x4(-0.019643262028694,-0.003858233336359,-0.007124190684408,-0.038328543305397,0.010870038531721,-0.010075615718961,-0.042344886809587,-0.030276052653790,0.002542286878452,0.026537723839283,-0.022558765485883,0.018130030483007,-0.020993500947952,-0.021098690107465,-0.031483754515648,0.036640379577875));
res += mul(Get(s2,dx,0), float4x4(-0.023547684773803,-0.024519385769963,0.066369213163853,-0.093086890876293,0.011354626156390,-0.003908772021532,0.076935544610023,-0.081959001719952,0.001511480892077,0.050030376762152,-0.039442986249924,-0.014410356990993,-0.001215607626364,0.023681307211518,-0.089488357305527,-0.056363794952631));
res += mul(Get(s2,dx,dy), float4x4(0.000513693608809,0.030589921399951,0.023264508694410,-0.067369081079960,0.028894014656544,-0.021635863929987,0.128146722912788,-0.008089222013950,0.085062906146049,-0.036639757454395,0.011600855737925,0.003428780240938,-0.040194407105446,-0.035470433533192,-0.023259896785021,0.019357038661838));
res += mul(Get(s3,-dx,-dy), float4x4(-0.020751273259521,0.024055516347289,-0.048337120562792,-0.024360124021769,0.044250786304474,0.007532980293036,-0.031012827530503,0.021021770313382,-0.036242138594389,0.000452519510873,-0.001837126095779,0.005389190744609,-0.013567328453064,-0.014486049301922,-0.045620214194059,-0.039604440331459));
res += mul(Get(s3,-dx,0), float4x4(-0.082087457180023,0.050926007330418,-0.040438927710056,-0.015386893413961,0.005830029491335,0.037262070924044,-0.016807712614536,0.022113759070635,-0.019808778539300,-0.010025788098574,0.012140166945755,-0.004486351739615,-0.069027207791805,0.019816268235445,-0.039910778403282,-0.086017988622189));
res += mul(Get(s3,-dx,dy), float4x4(-0.032906554639339,0.033357713371515,0.019678531214595,0.027393894270062,-0.024371512234211,0.082161694765091,-0.020826086401939,-0.007127900142223,0.007772041484714,-0.020745664834976,-0.007211268879473,0.009367362596095,0.005137928295881,0.032638937234879,-0.054825473576784,-0.016562674194574));
res += mul(Get(s3,0,-dy), float4x4(0.002167851198465,-0.009809963405132,-0.018551403656602,-0.058297060430050,0.056008499115705,-0.004223229363561,-0.053719557821751,0.033695589751005,0.004150334745646,0.003268687054515,0.004977498669177,-0.009832769632339,-0.067443735897541,-0.025977259501815,0.036021247506142,-0.061243504285812));
res += mul(Get(s3,0,0), float4x4(0.020175036042929,-0.004568119067699,-0.008743117563426,-0.040901549160480,0.011139885522425,-0.009280116297305,-0.034377291798592,0.032631963491440,-0.015681101009250,-0.014574916101992,0.026710975915194,-0.004642860963941,-0.253992438316345,0.120100431144238,-0.028546156361699,-0.094587586820126));
res += mul(Get(s3,0,dy), float4x4(0.024814093485475,0.050438158214092,0.041820444166660,-0.024515245109797,-0.048176184296608,0.076983451843262,-0.016170931980014,-0.003641589777544,-0.005128379445523,-0.017635000869632,-0.000321508705383,0.017286732792854,-0.134544357657433,0.112673476338387,-0.062418058514595,-0.075665175914764));
res += mul(Get(s3,dx,-dy), float4x4(0.013567036017776,0.000456517096609,-0.017824940383434,-0.032840691506863,0.051068332046270,0.003830660367385,-0.049579299986362,0.027092890813947,0.006943397689611,0.016113610938191,-0.010340364649892,0.012568331323564,-0.023657426238060,-0.023352477699518,-0.001390998717397,-0.066955976188183));
res += mul(Get(s3,dx,0), float4x4(0.035752709954977,-0.033977929502726,-0.040542732924223,0.012001650407910,0.004617535509169,0.027272462844849,-0.018024396151304,0.016674462705851,-0.044695641845465,0.001567173283547,0.020046655088663,-0.013438138179481,-0.033675029873848,0.009104074910283,0.006052128970623,-0.081305742263794));
res += mul(Get(s3,dx,dy), float4x4(0.062575146555901,-0.010194302536547,-0.004421544726938,0.008866153657436,0.010520786978304,0.035995468497276,-0.002399313962087,-0.006633965764195,-0.055488869547844,0.000317603728035,0.005117624066770,-0.004461156670004,0.048140872269869,0.005342618096620,0.066453151404858,-0.041223745793104));
return max(float4(0,0,0,0), res);
}