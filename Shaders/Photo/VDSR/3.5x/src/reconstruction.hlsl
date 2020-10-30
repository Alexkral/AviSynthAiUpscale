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
res += dot(float4(0.213816761970520,0.052284967154264,-0.188739195466042,0.106199249625206), Get(s1,-dx,-dy));
res += dot(float4(0.073690019547939,0.257454395294189,0.160254806280136,0.132497236132622), Get(s2,-dx,-dy));
res += dot(float4(-0.331977069377899,-0.165453612804413,-0.181383430957794,0.031525235623121), Get(s3,-dx,-dy));
res += dot(float4(0.260249376296997,0.165148422122002,-0.205861419439316,0.011148262768984), Get(s4,-dx,-dy));
res += dot(float4(0.388302683830261,-0.114338770508766,-0.252287358045578,0.384450882673264), Get(s1,-dx,0));
res += dot(float4(0.146736785769463,0.177988946437836,-0.109102211892605,0.130635127425194), Get(s2,-dx,0));
res += dot(float4(-0.249980911612511,-0.162588819861412,-0.054662477225065,-0.011770672164857), Get(s3,-dx,0));
res += dot(float4(0.217622756958008,0.112477511167526,-0.347835749387741,0.159747198224068), Get(s4,-dx,0));
res += dot(float4(0.234345450997353,-0.097510546445847,-0.249753907322884,0.230683043599129), Get(s1,-dx,dy));
res += dot(float4(0.051513910293579,0.015654973685741,-0.405065536499023,0.061288841068745), Get(s2,-dx,dy));
res += dot(float4(0.006463857833296,-0.068618454039097,0.204412281513214,-0.005949492566288), Get(s3,-dx,dy));
res += dot(float4(0.250369280576706,0.020601764321327,-0.116406239569187,0.163438856601715), Get(s4,-dx,dy));
res += dot(float4(-0.027830852195621,-0.160282760858536,-0.240490496158600,-0.021264368668199), Get(s1,0,-dy));
res += dot(float4(0.184047251939774,0.183939576148987,0.246793150901794,0.147357106208801), Get(s2,0,-dy));
res += dot(float4(-0.289305210113525,-0.171486020088196,-0.313795775175095,-0.108001276850700), Get(s3,0,-dy));
res += dot(float4(0.291184097528458,0.306400865316391,-0.065625995397568,-0.296352475881577), Get(s4,0,-dy));
res += dot(float4(-0.260936915874481,-0.489968150854111,-0.092255882918835,0.181732490658760), Get(s1,0,0));
res += dot(float4(0.396664440631866,0.058114435523748,0.017606312409043,0.133690327405930), Get(s2,0,0));
res += dot(float4(0.040628232061863,0.095938459038734,0.086138509213924,-0.312587440013885), Get(s3,0,0));
res += dot(float4(-0.118568763136864,0.287169158458710,-0.024065932258964,0.043739642947912), Get(s4,0,0));
res += dot(float4(-0.002354474505410,-0.145480081439018,-0.258731007575989,0.172338545322418), Get(s1,0,dy));
res += dot(float4(0.044620499014854,-0.194095790386200,-0.360654413700104,0.075509086251259), Get(s2,0,dy));
res += dot(float4(0.151500687003136,0.352293670177460,0.475304722785950,-0.204711794853210), Get(s3,0,dy));
res += dot(float4(0.275317221879959,-0.061035193502903,0.050719588994980,0.279104501008987), Get(s4,0,dy));
res += dot(float4(-0.177959173917770,-0.068529605865479,-0.300890058279037,-0.051739409565926), Get(s1,dx,-dy));
res += dot(float4(0.082368589937687,-0.037979528307915,0.055753979831934,0.108897931873798), Get(s2,dx,-dy));
res += dot(float4(-0.096233062446117,-0.018428819254041,-0.144012734293938,-0.017663080245256), Get(s3,dx,-dy));
res += dot(float4(0.285978972911835,0.170132890343666,0.175981089472771,-0.331432640552521), Get(s4,dx,-dy));
res += dot(float4(-0.237491503357887,-0.107551798224449,-0.285070687532425,0.058332890272141), Get(s1,dx,0));
res += dot(float4(0.207568839192390,-0.155201032757759,0.153724640607834,0.312542736530304), Get(s2,dx,0));
res += dot(float4(0.089598983526230,0.113263837993145,0.054850202053785,-0.255512773990631), Get(s3,dx,0));
res += dot(float4(0.153592124581337,0.141900137066841,0.347433537244797,-0.272653222084045), Get(s4,dx,0));
res += dot(float4(-0.188228771090508,-0.024580737575889,-0.180132403969765,0.057927325367928), Get(s1,dx,dy));
res += dot(float4(-0.016162998974323,-0.255598396062851,0.014728317968547,0.260525196790695), Get(s2,dx,dy));
res += dot(float4(0.131277307868004,0.318695008754730,0.157476440072060,-0.123686991631985), Get(s3,dx,dy));
res += dot(float4(0.229989722371101,-0.121852919459343,0.211928233504295,0.113990098237991), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}
