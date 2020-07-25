sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0097718862816691,-0.0540347248315811,0.0186590217053890,-0.0514948479831219);
res += float4(0.0238481331616640,0.0087993284687400,-0.0196544714272022,-0.0335239097476006) * Get(-ddx,-ddy);
res += float4(-0.0268667899072170,0.0406253002583981,-0.0129203964024782,0.1114353388547897) * Get(-ddx,-dy);
res += float4(-0.0013525678077713,-0.0441345721483231,-0.0682256594300270,-0.0898428484797478) * Get(-ddx,0);
res += float4(0.0213974025100470,0.0312560424208641,0.0719204172492027,0.0303554739803076) * Get(-ddx,dy);
res += float4(0.0113904075697064,-0.0125509491190314,-0.0386930070817471,-0.0120337428525090) * Get(-ddx,ddy);
res += float4(-0.0093859266489744,-0.0001735991245368,0.1099797636270523,0.0038038783241063) * Get(-dx,-ddy);
res += float4(0.0172108076512814,0.0672632604837418,-0.1035483852028847,0.0708094388246536) * Get(-dx,-dy);
res += float4(-0.0430181734263897,0.1318243145942688,0.1569267809391022,0.3909665942192078) * Get(-dx,0);
res += float4(-0.0392994135618210,0.1322154700756073,-0.0993881151080132,-0.0216412004083395) * Get(-dx,dy);
res += float4(-0.0053724530152977,0.0312257800251245,-0.0108252326026559,0.0259938314557076) * Get(-dx,ddy);
res += float4(-0.0157737005501986,-0.1219191178679466,-0.0426061674952507,-0.1427090167999268) * Get(0,-ddy);
res += float4(0.0646240860223770,0.1061448976397514,0.0066315731965005,0.0547682531177998) * Get(0,-dy);
res += float4(-0.0625958740711212,0.3640541136264801,-0.0980020910501480,-0.3581903278827667) * Get(0,0);
res += float4(-0.0005812772433273,0.0290870405733585,0.1994466930627823,-0.0116696069017053) * Get(0,dy);
res += float4(-0.0118512427434325,0.0791596621274948,-0.0280175600200891,-0.0550582334399223) * Get(0,ddy);
res += float4(0.0094264373183250,0.0278042238205671,-0.0213368386030197,0.0555395372211933) * Get(dx,-ddy);
res += float4(0.0576761141419411,-0.2216313183307648,0.0313040763139725,-0.0521523207426071) * Get(dx,-dy);
res += float4(-0.0845033377408981,-0.1968651562929153,-0.0746539533138275,-0.0112406900152564) * Get(dx,0);
res += float4(0.0217441152781248,-0.1214996129274368,0.0200365483760834,0.1015053987503052) * Get(dx,dy);
res += float4(0.0453640818595886,0.0453946366906166,-0.0110135646536946,-0.0414140708744526) * Get(dx,ddy);
res += float4(0.0022920758929104,0.0017514178762212,0.0397082194685936,-0.0146258929744363) * Get(ddx,-ddy);
res += float4(-0.0877312943339348,-0.0778588578104973,-0.0698771476745605,0.0725875347852707) * Get(ddx,-dy);
res += float4(0.1139484345912933,-0.0944939777255058,0.0617370419204235,-0.0267074517905712) * Get(ddx,0);
res += float4(0.0144862681627274,-0.0992421880364418,-0.0274543147534132,0.0223245751112700) * Get(ddx,dy);
res += float4(-0.0157611239701509,0.0243703965097666,0.0016355297993869,-0.0030319530051202) * Get(ddx,ddy);
return res;
}