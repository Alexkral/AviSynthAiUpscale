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
res += mul(Get(s0,-dx,-dy), float4x4(0.019373869523406,0.020275209099054,-0.183868274092674,-0.017298433929682,0.072662182152271,0.113061033189297,0.004030554089695,-0.047478418797255,-0.167748153209686,0.069999203085899,-0.120779238641262,0.105315260589123,-0.060163538902998,0.088195770978928,-0.097253061830997,-0.112893730401993));
res += mul(Get(s0,-dx,0), float4x4(0.074937537312508,0.077128663659096,0.011524068191648,0.055166956037283,0.070128075778484,0.024530131369829,0.141815185546875,0.114043973386288,-0.024118488654494,0.021993866190314,-0.112205527722836,-0.084136694669724,0.259588181972504,0.040085159242153,0.077581897377968,-0.015716901049018));
res += mul(Get(s0,-dx,dy), float4x4(-0.054973896592855,-0.034109164029360,0.087547063827515,0.006073563359678,-0.004127398133278,-0.060206588357687,0.065222769975662,-0.091737866401672,-0.022489514201880,0.075105622410774,-0.053357724100351,0.124473474919796,0.046709530055523,0.042132575064898,0.040026299655437,0.017883144319057));
res += mul(Get(s0,0,-dy), float4x4(-0.066329702734947,-0.072310879826546,-0.140215128660202,-0.084779851138592,0.009290083311498,0.021223474293947,0.016957422718406,-0.037010993808508,-0.062688842415810,-0.065721422433853,0.010045885108411,-0.044902745634317,-0.053988352417946,0.021262379363179,0.044424738734961,-0.100845076143742));
res += mul(Get(s0,0,0), float4x4(0.213389381766319,0.007935190573335,-0.145175874233246,-0.024141719564795,0.029117302969098,-0.115868300199509,0.057047396898270,0.027915263548493,-0.036466330289841,0.048076808452606,0.003389166900888,0.030008342117071,0.031138371676207,-0.044051185250282,-0.077166669070721,-0.090766720473766));
res += mul(Get(s0,0,dy), float4x4(-0.109769754111767,0.135082185268402,-0.012338681146502,-0.171577438712120,-0.153829857707024,0.004550211131573,-0.123713247478008,-0.123296618461609,0.025331215932965,-0.081131085753441,0.057190652936697,-0.074801959097385,0.044398359954357,0.068872064352036,-0.020043015480042,0.072665072977543));
res += mul(Get(s0,dx,-dy), float4x4(0.161648392677307,-0.016179254278541,-0.014633785933256,0.104948863387108,0.082652576267719,0.077852420508862,0.194094389677048,-0.041823215782642,0.118000924587250,-0.017271878197789,0.095437526702881,-0.049706038087606,-0.047786589711905,0.077021025121212,-0.026291258633137,-0.155974984169006));
res += mul(Get(s0,dx,0), float4x4(0.010692555457354,0.052489243447781,-0.151139974594116,-0.137869566679001,0.086876451969147,-0.239684239029884,-0.119708351790905,0.184261918067932,-0.100214034318924,0.266324102878571,0.087022684514523,0.010162830352783,-0.078048363327980,-0.081996276974678,0.005111129954457,0.058398395776749));
res += mul(Get(s0,dx,dy), float4x4(-0.155356422066689,0.240778684616089,-0.074687816202641,-0.127761453390121,0.136401832103729,0.005330724641681,0.022161796689034,0.005242022220045,-0.114913292229176,-0.198006540536880,-0.012780888006091,0.041390202939510,-0.120159268379211,0.129818201065063,-0.042667709290981,0.023626871407032));
res += mul(Get(s1,-dx,-dy), float4x4(0.255284667015076,-0.086685352027416,-0.058213751763105,-0.244954511523247,0.084724403917789,0.038395505398512,0.237716436386108,-0.098246179521084,-0.026558563113213,-0.077530905604362,-0.035170484334230,0.070276565849781,-0.101752549409866,0.008775785565376,-0.003462862223387,-0.060281485319138));
res += mul(Get(s1,-dx,0), float4x4(-0.024489911273122,0.108289562165737,0.072206921875477,-0.049565315246582,0.008444808423519,0.045013863593340,0.053183771669865,0.075312100350857,-0.011191988363862,0.129985004663467,0.136958524584770,-0.076039560139179,-0.209661170840263,0.055597886443138,0.167908996343613,-0.080537766218185));
res += mul(Get(s1,-dx,dy), float4x4(-0.099999308586121,-0.003510878654197,0.040657278150320,-0.018312312662601,-0.029191264882684,0.045881897211075,-0.022095667198300,0.172386944293976,-0.014340443536639,0.109056502580643,-0.047213256359100,0.147482931613922,0.080836988985538,0.011983327567577,-0.049142897129059,-0.170911729335785));
res += mul(Get(s1,0,-dy), float4x4(-0.026569508016109,-0.014675937592983,0.054963242262602,0.013227836228907,0.022858140990138,-0.062672488391399,-0.025272857397795,-0.092190802097321,-0.027573686093092,0.011814163997769,0.022170573472977,-0.049987696111202,-0.074397154152393,0.225558713078499,0.107073761522770,0.074073761701584));
res += mul(Get(s1,0,0), float4x4(-0.032356444746256,0.035473547875881,-0.001970351673663,-0.023118792101741,0.158600375056267,0.224254935979843,-0.082046084105968,0.023811934515834,0.025875728577375,-0.094084337353706,-0.251656949520111,-0.009269431233406,0.110568076372147,0.146073415875435,0.050972890108824,0.105035088956356));
res += mul(Get(s1,0,dy), float4x4(0.188868299126625,0.293700248003006,-0.164407238364220,-0.039857059717178,0.075861304998398,0.133877366781235,-0.039392765611410,-0.200105965137482,0.060814239084721,-0.062248546630144,0.009699877351522,-0.079048752784729,-0.017366116866469,-0.073596723377705,0.071294933557510,0.017258850857615));
res += mul(Get(s1,dx,-dy), float4x4(0.015860510990024,-0.042027346789837,-0.017220508307219,-0.183092221617699,-0.119100920855999,0.136517420411110,-0.156840085983276,-0.016278412193060,-0.056956283748150,0.041304118931293,-0.141212075948715,0.113334394991398,0.102195754647255,-0.083975292742252,-0.041042260825634,0.067022062838078));
res += mul(Get(s1,dx,0), float4x4(-0.068346999585629,-0.013622075319290,-0.137953534722328,0.123433008790016,0.167719617486000,0.066347919404507,-0.022910838946700,-0.041712339967489,-0.070187717676163,0.072109200060368,0.054057735949755,-0.025642406195402,0.019571276381612,0.009607584215701,0.044119440019131,0.012511052191257));
res += mul(Get(s1,dx,dy), float4x4(-0.235126242041588,-0.118328757584095,0.020674454048276,-0.013788896612823,0.011272083967924,0.009412185288966,0.045346185564995,-0.159178152680397,0.001971818041056,-0.216861099004745,0.058441773056984,-0.045346204191446,0.049267563968897,0.183794647455215,0.251682698726654,-0.204269275069237));
res += mul(Get(s2,-dx,-dy), float4x4(0.068307653069496,0.054432321339846,-0.155878230929375,0.036932013928890,-0.062542945146561,0.024210341274738,-0.056360106915236,-0.117947645485401,-0.189426168799400,-0.050046190619469,-0.049783434718847,-0.003418517066166,0.178669989109039,-0.111780300736427,0.018016902729869,-0.079311318695545));
res += mul(Get(s2,-dx,0), float4x4(-0.146021723747253,-0.093340024352074,0.155970335006714,-0.131303012371063,0.022201582789421,-0.075793027877808,0.033170435577631,0.113631881773472,0.029737379401922,-0.047166682779789,-0.035176981240511,-0.030416302382946,-0.046589661389589,-0.207914009690285,-0.061285160481930,0.049030601978302));
res += mul(Get(s2,-dx,dy), float4x4(0.000082836864749,-0.135477229952812,0.024637855589390,-0.114528082311153,0.030140476301312,-0.110880941152573,0.026570837944746,-0.245701551437378,0.018447892740369,0.109216369688511,-0.056668497622013,0.030165472999215,-0.068428710103035,0.038512438535690,-0.130224853754044,-0.029770055785775));
res += mul(Get(s2,0,-dy), float4x4(-0.040081322193146,0.013451022095978,-0.048827759921551,0.026232598349452,-0.063126727938652,0.068258434534073,0.128097265958786,-0.164931863546371,-0.031423535197973,0.214409127831459,-0.055518839508295,0.058537088334560,-0.044783804565668,0.105714209377766,-0.092733390629292,0.181805714964867));
res += mul(Get(s2,0,0), float4x4(0.050865538418293,-0.139296412467957,-0.049401897937059,-0.014740500599146,0.019770987331867,0.104810081422329,-0.026860961690545,0.103055588901043,0.045542206615210,0.067220672965050,0.083615653216839,0.154665455222130,-0.129337802529335,0.142224892973900,-0.127089351415634,0.034110471606255));
res += mul(Get(s2,0,dy), float4x4(-0.030328791588545,0.082057937979698,-0.053781718015671,0.073862656950951,-0.027137523517013,-0.078042738139629,0.158577173948288,-0.078898482024670,0.168253764510155,-0.082774505019188,0.181663706898689,0.139506012201309,0.035692337900400,-0.121915131807327,0.074028767645359,-0.011424448341131));
res += mul(Get(s2,dx,-dy), float4x4(-0.070684492588043,-0.006150422152132,-0.120869547128677,0.117762140929699,-0.031442582607269,0.170690387487411,-0.038364969193935,-0.108816020190716,0.235865667462349,-0.039166778326035,-0.254657506942749,0.012202396057546,0.179737344384193,-0.100285373628139,0.161778464913368,-0.107114054262638));
res += mul(Get(s2,dx,0), float4x4(0.205986186861992,0.305014163255692,-0.031331486999989,0.051033448427916,-0.161546528339386,0.012430325150490,-0.039534378796816,-0.032892260700464,0.020516380667686,-0.171760484576225,-0.073049873113632,-0.078343093395233,-0.026582609862089,0.072473138570786,0.106170877814293,0.053030312061310));
res += mul(Get(s2,dx,dy), float4x4(0.071284681558609,0.078998267650604,0.081995740532875,-0.076493732631207,0.171141326427460,0.096132405102253,-0.143424674868584,-0.008965244516730,0.051849775016308,0.146585687994957,0.051714181900024,0.051438640803099,0.055493175983429,0.076417073607445,-0.108830466866493,-0.045485503971577));
res += mul(Get(s3,-dx,-dy), float4x4(-0.065511383116245,0.054400458931923,-0.129705786705017,0.095270819962025,-0.167284280061722,0.033368263393641,0.115858830511570,0.117676295340061,-0.068338192999363,-0.020894097164273,-0.043630383908749,-0.239278629422188,-0.242127358913422,0.008615725673735,-0.197236120700836,-0.009660558775067));
res += mul(Get(s3,-dx,0), float4x4(0.052878037095070,0.165836676955223,-0.157802224159241,-0.088329531252384,0.012870899401605,-0.044704295694828,-0.293001770973206,-0.099760100245476,-0.088938139379025,0.013557828031480,0.081668846309185,-0.102160841226578,-0.168534323573112,-0.111670248210430,-0.055318038910627,0.170728594064713));
res += mul(Get(s3,-dx,dy), float4x4(0.079434596002102,-0.077455207705498,0.027887389063835,0.087130002677441,0.138104751706123,-0.103212349116802,0.043456148356199,-0.091258406639099,-0.178421437740326,-0.261682987213135,0.030293485149741,-0.023176198825240,0.193323075771332,-0.013361050747335,-0.000872384756804,0.093890838325024));
res += mul(Get(s3,0,-dy), float4x4(0.035929854959249,-0.087517060339451,0.105397738516331,-0.059676248580217,0.020530791953206,0.044485926628113,-0.081213638186455,0.102846913039684,0.036888211965561,-0.002207392826676,-0.027367254719138,-0.216156288981438,0.051599439233541,-0.106197670102119,0.181572929024696,0.109756857156754));
res += mul(Get(s3,0,0), float4x4(-0.094983905553818,-0.115280658006668,-0.027942279353738,-0.121283836662769,0.156784743070602,-0.113258950412273,-0.009746837429702,-0.035980675369501,0.107185736298561,-0.140409454703331,0.047117929905653,0.031480778008699,-0.112875394523144,0.149875462055206,0.155955612659454,0.011735251173377));
res += mul(Get(s3,0,dy), float4x4(-0.188503935933113,-0.032391522079706,-0.187628597021103,0.085923008620739,0.034555852413177,-0.030004594475031,-0.022232534363866,-0.032849568873644,-0.135899037122726,0.026210943236947,0.006048344541341,0.069298930466175,0.038876343518496,-0.066313229501247,0.202906057238579,-0.052148811519146));
res += mul(Get(s3,dx,-dy), float4x4(0.096700027585030,-0.267076879739761,-0.037781156599522,-0.002023384207860,0.097777783870697,0.068324379622936,-0.003617036622018,-0.037467934191227,-0.254161268472672,0.046353522688150,0.028055412694812,0.107055485248566,0.025156849995255,-0.028586586937308,0.043225765228271,0.001026114448905));
res += mul(Get(s3,dx,0), float4x4(0.078529901802540,-0.088181056082249,-0.154693558812141,-0.031045787036419,-0.018259657546878,0.064865842461586,0.055370938032866,-0.040319308638573,-0.106558009982109,-0.068881876766682,0.062730617821217,-0.063454911112785,-0.061604425311089,-0.011070688255131,-0.077509433031082,-0.066308811306953));
res += mul(Get(s3,dx,dy), float4x4(-0.047993216663599,0.086854360997677,-0.217794850468636,-0.122505635023117,0.026656894013286,-0.026218483224511,0.172023504972458,-0.022851638495922,-0.062824323773384,0.034839548170567,0.148029357194901,-0.011499386280775,0.074660442769527,-0.009606754407287,-0.250043123960495,-0.180249422788620));
res = max(float4(0,0,0,0), res);
return res;
}
