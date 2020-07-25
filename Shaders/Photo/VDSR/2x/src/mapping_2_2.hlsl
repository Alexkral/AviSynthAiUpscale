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
res += mul(Get(s0,-dx,-dy), float4x4(-0.055477906018496,0.057032741606236,0.151066660881042,-0.040231782943010,-0.098722860217094,0.049953602254391,-0.020239243283868,0.029191700741649,-0.195820018649101,0.023533210158348,-0.041899468749762,0.238126575946808,0.128181681036949,-0.000305348425172,0.237589046359062,-0.265074193477631));
res += mul(Get(s0,-dx,0), float4x4(0.085703395307064,0.003216539509594,-0.016031337901950,-0.092464528977871,0.033528633415699,0.074226379394531,-0.071531236171722,0.057338289916515,-0.018708849325776,0.081430315971375,0.186478450894356,0.101004451513290,-0.057817917317152,-0.050507146865129,-0.003419531043619,-0.141875609755516));
res += mul(Get(s0,-dx,dy), float4x4(-0.018302582204342,-0.207338765263557,-0.074830070137978,-0.089613825082779,0.077114664018154,-0.120594054460526,0.109263747930527,0.256421118974686,-0.022011291235685,0.031547423452139,-0.012443006969988,-0.034576382488012,-0.018587822094560,0.044866796582937,0.208782941102982,-0.090014562010765));
res += mul(Get(s0,0,-dy), float4x4(0.034734424203634,-0.120553076267242,-0.142058759927750,-0.195631340146065,-0.053391166031361,-0.085377767682076,0.056746080517769,0.015438255853951,-0.016385069116950,0.076464347541332,-0.020102238282561,-0.076818138360977,-0.246991842985153,0.076251074671745,-0.133290499448776,0.099781885743141));
res += mul(Get(s0,0,0), float4x4(0.025763420388103,0.003111576661468,0.031157001852989,0.010265129618347,-0.143203288316727,0.090733155608177,-0.008122432976961,-0.112172618508339,-0.064141049981117,0.148029863834381,0.210813447833061,0.063561908900738,-0.121071547269821,0.033446431159973,-0.053363956511021,0.053952973335981));
res += mul(Get(s0,0,dy), float4x4(0.017109138891101,0.084376946091652,-0.049526151269674,-0.280339449644089,0.056897185742855,-0.118108861148357,-0.180082961916924,0.009892225265503,0.054625321179628,0.127645298838615,0.122291259467602,-0.016453862190247,0.011193478479981,0.011385409161448,-0.043248251080513,0.231904044747353));
res += mul(Get(s0,dx,-dy), float4x4(0.164195701479912,-0.075947619974613,-0.002600398147479,-0.204492256045341,-0.034596528857946,0.171690791845322,0.019591880962253,-0.048623785376549,0.046974036842585,-0.047476705163717,0.081555433571339,-0.013747620396316,0.108675844967365,0.080149464309216,0.002299351384863,0.013822815380991));
res += mul(Get(s0,dx,0), float4x4(0.006076103542000,-0.012297608889639,-0.085388921201229,-0.061068665236235,-0.088217318058014,0.081002503633499,0.089701004326344,-0.169854670763016,0.111682638525963,0.129279255867004,0.178735271096230,0.069632306694984,0.090502731502056,0.029582777991891,-0.176894739270210,-0.094077087938786));
res += mul(Get(s0,dx,dy), float4x4(0.016791276633739,-0.031391371041536,-0.025845509022474,-0.256374388933182,-0.172868996858597,-0.046336457133293,0.094343081116676,-0.048040509223938,-0.090007558465004,0.150805726647377,0.029906274750829,0.129255250096321,-0.070765592157841,-0.120065435767174,-0.024903511628509,-0.051930390298367));
res += mul(Get(s1,-dx,-dy), float4x4(-0.032261565327644,-0.125510051846504,-0.020896166563034,-0.096955202519894,0.008239623159170,0.081622846424580,-0.007703431881964,-0.022596683353186,-0.013785757124424,-0.121841087937355,0.027700265869498,-0.088931135833263,-0.241015940904617,0.122321374714375,-0.137714818120003,-0.006382952909917));
res += mul(Get(s1,-dx,0), float4x4(0.123415090143681,0.015296726487577,-0.049351274967194,0.094954818487167,-0.084120489656925,0.043765969574451,-0.172901168465614,-0.042991276830435,-0.029322519898415,0.233077347278595,0.022498665377498,0.067074120044708,-0.176792860031128,-0.242167189717293,-0.113566987216473,0.044690195471048));
res += mul(Get(s1,-dx,dy), float4x4(0.075733169913292,0.223730355501175,0.174448028206825,0.045710079371929,-0.200140848755836,-0.060445584356785,0.011564384214580,-0.108262524008751,0.182628184556961,-0.185027375817299,0.076047062873840,-0.064659953117371,0.066240303218365,0.130629181861877,-0.071483239531517,0.036078277975321));
res += mul(Get(s1,0,-dy), float4x4(-0.207359313964844,0.004057222977281,-0.076401486992836,-0.013773459941149,0.134264200925827,0.117983952164650,-0.042967345565557,0.011378625407815,-0.129338040947914,-0.143473848700523,-0.136502623558044,-0.009560389444232,-0.187924996018410,-0.029735811054707,0.127148181200027,0.046351846307516));
res += mul(Get(s1,0,0), float4x4(-0.042826760560274,0.046194266527891,0.033875837922096,0.111226484179497,0.224138230085373,-0.157693251967430,0.005302186589688,-0.002929917303845,-0.089958161115646,-0.052085675299168,0.003404780058190,-0.091034524142742,-0.028285715728998,0.027285553514957,0.139582574367523,-0.210162445902824));
res += mul(Get(s1,0,dy), float4x4(-0.134091794490814,0.142163917422295,0.058350190520287,0.001031996798702,0.049880079925060,0.119890742003918,0.106152378022671,-0.069435596466064,0.115155324339867,0.143836125731468,-0.094118706882000,0.051238454878330,-0.009761686436832,-0.066778600215912,0.237324312329292,-0.098663516342640));
res += mul(Get(s1,dx,-dy), float4x4(-0.151828438043594,0.039777889847755,0.085676610469818,0.249138697981834,-0.016015121713281,-0.101770155131817,0.070787638425827,-0.099893130362034,0.057930134236813,-0.021163903176785,-0.038244534283876,0.171956405043602,-0.199847936630249,-0.158998519182205,0.081690557301044,0.109091639518738));
res += mul(Get(s1,dx,0), float4x4(-0.097112610936165,0.015280518680811,0.103707283735275,-0.063021577894688,-0.085211560130119,-0.142487585544586,-0.020705346018076,0.065929345786572,-0.036834821105003,0.178203031420708,0.046545770019293,0.075595639646053,0.010206931270659,-0.052689686417580,-0.118103966116905,0.330028802156448));
res += mul(Get(s1,dx,dy), float4x4(-0.075053989887238,-0.065573133528233,0.082070916891098,0.001260323449969,0.252219259738922,-0.012487558647990,-0.006628223229200,-0.036374349147081,0.140181228518486,-0.021028043702245,-0.036809712648392,0.123225599527359,0.000501617265400,-0.073153816163540,0.017245015129447,0.009301367215812));
res += mul(Get(s2,-dx,-dy), float4x4(-0.079770945012569,0.186649784445763,0.024554038420320,-0.014987079426646,-0.004492523148656,-0.007934784516692,0.075326599180698,0.026689702644944,0.053201489150524,0.016283959150314,0.051597807556391,0.071688316762447,-0.070835329592228,0.200001612305641,0.035441853106022,0.030974831432104));
res += mul(Get(s2,-dx,0), float4x4(-0.087008371949196,-0.080558888614178,-0.017737034708261,-0.138776674866676,0.210528880357742,0.048727355897427,-0.090720437467098,0.016686867922544,-0.260058969259262,0.084981672465801,0.025875469669700,0.011901709251106,0.018751183524728,0.107241928577423,-0.030407499521971,-0.084092371165752));
res += mul(Get(s2,-dx,dy), float4x4(-0.248881533741951,0.002412485191599,-0.001102878712118,0.037654720246792,0.003725664224476,0.050576724112034,-0.041422165930271,-0.044701166450977,-0.053625099360943,-0.016545327380300,0.131703287363052,0.143915504217148,-0.084190279245377,0.123692527413368,-0.033596768975258,-0.163056805729866));
res += mul(Get(s2,0,-dy), float4x4(0.043849196285009,0.248897284269333,-0.084615096449852,0.049066331237555,-0.016332386061549,0.053376458585262,0.093488015234470,0.031939480453730,-0.139734148979187,0.076187148690224,0.027427669614553,0.163119181990623,-0.093742728233337,0.040097065269947,-0.211929276585579,0.260661453008652));
res += mul(Get(s2,0,0), float4x4(-0.181069269776344,-0.211553245782852,-0.014987470582128,0.100875385105610,-0.058669000864029,0.054640892893076,-0.058048561215401,-0.139552935957909,-0.071478731930256,-0.155976563692093,0.033730249851942,0.029630132019520,-0.126954942941666,0.079222746193409,-0.031385309994221,-0.092187143862247));
res += mul(Get(s2,0,dy), float4x4(-0.057785835117102,-0.097689956426620,-0.033079337328672,0.137809708714485,0.098941929638386,-0.057119108736515,-0.120069898664951,0.073665745556355,-0.111574172973633,-0.124883592128754,0.009224891662598,0.031548496335745,0.038444805890322,-0.132271260023117,0.054721634835005,0.014168360270560));
res += mul(Get(s2,dx,-dy), float4x4(0.235251545906067,-0.119590908288956,0.018570963293314,0.081055082380772,-0.062597349286079,0.091087065637112,-0.027563307434320,-0.015453732572496,0.079553768038750,-0.026236826553941,0.159266024827957,-0.114082649350166,-0.171649634838104,-0.142607122659683,0.088801398873329,-0.051457025110722));
res += mul(Get(s2,dx,0), float4x4(0.127515897154808,-0.117476128041744,-0.107458196580410,-0.037266481667757,-0.108394548296928,0.089734658598900,0.088189974427223,-0.110491685569286,-0.036840599030256,0.004606790840626,-0.062609761953354,0.007677958346903,0.107230901718140,-0.013590151444077,-0.003207726869732,0.167180657386780));
res += mul(Get(s2,dx,dy), float4x4(-0.017961569130421,0.084542006254196,-0.026297422125936,-0.061698239296675,-0.193514436483383,0.067302033305168,-0.045891977846622,0.027990525588393,-0.038140553981066,-0.068451449275017,-0.050013795495033,0.043467674404383,0.099810853600502,-0.081185251474380,0.227896735072136,-0.113235130906105));
res += mul(Get(s3,-dx,-dy), float4x4(-0.139950230717659,0.011088186874986,-0.062141411006451,-0.006593366619200,-0.045613344758749,0.096893869340420,0.128556996583939,0.117046445608139,-0.060365267097950,-0.012511067092419,-0.026363736018538,-0.152181863784790,0.065651990473270,0.016763255000114,0.024122348055243,0.052812512964010));
res += mul(Get(s3,-dx,0), float4x4(0.012800318188965,-0.049847196787596,0.134641841053963,-0.131588429212570,-0.000122897894471,0.029093487188220,-0.043648231774569,-0.068418152630329,0.053384568542242,0.023492692038417,-0.048895437270403,0.020133946090937,-0.208078399300575,0.076286226511002,-0.096843183040619,0.014658253639936));
res += mul(Get(s3,-dx,dy), float4x4(0.074943467974663,0.098149001598358,-0.061021693050861,0.039843261241913,0.050901081413031,0.149678349494934,0.014425087720156,0.019155852496624,-0.033199191093445,-0.118202760815620,-0.168898746371269,-0.024125425145030,-0.061583254486322,0.200707286596298,-0.096721194684505,-0.059618782252073));
res += mul(Get(s3,0,-dy), float4x4(-0.050641097128391,-0.156648993492126,-0.159381955862045,0.163884520530701,0.048213899135590,0.287866532802582,0.083220742642879,0.038146533071995,-0.088735945522785,0.138234674930573,-0.115778952836990,-0.082866244018078,0.021095652133226,0.055433858186007,0.025089738890529,-0.003598013427109));
res += mul(Get(s3,0,0), float4x4(0.077472060918808,0.126629143953323,0.299652606248856,0.113355122506618,0.012530055828393,-0.146507069468498,-0.038466777652502,0.072631344199181,0.229805573821068,0.014604809693992,-0.108348011970520,0.016456309705973,0.077522374689579,0.024649243801832,-0.021999102085829,-0.091976284980774));
res += mul(Get(s3,0,dy), float4x4(-0.132220789790154,-0.104940742254257,0.068395242094994,0.070189081132412,0.074392601847649,-0.003795915516093,-0.125835672020912,0.140049576759338,0.064030818641186,-0.199134409427643,0.052918359637260,0.003101558657363,0.086908884346485,-0.081709913909435,0.023607114329934,0.120569750666618));
res += mul(Get(s3,dx,-dy), float4x4(0.011882330290973,-0.078937478363514,-0.098177067935467,-0.184345275163651,0.013966901227832,0.044176187366247,-0.185929521918297,-0.161123856902122,-0.024893194437027,0.058670602738857,0.058516390621662,0.065495155751705,-0.106804445385933,-0.081835567951202,-0.047057315707207,-0.122500412166119));
res += mul(Get(s3,dx,0), float4x4(-0.039222273975611,0.059869319200516,-0.035592023283243,-0.196048438549042,0.084441497921944,-0.011010595597327,0.029289146885276,-0.045049153268337,-0.048433475196362,-0.268963664770126,-0.124436564743519,0.104880750179291,0.083135522902012,0.006318855565041,0.014058259315789,-0.036947574466467));
res += mul(Get(s3,dx,dy), float4x4(-0.126422017812729,-0.035936053842306,-0.004108645487577,-0.253366231918335,-0.011616481468081,0.112307518720627,0.102739058434963,0.029994690790772,0.067706204950809,0.175246402621269,0.161222189664841,0.007319851312786,0.045449584722519,-0.038230285048485,-0.003392772749066,-0.061039831489325));
return max(float4(0,0,0,0), res);
}
