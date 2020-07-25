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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018240014091134,-0.147823497653008,0.218669652938843,-0.099246241152287,-0.059987843036652,-0.137102276086807,0.050207771360874,-0.159985408186913,0.064228020608425,0.256772130727768,0.072478234767914,-0.091435283422470,-0.012947395443916,-0.030147723853588,-0.139731660485268,0.088975131511688));
res += mul(Get(s0,-dx,0), float4x4(-0.022597255185246,0.055290937423706,0.051903869956732,-0.066361881792545,-0.277500241994858,0.090055607259274,-0.146060854196548,-0.023452509194613,-0.126721546053886,0.087790824472904,0.072451256215572,0.022048404440284,0.362657755613327,0.146020516753197,-0.156735777854919,-0.194332569837570));
res += mul(Get(s0,-dx,dy), float4x4(-0.071843400597572,0.066264435648918,-0.058830462396145,0.182473644614220,0.171695679426193,-0.080293066799641,0.035340595990419,0.043725889176130,-0.176396682858467,0.035011291503906,0.051362890750170,0.101529069244862,0.063256405293941,0.072687856853008,-0.130369931459427,-0.014488965272903));
res += mul(Get(s0,0,-dy), float4x4(-0.037453558295965,-0.067372567951679,0.087762661278248,0.076725028455257,-0.005199384409934,0.023029292002320,0.063170224428177,-0.001091629499570,0.061966717243195,-0.073310218751431,0.045812122523785,-0.165742918848991,-0.152021899819374,-0.102277852594852,-0.134752318263054,0.071361586451530));
res += mul(Get(s0,0,0), float4x4(0.195108726620674,0.136469036340714,-0.185339614748955,-0.046158105134964,-0.101715698838234,0.011334756389260,-0.108039170503616,0.153457671403885,-0.103591948747635,0.010677131824195,-0.116566143929958,0.097920715808868,-0.055210597813129,0.041473541408777,0.151077836751938,-0.010309204459190));
res += mul(Get(s0,0,dy), float4x4(0.169973194599152,-0.088067151606083,-0.077839016914368,0.122940242290497,-0.052044600248337,0.120009802281857,-0.208565533161163,0.126459449529648,0.079188734292984,0.091328456997871,0.057246364653111,0.090235583484173,0.163645580410957,0.210417687892914,0.024814013391733,0.128018975257874));
res += mul(Get(s0,dx,-dy), float4x4(-0.012620225548744,0.136418595910072,0.176775872707367,-0.038922891020775,0.138183608651161,0.073068350553513,-0.019045334309340,0.016254959627986,0.022504877299070,0.111169748008251,-0.038763578981161,0.026253124698997,-0.013583363965154,-0.087429672479630,0.058300677686930,0.058092102408409));
res += mul(Get(s0,dx,0), float4x4(-0.048626627773046,-0.045959796756506,0.037697095423937,0.169132202863693,-0.043409150093794,-0.252532929182053,0.066809326410294,-0.141335517168045,0.008693687617779,0.022573858499527,0.010170844383538,-0.018403537571430,-0.138020381331444,-0.059303060173988,-0.049927964806557,-0.062018278986216));
res += mul(Get(s0,dx,dy), float4x4(-0.060880228877068,0.131396174430847,-0.099976763129234,-0.042068656533957,0.000981790595688,-0.009298382326961,-0.021793115884066,0.215433329343796,-0.207727611064911,0.031128048896790,0.062091197818518,0.027015596628189,0.073332965373993,-0.068428233265877,0.001901259529404,0.170063555240631));
res += mul(Get(s1,-dx,-dy), float4x4(0.072845049202442,0.001694646896794,-0.114540614187717,0.117675170302391,-0.005420270841569,0.115238793194294,0.091659061610699,-0.093074440956116,-0.098353058099747,0.203788042068481,0.159848809242249,0.045195996761322,0.135114476084709,-0.072721570730209,-0.167823210358620,-0.102339126169682));
res += mul(Get(s1,-dx,0), float4x4(0.198097020387650,-0.043643292039633,-0.030449120327830,-0.052721410989761,0.063910499215126,0.048719834536314,-0.052203230559826,0.163997218012810,0.030218742787838,0.163901403546333,0.085709854960442,0.079796001315117,0.022324107587337,-0.073049567639828,0.135179892182350,-0.085525564849377));
res += mul(Get(s1,-dx,dy), float4x4(0.018115490674973,-0.045226391404867,-0.201305598020554,-0.154486358165741,0.273096293210983,-0.004250645637512,-0.105676434934139,-0.102593086659908,0.050401959568262,-0.032495837658644,-0.031261160969734,0.085475884377956,0.128639712929726,0.215207338333130,0.223217666149139,-0.004278976935893));
res += mul(Get(s1,0,-dy), float4x4(0.032963041216135,0.072021514177322,0.050277378410101,-0.032676212489605,0.033877652138472,0.042429789900780,-0.099317602813244,0.100803732872009,-0.052628077566624,0.072770163416862,0.047833148390055,0.051184386014938,-0.069158948957920,0.077056810259819,-0.061970368027687,0.045911971479654));
res += mul(Get(s1,0,0), float4x4(0.030759690329432,-0.037137016654015,0.149658456444740,-0.002344064880162,-0.005901880096644,-0.057565756142139,0.184261992573738,0.034024115651846,-0.190600931644440,0.084999814629555,-0.041354924440384,-0.061834543943405,0.018922535702586,0.158837273716927,-0.033296212553978,-0.032524392008781));
res += mul(Get(s1,0,dy), float4x4(0.055860240012407,-0.049609240144491,0.024489780887961,-0.097240604460239,0.047858510166407,-0.115295417606831,-0.150469198822975,-0.180217042565346,0.039523113518953,0.211536034941673,0.154000505805016,-0.121897786855698,-0.017246805131435,0.073422431945801,-0.204764038324356,0.060027983039618));
res += mul(Get(s1,dx,-dy), float4x4(0.134340211749077,0.099887274205685,0.022119337692857,0.058223199099302,0.264022141695023,0.040124256163836,-0.015817396342754,0.009056049399078,0.064763359725475,-0.126875400543213,0.011287286877632,0.224229604005814,-0.067043095827103,0.108437590301037,0.086370952427387,-0.019056180492043));
res += mul(Get(s1,dx,0), float4x4(0.061432186514139,-0.177073404192924,0.193519383668900,-0.125282660126686,0.073168002068996,-0.138313964009285,0.114709079265594,0.003198626218364,-0.078360997140408,-0.274856179952621,-0.067212089896202,0.029367007315159,-0.063242472708225,0.011372989974916,0.007344078272581,0.223643407225609));
res += mul(Get(s1,dx,dy), float4x4(-0.122901260852814,-0.080556221306324,-0.026439025998116,0.018256530165672,0.042497221380472,0.023456636816263,-0.116883963346481,0.166496291756630,0.228177160024643,-0.043979145586491,0.200192555785179,0.139813587069511,0.068601541221142,0.037269249558449,-0.084363944828510,0.187619298696518));
res += mul(Get(s2,-dx,-dy), float4x4(-0.124306648969650,-0.148924961686134,-0.152689144015312,-0.322351723909378,-0.028815371915698,0.005151987075806,-0.037503451108932,0.160204008221626,0.047047309577465,-0.014626873657107,0.058825761079788,-0.069752648472786,0.129811406135559,0.065103739500046,-0.137993872165680,0.130949273705482));
res += mul(Get(s2,-dx,0), float4x4(-0.092669330537319,-0.271001607179642,-0.182531565427780,-0.100151956081390,-0.058053024113178,-0.139634653925896,-0.070669271051884,0.228371217846870,0.079848468303680,0.052600447088480,0.133175253868103,0.037926293909550,-0.019412655383348,-0.300021737813950,-0.125951215624809,0.311478763818741));
res += mul(Get(s2,-dx,dy), float4x4(-0.075981587171555,-0.047913853079081,-0.123621173202991,0.137000009417534,-0.072398744523525,-0.017167592421174,0.185559272766113,-0.001617502770387,0.075045742094517,-0.017869360744953,0.088148802518845,-0.028993986546993,0.158489704132080,-0.176926851272583,0.046706862747669,0.191675618290901));
res += mul(Get(s2,0,-dy), float4x4(0.022190775722265,-0.179757818579674,0.128721952438354,0.276174962520599,0.032909922301769,-0.048454008996487,-0.083898007869720,-0.084903985261917,-0.038244150578976,0.193017944693565,-0.127324163913727,-0.052543055266142,0.115668922662735,-0.232351154088974,-0.050034578889608,-0.125045835971832));
res += mul(Get(s2,0,0), float4x4(0.238508000969887,0.033088169991970,-0.105476021766663,-0.019354132935405,0.112957492470741,-0.142330020666122,-0.075457483530045,0.206483319401741,0.059592183679342,0.076115086674690,-0.120083697140217,0.087347343564034,-0.195667549967766,0.047482285648584,-0.071682743728161,-0.158035859465599));
res += mul(Get(s2,0,dy), float4x4(0.023421278223395,0.076984681189060,0.015417308546603,0.023642158135772,0.015063374303281,-0.050494868308306,0.074815467000008,0.009716182947159,0.006577137857676,0.127562090754509,0.147470280528069,-0.164145410060883,0.015223432332277,-0.105768106877804,0.194042295217514,-0.043753944337368));
res += mul(Get(s2,dx,-dy), float4x4(0.158622503280640,-0.103366017341614,0.013670901767910,0.014857755973935,-0.202796563506126,0.068414010107517,0.066191263496876,-0.030225932598114,0.015944708138704,0.051170766353607,-0.098766528069973,0.157962024211884,0.067470543086529,-0.128234937787056,0.014274806715548,-0.027690244838595));
res += mul(Get(s2,dx,0), float4x4(0.010759144090116,0.044042583554983,-0.020752856507897,0.141554683446884,0.036363549530506,0.339457720518112,0.095419928431511,-0.157235413789749,-0.001375947846100,-0.027339488267899,0.144093722105026,-0.146095216274261,0.099218383431435,0.098425544798374,-0.027292290702462,0.013372151181102));
res += mul(Get(s2,dx,dy), float4x4(0.252706497907639,0.027217619121075,-0.133138388395309,-0.191842466592789,-0.088079981505871,-0.061615459620953,0.007606441620737,-0.211697787046432,-0.215092554688454,0.125977605581284,-0.080764301121235,0.041460186243057,-0.020778371021152,-0.025155469775200,-0.032926972955465,-0.167366996407509));
res += mul(Get(s3,-dx,-dy), float4x4(0.214405402541161,0.014183407649398,-0.222325041890144,0.060745742172003,-0.063057832419872,-0.130541071295738,0.056532707065344,-0.186662375926971,0.043726895004511,0.027744425460696,-0.000743749435060,0.047165628522635,0.112403422594070,-0.044622074812651,0.069328442215919,-0.061065796762705));
res += mul(Get(s3,-dx,0), float4x4(-0.228660404682159,-0.225656226277351,-0.266542583703995,0.171784296631813,-0.041100606322289,0.125904619693756,0.048837553709745,0.064509622752666,0.091160424053669,0.029816947877407,-0.044517505913973,-0.006618704646826,-0.056492589414120,-0.032841384410858,0.000373823248083,-0.095316730439663));
res += mul(Get(s3,-dx,dy), float4x4(-0.057304751127958,-0.048327445983887,0.099393166601658,0.036580853164196,-0.101973108947277,-0.088099591434002,-0.230824440717697,-0.081583283841610,-0.043405603617430,0.078922219574451,0.026194058358669,0.065439485013485,-0.003121402813122,0.128067761659622,0.073322057723999,-0.031188109889627));
res += mul(Get(s3,0,-dy), float4x4(-0.058133687824011,-0.019506681710482,0.012769149616361,0.187866270542145,-0.023636505007744,0.063944265246391,0.258979797363281,-0.020951651036739,-0.092707514762878,-0.081731453537941,0.241515293717384,-0.050036337226629,-0.091859303414822,0.055257886648178,0.068404905498028,0.061747793108225));
res += mul(Get(s3,0,0), float4x4(0.080325335264206,0.020435947924852,0.006052914075553,-0.167599096894264,-0.111472278833389,0.082288071513176,-0.037073131650686,-0.068859584629536,-0.194759905338287,-0.019554805010557,0.110481850802898,-0.079325146973133,-0.021053485572338,0.071346096694469,-0.124621592462063,0.154144391417503));
res += mul(Get(s3,0,dy), float4x4(-0.030061636120081,0.031325798481703,0.152968212962151,0.175335079431534,-0.001177994883619,0.021501788869500,-0.142071112990379,0.033307101577520,0.167985811829567,0.041934531182051,-0.107534192502499,0.083607777953148,-0.073287688195705,0.033086299896240,-0.100210376083851,-0.244378045201302));
res += mul(Get(s3,dx,-dy), float4x4(0.061922777444124,-0.080973908305168,0.157528966665268,0.031513266265392,0.207760661840439,-0.062649130821228,0.015028721652925,-0.135603100061417,-0.213257074356079,-0.118283636868000,-0.139622002840042,-0.471455305814743,-0.096503660082817,-0.015347128733993,0.156914889812469,-0.128517895936966));
res += mul(Get(s3,dx,0), float4x4(-0.115640565752983,0.057323299348354,0.068485751748085,-0.062561020255089,-0.107701741158962,0.002377570373937,0.055796463042498,0.073790445923805,0.023321283981204,0.056703630834818,0.138628929853439,-0.081079475581646,0.158859118819237,-0.025543050840497,0.118665248155594,0.011318889446557));
res += mul(Get(s3,dx,dy), float4x4(0.052029736340046,0.134782090783119,0.044306609779596,-0.084794789552689,0.040527585893869,0.081329494714737,0.054456084966660,-0.022632883861661,-0.273901909589767,0.094666622579098,-0.079447418451309,0.074687033891678,-0.065948598086834,-0.078976623713970,-0.048565812408924,0.151143923401833));
return max(float4(0,0,0,0), res);
}
