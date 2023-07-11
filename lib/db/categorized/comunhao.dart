import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> comunion = [
  comoEsLindo,
  pelosPradosECampinas,
  conhecoUmCoracao,
  paoDaVida,
  cantarABelezaDaVida,
  sacramentoDaComunhao,
  vouCantarTeuAmor,
  quandoTeuPaiRevelou,
  aBarca,
  cancaoDoEspirito,
  tomaiComei,
  vejamEuAndeiPelasVilas,
  desamarremAsSandalias,
  vemEuMostrarei
];

Chant pelosPradosECampinas = Chant(
  title: 'Pelos prados e campinas',
  category: 'Comunhão',
  lyrics: [
    const Music(cipher: 'Pelos prados e campinas verdejantes eu vou'),
    const Music(cipher: 'É o Senhor que me leva a descansar'),
    const Music(cipher: 'Junto às fontes de águas puras repousantes eu vou'),
    const Music(cipher: 'Minhas forças o Senhor vai animar'),
    verse(),
    Music(cipher: 'Tu és, Senhor, o meu pastor'),
    const Music(cipher: 'Por isso nada em minha vida faltará'),
    const Music(cipher: 'Tu és, Senhor, o meu pastor'),
    const Music(cipher: 'Por isso nada em minha vida faltará'),
    verse(),
    Music(cipher: "Nos caminhos mais seguros junto d'Ele eu vou"),
    const Music(cipher: 'E pra sempre o Seu nome eu honrarei'),
    const Music(cipher: 'Se eu encontro mil abismos nos caminhos eu vou'),
    const Music(cipher: 'Segurança sempre tenho em suas mãos'),
    verse(),
    Music(cipher: 'Ao banquete em sua casa muito alegre eu vou'),
    const Music(cipher: 'Um lugar em Sua mesa me preparou'),
    const Music(cipher: 'Ele unge minha fronte e me faz ser feliz'),
    const Music(cipher: 'E transborda a minha taça em Seu amor'),
    verse(),
    Music(cipher: 'Bem a frente do inimigo,confiante eu vou'),
    const Music(cipher: 'Tenho sempre o Senhor junto de mim'),
    const Music(cipher: 'Seu cajado me protege e eu jamais temerei'),
    const Music(cipher: 'Sempre junto do Senhor eu estarei!'),
    verse(),
    Music(cipher: 'Com alegria e esperança caminhando eu vou'),
    const Music(cipher: 'Minha vida está sempre em suas mãos'),
    const Music(cipher: 'E na casa do Senhor eu irei habitar'),
    const Music(cipher: 'E este canto para sempre irei cantar'),
  ],
  hasCypher: true,
  ciphers: [
    const Cifra(cipher: 'C Am F Fm C'),
    const Music(cipher: 'PELOS PRADOS E CAMPINAS VERDEJANTES EU VOU'),
    const Cifra(cipher: 'Em F G'),
    const Music(cipher: 'É O SENHOR QUE ME LEVA A DESCANSAR'),
    const Cifra(cipher: 'C Am F Fm C'),
    const Music(cipher: 'JUNTO ÀS FONTES DE ÁGUAS PURAS REPOUSANTES EU VOU'),
    const Cifra(cipher: 'Em F G'),
    const Music(cipher: 'MINHAS FORÇAS O SENHOR VAI ANIMAR'),
    const Cifra(cipher: 'F G C G/B Am Am/G'),
    verse(),
    const Music(cipher: 'TU ÉS, SENHOR, O MEU PASTOR'),
    const Cifra(cipher: 'F G C C7'),
    const Music(cipher: 'POR ISSO NADA EM MINHA VIDA FALTARÁ'),
    const Cifra(cipher: 'F G C G/B Am Am/G'),
    const Music(cipher: 'TU ÉS, SENHOR, O MEU PASTOR'),
    const Cifra(cipher: 'F G C G'),
    const Music(cipher: 'POR ISSO NADA EM MINHA VIDA FALTARÁ'),
    verse(),
    const Music(cipher: 'NOS CAMINHOS MAIS SEGUROS JUNTO D\'ELE EU VOU'),
    const Music(cipher: 'E PRA SEMPRE O SEU NOME EU HONRAREI'),
    const Music(cipher: 'SE EU ENCONTRO MIL ABISMOS NOS CAMINHOS EU VOU'),
    const Music(cipher: 'SEGURANÇA SEMPRE TENHO EM SUAS MÃOS'),
    verse(),
    const Music(cipher: 'AO BANQUETE EM SUA CASA MUITO ALEGRE EU VOU'),
    const Music(cipher: 'UM LUGAR EM SUA MESA ME PREPAROU'),
    const Music(cipher: 'ELE UNGE MINHA FRONTE E ME FAZ SER FELIZ'),
    const Music(cipher: 'E TRANSBORDA A MINHA TAÇA EM SEU AMOR'),
    verse(),
    const Music(cipher: 'COM ALEGRIA E ESPERANÇA CAMINHANDO EU VOU'),
    const Music(cipher: 'MINHA VIDA ESTÁ SEMPRE EM SUAS MÃOS'),
    const Music(cipher: 'E NA CASA DO SENHOR EU IREI HABITAR'),
    const Music(cipher: 'E ESTE CANTO PARA SEMPRE IREI CANTAR'),
  ],
);

