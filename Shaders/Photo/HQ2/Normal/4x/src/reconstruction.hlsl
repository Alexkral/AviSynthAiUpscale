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
res += dot(float4(0.124657437205315,-0.033574599772692,-0.108089074492455,-0.214097961783409), Get(s1,-dx,-dy));
res += dot(float4(-0.054243560880423,-0.077138796448708,-0.017075097188354,-0.098364822566509), Get(s2,-dx,-dy));
res += dot(float4(0.156066030263901,-0.159315884113312,-0.017063815146685,-0.110339187085629), Get(s3,-dx,-dy));
res += dot(float4(0.211882293224335,0.067519508302212,0.133039727807045,0.076076179742813), Get(s4,-dx,-dy));
res += dot(float4(0.005616319831461,-0.227902233600616,-0.029222223907709,-0.222266614437103), Get(s1,-dx,0));
res += dot(float4(-0.009819194674492,-0.038533367216587,-0.009642864577472,-0.280291408300400), Get(s2,-dx,0));
res += dot(float4(0.173160031437874,0.043392281979322,-0.057946655899286,-0.153790816664696), Get(s3,-dx,0));
res += dot(float4(0.214600980281830,0.223096415400505,0.094086892902851,-0.058783683925867), Get(s4,-dx,0));
res += dot(float4(-0.161466360092163,-0.032546650618315,0.114992469549179,-0.064116269350052), Get(s1,-dx,dy));
res += dot(float4(0.086672961711884,-0.056427147239447,0.030256072059274,-0.151238188147545), Get(s2,-dx,dy));
res += dot(float4(0.224124714732170,0.180536046624184,-0.177912801504135,0.030946243554354), Get(s3,-dx,dy));
res += dot(float4(0.061955858021975,0.156562909483910,-0.045582212507725,-0.012997288256884), Get(s4,-dx,dy));
res += dot(float4(0.287322223186493,0.085617162287235,-0.186232417821884,-0.117883712053299), Get(s1,0,-dy));
res += dot(float4(-0.253942877054214,-0.073963038623333,0.021639872342348,0.096305921673775), Get(s2,0,-dy));
res += dot(float4(0.147921919822693,-0.321883887052536,0.033192507922649,-0.279111206531525), Get(s3,0,-dy));
res += dot(float4(0.150941103696823,-0.082102924585342,0.143485084176064,-0.013967429287732), Get(s4,0,-dy));
res += dot(float4(0.015655783936381,-0.312407672405243,-0.307064980268478,0.086636424064636), Get(s1,0,0));
res += dot(float4(0.035181030631065,0.365395188331604,-0.038845889270306,0.013325560837984), Get(s2,0,0));
res += dot(float4(-0.379541128873825,0.093142956495285,0.407474905252457,-0.074515044689178), Get(s3,0,0));
res += dot(float4(0.173492610454559,-0.083406418561935,-0.136053532361984,-0.087812393903732), Get(s4,0,0));
res += dot(float4(-0.208032846450806,-0.189354732632637,0.192403733730316,0.088763847947121), Get(s1,0,dy));
res += dot(float4(0.053658690303564,0.022509247064590,-0.031087871640921,-0.034340880811214), Get(s2,0,dy));
res += dot(float4(-0.039821863174438,0.235551699995995,-0.146197244524956,0.078989923000336), Get(s3,0,dy));
res += dot(float4(0.023745948448777,0.082712627947330,-0.291403979063034,0.035997763276100), Get(s4,0,dy));
res += dot(float4(0.109160430729389,0.184652671217918,-0.039990555495024,-0.078979693353176), Get(s1,dx,-dy));
res += dot(float4(-0.190125614404678,-0.104157872498035,0.100570656359196,0.179840818047523), Get(s2,dx,-dy));
res += dot(float4(0.123246856033802,-0.126531600952148,-0.092991679906845,0.041525308042765), Get(s3,dx,-dy));
res += dot(float4(-0.070561707019806,-0.211609303951263,0.010972224175930,0.039767291396856), Get(s4,dx,-dy));
res += dot(float4(-0.001415067818016,0.250653654336929,0.028825581073761,0.071441918611526), Get(s1,dx,0));
res += dot(float4(-0.111205399036407,-0.000864846224431,0.262420356273651,0.142605125904083), Get(s2,dx,0));
res += dot(float4(-0.065380461513996,0.068479299545288,-0.031927250325680,0.275150954723358), Get(s3,dx,0));
res += dot(float4(-0.154280588030815,-0.296010732650757,-0.202989920973778,0.188479006290436), Get(s4,dx,0));
res += dot(float4(-0.167464584112167,-0.005189107265323,0.170092687010765,0.150291502475739), Get(s1,dx,dy));
res += dot(float4(0.014407753944397,-0.037648476660252,0.129088893532753,0.057885762304068), Get(s2,dx,dy));
res += dot(float4(-0.032935254275799,0.078912787139416,-0.100240267813206,0.032104093581438), Get(s3,dx,dy));
res += dot(float4(-0.098081335425377,-0.189233273267746,-0.047639895230532,0.266632795333862), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}