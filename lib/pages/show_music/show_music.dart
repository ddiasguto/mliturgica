import 'package:diasguto/components/change_chant_button.dart';
import 'package:diasguto/components/show_cipher_button.dart';
import 'package:diasguto/models/chant.dart';
import 'package:diasguto/pages/show_music/body_show_music.dart';
import 'package:diasguto/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';
import '../../provider/Maestro.dart';
import '../../widgets/float_button.dart';
import '../../widgets/previous_button.dart';

class ShowMusic extends StatefulWidget {
  const ShowMusic({
    super.key,
  });

  @override
  State<ShowMusic> createState() => ShowMusicState();
}

class ShowMusicState extends State<ShowMusic> {
  _onItemTapped(int index) {
    Maestro maestro = Provider.of<Maestro>(context, listen: false);
    if (index == 1) {
      maestro.nextItem();
    } else {
      maestro.previousItem();
    }
  }

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    int currentIndex = maestro.getCurrentIndex;
    int full = maestro.getFullProgress;
    int progress = maestro.getProgress;

    return Scaffold(
        appBar: AppBar(
          title: TextScroll(
            "${maestro.localList[currentIndex].title.toUpperCase()}                ",
            style: TextStyle(fontSize: 18),
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            pauseOnBounce: Duration(seconds: 2),
            delayBefore: Duration(seconds: 3),
          ),
          backgroundColor: Colors.cyan[800],
          elevation: 0,
          actions: [
            Center(
              child: Text("$progress / $full", style: TextStyle(fontSize: 16)),
            ),
            ChangeChant(),
            buttonCipher(context),
            Container(
              width: 20,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyan[800],
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: PreviousButton(),
              label: 'Anterior',
            ),
            const BottomNavigationBarItem(
              icon: NextButton(),
              label: 'Próxima',
            ),
          ],
          onTap: _onItemTapped,
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 14),
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 14),
        ),
        body: bodyShowMusic(context),
        floatingActionButton: const FloatButton());
  }
}
