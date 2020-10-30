sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.000441518874140,-0.126443877816200,-0.006837971042842,0.001288765924983) * Get(-dx,-dy);
res += float4(-0.000095584924566,-0.515381336212158,0.004921948071569,-0.008173184469342) * Get(-dx,0);
res += float4(-0.003802652703598,-0.249902799725533,-0.003894475288689,-0.002552290679887) * Get(-dx,dy);
res += float4(-0.005400721449405,-0.429381042718887,-0.006964296102524,-0.000320695195114) * Get(0,-dy);
res += float4(0.001331306411885,0.020443305373192,0.006374164950103,0.002597306622192) * Get(0,0);
res += float4(-0.000140449046739,-0.623773574829102,0.000825532537419,-0.006512326188385) * Get(0,dy);
res += float4(0.001444170251489,0.457224965095520,0.001324040815234,-0.001322815194726) * Get(dx,-dy);
res += float4(-0.001946279080585,1.604630470275879,-0.008554829284549,-0.002641377504915) * Get(dx,0);
res += float4(-0.001800841069780,0.367993384599686,-0.001618475071155,-0.008269080892205) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
