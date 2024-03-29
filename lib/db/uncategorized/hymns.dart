import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> hymns = [hinoDeLouvor, gloriaADeusNosAltosCeus, hinoDeLouvor2];

Chant gloriaADeusNosAltosCeus = Chant(
    title: 'Glória a Deus nos altos céus',
    category: '',
    lyrics: [
      const Music(cipher: 'Glória A Deus Nos Altos Céus'),
      const Music(cipher: 'Paz Na Terra A Seus Amados!'),
      const Music(cipher: 'A Vós Louvam, Rei Celeste'),
      const Music(cipher: 'Os Que Foram Libertados'),
      const Music(cipher: 'Glória A Deus Lá Nos Céus'),
      const Music(cipher: 'E Paz Aos Seus Amém'),
      verse(),
      const Music(cipher: 'Deus e Pai Nós Vos Louvamos'),
      const Music(cipher: 'Adoramos, Bendizemos'),
      const Music(cipher: 'Damos Glória Ao Vosso Nome'),
      const Music(cipher: 'Vossos Dons Agradecemos'),
      verse(),
      const Music(cipher: 'Senhor Nosso Jesus Cristo'),
      const Music(cipher: 'Unigênito Do Pai'),
      const Music(cipher: 'Vós, De Deus Cordeiro Santo'),
      const Music(cipher: 'Nossas Culpas Perdoai'),
      verse(),
      const Music(cipher: 'Vós Que Estais Junto Do Pai'),
      const Music(cipher: 'Como Nosso Intercessor'),
      const Music(cipher: 'Acolhei Nossos Pedidos'),
      const Music(cipher: 'Atendei Nosso Clamor'),
      verse(),
      const Music(cipher: 'Vós Somente Sois O Santo'),
      const Music(cipher: 'O Altíssimo Senhor'),
      const Music(cipher: 'Com O Espírito Divino'),
      const Music(cipher: 'De Deus Pai No Esplendor'),
      verse(),
      const Music(cipher: 'Glória A Deus Lá Nos Céus'),
      const Music(cipher: 'E Paz Aos Seus Amém (2x)'),
      const Music(cipher: 'Amém!'),
    ],
    hasCypher: true,
    ciphers: [
      const Music(cipher: 'Tom: E'),
      verse(),
      const Cifra(cipher: ' F       Bb              F'),
      const Music(cipher: 'Glória a Deus nos altos céus,'),
      const Cifra(cipher: '         G#º'),
      const Music(cipher: 'paz na terra a seus'),
      const Cifra(cipher: 'Gm'),
      const Music(cipher: 'amados'),
      const Cifra(cipher: 'Bb       C          Am'),
      const Music(cipher: 'A vós louvam rei celeste,'),
      const Cifra(cipher: 'Dm       Gm  G7     C'),
      const Music(cipher: 'os que foram libertados!'),
      verse(),
      const Cifra(cipher: ' F        F7     Bb     Bbm'),
      const Music(cipher: 'Glória a Deus, lá nos céus,'),
      const Cifra(cipher: '     F      C  Bb   F'),
      const Music(cipher: 'e paz aos seus amém!'),
      verse(),
      const Cifra(cipher: 'E      B7              E'),
      const Music(cipher: 'Deus e Pai nós vos louvamos,'),
      const Cifra(cipher: '    G#m   C#m    F#m'),
      const Music(cipher: 'adoramos bendizemos'),
      const Cifra(cipher: ' Am     B7             C#m'),
      const Music(cipher: 'Damos glória ao vosso nome,'),
      const Cifra(cipher: '          F#7        A  B7'),
      const Music(cipher: 'vossos dons agradecemos!'),
      verse(),
      const Music(cipher: 'Glória a Deus, lá nos céus,'),
      const Music(cipher: 'e paz na terra aos seus!'),
      verse(),
      const Music(cipher: 'Senhor nosso Jesus Cristo,'),
      const Music(cipher: 'unigênito do Pai'),
      verse(),
      const Music(cipher: 'Vós de Deus cordeiro santo,'),
      const Music(cipher: 'nossas culpas perdoai!'),
      verse(),
      const Music(cipher: 'Glória a Deus, lá nos céus,'),
      const Music(cipher: 'e paz na terra aos seus!'),
      verse(),
      const Music(cipher: 'Vós, que estais junto do Pai,'),
      const Music(cipher: 'como nosso intercessor'),
      const Music(cipher: 'Acolhei nossos pedidos,'),
      const Music(cipher: 'atendei nosso clamor!'),
      verse(),
      const Music(cipher: 'Glória a Deus,'),
      const Music(cipher: 'lá nos céus,'),
      const Music(cipher: 'e paz na terra aos seus!'),
      verse(),
      const Music(cipher: 'Vós somente sois o santo,'),
      const Music(cipher: 'o altíssimo o Senhor'),
      const Music(cipher: 'Com espirito divino'),
      const Music(cipher: 'de Deus Pai no esplendoor!'),
    ]);