Chant sacramentoDaComunhao = Chant(
    title: 'Sacramento da comunhão',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'Senhor, quando te vejo no sacramento da comunhão'),
      const Music(cipher: 'Sinto o céu se abrir e uma luz a me atingir'),
      const Music(cipher: 'Esfriando minha cabeça e esquentando meu coração'),
      verse(),
      const Music(
          cipher: 'Senhor, graças e louvores sejam dadas a todo momento'),
      const Music(cipher: 'Quero te louvar na dor, na alegria e no sofrimento'),
      const Music(cipher: 'E se em meio à tribulação, eu me esquecer de ti'),
      const Music(cipher: 'Ilumina minhas trevas com Tua luz'),
      verse(),
      const Music(cipher: 'Jesus, fonte de misericórdia que jorra do templo'),
      const Music(cipher: 'Jesus, o Filho da Rainha'),
      const Music(cipher: 'Jesus, rosto divino do homem'),
      const Music(cipher: 'Jesus, rosto humano de Deus'),
      verse(),
      const Music(cipher: 'Chego muitas vezes em Tua casa, meu Senhor'),
      const Music(cipher: 'Triste, abatido, precisando de amor'),
      const Music(cipher: 'Mas depois da comunhão Tua casa é meu coração'),
      const Music(cipher: 'Então sinto o céu dentro de mim'),
      verse(),
      const Music(
          cipher: 'Não comungo porque mereço, isso eu sei, oh meu Senhor'),
      const Music(cipher: 'Comungo pois preciso de ti'),
      const Music(cipher: 'Quando faltei à missa, eu fugia de mim e de Ti'),
      const Music(cipher: 'Mas agora eu voltei, por favor aceita-me'),
      verse(),
      const Music(cipher: 'Jesus, fonte de misericórdia que jorra do templo'),
      const Music(cipher: 'Jesus, o Filho da Rainha'),
      const Music(cipher: 'Jesus, rosto divino do homem'),
      const Music(cipher: 'Jesus, rosto humano de Deus'),
    ],
    hasCypher: false,
    ciphers: []);

