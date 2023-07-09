import 'package:flutter/material.dart';

void navigator(context, Widget target) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => target));
}
