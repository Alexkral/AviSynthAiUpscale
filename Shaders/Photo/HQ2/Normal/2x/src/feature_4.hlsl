sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.124485298991203,-0.199892759323120,0.088637501001358,0.018958615139127) * Get(-dx,-dy);
res += float4(0.007194167934358,-0.043603394180536,0.029747299849987,-0.100264623761177) * Get(-dx,0);
res += float4(-0.240587696433067,-0.159864217042923,0.078409448266029,0.135648921132088) * Get(-dx,dy);
res += float4(-0.102102950215340,0.221156701445580,-0.204848930239677,0.033311001956463) * Get(0,-dy);
res += float4(0.124734289944172,0.123381160199642,0.021442789584398,-0.024568282067776) * Get(0,0);
res += float4(-0.158248171210289,0.136145099997520,-0.055450901389122,0.014930818229914) * Get(0,dy);
res += float4(0.025616541504860,-0.154370889067650,-0.171880960464478,-0.026251489296556) * Get(dx,-dy);
res += float4(-0.022228645160794,-0.045134849846363,0.074054040014744,-0.159283921122551) * Get(dx,0);
res += float4(0.046304404735565,-0.049427352845669,0.037442907691002,-0.049329590052366) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
