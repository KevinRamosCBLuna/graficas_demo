import 'package:flutter/material.dart';

class SendWeek extends ChangeNotifier {
    double weekOther = 50;

  setWeek(double week) {
    weekOther = week; 
    notifyListeners();
  }
}