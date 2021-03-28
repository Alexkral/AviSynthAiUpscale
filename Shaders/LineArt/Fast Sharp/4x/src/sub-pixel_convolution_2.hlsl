sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.000157191141625,-0.000321425701259,-0.000224866904318,0.000177658657776);
res += mul(Get(s0,-dx,-dy), float4x4(0.011591617949307,0.007410098798573,0.008361357264221,0.004009707830846,-0.070308685302734,-0.044341698288918,0.005016193725169,0.021178226917982,-0.005433259066194,-0.002336656674743,-0.000822069356218,-0.001323711359873,0.004274708218873,0.002124219201505,0.001574479159899,0.000398159201723));
res += mul(Get(s0,-dx,0), float4x4(0.001413773396052,0.019108667969704,0.042018674314022,0.035579666495323,0.006711379624903,0.032857175916433,0.031479015946388,-0.025089060887694,-0.002184806624427,0.003841556608677,0.004175439476967,-0.004426819738001,0.003487544599921,0.004215444438159,0.003652185900137,0.003908176906407));
res += mul(Get(s0,-dx,dy), float4x4(0.000195185260964,0.002395653398708,0.003905270481482,0.000891380535904,-0.000120946373499,-0.000787895289250,-0.001670218189247,-0.003403486218303,0.000959373079240,0.001754143042490,-0.000091380847152,-0.003025121288374,-0.005080085713416,-0.005295267794281,-0.002575023099780,0.000535944476724));
res += mul(Get(s0,0,-dy), float4x4(0.061138831079006,0.030244359746575,-0.003288415726274,-0.006691434420645,-0.011560402810574,0.004265162162483,0.008465834893286,0.004367120098323,0.008452580310404,-0.008971849456429,-0.009352106601000,-0.007337191607803,-0.011881251819432,-0.002266029128805,0.006531496532261,0.007906929589808));
res += mul(Get(s0,0,0), float4x4(0.013985326513648,0.000532366102561,0.007313468493521,0.047034192830324,-0.002340430393815,-0.008823393844068,-0.020062856376171,-0.022680977359414,-0.041540388017893,-0.061956152319908,0.025182120501995,0.052234627306461,0.037182670086622,0.023955274373293,0.003298139199615,-0.012741592712700));
res += mul(Get(s0,0,dy), float4x4(-0.002088253153488,-0.002808000659570,-0.000384728540666,0.008294417522848,0.003969261888415,0.005742975510657,0.002622366650030,-0.002425795886666,-0.001298251212575,-0.001249267603271,0.021871719509363,0.031380075961351,-0.005209397990257,-0.001474782358855,0.012192171066999,0.028249347582459));
res += mul(Get(s0,dx,-dy), float4x4(-0.002142107114196,0.000478127039969,0.001092888298444,-0.001489434973337,0.002576238475740,0.001837553456426,0.001627961406484,0.001800533733331,-0.001950508099981,0.000375856820028,-0.001304549281485,-0.001022706273943,-0.001499008387327,-0.002651444869116,-0.004075800534338,-0.002477696398273));
res += mul(Get(s0,dx,0), float4x4(-0.001832722919062,0.003108795965090,0.003882726188749,-0.001898925285786,0.002255300292745,0.004332293756306,0.004064690321684,0.003867825958878,-0.001605448662303,0.002434660913423,0.003462816821411,-0.004259350243956,-0.018823999911547,-0.022409658879042,-0.019846754148602,-0.012253765948117));
res += mul(Get(s0,dx,dy), float4x4(0.001299093943089,0.002827368676662,0.002643419429660,0.001285238540731,-0.001277750241570,-0.002887367736548,-0.002359910169616,-0.000123030389659,0.002723308978602,0.001213521347381,-0.002347132191062,-0.001921084709466,0.006078814622015,0.007583610713482,0.003968905191869,-0.005519087426364));
res += mul(Get(s1,-dx,-dy), float4x4(0.017655219882727,0.001498738536611,-0.001441712025553,0.003585351398215,0.001637824811041,0.002163797849789,0.003425361122936,0.002247544238344,0.011355609633029,0.012890573590994,0.010005187243223,0.004367060028017,-0.001820442499593,0.002218581503257,0.002551635960117,0.001566184335388));
res += mul(Get(s1,-dx,0), float4x4(0.021092893555760,0.000820723478682,-0.030296424403787,-0.002305186120793,0.003517394419760,0.001606630510651,-0.000025287883545,-0.000369533634512,0.009602952748537,0.010251579806209,0.009921174496412,0.010240160860121,0.018411606550217,0.008671994321048,-0.006481497548521,-0.007618511561304));
res += mul(Get(s1,-dx,dy), float4x4(-0.001817772863433,-0.003547867061570,-0.006923486478627,-0.000956965144724,-0.002158078132197,-0.000893852324225,0.001508637331426,0.003674374427646,0.002185081364587,0.004908009897918,0.008438203483820,0.009063051082194,-0.000387947569834,-0.004902207292616,-0.005631056614220,0.005430004559457));
res += mul(Get(s1,0,-dy), float4x4(0.037594985216856,0.003284041071311,-0.009897313080728,-0.003911634907126,-0.017552997916937,-0.000324637308950,0.010962087661028,0.009785188362002,-0.000128880667035,0.008238600566983,0.005907885264605,0.002463940763846,-0.007031913381070,-0.010613677091897,-0.008201167918742,-0.005088883452117));
res += mul(Get(s1,0,0), float4x4(0.043355096131563,0.002954521216452,-0.061802066862583,-0.001413439749740,0.024067347869277,0.002008838113397,-0.018634315580130,-0.027391860261559,-0.039234448224306,-0.045396730303764,-0.039062637835741,-0.022242147475481,-0.063300453126431,-0.032195560634136,-0.000633498071693,-0.002607235452160));
res += mul(Get(s1,0,dy), float4x4(-0.000781883718446,-0.000830899516586,-0.008603774011135,-0.000499206886161,-0.004963401239365,-0.000122434517834,0.013048167340457,0.025812894105911,0.005695855244994,0.005565015133470,-0.001765550347045,-0.018510514870286,0.000292477110634,0.005656980443746,-0.006302040535957,-0.041257772594690));
res += mul(Get(s1,dx,-dy), float4x4(-0.002889371709898,0.001289296196774,0.004182664211839,0.002056376542896,-0.006286995485425,-0.002137118019164,0.000295710808132,0.000486876204377,0.009503040462732,0.003241763683036,-0.004060368519276,-0.004880855791271,-0.004663974978030,0.000173628402990,0.003632544307038,0.003729630261660));
res += mul(Get(s1,dx,0), float4x4(-0.003881911281496,0.002734649693593,0.006408173125237,0.000951067253482,0.000159364484716,-0.002356118056923,-0.004580479115248,-0.006480502430350,0.001311717205681,0.000598817598075,0.001546338782646,0.005835753865540,0.001454970915802,-0.005956165958196,-0.008271843194962,-0.004535316489637));
res += mul(Get(s1,dx,dy), float4x4(0.000037285368307,-0.000343748164596,-0.000357413606253,-0.003686438547447,-0.004297133535147,-0.006091003771871,-0.003810100024566,-0.000487443612656,0.002696922048926,0.004410752095282,0.004680758807808,0.003746417816728,0.001230393303558,-0.002115814015269,-0.003378692548722,0.000247686752118));
res += mul(Get(s2,-dx,-dy), float4x4(-0.008405035361648,0.002846630057320,0.003422315465286,-0.000546618888620,-0.001866740756668,-0.007260498125106,-0.007763398345560,-0.004891215357929,-0.016395086422563,-0.015357605181634,-0.007007656618953,0.001355599844828,0.000242655296461,0.001434046891518,0.001234368071891,-0.000420063355705));
res += mul(Get(s2,-dx,0), float4x4(-0.005084539763629,0.001511202426627,0.008081478998065,-0.003923839889467,0.006283726077527,0.022725783288479,0.017466356977820,0.000922731589526,0.017866916954517,0.012514396570623,-0.006108853500336,-0.017529901117086,0.003654751460999,0.003280416829512,0.002628949005157,0.001933275838383));
res += mul(Get(s2,-dx,dy), float4x4(-0.000171214982402,-0.000268232048256,0.000914855743758,-0.000160565497936,0.001011622720398,-0.004049377050251,-0.010059708729386,-0.009447251446545,-0.006754424888641,-0.011477538384497,-0.011329549364746,0.001640387112275,-0.001090466626920,-0.000133100082166,0.001601115567610,0.002573134843260));
res += mul(Get(s2,0,-dy), float4x4(-0.043112564831972,0.037701364606619,0.029358958825469,0.002734472975135,0.009176333434880,0.004784161224961,-0.006115085445344,-0.004063733853400,-0.001657930901274,-0.003952181898057,-0.001058982219547,-0.000927033252083,-0.005653563421220,-0.003867028746754,-0.002231962280348,-0.000904808461200));
res += mul(Get(s2,0,0), float4x4(0.013606011867523,0.043292965739965,0.013835462741554,-0.076573580503464,0.049479641020298,-0.005231285002083,-0.046607289463282,-0.023886211216450,0.021369904279709,0.046261738985777,0.053478803485632,0.028429104015231,-0.018840596079826,-0.017525766044855,-0.012370161712170,-0.008192200213671));
res += mul(Get(s2,0,dy), float4x4(-0.007181167136878,-0.012410645373166,-0.006335887126625,0.006105293054134,-0.005596843082458,-0.007050151936710,0.009158633649349,0.043680485337973,-0.000485455006128,-0.002445590682328,-0.001970488112420,0.002753940876573,0.004040442872792,0.002712828107178,-0.002626241883263,-0.009774075821042));
res += mul(Get(s2,dx,-dy), float4x4(-0.003314435714856,-0.004956196993589,-0.002088088542223,0.001843942562118,-0.003516690572724,0.004071051720530,0.010164336301386,0.007466620299965,0.001134976162575,0.000879541097675,0.001019047340378,0.002323057735339,-0.018797520548105,0.000522495131008,0.010997224599123,0.009779165498912));
res += mul(Get(s2,dx,0), float4x4(-0.000815747014713,-0.003708583535627,0.002669951645657,0.002215628977865,-0.005029940977693,-0.001026459853165,0.004605846945196,0.000263026973698,-0.004450201056898,-0.006091441027820,-0.006583811715245,-0.002978249918669,0.000189910366316,-0.033386141061783,-0.056646794080734,-0.046832229942083));
res += mul(Get(s2,dx,dy), float4x4(-0.000062718063418,0.001519071171060,0.003252468770370,0.005200997926295,-0.001037674373947,-0.002822680398822,-0.002319786231965,-0.002592309843749,0.000748075428419,-0.001584032084793,-0.003616187255830,-0.004401246551424,-0.002416863804683,0.000498643668834,0.006908443290740,0.011885820887983));
return res;
}
