import 'package:shared_preferences/shared_preferences.dart';

void persistData(int i, String str) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  switch (i) {
    case 0:
      await prefs.setString('entrance', str);
      break;
    case 1:
      await prefs.setString('penitencial', str);
      break;
    case 3:
      await prefs.setString('aclamacao', str);
      break;
    case 4:
      await prefs.setString('ofertorio', str);
      break;
    case 5:
      await prefs.setString('santo', str);
      break;
    case 6:
      await prefs.setString('comunhao', str);
      break;
    case 7:
      await prefs.setString('poscomunhao', str);
      break;
    case 8:
      await prefs.setString('encerramento', str);
      break;

    default:
  }
}

void setSheetStatus(int i) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt('sheetStatus', i);
}
