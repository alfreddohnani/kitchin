import 'package:flutter/material.dart';
import 'package:kitchin/src/screens/onboarding/models/OnboardPageModel.dart';

class OnboardPage extends StatefulWidget {
  final PageController pageController;
  final OnboardPageModel pageModel;

  const OnboardPage(
      {Key key, @required this.pageModel, @required this.pageController})
      : super(key: key);

  _OnboardPageState createState() => new _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> heroAnimation;
  Animation<double> borderAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: new Duration(milliseconds: 750));

    heroAnimation = new Tween<double>(begin: -40, end: 0).animate(
        new CurvedAnimation(
            parent: animationController, curve: Curves.bounceInOut));
    borderAnimation = new Tween<double>(begin: 75, end: 50).animate(
        new CurvedAnimation(
            parent: animationController, curve: Curves.bounceOut));

    animationController.forward(from: 0);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.pageModel.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AnimatedBuilder(
            animation: heroAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(heroAnimation.value, 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Image.asset(widget.pageModel.imagePath),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Container(
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  widget.pageModel.caption,
                  style: TextStyle(
                      fontFamily: 'Circular Std Black Regular',
                      fontSize: 24,
                      color: widget.pageModel.textColor,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