Chant cantarABelezaDaVida = Chant(
    title: 'Cantar a beleza da vida',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'D A Bm F#'),
      const Music(
          cipher: '1. CANTAR A BELEZA DA VIDA, PRESENTE DO AMOR SEM IGUAL:'),
      const Music(cipher: 'G A7 D E7 A'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, VEM LIVRAR-NOS DO MAL!'),
      const Music(cipher: 'D A Bm F#m'),
      const Music(
          cipher: 'VEM DAR-NOS TEU FILHO, SENHOR, SUSTENTO NO PÃO E NO VINHO,'),
      const Music(cipher: 'G A7 D Em A D'),
      const Music(
          cipher: 'E A FORÇA DO ESPÍRITO SANTO, UNINDO TEU POVO A CAMINHO!'),
      const Music(
          cipher: '2. FALAR DO TEU FILHO ÀS NAÇÕES, VIVENDO COMO ELE VIVEU:'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, VEM CUIDAR DO QUE É TEU!'),
      const Music(
          cipher: '3. VIVER O PERDÃO SEM MEDIDA, SERVIR SEM JAMAIS CONDENAR:'),
      const Music(
          cipher: 'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, VEM CONOSCO FICAR!'),
      const Music(
          cipher:
              '4. ERGUER OS QUE ESTÃO HUMILHADOS, DOAR-SE AOS PEQUENOS, AOS'),
      const Music(cipher: 'POBRES:'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, NOSSAS FORÇAS REDOBRE!'),
      const Music(
          cipher:
              '5. BUSCAR A VERDADE, A JUSTIÇA, NAS TREVAS BRILHAR COMO A LUZ:'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, NOSSOS PASSOS CONDUZ!'),
      const Music(
          cipher:
              '6. ANDAR OS CAMINHOS DO MUNDO, PLANTANDO O TEU REINO DE PAZ:'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, NOSSOS PASSOS CONDUZ!'),
      const Music(
          cipher:
              '7. FAZER DESTE MUNDO UM SÓ POVO FRATERNO, A SERVIÇO DA VIDA:'),
      const Music(
          cipher:
              'MISSÃO DO TEU POVO ESCOLHIDO, SENHOR, VEM NUTRIR NOSSA LIDA!'),
    ],
    hasCypher: false,
    ciphers: []);

Chant conhecoUmCoracao = Chant(
    title: 'Conheço um coração',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'A C#m Bm7 E7'),
      const Music(cipher: 'CONHEÇO UM CORAÇÃO TÃO MANSO, HUMILDE E SERENO.'),
      const Music(cipher: 'A C#m Bm7 E7'),
      const Music(
          cipher: 'QUE LOUVA AO PAI POR REVELAR SEU NOME AOS PEQUENOS.'),
      const Music(cipher: 'D E7 C#m C#7 F#m'),
      const Music(cipher: 'QUE TEM O DOM DE AMAR, QUE SABE PERDOAR,'),
      const Music(cipher: 'Bm7 D E E7'),
      const Music(cipher: 'E DEU A VIDA PARA NOS SALVAR!'),
      const Music(cipher: 'D E A E/G# F#m'),
      const Music(cipher: 'JESUS, MANDA TEU ESPÍRITO,'),
      const Music(cipher: 'D Bm Esus4 E7'),
      const Music(cipher: 'PARA TRANSFORMAR MEU CORAÇÃO'),
      const Music(cipher: 'D E A E/G# F#m'),
      const Music(cipher: 'JESUS, MANDA TEU ESPÍRITO,'),
      const Music(cipher: 'D Bm E A'),
      const Music(cipher: 'PARA TRANSFORMAR MEU CORAÇÃO'),
      const Music(cipher: 'ÀS VEZES NO MEU PEITO BATE UM CORAÇÃO DE PEDRA.'),
      const Music(
          cipher: 'MAGOADO, FRIO, SEM VIDA, AQUI DENTRO ELE ME APERTA.'),
      const Music(cipher: 'NÃO QUER SABER DE AMAR, NEM SABE PERDOAR,'),
      const Music(cipher: 'QUER TUDO E NÃO SABE PARTILHAR.'),
      const Music(cipher: 'LAVA, PURIFICA E RESTAURA-ME DE NOVO.'),
      const Music(cipher: 'SERÁS O NOSSO DEUS E NÓS SEREMOS O SEU POVO.'),
      const Music(cipher: 'DERRAMA SOBRE NÓS, A ÁGUA DO AMOR,'),
      const Music(cipher: 'O ESPÍRITO DE DEUS NOSSO SENHOR!'),
    ],
    hasCypher: false,
    ciphers: []);

Chant paoDaVida = Chant(
    title: 'Pão da vida',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'E B/E A/E E'),
      const Music(cipher: 'NA COMUNHÃO, JESUS SE DÁ NO PÃO,'),
      const Music(cipher: 'A/E E D B7'),
      const Music(cipher: 'O CORDEIRO IMOLADO É REFEIÇÃO.'),
      const Music(cipher: 'E B/E A/E E'),
      const Music(cipher: 'NOSSO ALIMENTO DE AMOR E SALVAÇÃO,'),
      const Music(cipher: 'A/E E D B7'),
      const Music(cipher: 'EM TORNO DESTE ALTAR SOMOS IRMÃOS.'),
      const Music(cipher: 'E A/E E A/E'),
      const Music(cipher: 'O PÃO DA VIDA ÉS TU JESUS, O PÃO DO CÉU.'),
      const Music(cipher: 'E A/E E'),
      const Music(cipher: 'O CAMINHO, A VERDADE, VIA DE AMOR'),
      const Music(cipher: 'B7 E'),
      const Music(cipher: 'DOM DE DEUS, NOSSO REDENTOR.'),
      const Music(cipher: 'TOMA E COME, ISTO É O MEU CORPO'),
      const Music(cipher: 'QUE DO TRIGO SE FAZ PÃO, É REFEIÇÃO.'),
      const Music(cipher: 'NA EUCARISITA, O VINHO SE TORNA SANGUE'),
      const Music(cipher: 'VERDADEIRA BEBIDA, NOSSA ALEGRIA.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant comoEsLindo = Chant(
    title: 'Como és lindo',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'D A/C# Bm Bm/A'),
      const Music(cipher: 'QUE BOM, SENHOR, IR AO TEU ENCONTRO,'),
      const Music(cipher: 'G A D A/C#'),
      const Music(cipher: 'PODER CHEGAR E ADENTRAR À TUA CASA'),
      const Music(cipher: 'Bm F#m G A9'),
      const Music(cipher: 'SENTAR-ME CONTIGO E PARTILHAR DA MESMA MESA.'),
      const Music(cipher: 'D A/C# Bm F#m G A9 D'),
      const Music(
          cipher:
              'TE OLHAR, TE TOCAR E TE DIZER: MEU DEUS, COMO ÉS LINDO! (2X)'),
      const Music(cipher: 'Ó MEU SENHOR SEI QUE NÃO SOU NADA:'),
      const Music(cipher: 'SEM MERECER, FIZESTE EM MIM TUA MORADA,'),
      const Music(cipher: 'MAS AO RECEBER-TE, PERFEITA COMUNHÃO SE CRIA'),
      const Music(
          cipher:
              'SOU EM TI, ÉS EM MIM. MINH\'ALMA DIZ: MEU DEUS, COMO ÉS LINDO! (2X)'),
    ],
    hasCypher: false,
    ciphers: []);

