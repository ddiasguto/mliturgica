import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> penitencial = [
  senhorQueViestesSalvar,
  senhorPiedade,
  seEuPossoFalarMeuDeus,
  comoAOvelhaPerdida,
  senhorTendePiedadeEPerdoai,
  tendePiedade
];

Chant senhorQueViestesSalvar = Chant(
    title: 'Sehor, que viestes salvar',
    category: 'Encerramento',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant senhorPiedade = Chant(
    title: 'Senhor, piedade',
    category: 'Encerramento',
    lyrics: [
      verse(),
      const Music(cipher: '60. Senhor piedade, Senhor piedade de nós.'),
      const Music(cipher: 'Cristo piedade, Cristo piedade de nós.'),
      const Music(cipher: 'Senhor piedade, Senhor piedade de nós, piedade.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant seEuPossoFalarMeuDeus = Chant(
    title: 'Se eu posso falar',
    category: 'Encerramento',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant comoAOvelhaPerdida = Chant(
    title: 'Como a ovelha perdida',
    category: 'Encerramento',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant senhorTendePiedadeEPerdoai = Chant(
    title: 'Senhor tende piedade e perdoai as nossas culpas',
    category: 'Encerramento',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant tendePiedade = Chant(
    title: 'Tende piedade',
    category: 'Ato Penitencial',
    lyrics: [
      const Music(cipher: 'Senhor, que oferecestes o vosso perdão'),
      const Music(cipher: 'A Pedro arrependido'),
      verse(),
      const Music(cipher: 'Tende piedade, tende piedade'),
      const Music(cipher: 'Senhor tende piedade de nós'),
      verse(),
      const Music(cipher: 'Cristo, que prometestes o paraíso'),
      const Music(cipher: 'Ao bom ladrão'),
      verse(),
      const Music(cipher: 'Tende piedade, tende piedade'),
      const Music(cipher: 'Oh Cristo tem piedade de nós'),
      verse(),
      const Music(cipher: 'Senhor, que acolheis toda pessoa que confia'),
      const Music(cipher: 'Na vossa misericórdia'),
      verse(),
      const Music(cipher: 'Tende piedade, tende piedade'),
      const Music(cipher: 'Senhor tende piedade de nós'),
      verse(),
    ],
    hasCypher: true,
    ciphers: [
      const Cifra(cipher: 'D9 Em7 Bm7'),
      const Music(cipher: 'SENHOR, QUE OFERECESTES O VOSSO PERDÃO'),
      const Cifra(cipher: 'G D/F# Em7'),
      const Music(cipher: 'A PEDRO ARREPENDIDO'),
      verse(),
      const Cifra(cipher: 'Bm7 G'),
      const Music(cipher: 'TENDE PIEDADE, TENDE PIEDADE,'),
      const Cifra(cipher: 'Em7 A G'),
      const Music(cipher: 'SENHOR TENDE PIEDADE DE NÓS'),
      const Cifra(cipher: 'Bm7 A/C# D'),
      const Music(cipher: 'TENDE PIEDADE, TENDE PIEDADE,'),
      const Cifra(cipher: 'Em7 A Bm7 G'),
      const Music(cipher: 'SENHOR TENDE PIEDADE DE NÓS'),
      verse(),
      const Music(cipher: 'CRISTO, QUE PROMETESTES O PARAÍSO'),
      const Music(cipher: 'AO BOM LADRÃO'),
      verse(),
      const Music(cipher: 'TENDE PIEDADE, TENDE PIEDADE,'),
      const Music(cipher: 'Ó CRISTO TEM PIEDADE DE NÓS (bis)'),
      verse(),
      const Music(cipher: 'SENHOR, QUE ACOLHEIS TODA PESSOA QUE CONFIA'),
      const Music(cipher: 'NA VOSSA MISERICÓRDIA'),
      verse(),
      const Music(cipher: 'TENDE PIEDADE, TENDE PIEDADE,'),
      const Music(cipher: 'SENHOR TENDE PIEDADE DE NÓS (bis)'),
    ]);
