import 'package:flutter/material.dart';
import 'package:kitchin/providers/ColorProvider.dart';
import 'package:kitchin/screens/onboarding/Onboarding.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget{

  Widget build(BuildContext context){

    return new Scaffold(
      body: new ChangeNotifierProvider(
        create: (context) => ColorProvider(),
        child: new Onboarding(), 
      ),
    );
  }
}