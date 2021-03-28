sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.047994315624237,0.053638190031052,0.036984924226999,-0.122262038290501);
res += mul(Get(s0,-dx,-dy), float4x4(-0.050424881279469,-0.019102701917291,-0.045408803969622,-0.029656441882253,-0.056529294699430,-0.209144562482834,0.011113964021206,0.085918232798576,-0.121795773506165,0.020058447495103,-0.014616186730564,0.171083867549896,-0.036655757576227,-0.098108574748039,-0.044407870620489,0.040932703763247));
res += mul(Get(s0,-dx,0), float4x4(-0.300888538360596,0.219029784202576,-0.108854353427887,0.003242973005399,0.166798368096352,-0.148881226778030,-0.041375044733286,0.020983623340726,-0.098707221448421,-0.068909265100956,-0.003995011094958,-0.113865435123444,0.055146295577288,0.494600981473923,-0.115521654486656,0.314879864454269));
res += mul(Get(s0,-dx,dy), float4x4(0.057684607803822,0.108429364860058,0.081526637077332,-0.071541562676430,-0.047181319445372,-0.152200505137444,0.002270694356412,-0.060653351247311,-0.063150204718113,0.010435962118208,0.023940050974488,0.053306985646486,0.054147265851498,0.017663259059191,-0.015090721659362,0.051331475377083));
res += mul(Get(s0,0,-dy), float4x4(-0.280834287405014,-0.277188181877136,0.027047209441662,-0.431003510951996,-0.206796348094940,-0.583114326000214,0.139875158667564,-0.051981031894684,-0.889460682868958,-0.089697718620300,-0.071246661245823,-0.453609853982925,0.137552097439766,0.158183485269547,-0.045583639293909,-0.173891380429268));
res += mul(Get(s0,0,0), float4x4(-0.658918917179108,-0.253811746835709,-0.295101076364517,-0.396069347858429,0.727720797061920,0.192307949066162,-0.292810589075089,-0.208267539739609,0.114532470703125,-0.007025570608675,-0.166061475872993,-0.067370995879173,-0.101184815168381,-0.821790754795074,0.054710544645786,-0.008046244271100));
res += mul(Get(s0,0,dy), float4x4(0.072376683354378,0.040690809488297,0.011001431383193,-0.107676751911640,0.141412794589996,-0.119713947176933,0.198089718818665,0.073370307683945,-0.442187428474426,0.081765785813332,-0.001753916963935,-0.097188062965870,0.089075542986393,0.106885448098183,-0.214886084198952,0.065880790352821));
res += mul(Get(s0,dx,-dy), float4x4(-0.330580145120621,-0.030156861990690,0.003978075925261,0.050756692886353,-0.226527318358421,-0.025368012487888,-0.020179271697998,-0.034481588751078,-0.166294246912003,-0.070486277341843,0.016221068799496,0.144018813967705,0.167163774371147,0.225352719426155,-0.048720605671406,-0.024413457140326));
res += mul(Get(s0,dx,0), float4x4(0.025706622749567,0.067540489137173,0.152087599039078,0.147491276264191,0.449587911367416,-0.145697519183159,0.046327192336321,0.215358808636665,-0.087655343115330,-0.135898068547249,-0.034183196723461,-0.061391998082399,-0.193206533789635,0.427290767431259,-0.207948639988899,-0.375674515962601));
res += mul(Get(s0,dx,dy), float4x4(0.010689747519791,-0.093405507504940,-0.013905535452068,0.073024168610573,0.040402732789516,-0.091399922966957,-0.016401236876845,0.045011889189482,-0.196257382631302,0.006721918005496,-0.028884321451187,-0.047346223145723,-0.084755681455135,0.138126969337463,-0.015957854688168,-0.014959928579628));
res += mul(Get(s1,-dx,-dy), float4x4(0.079472385346889,0.190325215458870,-0.046777360141277,0.090835765004158,0.121736548841000,0.042320393025875,0.025542141869664,-0.125470906496048,0.078558526933193,-0.028490517288446,0.099647350609303,-0.139878794550896,0.381888091564178,0.302175164222717,-0.066764138638973,-0.163154408335686));
res += mul(Get(s1,-dx,0), float4x4(0.048078928142786,-0.646231114864349,0.274059385061264,-0.153822526335716,-0.170203879475594,-0.246204927563667,-0.010919122956693,0.012813959270716,0.070390954613686,-0.040891341865063,-0.046252187341452,-0.126931190490723,-0.704282939434052,0.184005275368690,0.230386212468147,0.174508064985275));
res += mul(Get(s1,-dx,dy), float4x4(-0.134052515029907,0.056090079247952,-0.199765399098396,0.069982670247555,-0.058869101107121,-0.114132918417454,-0.054758798331022,-0.148083150386810,-0.109762504696846,-0.073341235518456,-0.026970067992806,-0.093648940324783,-0.349231034517288,-0.061150770634413,0.055572040379047,0.216419845819473));
res += mul(Get(s1,0,-dy), float4x4(0.243816629052162,0.157705634832382,0.119800418615341,0.203510791063309,0.114157497882843,-0.139116019010544,0.057463251054287,0.309429079294205,-0.190454080700874,-0.148723959922791,-0.177657663822174,0.314155280590057,0.299162894487381,0.037422839552164,0.068349279463291,0.206389024853706));
res += mul(Get(s1,0,0), float4x4(0.084478363394737,0.002108360640705,-0.244296252727509,0.801432073116302,-0.513155400753021,0.329439818859100,-0.139386907219887,0.138444572687149,0.381268590688705,0.456420242786407,0.648705542087555,0.715601384639740,-0.076713010668755,-0.003980807960033,0.087993666529655,-0.363624602556229));
res += mul(Get(s1,0,dy), float4x4(-0.219410240650177,0.357691943645477,0.021117020398378,-0.058183878660202,0.088641874492168,-0.239012390375137,0.107788041234016,0.249692112207413,-0.148457631468773,-0.307742595672607,-0.088556051254272,0.264486759901047,-0.651148021221161,-0.070651583373547,0.024223282933235,-0.055157341063023));
res += mul(Get(s1,dx,-dy), float4x4(0.008922565728426,-0.021566625684500,-0.039096388965845,0.147579133510590,-0.070606678724289,0.004846178926528,0.012742157094181,0.035673838108778,-0.045292083173990,0.034230209887028,-0.047165956348181,-0.136044397950172,0.172507822513580,0.073305748403072,-0.098245993256569,-0.117705300450325));
res += mul(Get(s1,dx,0), float4x4(-0.054769583046436,-0.090314224362373,0.055138051509857,0.156669065356255,-0.113066390156746,-0.003399122739211,0.084838367998600,0.354747325181961,0.078440189361572,0.121238619089127,-0.109881319105625,-0.105730585753918,-0.026528997346759,0.125815168023109,-0.062670566141605,-0.035984691232443));
res += mul(Get(s1,dx,dy), float4x4(0.053359806537628,-0.084824755787849,0.005026827100664,0.029218370094895,0.051062304526567,0.065951280295849,0.009330773726106,-0.054088857024908,-0.128257930278778,0.056063991039991,0.001473463606089,0.003888113889843,-0.052677977830172,0.029841074720025,-0.011218775995076,0.050279013812542));
res += mul(Get(s2,-dx,-dy), float4x4(0.008071267977357,-0.370971560478210,0.142546489834785,-0.015236017294228,0.213072761893272,0.119687877595425,-0.048548698425293,-0.047485925257206,-0.044947981834412,-0.191991269588470,0.098807275295258,-0.237763702869415,-0.087297469377518,0.151829585433006,-0.026601422578096,0.136634632945061));
res += mul(Get(s2,-dx,0), float4x4(-0.230817496776581,-0.207180738449097,-0.137411817908287,-0.253302633762360,0.244215518236160,-0.263167738914490,0.107843294739723,-0.150418415665627,-0.101502485573292,-0.234200850129128,0.076754868030548,-0.345257461071014,-0.103823140263557,0.178841039538383,0.018521303310990,0.345509648323059));
res += mul(Get(s2,-dx,dy), float4x4(-0.029119428247213,-0.046372804790735,-0.057328276336193,-0.007048268336803,0.012485269457102,0.016940984874964,-0.064462110400200,0.116894751787186,-0.060525111854076,-0.061620015650988,0.037127159535885,-0.042916290462017,-0.000156422000146,-0.007959678769112,0.059831310063601,-0.019892215728760));
res += mul(Get(s2,0,-dy), float4x4(0.153975665569305,-0.035763155668974,-0.025389166548848,-0.463310897350311,0.104643024504185,-0.025571798905730,0.161957502365112,0.214138865470886,-0.194941297173500,-0.274155318737030,-0.053460914641619,0.151720285415649,-0.067525506019592,-0.032348148524761,0.016344778239727,-0.515371203422546));
res += mul(Get(s2,0,0), float4x4(-0.397335112094879,0.194797813892365,0.150561690330505,-0.170358896255493,0.535670101642609,-0.183394506573677,-0.040355339646339,0.022033974528313,-0.123042613267899,-0.290939390659332,-0.443314492702484,0.066891655325890,-0.403912633657455,0.151551708579063,0.166675403714180,-0.747386097908020));
res += mul(Get(s2,0,dy), float4x4(0.151509150862694,-0.048408932983875,-0.098989039659500,0.091802120208740,-0.194397345185280,0.049381293356419,-0.196789309382439,-0.177422016859055,-0.004050169140100,-0.190225034952164,-0.039754603058100,0.134038776159286,0.141181439161301,-0.114071458578110,0.080744504928589,0.060006450861692));
res += mul(Get(s2,dx,-dy), float4x4(0.084331877529621,-0.001874830224551,-0.025300536304712,0.097472146153450,0.048915989696980,0.074146881699562,0.040553994476795,-0.032542478293180,-0.000811146106571,-0.058416649699211,0.017303302884102,0.241815835237503,-0.060774590820074,-0.016934549435973,-0.151287168264389,-0.231983780860901));
res += mul(Get(s2,dx,0), float4x4(-0.223052665591240,0.043094862252474,-0.026889046654105,0.076406016945839,0.188533261418343,0.013418991118670,0.080353565514088,0.223322272300720,-0.141910165548325,-0.101063773036003,0.071428731083870,0.387146472930908,-0.188641473650932,0.117353148758411,0.043188631534576,-0.297499865293503));
res += mul(Get(s2,dx,dy), float4x4(0.129084333777428,0.006198958493769,-0.043227057904005,0.000636505254079,-0.020507674664259,-0.090706564486027,-0.060230556875467,0.082950718700886,-0.043828316032887,-0.057455152273178,-0.069971539080143,0.034476913511753,0.135637640953064,-0.066116109490395,-0.005756389349699,-0.056573562324047));
res = max(float4(0, 0, 0, 0), res) + float4(-0.049199525266886,0.847255706787109,0.799417972564697,-0.031752221286297) * min(float4(0, 0, 0, 0), res);
return res;
}
