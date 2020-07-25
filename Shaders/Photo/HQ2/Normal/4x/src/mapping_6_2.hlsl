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
res += mul(Get(s0,-dx,-dy), float4x4(-0.019271265715361,-0.005976844113320,-0.060418516397476,0.047385726124048,-0.015144177712500,-0.073123820126057,0.060518402606249,0.053067546337843,0.170780420303345,-0.062927313148975,-0.039760567247868,-0.102197363972664,-0.029086446389556,-0.008307776413858,0.085188411176205,-0.032087285071611));
res += mul(Get(s0,-dx,0), float4x4(-0.065779194235802,0.038884632289410,-0.019936297088861,0.047949597239494,0.011848556809127,0.007893785834312,-0.000783321971539,0.089207552373409,0.191310465335846,-0.153240799903870,0.014835049398243,-0.059285990893841,0.069701619446278,0.061573989689350,0.031145410612226,0.004658265970647));
res += mul(Get(s0,-dx,dy), float4x4(-0.013671476393938,0.004024112131447,-0.039169993251562,0.023394759744406,-0.021215114742517,-0.080760836601257,0.027050709351897,0.060233380645514,0.189890146255493,-0.061418961733580,0.057795222848654,-0.027535354718566,-0.021512577310205,0.035581234842539,-0.009598994627595,-0.026896761730313));
res += mul(Get(s0,0,-dy), float4x4(-0.020342694595456,-0.089982710778713,-0.052895437926054,-0.006285458337516,-0.059300806373358,-0.013605333864689,0.056077104061842,0.073795408010483,0.043466482311487,-0.016448657959700,-0.071643732488155,-0.008190445601940,-0.003110888646916,-0.036062005907297,0.011675247922540,-0.047500398010015));
res += mul(Get(s0,0,0), float4x4(-0.027362544089556,-0.117430374026299,-0.029917193576694,0.001334770349786,-0.019143925979733,0.036747071892023,-0.039716843515635,0.171929627656937,-0.000489394762553,-0.062131207436323,-0.050588935613632,0.076520584523678,0.001678059576079,0.004442317411304,-0.056619778275490,-0.039512388408184));
res += mul(Get(s0,0,dy), float4x4(0.092403627932072,0.003419068176299,-0.047054659575224,-0.016294334083796,0.065052218735218,0.006280510686338,0.028748923912644,-0.008110095746815,0.014125171117485,0.053100004792213,-0.031001022085547,0.088287375867367,-0.068292386829853,0.048128727823496,-0.045240662992001,-0.025927143171430));
res += mul(Get(s0,dx,-dy), float4x4(0.033040989190340,-0.081201978027821,0.000423255842179,-0.049437113106251,-0.069070935249329,0.049518432468176,0.061489760875702,0.075000531971455,-0.013846998102963,0.019157851114869,-0.006280256900936,-0.026880959048867,0.020227868109941,0.034482166171074,0.078543692827225,-0.012384328991175));
res += mul(Get(s0,dx,0), float4x4(0.063261434435844,-0.035995732992887,0.034663278609514,0.027349079027772,-0.012241037562490,0.024123921990395,-0.074390724301338,0.068608872592449,-0.040006853640079,0.004152766894549,-0.007396516390145,-0.003383421804756,0.023963838815689,0.060225669294596,0.080054052174091,0.022921076044440));
res += mul(Get(s0,dx,dy), float4x4(0.016166040673852,0.069973394274712,-0.050659723579884,0.010015011765063,0.029932115226984,0.055161099880934,0.046568818390369,-0.009678396396339,0.009438896551728,0.022205157205462,0.009126580320299,0.018122849985957,-0.064464218914509,-0.027148161083460,-0.006144925020635,-0.008335025981069));
res += mul(Get(s1,-dx,-dy), float4x4(-0.029571698978543,-0.031216582283378,0.039543241262436,0.047960918396711,-0.015044682659209,-0.091650262475014,-0.038645979017019,-0.045041386038065,-0.014724396169186,0.019297424703836,-0.094964511692524,0.044146589934826,0.021285241469741,-0.024339089170098,0.144372656941414,0.128493279218674));
res += mul(Get(s1,-dx,0), float4x4(-0.002042534295470,0.038836739957333,0.026564182713628,0.009238384664059,-0.016093354672194,-0.043163675814867,-0.071987241506577,-0.022288983687758,-0.023178245872259,0.049864090979099,-0.030206751078367,0.060202237218618,0.090361282229424,0.039255507290363,0.161926314234734,0.080749735236168));
res += mul(Get(s1,-dx,dy), float4x4(0.003750385018066,0.035122383385897,0.019821995869279,-0.031496930867434,-0.020474739372730,-0.059898082166910,-0.012665690854192,0.040955428034067,-0.000647777225822,-0.006322588771582,-0.042602963745594,0.061677593737841,0.106855854392052,-0.059725746512413,0.019229771569371,-0.027425460517406));
res += mul(Get(s1,0,-dy), float4x4(-0.012356453575194,0.019870029762387,0.055585667490959,0.022480079904199,-0.060411591082811,-0.005344596225768,-0.003904104698449,0.000506154028699,-0.057279907166958,0.036403179168701,-0.077926181256771,0.046367827802896,-0.027874721214175,-0.049879692494869,-0.030130676925182,-0.000406687031500));
res += mul(Get(s1,0,0), float4x4(-0.006520643364638,0.073624350130558,0.040389623492956,-0.063017718493938,-0.038918558508158,-0.015948476269841,0.057587552815676,-0.012675463221967,-0.013077221810818,0.049582619220018,-0.023283824324608,0.064977221190929,-0.062593922019005,0.034121043980122,-0.069024860858917,-0.044952269643545));
res += mul(Get(s1,0,dy), float4x4(-0.013252164237201,0.086864039301872,0.022244045510888,-0.054231889545918,-0.025373024865985,-0.055628772825003,-0.030562264844775,0.079473480582237,-0.011851968243718,0.001034712651744,-0.088083423674107,-0.009894860908389,-0.087439984083176,-0.047035418450832,-0.036660674959421,-0.044589370489120));
res += mul(Get(s1,dx,-dy), float4x4(-0.077255301177502,-0.016205852851272,-0.043556205928326,0.016952548176050,-0.061303868889809,0.027161503210664,-0.090960361063480,-0.053035262972116,-0.086400039494038,0.008675190620124,-0.046567488461733,0.079478584229946,0.046779301017523,-0.073724836111069,0.027470633387566,0.055746294558048));
res += mul(Get(s1,dx,0), float4x4(-0.045200839638710,-0.000765658041928,0.049879122525454,-0.020630739629269,0.052216481417418,0.082065053284168,0.079873695969582,-0.076502919197083,-0.048665691167116,-0.002160575473681,-0.001936473767273,-0.004996633157134,0.026194777339697,0.069398164749146,0.043781276792288,0.055523499846458));
res += mul(Get(s1,dx,dy), float4x4(-0.055417902767658,-0.033074319362640,0.052188716828823,-0.019516704604030,-0.013532994315028,-0.005685243289918,0.015266594476998,0.023286065086722,-0.053734742105007,-0.073718748986721,-0.076920345425606,-0.018685070797801,0.045942228287458,0.047804992645979,-0.007761998567730,-0.063524179160595));
res += mul(Get(s2,-dx,-dy), float4x4(-0.020781463012099,-0.071643866598606,-0.002390500623733,0.043103471398354,-0.042888462543488,-0.125821918249130,0.048588458448648,-0.060947947204113,-0.014722771942616,-0.047186464071274,0.011488689109683,-0.042354989796877,0.055015545338392,-0.093727327883244,-0.024092473089695,-0.027570223435760));
res += mul(Get(s2,-dx,0), float4x4(-0.037921886891127,0.007847464643419,-0.029649563133717,0.016798948869109,-0.016828620806336,-0.099572278559208,0.037961378693581,0.000138713847264,-0.102154158055782,-0.086065828800201,0.007906575687230,-0.059450060129166,-0.017712293192744,-0.016429359093308,-0.015001002699137,-0.016874354332685));
res += mul(Get(s2,-dx,dy), float4x4(-0.010371342301369,0.094431333243847,-0.036408025771379,-0.026109211146832,-0.092607967555523,-0.086071386933327,-0.078366465866566,0.027922354638577,-0.042762704193592,-0.054979339241982,-0.070564247667789,0.035875931382179,-0.030903240665793,-0.026253083720803,0.027277000248432,0.021674506366253));
res += mul(Get(s2,0,-dy), float4x4(-0.000577799859457,0.015076238662004,0.035043254494667,-0.026177810505033,0.027180796489120,-0.055346276611090,0.011322990991175,-0.074141718447208,-0.074790403246880,0.051082298159599,0.072415247559547,-0.042007617652416,-0.016877761110663,0.031078085303307,-0.024466902017593,-0.065865576267242));
res += mul(Get(s2,0,0), float4x4(0.073136612772942,0.156202226877213,0.079093523323536,-0.006489619612694,0.075446113944054,0.041525930166245,0.117430835962296,-0.038900665938854,-0.063104934990406,0.094040393829346,0.064515978097916,-0.023610003292561,-0.042217891663313,0.043268911540508,0.000541869725566,-0.010225593112409));
res += mul(Get(s2,0,dy), float4x4(-0.029910186305642,0.000448175589554,-0.007944910787046,-0.066744007170200,0.105647973716259,0.146161258220673,-0.006343289744109,-0.002238600049168,-0.080411061644554,0.018916465342045,-0.004610123578459,0.048439994454384,-0.027198718860745,-0.020679760724306,0.058289013803005,0.014453724026680));
res += mul(Get(s2,dx,-dy), float4x4(0.014458118937910,0.083721764385700,0.056261025369167,-0.016061518341303,0.036380141973495,0.000770571525209,-0.004688568413258,-0.060970295220613,-0.068841293454170,-0.046512216329575,0.046479955315590,0.017956495285034,-0.069814771413803,0.027941200882196,-0.043027188628912,-0.043213225901127));
res += mul(Get(s2,dx,0), float4x4(0.054340463131666,0.155718177556992,0.093900740146637,-0.027116427198052,-0.013814212754369,0.023165063932538,0.025929247960448,-0.021810891106725,-0.058643583208323,-0.005242658313364,0.035023059695959,0.011631890200078,-0.076153255999088,-0.022388542070985,-0.039763633161783,0.000813152058981));
res += mul(Get(s2,dx,dy), float4x4(0.019846037030220,0.009597051888704,0.067341826856136,-0.084186151623726,-0.038286801427603,0.000599147577304,0.005422675050795,0.010541232302785,-0.056680753827095,-0.053289253264666,0.019287627190351,0.027755513787270,0.076501354575157,0.010948982089758,0.016098733991385,-0.064259633421898));
res += mul(Get(s3,-dx,-dy), float4x4(-0.158860340714455,-0.075217455625534,-0.025794049724936,0.002880106447265,-0.216628536581993,-0.088989660143852,0.000322995329043,0.020476605743170,0.043730448931456,-0.006035286001861,0.004993819631636,0.015711970627308,-0.082187645137310,-0.134520277380943,-0.076035194098949,0.061495698988438));
res += mul(Get(s3,-dx,0), float4x4(-0.049276135861874,0.071709185838699,-0.020696539431810,-0.066363722085953,0.112949483096600,0.154148250818253,0.016577417030931,-0.030562967061996,0.187682777643204,0.073730669915676,0.019921761006117,0.011943463236094,-0.155346930027008,-0.164931371808052,-0.063503801822662,0.011347984895110));
res += mul(Get(s3,-dx,dy), float4x4(-0.043102301657200,0.023838276043534,-0.019509667530656,-0.027688521891832,-0.031281001865864,0.033783547580242,-0.065320588648319,0.044072572141886,0.011028816923499,-0.011548044160008,-0.057799804955721,-0.039719365537167,0.069253042340279,-0.014996178448200,-0.014599597081542,0.060527503490448));
res += mul(Get(s3,0,-dy), float4x4(-0.143745407462120,0.080355845391750,-0.096561372280121,0.000787151861005,0.066689483821392,0.193970412015915,-0.047667358070612,0.108194567263126,0.039039846509695,0.039888355880976,-0.018767436966300,0.004671578761190,-0.054177045822144,0.020464561879635,0.064921632409096,0.015524800866842));
res += mul(Get(s3,0,0), float4x4(-0.059029422700405,-0.015862101688981,-0.083897709846497,-0.074344947934151,-0.100269272923470,-0.217336192727089,0.016882954165339,-0.130885407328606,0.073246926069260,0.156090289354324,0.030313264578581,-0.020933458581567,0.076430998742580,0.092717230319977,0.021062256768346,-0.009219811297953));
res += mul(Get(s3,0,dy), float4x4(-0.034551594406366,0.007683188654482,0.019982153549790,0.034801531583071,-0.113424107432365,0.045167870819569,0.033408138900995,0.091418229043484,-0.013845405541360,0.070339918136597,0.041353531181812,-0.035099238157272,0.034893948584795,-0.041022773832083,-0.053638368844986,-0.044720754027367));
res += mul(Get(s3,dx,-dy), float4x4(0.013075642287731,0.100027680397034,-0.058253742754459,-0.059913069009781,0.134859651327133,-0.015290366485715,-0.079870618879795,0.020192639902234,-0.021232791244984,-0.042655754834414,-0.096375212073326,-0.020809199661016,0.025699479505420,0.016997270286083,0.026466358453035,-0.060673605650663));
res += mul(Get(s3,dx,0), float4x4(-0.005703293718398,-0.006295834667981,-0.008682427927852,-0.094616152346134,0.059441398829222,-0.017592605203390,0.135560065507889,0.054732013493776,-0.011157199740410,-0.009444300085306,-0.073041662573814,0.068338647484779,0.068745322525501,0.005363852716982,0.034492380917072,-0.010216909460723));
res += mul(Get(s3,dx,dy), float4x4(-0.030916592106223,0.069955043494701,0.040859118103981,-0.000169131832081,0.067208878695965,-0.034273300319910,0.059147797524929,0.021495187655091,-0.015364922583103,-0.015461726114154,0.018824914470315,0.039566349238157,-0.006215529050678,-0.075259476900101,0.042883001267910,0.079706907272339));
res = max(float4(0,0,0,0), res);
return res;
}