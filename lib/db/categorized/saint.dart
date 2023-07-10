import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> saint = [santo, santoE, saanto, oSenhorESanto];

Chant santoE = Chant(
    title: 'Santo, Santo É',
    category: 'Entrada',
    lyrics: [
      const Music(
          cipher:
              'Santo, Santo é ; Santo, Santo é Deus do universo o Senhor Javé. (bis)'),
      const Music(
          cipher:
              'O céu e a terra o proclamam glorioso hosana, hosana nas alturas.'),
      const Music(
          cipher:
              'Bendito o que vem em nome do Senhor Hosana, hosana nas alturas, hosana, hosana ao rei. (bis)'),
    ],
    hasCypher: false,
    ciphers: []);

Chant saanto = Chant(
    title: 'Saaanto, Saaanto',
    category: 'Entrada',
    lyrics: [
      const Music(cipher: 'Saanto, Saanto, Saanto é o Senhor. (bis)'),
      const Music(cipher: ''),
      const Music(cipher: '1-Senhor Deus do universo, o céu'),
      const Music(
          cipher: 'e terra proclamam vossa glória. Hosana nas alturas.'),
      const Music(cipher: ''),
      const Music(cipher: ' 2-Bendito o que vem em'),
      const Music(cipher: 'nome do Senhor. Hosana nas alturas'),
    ],
    hasCypher: false,
    ciphers: []);

Chant oSenhorESanto = Chant(
    title: 'O Senhor é Santo',
    category: 'Entrada',
    lyrics: [
      const Music(
          cipher:
              'O Senhor é Santo ele está aqui, O Senhor é Santo eu posso sentir.'),
      const Music(
          cipher:
              '(Bis). 1.0 céu e a terra / proclamam vossa Glória, Hosana nas alturas, Hosana ao Senhor.'),
      const Music(cipher: ''),
      const Music(
          cipher:
              '2.Bendito o que vem/ em nome do Senhor, hosana nas alturas / Hosana ao'),
      const Music(cipher: 'Senhor.'),
    ],
    hasCypher: false,
    ciphers: []);

Chant santo = Chant(
    title: 'Santo',
    category: 'Entrada',
    lyrics: [
      const Music(
          cipher:
              'Santo, santo, santo, Senhor Deus do universo  o céu e a terra proclamam a vossa glória'),
      const Music(cipher: ''),
      const Music(cipher: 'Hosana nas alturas, hosana (bis)'),
      const Music(cipher: ''),
      const Music(cipher: 'Bendito aquele que vem, em nome do Senhor (bis)'),
    ],
    hasCypher: false,
    ciphers: []);
