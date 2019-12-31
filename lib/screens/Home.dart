import 'package:flutter/material.dart';
import 'package:kitchin/providers/ColorProvider.dart';
import 'package:kitchin/screens/onboarding/Onboarding.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget{

  Widget build(BuildContext context){

    return ChangeNotifierProvider(
      create: (BuildContext context) => ColorProvider(),
      child: Scaffold(
        body: Onboarding(),
      ),
      );
  }
}