Chant hinoDeLouvor = Chant(
    title: 'Hino de Louvor',
    category: '',
    lyrics: [
      const Music(cipher: 'Glória A Deus Nas Alturas'),
      const Music(cipher: 'E Paz Na Terra Aos Homens Por Ele Amados.'),
      const Music(cipher: 'Senhor Deus, Rei Dos Céus, Deus Pai Todo Poderoso:'),
      verse(),
      const Music(cipher: 'Nós Vos Louvamos,'),
      const Music(cipher: 'Nós Vos Bendizemos,'),
      const Music(cipher: 'Nós Vos Adoramos,'),
      const Music(cipher: 'Nós Vos Glorificamos,'),
      const Music(cipher: 'Nós Vos Damos Graças, Por Vossa Imensa Glória.'),
      verse(),
      const Music(cipher: 'Senhor Jesus Cristo, Filho Unigênito,'),
      const Music(cipher: 'Senhor Deus, Cordeiro De Deus, Filho De Deus Pai:'),
      const Music(
          cipher: 'Vós Que Tirais O Pecado Do Mundo, Tende Piedade De Nós;'),
      const Music(
          cipher: 'Vós Que Tirais O Pecado Do Mundo, Acolhei A Nossa Súplica;'),
      const Music(
          cipher: 'Vós Que Estais À Direita Do Pai, Tende Piedade De Nós.'),
      verse(),
      const Music(cipher: 'Só Vós Sois O Santo; Só Vós, O Senhor;'),
      const Music(cipher: 'Só Vós, O Altíssimo, Jesus Cristo;'),
      const Music(cipher: 'Com O Espírito Santo,'),
      const Music(cipher: 'Na Glória De Deus Pai. Amém! (2x)'),
    ],
    hasCypher: true,
    ciphers: [
      const Music(cipher: 'Tom: Dm'),
      verse(),
      const Cifra(cipher: 'Dm'),
      const Music(cipher: 'Glória a Deus nas alturas'),
      const Cifra(cipher: '    C               A              Dm   A7'),
      const Music(cipher: 'E paz na terra aos homens por Ele amados'),
      verse(),
      const Cifra(cipher: 'Dm                          C'),
      const Music(cipher: 'Senhor Deus, Rei dos céus, Deus Pai todo-poderoso'),
      const Cifra(cipher: ' F'),
      const Music(cipher: 'Nós Vos louvamos, Vos bendizemos'),
      const Cifra(cipher: ' Gm          A7'),
      const Music(cipher: 'Vos adoramos, Vos glorificamos'),
      const Cifra(cipher: ' Bb      A7   Dm       Gm             A7  Dm  A7'),
      const Music(cipher: 'Nós vos damos graças, por vossa imensa glória'),
      verse(),
      const Cifra(cipher: ' Dm'),
      const Music(cipher: 'Senhor Jesus Cristo, Filho Unigénito'),
      const Cifra(cipher: ' C                             F             A'),
      const Music(cipher: 'Senhor Deus, Cordeiro de Deus, Filho de Deus Pai'),
      const Cifra(
          cipher: 'Gm                 A7             Bb              A'),
      const Music(
          cipher: 'Vós que tirais o pecado do mundo, tende piedade de nós'),
      const Cifra(cipher: 'Gm                 A7                Bb       C'),
      const Music(cipher: 'Vós que tirais o pecado do mundo, acolhei a nossa'),
      const Cifra(cipher: '  F'),
      const Music(cipher: 'súplica'),
      const Cifra(
          cipher: 'Gm                A7             Bb       A       Dm'),
      const Music(
          cipher: 'Vós que estais à direita do pai, tende piedade de nós'),
      const Cifra(cipher: 'A7'),
      verse(),
      const Cifra(cipher: ' Dm'),
      const Music(cipher: 'Só Vós sois o Santo; só Vós, o Senhor'),
      const Cifra(cipher: ' C'),
      const Music(cipher: 'Só Vós, o Altíssimo, Jesus Cristo'),
      const Cifra(cipher: 'F'),
      const Music(cipher: 'Com o Espírito Santo'),
      const Cifra(cipher: '  Gm             A7       Bb     A7    Dm    A7'),
      const Music(cipher: 'Na glória de Deus Pai. na glória de Deus Pai'),
      verse(),
      const Cifra(cipher: '( Dm  C  F  A  Dm )'),
      verse(),
      const Music(cipher: 'Amém, Amém, Amém, Amém, Amém!'),
    ]);

Chant hinoDeLouvor2 = Chant(
    title: 'Hino de Louvor 2',
    category: '',
    lyrics: [
      const Music(
          cipher:
              'Glória, gloria a Deus nas alturas....ôô....gloria, e a nós a sua Paz.(Bis)'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '1. Senhor Deus rei dos céus, Deus pai onipotente, vos louvamos bendizemos, adoramos. Nós vos glorificamos e vos damos graças, por vossa Gloria..'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '2.Jesus Cristo, senhor Deus, filho único do pai. Cordeiro de Deus que tirais o pecado do mundo. Tende Piedade. Vos que estais a direita do pai, Tende piedade. Cordeiro de Deus que tirais o pecado do mundo...Tende piedade e acolhei as nossas suplicas.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '3.Só vos, sois o santo o senhor, o altíssimo só vos. Jesus Cristo, com Espirito e o Pai.'),
    ],
    hasCypher: false,
    ciphers: []);