Chant vouCantarTeuAmor = Chant(
    title: 'Vou cantar teu amor',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'E G#m A B'),
      const Music(cipher: 'VOU CANTAR TEU AMOR, SER NO MUNDO UM FAROL'),
      const Music(cipher: 'G#m C#m F#m B7 E (B7)'),
      const Music(
          cipher: 'EIS-ME AQUI SENHOR, VEM ABRIR AS JANELAS DO MEU CORAÇÃO'),
      const Music(cipher: 'E G#m A B'),
      const Music(cipher: 'E ENTÃO FALAREI, IMITANDO TUA VOZ'),
      const Music(cipher: 'G#m C#m F#m B7 E (B7)'),
      const Music(
          cipher: 'CREIO EM TI SENHOR, NAS PEGADAS DEIXADAS POR TI VOU ANDAR'),
      const Music(cipher: 'E G#m F#m B7'),
      const Music(
          cipher: 'VOU FALAR DO TEU CORAÇÃO, COM TERNURA NAS MÃOS E NA VOZ'),
      const Music(cipher: 'G#m C#m'),
      const Music(cipher: 'PROCLAMAR QUE A VIDA É BEM MAIS'),
      const Music(cipher: 'F#m B B7'),
      const Music(cipher: 'DO QUE AQUILO QUE O MUNDO ENSINA E CANTAR'),
      const Music(cipher: 'E B7 C#m G#m'),
      const Music(
          cipher:
              'CANTAR UM CANTO ENSINADO POR DEUS, COM POESIA ENSINAR NOSSA FÉ'),
      const Music(cipher: 'A E F#m B7'),
      const Music(
          cipher:
              'PLANTAR O CHÃO, CULTIVAR O AMOR, COMO POETAS QUE QUEREM SONHAR'),
      const Music(cipher: 'E B7 C#m G#m'),
      const Music(
          cipher:
              'PRA REALIZAR O QUE O MESTRE ENSINOU, VIEMOS CEAR, RESTAURAR O CORAÇÃO'),
      const Music(cipher: 'A E F#m B7 E B7'),
      const Music(cipher: 'FONTE DE VIDA NO ALTAR A BROTAR, A NOS ALIMENTAR'),
      const Music(cipher: 'CELEBRAR MEU VIVER PRA NO MUNDO SER MAIS'),
      const Music(
          cipher: 'FAZ DE MIM SENHOR, APRENDIZ DA VERDADE, JUSTIÇA E DA PAZ'),
      const Music(cipher: 'COMUNGAR TEU VIVER NESTE VINHO, NESTE PÃO'),
      const Music(
          cipher: 'QUERO SER SENHOR, NOVO HOMEM NASCIDO DO TEU CORAÇÃO'),
      const Music(
          cipher: 'VOU FALAR DO TEU CORAÇÃO, COM TERNURA NAS MÃOS E NA VOZ'),
      const Music(cipher: 'PROCLAMAR QUE A VIDA É BEM MAIS'),
      const Music(cipher: 'DO QUE AQUILO QUE O MUNDO ENSINA E CANTAR '),
    ],
    hasCypher: false,
    ciphers: []);

