import 'package:flutter/material.dart';
import 'package:kitchin/themes/styles.dart';
import 'package:kitchin/screens/Home.dart';


class App extends StatelessWidget{

  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitchin',
      home: new Home(),
      theme: appTheme(),
    );
  }
}