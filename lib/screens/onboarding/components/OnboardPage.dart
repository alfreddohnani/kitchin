import 'package:flutter/material.dart';
import 'package:kitchin/providers/ColorProvider.dart';
import 'package:kitchin/screens/onboarding/components/DrawerPaint.dart';
import 'package:kitchin/screens/onboarding/models/OnboardPageModel.dart';
import 'package:provider/provider.dart';


class OnboardPage extends StatefulWidget{
  final PageController pageController;
  final OnboardPageModel pageModel;

  const OnboardPage(
    {Key key, @required this.pageModel, @required this.pageController}
    ) : super(key : key);

  _OnboardPageState createState() => new _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage>
  with SingleTickerProviderStateMixin{
    AnimationController animationController;
    Animation<double> heroAnimation;
    Animation<double> borderAnimation;

    @override
    void initState() {
      animationController = AnimationController(vsync: this, duration: new Duration(milliseconds: 750));

      heroAnimation = new Tween<double>(begin: -40, end: 0).animate(
        new CurvedAnimation(parent: animationController, curve: Curves.bounceInOut)
      );
      borderAnimation = new Tween<double>(begin: 75, end: 50).animate(
        new CurvedAnimation(parent: animationController, curve: Curves.bounceOut)
      );

      animationController.forward(from: 0);
      super.initState();
    }

    @override
    void dispose() {
      animationController.dispose();
      super.dispose();
    }

    _nextButtonPressed() {
       Provider.of<ColorProvider>(context).color = widget.pageModel.nextAccentColor;
      widget.pageController.nextPage(
        duration: new Duration(
          milliseconds: 100,
        ),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }

    Widget build(BuildContext context) {
      return new Stack(
        children: <Widget>[
          new Container(
            color: widget.pageModel.primeColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                AnimatedBuilder(
            animation: heroAnimation,
            builder: (BuildContext context, child) {
              return new Transform.translate(
                offset: new Offset(heroAnimation.value, 0),
                child: new Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Image.asset(widget.pageModel.imagePath),
                ),
              );
            },
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: new Container(
              height: 250,
              width: double.infinity,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new Text(
                      widget.pageModel.caption,
                      style: new TextStyle(
                        fontSize: 24,
                        color: widget.pageModel.accentColor.withOpacity(0.8),
                        letterSpacing: 1,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                      widget.pageModel.subhead,
                      style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: widget.pageModel.accentColor,
                        letterSpacing: 1,
                        fontStyle: FontStyle.normal,
                      )
                    )
                  ),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new Text(
                      widget.pageModel.description,
                      style: new TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: widget.pageModel.accentColor,
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ]
          ),
        ),
        new Align(
          alignment: Alignment.centerRight,
          child: AnimatedBuilder(
            animation: borderAnimation,
            child: new Align(
                  alignment: Alignment.bottomCenter,
                  child: new Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: new IconButton(
                      icon: new Icon(
                        Icons.arrow_back,
                        color: widget.pageModel.primeColor,
                        size: 32,
                      ),
                      onPressed: _nextButtonPressed(),
                    ),
                    ),
                ),
            builder: (BuildContext context, child){
              return new CustomPaint(
                painter: new DrawerPaint(
                  curveColor: widget.pageModel.accentColor,
                ),
                child: child,
              );
            },
          ),
        ),
      ],
    );
  }
}