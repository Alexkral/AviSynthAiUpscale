sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.044725004583597,0.077762410044670,-0.598928749561310,-0.548480629920959);
res += float4(-0.005587769672275,-0.026534130796790,-0.013103284873068,0.068008974194527) * Get(-ddx,-ddy);
res += float4(-0.008623764850199,0.186807259917259,0.013194862753153,-0.032604854553938) * Get(-ddx,-dy);
res += float4(0.072383351624012,-0.033645886927843,0.009209348820150,0.007457222323865) * Get(-ddx,0);
res += float4(-0.031031453981996,-0.003991062752903,0.001181506784633,0.016427980735898) * Get(-ddx,dy);
res += float4(-0.006671503651887,0.010718999430537,0.019232064485550,-0.080414123833179) * Get(-ddx,ddy);
res += float4(0.072736747562885,0.088811084628105,0.047029450535774,-0.078290551900864) * Get(-dx,-ddy);
res += float4(0.580986499786377,-1.661062240600586,0.037607938051224,-0.081379055976868) * Get(-dx,-dy);
res += float4(0.425595670938492,0.287223607301712,0.009035395458341,-0.047790896147490) * Get(-dx,0);
res += float4(-0.026365803554654,-0.021989237517118,-0.045619901269674,0.127875015139580) * Get(-dx,dy);
res += float4(0.011022133752704,0.001347320037894,-0.010435857810080,0.129017531871796) * Get(-dx,ddy);
res += float4(-0.096719689667225,-0.062437031418085,-0.075031772255898,0.008312540128827) * Get(0,-ddy);
res += float4(-0.541848659515381,0.233573108911514,0.138441592454910,-0.113203175365925) * Get(0,-dy);
res += float4(-0.388454407453537,0.180535539984703,0.769040286540985,0.825210273265839) * Get(0,0);
res += float4(-0.019677557051182,0.026640512049198,0.007602840662003,0.123483128845692) * Get(0,dy);
res += float4(-0.004703719168901,0.010703394189477,-0.000022360076400,-0.111613757908344) * Get(0,ddy);
res += float4(0.030746502801776,0.066384382545948,0.036824021488428,-0.005207900423557) * Get(dx,-ddy);
res += float4(-0.052433975040913,-0.034551821649075,-0.150235071778297,-0.041591372340918) * Get(dx,-dy);
res += float4(-0.076701305806637,0.016663536429405,0.150601059198380,0.090810239315033) * Get(dx,0);
res += float4(0.072382025420666,-0.008255683816969,-0.069973297417164,-0.162939876317978) * Get(dx,dy);
res += float4(-0.005468469113111,-0.014253383502364,0.008073664270341,0.046479035168886) * Get(dx,ddy);
res += float4(-0.016524067148566,-0.006742099300027,0.000844008929562,0.008199830539525) * Get(ddx,-ddy);
res += float4(0.034281302243471,-0.010073360055685,-0.018091993406415,0.102045804262161) * Get(ddx,-dy);
res += float4(-0.025062354281545,0.021347463130951,-0.006645143963397,-0.048785619437695) * Get(ddx,0);
res += float4(0.002062468789518,-0.013487078249454,0.016137734055519,-0.068830505013466) * Get(ddx,dy);
res += float4(-0.002944604028016,-0.000207228702493,-0.011285206303000,0.017181009054184) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.326504468917847,-0.011426447890699,-0.100931577384472,-0.018539194017649) * min(float4(0, 0, 0, 0), res);
return res;
}
