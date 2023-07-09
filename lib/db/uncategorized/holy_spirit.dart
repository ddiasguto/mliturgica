import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> holy_spirit = [
  divinoEspiritoSanto,
  osDevotos,
  euNavegarei,
  aNosDescei
];

Chant divinoEspiritoSanto = Chant(
    title: 'Divino Espirito Santo',
    category: 'Louvor ao Santo Espírito',
    ciphers: [
      const Music(cipher: '1-Divino Espírito Santo, Divino consolador.'),
      const Music(cipher: 'Consolai as nossas almas, quando deste mundo for.'),
      verse(),
      const Music(cipher: '2-0 sol entra pelo vidro,'),
      const Music(cipher: 'o luar pela vidraça.'),
      const Music(cipher: 'O divino eternamente'),
      const Music(cipher: 'está cobrindo-nos de graça.'),
      verse(),
      const Music(cipher: '3-0 Divino pede esmola,'),
      const Music(cipher: 'mas não é por carecer.'),
      const Music(cipher: 'Ele pede é pra saber'),
      const Music(cipher: 'quem seus devotos querem ser.'),
      verse(),
      const Music(cipher: '4-Quem sua esmola hoje der, que seja de coração.'),
      const Music(cipher: 'Neste mundo ganha o reino e no outro a salvação.'),
      verse(),
      const Music(cipher: '5- Divino Espírito Santo, Divino consolador.'),
      const Music(cipher: 'Abraçai esta cidade no fogo do teu amor.'),
      verse(),
      const Music(cipher: '6-O Divino pede esmola,'),
      const Music(cipher: 'mas não é por precisão.'),
      const Music(cipher: 'É pra ver se o povo tem'),
      const Music(cipher: 'verdadeira devoção.'),
    ]);

Chant osDevotos = Chant(
    title: 'Os devotos do Divino',
    category: 'Louvor ao Santo Espírito',
    ciphers: [
      const Music(cipher: '1. Os devotos do divino'),
      const Music(cipher: 'vão abrir sua morada'),
      const Music(cipher: 'pra bandeira do menino'),
      const Music(cipher: 'ser bem vinda, ser louvada.'),
      verse(),
      const Music(cipher: '2. Deus vos salve este devoto'),
      const Music(cipher: 'pela esmola em vosso nome,'),
      const Music(cipher: 'dando água a quem, tem sede,'),
      const Music(cipher: 'dando pão a quem tem fome.'),
      verse(),
      const Music(cipher: '3. A bandeira acredita'),
      const Music(cipher: 'que a semente seja tanta'),
      const Music(cipher: 'que essa mesa seja farta,'),
      const Music(cipher: 'que essa casa seja santa.'),
      verse(),
      const Music(cipher: '4. Que o perdão seja sagrado,'),
      const Music(cipher: 'que a fé seja infinita,'),
      const Music(cipher: 'que o homem seja livre,'),
      const Music(cipher: 'que a justiça sobreviva.'),
      verse(),
      const Music(cipher: '5. Assim como os três reis magos'),
      const Music(cipher: 'que seguiram a estrela guia,'),
      const Music(cipher: 'a bandeira segue em frente'),
      const Music(cipher: 'atrás de melhores dias.'),
      verse(),
      const Music(cipher: '6. No estandarte está escrito'),
      const Music(cipher: 'que ele voltará de novo'),
      const Music(cipher: 'e o Rei será bendito,'),
      const Music(cipher: 'Ele nascerá do povo'),
    ]);

Chant euNavegarei =
    Chant(title: 'Eu navegarei', category: 'Encerramento', ciphers: [
  const Music(cipher: 'Eu navegarei no oceano do Espírito'),
  const Music(cipher: 'e ali adorarei ao Deus de meu amor.(2x)'),
  verse(),
  const Music(cipher: 'Espirito, Espirito,'),
  const Music(cipher: 'que desce como fogo,'),
  const Music(cipher: 'vem como em Pentecostes'),
  const Music(cipher: 'e enche-me de novo! (bis)'),
]);

Chant aNosDescei =
    Chant(title: 'A nós descei Divina Luz', category: 'Encerramento', ciphers: [
  const Music(cipher: 'A nós descei, divina luz! (bis)'),
  const Music(
      cipher: 'Em nossas almas acendei. O amor, o amor de Jesus! (bis)'),
  verse(),
  const Music(cipher: '1. Vós sois a alma da igreja,'),
  const Music(cipher: 'vós sois a vida, sois o amor,'),
  const Music(cipher: 'vós sois a graça benfazeja'),
  const Music(cipher: 'que nos irmana no Senhor. (bis)'),
  verse(),
  const Music(cipher: '2. Divino Espírito descei.'),
  const Music(cipher: 'Os corações vinde inflamar,'),
  const Music(cipher: 'e nossas almas preparar'),
  const Music(cipher: 'para o que deus nos quer falar. (bis)'),
]);
