import 'package:diasguto/models/chant.dart';
import 'package:diasguto/templates/cipher.dart';

List<Chant> holy_spirit = [
  divinoEspiritoSanto,
  osDevotos,
  euNavegarei,
  aNosDescei,
  moveTeEmMim,
  sequenciaPentecostes
];

Chant divinoEspiritoSanto = Chant(
    title: 'Divino Espirito Santo',
    category: 'Louvor ao Santo Espírito',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant osDevotos = Chant(
    title: 'Os devotos do Divino',
    category: 'Louvor ao Santo Espírito',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant euNavegarei = Chant(
    title: 'Eu navegarei',
    category: 'Louvor ao Santo Espírito',
    lyrics: [
      const Music(cipher: 'Eu navegarei no oceano do Espírito'),
      const Music(cipher: 'e ali adorarei ao Deus de meu amor.(2x)'),
      verse(),
      const Music(cipher: 'Espirito, Espirito,'),
      const Music(cipher: 'que desce como fogo,'),
      const Music(cipher: 'vem como em Pentecostes'),
      const Music(cipher: 'e enche-me de novo! (bis)'),
    ],
    hasCypher: false,
    ciphers: []);

Chant aNosDescei = Chant(
    title: 'A nós descei Divina Luz',
    category: 'Louvor ao Santo Espírito',
    lyrics: [
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
    ],
    hasCypher: false,
    ciphers: []);

Chant moveTeEmMim = Chant(
    title: 'Move-te em mim',
    category: 'Louvor ao Santo Espírito',
    lyrics: [
      const Music(cipher: 'O Espírito de Deus está neste lugar'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Music(cipher: 'Está aqui para consolar'),
      const Music(cipher: 'Está aqui para libertar'),
      const Music(cipher: 'Está aqui para guiar'),
      const Music(cipher: 'O Espírito de Deus está aqui'),
      verse(),
      const Music(cipher: 'O Espírito de Deus está neste lugar'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Music(cipher: 'Está aqui para consolar'),
      const Music(cipher: 'Está aqui para libertar'),
      const Music(cipher: 'Está aqui para guiar'),
      const Music(cipher: 'O Espírito de Deus está aqui'),
      verse(),
      const Refrao(cipher: 'Move-te em mim! Move-te em mim!'),
      const Refrao(cipher: 'Toca a minha mente e o meu coração'),
      const Refrao(cipher: 'Enche a minha vida com o teu amor!'),
      const Refrao(cipher: 'Move-te em mim!'),
      const Refrao(cipher: 'Deus Espírito, move-te em mim!'),
      verse(),
      const Music(cipher: 'O Espírito de Deus está neste lugar'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Music(cipher: 'Está aqui para consolar'),
      const Music(cipher: 'Está aqui para libertar'),
      const Music(cipher: 'Está aqui para guiar'),
      const Music(cipher: 'O Espírito de Deus está aqui'),
      verse(),
      const Music(cipher: 'O Espírito de Deus está neste lugar'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Music(cipher: 'Está aqui para consolar'),
      const Music(cipher: 'Está aqui para libertar'),
      const Music(cipher: 'Está aqui para guiar'),
      const Music(cipher: 'O Espírito de Deus está aqui'),
      verse(),
      const Refrao(cipher: 'Move-te em mim! Move-te em mim!'),
      const Refrao(cipher: 'Toca a minha mente e o meu coração'),
      const Refrao(cipher: 'Enche a minha vida com o teu amor!'),
      const Refrao(cipher: 'Move-te em mim!'),
      const Refrao(cipher: 'Deus Espírito, move-te em mim!'),
      verse(),
    ],
    hasCypher: true,
    ciphers: [
      const Music(cipher: 'Tom: F'),
      const Cifra(cipher: '[Intro] F  Bb9  F'),
      const Cifra(cipher: '        Bb9  F  C/E'),
      const Cifra(cipher: '        Dm  C  Bb9'),
      verse(),
      const Cifra(cipher: '    F                Bb         F   Bb/F'),
      const Music(cipher: 'O Espírito de Deus esta neste lugar'),
      const Cifra(cipher: '    F                 Bb/D         C4   C'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Cifra(cipher: '      F                Bb         F             Bb'),
      const Music(cipher: 'Esta aqui para  consolar, esta aqui para libertar'),
      const Cifra(
          cipher: '  F                        C4     C          F    Bb/F'),
      const Music(cipher: 'Esta aqui para guiar, o Espírito Deus esta aqui'),
      verse(),
      const Cifra(cipher: '    F                Bb         F   Bb/F'),
      const Music(cipher: 'O Espírito de Deus esta neste lugar'),
      const Cifra(cipher: '    F                 Bb/D         C4   C'),
      const Music(cipher: 'O Espírito de Deus se move neste lugar'),
      const Cifra(cipher: '      F                Bb         F             Bb'),
      const Music(cipher: 'Esta aqui para  consolar, esta aqui para libertar'),
      const Cifra(
          cipher: '      F                   C4     C          F     Cm'),
      const Music(cipher: 'Esta aqui para guiar, o Espírito Deus esta aqui'),
      const Cifra(cipher: 'F7'),
      verse(),
      const Music(cipher: '[Refrão]'),
      verse(),
      const Cifra(cipher: '           Bb  C/Bb            F'),
      const Music(cipher: 'Move-te em mim,     move-te em mim'),
      const Cifra(cipher: '           Bb            C/Bb'),
      const Music(cipher: 'Toca minha mente meu coração'),
      const Cifra(cipher: '            Am           Dm'),
      const Music(cipher: 'Enche minha vida do teu amor'),
      const Cifra(
          cipher: '           Bb  F/A        Gm7    C          F   Bb/F'),
      const Music(cipher: 'Move-te em mim     Deus Espírito move-te em mim'),
      const Cifra(cipher: 'F   Bb/F'),
      verse(),
      const Music(cipher: '[Refrão]'),
      verse(),
      const Cifra(cipher: '           Bb  C/Bb            F'),
      const Music(cipher: 'Move-te em mim,     move-te em mim'),
      const Cifra(cipher: '           Bb            C/Bb'),
      const Music(cipher: 'Toca minha mente meu coração'),
      const Cifra(cipher: '            Am           Dm'),
      const Music(cipher: 'Enche minha vida do teu amor'),
      const Cifra(
          cipher: '           Bb  F/A        Gm7    C          F   Bb/F'),
      const Music(cipher: 'Move-te em mim     Deus Espírito move-te em mim'),
      const Cifra(cipher: 'F   Bb/F'),
      verse(),
      const Cifra(cipher: '[Solo F  Bb  C/Bb  F'),
      const Cifra(cipher: '      Bb  C/Bb  Am  Dm'),
      const Cifra(cipher: '      Bb  F/A  Gm7'),
      const Cifra(cipher: '      C  F  Cm  F'),
      verse(),
      const Cifra(cipher: '           Bb  C/Bb            F'),
      const Music(cipher: 'Move-te em mim,     move-te em mim'),
      const Cifra(cipher: '           Bb            C/Bb'),
      const Music(cipher: 'Toca minha mente meu coração'),
      const Cifra(cipher: '            Am           Dm'),
      const Music(cipher: 'Enche minha vida do teu amor'),
      const Cifra(cipher: '           Bb  F/A        Gm7    C          F'),
      const Music(cipher: 'Move-te em mim     Deus Espírito move-te em mim'),
      const Cifra(cipher: '           Bb  F/A        Gm7    C          F'),
      const Music(cipher: 'Move-te em mim     Deus Espírito move-te em mim'),
      const Cifra(cipher: '           Bb  F/A        Gm7    C          F'),
      const Music(cipher: 'Move-te em mim     Deus Espírito move-te em mim'),
    ]);

Chant sequenciaPentecostes = Chant(
    title: 'Sequencia de pentecostes',
    category: 'Sequência',
    lyrics: [
      const Music(cipher: 'Espírito de Deus,'),
      const Music(cipher: 'enviai dos céus'),
      const Music(cipher: 'um raio de luz!'),
      verse(),
      const Music(cipher: 'Vinde, Pai dos pobres,'),
      const Music(cipher: 'daí aos corações'),
      const Music(cipher: 'vossos sete dons.'),
      verse(),
      const Music(cipher: 'Consolo que acalma,'),
      const Music(cipher: 'hóspede da alma,'),
      const Music(cipher: 'doce alívio, vinde!'),
      verse(),
      const Music(cipher: 'No labor descanso,'),
      const Music(cipher: 'na aflição remanso,'),
      const Music(cipher: 'no calor aragem.'),
      verse(),
      const Music(cipher: 'Ao sujo lavai,'),
      const Music(cipher: 'ao seco regai,'),
      const Music(cipher: 'curai o doente.'),
      verse(),
      const Music(cipher: 'Dobrai o que é duro,'),
      const Music(cipher: 'guiai no escuro,'),
      const Music(cipher: 'o frio aquecei.'),
      verse(),
      const Music(cipher: 'Enchei, luz bendita,'),
      const Music(cipher: 'chama que crepita,'),
      const Music(cipher: 'o íntimo de nós!'),
      verse(),
      const Music(cipher: 'Sem luz que acode,'),
      const Music(cipher: 'nada o homem pode,'),
      const Music(cipher: 'nenhum bem há nele.'),
      verse(),
      const Music(cipher: 'Daí à vossa igreja,'),
      const Music(cipher: 'que espera e deseja,'),
      const Music(cipher: 'vossos sete dons.'),
      const Music(cipher: 'Daí em prêmio ao forte'),
      const Music(cipher: 'uma santa morte,'),
      const Music(cipher: 'alegria eterna. Amém.'),
    ],
    hasCypher: true,
    ciphers: [
      const Music(cipher: 'INTRO: | E B | A B | E B | A B/A |'),
      verse(),
      verse(),
      const Cifra(cipher: '  E          B'),
      const Music(cipher: 'ESPÍRITO DE DEUS,'),
      const Cifra(cipher: '   A        B'),
      const Music(cipher: 'ENVIAI DOS CÉUS'),
      const Music(cipher: 'E            B A'),
      const Music(cipher: 'UM RAIO DE LUZ!'),
      const Cifra(cipher: ' E              B'),
      const Music(cipher: 'VINDE, PAI DOS POBRES,'),
      const Cifra(cipher: ' A           B'),
      const Music(cipher: 'DAI AOS CORAÇÕES'),
      const Cifra(cipher: ' E            B  A'),
      const Music(cipher: 'VOSSOS SETE DONS.'),
      const Cifra(cipher: '    E         B'),
      const Music(cipher: 'CONSOLO QUE ACALMA,'),
      const Cifra(cipher: ' A           B'),
      const Music(cipher: 'HÓSPEDE DA ALMA,'),
      const Cifra(cipher: ' E             B   A'),
      const Music(cipher: 'DOCE ALÍVIO, VINDE!'),
      const Cifra(cipher: ' E           B'),
      const Music(cipher: 'NO LABOR DESCANSO,'),
      const Cifra(cipher: ' A             B'),
      const Music(cipher: 'NA AFLIÇÃO REMANSO,'),
      const Cifra(cipher: ' E           B  A'),
      const Music(cipher: 'NO CALOR ARAGEM.'),
      const Cifra(cipher: ' E         B'),
      const Music(cipher: 'AO SUJO LAVAI,'),
      const Cifra(cipher: ' A         B'),
      const Music(cipher: 'AO SECO REGAI,'),
      const Cifra(cipher: ' E          B  A'),
      const Music(cipher: 'CURAI O DOENTE.'),
      verse(),
      const Cifra(cipher: '  E             B'),
      const Music(cipher: 'DOBRAI O QUE É DURO,'),
      const Cifra(cipher: '  A          B'),
      const Music(cipher: 'GUIAI NO ESCURO,'),
      const Cifra(cipher: ' E           B  A'),
      const Music(cipher: 'O FRIO AQUECEI.'),
      const Cifra(cipher: '  E             B'),
      const Music(cipher: 'ENCHEI, LUZ BENDITA,'),
      const Cifra(cipher: '  A           B'),
      const Music(cipher: 'CHAMA QUE CREPITA,'),
      const Cifra(cipher: '  E          B  A'),
      const Music(cipher: 'O ÍNTIMO DE NÓS!'),
      verse(),
      const Cifra(cipher: ' E              B'),
      const Music(cipher: 'SEM a LUZ QUE ACODE,'),
      const Cifra(cipher: '  A            B'),
      const Music(cipher: 'NADA O HOMEM PODE,'),
      const Cifra(cipher: '  E             B   A'),
      const Music(cipher: 'NENHUM BEM HÁ NELE.'),
      verse(),
      const Cifra(cipher: ' E            B'),
      const Music(cipher: 'DAI À VOSSA IGREJA,'),
      const Cifra(cipher: '  A             B'),
      const Music(cipher: 'QUE ESPERA E DESEJA,'),
      const Cifra(cipher: '  E           B  A'),
      const Music(cipher: 'VOSSOS SETE DONS.'),
      verse(),
      const Cifra(cipher: ' E                B'),
      const Music(cipher: 'DAI EM PRÊMIO AO FORTE'),
      const Cifra(cipher: ' A           b'),
      const Music(cipher: 'UMA SANTA MORTE, ALEGRIA ETERNA.'),
      verse(),
      const Music(cipher: 'AMÉM.'),
    ]);
