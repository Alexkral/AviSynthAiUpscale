sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0165409352630377,-0.0133106186985970,0.0079133231192827,0.0079906657338142);
res += float4(0.0516263544559479,-0.0669929683208466,0.0219056978821754,-0.0254382397979498) * Get(-ddx,-ddy);
res += float4(0.0025234085042030,-0.0221454966813326,-0.0456378832459450,0.1055080741643906) * Get(-ddx,-dy);
res += float4(0.0089399004355073,-0.0983658805489540,0.2163781374692917,-0.2012050598859787) * Get(-ddx,0);
res += float4(0.0359461605548859,-0.0603995956480503,-0.0502994433045387,-0.0302384104579687) * Get(-ddx,dy);
res += float4(-0.0597420595586300,0.0001356558204861,0.0296701658517122,0.0052027637138963) * Get(-ddx,ddy);
res += float4(-0.0398993454873562,-0.0382995270192623,-0.0026589981280267,-0.0046327509917319) * Get(-dx,-ddy);
res += float4(0.0397543050348759,-0.0584698542952538,-0.0610868223011494,-0.1268839687108994) * Get(-dx,-dy);
res += float4(0.0664657205343246,0.0601939745247364,0.0134782055392861,0.2578386962413788) * Get(-dx,0);
res += float4(0.0448593981564045,-0.0212661940604448,0.1664536893367767,0.1618295609951019) * Get(-dx,dy);
res += float4(0.0335110574960709,-0.0013744253665209,-0.1130937039852142,-0.0403865613043308) * Get(-dx,ddy);
res += float4(0.0257906280457973,-0.1372105926275253,0.0268084779381752,0.1003333181142807) * Get(0,-ddy);
res += float4(0.2713765799999237,0.2189389020204544,-0.0101769827306271,-0.1767772883176804) * Get(0,-dy);
res += float4(0.3990782797336578,0.4748950302600861,-0.0518499426543713,0.1032950133085251) * Get(0,0);
res += float4(-0.0075270743109286,-0.1530202329158783,-0.0996796861290932,-0.0580994300544262) * Get(0,dy);
res += float4(0.0357991755008698,0.1539297401905060,0.0967223793268204,-0.1407329291105270) * Get(0,ddy);
res += float4(-0.0702867731451988,-0.0491368062794209,-0.0654811561107635,-0.0102513320744038) * Get(dx,-ddy);
res += float4(-0.1128866225481033,-0.1283390671014786,-0.0487044863402843,-0.0014785019448027) * Get(dx,-dy);
res += float4(0.0590795092284679,0.1056688800454140,-0.1396639943122864,-0.0553114190697670) * Get(dx,0);
res += float4(-0.1268591433763504,0.0478933937847614,0.0077680884860456,0.0930320471525192) * Get(dx,dy);
res += float4(-0.0543892942368984,0.0262771230190992,0.0258928760886192,0.0287646874785423) * Get(dx,ddy);
res += float4(0.0173925682902336,-0.0044908602721989,0.0412718690931797,0.0404456742107868) * Get(ddx,-ddy);
res += float4(0.0255939718335867,-0.1025618612766266,-0.0387583784759045,0.0259302519261837) * Get(ddx,-dy);
res += float4(-0.0110483942553401,-0.0342546589672565,0.1173901036381721,-0.0198220275342464) * Get(ddx,0);
res += float4(-0.0648204758763313,0.0212597269564867,-0.0340368710458279,0.0147114796563983) * Get(ddx,dy);
res += float4(-0.0200942493975163,-0.0691499784588814,-0.0197873171418905,-0.0569042824208736) * Get(ddx,ddy);
return res;
}
