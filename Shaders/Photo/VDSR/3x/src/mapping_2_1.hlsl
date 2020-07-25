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
res += mul(Get(s0,-dx,-dy), float4x4(-0.097539283335209,0.098749488592148,-0.234211474657059,0.041932687163353,-0.154756933450699,-0.108414843678474,0.127949759364128,-0.229222640395164,0.272210776805878,-0.093657560646534,0.025682870298624,-0.098534092307091,-0.159304514527321,-0.019737964496017,0.027922052890062,0.075436122715473));
res += mul(Get(s0,-dx,0), float4x4(-0.014548721723258,0.049138937145472,-0.099696196615696,-0.037052951753139,-0.151598110795021,0.148079484701157,0.062085870653391,-0.108938030898571,-0.015930900350213,-0.087962105870247,-0.013806274160743,0.060364581644535,-0.032533269375563,-0.200792476534843,0.029178764671087,-0.075632967054844));
res += mul(Get(s0,-dx,dy), float4x4(-0.083506412804127,-0.268614619970322,-0.094018869102001,-0.044098395854235,-0.111038289964199,0.142823964357376,0.018092799931765,0.132562950253487,-0.001845761784352,-0.081576876342297,0.011056222952902,0.010188096202910,0.141945287585258,-0.019653774797916,0.018313342705369,0.053592234849930));
res += mul(Get(s0,0,-dy), float4x4(0.152625262737274,0.010116978548467,-0.020221127197146,-0.087331660091877,-0.100511267781258,-0.057452291250229,0.065761774778366,-0.028588585555553,0.171494275331497,-0.089170277118683,0.053903445601463,-0.031840197741985,-0.123420059680939,0.029198924079537,-0.120747081935406,-0.163717314600945));
res += mul(Get(s0,0,0), float4x4(0.117018923163414,0.176142975687981,-0.086229979991913,0.060363665223122,0.261334091424942,0.022461786866188,-0.082451686263084,-0.113615550100803,-0.118984974920750,0.060505017638206,0.178878575563431,-0.020197967067361,-0.092556305229664,-0.003487187903374,0.127678126096725,0.039838969707489));
res += mul(Get(s0,0,dy), float4x4(-0.140997529029846,0.141130611300468,-0.123219974339008,0.164301127195358,-0.005977522116154,0.121981047093868,0.020233396440744,-0.067096151411533,-0.040760371834040,0.110103741288185,-0.086330339312553,0.059817198663950,-0.206824064254761,-0.144345685839653,0.016252631321549,0.246600463986397));
res += mul(Get(s0,dx,-dy), float4x4(0.112094290554523,0.146607041358948,-0.093814536929131,-0.171264410018921,0.213919803500175,-0.184817254543304,-0.105352833867073,-0.211436867713928,-0.004894183482975,0.022497115656734,-0.088626250624657,0.039655175060034,0.088416598737240,-0.083534091711044,0.024935912340879,0.173710212111473));
res += mul(Get(s0,dx,0), float4x4(0.031790450215340,0.169078990817070,-0.096357032656670,0.055402755737305,-0.037459678947926,0.005070347804576,-0.073640614748001,-0.119913436472416,0.112715341150761,0.060093421489000,0.033093966543674,0.179292500019073,-0.049964956939220,-0.049973569810390,-0.077956512570381,0.197994247078896));
res += mul(Get(s0,dx,dy), float4x4(-0.158368110656738,-0.010532982647419,0.088009081780910,-0.039916928857565,-0.055894132703543,0.066669248044491,-0.155684068799019,0.317292779684067,0.184724837541580,-0.172533378005028,-0.028669856488705,-0.025663649663329,0.141215279698372,-0.144739270210266,-0.156792819499969,0.006552779581398));
res += mul(Get(s1,-dx,-dy), float4x4(-0.079020537436008,-0.147815644741058,-0.063501581549644,0.064601413905621,-0.054883595556021,-0.054686635732651,0.094027183949947,0.048345588147640,0.034953031688929,-0.034735452383757,0.111530117690563,0.019921492785215,0.076926976442337,0.041959919035435,-0.039573937654495,0.048033621162176));
res += mul(Get(s1,-dx,0), float4x4(0.002735083457083,0.197756186127663,0.214342683553696,-0.061687786132097,-0.127556547522545,-0.152497395873070,0.007566457614303,0.194641217589378,-0.120447114109993,-0.018214106559753,-0.062123548239470,-0.020437689498067,0.079815693199635,-0.121728308498859,-0.056372810155153,-0.177318796515465));
res += mul(Get(s1,-dx,dy), float4x4(-0.133590415120125,0.097889505326748,0.063883990049362,-0.041842777282000,-0.142260894179344,0.019273605197668,0.120850048959255,0.017832096666098,0.037861414253712,-0.122099727392197,0.109379626810551,-0.276165336370468,-0.065500721335411,-0.012019556947052,0.028838824480772,-0.110214941203594));
res += mul(Get(s1,0,-dy), float4x4(-0.088431015610695,-0.054841220378876,-0.196569144725800,-0.057765245437622,0.084039762616158,0.049562275409698,0.222792848944664,0.115167960524559,-0.159665971994400,-0.074861586093903,0.128072261810303,-0.004014250356704,-0.219145715236664,0.070866703987122,0.045797675848007,0.005155338440090));
res += mul(Get(s1,0,0), float4x4(0.149674013257027,0.281733781099319,-0.155810892581940,-0.136921107769012,-0.081433460116386,0.063738539814949,-0.221057936549187,-0.037527378648520,-0.008896292187274,-0.072824671864510,0.191815167665482,-0.138539507985115,0.043063532561064,0.102384276688099,0.019353460520506,-0.006461154669523));
res += mul(Get(s1,0,dy), float4x4(-0.006477031856775,-0.130739152431488,0.019564855843782,-0.025002850219607,-0.070453152060509,-0.228119954466820,-0.131682351231575,-0.075013495981693,0.047089166939259,-0.074749946594238,-0.049989115446806,0.031386766582727,-0.123253025114536,0.197404041886330,0.028766786679626,-0.064366810023785));
res += mul(Get(s1,dx,-dy), float4x4(0.074499055743217,-0.055631931871176,0.103564314544201,0.161206021904945,-0.047906622290611,0.017315056174994,-0.020412432029843,0.016863649711013,0.157621666789055,-0.041191246360540,0.046530935913324,0.030869919806719,-0.122059918940067,0.038412626832724,0.139583975076675,0.005150279961526));
res += mul(Get(s1,dx,0), float4x4(-0.079022720456123,0.030658204108477,0.054346378892660,0.064255528151989,0.015551496297121,-0.097505509853363,-0.025200340896845,-0.179387822747231,-0.087753325700760,0.034763686358929,-0.023179277777672,0.077433280646801,0.143611535429955,0.183435827493668,-0.141016036272049,0.070999868214130));
res += mul(Get(s1,dx,dy), float4x4(0.120413258671761,0.111172072589397,-0.208063140511513,0.027663750573993,0.097383491694927,0.004614596720785,0.191598415374756,0.048241395503283,0.012463501654565,-0.122197583317757,0.067011415958405,0.138775900006294,-0.078259982168674,-0.048791952431202,-0.147176414728165,0.013403371907771));
res += mul(Get(s2,-dx,-dy), float4x4(-0.063878186047077,-0.125499442219734,0.115426875650883,-0.036558583378792,-0.137512072920799,0.078928500413895,0.146700710058212,-0.034814402461052,0.069579884409904,-0.223559156060219,-0.046491920948029,0.052231434732676,0.089578643441200,-0.012344772927463,0.060764495283365,-0.034021288156509));
res += mul(Get(s2,-dx,0), float4x4(0.012826856225729,0.020892310887575,0.002869509160519,0.010074986144900,0.095189273357391,0.119167596101761,-0.125145465135574,-0.111254051327705,0.057369038462639,0.139409884810448,0.029928000643849,-0.012240095995367,0.052440140396357,0.141762152314186,0.047696717083454,-0.106235228478909));
res += mul(Get(s2,-dx,dy), float4x4(0.094600334763527,0.127353370189667,-0.110459141433239,-0.004570651799440,-0.144815400242805,0.106355533003807,-0.087341584265232,0.018743311986327,0.150630563497543,-0.121327660977840,-0.059051081538200,-0.001532388851047,-0.029639279469848,-0.019396623596549,0.011050419881940,-0.183841153979301));
res += mul(Get(s2,0,-dy), float4x4(-0.023252038285136,-0.044612962752581,-0.078342802822590,-0.046988412737846,-0.035024177283049,-0.118143357336521,0.089448258280754,0.034337095916271,0.015027779154480,-0.026158617809415,0.101136155426502,-0.122048564255238,0.014365009032190,-0.140089213848114,0.074854545295238,-0.071770653128624));
res += mul(Get(s2,0,0), float4x4(0.008156732656062,0.077357850968838,0.036626063287258,-0.081309288740158,-0.044705554842949,-0.013998149894178,0.069527789950371,0.003684669965878,0.067433409392834,-0.241549715399742,-0.019217923283577,0.178442046046257,0.150469258427620,0.020432475954294,0.187191992998123,-0.292738318443298));
res += mul(Get(s2,0,dy), float4x4(0.005427401512861,0.084638267755508,0.072640620172024,0.020003663375974,-0.154276579618454,-0.024736262857914,-0.108175672590733,-0.088775098323822,0.060536608099937,-0.044421643018723,0.015892703086138,-0.086538396775723,0.035927183926105,-0.022617172449827,0.045724578201771,-0.204128861427307));
res += mul(Get(s2,dx,-dy), float4x4(0.028639158234000,-0.171657159924507,-0.090050093829632,-0.045661564916372,-0.257680624723434,-0.054238688200712,-0.039034079760313,0.084646411240101,0.128807872533798,-0.061032023280859,-0.125937253236771,0.032564859837294,0.177947506308556,0.011256445199251,-0.080465428531170,-0.124323703348637));
res += mul(Get(s2,dx,0), float4x4(-0.049156788736582,-0.076228201389313,0.021643372252584,-0.085041329264641,0.004357357043773,-0.163592547178268,-0.031387194991112,-0.098570898175240,-0.033351186662912,-0.076056890189648,-0.192748382687569,-0.131312072277069,-0.074298292398453,-0.078395687043667,-0.000767098681536,-0.174793675541878));
res += mul(Get(s2,dx,dy), float4x4(0.241319373250008,0.122595153748989,-0.095744259655476,0.041774753481150,0.185004964470863,0.095536500215530,0.071470580995083,0.028065863996744,-0.038644835352898,-0.037781696766615,-0.025172609835863,0.184310272336006,-0.012977153062820,-0.083560325205326,0.023458896204829,-0.151247337460518));
res += mul(Get(s3,-dx,-dy), float4x4(-0.162632212042809,0.086359970271587,-0.089756004512310,-0.295644819736481,0.020526099950075,-0.000658798904624,-0.078314989805222,0.272814780473709,-0.095056533813477,-0.042706210166216,-0.085615165531635,-0.099776729941368,0.134492710232735,-0.169902518391609,-0.049686986953020,-0.103442296385765));
res += mul(Get(s3,-dx,0), float4x4(-0.007891592569649,0.034385923296213,-0.124845333397388,-0.100492186844349,-0.222951397299767,-0.068478986620903,0.092269197106361,-0.051248986274004,-0.244048342108727,0.030206345021725,-0.012043082155287,-0.024970369413495,-0.114767961204052,0.028503870591521,-0.075064569711685,0.114322945475578));
res += mul(Get(s3,-dx,dy), float4x4(0.118590719997883,-0.040722317993641,0.029583098366857,-0.070564255118370,-0.021509934216738,-0.069001287221909,0.039951108396053,0.019807551056147,0.049092255532742,-0.029785366728902,-0.018074247986078,0.047770045697689,0.158312395215034,-0.145136758685112,-0.030253700911999,-0.373196125030518));
res += mul(Get(s3,0,-dy), float4x4(-0.008529764600098,-0.071633182466030,-0.080041259527206,-0.031577706336975,-0.065749272704124,0.045625183731318,0.021929807960987,-0.049011457711458,-0.086038999259472,0.060148827731609,-0.081136249005795,-0.134268045425415,-0.054320987313986,0.114991314709187,-0.003155781188980,0.138352319598198));
res += mul(Get(s3,0,0), float4x4(-0.020270373672247,-0.108762063086033,-0.152957409620285,-0.025236748158932,0.046684455126524,-0.022760044783354,-0.164380699396133,-0.159862399101257,0.092242665588856,0.240718558430672,0.204960167407990,-0.209505066275597,0.021749937906861,0.255684584379196,-0.072900384664536,-0.042596828192472));
res += mul(Get(s3,0,dy), float4x4(0.066537015140057,-0.057582240551710,-0.223459675908089,0.351870149374008,-0.016671380028129,0.197994112968445,0.056413356214762,0.006137292832136,0.050166059285402,0.066857442259789,-0.095508448779583,0.054333787411451,0.016362430527806,-0.022676318883896,-0.155672863125801,0.036013223230839));
res += mul(Get(s3,dx,-dy), float4x4(0.097554236650467,0.325881481170654,-0.048067264258862,0.250812888145447,-0.075450353324413,-0.073445901274681,-0.038830734789371,-0.056277446448803,-0.020381636917591,0.091793395578861,0.046546861529350,0.145933583378792,-0.038761597126722,-0.079622887074947,-0.031263969838619,-0.099849402904510));
res += mul(Get(s3,dx,0), float4x4(-0.154132291674614,-0.119366437196732,0.117417924106121,0.025245279073715,0.030313283205032,-0.136822953820229,-0.162045225501060,0.172959223389626,0.123367689549923,0.127085253596306,-0.098531521856785,-0.161174207925797,-0.122258767485619,0.110914245247841,-0.184539705514908,0.275072276592255));
res += mul(Get(s3,dx,dy), float4x4(0.003256512340158,-0.114902988076210,0.152400568127632,-0.041685301810503,-0.006597559433430,-0.124835997819901,0.049124307930470,0.012198016047478,0.105589374899864,0.174902781844139,0.064690098166466,-0.109423369169235,0.008206850849092,-0.037014544010162,0.005510999355465,0.142502978444099));
return max(float4(0,0,0,0), res);
}