Chant quandoTeuPaiRevelou = Chant(
    title: 'Quando teu pai revelou',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'Quando teu Pai revelou o segredo a Maria'),
      const Music(cipher: 'Que, pela força do Espírito, conceberia'),
      const Music(cipher: 'A Ti, Jesus, Ela não hesitou logo em responder'),
      const Music(cipher: 'Faça-se em mim, pobre serva o que a Deus aprouver!'),
      const Music(cipher: ''),
      const Music(cipher: 'Hoje imitando a Maria que é imagem da Igreja'),
      const Music(cipher: 'Nossa família outra vez Te recebe e deseja'),
      const Music(
          cipher: 'Cheia de fé, de esperança e de amor, dizer sim a Deus'),
      const Music(cipher: 'Eis aqui os teus servos, Senhor!'),
      const Music(cipher: ''),
      const Music(cipher: 'Que a graça de Deus cresça em nós sem cessar'),
      const Music(cipher: 'E de Ti, nosso Pai, venha o Espírito Santo de amor'),
      const Music(cipher: 'Pra gerar e formar Cristo em nós'),
      const Music(cipher: ''),
      const Music(cipher: 'Por um decreto do Pai Ela foi escolhida'),
      const Music(cipher: 'Para gerar-te, ó Senhor, que és origem da vida'),
      const Music(cipher: 'Cheia do Espírito Santo no corpo e no coração'),
      const Music(cipher: 'Foi quem melhor cooperou com a Tua missão'),
      const Music(cipher: ''),
      const Music(cipher: 'Na comunhão recebemos o Espírito Santo'),
      const Music(cipher: 'E vem contigo Jesus, o teu Pai sacrossanto'),
      const Music(cipher: 'Vamos agora ajudar-te no plano da salvação'),
      const Music(cipher: 'Eis aqui os teus servos, Senhor!'),
      const Music(cipher: ''),
      const Music(cipher: 'Que a graça de Deus cresça em nós sem cessar'),
      const Music(cipher: 'E de Ti, nosso Pai, venha o Espírito Santo de amor'),
      const Music(cipher: 'Pra gerar e formar Cristo em nós'),
      const Music(cipher: ''),
      const Music(cipher: 'No coração de Maria, no olhar doce e terno'),
      const Music(cipher: 'Sempre tiveste na vida um apoio materno'),
      const Music(cipher: 'Desde Belém, Nazaré, só viveu para Te servir'),
      const Music(cipher: 'Quando morrias na cruz Tua mãe estava ali'),
      const Music(cipher: ''),
      const Music(cipher: 'Mãe amorosa da Igreja quer ser nosso auxílio'),
      const Music(cipher: 'Reproduzir nos cristãos as feições de Teu Filho'),
      const Music(cipher: 'Como Ela fez em Caná, nos convida a Te obedecer'),
      const Music(cipher: 'Eis aqui os Teus servos, Senhor!'),
      const Music(cipher: ''),
      const Music(cipher: 'Que a graça de Deus cresça em nós sem cessar'),
      const Music(cipher: 'E de Ti, nosso Pai, venha o Espírito Santo de amor'),
      const Music(cipher: 'Pra gerar e formar Cristo em nós'),
    ],
    hasCypher: false,
    ciphers: []);

