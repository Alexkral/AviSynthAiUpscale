sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.176565051078796,-0.106535233557224,0.019908184185624,-0.164901986718178);
res += mul(Get(s0,-dx,-dy), float4x4(0.006043973378837,-0.034846682101488,0.069172605872154,-0.047279953956604,0.075407572090626,0.027459884062409,-0.072984129190445,0.177846819162369,0.037730887532234,-0.019079716876149,-0.146214559674263,-0.010951176285744,-0.000560528191272,0.073717668652534,0.111070699989796,-0.187963634729385));
res += mul(Get(s0,-dx,0), float4x4(-0.080023229122162,0.085304059088230,0.005973041523248,0.095271244645119,0.110978484153748,0.152418226003647,0.112744383513927,-0.171637773513794,-0.032133538275957,-0.094727426767349,0.044445145875216,0.227406084537506,0.080028876662254,0.034136366099119,-0.104742892086506,0.039618320763111));
res += mul(Get(s0,-dx,dy), float4x4(0.035676945000887,0.047041822224855,-0.035610247403383,0.150170922279358,-0.036811769008636,-0.099670477211475,-0.064995154738426,-0.043837819248438,0.052945692092180,-0.101093158125877,-0.019818179309368,-0.022267110645771,-0.020846489816904,-0.099359989166260,-0.009114808402956,-0.019219914451241));
res += mul(Get(s0,0,-dy), float4x4(-0.049827851355076,0.078335061669350,0.043366655707359,0.033686116337776,-0.177186906337738,0.037452150136232,-0.406183838844299,0.025764722377062,0.215402245521545,-0.181382209062576,-0.124371774494648,-0.083016045391560,0.231561824679375,-0.022210560739040,-0.216675281524658,-0.068490736186504));
res += mul(Get(s0,0,0), float4x4(0.066363178193569,-0.183029428124428,0.045590259134769,0.226022526621819,-0.175929307937622,0.133530884981155,-0.660087645053864,0.009778155013919,-0.414353132247925,0.181608080863953,-0.129216372966766,0.119234494864941,-0.080225110054016,0.315750211477280,-0.232768490910530,-0.102018788456917));
res += mul(Get(s0,0,dy), float4x4(-0.118024192750454,-0.132508769631386,0.053639445453882,0.110326431691647,-0.040120076388121,0.033624961972237,-0.346664845943451,-0.082433588802814,-0.111488372087479,0.122727021574974,-0.251589238643646,-0.064083687961102,0.070087127387524,0.007480394560844,0.132237344980240,0.031031426042318));
res += mul(Get(s0,dx,-dy), float4x4(-0.059753622859716,-0.039278615266085,0.077230200171471,-0.029150933027267,-0.141619428992271,0.053538817912340,-0.051106225699186,-0.001288836705498,-0.075049899518490,-0.267552435398102,-0.124372519552708,-0.077740333974361,0.035502541810274,0.232813283801079,0.195495888590813,-0.055112726986408));
res += mul(Get(s0,dx,0), float4x4(0.121665298938751,0.179134041070938,0.179269880056381,0.280589282512665,-0.013431330211461,-0.090069949626923,-0.069358073174953,-0.052386507391930,0.240122407674789,-0.049811493605375,0.037020161747932,-0.080921560525894,-0.151015132665634,0.003812783164904,0.076913177967072,0.005411472637206));
res += mul(Get(s0,dx,dy), float4x4(-0.042543970048428,-0.033168848603964,-0.034131433814764,0.022514596581459,-0.075919114053249,-0.090869300067425,-0.169413715600967,0.026672504842281,-0.086919717490673,0.119066931307316,0.025400446727872,-0.027305789291859,0.073871023952961,-0.081280171871185,-0.001243121922016,-0.056789018213749));
res += mul(Get(s1,-dx,-dy), float4x4(0.161449313163757,0.172102630138397,0.061633490025997,-0.021844677627087,0.013542871922255,0.046874031424522,-0.172012269496918,-0.223373904824257,0.042399030178785,0.066130518913269,-0.058736752718687,0.008282808586955,0.056047942489386,-0.034182690083981,0.044284000992775,-0.094321884214878));
res += mul(Get(s1,-dx,0), float4x4(0.143302544951439,0.104470729827881,-0.068521030247211,0.125017642974854,0.021958006545901,0.055959660559893,-0.136594817042351,-0.199126869440079,-0.092329330742359,0.138786777853966,-0.061346512287855,-0.012996873818338,0.037199988961220,0.045863911509514,-0.028726749122143,-0.129132285714149));
res += mul(Get(s1,-dx,dy), float4x4(-0.028430908918381,0.050304505974054,-0.045581735670567,0.154347553849220,0.106652975082397,0.082883290946484,-0.056165486574173,0.071299664676189,-0.028192061930895,-0.106225676834583,-0.053739666938782,0.017616776749492,-0.072663649916649,-0.101861998438835,0.074024260044098,-0.029390849173069));
res += mul(Get(s1,0,-dy), float4x4(-0.143283694982529,0.263244003057480,-0.095846071839333,-0.071545153856277,-0.208779811859131,-0.248696833848953,-0.023049972951412,-0.069500118494034,0.098836235702038,-0.017439644783735,0.043990015983582,-0.002134857699275,0.034033209085464,-0.187847301363945,0.150837033987045,-0.102925926446915));
res += mul(Get(s1,0,0), float4x4(-0.192364349961281,-0.133582413196564,-0.157366976141930,0.011656060814857,-0.020765798166394,0.091188110411167,-0.020551096647978,-0.168774977326393,-0.164738267660141,0.323924481868744,-0.124108858406544,-0.029350224882364,-0.028420628979802,0.207807436585426,-0.027570785954595,0.108201205730438));
res += mul(Get(s1,0,dy), float4x4(0.121317334473133,-0.259142130613327,0.186643436551094,-0.037857104092836,-0.143062725663185,0.150180041790009,0.044240634888411,0.073681220412254,0.000486889592139,0.003775913966820,-0.084538735449314,-0.045792438089848,0.034342400729656,-0.145789891481400,0.009049355983734,-0.137253969907761));
res += mul(Get(s1,dx,-dy), float4x4(0.084171816706657,0.457142442464828,0.024671792984009,0.013956638984382,-0.067551642656326,-0.393694788217545,-0.129424929618835,0.105646267533302,0.036981686949730,0.173777848482132,-0.049624305218458,-0.034443598240614,-0.047061502933502,-0.037714190781116,-0.035884071141481,-0.046152941882610));
res += mul(Get(s1,dx,0), float4x4(0.089184902608395,-0.175764486193657,-0.056604035198689,0.028798492625356,0.105449452996254,0.042940143495798,-0.230041027069092,-0.053322605788708,-0.096007280051708,0.136413440108299,-0.044412612915039,-0.066984236240387,0.214156016707420,0.096277937293053,0.021096330136061,0.000766014389228));
res += mul(Get(s1,dx,dy), float4x4(-0.067106492817402,-0.220177337527275,0.141183331608772,0.024265851825476,-0.011406356468797,0.216162502765656,-0.006762089207768,0.013160920701921,0.001962762093171,0.273042470216751,-0.263092368841171,-0.051859900355339,0.142386719584465,-0.216492205858231,0.190265089273453,-0.001851173117757));
res += mul(Get(s2,-dx,-dy), float4x4(-0.034033022820950,0.013502650894225,0.005512717645615,0.051959764212370,-0.142357259988785,0.092529051005840,0.107735499739647,0.069968260824680,0.032128129154444,0.363664746284485,-0.061724346131086,0.090647153556347,-0.018268283456564,0.086322456598282,0.145157188177109,0.007670957595110));
res += mul(Get(s2,-dx,0), float4x4(-0.046650506556034,-0.063340663909912,-0.128838911652565,-0.229880452156067,-0.430097252130508,-0.401674240827560,0.072258330881596,-0.082575693726540,-0.032648053020239,0.025463759899139,-0.117285564541817,-0.082025416195393,-0.038226135075092,-0.051417332142591,0.049752179533243,0.350663751363754));
res += mul(Get(s2,-dx,dy), float4x4(-0.132837876677513,-0.061338454484940,0.098791077733040,-0.148860380053520,0.029665641486645,-0.127673164010048,0.005084666423500,-0.027522917836905,0.069738730788231,0.103566549718380,0.027328336611390,-0.011680652387440,0.011243718676269,-0.053278069943190,0.034413151443005,-0.027881110087037));
res += mul(Get(s2,0,-dy), float4x4(0.190100371837616,-0.046771764755249,0.179614588618279,0.082313768565655,0.067549847066402,0.091734513640404,0.133007928729057,0.046790245920420,0.080453231930733,0.055589914321899,-0.120844669640064,0.071333602070808,0.076762810349464,0.123394593596458,0.167071759700775,0.082560069859028));
res += mul(Get(s2,0,0), float4x4(-0.146258354187012,0.078645117580891,-0.191722542047501,0.183604404330254,-0.257425576448441,-0.106353379786015,-0.038351837545633,0.183318510651588,0.333157926797867,0.136754348874092,-0.188660696148872,-0.113825112581253,-0.038718000054359,-0.062240149825811,0.211699426174164,-0.067831724882126));
res += mul(Get(s2,0,dy), float4x4(0.065076880156994,0.038385409861803,0.056868243962526,0.089211866259575,-0.078577473759651,-0.020710861310363,-0.020956281572580,0.091604396700859,0.022036241367459,0.135578021407127,-0.061283160001040,0.080934211611748,-0.155919596552849,-0.139175042510033,-0.015972135588527,0.076219923794270));
res += mul(Get(s2,dx,-dy), float4x4(0.019089717417955,-0.146536365151405,-0.147818654775620,0.025250617414713,0.051998529583216,-0.025929266586900,-0.009479087777436,0.039623729884624,-0.025060253217816,0.158513247966766,0.124917499721050,0.126574873924255,-0.111811690032482,0.004730162210763,0.128940656781197,-0.026896566152573));
res += mul(Get(s2,dx,0), float4x4(0.223319798707962,-0.012838906608522,0.062162425369024,-0.199627980589867,0.080526873469353,0.156584843993187,-0.005382381379604,-0.031282510608435,0.109124980866909,-0.121570147573948,-0.068248033523560,0.042338799685240,0.051680628210306,0.084173254668713,-0.036274962127209,0.043300904333591));
res += mul(Get(s2,dx,dy), float4x4(-0.017482427880168,0.137789279222488,0.219637453556061,0.037028379738331,0.031226057559252,0.164543136954308,0.078691989183426,-0.002224814612418,0.047143086791039,0.064686261117458,0.023744054138660,0.045348074287176,0.018419411033392,-0.064236961305141,-0.070151120424271,0.019600985571742));
res += mul(Get(s3,-dx,-dy), float4x4(0.095491118729115,-0.110145933926105,0.049700073897839,0.073855780065060,0.020379861816764,-0.016511695459485,-0.020188376307487,0.024564990773797,0.030589522793889,0.049287375062704,-0.114771835505962,-0.072641581296921,-0.053837686777115,-0.058971732854843,0.016102980822325,-0.108208507299423));
res += mul(Get(s3,-dx,0), float4x4(-0.066922344267368,-0.094808034598827,0.194122537970543,-0.150583639740944,0.018950998783112,-0.225019529461861,-0.072825096547604,-0.263203769922256,0.083710424602032,-0.129007771611214,0.075382344424725,-0.021430635824800,-0.037673078477383,0.025810537859797,-0.171737581491470,0.167829111218452));
res += mul(Get(s3,-dx,dy), float4x4(-0.029735531657934,0.121610105037689,-0.169760122895241,-0.040356304496527,0.003567803883925,-0.152325615286827,0.273414552211761,-0.046782579272985,-0.064685635268688,-0.170371070504189,0.043349336832762,-0.151936560869217,-0.098825439810753,-0.212168008089066,-0.067830108106136,-0.103170044720173));
res += mul(Get(s3,0,-dy), float4x4(0.161211699247360,-0.085430182516575,0.289289444684982,0.091427914798260,0.229834571480751,-0.126083701848984,0.085690557956696,0.089765444397926,-0.016218364238739,-0.126587405800819,-0.059929590672255,-0.130361795425415,0.080784380435944,-0.150339394807816,-0.007317314390093,-0.083481438457966));
res += mul(Get(s3,0,0), float4x4(0.163438051939011,0.036239750683308,-0.003977772779763,0.175465375185013,0.188209578394890,0.147754043340683,-0.036966774612665,-0.047366082668304,-0.212104216217995,0.004824210889637,-0.014198470860720,-0.282409280538559,-0.023114319890738,0.265522480010986,-0.030319198966026,-0.170910418033600));
res += mul(Get(s3,0,dy), float4x4(-0.153688415884972,0.140216201543808,0.101010121405125,0.129833415150642,0.144002825021744,-0.189633011817932,0.073686085641384,0.022836625576019,0.257612198591232,-0.098359934985638,0.067256584763527,-0.058963038027287,0.013965021818876,-0.241055071353912,-0.226172775030136,-0.142588481307030));
res += mul(Get(s3,dx,-dy), float4x4(0.093608871102333,-0.012165419757366,0.074819423258305,0.085234433412552,-0.002917090430856,-0.089626319706440,-0.117685660719872,-0.026030993089080,0.002243124879897,-0.217123314738274,0.029676597565413,-0.005075495690107,-0.146087631583214,-0.331012845039368,-0.081212110817432,0.031921554356813));
res += mul(Get(s3,dx,0), float4x4(0.012469279579818,-0.148687869310379,-0.047570485621691,-0.015087439678609,0.195707142353058,0.005038201343268,0.125616148114204,-0.041941363364458,0.104047708213329,0.161398649215698,0.113786317408085,-0.154014453291893,-0.150459140539169,0.083978228271008,-0.216859742999077,0.139500886201859));
res += mul(Get(s3,dx,dy), float4x4(-0.021118469536304,0.144508242607117,-0.041798822581768,-0.077691495418549,0.022856265306473,0.030809735879302,0.031263932585716,0.032978713512421,0.092357039451599,-0.235581502318382,-0.019909629598260,-0.027771715074778,-0.052555266767740,-0.176910936832428,-0.147037506103516,0.019195605069399));
res += mul(Get(s4,-dx,-dy), float4x4(0.087177261710167,0.117962829768658,-0.112559713423252,-0.038890771567822,-0.028041796758771,0.104277387261391,-0.078853890299797,0.049750588834286,0.021209605038166,-0.036583114415407,-0.068728655576706,0.067750856280327,-0.000123502861243,-0.049117442220449,0.026539074257016,-0.059192128479481));
res += mul(Get(s4,-dx,0), float4x4(0.015497015789151,0.096499003469944,-0.044500958174467,-0.286882519721985,0.025410475209355,-0.023484215140343,-0.197728276252747,0.066983669996262,-0.021678004413843,0.171710550785065,-0.007897608913481,0.196883574128151,0.133696839213371,0.000081736616266,0.060715407133102,0.042478170245886));
res += mul(Get(s4,-dx,dy), float4x4(-0.058588497340679,0.145935863256454,-0.074697740375996,0.022561630234122,-0.080592527985573,0.075811080634594,-0.059810895472765,-0.278197795152664,0.106470942497253,0.034056685864925,-0.018417267128825,0.094619415700436,-0.049184672534466,0.156801000237465,-0.115878671407700,0.002433782210574));
res += mul(Get(s4,0,-dy), float4x4(-0.174035012722015,0.107875816524029,-0.030906358733773,0.104723125696182,-0.133448719978333,0.296080291271210,0.127453789114952,0.020655488595366,0.088112883269787,0.023448826745152,0.039927933365107,0.121808432042599,-0.103550404310226,0.035055696964264,0.088556289672852,0.003897381015122));
res += mul(Get(s4,0,0), float4x4(-0.110459759831429,-0.231452792882919,-0.113590039312840,0.174847558140755,0.349799752235413,-0.075911000370979,0.224283888936043,0.011414704844356,-0.438500076532364,-0.090480893850327,-0.013878165744245,0.321536630392075,-0.214911118149757,-0.086730293929577,-0.025718640536070,-0.160934448242188));
res += mul(Get(s4,0,dy), float4x4(-0.027449002489448,0.127667337656021,-0.174522832036018,0.077846392989159,0.014264285564423,0.037698190659285,-0.209304332733154,-0.157603308558464,0.024770678952336,0.033052444458008,-0.056277178227901,0.149875715374947,-0.080455325543880,0.126831069588661,-0.093172580003738,-0.036491230130196));
res += mul(Get(s4,dx,-dy), float4x4(0.136704578995705,-0.130889222025871,-0.139379605650902,-0.036409668624401,0.059137821197510,0.107934258878231,0.091985113918781,0.028780471533537,-0.017105519771576,-0.084926247596741,-0.131610214710236,0.066737115383148,-0.130205735564232,-0.070893295109272,-0.130398198962212,-0.058561131358147));
res += mul(Get(s4,dx,0), float4x4(-0.042687304317951,0.004798824898899,0.066108576953411,-0.068857386708260,-0.067778490483761,-0.151764631271362,-0.177217781543732,-0.050110802054405,0.101880922913551,-0.229148656129837,0.214246481657028,-0.005496580153704,0.131394594907761,0.105173721909523,-0.041899785399437,-0.053919330239296));
res += mul(Get(s4,dx,dy), float4x4(0.005440001841635,0.038760200142860,-0.077211208641529,0.074475444853306,-0.004088949412107,0.152704268693924,0.041991017758846,-0.133217751979828,0.030941221863031,0.098996929824352,0.024501550942659,0.066919542849064,0.195552557706833,0.058990303426981,0.165316328406334,-0.057371266186237));
res += mul(Get(s5,-dx,-dy), float4x4(-0.100894756615162,-0.063822776079178,-0.138244807720184,0.110808409750462,0.083154365420341,0.082145206630230,-0.152365654706955,0.007806058507413,-0.069834895431995,0.071889713406563,0.036486610770226,-0.028246227651834,-0.084227338433266,-0.011648377403617,0.045635424554348,0.077559210360050));
res += mul(Get(s5,-dx,0), float4x4(0.058241929858923,0.041836645454168,0.131245389580727,-0.079286165535450,0.042289651930332,0.056689094752073,0.061257712543011,0.030732370913029,-0.230708867311478,-0.076930388808250,0.190743654966354,0.084598213434219,0.059454649686813,-0.090990640223026,0.199498593807220,0.160276517271996));
res += mul(Get(s5,-dx,dy), float4x4(0.172269031405449,-0.033051952719688,0.275784879922867,-0.044023085385561,0.066886924207211,0.044425617903471,0.005469812545925,-0.024091452360153,0.057684287428856,0.122372508049011,0.205422684550285,0.213937565684319,0.118751101195812,0.054485533386469,-0.016897298395634,-0.027418212965131));
res += mul(Get(s5,0,-dy), float4x4(0.177979961037636,-0.433790594339371,0.358465284109116,-0.044716093689203,-0.025697246193886,0.067372523248196,0.065951161086559,0.010439169593155,0.145871549844742,0.099247276782990,0.049851562827826,-0.066271677613258,-0.025488246232271,-0.029308151453733,-0.092093393206596,0.080488406121731));
res += mul(Get(s5,0,0), float4x4(-0.099245600402355,-0.195542603731155,-0.005220906343311,-0.067056640982628,0.297872394323349,-0.073560394346714,0.175981134176254,-0.113738141953945,0.225899636745453,-0.101937107741833,0.059702709317207,0.001561196520925,-0.076233282685280,0.031737983226776,0.057217996567488,0.164284646511078));
res += mul(Get(s5,0,dy), float4x4(-0.173336923122406,-0.133518710732460,-0.075397983193398,-0.001092041260563,0.152696147561073,0.089000903069973,-0.182130917906761,-0.047305341809988,0.132473751902580,0.153647884726524,0.010310580953956,-0.158471211791039,-0.334970384836197,0.265557736158371,-0.054737932980061,0.108096875250340));
res += mul(Get(s5,dx,-dy), float4x4(-0.068268187344074,-0.035471096634865,-0.014646643772721,0.050368674099445,0.167070299386978,0.079261608421803,0.030913351103663,0.049769788980484,-0.070449948310852,0.103292375802994,0.003969647455961,-0.006550387013704,0.006324729882181,-0.087128326296806,0.143894299864769,0.048383239656687));
res += mul(Get(s5,dx,0), float4x4(-0.002122419420630,-0.142142653465271,-0.144914880394936,0.021667905151844,0.000134701898787,0.051283083856106,-0.122181415557861,0.075460180640221,-0.030356641858816,0.049069225788116,0.234021157026291,0.053360559046268,0.078086502850056,0.033676486462355,-0.009883662685752,0.074142903089523));
res += mul(Get(s5,dx,dy), float4x4(0.133718937635422,-0.050533831119537,0.274048894643784,-0.002665127161890,-0.029138013720512,0.240270495414734,-0.186808183789253,-0.000604355707765,-0.071777068078518,-0.197197005152702,0.059858992695808,0.152460694313049,-0.158642604947090,0.098610617220402,-0.109728693962097,0.126263946294785));
res = max(float4(0, 0, 0, 0), res) + float4(-0.054698795080185,0.121736705303192,0.053022395819426,-0.318285554647446) * min(float4(0, 0, 0, 0), res);
return res;
}
