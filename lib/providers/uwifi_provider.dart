import 'package:flutter/material.dart';

class UwifiProvider extends ChangeNotifier {

  List<Option> options = [
      Option(title: 'Change in circumstances.', value: true),
      Option(title: 'Unwanted product or service.'),
      Option(title: 'Availability issues.',value: true),
      Option(title: 'Other (please specify).'),
    ];
   
}
class Option {
  String title;
  bool value;

  Option({
    required this.title,
    this.value = false,
  });
}
