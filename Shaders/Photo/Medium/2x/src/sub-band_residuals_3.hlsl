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
float4 res = float4(0.0072046518325806,-0.0172047168016434,0.0116487517952919,0.0136928614228964);
res += mul(Get(s0), float4x4(-0.2348954379558563,-0.4860982000827789,-0.3927787244319916,-0.0277167242020369,0.0222836714237928,-0.3058637082576752,0.0824090167880058,0.1068974584341049,0.3245575129985809,-0.0247816108167171,-0.2170119881629944,0.0423047430813313,-0.1946462243795395,-0.3066290616989136,-0.0612086467444897,0.2079378217458725));
res += mul(Get(s1), float4x4(1.5809857845306396,0.3286333382129669,0.1746922433376312,-0.1402644813060760,-0.3900544643402100,0.1109930574893951,-0.0632558166980743,-0.3613725304603577,-0.2302465438842773,0.0139287831261754,-0.2365414798259735,-0.0455814562737942,-0.3618313670158386,-0.3262729942798615,0.1597055196762085,0.2543568313121796));
res += mul(Get(s2), float4x4(-0.7446183562278748,0.0791972577571869,0.1944500207901001,0.0235101599246264,-0.1332785487174988,-0.2553209960460663,0.0285264309495687,0.0301395338028669,-0.1373680830001831,-0.0706752762198448,0.2327985018491745,-0.0006116139120422,-0.0286159217357635,-0.3636563718318939,0.1009531617164612,0.0390073843300343));
res += mul(Get(s3), float4x4(0.3788222968578339,0.5159760713577271,-0.0203109085559845,-0.4942704737186432,-0.0721217617392540,-0.2200864702463150,-0.0509661175310612,0.2411592751741409,0.0557065382599831,-0.1178973317146301,0.0594823434948921,-0.1715225428342819,0.0516078099608421,0.0973160415887833,-0.1659763902425766,-0.0422710664570332));
res += mul(Get(s4), float4x4(-0.4385325312614441,-0.0850462317466736,-0.1051695495843887,-0.1207768246531487,0.0390957295894623,-0.0444245859980583,0.5511973500251770,0.0935555696487427,0.0695182904601097,-0.0945983976125717,0.3823833167552948,0.0018151776166633,-0.3425541222095490,0.4720887839794159,-0.1470612287521362,-0.0690813288092613));
res += mul(Get(s5), float4x4(-0.0584579482674599,-0.0156077612191439,-0.0345953330397606,-0.0048907790333033,-0.2074475884437561,0.0527145750820637,-0.0506255924701691,-0.2560885548591614,0.1435538232326508,0.5643128156661987,-0.0864479243755341,0.0296361800283194,0.0884031802415848,-0.6156747937202454,-0.0236870851367712,0.2065916508436203));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(-0.0175813138484955,0.2143674790859222,0.9812932014465332,0.2414663434028625) * min(float4(0, 0, 0, 0), res);
return res;
}
