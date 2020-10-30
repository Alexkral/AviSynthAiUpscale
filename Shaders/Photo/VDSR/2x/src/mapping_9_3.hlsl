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
res += mul(Get(s0,-dx,-dy), float4x4(0.080239109694958,0.042193364351988,0.084660284221172,-0.042767316102982,-0.071252375841141,-0.014677248895168,-0.100286722183228,0.057048026472330,0.006582564674318,-0.009492958895862,-0.007761857006699,0.077782116830349,-0.029136119410396,0.052818100899458,0.007997632957995,0.044400151818991));
res += mul(Get(s0,-dx,0), float4x4(-0.005788604263216,0.199140831828117,0.153050422668457,-0.079991221427917,-0.101225972175598,0.073744893074036,0.062746778130531,0.039635799825191,-0.079211346805096,0.191087409853935,0.107267476618290,-0.058645635843277,0.019044885411859,-0.037204787135124,0.057137988507748,0.047559294849634));
res += mul(Get(s0,-dx,dy), float4x4(-0.043395120650530,-0.002089854096994,-0.052035424858332,0.035174731165171,-0.186058834195137,-0.047764148563147,-0.148022368550301,0.036053128540516,-0.040791172534227,-0.052263692021370,-0.121077023446560,-0.025022726505995,-0.014499960467219,-0.091621071100235,-0.016897384077311,0.054824259132147));
res += mul(Get(s0,0,-dy), float4x4(-0.099690861999989,-0.009132186882198,0.015383289195597,-0.019929878413677,0.016719656065106,-0.091065153479576,0.022675791755319,-0.012170910835266,0.094338975846767,-0.111706197261810,0.079461917281151,0.049659922719002,-0.046125181019306,0.071784786880016,0.070498406887054,0.036549363285303));
res += mul(Get(s0,0,0), float4x4(0.119120463728905,0.021643113344908,-0.026673264801502,-0.118348360061646,-0.054247297346592,0.104649789631367,0.106458947062492,-0.051326710730791,-0.015289609320462,0.052364230155945,0.184470400214195,-0.020945180207491,-0.020369442179799,0.047939136624336,-0.007899592630565,0.061603751033545));
res += mul(Get(s0,0,dy), float4x4(0.010025220923126,0.097253739833832,0.047953054308891,0.089187145233154,0.079848654568195,-0.017370261251926,-0.093908600509167,-0.023031489923596,-0.007954353466630,-0.057293657213449,0.081462822854519,0.015319221653044,0.030660895630717,-0.034611806273460,-0.030676066875458,-0.043474838137627));
res += mul(Get(s0,dx,-dy), float4x4(0.081595756113529,0.022413831204176,-0.002721067052335,0.065601296722889,-0.082749314606190,-0.003513414179906,0.062255207449198,-0.046592656522989,-0.003724288195372,-0.044402565807104,-0.134626656770706,0.166391074657440,0.027597799897194,0.024934003129601,0.061555247753859,0.036512698978186));
res += mul(Get(s0,dx,0), float4x4(0.097960285842419,-0.014883430674672,-0.013846339657903,-0.094825468957424,0.013394486159086,-0.003433640347794,0.165341451764107,-0.056517913937569,0.145769208669662,0.067912325263023,-0.138948321342468,0.104184545576572,0.057584505528212,0.004961882252246,0.123117454349995,-0.077527835965157));
res += mul(Get(s0,dx,dy), float4x4(0.191974952816963,-0.039838798344135,-0.037664804607630,0.062719896435738,0.090899527072906,-0.001872049295343,0.087306842207909,-0.076522342860699,0.012471096590161,-0.071921080350876,-0.175288379192352,0.057780038565397,0.069938026368618,-0.002359285950661,-0.060454238206148,-0.196603283286095));
res += mul(Get(s1,-dx,-dy), float4x4(0.044772472232580,-0.040137484669685,-0.059511441737413,-0.031946320086718,-0.037402123212814,0.113189667463303,-0.132888376712799,0.003887447994202,0.033046085387468,-0.017784433439374,0.016262257471681,0.031772691756487,-0.071981310844421,0.003837695345283,-0.078268297016621,0.098296545445919));
res += mul(Get(s1,-dx,0), float4x4(0.042315050959587,0.004444744903594,-0.113554686307907,-0.003219529287890,-0.011101351119578,-0.016123071312904,0.103142470121384,0.119535721838474,0.061395280063152,-0.017868086695671,0.019472302868962,-0.060754280537367,0.049549642950296,-0.001792088500224,-0.082544490695000,-0.057252150028944));
res += mul(Get(s1,-dx,dy), float4x4(0.023029562085867,0.020890815183520,0.026929520070553,0.013274936936796,0.033697478473186,0.123000271618366,-0.105860285460949,0.088826730847359,0.021552398800850,0.020096153020859,0.147348299622536,0.122621461749077,-0.010339410975575,0.055411595851183,-0.125930905342102,-0.074644468724728));
res += mul(Get(s1,0,-dy), float4x4(-0.070165954530239,0.021645402535796,0.077938854694366,-0.031553361564875,-0.004795329179615,-0.029474155977368,-0.036444332450628,-0.015358505770564,0.014102229848504,-0.008846351876855,0.113971799612045,0.014162827283144,0.011708247475326,0.007648148573935,-0.073062688112259,-0.049840077757835));
res += mul(Get(s1,0,0), float4x4(-0.114198587834835,0.116770207881927,-0.029945034533739,-0.106610670685768,0.108184963464737,-0.084071420133114,0.110335782170296,-0.064133226871490,-0.057831827551126,0.008675841614604,0.029561571776867,-0.026958167552948,0.106430411338806,-0.064701817929745,0.022396180778742,-0.039783120155334));
res += mul(Get(s1,0,dy), float4x4(-0.020027978345752,0.073122151196003,0.095490343868732,-0.028727672994137,-0.019056236371398,-0.011412864550948,-0.041693549603224,-0.009115560911596,-0.041443668305874,-0.053638745099306,-0.098576873540878,0.008449724875391,0.071777381002903,-0.028694214299321,0.003632167819887,0.074274390935898));
res += mul(Get(s1,dx,-dy), float4x4(0.023479375988245,-0.088478691875935,-0.037549901753664,0.002149975625798,0.007572490721941,-0.068539455533028,-0.116692103445530,0.034950882196426,0.019787617027760,-0.044506989419460,-0.059048090130091,0.011772947385907,0.013155786320567,-0.012383386492729,0.049798402935266,-0.067635327577591));
res += mul(Get(s1,dx,0), float4x4(-0.065089754760265,-0.037718258798122,-0.114039115607738,0.019123939797282,0.003007137216628,0.030198758468032,0.190431609749794,-0.106176011264324,-0.008331863209605,0.086901552975178,-0.041242353618145,-0.153208136558533,0.051009465008974,-0.084649868309498,0.047458939254284,0.073963180184364));
res += mul(Get(s1,dx,dy), float4x4(0.090358883142471,-0.096739806234837,-0.000726059079170,0.150124967098236,0.061468333005905,0.009416093118489,-0.009444938041270,-0.083004504442215,0.031732030212879,0.009189152158797,-0.038994167000055,-0.170523449778557,0.003310742089525,-0.013851198367774,-0.087971560657024,-0.035237431526184));
res += mul(Get(s2,-dx,-dy), float4x4(-0.010878494940698,-0.111267328262329,0.070095412433147,0.007458501961082,-0.038479451090097,0.015547426417470,0.037956848740578,-0.051475036889315,-0.042580377310514,-0.038476798683405,-0.004685091786087,-0.019097149372101,0.018913013860583,-0.087718077003956,-0.032012559473515,0.027027145028114));
res += mul(Get(s2,-dx,0), float4x4(-0.079592235386372,0.017901867628098,0.068895712494850,0.027814311906695,0.038368362933397,0.132719710469246,-0.015966838225722,-0.016070481389761,0.044547483325005,-0.041044801473618,-0.021284271031618,-0.061760529875755,-0.018869556486607,0.032597091048956,-0.021131165325642,0.049683194607496));
res += mul(Get(s2,-dx,dy), float4x4(-0.002035742159933,-0.035127352923155,-0.036529187113047,-0.036122523248196,0.002430243417621,0.250276982784271,0.004762375727296,-0.067948937416077,-0.062118090689182,-0.008997123688459,-0.007165492046624,0.013296512886882,0.026113254949450,-0.097812660038471,-0.105696842074394,-0.077341586351395));
res += mul(Get(s2,0,-dy), float4x4(-0.014187604188919,0.002109531546012,-0.019089538604021,-0.005913885310292,0.015418981201947,0.053683329373598,-0.011256644502282,-0.056560948491096,0.056757729500532,-0.025894932448864,-0.008159880526364,0.036609075963497,0.043944239616394,0.042512200772762,-0.016788518056273,0.066197209060192));
res += mul(Get(s2,0,0), float4x4(0.001075564185157,0.011251436546445,0.025666082277894,0.090471468865871,-0.084823831915855,0.183349430561066,-0.049437090754509,0.019688628613949,0.262828737497330,-0.165765956044197,-0.050321951508522,-0.107675701379776,0.076896026730537,-0.030378779396415,-0.011084964498878,0.222441941499710));
res += mul(Get(s2,0,dy), float4x4(0.038410916924477,-0.080340363085270,0.002874744124711,0.023685846477747,0.092702165246010,0.109084419906139,-0.090246401727200,-0.095873117446899,0.102248065173626,-0.191933542490005,-0.056931100785732,-0.118115909397602,0.043355926871300,-0.131989657878876,-0.041503038257360,-0.062151759862900));
res += mul(Get(s2,dx,-dy), float4x4(0.053908213973045,-0.014115423895419,0.036655280739069,0.041192386299372,0.006029761862010,0.033272039145231,-0.048470426350832,0.017084464430809,-0.051538102328777,0.045955445617437,0.070742718875408,-0.060472033917904,0.082503549754620,0.021840117871761,0.134613275527954,-0.021180197596550));
res += mul(Get(s2,dx,0), float4x4(0.024412035942078,-0.073077112436295,0.047668609768152,0.071179933845997,0.036457709968090,-0.065389826893806,-0.021174937486649,-0.000054972311773,-0.035550493746996,-0.103553056716919,0.082163944840431,-0.120936304330826,0.118251174688339,-0.032735895365477,0.023490535095334,0.023955525830388));
res += mul(Get(s2,dx,dy), float4x4(-0.051273465156555,-0.081254526972771,0.040577627718449,0.136653468012810,-0.048553630709648,-0.044833101332188,0.019870724529028,-0.035797309130430,-0.050268117338419,-0.121432729065418,0.038533449172974,-0.093054100871086,0.030849983915687,-0.066002152860165,-0.120940960943699,-0.105827040970325));
res += mul(Get(s3,-dx,-dy), float4x4(-0.003429183736444,-0.014436821453273,-0.069013319909573,0.096091970801353,0.055405564606190,0.002282833447680,-0.053236961364746,-0.020582756027579,-0.003746636677533,-0.000076554759289,0.135112926363945,0.078088074922562,0.031921412795782,0.041899152100086,-0.004517509136349,-0.059973042458296));
res += mul(Get(s3,-dx,0), float4x4(0.041651651263237,0.042537514120340,0.106840118765831,0.025576086714864,-0.054240453988314,0.090226098895073,-0.020499026402831,-0.071942187845707,0.032959185540676,-0.033073097467422,-0.053584467619658,-0.077676460146904,0.107964895665646,0.023508850485086,0.088421702384949,0.009552070870996));
res += mul(Get(s3,-dx,dy), float4x4(-0.043045341968536,-0.014227608218789,-0.079929806292057,0.018318666145205,0.018824644386768,-0.024969536811113,-0.190103620290756,-0.054393265396357,-0.122226096689701,0.127220541238785,-0.045324280858040,0.107094921171665,-0.028016714379191,-0.051781971007586,0.084383226931095,-0.000548019364942));
res += mul(Get(s3,0,-dy), float4x4(0.070418074727058,0.140148624777794,-0.115166775882244,0.070206791162491,-0.094373151659966,-0.005710687488317,0.008977540768683,-0.046706154942513,-0.005063969176263,-0.063174121081829,0.024369807913899,-0.146442666649818,-0.025340765714645,-0.000059947742557,-0.007834693416953,-0.016715064644814));
res += mul(Get(s3,0,0), float4x4(0.043010044842958,0.057487715035677,0.032554835081100,-0.006697914097458,-0.026242315769196,0.051612831652164,0.017883524298668,0.010023380629718,0.062611982226372,0.012022259645164,-0.009365718811750,-0.002031200565398,0.036979410797358,-0.029303850606084,0.027829254046082,-0.009481109678745));
res += mul(Get(s3,0,dy), float4x4(-0.108496658504009,0.093584448099136,0.095155678689480,0.231465652585030,0.006253505591303,-0.061791583895683,-0.040952064096928,0.044993985444307,-0.043856427073479,0.134783849120140,-0.050220258533955,0.159897565841675,-0.015710582956672,-0.054965771734715,-0.028894817456603,-0.048997044563293));
res += mul(Get(s3,dx,-dy), float4x4(0.020903706550598,0.016027772799134,-0.039722263813019,0.080645903944969,0.072534680366516,-0.002675844356418,-0.083791837096214,-0.083658933639526,-0.081093385815620,0.072488911449909,0.148105546832085,0.143114134669304,0.020308952778578,-0.071236997842789,-0.069245517253876,0.135034650564194));
res += mul(Get(s3,dx,0), float4x4(-0.016838904470205,0.011873159557581,-0.028959257528186,-0.065870866179466,-0.034268144518137,0.218355402350426,-0.030454928055406,-0.057137712836266,0.067963123321533,-0.006920220330358,0.072126068174839,0.140154585242271,-0.016490615904331,0.073775395750999,0.015030165202916,0.111816659569740));
res += mul(Get(s3,dx,dy), float4x4(0.043483067303896,0.040509823709726,-0.098589107394218,0.211016625165939,-0.057678494602442,-0.018509002402425,-0.008741944096982,0.114602327346802,-0.081754513084888,0.009864024817944,0.105199448764324,0.114938169717789,-0.026006175205112,-0.062433890998363,0.019114002585411,0.074964642524719));
return max(float4(0,0,0,0), res);
}