Chant vejamEuAndeiPelasVilas = Chant(
    title: 'Vejam, eu andei pelas vilas',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'C Am Dm'),
      const Music(cipher: 'VEJAM: EU ANDEI PELAS VILAS, APONTEI AS SAÍDAS'),
      const Music(cipher: 'G E Am'),
      const Music(
          cipher: 'COMO O PAI ME PEDIU. PORTAS EU CHEGUEI PARA ABRI-LAS,'),
      const Music(cipher: 'Dm G C Gm'),
      const Music(cipher: 'EU CUREI AS FERIDAS COMO NUNCA SE VIU.'),
      const Music(cipher: 'C7 F G/F Em Am'),
      const Music(cipher: 'POR ONDE FORMOS TAMBÉM NÓS QUE BRILHE A TUA LUZ'),
      const Music(cipher: 'Dm G F C'),
      const Music(cipher: 'FALA, SENHOR, NA NOSSA VOZ, EM NOSSA VIDA'),
      const Music(cipher: 'F G/F Em Am'),
      const Music(cipher: 'NOSSO CAMINHO ENTÃO CONDUZ, QUEREMOS SER ASSIM'),
      const Music(cipher: 'Dm G C G'),
      const Music(cipher: 'QUE O PÃO DA VIDA NOS REVIGORE EM NOSSO "SIM"'),
      const Music(cipher: 'VEJAM: FIZ DE NOVO A LEITURA DAS RAÍZES DA VIDA'),
      const Music(cipher: 'QUE MEU PAI VÊ MELHOR. LUZES ACENDI COM BRANDURA,'),
      const Music(cipher: 'PARA A OVELHA PERDIDA NÃO MEDI MEU SUOR.'),
      const Music(cipher: 'VEJAM: PROCUREI BEM AQUELES QUE NINGUÉM PROCURAVA'),
      const Music(
          cipher: 'E FALEI DE MEU PAI. POBRES, A ESPERANÇA QUE É DELES'),
      const Music(cipher: 'EU NÃO QUIS VER ESCRAVA DE UM PODER QUE RETRAI.'),
      const Music(cipher: 'VEJAM: SEMEEI CONSCIÊNCIA NOS CAMINHOS DO POVO,'),
      const Music(cipher: 'POIS O PAI QUER ASSIM. TRAMAS, ENFRENTEI'),
      const Music(
          cipher: 'PREPOTÊNCIA DOS QUE TEMEM O NOVO, QUAL PERIGO SEM FIM.'),
      const Music(cipher: 'VEJAM: EU QUEBREI AS ALGEMAS, LEVANTEI OS CAÍDOS,'),
      const Music(
          cipher: 'DO MEU PAI FUI AS MÃOS. LAÇOS, RECUSEI OS ESQUEMAS,'),
      const Music(cipher: 'EU NÃO QUERO OPRIMIDOS, QUERO UM POVO DE IRMÃOS.'),
      const Music(
          cipher: 'VEJAM: PROCUREI SER BEM CLARO; O MEU REINO É DIVERSO,'),
      const Music(cipher: 'NÃO PRECISA DE REI. TRONOS, OUTRO JEITO MAIS RARO'),
      const Music(cipher: 'DE JUNTAR OS DISPERSOS O MEU PAI TEM POR LEI.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant tomaiComei = Chant(
    title: 'Tomai, comei',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'E C#m B'),
      const Music(cipher: '1. EU QUIS COMER ESTA CEIA AGORA,'),
      const Music(cipher: 'E C#m B'),
      const Music(cipher: 'POIS VOU MORRER JÁ CHEGOU MINHA HORA.'),
      const Music(cipher: 'E E7 A'),
      const Music(cipher: 'TOMAI, COMEI É MEU CORPO E MEU SANGUE QUE DOU!'),
      const Music(cipher: 'Am E C#m F#m B7 E B7'),
      const Music(
          cipher:
              'VIVEI NO AMOR! EU VOU PREPARAR, A CEIA NA CASA DO PAI. (2X)'),
      const Music(cipher: '2. COMEI O PÃO; É MEU CORPO IMOLADO'),
      const Music(cipher: 'POR VÓS, PERDÃO PARA TODO PECADO'),
      const Music(cipher: '3. E VAI NASCER DO MEU SANGUE A ESPERANÇA,'),
      const Music(cipher: 'O AMOR, A PAZ; UMA NOVA ALIANÇA.'),
      const Music(cipher: '4. EU VOU PARTIR DEIXO O MEU TESTAMENTO.'),
      const Music(cipher: 'VIVEI NO AMOR! EIS O MEU MANDAMENTO.'),
      const Music(cipher: '5. DE DEUS VIRÁ O ESPÍRITO SANTO,'),
      const Music(cipher: 'QUE VOU MANDAR PRA ENXUGAR VOSSO PRANTO.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant cancaoDoEspirito = Chant(
    title: 'Canção do espírito',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: 'C7 F G Em Am'),
      const Music(
          cipher:
              '1. BUSCA EM JESUS A PLENITUDE DO SEU ESPÍRITO E DO SEU AMOR.'),
      const Music(cipher: 'Dm G7 C C7'),
      const Music(cipher: 'DEIXA QUE ELE TE ENVOLVA EM SEU CALOR.'),
      const Music(cipher: 'F G Em Am'),
      const Music(
          cipher: 'DEIXA JESUS CUIDAR DAS COISAS QUE ATORMENTAM O TEU VIVER.'),
      const Music(cipher: 'Dm G7 C C7'),
      const Music(cipher: 'COM A LUZ ELE VIRÁ SOBRE O TEU SER.'),
      const Music(cipher: 'F G Em Am'),
      const Music(cipher: 'Ó, Ó, Ó CRISTO, MEU CRISTO'),
      const Music(cipher: 'Dm G7 C C7'),
      const Music(cipher: 'VEM EM MIM MORAR (2X)'),
      const Music(
          cipher:
              '2. DEIXA JESUS ENCHER TUA VIDA COM SEU ESPÍRITO E SEU AMOR.'),
      const Music(cipher: 'ENCHER TEU CORAÇÃO DE GOZO E DE LOUVOR.'),
      const Music(cipher: 'DEIXA JESUS CUIDAR DAS COISAS QUE TE FAZEM INFELIZ'),
      const Music(cipher: 'E ANDARÁS DO MODO COMO A BÍBLIA DIZ.'),
      const Music(
          cipher: '3. Ó VEM CANTAR COM ALEGRIA ENCHER DE PAZ TEU CORAÇÃO.'),
      const Music(cipher: 'ERGUE O BRAÇO E LOUVA A DEUS EM ORAÇÃO.'),
      const Music(cipher: 'A ELE DÁ TUAS TRISTEZAS, DESILUSÕES E TUA CRUZ,'),
      const Music(cipher: 'ENTÃO TERÁS A VIDA EM NOME DE JESUS.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant aBarca = Chant(
    title: 'A Barca',
    category: 'Comunhão',
    lyrics: [
      const Cifra(cipher: 'C G/B Am Am/G'),
      const Music(cipher: 'TU, TE ABEIRASTE DA PRAIA.'),
      const Cifra(cipher: 'F Dm G'),
      const Music(cipher: 'NÃO BUSCASTE NEM SÁBIOS NEM RICOS,'),
      const Cifra(cipher: 'C G/B Am'),
      const Music(cipher: 'SOMENTE QUERES QUE EU TE SIGA!'),
      const Cifra(cipher: 'F G Em Am'),
      const Music(cipher: 'SENHOR, TU ME OLHASTE NOS OLHOS,'),
      const Music(cipher: 'Dm G C C7'),
      const Music(cipher: 'A SORRIR, PRONUNCIASTES MEU NOME,'),
      const Music(cipher: 'F G Em A'),
      const Music(cipher: 'LÁ NA PRAIA, EU LARGUEI O MEU BARCO,'),
      const Music(cipher: 'Dm G C'),
      const Music(cipher: 'JUNTO A TI BUSCAREI OUTRO MAR...'),
      const Music(cipher: 'TU SABES BEM QUE EM MEU BARCO'),
      const Music(cipher: 'EU NÃO TENHO NEM OURO NEM ESPADAS'),
      const Music(cipher: 'SOMENTE REDES E O MEU TRABALHO'),
      const Music(cipher: 'TU, MINHAS MÃOS SOLICITAS,'),
      const Music(cipher: 'MEU CANSAÇO QUE A OUTROS DESCANSE,'),
      const Music(cipher: 'AMOR QUE ALMEJA SEGUIR AMANDO.'),
      const Music(cipher: 'TU, PESCADOR DE OUTROS LAGOS,'),
      const Music(cipher: 'ÂNSIA ETERNA DE ALMAS QUE ESPERAM,'),
      const Music(cipher: 'BONDOSO AMIGO QUE ASSIM ME CHAMAS'),
    ],
    hasCypher: false,
    ciphers: []);

