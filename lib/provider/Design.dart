import 'dart:math';

import 'package:diasguto/components/home_img.dart';
import 'package:flutter/material.dart';

class Design with ChangeNotifier {
  int setHomeIMG() {
    int randomImg = Random().nextInt(imgHome.length);
    return randomImg;
  }
}
