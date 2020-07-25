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
res += mul(Get(s0,-dx,-dy), float4x4(0.015358067117631,0.003654672298580,-0.034443233162165,-0.128409177064896,0.098350673913956,-0.020799854770303,-0.123154692351818,0.054274030029774,-0.018474733456969,-0.011315261013806,-0.002849342767149,0.056719060987234,0.053208991885185,-0.111113630235195,-0.023261735215783,-0.140295729041100));
res += mul(Get(s0,-dx,0), float4x4(0.037204310297966,0.017148094251752,-0.066162995994091,0.179547265172005,0.179193392395973,-0.008113865740597,-0.150840193033218,0.006519972812384,-0.022180173546076,0.062127955257893,0.013459113426507,0.070011779665947,0.040831517428160,-0.087293036282063,0.023559328168631,-0.037177123129368));
res += mul(Get(s0,-dx,dy), float4x4(0.006320692133158,-0.060249306261539,-0.079518675804138,0.114658899605274,0.162172555923462,-0.003979734610766,-0.171172469854355,0.058004010468721,-0.026199355721474,0.073112949728966,0.014654708094895,-0.084929443895817,-0.077233046293259,-0.039357673376799,0.027085561305285,-0.035356335341930));
res += mul(Get(s0,0,-dy), float4x4(-0.032752808183432,-0.027095392346382,0.006345221307129,0.011002760380507,0.110690124332905,-0.085871800780296,-0.094855509698391,-0.087303496897221,-0.001592870452441,-0.005028535611928,-0.013678934425116,0.100271448493004,0.053111176937819,-0.085463613271713,-0.035269096493721,-0.019799472764134));
res += mul(Get(s0,0,0), float4x4(-0.038420233875513,0.052970062941313,0.004624879453331,-0.002346301916987,0.150555953383446,-0.136418297886848,-0.144384339451790,0.079008087515831,-0.005020908080041,0.007663994561881,0.000382409198210,0.018273759633303,-0.053109366446733,-0.051707495003939,0.078843973577023,0.116718195378780));
res += mul(Get(s0,0,dy), float4x4(-0.056178137660027,0.015673752874136,-0.002923131687567,0.014070304110646,0.065179549157619,-0.086599044501781,-0.102686360478401,0.010775060392916,-0.021440623328090,0.026931246742606,-0.005551098845899,-0.081085726618767,-0.050654120743275,0.012288576923311,0.099076069891453,-0.028975732624531));
res += mul(Get(s0,dx,-dy), float4x4(0.010399810969830,-0.028357464820147,0.029485180974007,0.126546233892441,0.020666504278779,0.005862939171493,0.117619588971138,-0.019551079720259,-0.005247666034847,0.006598183885217,0.015942776575685,0.084066659212112,-0.068477720022202,-0.043871920555830,0.034753832966089,-0.029475472867489));
res += mul(Get(s0,dx,0), float4x4(-0.019580448046327,0.075436912477016,0.027141297236085,-0.142150640487671,0.009500426240265,-0.022861588746309,0.158536672592163,0.004662693478167,0.032944299280643,-0.001954593928531,0.014731124974787,0.095565766096115,-0.052470833063126,0.000733932363801,0.126347199082375,-0.073979340493679));
res += mul(Get(s0,dx,dy), float4x4(-0.032897714525461,0.021647954359651,0.001117766136304,0.005708049982786,-0.056777797639370,-0.041863489896059,0.164524301886559,0.094061695039272,-0.004790923092514,0.007470265962183,0.000987064559013,-0.047350589185953,-0.039453011006117,0.012451754882932,0.083342544734478,-0.012455023825169));
res += mul(Get(s1,-dx,-dy), float4x4(-0.031797114759684,0.067297473549843,-0.002599623287097,0.079004608094692,0.009104941971600,-0.001878220355138,-0.022936996072531,-0.051681052893400,-0.022215208038688,0.033186800777912,0.007448536343873,0.005241155624390,0.022224327549338,0.030760984867811,-0.008373537100852,-0.000537722255103));
res += mul(Get(s1,-dx,0), float4x4(-0.019792614504695,-0.007115390151739,-0.008898270316422,-0.095512934029102,0.037713620811701,0.014779998920858,-0.020094094797969,-0.040907315909863,-0.044364165514708,0.099420569837093,-0.008775572292507,0.174985066056252,0.024558035656810,0.052780956029892,-0.003774729324505,-0.048351757228374));
res += mul(Get(s1,-dx,dy), float4x4(-0.014637823216617,0.046854354441166,-0.031595245003700,0.024894177913666,0.064022600650787,-0.008290496654809,-0.020980414003134,0.069765180349350,-0.055045008659363,0.023149648681283,-0.004824924748391,-0.000434355839388,0.001067668083124,0.034540496766567,-0.018943579867482,0.022821892052889));
res += mul(Get(s1,0,-dy), float4x4(-0.014878148213029,-0.001598079921678,-0.060372505337000,-0.262827545404434,-0.020623771473765,-0.027309244498610,-0.023588243871927,-0.123779810965061,-0.008742797188461,0.028879893943667,-0.001740859006532,-0.153560131788254,0.018319658935070,-0.026758702471852,-0.026344515383244,0.069219067692757));
res += mul(Get(s1,0,0), float4x4(0.010219108313322,-0.098772957921028,-0.065962061285973,0.592850863933563,-0.032540205866098,0.004274193197489,-0.039363723248243,-0.097042433917522,0.030823441222310,0.064467996358871,-0.007217127364129,0.022541156038642,0.014707843773067,-0.023524791002274,-0.028252335265279,-0.004830575548112));
res += mul(Get(s1,0,dy), float4x4(-0.100704498589039,-0.003979221917689,-0.036504689604044,-0.238757297396660,-0.031188495457172,0.052505005151033,-0.014827538281679,0.065415367484093,-0.008893484249711,0.021963367238641,-0.014863437972963,-0.204658046364784,-0.005790462717414,-0.035065371543169,-0.038429807871580,0.001640375703573));
res += mul(Get(s1,dx,-dy), float4x4(0.008080697618425,-0.100620307028294,-0.088099017739296,-0.018137421458960,0.011786434799433,-0.040977925062180,0.012329868040979,0.080103725194931,-0.006426217965782,-0.010344075970352,0.058162178844213,-0.008912019431591,0.027199549600482,-0.002731328830123,0.025511804968119,0.045101650059223));
res += mul(Get(s1,dx,0), float4x4(0.027345383539796,-0.030797818675637,-0.056627485901117,0.168121501803398,-0.023023411631584,-0.041212145239115,0.007710651960224,0.069376587867737,0.010457967408001,0.019555814564228,0.067475996911526,0.056461364030838,0.040212396532297,-0.043681699782610,-0.007680006325245,0.133228316903114));
res += mul(Get(s1,dx,dy), float4x4(-0.014374177902937,-0.011368138715625,-0.046025454998016,-0.146985113620758,-0.021403850987554,-0.021231222897768,-0.008908861316741,0.106893591582775,-0.008600262925029,-0.016595795750618,0.054595835506916,-0.018539281561971,0.037626098841429,-0.035087171941996,-0.019815742969513,0.042757723480463));
res += mul(Get(s2,-dx,-dy), float4x4(0.043880619108677,-0.036116179078817,-0.041453246027231,0.005499416496605,-0.008795627392828,0.079722926020622,-0.021835016086698,-0.044424239546061,-0.004598754458129,-0.038544319570065,-0.006738534197211,0.049204114824533,-0.164288476109505,0.031959131360054,-0.058725960552692,0.067880071699619));
res += mul(Get(s2,-dx,0), float4x4(0.124071545898914,0.086376473307610,-0.038421716541052,-0.030912019312382,-0.013458005152643,0.132956564426422,-0.033316038548946,-0.017468752339482,-0.028776301071048,-0.001249503926374,-0.015501955524087,0.079685948789120,-0.180995732545853,0.031445220112801,-0.035448696464300,0.452022939920425));
res += mul(Get(s2,-dx,dy), float4x4(0.065642736852169,0.010080552659929,-0.034083325415850,0.051899135112762,-0.025920020416379,0.050065550953150,-0.011162167415023,-0.015366921201348,-0.011522940360010,0.058791041374207,-0.033289503306150,-0.050532963126898,-0.197949960827827,-0.023623973131180,-0.029404491186142,0.096418477594852));
res += mul(Get(s2,0,-dy), float4x4(-0.097433604300022,-0.005414059851319,-0.099802300333977,0.072433032095432,-0.008544324897230,0.009461506269872,-0.028723539784551,0.060034159570932,0.036309584975243,-0.022941647097468,-0.022058214992285,-0.043245807290077,0.006202182266861,0.085523411631584,0.053363282233477,0.058312002569437));
res += mul(Get(s2,0,0), float4x4(0.062838174402714,0.040358353406191,-0.080004446208477,-0.118608623743057,0.017887713387609,0.024696987122297,-0.003508213208988,0.028485761955380,0.042227961122990,-0.049372166395187,-0.054254729300737,0.171058893203735,0.060635186731815,0.158439517021179,0.061578985303640,-0.413226157426834));
res += mul(Get(s2,0,dy), float4x4(0.087016828358173,-0.076315082609653,-0.067158736288548,0.094271279871464,-0.003778920974582,-0.019863285124302,-0.005265948362648,0.071047775447369,-0.030719367787242,-0.007563069462776,-0.061471760272980,0.091061569750309,0.061380434781313,0.055281605571508,0.040902875363827,0.179293066263199));
res += mul(Get(s2,dx,-dy), float4x4(-0.141084253787994,0.061914131045341,0.010498573072255,0.003251333255321,-0.026198366656899,-0.012395620346069,0.004499684087932,-0.026576461270452,-0.006985532119870,-0.057595204561949,-0.012937136925757,0.002342746593058,0.016672020778060,0.023449832573533,0.051770616322756,-0.025852346792817));
res += mul(Get(s2,dx,0), float4x4(-0.096375599503517,0.029936617240310,-0.018251989036798,0.095033489167690,0.001001417636871,0.007941138930619,-0.000935362477321,0.050240918993950,0.057332947850227,-0.002991853049025,-0.001522946753539,0.067230634391308,-0.003877175040543,0.005838752258569,0.072295963764191,0.119311168789864));
res += mul(Get(s2,dx,dy), float4x4(-0.041890200227499,-0.041792768985033,-0.065837986767292,0.082049675285816,-0.020566433668137,-0.011613767594099,0.007579428143799,-0.008594579063356,-0.004454480949789,-0.012962783686817,0.003173622302711,-0.050537791103125,-0.075904265046120,0.048156619071960,0.061282064765692,-0.072388932108879));
res += mul(Get(s3,-dx,-dy), float4x4(-0.000615027965978,-0.025469418615103,-0.030815944075584,-0.070001222193241,-0.061326064169407,0.043923601508141,-0.073000028729439,-0.010903681628406,0.010890217497945,0.054033037275076,0.036873094737530,-0.011363105848432,0.002013958990574,-0.004223889205605,0.004411668516695,-0.000001628723112));
res += mul(Get(s3,-dx,0), float4x4(0.045921172946692,-0.020897030830383,-0.060399085283279,-0.119997538626194,-0.052473161369562,0.147286579012871,-0.046892885118723,0.020875573158264,0.090061761438847,0.106812946498394,0.051917172968388,0.003659566864371,0.002803334267810,-0.002960832789540,0.004591474309564,0.012727939523757));
res += mul(Get(s3,-dx,dy), float4x4(0.118473723530769,-0.006202538497746,-0.062029022723436,0.000588757335208,0.058062814176083,0.063314557075500,-0.007545563392341,-0.031628955155611,0.016235705465078,0.107366472482681,0.015926249325275,0.042262405157089,0.004331649281085,-0.008584398776293,0.004444126971066,-0.000714409514330));
res += mul(Get(s3,0,-dy), float4x4(0.012531338259578,-0.007227238267660,0.095199443399906,0.035334885120392,-0.035851348191500,-0.057611554861069,-0.058202389627695,-0.006554381921887,-0.044396400451660,0.002845400245860,-0.021370135247707,-0.160262510180473,0.006847464945167,-0.004251331556588,-0.000282131688436,-0.016109175980091));
res += mul(Get(s3,0,0), float4x4(-0.000538462132681,-0.024548418819904,0.067954368889332,-0.022383572533727,-0.053225871175528,-0.044973630458117,-0.029724534600973,-0.126497328281403,0.072034142911434,0.031056119129062,-0.011394347064197,0.110492080450058,-0.000877444341313,-0.016436869278550,0.013202718459070,0.004975534509867));
res += mul(Get(s3,0,dy), float4x4(0.078809350728989,0.015475810505450,0.022164512425661,-0.043482799082994,0.020435690879822,-0.108999647200108,-0.040206182748079,0.004058364313096,0.071092888712883,0.022586420178413,-0.015326553024352,0.072171069681644,-0.010866018012166,-0.012788286432624,0.006088349036872,0.022831378504634));
res += mul(Get(s3,dx,-dy), float4x4(0.006123734638095,0.031299803406000,0.096178010106087,-0.008718733675778,-0.006903336849064,-0.143549755215645,-0.041800562292337,-0.003527004271746,-0.017217477783561,-0.035686582326889,-0.052862416952848,-0.034548033028841,-0.002486442448571,-0.005827779415995,-0.002884854795411,-0.015788188204169));
res += mul(Get(s3,dx,0), float4x4(-0.012193415313959,0.034878302365541,0.110375307500362,-0.055517252534628,-0.013008247129619,-0.127327978610992,-0.043676994740963,0.244164943695068,-0.001240541343577,0.006937124766409,-0.058924444019794,-0.007923282682896,-0.005149499513209,0.003545358777046,0.009071956388652,-0.016379598528147));
res += mul(Get(s3,dx,dy), float4x4(0.006206885445863,0.043457522988319,0.047655254602432,0.005100195761770,0.006291873753071,-0.107103824615479,-0.010248631238937,0.001138814841397,0.016882624477148,0.038888119161129,-0.043222468346357,0.074675582349300,-0.009537448175251,-0.005260389298201,0.001448830356821,0.013542430475354));
res = max(float4(0,0,0,0), res);
return res;
}
