sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.032236021012068,-0.173584565520287,-0.051225692033768,0.054293069988489,-0.078206174075603,-0.078312195837498,-0.103560373187065,-0.215465947985649,-0.029488516971469,-0.147708192467690,0.096371009945869,0.057083249092102,-0.024944720789790,0.051166165620089,0.025659264996648,0.051795225590467));
res += mul(Get(s0,-dx,0), float4x4(-0.186848923563957,-0.165428876876831,0.035204771906137,-0.000378980301321,-0.280128955841064,0.161221966147423,-0.043654344975948,-0.045578632503748,-0.063336461782455,0.042022161185741,-0.056843429803848,0.032322671264410,0.013661511242390,-0.066734977066517,0.019655836746097,0.179419949650764));
res += mul(Get(s0,-dx,dy), float4x4(0.061997827142477,-0.050155352801085,-0.038097079843283,0.030719747766852,-0.046604324132204,0.038417499512434,-0.002489596139640,-0.141572952270508,0.079487040638924,-0.048246983438730,-0.007607652340084,0.017660830169916,-0.034301780164242,0.009964245371521,0.040268629789352,-0.002554000820965));
res += mul(Get(s0,0,-dy), float4x4(-0.000146490012412,-0.015796996653080,0.038831211626530,-0.084284335374832,0.008393454365432,0.065767206251621,0.134983181953430,-0.129204377532005,-0.045466251671314,-0.022822018712759,-0.000130321073812,0.012171235866845,-0.006519590504467,0.145692244172096,-0.109934620559216,0.063552826642990));
res += mul(Get(s0,0,0), float4x4(-0.123833075165749,0.005194464698434,-0.142095789313316,0.052689913660288,-0.069820508360863,-0.190968826413155,-0.060653563588858,0.301112771034241,-0.069271735846996,0.055778592824936,-0.033249564468861,0.042381942272186,0.031088333576918,-0.091849826276302,-0.096908383071423,0.036687061190605));
res += mul(Get(s0,0,dy), float4x4(-0.043859768658876,0.101078264415264,-0.110798157751560,0.040429096668959,0.043516982346773,0.003936399240047,0.172624170780182,-0.116838797926903,-0.066935785114765,-0.034841518849134,-0.045113172382116,-0.133272230625153,0.142916917800903,-0.018584698438644,0.037004094570875,-0.106559179723263));
res += mul(Get(s0,dx,-dy), float4x4(0.214428558945656,0.070438250899315,-0.153966993093491,-0.009008578024805,0.036545451730490,-0.089123636484146,0.092609383165836,-0.039821963757277,-0.084204934537411,-0.099779829382896,-0.140475884079933,0.142972260713577,0.015675315633416,0.188333615660667,-0.162308633327484,0.065544590353966));
res += mul(Get(s0,dx,0), float4x4(-0.015272326767445,0.223185315728188,0.099685102701187,0.212664127349854,0.065314956009388,-0.006743314675987,0.227181777358055,0.298489958047867,-0.221501827239990,0.041984736919403,0.032121755182743,-0.056897051632404,0.025973945856094,0.057048097252846,0.016149513423443,0.011781912297010));
res += mul(Get(s0,dx,dy), float4x4(0.030841642990708,0.045213170349598,0.098604753613472,0.117507986724377,-0.184054553508759,-0.035515900701284,-0.016975782811642,-0.142489075660706,-0.049768254160881,-0.203407362103462,-0.060416724532843,0.009899217635393,0.144924014806747,0.034087363630533,-0.046174015849829,-0.067747853696346));
res += mul(Get(s1,-dx,-dy), float4x4(0.059951588511467,-0.144277393817902,-0.114713743329048,0.082554802298546,-0.067990414798260,0.102016128599644,0.186718255281448,0.219401106238365,0.022606605663896,0.116907186806202,-0.075944207608700,0.121493533253670,-0.218447372317314,0.038223523646593,0.111310690641403,0.028008412569761));
res += mul(Get(s1,-dx,0), float4x4(0.125754073262215,0.094829410314560,-0.008957733400166,-0.009124890901148,0.088070251047611,0.027215316891670,0.148170307278633,-0.013163898140192,-0.054639801383018,0.049481198191643,-0.059630718082190,0.194083511829376,-0.096557021141052,0.025630421936512,-0.033739417791367,-0.052512284368277));
res += mul(Get(s1,-dx,dy), float4x4(0.170672863721848,-0.024757392704487,-0.044076342135668,-0.048308648169041,0.009209911338985,0.131320178508759,0.090306669473648,0.019089199602604,0.107438653707504,0.190156891942024,0.041780821979046,0.147850498557091,0.023934351280332,0.015587735921144,0.082770980894566,0.050628829747438));
res += mul(Get(s1,0,-dy), float4x4(0.027236295863986,0.171939015388489,0.035311195999384,0.020272346213460,0.063640803098679,0.052903417497873,-0.005617972929031,0.022738134488463,-0.162290573120117,0.068011447787285,0.014812302775681,0.006984614767134,-0.041391607373953,-0.023003904148936,-0.143202751874924,0.068940624594688));
res += mul(Get(s1,0,0), float4x4(-0.020570296794176,-0.023024778813124,0.058382723480463,0.032566167414188,0.096160918474197,0.027537019923329,-0.169945284724236,-0.029719715937972,-0.222417265176773,-0.029885360971093,0.031857848167419,-0.015980700030923,0.031252134591341,0.167610839009285,0.197054788470268,0.097007714211941));
res += mul(Get(s1,0,dy), float4x4(0.051080312579870,-0.076995894312859,-0.018319228664041,-0.033995781093836,0.171665266156197,0.123231768608093,0.184283509850502,0.259040802717209,-0.029557093977928,-0.054419651627541,-0.005903023760766,0.180713221430779,0.062999807298183,-0.004956291057169,-0.055222712457180,-0.047181650996208));
res += mul(Get(s1,dx,-dy), float4x4(0.005627064034343,-0.020260825753212,-0.076278626918793,0.091481886804104,0.069153994321823,-0.019069792702794,0.047600328922272,-0.047695148736238,-0.021148741245270,0.123062148690224,-0.050992753356695,-0.074420072138309,0.106425561010838,0.045463323593140,-0.037003800272942,0.149160668253899));
res += mul(Get(s1,dx,0), float4x4(-0.019307382404804,0.110905997455120,0.163432762026787,0.015942884609103,-0.096741281449795,0.057137086987495,0.165868967771530,-0.052659519016743,0.201840639114380,0.088301770389080,0.069677501916885,0.144135296344757,-0.023116668686271,-0.063948810100555,-0.058037798851728,0.156527757644653));
res += mul(Get(s1,dx,dy), float4x4(-0.163001134991646,0.099999591708183,-0.017217950895429,0.117078177630901,0.019121594727039,-0.063265301287174,0.093232549726963,-0.005302309058607,0.004816435277462,0.127174541354179,-0.186300247907639,0.105637781322002,-0.004304610658437,0.087413243949413,-0.021980030462146,0.093338929116726));
res += mul(Get(s2,-dx,-dy), float4x4(-0.054072849452496,0.181122496724129,0.051000662147999,0.072141237556934,0.080883480608463,-0.134148120880127,0.119694098830223,-0.014095988124609,0.017497710883617,0.027406685054302,0.106028199195862,-0.218554005026817,0.044473551213741,-0.051085285842419,-0.039855252951384,0.129326403141022));
res += mul(Get(s2,-dx,0), float4x4(0.040295187383890,0.150784686207771,-0.167258962988853,0.030964449048042,0.049094874411821,0.142962366342545,0.064863897860050,0.093424960970879,0.071428537368774,0.177758470177650,0.002317413222045,-0.173171490430832,-0.015099583193660,-0.104391545057297,-0.004458012524992,-0.039089690893888));
res += mul(Get(s2,-dx,dy), float4x4(0.112867593765259,0.168396994471550,0.088555760681629,0.095454066991806,-0.120282076299191,0.056404829025269,0.019551826640964,0.101534612476826,-0.078313171863556,0.099642589688301,-0.118909478187561,0.205494999885559,0.031854201108217,0.188787922263145,0.096176490187645,0.011825696565211));
res += mul(Get(s2,0,-dy), float4x4(0.105320550501347,-0.147104948759079,-0.036160856485367,-0.043245397508144,-0.029965238645673,-0.065064057707787,-0.030003866180778,0.022556165233254,0.088165327906609,-0.115519292652607,0.061934575438499,-0.042132776230574,0.043581504374743,-0.032072611153126,0.095712602138519,-0.081276260316372));
res += mul(Get(s2,0,0), float4x4(0.196315199136734,0.083243958652020,-0.146182134747505,-0.112257182598114,0.182103291153908,-0.008343813009560,-0.005660044029355,-0.196057587862015,0.031740013509989,0.157386660575867,-0.090928994119167,-0.141748189926147,0.009972015395761,-0.036652646958828,-0.188604980707169,0.026431743055582));
res += mul(Get(s2,0,dy), float4x4(-0.033689748495817,0.078405499458313,-0.032357092946768,0.056914884597063,0.042482670396566,0.112314105033875,-0.003691437421367,0.095525905489922,-0.054664477705956,0.054737605154514,0.062547601759434,-0.017115689814091,0.010476736351848,0.051637444645166,-0.088179834187031,0.047079570591450));
res += mul(Get(s2,dx,-dy), float4x4(-0.090505696833134,0.052870452404022,0.037583976984024,-0.002209374681115,0.069124028086662,0.155995115637779,0.070261374115944,0.076413854956627,-0.053763948380947,0.012000355869532,-0.078332386910915,-0.039252128452063,-0.018807126209140,0.100849770009518,0.060013510286808,-0.015028545632958));
res += mul(Get(s2,dx,0), float4x4(0.094767875969410,0.062429055571556,-0.148265674710274,-0.076913885772228,0.102238759398460,0.071453563868999,-0.001832516398281,-0.029333543032408,0.021690510213375,0.133002996444702,0.148319646716118,-0.010713653638959,-0.099625408649445,0.009466896764934,0.016127116978168,-0.020263088867068));
res += mul(Get(s2,dx,dy), float4x4(0.027071911841631,-0.060744866728783,0.005536277312785,0.049462392926216,0.072015382349491,-0.033998239785433,0.092035584151745,0.038647953420877,-0.168092831969261,-0.015267912298441,0.080398976802826,-0.029719276353717,0.110489889979362,0.088608011603355,-0.086965590715408,-0.028902037069201));
res += mul(Get(s3,-dx,-dy), float4x4(-0.142959788441658,-0.046096958220005,-0.035484042018652,0.003966475836933,0.109079919755459,0.037714503705502,0.019417528063059,-0.018214102834463,-0.113326936960220,-0.092422522604465,-0.098496168851852,0.094909414649010,-0.050038870424032,-0.094483822584152,0.227564305067062,-0.116621337831020));
res += mul(Get(s3,-dx,0), float4x4(-0.057685937732458,-0.201227948069572,-0.173676252365112,-0.008009587414563,-0.077265180647373,0.084499135613441,-0.058797046542168,-0.162642344832420,-0.094528049230576,0.052598498761654,0.016491865739226,0.001170627656393,-0.106214992702007,-0.185328379273415,0.030680453404784,-0.291201353073120));
res += mul(Get(s3,-dx,dy), float4x4(-0.040167003870010,-0.121558330953121,-0.111703425645828,-0.012651189230382,0.062038645148277,0.293606162071228,-0.091999724507332,0.026815492659807,-0.051183890551329,0.069930225610733,0.186815053224564,0.077748648822308,-0.045173745602369,-0.095219098031521,0.142326354980469,-0.110222056508064));
res += mul(Get(s3,0,-dy), float4x4(-0.048409488052130,0.012203278020024,0.273664474487305,0.198737040162086,0.140117466449738,0.006945566739887,-0.078630976378918,-0.104865647852421,-0.046888284385204,-0.147935494780540,0.032527543604374,-0.081640772521496,-0.006591194309294,0.245234176516533,-0.051279157400131,-0.052929986268282));
res += mul(Get(s3,0,0), float4x4(-0.038515251129866,0.050205629318953,0.080128081142902,-0.136817574501038,-0.059646263718605,0.143808379769325,0.012067456729710,0.062978938221931,-0.075603432953358,0.309843748807907,-0.101122707128525,0.005703964270651,0.219773605465889,0.199332043528557,-0.198586955666542,0.112934775650501));
res += mul(Get(s3,0,dy), float4x4(-0.050974197685719,0.133141800761223,-0.112187325954437,0.072385005652905,0.000791841128375,0.038704663515091,-0.033188328146935,-0.030207511037588,0.124501094222069,0.135262206196785,0.061112917959690,0.163352370262146,0.084653250873089,0.155844122171402,0.036371562629938,0.130728021264076));
res += mul(Get(s3,dx,-dy), float4x4(0.025742985308170,-0.013087096624076,0.089155286550522,0.138017088174820,-0.107112251222134,-0.084842316806316,0.106738246977329,0.060606345534325,-0.009340155869722,-0.133819848299026,-0.078056007623672,-0.137966588139534,-0.051734726876020,-0.095365345478058,0.047412458807230,0.028259750455618));
res += mul(Get(s3,dx,0), float4x4(-0.002540365094319,0.013136573135853,-0.079227529466152,0.004978367127478,-0.098247073590755,0.033096350729465,0.123626619577408,-0.021089011803269,-0.129884958267212,0.014942076057196,-0.072932049632072,0.071345917880535,0.003717113286257,-0.043065913021564,-0.048797849565744,0.145628824830055));
res += mul(Get(s3,dx,dy), float4x4(-0.041627906262875,0.157088205218315,0.010129956528544,-0.050209525972605,-0.058101072907448,-0.173676013946533,0.029926009476185,0.012067459523678,0.196212589740753,-0.043948363512754,-0.044102005660534,0.080188013613224,-0.079470664262772,0.014173091389239,0.161253944039345,-0.031368304044008));
return max(float4(0,0,0,0), res);
}
