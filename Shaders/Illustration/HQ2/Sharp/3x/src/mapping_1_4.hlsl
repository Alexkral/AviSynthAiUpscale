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
res += mul(Get(s0,-dx,-dy), float4x4(0.032294895499945,0.076610118150711,0.132636561989784,-0.126310676336288,-0.122576847672462,-0.037487018853426,0.042111884802580,-0.112473271787167,0.054732989519835,-0.049249738454819,-0.047996617853642,-0.072303988039494,0.014407781884074,-0.012351954355836,-0.015085467137396,-0.008131663314998));
res += mul(Get(s0,-dx,0), float4x4(-0.165657952427864,-0.075027823448181,0.138042882084846,0.012160311453044,-0.066286996006966,-0.043905135244131,0.011442983523011,-0.094817511737347,0.003057148540393,0.077715381979942,0.059039697051048,-0.043705653399229,0.040379785001278,-0.012508761137724,0.116936594247818,-0.046696253120899));
res += mul(Get(s0,-dx,dy), float4x4(-0.113663665950298,-0.124320991337299,0.268661260604858,-0.107272967696190,0.019478196278214,-0.008061720989645,-0.019266979768872,0.045905552804470,0.011915990151465,0.064664632081985,-0.024445576593280,0.047456648200750,0.006442655343562,-0.021094121038914,-0.006424169056118,-0.139201357960701));
res += mul(Get(s0,0,-dy), float4x4(0.135194718837738,-0.099129498004913,-0.082658052444458,0.050066199153662,0.154983192682266,0.051306650042534,-0.077781923115253,-0.158417582511902,-0.024228850379586,-0.110622942447662,0.043448261916637,0.047038488090038,-0.105503343045712,-0.028001911938190,0.049719363451004,-0.192287117242813));
res += mul(Get(s0,0,0), float4x4(0.030332315713167,-0.032086823135614,-0.131489381194115,0.239342764019966,0.014107526279986,0.044065862894058,-0.061259843409061,0.040278404951096,0.028028937056661,-0.025762552395463,-0.039375171065331,-0.031498420983553,-0.118819788098335,0.019483525305986,0.018105667084455,-0.047429338097572));
res += mul(Get(s0,0,dy), float4x4(-0.163672819733620,0.066312730312347,0.076322995126247,0.049042236059904,0.025205735117197,0.120091021060944,-0.030687134712934,-0.041587483137846,0.031283590942621,0.021370498463511,-0.010802009142935,0.012904596515000,0.083357289433479,-0.076004691421986,0.084139719605446,0.058169469237328));
res += mul(Get(s0,dx,-dy), float4x4(0.181350216269493,-0.077195987105370,-0.119112625718117,-0.094282552599907,-0.041506756097078,-0.037807654589415,0.058268934488297,-0.099394083023071,-0.026950364932418,-0.012406480498612,0.042763713747263,0.127503335475922,-0.037936907261610,-0.001248711138032,0.015656955540180,0.063663646578789));
res += mul(Get(s0,dx,0), float4x4(0.153264343738556,0.040810137987137,-0.156758189201355,-0.066372618079185,0.112439803779125,-0.043905425816774,0.098244369029999,-0.038705106824636,0.091192469000816,0.009640153497458,-0.070286035537720,-0.103279374539852,0.075852721929550,0.030649527907372,-0.127188295125961,0.056577183306217));
res += mul(Get(s0,dx,dy), float4x4(0.041268698871136,0.056522663682699,0.001426857896149,-0.174771443009377,0.042309500277042,-0.068171583116055,-0.180546224117279,0.005311705172062,-0.068149931728840,0.050767142325640,-0.002546545350924,0.074952758848667,0.031579315662384,-0.068321116268635,-0.025961795821786,-0.016503322869539));
res += mul(Get(s1,-dx,-dy), float4x4(0.082744866609573,0.028087999671698,0.020786471664906,0.064866833388805,-0.129240125417709,0.009397109039128,0.126305237412453,0.022177591919899,-0.031143030151725,-0.012733531184494,0.064465761184692,0.076992854475975,0.109017200767994,0.108881585299969,0.069585464894772,-0.032145865261555));
res += mul(Get(s1,-dx,0), float4x4(0.060931034386158,-0.017856249585748,-0.109654642641544,-0.018483413383365,-0.028136571869254,0.078467860817909,0.041043404489756,-0.001253089751117,-0.086268462240696,0.107417933642864,0.159173682332039,0.078546576201916,-0.012285307049751,0.205904677510262,0.191405519843102,-0.177789255976677));
res += mul(Get(s1,-dx,dy), float4x4(-0.044725205749273,-0.042730107903481,0.006130633410066,-0.029513040557504,0.006654976401478,-0.113473251461983,0.035228971391916,0.002602816792205,0.013419223949313,-0.086541309952736,0.069158546626568,0.009929079562426,-0.032045178115368,0.100476875901222,-0.041216295212507,0.013854606077075));
res += mul(Get(s1,0,-dy), float4x4(-0.114007078111172,-0.036058362573385,0.095251649618149,-0.022795110940933,-0.060669735074043,0.112661480903625,0.077210023999214,0.048606768250465,-0.041275959461927,-0.043252404779196,-0.109283097088337,-0.091961614787579,0.057839129120111,0.013178477063775,0.060417063534260,-0.088061265647411));
res += mul(Get(s1,0,0), float4x4(0.162958890199661,-0.023633381351829,0.042386937886477,0.023910518735647,-0.031622909009457,0.044051043689251,0.093182876706123,0.048860717564821,-0.051612138748169,0.098472408950329,0.003605894744396,0.011821816675365,-0.002131267217919,0.053536958992481,0.020081005990505,-0.039684232324362));
res += mul(Get(s1,0,dy), float4x4(0.039828509092331,0.115406386554241,-0.020473936572671,-0.029411062598228,-0.057841826230288,-0.173363298177719,0.092292360961437,-0.047979980707169,-0.043721012771130,-0.008589010685682,0.042672965675592,0.027059903368354,0.009181642904878,-0.025762449949980,-0.044449444860220,-0.133921518921852));
res += mul(Get(s1,dx,-dy), float4x4(-0.056669879704714,0.028651695698500,0.057656686753035,-0.045449852943420,-0.064067922532558,0.070282980799675,0.054003436118364,0.047547534108162,-0.055657871067524,0.008548930287361,0.038476623594761,-0.045522563159466,-0.117445141077042,-0.106877423822880,-0.059642348438501,0.172993406653404));
res += mul(Get(s1,dx,0), float4x4(-0.042020093649626,-0.073352448642254,0.019130323082209,-0.047880429774523,0.064802624285221,-0.099634736776352,0.012277351692319,-0.036437567323446,-0.051995903253555,-0.008414289914072,0.112593173980713,-0.015671603381634,-0.028625512495637,0.012577925808728,-0.073654711246490,0.149607270956039));
res += mul(Get(s1,dx,dy), float4x4(-0.037467122077942,-0.075855046510696,0.065176412463188,0.051734745502472,0.096349895000458,-0.113335438072681,0.024118863046169,0.051810298115015,0.022791627794504,-0.118574470281601,0.028811044991016,-0.062129341065884,-0.017819518223405,-0.013251964002848,0.050027042627335,0.141614243388176));
res += mul(Get(s2,-dx,-dy), float4x4(0.065263085067272,0.038959920406342,-0.174394384026527,0.038649372756481,-0.002825624309480,-0.069870181381702,-0.036638300865889,-0.147486805915833,-0.014048039913177,-0.013156238012016,-0.000452577543911,0.144714757800102,-0.055819366127253,-0.057161722332239,0.026278430595994,-0.020142698660493));
res += mul(Get(s2,-dx,0), float4x4(0.112961776554585,0.042453791946173,0.137956187129021,-0.151616916060448,-0.095306783914566,0.043913893401623,0.158296018838882,-0.005087587051094,-0.138501822948456,-0.001783288200386,0.242195025086403,0.059965115040541,0.114118106663227,0.045883435755968,0.022393481805921,-0.068223007023335));
res += mul(Get(s2,-dx,dy), float4x4(-0.061571229249239,-0.141628652811050,0.116389490664005,0.052088726311922,0.150581583380699,0.067314006388187,-0.186494678258896,0.054578483104706,-0.040523443371058,0.011479977518320,0.116954490542412,-0.003245657542720,0.162524849176407,-0.020773829892278,-0.050440438091755,-0.029255127534270));
res += mul(Get(s2,0,-dy), float4x4(-0.013097942806780,-0.031635530292988,0.048500455915928,0.028529960662127,-0.175406843423843,0.131427019834518,0.013131749816239,-0.081871591508389,-0.020322574302554,0.049120672047138,-0.046733237802982,-0.000708271458279,-0.044050879776478,-0.016049390658736,0.011059771291912,-0.036301750689745));
res += mul(Get(s2,0,0), float4x4(-0.022902954369783,0.062835998833179,0.087855234742165,-0.162707164883614,-0.087667331099510,-0.122913472354412,-0.039955999702215,0.034605529159307,-0.054830215871334,-0.081306725740433,-0.053499288856983,-0.124926485121250,0.083244666457176,-0.059224128723145,0.092151753604412,-0.075600832700729));
res += mul(Get(s2,0,dy), float4x4(0.002248180331662,0.014747866429389,-0.016929971054196,-0.137590780854225,0.279999613761902,-0.025377098470926,-0.021102691069245,0.104173853993416,-0.060817144811153,0.015555811114609,0.008797465823591,-0.136769667267799,-0.049005016684532,-0.065070457756519,0.105104945600033,-0.035731170326471));
res += mul(Get(s2,dx,-dy), float4x4(-0.020607849583030,0.076064348220825,0.053948782384396,0.064498223364353,-0.160542786121368,0.058409623801708,-0.165330871939659,-0.014153406023979,0.029570249840617,-0.033658225089312,0.073637962341309,-0.080618292093277,-0.075577013194561,0.013020336627960,0.096747063100338,-0.062482479959726));
res += mul(Get(s2,dx,0), float4x4(0.028446292504668,-0.060778532177210,-0.124356865882874,-0.008198591880500,-0.004198360256851,-0.043179560452700,-0.074807375669479,0.030130567029119,-0.134207889437675,0.030592273920774,-0.132005944848061,-0.037827633321285,0.059607584029436,0.023011907935143,0.044308181852102,-0.017902860417962));
res += mul(Get(s2,dx,dy), float4x4(0.023923426866531,0.010355249978602,0.058500289916992,-0.073675177991390,0.196287840604782,0.082823254168034,0.004021591972560,0.089895524084568,0.070382401347160,-0.028705710545182,-0.001890686806291,0.132628917694092,-0.056653678417206,-0.060125216841698,0.028155392035842,0.057249229401350));
res += mul(Get(s3,-dx,-dy), float4x4(-0.051729682832956,-0.007165321148932,-0.107104845345020,-0.035788659006357,0.131798297166824,0.024144573137164,-0.021816553547978,-0.081089735031128,0.140182331204414,0.003978672903031,-0.017735745757818,-0.081395782530308,0.176553025841713,-0.026210801675916,0.010421171784401,0.012686135247350));
res += mul(Get(s3,-dx,0), float4x4(0.102278083562851,-0.271437883377075,-0.046460747718811,-0.041684351861477,-0.041657846421003,-0.041084446012974,0.031316239386797,0.105024479329586,0.070525355637074,0.024645864963531,0.000674008799251,-0.020195288583636,-0.054754067212343,0.064028166234493,0.041482780128717,-0.022521384060383));
res += mul(Get(s3,-dx,dy), float4x4(0.050231020897627,0.035269435495138,-0.196905344724655,-0.005119563080370,0.179836958646774,-0.026295822113752,-0.139951050281525,-0.049225088208914,0.005705947522074,0.048999942839146,-0.012137668207288,0.090642258524895,0.023579070344567,0.001529715606011,0.113891951739788,-0.087084367871284));
res += mul(Get(s3,0,-dy), float4x4(-0.142975583672523,0.027281623333693,0.020731583237648,0.064417615532875,-0.023061424493790,-0.027794726192951,-0.038472037762403,0.026884669438004,-0.059564925730228,-0.035757344216108,0.130244657397270,0.100842922925949,0.079802960157394,0.079369470477104,-0.060078021138906,-0.163489446043968));
res += mul(Get(s3,0,0), float4x4(0.382443368434906,-0.105043128132820,0.068846888840199,-0.044301513582468,-0.013769826851785,-0.110649198293686,0.059482261538506,0.003015449503437,-0.003508229507133,-0.022494398057461,-0.061974268406630,0.183368280529976,0.010436925105751,0.096396803855896,0.064648047089577,-0.019509974867105));
res += mul(Get(s3,0,dy), float4x4(0.197503253817558,0.393860608339310,0.089871704578400,-0.068779304623604,-0.144988119602203,-0.034021452069283,0.044289812445641,-0.167307093739510,-0.046173401176929,-0.115705028176308,0.080618068575859,-0.083108857274055,-0.067896693944931,-0.044322870671749,-0.006398184690624,-0.090157799422741));
res += mul(Get(s3,dx,-dy), float4x4(-0.045758042484522,0.117919258773327,-0.081640690565109,-0.048858366906643,-0.052083849906921,0.076096393167973,-0.078599430620670,0.045449621975422,-0.019981533288956,0.110040374100208,-0.083359405398369,0.036625016480684,0.035526923835278,-0.157543718814850,-0.070069298148155,0.113962985575199));
res += mul(Get(s3,dx,0), float4x4(-0.129562422633171,-0.063151329755783,-0.026941023766994,-0.048161983489990,0.035800646990538,0.137853756546974,-0.104888245463371,-0.090890869498253,-0.027836697176099,0.089315190911293,0.053748551756144,-0.085992410778999,-0.127030625939369,0.138586997985840,-0.003223539097235,0.045174434781075));
res += mul(Get(s3,dx,dy), float4x4(-0.135348796844482,0.043202582746744,0.121857471764088,0.053731173276901,0.010844073258340,0.035378661006689,0.039228189736605,-0.022376354783773,0.033980093896389,-0.007012390997261,0.085140608251095,0.082411229610443,-0.118952326476574,-0.078992895781994,-0.102390281856060,0.099142052233219));
return max(float4(0,0,0,0), res);
}