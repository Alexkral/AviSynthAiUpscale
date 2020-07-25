sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.011981932446361,-0.042460650205612,0.017456734552979,0.059520613402128) * Get(-dx,-dy);
res += float4(-0.082989491522312,-0.125392347574234,-0.109541982412338,-0.155415043234825) * Get(-dx,0);
res += float4(-0.054206121712923,0.140552967786789,-0.010556235909462,-0.126720800995827) * Get(-dx,dy);
res += float4(0.299532741308212,0.239764466881752,-0.093520030379295,0.037809535861015) * Get(0,-dy);
res += float4(-0.014524585567415,0.233985990285873,0.448827058076859,0.126816779375076) * Get(0,0);
res += float4(0.112037852406502,-0.298752427101135,-0.072330772876740,-0.302409321069717) * Get(0,dy);
res += float4(-0.006801297422498,-0.131718903779984,0.042362116277218,-0.003005836624652) * Get(dx,-dy);
res += float4(-0.196377500891685,-0.022561306133866,0.116799198091030,0.101631075143814) * Get(dx,0);
res += float4(0.044296201318502,0.244288370013237,-0.046886615455151,-0.044848341494799) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
