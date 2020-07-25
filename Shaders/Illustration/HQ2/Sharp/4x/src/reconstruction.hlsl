sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float res = 0;
res += dot(float4(0.123842321336269,-0.010576298460364,-0.021140964701772,-0.006493055261672), Get(s1,-dx,-dy));
res += dot(float4(-0.188279315829277,-0.166047409176826,-0.138180747628212,-0.053819075226784), Get(s2,-dx,-dy));
res += dot(float4(0.191800624132156,0.358865022659302,0.308191239833832,-0.177223458886147), Get(s3,-dx,-dy));
res += dot(float4(0.115372546017170,0.025012215599418,-0.198886409401894,-0.072960853576660), Get(s4,-dx,-dy));
res += dot(float4(0.075320512056351,0.065901234745979,-0.230410739779472,0.023926902562380), Get(s1,-dx,0));
res += dot(float4(-0.062289200723171,-0.319575786590576,-0.022698897868395,-0.013564762659371), Get(s2,-dx,0));
res += dot(float4(-0.089211560785770,0.023556033149362,0.136752247810364,0.062952198088169), Get(s3,-dx,0));
res += dot(float4(0.229057222604752,-0.054350234568119,0.085565865039825,0.022659484297037), Get(s4,-dx,0));
res += dot(float4(0.119634352624416,-0.139713034033775,-0.026306733489037,-0.036342762410641), Get(s1,-dx,dy));
res += dot(float4(-0.022597203031182,-0.175047293305397,0.076535686850548,0.133933961391449), Get(s2,-dx,dy));
res += dot(float4(-0.084146998822689,-0.178940013051033,0.120910786092281,0.175774261355400), Get(s3,-dx,dy));
res += dot(float4(0.005744883324951,0.032740119844675,-0.006848160643131,0.143395751714706), Get(s4,-dx,dy));
res += dot(float4(0.062189932912588,-0.019409779459238,0.065465137362480,0.121765747666359), Get(s1,0,-dy));
res += dot(float4(0.061282183974981,-0.035261046141386,0.163529083132744,-0.013268723152578), Get(s2,0,-dy));
res += dot(float4(0.109705388545990,0.065004892647266,-0.065145336091518,-0.276167958974838), Get(s3,0,-dy));
res += dot(float4(-0.009720372967422,-0.155861243605614,-0.004578463267535,-0.185062557458878), Get(s4,0,-dy));
res += dot(float4(0.005530241411179,0.077446453273296,-0.018699996173382,0.103291176259518), Get(s1,0,0));
res += dot(float4(-0.167929321527481,-0.237607106566429,0.149191379547119,0.335650652647018), Get(s2,0,0));
res += dot(float4(0.023818043991923,-0.023615300655365,-0.245534881949425,0.023057671263814), Get(s3,0,0));
res += dot(float4(-0.130892485380173,0.004519567824900,-0.123825564980507,-0.019665183499455), Get(s4,0,0));
res += dot(float4(-0.136735692620277,-0.068052694201469,0.079728320240974,-0.087215192615986), Get(s1,0,dy));
res += dot(float4(0.067622303962708,0.053575213998556,0.169690355658531,0.149446323513985), Get(s2,0,dy));
res += dot(float4(-0.005914035253227,-0.225074216723442,-0.053877852857113,-0.022335806861520), Get(s3,0,dy));
res += dot(float4(-0.119685426354408,0.290617972612381,0.155038520693779,0.023160746321082), Get(s4,0,dy));
res += dot(float4(-0.067007616162300,-0.075925782322884,0.189094334840775,0.170596286654472), Get(s1,dx,-dy));
res += dot(float4(-0.162756338715553,-0.154111683368683,0.081378817558289,-0.054379504173994), Get(s2,dx,-dy));
res += dot(float4(0.044040907174349,0.197545036673546,-0.299883365631104,0.024840397760272), Get(s3,dx,-dy));
res += dot(float4(-0.006853914353997,-0.453559964895248,-0.068359062075615,0.002655378775671), Get(s4,dx,-dy));
res += dot(float4(0.186325237154961,0.072706811130047,-0.000646833796054,0.020349288359284), Get(s1,dx,0));
res += dot(float4(-0.038726788014174,0.012001193128526,-0.024216242134571,0.127281770110130), Get(s2,dx,0));
res += dot(float4(-0.009872628375888,0.101894229650497,-0.391099989414215,-0.050156932324171), Get(s3,dx,0));
res += dot(float4(-0.090117596089840,-0.120721943676472,-0.049047164618969,-0.044312793761492), Get(s4,dx,0));
res += dot(float4(0.005962591152638,-0.234143704175949,0.056238193064928,-0.094269752502441), Get(s1,dx,dy));
res += dot(float4(0.166507899761200,0.242260351777077,-0.063691854476929,0.202635854482651), Get(s2,dx,dy));
res += dot(float4(0.090084701776505,0.018108977004886,0.054139822721481,0.093644067645073), Get(s3,dx,dy));
res += dot(float4(-0.030183831229806,0.238913163542747,0.023657534271479,0.088741280138493), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}