Chant desamarremAsSandalias = Chant(
    title: 'Desamarrem as Sandálias',
    category: 'Comunhão',
    lyrics: [
      const Music(cipher: '1. Ao recebermos, Senhor, Tua presença sagrada'),
      const Music(cipher: 'Pra confirmar teu amor, faz de nós sua morada'),
      const Music(cipher: 'Surge um sincero louvor, brota a semente plantada'),
      const Music(
          cipher: 'Faz-nos seguir teu caminho, sempre trilhar tua estrada!'),
      verse(),
      const Refrao(cipher: 'Desamarrem as sandálias e descansem'),
      const Refrao(cipher: 'Este chão é terra santa, irmãos meus'),
      const Refrao(cipher: 'Venham, orem, comam, cantem'),
      const Refrao(cipher: 'Venham todos e renovem a esperança no Senhor'),
      verse(),
      const Music(cipher: '2. O filho de deus com o Pai e o Espírito Santo'),
      const Music(
          cipher: 'Nesta trindade um só ser que pede a nós sermos santos'),
      const Music(cipher: 'Dai-nos, Jesus, teu poder de se doar sem medida'),
      const Music(
          cipher: 'Deixa que compreendamos que este é o sentido da vida!'),
      verse(),
      const Music(cipher: '3. Ao virmos te receber, nós te pedimos, ó Cristo'),
      const Music(
          cipher: 'Faz vibrar nosso ser, indo ao encontro ao pai santo'),
      const Music(cipher: 'Sem descuidar dos irmãos, mil faces da tua face,'),
      const Music(cipher: 'Faze que o coração sinta a força da caridade!'),
    ],
    hasCypher: true,
    ciphers: [
      const Cifra(cipher: 'E A E F#m'),
      const Music(cipher: 'AO RECEBERMOS, SENHOR, TUA PRESENÇA SAGRADA,'),
      const Cifra(cipher: 'B7 A B7 E'),
      const Music(cipher: 'PRA CONFIRMAR TEU AMOR, FAZ DE NÓS TUA MORADA.'),
      const Cifra(cipher: 'E A E F#m'),
      const Music(cipher: 'SURGE UM SINCERO LOUVOR, BROTA A SEMENTE PLANTADA.'),
      const Cifra(cipher: 'B7 A B7 E B7'),
      const Music(
          cipher: 'FAZ-NOS SEGUIR TEU CAMINHO, SEMPRE TRILHAR TUA ESTRADA!'),
      verse(),
      const Cifra(cipher: 'E B7'),
      const Music(cipher: 'DESAMARREM AS SANDÁLIAS E DESCANSEM.'),
      const Cifra(cipher: 'A B7 E B7'),
      const Music(cipher: 'ESTE CHÃO É TERRA SANTA, IRMÃOS MEUS!'),
      const Cifra(cipher: 'E E7 A Am'),
      const Music(cipher: 'VENHAM, OREM, COMAM, CANTEM, VENHAM TODOS!'),
      const Cifra(cipher: 'E C#m F#m E'),
      const Music(cipher: 'E RENOVEM A ESPERANÇA NO SENHOR!'),
      verse(),
      const Music(cipher: 'O FILHO DE DEUS COM O PAI E O ESPÍRITO SANTO,'),
      const Music(
          cipher: 'NESTA TRIDADE UM SÓ SER QUE PEDE A NÓS SEMOS SANTOS.'),
      const Music(cipher: 'DÁ-NOS JESUS TEU PODER DE SE DOAR SEM MEDIDAS.'),
      const Music(
          cipher: 'DEIXA QUE COMPREENDAMOS QUE ESTE É O SENTIDO DA VIDA!'),
      verse(),
      const Music(cipher: 'AO VIRMOS TE RECEBER, NÓS TE PEDIMOS, Ó CRISTO:'),
      const Music(
          cipher: 'FAZE VIBRAR NOSSO SER INDO AO ENCONTRO AO PAI SANTO,'),
      const Music(cipher: 'SEM DESCUIDAR DOS IRMÃOS MIL FACES DA TUA FACE.'),
      const Music(cipher: 'FAZE QUE O CORAÇÃO SINTA A FORÇA DA CARIDADE!'),
    ]);

