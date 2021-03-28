sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.002268986077979,0.055425144731998,-0.651802062988281,-0.539703607559204);
res += float4(-0.013023905456066,0.029315076768398,-0.046950738877058,-0.028274016454816) * Get(-ddx,-ddy);
res += float4(0.029054092243314,-0.012692540884018,0.047637738287449,-0.002468489343300) * Get(-ddx,-dy);
res += float4(0.001977169886231,-0.043199900537729,-0.000547318719327,0.045092374086380) * Get(-ddx,0);
res += float4(-0.010752199217677,0.061180870980024,0.017798816785216,-0.040453214198351) * Get(-ddx,dy);
res += float4(-0.026086350902915,-0.046789418905973,0.007140588946640,0.015419379808009) * Get(-ddx,ddy);
res += float4(-0.012695257551968,-0.064275108277798,0.114576980471611,0.073325105011463) * Get(-dx,-ddy);
res += float4(-0.058025069534779,0.070522427558899,-0.106500975787640,0.068417325615883) * Get(-dx,-dy);
res += float4(-0.513237476348877,-0.006607272196561,0.589346706867218,-0.176027968525887) * Get(-dx,0);
res += float4(-0.036035064607859,-0.089059732854366,0.415378510951996,-0.011234880425036) * Get(-dx,dy);
res += float4(0.056124545633793,0.066578857600689,-0.011151017621160,0.026225984096527) * Get(-dx,ddy);
res += float4(0.072875700891018,0.040018532425165,-0.047534193843603,0.095609612762928) * Get(0,-ddy);
res += float4(-0.148411303758621,0.799402117729187,-0.148188441991806,0.800697386264801) * Get(0,-dy);
res += float4(-0.126679047942162,-0.595638096332550,0.138669908046722,-0.103722915053368) * Get(0,0);
res += float4(0.149813786149025,-0.167639270424843,-0.022351335734129,-0.013048480264843) * Get(0,dy);
res += float4(-0.110316783189774,-0.019864229485393,-0.071908786892891,-0.049107253551483) * Get(0,ddy);
res += float4(-0.095427952706814,0.051432702690363,0.013129444792867,-0.115840390324593) * Get(dx,-ddy);
res += float4(0.244824677705765,0.024500086903572,0.092955909669399,0.123561516404152) * Get(dx,-dy);
res += float4(0.586399018764496,-0.141213059425354,-0.170869812369347,-0.094434984028339) * Get(dx,0);
res += float4(-0.064136452972889,0.015548808500171,0.032288070768118,0.004033903125674) * Get(dx,dy);
res += float4(0.054178774356842,0.029977018013597,-0.012204534374177,-0.009133186191320) * Get(dx,ddy);
res += float4(0.043362099677324,-0.025730025023222,-0.026104163378477,0.006495216861367) * Get(ddx,-ddy);
res += float4(-0.053779505193233,0.063885867595673,-0.006248560268432,0.004122276324779) * Get(ddx,-dy);
res += float4(0.024766400456429,-0.067125998437405,0.017207907512784,-0.009340647608042) * Get(ddx,0);
res += float4(-0.042165581136942,0.049886599183083,0.003838653443381,0.005223275162280) * Get(ddx,dy);
res += float4(0.017299495637417,-0.024356391280890,0.018990473821759,0.007652843836695) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.343883663415909,-0.154050096869469,-0.002016001380980,-0.012393085286021) * min(float4(0, 0, 0, 0), res);
return res;
}