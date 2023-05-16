import 'package:diasguto/templates/cipher.dart';
import 'package:flutter/widgets.dart';

class AtiMeuDeus extends StatelessWidget {
  const AtiMeuDeus({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicTitle(title: 'A TI MEU DEUS'),
        Cifra(cipher: '        F#m'),
        Music(cipher: 'A Ti, meu Deus elevo meu coração'),
        Cifra(cipher: '        E'),
        Music(cipher: 'Elevo as minhas mãos'),
        Cifra(cipher: '        E'),
        Music(cipher: 'Meu olhar, minha voz'),
        Music(cipher: 'A Ti, meu Deus'),
        Music(cipher: 'Eu quero oferecer'),
        Music(cipher: 'Meus passos e meu viver'),
        Music(cipher: 'Meus caminhos, meu sofrer'),
        Music(cipher: 'A Tua ternura, Senhor, vem me abraçar'),
        Music(cipher: 'E a Tua bondade infinita me perdoar'),
        Music(cipher: 'Vou ser o Teu seguidor'),
        Music(cipher: 'E Te dar o meu coração'),
        Music(cipher: 'Eu quero sentir o calor, de Tuas mãos'),
      ],
    );
  }
}

class MinhaVidaTemSentido extends StatelessWidget {
  const MinhaVidaTemSentido({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MusicTitle(title: 'Minha Vida tem Sentido'),
      Cifra(cipher: 'E B E C#m F#m B E B7'),
      Music(cipher: 'MINHA VIDA TEM SENTIDO, CADA VEZ QUE EU VENHO AQUI.'),
      Cifra(cipher: 'E B E C#m F#m B E B7'),
      Music(cipher: 'E TE FAÇO O MEU PEDIDO, DE NÃO ME ESQUECER DE TI.'),
      Cifra(cipher: 'E F#m E C#m'),
      Music(cipher: 'MEU AMOR É COMO ESTE PÃO, QUE ERA TRIGO,'),
      Cifra(cipher: 'F#m B E'),
      Music(cipher: 'QUE ALGUÉM PLANTOU, E DEPOIS COLHEU.'),
      Cifra(cipher: 'E F#m'),
      Music(cipher: 'E DEPOIS, TORNOU-SE SALVAÇÃO'),
      Cifra(cipher: 'E C#m F#m B E B7'),
      Music(cipher: 'E DEU MAIS VIDA E ALIMENTOU O POVO MEU.'),
      Cifra(cipher: 'E F#m'),
      Music(cipher: 'EU TE OFEREÇO VINHO E PÃO,'),
      Cifra(cipher: 'B E'),
      Music(cipher: 'EU TE OFEREÇO O MEU AMOR.'),
      Music(cipher: 'MEU AMOR É COMO ESTE VINHO, QUE ERA FRUTO'),
      Music(cipher: 'QUE ALGUÉM PLANTOU, DEPOIS COLHEU.'),
      Music(cipher: 'E DEPOIS ENCHEU-SE DE CARINHO'),
      Music(cipher: 'E DEU MAIS VIDA, E SACIOU O POVO MEU.'),
    ]);
  }
}

class EstarEmTuasMaos extends StatelessWidget {
  const EstarEmTuasMaos({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MusicTitle(title: 'Estar em Tuas Mãos'),
      Music(cipher: 'Mão na terra e o coração além deste céu)'),
      Music(cipher: 'E a semente que brota é um germe de eternidade'),
      Music(cipher: 'Vai brotando, crescendo, esperando'),
      Music(cipher: 'É a vida que vem despontar'),
      Music(cipher: 'E este trigo maduro, a colheita o recolherá'),
      Music(cipher: ' '),
      Music(cipher: 'Estar em tuas mãos, ó Pai'),
      Music(cipher: 'E a vida ofertar'),
      Music(cipher: 'No pão e no vinho a Ti'),
      Music(cipher: 'E o céu se abrirá'),
      Music(cipher: 'Estar em tuas mãos, Senhor'),
      Music(cipher: 'E a vida entregar'),
      Music(cipher: 'A minha oblação em Ti'),
      Music(cipher: 'Se perderá, frutificará'),
      Music(cipher: 'Frutificará, frutificará, frutificará!'),
      Music(cipher: ' '),
      Music(cipher: 'Da videira a flor não restará, passará'),
      Music(cipher: 'E o fruto da terra surgirá, brotará'),
      Music(cipher: 'Pela força do vento, da chuva'),
      Music(cipher: 'E do sol que traz vida e calor'),
      Music(cipher: 'Cada dia, crescendo e aprendendo a recomeçar'),
    ]);
  }
}

class SeBendito extends StatelessWidget {
  const SeBendito({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Music(cipher: 'Sê bendito, Senhor, para sempre'),
      Music(cipher: 'Pelos frutos das nossas jornadas!'),
      Music(cipher: 'Repartidos na mesa do reino'),
      Music(cipher: 'Anunciam a paz almejada!'),
      Music(cipher: ''),
      Music(cipher: 'Senhor da vida,'),
      Music(cipher: 'Tu és a nossa salvação!'),
      Music(cipher: 'Ao prepararmos a tua mesa'),
      Music(cipher: 'Em ti buscamos ressurreição!'),
      Music(cipher: ''),
      Music(cipher: 'Sê bendito, Senhor, para sempre'),
      Music(cipher: 'Pelos mares, os rios e as fontes!'),
      Music(cipher: 'Nos recordam a tua justiça'),
      Music(cipher: 'Que nos leva a um novo horizonte!'),
      Music(cipher: ''),
      Music(cipher: 'Sê bendito, Senhor, para sempre'),
      Music(cipher: 'Pelas bênçãos qual chuva torrente!'),
      Music(cipher: 'Tu fecundas o chão desta vida'),
      Music(cipher: 'Que abriga uma nova semente.'),
    ]);
  }
}