Chant vemEuMostrarei = Chant(
    title: 'Vem, eu mostrarei',
    category: 'Comunhão',
    lyrics: [
      const Music(
          cipher: 'Vem, e eu mostrarei que o meu caminho te leva ao Pai'),
      const Music(cipher: 'Guiarei os passos teus e junto a ti hei de seguir'),
      const Music(cipher: 'Sim, eu irei e saberei como chegar ao fim'),
      const Music(cipher: 'De onde vim, aonde vou, por onde irás, irei também'),
      verse(),
      const Music(cipher: 'Lá, lá, lá...'),
      verse(),
      const Music(cipher: 'Vem, eu te direi o que ainda estás a procurar'),
      const Music(cipher: 'A verdade é como o sol e invadirá teu coração'),
      const Music(cipher: 'Sim, eu irei e aprenderei minha razão de ser'),
      const Music(
          cipher: 'Eu creio em ti que crês em mim e a tua luz verei a luz'),
      verse(),
      const Music(cipher: 'Vem, e eu te farei da minha vida participar'),
      const Music(cipher: 'Viverás em mim aqui, viver em mim é o bem maior'),
      const Music(cipher: 'Sim, eu irei e viverei a vida inteira assim'),
      const Music(
          cipher: 'Eternidade é na verdade, o amor vivendo sempre em nós'),
      verse(),
      const Music(
          cipher: 'Vem, que a terra espera quem possa e queira realizar'),
      const Music(
          cipher: 'Com amor, a construção de um mundo novo muito melhor!'),
      const Music(cipher: 'Sim, eu irei e levarei teu nome aos meus irmãos'),
      const Music(cipher: 'Iremos nós e o teu amor vai construir enfim a paz!'),
    ],
    hasCypher: true,
    ciphers: [
      const Cifra(cipher: 'E C#m A B7'),
      const Music(
          cipher: 'VEM, E EU MOSTRAREI QUE O MEU CAMINHO TE LEVA AO PAI'),
      const Cifra(cipher: 'E C#m A B'),
      const Music(cipher: 'GUIAREI OS PASSOS TEUS E JUNTO A TI HEI DE SEGUIR'),
      const Cifra(cipher: 'E C#m F#m B'),
      const Music(cipher: 'SIM, EU IREI E SABEREI COMO CHEGAR AO FIM'),
      const Cifra(cipher: 'E C#m F#m B E C#m F#m B'),
      const Music(cipher: 'DE ONDE VIM, AONDE VOU, POR ONDE IRÁS, IREI TAMBÉM'),
      verse(),
      const Music(cipher: 'VEM, EU TE DIREI O QUE AINDA ESTÁS A PROCURAR'),
      const Music(cipher: 'A VERDADE É COMO O SOL E INVADIRÁ TEU CORAÇÃO'),
      const Music(cipher: 'SIM, EU IREI E APRENDEREI MINHA RAZÃO DE SER'),
      const Music(
          cipher: 'EU CREIO EM TI QUE CRÊS EM MIM E A TUA LUZ VEREI A LUZ'),
      verse(),
      const Music(cipher: 'VEM, E EU TE FAREI DA MINHA VIDA PARTICIPAR'),
      const Music(cipher: 'VIVERÁS EM MIM AQUI, VIVER EM MIM É O BEM MAIOR'),
      const Music(cipher: 'SIM, EU IREI E VIVEREI A VIDA INTEIRA ASSIM'),
      const Music(
          cipher: 'ETERNIDADE É NA VERDADE, O AMOR VIVENDO SEMPRE EM NÓS'),
      verse(),
      const Music(
          cipher: 'VEM, QUE A TERRA ESPERA QUEM POSSA E QUEIRA REALIZAR'),
      const Music(
          cipher: 'COM AMOR A CONSTRUÇÃO DE UM MUNDO NOVO MUITO MELHOR.'),
      const Music(cipher: 'SIM, EU IREI E LEVAREI TEU NOME AOS MEUS IRMÃOS.'),
      const Music(
          cipher: 'IREMOS NÓS E O TEU AMOR VAI CONSTRUIR, ENFIM A PAZ.'),
    ]);
