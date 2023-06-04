import 'package:diasguto/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Maestro.dart';
import '../widgets/float_button.dart';
import '../widgets/previous_button.dart';

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

    return Scaffold(
        appBar: AppBar(
          title: Text('${maestro.localList[currentIndex][0]}'),
          actions: [Text('${currentIndex + 1}/${maestro.localList.length}')],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyan,
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
        body: SingleChildScrollView(
          child: maestro.localList[currentIndex][1],
        ),
        floatingActionButton: const FloatButton());
  }
}
