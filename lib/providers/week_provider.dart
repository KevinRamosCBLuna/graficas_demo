import 'package:flutter/material.dart';

class SendWeek extends ChangeNotifier {
    double weekOther = 50;
    double weekTechUtil = 50;
    // ignore: non_constant_identifier_names
    double AverageJobsTimeMinutes = 50;

  setWeek(double week) {
    weekOther = week; 
    notifyListeners();
  }

  
  setWeekTechUtil(double week) {
    weekTechUtil = week; 
    notifyListeners();
  }

  setAverageJobsTimeMinutes(double week) {
    AverageJobsTimeMinutes = week; 
    notifyListeners();
  }
}