import 'package:flutter/material.dart';
import 'package:kitchin/src/screens/onboarding/data/onboard_page_data.dart';
import 'package:flutter/foundation.dart';

class ColorProvider with ChangeNotifier{

  Color _color = onboardData[0].textColor;

  Color get color => _color;

   set color(Color color){
    _color = color;
    notifyListeners();
  }
}