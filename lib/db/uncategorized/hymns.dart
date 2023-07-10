import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> hymns = [hinoDeLouvor, gloriaADeusNosAltosCeus, hinoDeLouvor2];

Chant gloriaADeusNosAltosCeus = Chant(
    title: 'Glória a Deus nos altos céus',
    category: '',
    lyrics: [
      const Music(
          cipher:
              '76. Glória a Deus nos altos céus, paz na terra aos seus amados. A vós louvam Rei celeste os que foram libertados.'),
      const Music(cipher: ''),
      const Music(
          cipher: 'REF: Glória a Deus, lános céus e paz aos seus amém!'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '3.Senhor nosso Jesus Cristo unigênito do pai. Vós de Deus cordeiro Santo nossas'),
      const Music(cipher: 'culpas perdoai.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '2.Deus e pai nós vos louvamos, adoramos bendizemos. Damos glória ao vosso'),
      const Music(cipher: 'nome, vossos dons agradecemos.'),
      const Music(cipher: ''),
      const Music(cipher: ''),
      const Music(
          cipher:
              '4.Vós que estais junto do pai, como o nosso intercessor. Acolhei nossos pedidos, atendei nosso clamor.'),
      const Music(cipher: ''),
      const Music(cipher: ''),
      const Music(
          cipher:
              '5.Vos somente sois o Santo, o altissimo o Senhor. Com o Espírito Divino de Deus paino esplendor.'),
    ],
    hasCypher: false);

Chant hinoDeLouvor = Chant(
    title: 'Hino de Louvor',
    category: '',
    lyrics: [
      const Music(
          cipher:
              ' Glória a Deus nas Alturas e Paz na Terra aos homens por Ele amados.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              'Senhor Deus, Rei dos Céus, Deus Pai, Todo-poderoso, nós Vos louvamos, nós Vos bendizemos, nós Vos adoramos, nós Vos glorificamos nós vos damos graças por Vossa imensa glória.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              'Senhor Jesus Cristo, Filho Unigênito, Senhor Deus, Cordeiro de Deus, Filho de Deus Pai, Vós que tirais o pecado do mundo, tende piedade de nós.'),
      const Music(
          cipher:
              'Vós que tirais o pecado do mundo, acolhei a nossa súplica Vós que estais à direita do Pai, tende piedade de nós. Só Vós sois o Santo.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              'Só Vós o Senhor. Só Vós o Altíssimo, Jesus Cristo, com o Espírito Santo, na glória de Deus Pai. Amém! (4x)'),
    ],
    hasCypher: false);

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
              '1. Senhor Deus rei dos céus, Deus pai onipotente, vos louvamos bem dizemos, adoramos. Nós vos glorificamos e vos damos graças, por vossa Gloria..'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '2.Jesus Cristo, senhor Deus, filho único do pai. Cordeiro de Deus que tirais o pecado do mundo. Tende Piedade. Vos que estais a direita do pai, Tende piedade. Cordeiro de Deus que tirais o pecado do mundo...Tende piedade e acolhei as nossas suplicas.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '3.Só vos, sois o santo o senhor, o altíssimo só vos. Jesus Cristo, com Espirito e o Pai.'),
    ],
    hasCypher: false);
