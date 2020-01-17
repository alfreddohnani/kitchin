import 'package:flutter/material.dart';
import 'package:kitchin/src/themes/styles.dart';
import 'package:kitchin/src/screens/Home.dart';
import './routes/routes.dart';


class App extends StatelessWidget{

  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitchin',
      home: new Home(),
      theme: appTheme(),
      routes: routes,
    );
  }
}