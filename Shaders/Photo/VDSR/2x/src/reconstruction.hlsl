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
res += dot(float4(-0.178119391202927,-0.102769814431667,-0.055762518197298,-0.094251833856106), Get(s1,-dx,-dy));
res += dot(float4(-0.021164957433939,0.183763235807419,0.108537942171097,-0.003705299459398), Get(s2,-dx,-dy));
res += dot(float4(0.155555799603462,0.424607485532761,-0.234090119600296,-0.045179385691881), Get(s3,-dx,-dy));
res += dot(float4(0.107840962707996,0.006015910301358,-0.070584267377853,-0.016390075907111), Get(s4,-dx,-dy));
res += dot(float4(0.038684450089931,-0.213733315467834,-0.099821172654629,-0.093130096793175), Get(s1,-dx,0));
res += dot(float4(-0.068829029798508,0.012130141258240,-0.085365384817123,-0.063752032816410), Get(s2,-dx,0));
res += dot(float4(-0.119371153414249,0.261337846517563,-0.096838556230068,0.022921452298760), Get(s3,-dx,0));
res += dot(float4(-0.011125806719065,-0.106443531811237,-0.178623199462891,-0.294517576694489), Get(s4,-dx,0));
res += dot(float4(0.256040006875992,-0.242198109626770,-0.000046845478209,-0.002251622499898), Get(s1,-dx,dy));
res += dot(float4(-0.213908955454826,0.061335608363152,-0.087535418570042,0.142883896827698), Get(s2,-dx,dy));
res += dot(float4(-0.013912943191826,-0.054166149348021,0.083069056272507,0.009363408200443), Get(s3,-dx,dy));
res += dot(float4(-0.079676084220409,-0.024318451061845,-0.001937634078786,0.032441087067127), Get(s4,-dx,dy));
res += dot(float4(-0.311630427837372,0.114428751170635,-0.123953558504581,0.074474044144154), Get(s1,0,-dy));
res += dot(float4(-0.085615113377571,0.140758261084557,-0.052600815892220,0.009273950941861), Get(s2,0,-dy));
res += dot(float4(-0.053590323776007,0.190773516893387,-0.041734207421541,0.423725277185440), Get(s3,0,-dy));
res += dot(float4(-0.095418229699135,-0.057535760104656,-0.021110760048032,0.256056785583496), Get(s4,0,-dy));
res += dot(float4(-0.499061733484268,-0.001681101042777,-0.090313509106636,0.137437775731087), Get(s1,0,0));
res += dot(float4(0.418103426694870,-0.229719832539558,0.107289150357246,0.042537052184343), Get(s2,0,0));
res += dot(float4(-0.278862386941910,-0.194772496819496,-0.081855528056622,-0.234436511993408), Get(s3,0,0));
res += dot(float4(0.246511906385422,-0.121392548084259,-0.095452018082142,0.232664391398430), Get(s4,0,0));
res += dot(float4(0.057383690029383,-0.063342355191708,-0.032437857240438,0.028130924329162), Get(s1,0,dy));
res += dot(float4(0.084622763097286,-0.063769988715649,-0.139266729354858,-0.065900921821594), Get(s2,0,dy));
res += dot(float4(0.355047732591629,-0.045412138104439,0.182348072528839,-0.088142208755016), Get(s3,0,dy));
res += dot(float4(-0.233956128358841,0.408312112092972,0.369633734226227,0.153818666934967), Get(s4,0,dy));
res += dot(float4(-0.063465610146523,0.083410270512104,0.069573469460011,0.049689382314682), Get(s1,dx,-dy));
res += dot(float4(-0.032093048095703,0.161197125911713,0.051517095416784,0.134218901395798), Get(s2,dx,-dy));
res += dot(float4(0.021720631048083,0.116352364420891,0.082366727292538,0.010988342575729), Get(s3,dx,-dy));
res += dot(float4(-0.056786693632603,-0.033548347651958,0.089619286358356,-0.231687530875206), Get(s4,dx,-dy));
res += dot(float4(-0.059381391853094,0.124553315341473,-0.088609062135220,0.005422885529697), Get(s1,dx,0));
res += dot(float4(-0.080283962190151,-0.066738031804562,-0.048740744590759,0.169067442417145), Get(s2,dx,0));
res += dot(float4(0.045202042907476,-0.219197139143944,0.083118274807930,0.128611490130424), Get(s3,dx,0));
res += dot(float4(0.166879147291183,-0.138327762484550,0.236083492636681,-0.173208713531494), Get(s4,dx,0));
res += dot(float4(-0.095502682030201,0.076535418629646,-0.016706472262740,-0.050473045557737), Get(s1,dx,dy));
res += dot(float4(0.052591610699892,-0.155915349721909,0.066883973777294,-0.020240195095539), Get(s2,dx,dy));
res += dot(float4(0.076660305261612,-0.019350023940206,-0.084847301244736,0.268105983734131), Get(s3,dx,dy));
res += dot(float4(-0.016182640567422,-0.019360207021236,0.219005674123764,-0.127762496471405), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}
