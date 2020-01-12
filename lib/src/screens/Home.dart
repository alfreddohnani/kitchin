import 'package:flutter/material.dart';
import 'package:kitchin/src/providers/ColorProvider.dart';
import 'package:kitchin/src/providers/CurrentPageProvider.dart';
import 'package:kitchin/src/screens/onboarding/Onboarding.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget{

  Widget build(BuildContext context){

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ColorProvider>(
          create: (BuildContext context) => ColorProvider(),
        ),
        ChangeNotifierProvider<CurrentPageProvider>(
          create: (BuildContext context) => CurrentPageProvider(),
        ),
      ],
      child: Scaffold(
        body: Onboarding(),
      ),
      );
  }
}