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
res += mul(Get(s0,-dx,-dy), float4x4(-0.127001777291298,-0.012774583883584,-0.001317835994996,0.098660938441753,0.063343338668346,-0.034337047487497,-0.064774200320244,-0.026927687227726,-0.123638711869717,-0.018008416518569,-0.027862366288900,-0.159558057785034,0.099214836955070,0.090199910104275,0.026600908488035,0.022838596254587));
res += mul(Get(s0,-dx,0), float4x4(0.014513074420393,0.010188993997872,-0.070596233010292,0.005895888432860,0.051528669893742,0.007052465341985,-0.049371320754290,0.017678661271930,-0.105312906205654,-0.104408644139767,-0.026713637635112,-0.021419933065772,0.170046865940094,0.264334887266159,0.096805535256863,0.077978685498238));
res += mul(Get(s0,-dx,dy), float4x4(0.076148383319378,0.050550509244204,0.036660004407167,0.103725783526897,0.151529267430305,-0.102149218320847,-0.000881704327185,0.119034007191658,-0.010514184832573,0.075098067522049,0.012811511754990,-0.016099048778415,0.120852209627628,0.131046861410141,0.065727911889553,0.079996585845947));
res += mul(Get(s0,0,-dy), float4x4(-0.075419940054417,0.135335758328438,0.037353135645390,-0.028230855241418,-0.101454563438892,0.146514654159546,0.089538671076298,-0.073164917528629,-0.017597006633878,-0.115498557686806,-0.007651910651475,-0.099705703556538,0.146567717194557,-0.033567678183317,-0.072797022759914,0.030432602390647));
res += mul(Get(s0,0,0), float4x4(0.081801943480968,0.209938272833824,0.140337139368057,0.066705249249935,0.056596159934998,0.353766918182373,0.037177473306656,0.052270166575909,-0.162840276956558,-0.058814302086830,-0.006731894332916,-0.034370157867670,0.136393159627914,0.130540430545807,-0.001128278672695,0.060160793364048));
res += mul(Get(s0,0,dy), float4x4(0.087500140070915,0.082893311977386,0.074880078434944,0.135829567909241,0.176075056195259,0.078768603503704,0.071998424828053,0.226881429553032,0.016106737777591,0.189314052462578,0.008687249384820,0.013274492695928,0.173387676477432,0.035004023462534,-0.002479454269633,0.094442531466484));
res += mul(Get(s0,dx,-dy), float4x4(-0.070672482252121,-0.048911966383457,-0.013938843272626,0.006430057808757,-0.075193919241428,0.059455510228872,0.066143840551376,-0.001073612249456,0.136078640818596,0.041717890650034,0.138613775372505,0.104592241346836,0.061513055115938,0.081450700759888,-0.007707709912211,0.062346749007702));
res += mul(Get(s0,dx,0), float4x4(0.002361365826800,0.144142791628838,0.198061570525169,0.065415099263191,0.099426113069057,0.054300483316183,-0.001011007931083,0.047911293804646,0.156594946980476,0.118082910776138,0.136048108339310,-0.066038206219673,0.190677076578140,0.155162513256073,0.050315342843533,0.149195477366447));
res += mul(Get(s0,dx,dy), float4x4(0.088120631873608,-0.025131832808256,0.091395929455757,0.078457273542881,0.109932340681553,0.044017929583788,0.172717422246933,0.155134528875351,0.182332679629326,0.170666709542274,0.048897970467806,0.119254238903522,0.174062162637711,0.070221394300461,0.059360008686781,0.045491728931665));
res += mul(Get(s1,-dx,-dy), float4x4(-0.133599594235420,0.037893489003181,0.077560052275658,0.015713160857558,-0.212481051683426,0.160580143332481,0.223848700523376,0.100615695118904,-0.039419300854206,0.050465114414692,-0.006477099843323,-0.026653463020921,-0.102377399802208,-0.119311831891537,-0.074051588773727,0.020220629870892));
res += mul(Get(s1,-dx,0), float4x4(-0.166980639100075,0.031143130734563,0.085025876760483,0.088959626853466,0.052523072808981,0.144710853695869,0.150742262601852,0.294851869344711,0.076741725206375,-0.122185848653316,-0.057839736342430,-0.024830143898726,-0.144291669130325,-0.056526720523834,-0.061716891825199,0.084300249814987));
res += mul(Get(s1,-dx,dy), float4x4(-0.124442361295223,-0.009597209282219,0.075709372758865,-0.053000006824732,-0.026629652827978,0.109941355884075,0.046762105077505,0.027990331873298,-0.059289179742336,-0.175088763237000,-0.076029144227505,0.008194288238883,-0.147982180118561,-0.106823846697807,-0.060114163905382,0.137255951762199));
res += mul(Get(s1,0,-dy), float4x4(-0.127362132072449,-0.009290139190853,0.198613420128822,-0.006813874933869,-0.183668553829193,0.088165596127510,-0.137132212519646,-0.114974670112133,-0.079311460256577,0.216029092669487,0.085439242422581,-0.006194091867656,0.139994964003563,0.034374199807644,-0.039916019886732,-0.060839746147394));
res += mul(Get(s1,0,0), float4x4(-0.210674330592155,0.162195488810539,0.039010968059301,0.048972494900227,-0.026315286755562,0.035422123968601,0.090876244008541,0.118225775659084,0.023850005120039,-0.002345275366679,0.119865059852600,-0.002025005640462,-0.037425231188536,0.261900305747986,0.018058804795146,-0.082013703882694));
res += mul(Get(s1,0,dy), float4x4(-0.150032311677933,-0.086929082870483,0.001644690986723,0.045780017971992,0.008742434903979,0.061804305762053,-0.008658669888973,0.025444801896811,-0.166257977485657,-0.068000108003616,0.111027710139751,-0.033622961491346,-0.042243495583534,-0.112924680113792,-0.020778886973858,-0.011141167022288));
res += mul(Get(s1,dx,-dy), float4x4(0.018690388649702,-0.022830879315734,0.127383753657341,0.052730135619640,-0.077218405902386,0.054047930985689,-0.043082319200039,-0.075036369264126,0.044934213161469,-0.013550571165979,0.010031214915216,0.071171909570694,-0.164370298385620,0.042775180190802,-0.097811132669449,-0.036155607551336));
res += mul(Get(s1,dx,0), float4x4(-0.123739115893841,0.007697829976678,0.134054854512215,-0.061318702995777,0.058731444180012,-0.055914517492056,-0.026277596130967,0.057454552501440,0.075922429561615,-0.113790996372700,0.070938102900982,0.207870155572891,-0.179438337683678,0.122674360871315,-0.104036800563335,-0.151936098933220));
res += mul(Get(s1,dx,dy), float4x4(-0.072397813200951,-0.052376892417669,0.073585011065006,-0.063543178141117,0.000362589547876,0.032476779073477,0.167515367269516,0.082297004759312,0.105446554720402,-0.143785804510117,0.015661122277379,0.073345832526684,-0.189782947301865,-0.165596202015877,-0.019967989996076,0.037735123187304));
res += mul(Get(s2,-dx,-dy), float4x4(0.101231910288334,-0.019471079111099,-0.002135421847925,0.145799651741982,-0.137005224823952,0.021482169628143,0.134709417819977,0.085730463266373,0.205225288867950,-0.113243184983730,0.029339423403144,0.039851270616055,0.149831458926201,0.001297006499954,-0.003447859548032,-0.030495239421725));
res += mul(Get(s2,-dx,0), float4x4(0.114729054272175,-0.035851843655109,-0.052825197577477,0.044448051601648,0.201786905527115,0.236260488629341,0.248633936047554,0.059117224067450,-0.085066653788090,-0.110598526895046,-0.018450442701578,-0.025878222659230,0.084331773221493,-0.139767989516258,-0.055411983281374,0.003776535857469));
res += mul(Get(s2,-dx,dy), float4x4(0.033199407160282,-0.160656765103340,-0.042384032160044,0.167968720197678,-0.036402385681868,0.217179432511330,0.009854081086814,-0.034508932381868,-0.002590261865407,-0.057736493647099,-0.034561444073915,-0.075146026909351,-0.151662454009056,-0.016055656597018,0.114315561950207,-0.066953010857105));
res += mul(Get(s2,0,-dy), float4x4(-0.023410795256495,-0.031963873654604,-0.042244214564562,-0.082274891436100,-0.169862166047096,-0.044800788164139,-0.157901287078857,-0.101325191557407,0.333374708890915,-0.081576354801655,-0.064975351095200,0.084730811417103,0.052775021642447,0.027467273175716,-0.017072416841984,0.114443972706795));
res += mul(Get(s2,0,0), float4x4(-0.118260711431503,0.227653533220291,0.064595833420753,0.042139198631048,-0.129573166370392,0.210870459675789,-0.091720923781395,-0.135297521948814,-0.209239318966866,-0.174374282360077,-0.074023529887199,-0.035366997122765,0.174201712012291,-0.235933810472488,0.053647600114346,0.205228164792061));
res += mul(Get(s2,0,dy), float4x4(0.202462896704674,-0.123217515647411,0.110743954777718,-0.015356789343059,0.017096739262342,0.123770177364349,-0.042964141815901,0.021311797201633,-0.062206082046032,-0.095613062381744,-0.126596048474312,-0.145996972918510,-0.069554693996906,-0.012883033603430,0.026160567998886,-0.095934353768826));
res += mul(Get(s2,dx,-dy), float4x4(0.217142805457115,-0.137553900480270,-0.180078983306885,-0.056328043341637,0.045267771929502,-0.055020064115524,-0.160013064742088,-0.066907152533531,0.274279862642288,0.047412041574717,-0.309631675481796,0.177120774984360,0.049230024218559,0.005905576050282,0.107728488743305,0.130203157663345));
res += mul(Get(s2,dx,0), float4x4(-0.092460773885250,0.056026667356491,-0.070875495672226,-0.119273163378239,-0.070128813385963,-0.095687143504620,-0.156714290380478,-0.097506508231163,0.194904938340187,-0.158902198076248,-0.310399562120438,0.107242479920387,-0.008610753342509,0.166852071881294,0.182883769273758,0.158876866102219));
res += mul(Get(s2,dx,dy), float4x4(-0.013748945668340,-0.004173180554062,-0.009147248230875,-0.029087338596582,0.020087953656912,0.036614183336496,-0.047696821391582,0.179886013269424,0.084564290940762,-0.104767873883247,-0.138913542032242,0.003104455070570,-0.011558613739908,0.058785215020180,-0.096167311072350,-0.084024734795094));
res += mul(Get(s3,-dx,-dy), float4x4(0.043041668832302,-0.096918568015099,-0.023091031238437,0.110912084579468,0.048476759344339,-0.040133610367775,-0.037295777350664,0.100154191255569,0.054297335445881,-0.070223554968834,-0.017046786844730,-0.067544534802437,0.009752750396729,-0.057336527854204,-0.031789902597666,0.115919843316078));
res += mul(Get(s3,-dx,0), float4x4(-0.033058606088161,0.075434193015099,-0.049153853207827,0.102837771177292,0.079464793205261,0.126675859093666,0.167511507868767,0.065725073218346,-0.126275181770325,-0.217178598046303,-0.057432830333710,-0.199923232197762,-0.128109619021416,0.030148997902870,0.076957009732723,0.082404404878616));
res += mul(Get(s3,-dx,dy), float4x4(0.196901872754097,-0.039166554808617,-0.024835955351591,0.188192069530487,-0.011283092200756,-0.001743342843838,-0.056087385863066,0.034434862434864,-0.082944370806217,0.034735258668661,-0.050733357667923,-0.092749826610088,0.044347524642944,0.076689362525940,-0.040984291583300,-0.143307432532310));
res += mul(Get(s3,0,-dy), float4x4(0.156953945755959,0.101058997213840,0.123357616364956,0.066383078694344,0.027290064841509,0.018413206562400,-0.106334641575813,-0.024065444245934,0.277192562818527,-0.051246810704470,0.091378539800644,0.088991113007069,-0.039794281125069,0.051479227840900,0.149694442749023,0.053956933319569));
res += mul(Get(s3,0,0), float4x4(0.002189215272665,0.164935171604156,0.045973151922226,-0.036361582577229,-0.020820692181587,0.046311080455780,0.064017154276371,-0.067540258169174,0.349488466978073,-0.188554838299751,0.114016726613045,0.052734516561031,-0.113666117191315,0.157092601060867,0.079927451908588,-0.079799659550190));
res += mul(Get(s3,0,dy), float4x4(0.057032972574234,0.113010957837105,0.184411585330963,0.069588422775269,-0.087061464786530,0.085086904466152,0.019718801602721,-0.017543587833643,0.123157881200314,0.113965876400471,-0.023361535742879,0.006443583872169,0.102403640747070,0.384869605302811,0.098816066980362,-0.069013550877571));
res += mul(Get(s3,dx,-dy), float4x4(0.042302444577217,0.030411845073104,-0.091666139662266,0.056348726153374,0.017819324508309,0.094804383814335,0.111805655062199,0.064898185431957,-0.051516983658075,0.062783136963844,0.046321056783199,0.058160785585642,-0.043067630380392,-0.030537186190486,0.024050641804934,-0.029712166637182));
res += mul(Get(s3,dx,0), float4x4(-0.082686372101307,-0.004574134945869,-0.038693629205227,0.008990662172437,0.044305443763733,0.110822618007660,0.001589505351149,0.067355029284954,-0.113947659730911,0.231407791376114,0.207641229033470,0.062750682234764,-0.112013831734657,-0.066688962280750,-0.013502112589777,-0.089692011475563));
res += mul(Get(s3,dx,dy), float4x4(-0.019773857668042,0.002334367716685,-0.076868347823620,0.030024942010641,0.058467812836170,0.094320423901081,0.126360371708870,0.025115849450231,0.095018811523914,-0.038573335856199,0.048037346452475,-0.076100222766399,0.096359051764011,0.284409582614899,-0.014454677700996,-0.072060927748680));
return max(float4(0,0,0,0), res);
}
