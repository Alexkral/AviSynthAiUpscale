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
res += mul(Get(s0,-dx,-dy), float4x4(0.083090141415596,-0.050558060407639,-0.180162265896797,0.024085424840450,0.118148721754551,-0.202386945486069,0.186963319778442,-0.033899255096912,0.006446563638747,0.074952922761440,0.038818296045065,0.021932661533356,-0.247351303696632,-0.172117546200752,-0.045400824397802,0.124206848442554));
res += mul(Get(s0,-dx,0), float4x4(-0.029455136507750,0.119540400803089,0.148133128881454,-0.018135329708457,0.263701796531677,-0.270618587732315,0.129156157374382,0.031294506043196,0.058124091476202,-0.224031016230583,0.154165551066399,-0.023777332156897,-0.091010294854641,-0.023486437276006,-0.081164360046387,0.224230855703354));
res += mul(Get(s0,-dx,dy), float4x4(-0.115682274103165,0.142845690250397,-0.081147342920303,0.065813161432743,-0.057894296944141,-0.076122500002384,-0.177356213331223,-0.240557074546814,-0.159089714288712,0.097869373857975,0.061526123434305,-0.017203439027071,-0.024756876751781,0.204902410507202,-0.194893687963486,0.161251500248909));
res += mul(Get(s0,0,-dy), float4x4(0.024428529664874,0.019609509035945,0.034474566578865,-0.111035615205765,0.223857715725899,-0.102987326681614,-0.087789177894592,-0.171935170888901,-0.076743029057980,-0.147729173302650,-0.175628587603569,-0.093319356441498,0.137302845716476,-0.205474287271500,-0.084184058010578,0.007083192002028));
res += mul(Get(s0,0,0), float4x4(0.143082916736603,-0.147831663489342,0.112483553588390,0.127601653337479,-0.150672614574432,-0.017385574057698,0.041450735181570,0.163303405046463,-0.102701433002949,0.216438055038452,0.028512524440885,0.029065297916532,0.004708939697593,-0.020657269284129,0.073383159935474,-0.203019529581070));
res += mul(Get(s0,0,dy), float4x4(0.021799199283123,-0.037246003746986,-0.027464896440506,-0.026081988587976,0.181500166654587,-0.147957995533943,-0.167079955339432,0.102980725467205,0.065836988389492,-0.025800434872508,0.016538841649890,-0.087469972670078,-0.127831682562828,0.140303879976273,0.003892495762557,-0.315395891666412));
res += mul(Get(s0,dx,-dy), float4x4(0.230789691209793,0.057749580591917,0.040142714977264,0.210360750555992,-0.037777017802000,0.000744848046452,0.080366626381874,-0.225785672664642,0.022143088281155,0.064622052013874,0.047863073647022,-0.114000737667084,-0.161290273070335,0.099328890442848,0.136494040489197,0.107230618596077));
res += mul(Get(s0,dx,0), float4x4(-0.024860316887498,0.063206486403942,0.114103481173515,-0.186124995350838,0.033323369920254,0.148178443312645,-0.097059704363346,0.046792041510344,0.023829335346818,-0.041598692536354,-0.107059359550476,-0.044427588582039,-0.161370724439621,0.194026485085487,-0.059045255184174,-0.047565385699272));
res += mul(Get(s0,dx,dy), float4x4(0.215679109096527,-0.053474944084883,0.049826525151730,-0.021639391779900,0.022338455542922,-0.164868593215942,0.205215618014336,0.125141859054565,0.092146880924702,-0.172370746731758,0.067813731729984,-0.128235295414925,-0.092523775994778,0.123633205890656,0.019009687006474,-0.063795089721680));
res += mul(Get(s1,-dx,-dy), float4x4(0.009664018638432,-0.088959649205208,0.096165597438812,-0.067536175251007,-0.073833696544170,0.034204553812742,0.042957082390785,0.131978824734688,0.037583932280540,0.102306224405766,-0.130171522498131,0.079733677208424,0.073098003864288,-0.159442484378815,0.060961998999119,-0.085332296788692));
res += mul(Get(s1,-dx,0), float4x4(0.094993084669113,-0.182724833488464,-0.136354669928551,0.052690126001835,0.164869934320450,0.248057827353477,-0.012141848914325,0.069741018116474,-0.152662172913551,-0.112768664956093,0.026680098846555,-0.295449495315552,-0.185292139649391,-0.116438031196594,-0.080465614795685,-0.023300813511014));
res += mul(Get(s1,-dx,dy), float4x4(-0.032007575035095,0.122856222093105,0.074010439217091,-0.084723055362701,0.000539032742381,0.045188464224339,0.262458771467209,0.158819243311882,0.151624456048012,0.237557291984558,-0.084318302571774,0.045615471899509,0.120990164577961,-0.052206907421350,0.010638246312737,-0.152817502617836));
res += mul(Get(s1,0,-dy), float4x4(-0.054720319807529,-0.106767430901527,-0.143999874591827,0.040479689836502,0.117236360907555,-0.048157181590796,-0.048451744019985,-0.222395420074463,-0.004736474715173,-0.126136586070061,0.048742279410362,0.072671510279179,0.056718070060015,0.186859443783760,0.238494724035263,-0.177584931254387));
res += mul(Get(s1,0,0), float4x4(0.075481571257114,-0.036116786301136,-0.062427904456854,0.069415129721165,0.022329511120915,-0.118774212896824,-0.166338622570038,0.024725321680307,-0.006858464796096,0.188940495252609,-0.016019413247705,-0.063258863985538,-0.017929743975401,-0.222829684615135,-0.017568664625287,0.150540918111801));
res += mul(Get(s1,0,dy), float4x4(0.017573684453964,0.172557368874550,-0.042087946087122,0.222833022475243,0.104619525372982,-0.161989912390709,0.161903768777847,-0.002112148329616,0.040577869862318,-0.091019392013550,0.098788328468800,-0.048367463052273,-0.013596282340586,-0.042186975479126,0.098250456154346,0.306369870901108));
res += mul(Get(s1,dx,-dy), float4x4(-0.021218730136752,-0.158099830150604,0.227110803127289,-0.070142902433872,0.041011534631252,-0.047282703220844,-0.082268640398979,-0.200915515422821,-0.132707089185715,-0.024003833532333,0.162094041705132,0.118216134607792,-0.202917739748955,-0.163236916065216,-0.254179716110229,-0.024373050779104));
res += mul(Get(s1,dx,0), float4x4(-0.156899794936180,-0.042709797620773,0.000100984005257,0.039715144783258,0.100437991321087,0.064704991877079,0.059439092874527,0.021787291392684,-0.309613525867462,0.007136112544686,-0.180197760462761,0.038496222347021,-0.008784285746515,-0.188251480460167,0.267930537462234,0.056510321795940));
res += mul(Get(s1,dx,dy), float4x4(0.001682623173110,0.173363238573074,0.027142453938723,-0.016746286302805,0.079186424612999,-0.122515484690666,-0.135676816105843,-0.064028412103653,0.074149362742901,-0.232811778783798,0.012227290309966,-0.127920195460320,-0.028329879045486,-0.020100133493543,-0.007379040122032,0.092008322477341));
res += mul(Get(s2,-dx,-dy), float4x4(0.084778927266598,0.018879385665059,-0.170281082391739,0.045802704989910,-0.077946163713932,-0.165511444211006,-0.028689220547676,-0.108249984681606,-0.006815691478550,0.011963708326221,0.002151113236323,0.021947948262095,-0.079629257321358,0.088868916034698,0.008610301651061,-0.026967367157340));
res += mul(Get(s2,-dx,0), float4x4(0.094099670648575,-0.134409636259079,-0.072358600795269,0.014864354394376,-0.062968090176582,-0.178173691034317,0.030455084517598,0.128458946943283,-0.013995675370097,-0.009966855868697,0.030009029433131,-0.167025357484818,-0.084269829094410,0.045052580535412,0.153197631239891,-0.054823763668537));
res += mul(Get(s2,-dx,dy), float4x4(0.015720413997769,0.150813996791840,0.025977009907365,-0.168152868747711,0.069052591919899,-0.208530738949776,0.050376657396555,-0.057537194341421,-0.054692592471838,-0.004519129171968,-0.069784082472324,-0.180614575743675,-0.113731630146503,0.199636667966843,-0.117390088737011,-0.036426298320293));
res += mul(Get(s2,0,-dy), float4x4(-0.000225765106734,-0.125361219048500,-0.169671297073364,-0.030467398464680,0.169359579682350,-0.063716366887093,-0.264450877904892,-0.105288974940777,0.112267144024372,-0.042891323566437,-0.205512315034866,-0.013344108127058,0.039772652089596,0.120579324662685,0.051070183515549,-0.122866399586201));
res += mul(Get(s2,0,0), float4x4(-0.016412923112512,-0.058730386197567,-0.066148027777672,0.037046339362860,-0.062038175761700,0.009642555378377,-0.103198282420635,0.029143743216991,0.034329142421484,0.049020722508430,-0.088540181517601,0.000015777963199,0.137724265456200,-0.185060188174248,0.021703295409679,-0.002930180868134));
res += mul(Get(s2,0,dy), float4x4(-0.115887753665447,0.231300562620163,0.017454897984862,-0.124769322574139,-0.082683242857456,0.091876067221165,-0.138186305761337,-0.068324498832226,0.140006661415100,-0.028173532336950,0.142901286482811,-0.093635924160480,-0.042411491274834,-0.029199613258243,0.009446982294321,-0.146617174148560));
res += mul(Get(s2,dx,-dy), float4x4(0.097507677972317,0.068124055862427,-0.012226613238454,-0.044516019523144,0.210039824247360,0.136898890137672,-0.038167957216501,-0.202407211065292,-0.080686748027802,0.017414266243577,-0.064789414405823,-0.019016379490495,0.115325167775154,-0.066636040806770,0.012120607309043,-0.092556372284889));
res += mul(Get(s2,dx,0), float4x4(-0.001292492845096,-0.097626700997353,-0.153257742524147,0.040077384561300,-0.073494568467140,0.075331777334213,-0.182005152106285,0.068829916417599,0.094421640038490,-0.071940615773201,-0.001118400599808,-0.010077617131174,0.129503518342972,-0.037841457873583,-0.060032993555069,0.347617715597153));
res += mul(Get(s2,dx,dy), float4x4(0.036631971597672,0.027025477960706,0.124274320900440,-0.186283439397812,-0.085236236453056,0.118881769478321,-0.090396128594875,0.172742336988449,0.020830681547523,-0.054012384265661,0.114707604050636,0.006712397560477,0.140321016311646,0.039268046617508,0.039269763976336,0.014862144365907));
res += mul(Get(s3,-dx,-dy), float4x4(0.043364960700274,0.145723640918732,0.120680421590805,0.131665974855423,0.131472274661064,0.124189749360085,-0.038610454648733,-0.170409545302391,0.014965577982366,-0.137602046132088,0.041715536266565,0.045242186635733,-0.001080785412341,0.045058712363243,0.019265560433269,0.022123847156763));
res += mul(Get(s3,-dx,0), float4x4(-0.057801201939583,-0.069830782711506,0.015186817385256,-0.067945554852486,0.101405680179596,0.009099388495088,-0.129315540194511,0.092152833938599,-0.112742289900780,-0.038939777761698,-0.102940537035465,0.087287455797195,0.038221750408411,-0.072900809347630,-0.048342481255531,0.075830265879631));
res += mul(Get(s3,-dx,dy), float4x4(0.220279887318611,0.164637327194214,-0.092875413596630,-0.097096338868141,0.067509703338146,-0.022152846679091,-0.055870436131954,-0.057711824774742,-0.014287184923887,0.191147178411484,-0.067476056516171,0.086507432162762,0.129917204380035,0.025318540632725,0.038568802177906,0.026592077687383));
res += mul(Get(s3,0,-dy), float4x4(-0.082526393234730,0.198722094297409,0.023226240649819,-0.096646212041378,-0.120687685906887,0.051718294620514,0.027841227129102,0.136790156364441,0.046410553157330,0.077425830066204,0.035504430532455,-0.022026300430298,-0.245261475443840,0.029619853943586,-0.156616926193237,-0.047480132430792));
res += mul(Get(s3,0,0), float4x4(0.040247149765491,0.006983587983996,0.012868798337877,-0.196266114711761,-0.094289675354958,0.018640840426087,-0.070367090404034,-0.158251076936722,0.194127812981606,0.275361120700836,-0.222418949007988,-0.039910137653351,-0.073118075728416,-0.110375963151455,-0.120582394301891,-0.121212981641293));
res += mul(Get(s3,0,dy), float4x4(0.041023313999176,-0.020968992263079,0.038112785667181,0.155798241496086,-0.014819304458797,0.053716462105513,0.223800197243690,0.008238823153079,0.076497800648212,-0.107232823967934,-0.072339005768299,-0.049572855234146,-0.078551337122917,-0.190692394971848,-0.090562552213669,0.140697181224823));
res += mul(Get(s3,dx,-dy), float4x4(-0.110269658267498,-0.231042608618736,-0.009458095766604,0.181802138686180,-0.007714040111750,0.037629202008247,-0.057777583599091,0.009889669716358,-0.062287416309118,0.196785435080528,-0.167262151837349,-0.134403839707375,0.048593707382679,0.010427251458168,-0.039558909833431,0.276231050491333));
res += mul(Get(s3,dx,0), float4x4(0.054229315370321,-0.098268225789070,0.215652346611023,0.100182659924030,-0.048094805330038,0.001513498486020,-0.087388142943382,0.095057986676693,0.130310311913490,0.081715472042561,-0.173977315425873,0.021950986236334,0.067660816013813,0.123361863195896,-0.087639071047306,-0.147157803177834));
res += mul(Get(s3,dx,dy), float4x4(0.097499497234821,0.031716659665108,0.033803299069405,-0.130498170852661,-0.101886607706547,-0.006624155212194,-0.000867591938004,-0.120397828519344,-0.077567867934704,-0.053221646696329,0.055554591119289,-0.114677123725414,-0.012438623234630,0.089444003999233,-0.134018391370773,-0.078317515552044));
return max(float4(0,0,0,0), res);
}
