sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.096605911850929,-0.050314355641603,-0.010989272966981,0.031479079276323);
res += mul(Get(s0,-dx,-dy), float4x4(0.029371818527579,0.021535616368055,0.005114404950291,-0.007450550328940,-0.085665889084339,0.071823865175247,0.023067938163877,0.070198923349380,-0.184691339731216,0.117220118641853,-0.028381951153278,-0.059145901352167,-0.033763203769922,-0.073483958840370,-0.000980352866463,-0.055110562592745));
res += mul(Get(s0,-dx,0), float4x4(0.028204631060362,0.018867598846555,-0.051143683493137,-0.039779670536518,0.025394963100553,-0.074985384941101,0.032933492213488,-0.076438069343567,0.229226604104042,-0.265815824270248,0.103360250592232,0.103716284036636,0.082549735903740,0.045734763145447,0.058437690138817,0.207856506109238));
res += mul(Get(s0,-dx,dy), float4x4(-0.068177334964275,0.009339260868728,-0.036894023418427,-0.055032636970282,0.153007462620735,-0.151544257998466,0.072178967297077,0.086195379495621,-0.171193167567253,-0.254279434680939,-0.073272861540318,0.013279143720865,0.029012197628617,-0.205908834934235,0.035706285387278,0.061801012605429));
res += mul(Get(s0,0,-dy), float4x4(0.027697751298547,0.050242699682713,0.040074758231640,0.127748817205429,-0.172381848096848,0.207396402955055,0.032285872846842,0.184478417038918,-0.548923134803772,0.493879050016403,0.354605257511139,0.237473696470261,-0.063486844301224,0.084397554397583,0.033243402838707,-0.185687676072121));
res += mul(Get(s0,0,0), float4x4(0.021881772205234,0.064002215862274,-0.249341279268265,0.104103133082390,-0.218024760484695,-0.056051667779684,0.189299508929253,-0.700221240520477,-0.043546225875616,-0.122599750757217,-0.551607787609100,-0.359797358512878,-0.190765485167503,0.052076801657677,0.089118041098118,-0.165278926491737));
res += mul(Get(s0,0,dy), float4x4(0.095285736024380,0.090612225234509,0.134144052863121,-0.044220637530088,-0.402882337570190,-0.484031319618225,0.132044672966003,-0.301200211048126,-0.396592795848846,-0.116493254899979,-0.105934448540211,0.053744673728943,0.054562449455261,-0.196792230010033,-0.011961506679654,-0.234075948596001));
res += mul(Get(s0,dx,-dy), float4x4(-0.207269579172134,0.088490098714828,-0.057480916380882,0.219133853912354,0.029931291937828,0.034349907189608,0.092621751129627,0.141541242599487,0.033830847591162,0.028472568839788,0.135637760162354,0.185763850808144,0.224542170763016,0.022788204252720,-0.007880884222686,-0.321733951568604));
res += mul(Get(s0,dx,0), float4x4(0.507162988185883,-0.204552873969078,-0.219646409153938,0.244547039270401,-0.182384565472603,0.001761750318110,-0.157594755291939,-0.331516295671463,0.009672804735601,-0.009351600892842,0.134067162871361,0.147014901041985,-0.244224444031715,0.066314116120338,0.489430397748947,-0.127125620841980));
res += mul(Get(s0,dx,dy), float4x4(-0.032099030911922,-0.037633489817381,-0.328472256660461,0.098205551505089,0.015768909826875,-0.084545589983463,0.200735196471214,0.142506301403046,-0.085569165647030,-0.017052054405212,0.233294263482094,0.012435538694263,-0.126803874969482,-0.404095321893692,0.076433539390564,-0.107508800923824));
res += mul(Get(s1,-dx,-dy), float4x4(0.070955783128738,0.109804302453995,-0.030214510858059,0.017362369224429,0.011388582177460,0.362872838973999,-0.077940031886101,-0.116906866431236,0.288077265024185,-0.125575214624405,-0.081530921161175,0.193376630544662,-0.014286393299699,0.180293232202530,-0.045704517513514,0.085154928267002));
res += mul(Get(s1,-dx,0), float4x4(0.273768544197083,0.045224867761135,-0.008824179880321,0.113364644348621,0.167303815484047,-0.082928709685802,0.069021157920361,-0.062730163335800,0.166736260056496,0.144383996725082,0.010458082892001,0.386902540922165,0.366274714469910,-0.253994315862656,-0.067719213664532,0.223057895898819));
res += mul(Get(s1,-dx,dy), float4x4(-0.036129985004663,-0.388903409242630,0.043385118246078,0.006265227217227,0.064205549657345,-0.110068239271641,-0.097129136323929,-0.035699501633644,-0.070355325937271,0.025697346776724,0.007713451515883,0.079744175076485,0.052967458963394,-0.255575597286224,0.070769816637039,0.099202431738377));
res += mul(Get(s1,0,-dy), float4x4(0.176111593842506,-0.032466053962708,0.017504233866930,-0.053178068250418,-0.030163027346134,0.025952354073524,0.193002402782440,-0.099853359162807,0.186896815896034,-0.103468425571918,0.002181580057368,-0.105420500040054,-0.306112200021744,0.360356867313385,0.289653927087784,0.621335148811340));
res += mul(Get(s1,0,0), float4x4(-0.367274582386017,0.012654896825552,-0.132684990763664,0.060786213725805,-0.204191207885742,0.015287822112441,0.025463083758950,-0.542614698410034,-0.018725125119090,-0.092385992407799,-0.239245966076851,0.080496333539486,-0.406126409769058,-0.320988208055496,-0.325647741556168,-0.254318505525589));
res += mul(Get(s1,0,dy), float4x4(0.091992415487766,-0.349105089902878,0.002318107755855,0.146670505404472,-0.145704224705696,-0.397668987512589,0.147866934537888,-0.072223149240017,0.453813612461090,0.053743939846754,-0.050500635057688,-0.084471352398396,0.157805740833282,-0.044305559247732,0.119433097541332,-0.115602552890778));
res += mul(Get(s1,dx,-dy), float4x4(-0.079818651080132,0.264600753784180,0.012201497331262,0.086149528622627,0.149420440196991,0.156132802367210,0.114711359143257,-0.166185081005096,-0.188619241118431,0.101091712713242,0.058668985962868,0.035430118441582,0.212738871574402,-0.140182226896286,-0.064281947910786,0.204230412840843));
res += mul(Get(s1,dx,0), float4x4(0.348052591085434,-0.220361426472664,0.240361645817757,0.095843203365803,0.147398352622986,-0.016103390604258,0.063005372881889,-0.322731703519821,0.177592203021049,-0.161933600902557,0.245900541543961,-0.107678778469563,-0.047005023807287,-0.115190528333187,0.320947617292404,0.219614729285240));
res += mul(Get(s1,dx,dy), float4x4(0.079439565539360,-0.228749305009842,-0.022282181307673,-0.164824292063713,0.040168244391680,-0.164625450968742,0.221148386597633,0.001319611095823,0.213258340954781,0.131587564945221,-0.070715487003326,-0.039942484349012,0.098928585648537,0.115839898586273,0.014310119673610,-0.004055823665112));
res += mul(Get(s2,-dx,-dy), float4x4(-0.206469118595123,-0.178906679153442,-0.057480376213789,-0.057601135224104,0.103838086128235,-0.009366272948682,-0.095127396285534,0.018675033003092,-0.045056924223900,0.120354853570461,-0.010342337191105,0.109026491641998,0.032495897263288,0.110946625471115,-0.011367765255272,0.227675706148148));
res += mul(Get(s2,-dx,0), float4x4(-0.284857332706451,0.038302700966597,0.048505786806345,-0.018653996288776,-0.027440741658211,0.049410279840231,0.046097017824650,-0.076172299683094,-0.206346809864044,0.003929900005460,0.043887399137020,-0.143842339515686,0.239598959684372,-0.069470293819904,0.005311005283147,0.112981848418713));
res += mul(Get(s2,-dx,dy), float4x4(0.011196619831026,0.048808347433805,-0.023777743801475,-0.009398669935763,0.063443027436733,-0.237210288643837,0.188586294651031,0.318146854639053,-0.151235580444336,-0.090187467634678,0.135064914822578,-0.186884239315987,0.093156218528748,0.020201107487082,0.072857260704041,0.043735146522522));
res += mul(Get(s2,0,-dy), float4x4(0.146000519394875,-0.232184976339340,-0.114278897643089,-0.291973114013672,0.243922904133797,-0.045758023858070,0.159372612833977,-0.039946362376213,-0.210731640458107,0.051822021603584,-0.041367456316948,-0.157806038856506,-0.068856894969940,0.046976618468761,0.185217097401619,0.057670570909977));
res += mul(Get(s2,0,0), float4x4(-0.143192619085312,0.415771633386612,0.079193808138371,0.447025328874588,-0.463222742080688,0.275855958461761,0.832762956619263,-0.440815061330795,-0.152327045798302,0.359797716140747,0.098365433514118,0.113418653607368,0.005919239018112,-0.538634717464447,0.083913914859295,0.074089735746384));
res += mul(Get(s2,0,dy), float4x4(-0.032509911805391,-0.038399446755648,0.001144068199210,0.044395200908184,-0.204637840390205,-0.362829059362411,0.235063076019287,0.485584437847137,-0.344181418418884,-0.154634699225426,0.313529700040817,-0.287048727273941,-0.226130485534668,0.267399996519089,-0.325748443603516,-0.075073301792145));
res += mul(Get(s2,dx,-dy), float4x4(-0.146957010030746,-0.002762916497886,-0.067465692758560,0.026858298107982,0.104563131928444,-0.053238667547703,-0.016441466286778,0.195985168218613,-0.073939144611359,0.300401866436005,0.084784060716629,-0.150620222091675,-0.073453031480312,0.138734102249146,0.205628827214241,0.075214073061943));
res += mul(Get(s2,dx,0), float4x4(-0.096085362136364,0.015948636457324,-0.249119624495506,0.170701503753662,0.313200443983078,-0.047632504254580,-0.066277481615543,0.243326365947723,-0.082127057015896,0.156167760491371,0.449505358934402,-0.084358505904675,-0.104695476591587,0.044835589826107,-0.220483377575874,-0.101575762033463));
res += mul(Get(s2,dx,dy), float4x4(-0.131827652454376,-0.038830976933241,-0.044560045003891,0.174649551510811,-0.058924246579409,-0.166418388485909,0.195383027195930,0.265544235706329,-0.043471619486809,-0.242285981774330,0.177711755037308,-0.166668757796288,-0.070428684353828,-0.071954511106014,0.053259246051311,-0.045545913279057));
res = max(float4(0, 0, 0, 0), res) + float4(0.027258614078164,-0.090828217566013,0.614370942115784,0.089970439672470) * min(float4(0, 0, 0, 0), res);
return res;
}