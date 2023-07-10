import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> adoration = [taoSublime, emTuaPresenca, gloriaAJesus, dianteDoRei];

Chant taoSublime = Chant(
    title: 'Tão sublime sacramento',
    category: 'Adoração',
    lyrics: [
      const Music(cipher: 'Tão sublime sacramento'),
      const Music(cipher: 'adoremos neste altar'),
      const Music(cipher: 'pois o antigo testamento'),
      const Music(cipher: 'deu ao novo seu lugar.'),
      const Music(cipher: 'Venha a fé por suplemento os'),
      const Music(cipher: 'sentidos completar.'),
      verse(),
      const Music(cipher: 'Ao Eterno Pai cantemos'),
      const Music(cipher: 'e a Jesus o Salvador.'),
      const Music(cipher: 'Ao Espirito exaltemos,'),
      const Music(cipher: 'na trindade eterno amor.'),
      const Music(cipher: 'Ao Deus Uno e Trino demos'),
      const Music(cipher: 'a alegria do louvor. Amém! (bis)'),
    ],
    hasCypher: false);

Chant emTuaPresenca = Chant(
    title: 'Em tua presença',
    category: 'Adoração',
    lyrics: [
      const Music(cipher: 'É teu este momento de adoração'),
      const Music(cipher: 'Não tenho nem palavras para me expressar'),
      const Music(cipher: 'No brilho dessa luz que vem do teu olhar'),
      const Music(cipher: 'Encontro meu abrigo, meu lugar'),
      verse(),
      const Music(cipher: 'E quando estamos juntos entre nós estás'),
      const Music(cipher: 'Passando em nosso meio a nos abençoar'),
      const Music(cipher: 'E tocas com ternura com a tua mão'),
      const Music(cipher: 'A cada um que abre o coração'),
      verse(),
      const Refrao(cipher: 'Minhas mãos se elevam, minha voz te louva'),
      const Refrao(cipher: 'O meu ser se alegra'),
      const Refrao(cipher: 'Quando estou em tua presença, Senhor'),
    ],
    hasCypher: false);

Chant gloriaAJesus = Chant(
    title: 'Glória a Jesus na hóstia santa',
    category: 'Adoração',
    lyrics: [
      const Music(cipher: 'Glória a Jesus na hóstia santa,'),
      const Music(cipher: 'que se consagra sobre o altar'),
      const Music(cipher: 'E aos nossos olhos se levanta'),
      const Music(cipher: 'para o Brasil abençoar.'),
      verse(),
      const Refrao(cipher: 'Que o Santo Sacramento,'),
      const Refrao(cipher: 'que é o próprio Cristo Jesus,'),
      const Refrao(cipher: 'Seja adorado e seja amado'),
      const Refrao(cipher: 'nesta terra de Santa Cruz. (bis)'),
      verse(),
      const Music(cipher: 'Glória a Jesus,'),
      const Music(cipher: 'prisioneiro do nosso amor, a esperar.'),
      const Music(
          cipher: 'Lá no sacrário, o dia inteiro, que o vamos todos procurar.'),
      verse(),
      const Refrao(cipher: 'Que o Santo Sacramento,'),
      const Refrao(cipher: 'que é o próprio Cristo Jesus,'),
      const Refrao(cipher: 'Seja adorado e seja amado'),
      const Refrao(cipher: 'nesta terra de Santa Cruz. (bis)'),
      verse(),
      const Music(cipher: 'Glória a Jesus, Deus escondido,'),
      const Music(cipher: 'que vindo a nós na comunhão,'),
      const Music(cipher: 'Purificado, enriquecido,'),
      const Music(cipher: 'deixa-nos sempre o coração'),
      verse(),
      const Refrao(cipher: 'Que o Santo Sacramento,'),
      const Refrao(cipher: 'que é o próprio Cristo Jesus,'),
      const Refrao(cipher: 'Seja adorado e seja amado'),
      const Refrao(cipher: 'nesta terra de Santa Cruz. (bis)'),
      verse(),
    ],
    hasCypher: false);

Chant dianteDoRei = Chant(
    title: 'Diante do Rei',
    category: 'Adoração',
    lyrics: [
      const Music(cipher: 'Vem, Senhor Jesus!'),
      const Music(cipher: 'O coração já bate forte ao te ver,'),
      const Music(cipher: 'tua graça hoje eu quero receber,'),
      const Music(cipher: 'sem a benção do Senhor não sei viver.'),
      verse(),
      const Music(cipher: 'Vem, Senhor Jesus!'),
      const Music(cipher: 'Olhar o povo ao teu redor me faz lembrar,'),
      const Music(cipher: 'a multidão lá no caminho a ti esperar.'),
      const Music(cipher: 'Vem, o Santo de Israel, passa também,'),
      const Music(cipher: 'neste lugar.'),
      verse(),
      const Music(cipher: 'É o Rei!'),
      const Music(cipher: 'A nossa frente está!'),
      const Music(cipher: 'É feliz quem o adorar,'),
      const Music(cipher: 'é Jesus o nosso mestre, e Rei!'),
      const Music(cipher: 'Bem aqui, tão perto se deixa encontrar,'),
      const Music(cipher: 'diante do Rei dos reis'),
      const Music(cipher: 'todo joelho se dobrará. (bis)'),
    ],
    hasCypher: false);
