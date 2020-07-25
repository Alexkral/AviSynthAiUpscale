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
res += mul(Get(s0,-dx,-dy), float4x4(-0.005018231458962,-0.082563437521458,-0.112407103180885,0.241562277078629,0.014606084674597,-0.020781954750419,-0.090988032519817,0.049424719065428,0.112400323152542,0.044788405299187,0.003868812927976,-0.015429825522006,0.091638140380383,0.025054225698113,0.005343017634004,-0.039278414100409));
res += mul(Get(s0,-dx,0), float4x4(-0.074570886790752,0.253355979919434,0.074970506131649,-0.231457158923149,0.004910925868899,-0.115238994359970,-0.008647529408336,0.070485740900040,-0.083289034664631,-0.077914170920849,0.144189655780792,0.006656175013632,-0.038313750177622,0.154891416430473,0.099707618355751,-0.254963010549545));
res += mul(Get(s0,-dx,dy), float4x4(-0.124658726155758,-0.067827254533768,0.090013645589352,0.083146572113037,0.051324766129255,0.122250244021416,0.218612417578697,-0.071253612637520,-0.053233720362186,0.023876527324319,-0.001640316331759,0.083744421601295,-0.075535126030445,-0.032503593713045,0.010678428225219,0.136779054999352));
res += mul(Get(s0,0,-dy), float4x4(0.099883660674095,-0.090394318103790,-0.070405244827271,0.024916280061007,0.190520927309990,0.057649295777082,-0.185054957866669,0.069720432162285,0.089547500014305,0.004140181466937,0.005478477571160,-0.207203656435013,0.136253654956818,-0.078639529645443,-0.266057819128036,-0.048538509756327));
res += mul(Get(s0,0,0), float4x4(-0.038073617964983,-0.031952492892742,-0.013300601392984,0.031141387298703,0.146555125713348,-0.023859059438109,0.021601602435112,-0.026923419907689,-0.002005007816479,0.039528198540211,-0.066321395337582,0.227914363145828,0.122848816215992,0.047699604183435,-0.046915788203478,0.108720548450947));
res += mul(Get(s0,0,dy), float4x4(0.050907641649246,0.093645475804806,-0.010642050765455,0.108618557453156,0.112816639244556,0.221036717295647,0.164491117000580,-0.134139522910118,-0.116413541138172,-0.083225943148136,-0.009191045537591,0.068965531885624,0.043071456253529,0.087838053703308,0.107973664999008,0.113655202090740));
res += mul(Get(s0,dx,-dy), float4x4(-0.013832287862897,0.022192513570189,-0.128161102533340,0.050862152129412,-0.189067244529724,0.110476687550545,0.019827919080853,0.097303129732609,0.086007483303547,0.078777745366096,-0.001118430984206,-0.111992187798023,0.019317742437124,-0.046832662075758,0.105382502079010,0.043128844350576));
res += mul(Get(s0,dx,0), float4x4(-0.063868552446365,-0.149318143725395,0.110064513981342,-0.267875909805298,-0.188577994704247,-0.145459145307541,-0.153858274221420,-0.246100530028343,-0.001838833908550,0.142577335238457,0.032864443957806,-0.009978584013879,-0.067493565380573,-0.128495737910271,0.194964498281479,0.006372577045113));
res += mul(Get(s0,dx,dy), float4x4(0.079695172607899,0.063517771661282,-0.022376166656613,0.106682375073433,-0.114744596183300,-0.068170450627804,0.238497987389565,0.082963228225708,0.009024343453348,0.007909462787211,0.098794475197792,0.121314175426960,-0.055001415312290,-0.162064865231514,-0.073219463229179,0.149542465806007));
res += mul(Get(s1,-dx,-dy), float4x4(0.123364686965942,-0.048779454082251,0.127376168966293,-0.080974146723747,0.008146340027452,0.016277676448226,-0.177124977111816,0.238492518663406,-0.094833679497242,0.018413791432977,0.095960073173046,-0.202995419502258,0.023446263745427,-0.047333706170321,0.043297532945871,0.068821355700493));
res += mul(Get(s1,-dx,0), float4x4(-0.030798418447375,0.098864153027534,-0.014200259931386,-0.072909817099571,0.078399598598480,-0.041348427534103,-0.077753491699696,-0.117742270231247,0.012488444335759,-0.072217732667923,0.024308180436492,-0.090178087353706,-0.027469772845507,0.035050112754107,-0.022312859073281,0.014365210197866));
res += mul(Get(s1,-dx,dy), float4x4(-0.010943027213216,0.022390086203814,0.128945946693420,-0.016672316938639,-0.123524360358715,0.051604796200991,-0.240583330392838,-0.014650189317763,-0.046166270971298,-0.004279154818505,-0.043571654707193,0.178002282977104,-0.063998594880104,-0.074639178812504,0.077462539076805,-0.046221304684877));
res += mul(Get(s1,0,-dy), float4x4(0.217628538608551,-0.064372062683105,0.021916821599007,0.014319800771773,-0.067217007279396,0.010093001648784,0.008175502531230,-0.064115107059479,0.121153116226196,-0.119977213442326,-0.079217247664928,-0.221686139702797,-0.065310321748257,-0.023954216390848,0.022944197058678,-0.027047682553530));
res += mul(Get(s1,0,0), float4x4(-0.126967087388039,-0.041406124830246,-0.001371515216306,-0.146178945899010,0.162753805518150,-0.075596004724503,0.105815179646015,-0.118981815874577,0.118325971066952,-0.112136736512184,0.054213263094425,0.003360187169164,0.017454478889704,0.003502455074340,-0.038836270570755,0.000583830580581));
res += mul(Get(s1,0,dy), float4x4(-0.045818813145161,0.025903871282935,0.015908468514681,0.204451054334641,-0.015692522749305,-0.017859624698758,-0.148008212447166,0.015049451962113,-0.045992176979780,-0.028701754286885,-0.026363290846348,0.192342817783356,-0.040365193039179,-0.306488335132599,0.006810542661697,0.029342098161578));
res += mul(Get(s1,dx,-dy), float4x4(0.024367846548557,0.025489769876003,-0.096035547554493,0.076102219521999,0.150718897581100,-0.101249903440475,-0.060789044946432,0.056523364037275,0.159906327724457,0.083074033260345,-0.002231318037957,-0.134388267993927,-0.123597912490368,-0.085636392235756,-0.075741447508335,-0.153753593564034));
res += mul(Get(s1,dx,0), float4x4(-0.243497699499130,-0.005342110525817,-0.285821586847305,-0.017914844676852,-0.075351461768150,-0.026682706549764,-0.094966821372509,0.001362244132906,-0.029500396922231,0.004468477796763,-0.012120430357754,-0.038986735045910,-0.007183391600847,-0.101256109774113,0.092164650559425,0.081792287528515));
res += mul(Get(s1,dx,dy), float4x4(0.055404916405678,-0.079675979912281,-0.095808520913124,0.035580333322287,-0.017673144116998,0.067957870662212,-0.069960929453373,-0.046902570873499,-0.280077099800110,0.119343571364880,-0.051935121417046,0.014292662963271,0.168708950281143,0.096629902720451,-0.032284129410982,0.178405836224556));
res += mul(Get(s2,-dx,-dy), float4x4(-0.007837404496968,0.107049919664860,-0.019689230248332,0.107618503272533,0.022551460191607,0.098630197346210,-0.057207763195038,0.116154402494431,-0.054187446832657,-0.086625151336193,-0.082914091646671,0.002880062675104,0.003424354130402,-0.098417215049267,0.073750019073486,-0.027204137295485));
res += mul(Get(s2,-dx,0), float4x4(0.197237014770508,-0.010865738615394,0.190244004130363,-0.149415031075478,-0.006084663327783,-0.063970237970352,-0.173356488347054,-0.133077859878540,0.154328733682632,0.054606534540653,-0.092490226030350,-0.005138769280165,0.023258151486516,-0.072740003466606,0.137882024049759,0.146415680646896));
res += mul(Get(s2,-dx,dy), float4x4(0.007235135883093,-0.056037701666355,-0.008200320415199,0.130875170230865,-0.002190570347011,-0.122179031372070,-0.088651873171329,-0.125724002718925,0.018735783174634,-0.033543154597282,0.093303278088570,0.049851860851049,-0.050830092281103,0.098714977502823,0.073126733303070,0.051491253077984));
res += mul(Get(s2,0,-dy), float4x4(-0.026421748101711,-0.021509055048227,0.029872111976147,-0.161338567733765,0.104924187064171,0.099560596048832,0.007571431808174,0.017902912572026,-0.139259815216064,-0.031878843903542,0.027288977056742,0.095399551093578,-0.076053977012634,0.033681631088257,-0.223016351461411,0.238714739680290));
res += mul(Get(s2,0,0), float4x4(-0.131343334913254,0.023712530732155,-0.241707056760788,0.126593843102455,0.113396674394608,0.059390846639872,0.024503920227289,0.045613497495651,0.033082220703363,0.008426535874605,-0.014175390824676,0.030241100117564,-0.054687891155481,0.013632849790156,0.088953219354153,-0.009014813229442));
res += mul(Get(s2,0,dy), float4x4(-0.000129997672047,0.099200591444969,0.086573883891106,0.009062328375876,0.003722234163433,-0.095864944159985,0.152417093515396,0.014695575460792,-0.102721996605396,0.110479280352592,0.119704544544220,-0.039304215461016,-0.200785875320435,-0.136186555027962,-0.064062006771564,-0.021586839109659));
res += mul(Get(s2,dx,-dy), float4x4(0.059991847723722,-0.008780273608863,0.157057955861092,-0.146924689412117,-0.038535326719284,-0.040882471948862,-0.035661097615957,0.033112809062004,0.051337871700525,0.091026619076729,-0.014434985816479,0.113578863441944,-0.084122620522976,0.119333013892174,0.010886634700000,0.008475547656417));
res += mul(Get(s2,dx,0), float4x4(0.185282617807388,0.082496300339699,-0.113275356590748,-0.108017951250076,0.290473520755768,0.174193516373634,-0.045783583074808,0.187346264719963,0.177215293049812,0.141170844435692,0.189997166395187,0.149747535586357,-0.065456621348858,-0.011576853692532,0.038687426596880,-0.001344202319160));
res += mul(Get(s2,dx,dy), float4x4(-0.074806183576584,-0.027677057310939,-0.021659275516868,0.019724491983652,-0.133890345692635,-0.023596173152328,0.168498739600182,-0.013280341401696,-0.071801997721195,0.010885172523558,0.114006482064724,-0.062408979982138,0.029151823371649,0.052795566618443,-0.132080554962158,0.082139469683170));
res += mul(Get(s3,-dx,-dy), float4x4(0.097169727087021,0.200121194124222,0.182330250740051,0.195657759904861,0.135010406374931,0.075535304844379,-0.104013815522194,0.000786745164078,0.174702510237694,-0.134936720132828,0.063248068094254,-0.116832911968231,0.027349472045898,-0.006870090961456,-0.106117248535156,-0.165825843811035));
res += mul(Get(s3,-dx,0), float4x4(0.069917753338814,-0.041048038750887,0.022709207609296,0.463112175464630,-0.026756042614579,-0.045261975377798,0.088167153298855,-0.203616887331009,0.149259865283966,0.030371414497495,-0.013374960049987,-0.099823623895645,0.039871968328953,0.070926211774349,-0.105543293058872,0.057792987674475));
res += mul(Get(s3,-dx,dy), float4x4(-0.048609435558319,-0.028687331825495,0.098880693316460,0.036993283778429,0.024935876950622,0.066767416894436,-0.023889590054750,-0.040423396974802,0.036308988928795,0.101641111075878,-0.040519852191210,0.000304968678392,0.112302683293819,-0.043192826211452,0.080626487731934,0.004536943975836));
res += mul(Get(s3,0,-dy), float4x4(0.060880664736032,-0.170646518468857,-0.069155469536781,-0.266134768724442,0.003701736219227,-0.054243821650743,-0.070393659174442,-0.100750736892223,-0.066749617457390,0.138352990150452,-0.256603956222534,0.053447343409061,-0.009979135356843,0.005872636567801,-0.196022734045982,-0.032777540385723));
res += mul(Get(s3,0,0), float4x4(0.099097490310669,-0.144025564193726,0.014490432105958,-0.003971148282290,0.042509499937296,0.097885675728321,-0.042007766664028,-0.002455209381878,-0.075146928429604,0.013828676193953,-0.148320034146309,-0.087205499410629,0.080276846885681,0.106874883174896,0.036319103091955,0.346711546182632));
res += mul(Get(s3,0,dy), float4x4(0.094839252531528,0.106098294258118,-0.017701452597976,0.085196144878864,-0.063943706452847,0.284094184637070,0.194505766034126,-0.236977159976959,-0.034727994352579,0.068136520683765,-0.017861567437649,-0.022809177637100,-0.109908528625965,0.070635914802551,-0.053081452846527,0.036318194121122));
res += mul(Get(s3,dx,-dy), float4x4(0.090426318347454,0.051525082439184,-0.033797260373831,-0.103209778666496,0.095362931489944,0.108191132545471,0.023385740816593,-0.051924966275692,0.153719440102577,0.093280158936977,-0.081167325377464,-0.076617613434792,0.089250206947327,0.009631490334868,-0.030813977122307,-0.002664195140824));
res += mul(Get(s3,dx,0), float4x4(-0.049541048705578,0.001631864928640,0.092989370226860,-0.033456195145845,-0.118036366999149,-0.040437839925289,-0.097813382744789,-0.046191152185202,0.205347061157227,0.065266318619251,0.018192037940025,-0.163887947797775,-0.061014652252197,0.055666383355856,0.064544990658760,-0.015331592410803));
res += mul(Get(s3,dx,dy), float4x4(-0.001407455652952,-0.113641344010830,0.059536222368479,-0.071688331663609,0.022276952862740,-0.026269471272826,0.010648355819285,0.066255457699299,0.045043013989925,0.017867872491479,-0.056528329849243,-0.095408402383327,0.060603469610214,0.134223014116287,0.044749017804861,-0.165386453270912));
return max(float4(0,0,0,0), res);
}
