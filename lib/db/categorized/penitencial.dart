import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> penitencial = [
  senhorQueViestesSalvar,
  senhorPiedade,
  seEuPossoFalarMeuDeus,
  comoAOvelhaPerdida,
  senhorTendePiedadeEPerdoai
];

Chant senhorQueViestesSalvar = Chant(
    title: 'Sehor, que viestes salvar',
    category: 'Encerramento',
    ciphers: [
      const Music(
          cipher: '1. Senhor que vieste salvar os corações arrependidos'),
      verse(),
      const Music(cipher: 'Piedade. piedade. Piedade de nós. (bis)'),
      verse(),
      const Music(
          cipher: '2.Ó Cristo que vieste chamar os pecadores humilhados.'),
      verse(),
      const Music(
          cipher:
              '3.Senhor que intercedei por nós junto a Deus pai que nos perdoa.'),
    ]);

Chant senhorPiedade =
    Chant(title: 'Senhor, piedade', category: 'Encerramento', ciphers: [
  verse(),
  const Music(cipher: '60. Senhor piedade, Senhor piedade de nós.'),
  const Music(cipher: 'Cristo piedade, Cristo piedade de nós.'),
  const Music(cipher: 'Senhor piedade, Senhor piedade de nós, piedade.'),
]);

Chant seEuPossoFalarMeuDeus =
    Chant(title: 'Se eu posso falar', category: 'Encerramento', ciphers: [
  verse(),
  const Music(cipher: '61 Se eu posso falar meu Deus,'),
  const Music(cipher: 'Vim abrir o meu coração.'),
  const Music(cipher: 'De joelhos aos vossos pés,'),
  const Music(cipher: 'Vir aqui te pedir perdão.'),
  const Music(cipher: 'Se que eu que fui errado,'),
  const Music(cipher: 'Perdoe os meus pecados.'),
  const Music(cipher: 'Perdão senhor perdão'),
  const Music(cipher: 'Senhor tende piedade de nós.'),
  const Music(cipher: 'Perdão senhor perdão.'),
  const Music(cipher: 'Sei que eu que fui errado,'),
  const Music(cipher: 'Perdoe os meus pecados.'),
  const Music(cipher: 'Perdão senhor perdão'),
  const Music(cipher: 'Cristo tende piedade de nós.'),
  const Music(cipher: 'Perdão senhor perdão.'),
  const Music(cipher: 'Perdão senhor perdão,'),
  const Music(cipher: 'senhor tende de piedade'),
  const Music(cipher: 'de nós perdão senhor perdão.'),
]);

Chant comoAOvelhaPerdida =
    Chant(title: 'Como a ovelha perdida', category: 'Encerramento', ciphers: [
  verse(),
  const Music(cipher: '62. Como a ovelha perdida,'),
  const Music(cipher: 'pelo pecado ferida. ,'),
  const Music(cipher: 'Eu te suplico perdão,'),
  const Music(cipher: 'ó bom pastor.'),
  const Music(cipher: 'Kyrie Eleison (3x)'),
  verse(),
  const Music(cipher: '2.Como o ladrão perdoado,'),
  const Music(cipher: 'encontro o paraíso ao teu lado.'),
  const Music(cipher: 'Lembra-te de mim, pecador por tua cruz.'),
  const Music(cipher: 'Christe Eleison (3x)'),
  verse(),
  const Music(cipher: '3.Como a pecadora caída,'),
  const Music(cipher: 'derramo aos teus pés minha vida'),
  const Music(cipher: 'vê as lagrimas do meu coração e salva-me!'),
  const Music(cipher: 'Kyrie Eleison (3x)'),
]);

Chant senhorTendePiedadeEPerdoai = Chant(
    title: 'Senhor tende piedade e perdoai as nossas culpas',
    category: 'Encerramento',
    ciphers: [
      const Music(cipher: 'Senhor tende piedade'),
      const Music(cipher: 'e perdoai a nossa culpa,'),
      const Music(cipher: 'e perdoai a nossa culpa.'),
      verse(),
      const Music(cipher: 'Porque nós somos vosso povo,'),
      const Music(cipher: 'que vem pedir vosso perdão.'),
      verse(),
      const Music(cipher: '2.Cristo tende piedade'),
      const Music(cipher: 'e perdoai a nossa culpa,'),
      const Music(cipher: 'e perdoai a nossa culpa.'),
      verse(),
      const Music(cipher: 'Porque nós somos vosso povo,'),
      const Music(cipher: 'que vem pedir vosso perdão.'),
      verse(),
      const Music(cipher: '3.Senhor tende piedade'),
      const Music(cipher: 'e perdoai a nossa culpa,'),
      const Music(cipher: 'e perdoai a nossa culpa.'),
      verse(),
      const Music(cipher: 'Porque nós somos vosso povo,'),
      const Music(cipher: 'que vem pedir vosso perdão.'),
    ]);
