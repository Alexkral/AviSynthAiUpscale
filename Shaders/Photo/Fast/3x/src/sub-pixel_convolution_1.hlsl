sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float3 res = float3(0.000237816871959,-0.000092172274890,-0.001308773644269);
res += mul(Get(s0,-dx,-dy), float4x3(0.009713141247630,-0.005392002407461,-0.001035043154843,0.004919336177409,-0.004072759300470,-0.006102818064392,0.014190722256899,0.012532372027636,0.004342485219240,0.020857714116573,0.010085181333125,0.006667846813798));
res += mul(Get(s0,-dx,0), float4x3(-0.011654947884381,-0.011331708170474,0.019336508587003,-0.014250456355512,0.002616917481646,0.012133308686316,-0.003316080663353,-0.009403959847987,0.000640871992800,0.020391607657075,0.041912533342838,0.038342602550983));
res += mul(Get(s0,-dx,dy), float4x3(-0.003327449783683,-0.001367975841276,0.005476046819240,0.008752866648138,0.008445577695966,-0.008453367277980,0.002661844482645,0.006959984544665,0.006447049789131,0.002386907581240,-0.001671880483627,-0.000988960382529));
res += mul(Get(s0,0,-dy), float4x3(-0.012790971435606,0.004291279241443,0.005303846672177,0.010077487677336,-0.011094763875008,-0.012294118292630,0.002195897046477,0.008886838331819,0.004243022762239,0.008637764491141,0.003523113904521,0.000613739714026));
res += mul(Get(s0,0,0), float4x3(0.064210087060928,-0.001663877046667,-0.040463205426931,-0.036529701203108,0.005805422551930,0.032603565603495,-0.014981550164521,-0.031331405043602,-0.021744001656771,-0.018107373267412,-0.007723856717348,0.007751089055091));
res += mul(Get(s0,0,dy), float4x3(-0.003176284953952,-0.032226983457804,0.010495533235371,0.011813696473837,0.015256982296705,-0.015928160399199,0.005333475302905,0.011951401829720,0.007058867253363,-0.002300776541233,-0.005774551071227,-0.012985592707992));
res += mul(Get(s0,dx,-dy), float4x3(0.003855344839394,0.003388680983335,0.002794428495690,-0.001719924155623,0.001604313030839,0.001970923738554,0.004770012106746,0.000414254842326,-0.000992742599919,-0.004207326099277,-0.003438411280513,-0.004125587642193));
res += mul(Get(s0,dx,0), float4x3(-0.001081908820197,-0.010651409626007,0.001688294112682,0.003042537951842,-0.001810325426050,-0.004279735498130,0.004130147397518,0.002975119743496,0.005093299318105,0.002262038644403,0.001154028694145,-0.001689080614597));
res += mul(Get(s0,dx,dy), float4x3(0.003972269129008,0.000666651176289,0.006153733469546,-0.001683550537564,-0.001892752130516,0.002203559037298,-0.001701669185422,0.000429896812420,0.004043375141919,-0.000433665351011,0.000120342810987,-0.000992753193714));
res += mul(Get(s1,-dx,-dy), float4x3(0.015424529090524,0.002765539567918,0.000892751908395,-0.003136679762974,0.012734288349748,0.000972730515059,0.006875448394567,-0.002485346747562,-0.003146871458739,-0.004120220895857,-0.006374547723681,-0.002060329308733));
res += mul(Get(s1,-dx,0), float4x3(-0.024693975225091,-0.011477183550596,0.019974740222096,0.015298931859434,-0.008274102583528,-0.027356849983335,0.009578441269696,-0.021444192156196,0.004851822275668,-0.025810766965151,-0.014720499515533,-0.004773470107466));
res += mul(Get(s1,-dx,dy), float4x3(0.001642060000449,0.004618026781827,-0.003124321578071,-0.008404594846070,0.000602624844760,0.020321119576693,-0.006757516879588,-0.007855918258429,0.030753539875150,0.006647403817624,-0.003475120756775,-0.023337276652455));
res += mul(Get(s1,0,-dy), float4x3(-0.026004001498222,0.005240177270025,0.008147270418704,-0.010498761199415,0.002105817431584,0.003290860215202,0.001581730670296,-0.006288301199675,-0.001476131845266,0.000247685151407,0.000621753570158,-0.004153119865805));
res += mul(Get(s1,0,0), float4x3(0.045362714678049,0.008452297188342,-0.045804902911186,-0.040672883391380,0.038334969431162,0.021614583209157,-0.038677729666233,-0.009268713183701,0.024710223078728,-0.027828095480800,-0.041731808334589,-0.018436007201672));
res += mul(Get(s1,0,dy), float4x3(-0.000935348158237,-0.002902698703110,0.014495021663606,0.006806011311710,0.018014619126916,-0.032078895717859,-0.020352084189653,0.009391545318067,0.017321279272437,0.002349632559344,0.017996167764068,0.011531106196344));
res += mul(Get(s1,dx,-dy), float4x3(0.004325648304075,-0.000978808384389,-0.001514975330792,-0.008715564385056,-0.007840931415558,0.001563544035889,-0.002206787001342,-0.000184742501006,0.000994524918497,-0.001268360065296,-0.002882462926209,-0.000801275717095));
res += mul(Get(s1,dx,0), float4x3(-0.005366553086787,0.001630357932299,0.009979587979615,0.003604915225878,0.006546939257532,0.000665971601848,0.003024284262210,0.003858428215608,-0.002263522241265,0.007222886197269,0.004308160860091,-0.001403552829288));
res += mul(Get(s1,dx,dy), float4x3(-0.007714799139649,-0.004062938503921,-0.001873726374470,-0.001931777456775,-0.000463085481897,0.001710015232675,0.000222539660172,0.003551536472514,0.000019029130272,0.003103433875367,0.001949384924956,0.004794397857040));
res += mul(Get(s2,-dx,-dy), float4x3(-0.013758804649115,-0.007757756393403,-0.002771246479824,-0.014402976259589,0.006002890411764,0.003049633465707,0.007912809029222,0.003409869503230,-0.000323841755744,0.002683549420908,-0.001797824166715,-0.003024370642379));
res += mul(Get(s2,-dx,0), float4x3(0.010612894780934,-0.002257987624034,-0.014840752817690,0.017493393272161,0.014646257273853,-0.023646343499422,-0.009220143780112,0.002620571525767,0.009510306641459,0.007960857823491,0.010852779261768,0.009205226786435));
res += mul(Get(s2,-dx,dy), float4x3(-0.006754284258932,-0.003721292829141,0.008940529078245,-0.003456585109234,-0.005628286395222,-0.006188477855176,0.000566034344956,-0.004622514359653,-0.009741582907736,0.000024623186619,0.002528969896957,0.005583733785897));
res += mul(Get(s2,0,-dy), float4x3(-0.031187977641821,-0.010306737385690,0.000095625291578,0.007146506104618,0.012286478653550,0.003900569863617,0.011534675955772,0.003966506104916,0.003000441472977,-0.014095621183515,-0.000720414856914,0.001061941497028));
res += mul(Get(s2,0,0), float4x3(-0.012374945916235,-0.041673857718706,-0.048965554684401,0.029964581131935,-0.012685102410614,-0.024781787768006,0.049209695309401,0.054078076034784,0.033430285751820,-0.025677051395178,-0.037439558655024,-0.034301135689020));
res += mul(Get(s2,0,dy), float4x3(-0.002356769051403,0.002557276515290,0.001189984846860,-0.003541540587321,-0.016096454113722,0.007330761756748,-0.001627514488064,-0.000099593962659,0.020800605416298,0.001718350686133,0.000079192985140,-0.007225214969367));
res += mul(Get(s2,dx,-dy), float4x3(0.004203802905977,0.002775713801384,0.001935743610375,-0.002436477458104,0.000149568848428,-0.000696958275512,-0.003365055890754,-0.002645772183314,0.002645400119945,0.008462440222502,0.000151683867443,-0.002444326411933));
res += mul(Get(s2,dx,0), float4x3(-0.008605300448835,-0.006380101200193,-0.000643000297714,0.003702527377754,0.003269409760833,-0.003092777449638,0.007416743319482,0.004255146253854,-0.003777164034545,0.017267143353820,0.025976784527302,0.023704687133431));
res += mul(Get(s2,dx,dy), float4x3(-0.002728701801971,-0.003675136016682,-0.006143151782453,0.000513983773999,0.002082107588649,-0.000111529850983,0.002869078656659,0.005766634363681,0.006587521638721,-0.000228325283388,0.000246363430051,0.005713545251638));
return float4(res, 0);
}