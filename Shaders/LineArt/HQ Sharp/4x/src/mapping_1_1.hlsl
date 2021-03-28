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
float4 res = float4(-0.059823095798492,0.151933416724205,-0.334989517927170,-0.758083522319794);
res += mul(Get(s0,-dx,-dy), float4x4(-0.095547512173653,-0.012446333654225,-0.032783359289169,0.144348621368408,-0.199838921427727,-0.108596928417683,-0.131439879536629,-0.337600827217102,-0.194544479250908,0.272285640239716,-0.048493646085262,0.049901850521564,-0.024357695132494,-0.000368375942344,-0.130654811859131,0.016283828765154));
res += mul(Get(s0,-dx,0), float4x4(0.136631235480309,0.071625575423241,0.278905183076859,0.078125707805157,-0.158757746219635,0.146379888057709,0.073231898248196,-0.125523820519447,-0.139563918113708,-0.263583600521088,0.020929649472237,0.194975882768631,-0.251699268817902,0.065366521477699,-0.271856904029846,-0.378245800733566));
res += mul(Get(s0,-dx,dy), float4x4(0.208084896206856,-0.011888197623193,0.060723245143890,-0.035963103175163,-0.087717160582542,-0.073346465826035,0.212481588125229,-0.268642008304596,-0.116125062108040,-0.189687818288803,-0.166349798440933,0.031041815876961,0.081184744834900,0.004720048513263,0.061743184924126,0.118923567235470));
res += mul(Get(s0,0,-dy), float4x4(0.050046160817146,0.265941053628922,0.036747556179762,-0.239862844347954,-0.015895901247859,-0.395334929227829,-0.003392502199858,-0.078707315027714,-0.102171719074249,0.021644379943609,-0.011800631880760,0.050142310559750,-0.168174147605896,-0.507910311222076,-0.152833938598633,0.133705481886864));
res += mul(Get(s0,0,0), float4x4(-0.203426167368889,-0.398429751396179,-0.012811876833439,0.005736917722970,0.225549817085266,0.188047900795937,0.318907678127289,-0.038585834205151,-0.451225578784943,0.017097817733884,-0.066506020724773,0.182044982910156,0.028912335634232,0.410082042217255,-0.020996021106839,0.049336992204189));
res += mul(Get(s0,0,dy), float4x4(-0.003333305008709,0.038641113787889,0.047567427158356,-0.050158847123384,-0.150504469871521,0.016551923006773,0.269075810909271,-0.333119601011276,-0.119609475135803,-0.122062370181084,-0.146616101264954,-0.001713444478810,0.108733631670475,-0.164702311158180,0.187644436955452,-0.116030260920525));
res += mul(Get(s0,dx,-dy), float4x4(-0.016893187537789,0.000742585980333,0.016139866784215,0.064819544553757,0.033434044569731,-0.133465155959129,-0.053351771086454,-0.051829297095537,-0.109547220170498,0.174745813012123,-0.182392209768295,-0.053511895239353,-0.046326901763678,-0.004739137832075,0.030623611062765,-0.035291217267513));
res += mul(Get(s0,dx,0), float4x4(0.089802078902721,-0.024493712931871,-0.045191317796707,0.082518778741360,-0.147103592753410,-0.049758560955524,0.084130905568600,-0.013858446851373,-0.230153039097786,-0.194040089845657,-0.075347274541855,-0.156306430697441,-0.087497420608997,-0.033625829964876,0.014726810157299,0.123123131692410));
res += mul(Get(s0,dx,dy), float4x4(0.068420700728893,-0.015115329995751,-0.004173113033175,-0.087272465229034,0.024969493970275,-0.008663765154779,0.026538683101535,-0.014467769302428,-0.323845118284225,-0.008737755939364,-0.044850643724203,-0.119811870157719,0.054677069187164,0.094380795955658,-0.060380749404430,-0.096046797931194));
res += mul(Get(s1,-dx,-dy), float4x4(0.039480596780777,-0.028930462896824,0.047703407704830,-0.023912800475955,0.032023597508669,-0.065817296504974,0.094284109771252,-0.117640554904938,0.128351658582687,0.071086227893829,0.066045455634594,0.081447698175907,0.063107475638390,0.065687559545040,-0.026989134028554,0.022337563335896));
res += mul(Get(s1,-dx,0), float4x4(0.142680123448372,-0.006278309039772,-0.159965023398399,-0.248887464404106,0.078994020819664,-0.107901267707348,-0.198005914688110,0.038936529308558,-0.022393183782697,-0.012709571979940,0.152820810675621,0.181403174996376,0.121314853429794,-0.035578019917011,0.044523309916258,-0.005736167542636));
res += mul(Get(s1,-dx,dy), float4x4(-0.086407415568829,-0.022493997588754,-0.023930864408612,0.160875394940376,-0.042695220559835,-0.017457483336329,0.036345910280943,-0.060488857328892,-0.007977968081832,0.045496147125959,0.079012878239155,-0.013195594772696,-0.044284120202065,-0.041856095194817,-0.025243751704693,0.009030949324369));
res += mul(Get(s1,0,-dy), float4x4(-0.015632761642337,-0.198567494750023,0.030008031055331,-0.035817973315716,-0.082419291138649,-0.091330900788307,0.071347616612911,0.081206366419792,0.091898292303085,0.131095126271248,-0.005126790143549,0.100092217326164,-0.308665633201599,-0.064586043357849,0.074983879923820,-0.078049473464489));
res += mul(Get(s1,0,0), float4x4(0.116360001266003,0.286412149667740,0.001482730847783,0.053426440805197,0.015734490007162,0.332720428705215,-0.009513345547020,-0.015028266236186,0.129020377993584,-0.296727716922760,0.169648438692093,0.067241176962852,0.165450721979141,-0.014883088879287,-0.085401773452759,0.024294162169099));
res += mul(Get(s1,0,dy), float4x4(-0.044920019805431,0.061749879270792,-0.102499753236771,-0.019045462831855,-0.157478034496307,-0.114763312041759,-0.080013364553452,0.029191019013524,0.219514861702919,-0.060400884598494,0.138148397207260,-0.062700301408768,0.045519251376390,0.045376561582088,-0.016145952045918,-0.021585531532764));
res += mul(Get(s1,dx,-dy), float4x4(0.022357409819961,0.060154676437378,-0.018289640545845,-0.075239568948746,-0.032800994813442,-0.030599826946855,-0.091489419341087,-0.097204759716988,0.054767455905676,0.018147381022573,-0.050679977983236,0.021323356777430,-0.160051643848419,-0.069470241665840,-0.029795024544001,0.083244912326336));
res += mul(Get(s1,dx,0), float4x4(-0.110297851264477,-0.107756026089191,0.009874753654003,-0.017294846475124,0.013772063888609,0.047707915306091,0.007542899344116,-0.058066908270121,-0.031958315521479,-0.091614544391632,0.115927696228027,-0.013818139210343,0.170327857136726,0.066852733492851,0.050009235739708,-0.018855554983020));
res += mul(Get(s1,dx,dy), float4x4(-0.077300183475018,0.001441277912818,0.023178555071354,0.117609955370426,0.145686507225037,0.056303109973669,0.017001546919346,0.027181265875697,0.131019294261932,-0.006072248332202,-0.023061500862241,-0.093001022934914,-0.010167454369366,0.014142403379083,-0.014955560676754,-0.001332267420366));
res += mul(Get(s2,-dx,-dy), float4x4(-0.013536255806684,-0.048281051218510,-0.157039284706116,-0.010822261683643,-0.009990152902901,-0.005627404898405,0.076756827533245,-0.030717473477125,0.046343591064215,0.005119885783643,-0.047630179673433,0.052349686622620,-0.163701057434082,0.215256541967392,0.083093509078026,0.267972886562347));
res += mul(Get(s2,-dx,0), float4x4(-0.033556733280420,0.155213892459869,0.062616012990475,0.043993081897497,-0.104148514568806,-0.087004780769348,-0.082634136080742,-0.039683785289526,0.181838303804398,-0.000944174360484,-0.009129677899182,0.101727396249771,-0.320646762847900,-0.200165838003159,0.264571636915207,0.381412953138351));
res += mul(Get(s2,-dx,dy), float4x4(-0.100720666348934,-0.050893254578114,0.061158586293459,-0.122190088033676,-0.098635844886303,0.020748523995280,-0.043079216033220,0.038359504193068,0.081888869404793,-0.030437966808677,-0.025967683643103,0.078920833766460,-0.008842588402331,0.002872292418033,0.007448879070580,0.056608360260725));
res += mul(Get(s2,0,-dy), float4x4(0.010817578993738,0.091760374605656,-0.056287370622158,-0.051868069916964,-0.048557538539171,-0.074258059263229,-0.106254376471043,0.006596900057048,-0.153311714529991,0.081578113138676,0.020102011039853,0.006676717661321,-0.112161420285702,0.569445073604584,0.090351231396198,-0.009580031037331));
res += mul(Get(s2,0,0), float4x4(0.031772658228874,-0.157619401812553,0.012477605603635,-0.009584708139300,0.160138279199600,-0.022527132183313,-0.105844043195248,-0.137693405151367,-0.113642245531082,-0.032176159322262,0.028782393783331,-0.020863810554147,-0.349622786045074,-0.506648242473602,-0.063096344470978,-0.212922617793083));
res += mul(Get(s2,0,dy), float4x4(0.033976472914219,-0.026496557518840,-0.097301408648491,0.037475656718016,0.075638160109520,0.081441499292850,-0.077142134308815,0.182914704084396,-0.151583239436150,-0.077724367380142,-0.039870027452707,0.042176038026810,0.020891474559903,-0.155680596828461,-0.031791396439075,-0.015848329290748));
res += mul(Get(s2,dx,-dy), float4x4(0.039274334907532,-0.025029549375176,0.068188190460205,-0.032603390514851,-0.029959108680487,-0.112204901874065,-0.058465816080570,0.032123882323503,0.015285422094166,-0.053931999951601,0.066464520990849,0.026240346953273,-0.001090042293072,0.024989699944854,-0.038547914475203,-0.058009605854750));
res += mul(Get(s2,dx,0), float4x4(0.013585264794528,0.024022439494729,0.007844756357372,0.131689056754112,-0.027074150741100,0.126713886857033,0.032326832413673,-0.003132263664156,0.020826643332839,0.016936814412475,-0.004671099595726,-0.074168361723423,0.094547867774963,-0.105959035456181,-0.037550497800112,0.058751482516527));
res += mul(Get(s2,dx,dy), float4x4(0.060335986316204,0.050495218485594,-0.032532501965761,-0.002814071718603,-0.057025432586670,0.013584731146693,-0.000283163855784,-0.025899648666382,0.057321663945913,0.085727021098137,-0.101670540869236,-0.066700130701065,0.071086712181568,-0.006353827193379,0.113071367144585,0.011023175902665));
res += mul(Get(s3,-dx,-dy), float4x4(-0.021644286811352,-0.025141980499029,-0.040740165859461,0.044552974402905,0.032322056591511,-0.054111558943987,0.075988717377186,-0.089978791773319,-0.166398227214813,0.057950682938099,0.035852298140526,-0.055244702845812,-0.123325735330582,-0.049031686037779,0.094967715442181,-0.121822975575924));
res += mul(Get(s3,-dx,0), float4x4(-0.097531594336033,0.023866541683674,-0.007492970209569,0.121326126158237,-0.125759497284889,-0.082467094063759,-0.084676131606102,-0.163906425237656,0.361809223890305,0.007203309796751,0.109477259218693,0.229685962200165,0.036977238953114,-0.127021953463554,0.108651965856552,0.194453343749046));
res += mul(Get(s3,-dx,dy), float4x4(-0.149525240063667,-0.124070398509502,0.083359606564045,-0.038368757814169,-0.064832158386707,0.071063794195652,0.146644607186317,0.044669497758150,0.047226171940565,0.011224830523133,-0.281699895858765,0.042325094342232,-0.284997522830963,-0.029897704720497,-0.063691087067127,0.033860787749290));
res += mul(Get(s3,0,-dy), float4x4(0.123753450810909,0.292897850275040,-0.030992975458503,-0.006413107272238,-0.033661317080259,-0.115379333496094,0.054438564926386,-0.057350814342499,-0.085272468626499,0.216634944081306,0.068052470684052,0.013579014688730,-0.016235038638115,0.143138438463211,0.112829990684986,-0.020421171560884));
res += mul(Get(s3,0,0), float4x4(0.028599053621292,-0.134214714169502,-0.123427420854568,-0.222874894738197,0.054183743894100,0.325111299753189,-0.048517104238272,0.005255577620119,0.115953408181667,0.063948400318623,0.168134659528732,0.022260574623942,0.314440369606018,0.186514467000961,0.065322607755661,-0.027226723730564));
res += mul(Get(s3,0,dy), float4x4(-0.045819766819477,-0.116891697049141,-0.023177744820714,-0.030171455815434,0.098984085023403,-0.137431442737579,0.018518498167396,-0.010361792519689,-0.166589125990868,-0.240167930722237,-0.045687209814787,-0.110693074762821,-0.159170836210251,-0.152175173163414,-0.083031989634037,-0.014302662573755));
res += mul(Get(s3,dx,-dy), float4x4(-0.075637400150299,-0.069277159869671,-0.055509399622679,-0.037724316120148,-0.000392413203372,0.065546818077564,-0.049603678286076,0.095444276928902,-0.014537080191076,0.011420779861510,0.112377181649208,-0.006567338015884,-0.000995370675810,0.044200900942087,0.045514807105064,0.027057563886046));
res += mul(Get(s3,dx,0), float4x4(0.158718571066856,0.024504991248250,-0.094046860933304,-0.004702842328697,-0.050827823579311,-0.077501706779003,-0.047584343701601,0.028115330263972,0.114844150841236,-0.102745577692986,0.026415510103106,-0.155863210558891,0.221608161926270,-0.016182743012905,0.016009248793125,0.004735487513244));
res += mul(Get(s3,dx,dy), float4x4(0.146639361977577,0.112756267189980,0.077657915651798,0.047794714570045,0.070835687220097,-0.050567045807838,0.050978228449821,0.094149217009544,-0.131957709789276,0.005686105694622,0.022758971899748,0.013494499959052,-0.148070648312569,-0.020529424771667,0.005149443633854,-0.004039443098009));
res += mul(Get(s4,-dx,-dy), float4x4(0.127208366990089,0.002078742953017,-0.034389141947031,0.190295487642288,-0.023779595270753,0.061026718467474,0.084127530455589,0.077158533036709,0.060888547450304,0.051124710589647,-0.246168509125710,0.090368539094925,0.043389786034822,0.006172535475343,-0.173826947808266,0.058095846325159));
res += mul(Get(s4,-dx,0), float4x4(0.126124396920204,0.030413594096899,0.196172013878822,0.193032637238503,0.000123342106235,-0.152773156762123,0.377764940261841,0.407204061746597,0.100920252501965,-0.064783275127411,-0.038888707756996,-0.126406654715538,-0.030983146280050,-0.009379649534822,0.009135685861111,-0.053073290735483));
res += mul(Get(s4,-dx,dy), float4x4(0.067438282072544,0.172331541776657,0.207919836044312,-0.046440377831459,0.130183145403862,-0.004714892711490,-0.030350133776665,-0.021739421412349,0.071120925247669,0.010901987552643,0.058330956846476,0.001894504181109,0.031267177313566,-0.018035557121038,-0.024261264130473,0.072266817092896));
res += mul(Get(s4,0,-dy), float4x4(0.002281609689817,0.137087479233742,0.028854617848992,-0.054544210433960,0.118009962141514,0.387064278125763,0.069979198276997,-0.082929819822311,-0.010544573888183,-0.067134223878384,0.024939151480794,-0.058807857334614,0.014104246161878,0.039053458720446,0.034370902925730,-0.134251698851585));
res += mul(Get(s4,0,0), float4x4(-0.354561030864716,-0.333504676818848,0.170691788196564,0.086168274283409,-0.153414115309715,-0.270116120576859,0.094610556960106,-0.087637990713120,-0.099944248795509,0.109484761953354,-0.040290329605341,0.047956850379705,0.042801361531019,-0.063457690179348,-0.017406396567822,-0.074579313397408));
res += mul(Get(s4,0,dy), float4x4(0.098761931061745,-0.249108046293259,0.139094859361649,-0.107164502143860,0.022126037627459,0.005898621864617,-0.035561662167311,-0.044158119708300,-0.071469686925411,-0.053870961070061,-0.043102540075779,-0.005405163392425,0.113859653472900,0.001812199945562,-0.076360233128071,0.091947942972183));
res += mul(Get(s4,dx,-dy), float4x4(-0.007161831483245,0.125287353992462,-0.051860772073269,-0.098798811435699,0.063147455453873,0.082905121147633,0.036089170724154,0.063066385686398,-0.039739765226841,0.040533956140280,0.106956571340561,-0.011199332773685,0.062475752085447,0.106197729706764,0.129016086459160,0.082484871149063));
res += mul(Get(s4,dx,0), float4x4(-0.135455265641212,-0.195704907178879,0.060438156127930,0.069434590637684,0.146234109997749,-0.055073428899050,-0.009055194444954,0.002095479751006,0.008052377030253,0.004415802657604,-0.046648833900690,0.013526363298297,-0.077290795743465,-0.027475135400891,-0.002099696313962,0.042642712593079));
res += mul(Get(s4,dx,dy), float4x4(0.044617697596550,0.110811740159988,0.038765732198954,-0.007687248755246,0.058423608541489,0.038160290569067,0.060377910733223,0.028477061539888,0.032548964023590,-0.010920264758170,0.044118359684944,-0.024186985567212,-0.086396530270576,-0.024229001253843,-0.005618748720735,-0.142840817570686));
res += mul(Get(s5,-dx,-dy), float4x4(-0.026964079588652,-0.018967177718878,0.047649096697569,0.004685576539487,0.136328384280205,0.093490749597549,0.138095661997795,0.029636105522513,-0.087583288550377,0.120526187121868,0.097829744219780,0.088543511927128,-0.055531375110149,0.047902524471283,-0.100732587277889,0.053443789482117));
res += mul(Get(s5,-dx,0), float4x4(0.057693574577570,-0.026440745219588,0.098356544971466,-0.035456977784634,0.076187491416931,-0.016798624768853,-0.057277113199234,-0.036381859332323,0.003610906889662,-0.017001857981086,0.005955078639090,-0.020023183897138,0.067905157804489,0.033426012843847,-0.047661423683167,-0.134166821837425));
res += mul(Get(s5,-dx,dy), float4x4(-0.049341306090355,-0.023311229422688,0.099034547805786,-0.013287384994328,-0.001009551924653,-0.052103560417891,0.015433514490724,0.090564370155334,0.054225407540798,0.003764935769141,-0.045383080840111,0.059443820267916,-0.111512906849384,-0.053056344389915,0.116866402328014,0.032564580440521));
res += mul(Get(s5,0,-dy), float4x4(-0.111625425517559,0.002693766960874,-0.027955895289779,-0.021968977525830,-0.061011813580990,0.016405891627073,0.103712782263756,0.031602203845978,-0.051788005977869,-0.062188424170017,0.021470949053764,-0.033259917050600,-0.000059029709519,-0.235155940055847,-0.142919197678566,0.069191627204418));
res += mul(Get(s5,0,0), float4x4(-0.030664391815662,0.075800962746143,0.039598047733307,0.131429955363274,-0.008171995170414,0.004640828352422,-0.066432297229767,-0.135131180286407,-0.028385614976287,-0.025844443589449,0.001727937022224,0.081540875136852,0.121878601610661,0.168939396739006,-0.003506372449920,-0.003154074307531));
res += mul(Get(s5,0,dy), float4x4(-0.075817793607712,-0.000643511186354,-0.083159454166889,-0.067250944674015,0.017254503443837,-0.007764125242829,0.140671446919441,0.088166035711765,0.029206277802587,0.025609787553549,0.064042836427689,-0.038219098001719,-0.029954200610518,0.051950842142105,-0.150767207145691,0.012650148011744));
res += mul(Get(s5,dx,-dy), float4x4(-0.026069469749928,-0.053881105035543,-0.047437019646168,-0.093299686908722,0.098715126514435,0.022417362779379,-0.031536046415567,-0.006603404413909,-0.118320800364017,-0.035712528973818,-0.068402670323849,0.027208963409066,0.031992424279451,0.035601880401373,0.042084164917469,-0.134999006986618));
res += mul(Get(s5,dx,0), float4x4(0.161997571587563,0.011499244719744,0.001715032849461,-0.033278927206993,0.040935501456261,-0.061958979815245,-0.025263167917728,-0.047532584518194,-0.035910133272409,-0.014186204411089,0.006855936720967,-0.132728219032288,-0.019749298691750,-0.160827770829201,0.010676597245038,0.186520799994469));
res += mul(Get(s5,dx,dy), float4x4(0.015812650322914,-0.011073334142566,-0.015050170943141,0.025696368888021,-0.118108674883842,0.013196604326367,0.013278872705996,0.060347180813551,0.054576732218266,0.009518571197987,-0.001280721044168,-0.004754400346428,0.019397914409637,0.042415041476488,0.025985920801759,-0.003448692383245));
res = max(float4(0, 0, 0, 0), res) + float4(0.159989461302757,0.182721674442291,0.007547982037067,0.015981741249561) * min(float4(0, 0, 0, 0), res);
return res;
}
