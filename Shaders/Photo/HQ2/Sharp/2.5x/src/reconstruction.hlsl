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
res += dot(float4(0.013860153965652,-0.106067657470703,0.040894296020269,-0.057611793279648), Get(s1,-dx,-dy));
res += dot(float4(0.099621668457985,0.055257081985474,0.040123600512743,-0.096138156950474), Get(s2,-dx,-dy));
res += dot(float4(-0.055127628147602,0.131802946329117,0.052400439977646,0.174500599503517), Get(s3,-dx,-dy));
res += dot(float4(-0.059402178972960,0.062962010502815,0.076078169047832,0.068784579634666), Get(s4,-dx,-dy));
res += dot(float4(0.107168696820736,0.092543870210648,0.156205564737320,0.217686071991920), Get(s1,-dx,0));
res += dot(float4(0.008117666468024,-0.200685977935791,-0.084889672696590,-0.028408624231815), Get(s2,-dx,0));
res += dot(float4(-0.036488294601440,0.090974882245064,0.120326481759548,-0.207105576992035), Get(s3,-dx,0));
res += dot(float4(-0.050472594797611,-0.101330853998661,-0.109295271337032,0.007924173027277), Get(s4,-dx,0));
res += dot(float4(0.099566742777824,-0.080888561904430,-0.025827914476395,-0.023163512349129), Get(s1,-dx,dy));
res += dot(float4(-0.093744926154613,-0.149234071373940,-0.025219332426786,0.032321572303772), Get(s2,-dx,dy));
res += dot(float4(-0.028328595682979,-0.028063684701920,-0.007318059448153,-0.027431685477495), Get(s3,-dx,dy));
res += dot(float4(0.057114236056805,0.025695752352476,0.055139709264040,0.017210196703672), Get(s4,-dx,dy));
res += dot(float4(-0.158834576606750,0.035319015383720,0.050308648496866,0.039214521646500), Get(s1,0,-dy));
res += dot(float4(0.024558611214161,0.129033237695694,-0.081779949367046,-0.217116817831993), Get(s2,0,-dy));
res += dot(float4(0.245174050331116,0.024044211953878,-0.011734755709767,-0.037594653666019), Get(s3,0,-dy));
res += dot(float4(0.075754888355732,0.024402907118201,-0.012332651764154,0.071772322058678), Get(s4,0,-dy));
res += dot(float4(-0.266528040170670,0.021054342389107,0.080740444362164,0.062872990965843), Get(s1,0,0));
res += dot(float4(-0.044232416898012,0.025569137185812,-0.056628119200468,0.048009928315878), Get(s2,0,0));
res += dot(float4(0.102440103888512,0.049408402293921,0.202880010008812,0.052580509334803), Get(s3,0,0));
res += dot(float4(0.145574420690536,-0.251482248306274,-0.303987115621567,0.231561496853828), Get(s4,0,0));
res += dot(float4(0.102849043905735,0.094486393034458,0.075244314968586,0.015593144111335), Get(s1,0,dy));
res += dot(float4(-0.089601352810860,0.053829979151487,-0.013570240698755,0.055663529783487), Get(s2,0,dy));
res += dot(float4(0.079123638570309,-0.100862689316273,-0.003531399881467,0.019919971004128), Get(s3,0,dy));
res += dot(float4(-0.264255672693253,-0.114930130541325,0.009634101763368,0.035583738237619), Get(s4,0,dy));
res += dot(float4(0.126058012247086,-0.081959120929241,-0.090656489133835,0.010647711344063), Get(s1,dx,-dy));
res += dot(float4(-0.014307281002402,0.088277183473110,0.051956325769424,0.101873882114887), Get(s2,dx,-dy));
res += dot(float4(0.068925648927689,-0.071122959256172,-0.101019546389580,-0.100202254951000), Get(s3,dx,-dy));
res += dot(float4(0.100022584199905,0.086385086178780,-0.048702441155910,-0.121603690087795), Get(s4,dx,-dy));
res += dot(float4(0.026404300704598,-0.000386609026464,-0.197325617074966,-0.017714325338602), Get(s1,dx,0));
res += dot(float4(-0.169303581118584,0.110879875719547,-0.059319954365492,0.026262933388352), Get(s2,dx,0));
res += dot(float4(-0.042757384479046,0.243501305580139,-0.023324057459831,0.094378039240837), Get(s3,dx,0));
res += dot(float4(-0.047034863382578,0.082576222717762,0.173892766237259,-0.255088746547699), Get(s4,dx,0));
res += dot(float4(-0.020338643342257,0.161694034934044,0.006101334933192,-0.094780355691910), Get(s1,dx,dy));
res += dot(float4(-0.079278498888016,0.014894643798470,0.000078013450548,-0.221133068203926), Get(s2,dx,dy));
res += dot(float4(-0.028543259948492,-0.022903695702553,-0.121082730591297,0.138572588562965), Get(s3,dx,dy));
res += dot(float4(-0.189991116523743,-0.009764628484845,0.172554701566696,0.009068336337805), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}
