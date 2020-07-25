sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0948496758937836,-0.0283740218728781,0.0027820703107864,0.0256381612271070);
res += float4(0.0042093964293599,0.0080288341268897,0.0012929617660120,0.0119344526901841) * Get(-ddx,-ddy);
res += float4(0.0096895648166537,-0.0315071344375610,-0.0026162988506258,-0.0216774065047503) * Get(-ddx,-dy);
res += float4(-0.0115193957462907,0.0416221059858799,0.0100486706942320,0.0834789723157883) * Get(-ddx,0);
res += float4(0.0077286772429943,0.0027208668179810,-0.0423080585896969,0.0304763726890087) * Get(-ddx,dy);
res += float4(-0.0170329697430134,-0.0076690912246704,0.0113311577588320,-0.0022055667359382) * Get(-ddx,ddy);
res += float4(0.0083040483295918,-0.0092290602624416,0.0654475986957550,-0.0147205609828234) * Get(-dx,-ddy);
res += float4(-0.1053912937641144,-0.0619821175932884,-0.0800546407699585,0.0691370368003845) * Get(-dx,-dy);
res += float4(-0.1712981611490250,0.0229610744863749,0.0232448745518923,-0.0530905425548553) * Get(-dx,0);
res += float4(-0.0749819204211235,-0.0210465509444475,0.0328617841005325,0.0691867545247078) * Get(-dx,dy);
res += float4(-0.0286253988742828,-0.0401769094169140,0.0185185912996531,-0.0179345309734344) * Get(-dx,ddy);
res += float4(-0.0038754106499255,-0.0152875287458301,0.0070330356247723,0.0300223100930452) * Get(0,-ddy);
res += float4(-0.0211165361106396,-0.1828020662069321,-0.1539570242166519,-0.0864537581801414) * Get(0,-dy);
res += float4(0.2979541122913361,0.1499658226966858,0.0751128494739532,-0.1598340421915054) * Get(0,0);
res += float4(0.1334926337003708,0.4154176712036133,0.0497745238244534,0.0770721808075905) * Get(0,dy);
res += float4(-0.0636729225516319,-0.0537668205797672,-0.0203031264245510,-0.0047200038097799) * Get(0,ddy);
res += float4(-0.0007604092825204,0.0001466227404308,0.0508797764778137,0.0235073603689671) * Get(dx,-ddy);
res += float4(0.1066733524203300,0.0012360104592517,0.1377321481704712,-0.0783298462629318) * Get(dx,-dy);
res += float4(0.3307790160179138,-0.1007754951715469,0.1189940273761749,0.1964240223169327) * Get(dx,0);
res += float4(0.0330737456679344,-0.0507072731852531,-0.1295343190431595,-0.1301291733980179) * Get(dx,dy);
res += float4(0.0149427670985460,-0.0143080949783325,0.0402989462018013,-0.0204570107161999) * Get(dx,ddy);
res += float4(0.0030986294150352,-0.0022532809525728,-0.0080652795732021,-0.0194209646433592) * Get(ddx,-ddy);
res += float4(0.0059930114075541,0.0041938964277506,-0.0873084738850594,0.0164564698934555) * Get(ddx,-dy);
res += float4(-0.0651360005140305,0.0317748636007309,-0.1265442371368408,-0.0870107412338257) * Get(ddx,0);
res += float4(0.0179186072200537,0.0249066017568111,0.0044614411890507,0.0365887060761452) * Get(ddx,dy);
res += float4(-0.0139427231624722,0.0055543975904584,0.0005616760463454,0.0025299915578216) * Get(ddx,ddy);
return res;
}
