import 'package:diasguto/templates/cipher.dart';
import 'package:flutter/widgets.dart';

class AtiMeuDeus extends StatelessWidget {
  const AtiMeuDeus({super.key});
  final String titulo = 'A Ti Meu Deus';
  get getTitulo => titulo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MusicTitle(title: 'A TI MEU DEUS'),
        const Cifra(cipher: '        F#m'),
        const Music(cipher: 'A Ti, meu Deus elevo meu coração'),
        const Cifra(cipher: '        E'),
        const Music(cipher: 'Elevo as minhas mãos'),
        const Cifra(cipher: '        E'),
        const Music(cipher: 'Meu olhar, minha voz'),
        const Music(cipher: 'A Ti, meu Deus'),
        const Music(cipher: 'Eu quero oferecer'),
        const Music(cipher: 'Meus passos e meu viver'),
        const Music(cipher: 'Meus caminhos, meu sofrer'),
        const Music(cipher: 'A Tua ternura, Senhor, vem me abraçar'),
        const Music(cipher: 'E a Tua bondade infinita me perdoar'),
        const Music(cipher: 'Vou ser o Teu seguidor'),
        const Music(cipher: 'E Te dar o meu coração'),
        const Music(cipher: 'Eu quero sentir o calor, de Tuas mãos'),
      ],
    );
  }
}

class MinhaVidaTemSentido extends StatelessWidget {
  const MinhaVidaTemSentido({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MusicTitle(title: 'Minha Vida tem Sentido'),
      const Cifra(cipher: 'E B E C#m F#m B E B7'),
      const Music(
          cipher: 'MINHA VIDA TEM SENTIDO, CADA VEZ QUE EU VENHO AQUI.'),
      const Cifra(cipher: 'E B E C#m F#m B E B7'),
      const Music(cipher: 'E TE FAÇO O MEU PEDIDO, DE NÃO ME ESQUECER DE TI.'),
      const Cifra(cipher: 'E F#m E C#m'),
      const Music(cipher: 'MEU AMOR É COMO ESTE PÃO, QUE ERA TRIGO,'),
      const Cifra(cipher: 'F#m B E'),
      const Music(cipher: 'QUE ALGUÉM PLANTOU, E DEPOIS COLHEU.'),
      const Cifra(cipher: 'E F#m'),
      const Music(cipher: 'E DEPOIS, TORNOU-SE SALVAÇÃO'),
      const Cifra(cipher: 'E C#m F#m B E B7'),
      const Music(cipher: 'E DEU MAIS VIDA E ALIMENTOU O POVO MEU.'),
      const Cifra(cipher: 'E F#m'),
      const Music(cipher: 'EU TE OFEREÇO VINHO E PÃO,'),
      const Cifra(cipher: 'B E'),
      const Music(cipher: 'EU TE OFEREÇO O MEU AMOR.'),
      const Music(cipher: 'MEU AMOR É COMO ESTE VINHO, QUE ERA FRUTO'),
      const Music(cipher: 'QUE ALGUÉM PLANTOU, DEPOIS COLHEU.'),
      const Music(cipher: 'E DEPOIS ENCHEU-SE DE CARINHO'),
      const Music(cipher: 'E DEU MAIS VIDA, E SACIOU O POVO MEU.'),
    ]);
  }
}

class EstarEmTuasMaos extends StatelessWidget {
  const EstarEmTuasMaos({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MusicTitle(title: 'Estar em Tuas Mãos'),
      const Music(cipher: 'Mão na terra e o coração além deste céu)'),
      const Music(cipher: 'E a semente que brota é um germe de eternidade'),
      const Music(cipher: 'Vai brotando, crescendo, esperando'),
      const Music(cipher: 'É a vida que vem despontar'),
      const Music(cipher: 'E este trigo maduro, a colheita o recolherá'),
      const Music(cipher: ' '),
      const Music(cipher: 'Estar em tuas mãos, ó Pai'),
      const Music(cipher: 'E a vida ofertar'),
      const Music(cipher: 'No pão e no vinho a Ti'),
      const Music(cipher: 'E o céu se abrirá'),
      const Music(cipher: 'Estar em tuas mãos, Senhor'),
      const Music(cipher: 'E a vida entregar'),
      const Music(cipher: 'A minha oblação em Ti'),
      const Music(cipher: 'Se perderá, frutificará'),
      const Music(cipher: 'Frutificará, frutificará, frutificará!'),
      const Music(cipher: ' '),
      const Music(cipher: 'Da videira a flor não restará, passará'),
      const Music(cipher: 'E o fruto da terra surgirá, brotará'),
      const Music(cipher: 'Pela força do vento, da chuva'),
      const Music(cipher: 'E do sol que traz vida e calor'),
      const Music(cipher: 'Cada dia, crescendo e aprendendo a recomeçar'),
    ]);
  }
}

class SeBendito extends StatelessWidget {
  const SeBendito({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MusicTitle(title: 'Sê Bendito'),
      const Music(cipher: 'Sê bendito, Senhor, para sempre'),
      const Music(cipher: 'Pelos frutos das nossas jornadas!'),
      const Music(cipher: 'Repartidos na mesa do reino'),
      const Music(cipher: 'Anunciam a paz almejada!'),
      const Music(cipher: ''),
      const Music(cipher: 'Senhor da vida,'),
      const Music(cipher: 'Tu és a nossa salvação!'),
      const Music(cipher: 'Ao prepararmos a tua mesa'),
      const Music(cipher: 'Em ti buscamos ressurreição!'),
      const Music(cipher: ''),
      const Music(cipher: 'Sê bendito, Senhor, para sempre'),
      const Music(cipher: 'Pelos mares, os rios e as fontes!'),
      const Music(cipher: 'Nos recordam a tua justiça'),
      const Music(cipher: 'Que nos leva a um novo horizonte!'),
      const Music(cipher: ''),
      const Music(cipher: 'Sê bendito, Senhor, para sempre'),
      const Music(cipher: 'Pelas bênçãos qual chuva torrente!'),
      const Music(cipher: 'Tu fecundas o chão desta vida'),
      const Music(cipher: 'Que abriga uma nova semente.'),
    ]);
  }
}
