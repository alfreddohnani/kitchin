import 'package:flutter/material.dart';
import 'package:kitchin/src/screens/onboarding/data/onboard_page_data.dart';
import 'package:kitchin/src/screens/onboarding/components/OnboardPage.dart';
import 'package:provider/provider.dart';
import "package:kitchin/src/providers/CurrentPageProvider.dart";
import 'package:kitchin/src/screens/onboarding/components/Indicator.dart';

class Onboarding extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    CurrentPageProvider currentPageProvider =
        Provider.of<CurrentPageProvider>(context);
    return Column(
      children: <Widget>[
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
            PageView.builder(
              onPageChanged: (int page) {
                currentPageProvider.currentPage = page;
              },
              controller: pageController,
              physics: ScrollPhysics(),
              itemCount: onboardData.length,
              itemBuilder: (context, index) {
                return OnboardPage(
                  pageController: pageController,
                  pageModel: onboardData[index],
                );
              },
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Indicator(
                pageController: pageController,
                numPages: onboardData.length,
              ),
           ),
          ]),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 400.0,
                height: 50.0,
                margin: EdgeInsets.only(bottom: 15.0),
                child: OutlineButton(
                  textColor: Colors.grey,
                  child: Text('Sign in'),
                  onPressed: () {
                    return null;
                  },
                ),
              ),
              Container(
                width: 400.0,
                height: 50.0,
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Get Started'),
                  onPressed: () {
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
