sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.022505726665258,0.088583759963512,-0.026560733094811,0.048784300684929);
res += float4(0.027639552950859,-0.065898723900318,0.009624112397432,0.008296839892864) * Get(-ddx,-ddy);
res += float4(0.013400131836534,0.046754948794842,-0.149718999862671,0.036339864134789) * Get(-ddx,-dy);
res += float4(-0.258462786674500,0.127042800188065,-0.001230658614077,-0.029117994010448) * Get(-ddx,0);
res += float4(0.149942845106125,-0.019869089126587,0.028289027512074,-0.077183932065964) * Get(-ddx,dy);
res += float4(-0.034441519528627,-0.105500616133213,0.039676100015640,-0.024577898904681) * Get(-ddx,ddy);
res += float4(-0.029330369085073,-0.030854089185596,0.096182942390442,0.041571300476789) * Get(-dx,-ddy);
res += float4(0.033908437937498,-0.061333723366261,-0.053529947996140,-0.153472885489464) * Get(-dx,-dy);
res += float4(-0.174922510981560,-0.016081912443042,0.130332395434380,0.017694467678666) * Get(-dx,0);
res += float4(0.073113292455673,0.064070463180542,-0.152501583099365,-0.000618312740698) * Get(-dx,dy);
res += float4(0.098541095852852,0.013330074027181,0.034505911171436,-0.029123853892088) * Get(-dx,ddy);
res += float4(0.034511517733335,0.023634377866983,-0.119572512805462,-0.000427258491982) * Get(0,-ddy);
res += float4(0.075834698975086,0.135597959160805,0.241135209798813,0.116758935153484) * Get(0,-dy);
res += float4(0.416770756244659,-0.309592008590698,0.217005372047424,0.074077136814594) * Get(0,0);
res += float4(-0.150310367345810,0.027063300833106,-0.238063037395477,-0.097173362970352) * Get(0,dy);
res += float4(-0.207714796066284,0.072268076241016,-0.009045011363924,-0.027586732059717) * Get(0,ddy);
res += float4(-0.061762414872646,-0.056557703763247,0.048076037317514,-0.046332661062479) * Get(dx,-ddy);
res += float4(-0.148962289094925,0.108517564833164,0.085874520242214,0.053196117281914) * Get(dx,-dy);
res += float4(-0.015579530969262,-0.185590431094170,-0.019389279186726,0.051556017249823) * Get(dx,0);
res += float4(-0.084498934447765,0.142378494143486,0.020238300785422,-0.025115722790360) * Get(dx,dy);
res += float4(0.188235998153687,-0.041864804923534,-0.126411199569702,0.039028409868479) * Get(dx,ddy);
res += float4(0.017045183107257,0.028495270758867,0.003777020843700,-0.036413479596376) * Get(ddx,-ddy);
res += float4(-0.008782635442913,-0.207371667027473,-0.094835065305233,-0.040961425751448) * Get(ddx,-dy);
res += float4(-0.003944847732782,0.210712432861328,-0.023261044174433,0.052444495260715) * Get(ddx,0);
res += float4(-0.017155459150672,-0.091276660561562,0.041285760700703,-0.021190926432610) * Get(ddx,dy);
res += float4(0.034980636090040,0.012875135056674,0.066551081836224,0.015582233667374) * Get(ddx,ddy);
return res;
}