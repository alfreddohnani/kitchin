import "package:flutter/material.dart";
import "package:kitchin/src/providers/CurrentPageProvider.dart";
import 'package:provider/provider.dart';


class Indicator extends StatefulWidget {
  final PageController pageController;
  final int numPages;

  
  const Indicator({
    @required this.pageController,
    @required this.numPages,
  });

  _IndicatorState createState() => _IndicatorState();
  
}

class _IndicatorState extends State<Indicator> {


  Widget _indicator(bool isActive) {
    
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 12.0 : 6.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget build (BuildContext context) {
    CurrentPageProvider currentPageProvider = Provider.of<CurrentPageProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildPageIndicator(currentPageProvider)
      );
  }

   List<Widget> _buildPageIndicator(currentPageProvider) {
    List<Widget> list = [];
    for (int i = 0; i < widget.numPages; i++) {
      list.add(i == currentPageProvider.currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

}