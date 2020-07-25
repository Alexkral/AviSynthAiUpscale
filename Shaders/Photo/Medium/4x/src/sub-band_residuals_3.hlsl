sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0369575209915638,0.0725029334425926,-0.0198777224868536,-0.0383178628981113);
res += mul(Get(s0), float4x4(0.0218004342168570,-0.3742779493331909,0.4643856287002563,0.1556008160114288,0.3156772553920746,-0.1336116045713425,0.3866615891456604,-0.3164434432983398,0.1597718447446823,-0.0254578664898872,0.4072745740413666,-0.0907897129654884,-0.1147789657115936,-0.0283959433436394,0.0998069718480110,0.0190661977976561));
res += mul(Get(s1), float4x4(0.4727374911308289,-0.0291747488081455,-0.2252570390701294,-0.3526351749897003,0.2862080335617065,0.3021318614482880,0.1680757403373718,0.1547416746616364,0.2842701375484467,-0.2568949759006500,-0.1745545268058777,0.0751564428210258,0.2949967086315155,0.0732838585972786,-0.1560753434896469,0.5196568965911865));
res += mul(Get(s2), float4x4(-0.1236690133810043,0.3907671570777893,0.0112851671874523,0.1555905938148499,-0.1051710769534111,0.0619077086448669,0.0850834101438522,-0.2493649870157242,-0.0713615864515305,0.4068857729434967,-0.3117026686668396,0.1856737583875656,-0.0550285577774048,0.0200225152075291,-1.0498002767562866,-0.2897040843963623));
res += mul(Get(s3), float4x4(-0.1421883255243301,0.9581876397132874,0.7528733611106873,-0.2587436735630035,-0.1924804598093033,-0.5578995943069458,-0.1364794969558716,-0.0882528722286224,-0.0008412244496867,0.2930994331836700,-0.0635271891951561,0.0190813597291708,0.4104649424552917,-0.2289302498102188,-0.0594074614346027,-0.2370797395706177));
res += mul(Get(s4), float4x4(0.0115960380062461,-0.0592515915632248,-0.4619351625442505,-0.0740578025579453,-0.0657803788781166,-0.0905583575367928,-0.0900565460324287,0.1592723429203033,-0.1246130838990211,0.1954671442508698,0.0753647461533546,0.0338942073285580,0.1402084231376648,-0.2888058423995972,-0.2181111574172974,0.1079304367303848));
res += mul(Get(s5), float4x4(0.0177530385553837,-0.0313785821199417,-0.2417242527008057,-0.0868560746312141,0.1330426335334778,0.1468557566404343,-0.0777369737625122,0.1159251034259796,-0.1282205879688263,-0.2938943207263947,-0.3528489768505096,0.1463577151298523,-0.5854965448379517,-0.0484287962317467,0.1786770671606064,-0.1394132673740387));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(1.0192453861236572,0.2325799018144608,0.0107398992404342,0.4945158064365387) * min(float4(0, 0, 0, 0), res);
return res;
}