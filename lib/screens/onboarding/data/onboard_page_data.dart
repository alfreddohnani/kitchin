import 'dart:ui';
import 'package:kitchin/screens/onboarding/models/OnboardPageModel.dart';

List<OnboardPageModel> onboardData  = [
    OnboardPageModel(
      Color(0xFFE6E6E6),
      Color(0xFF005699),
      Color(0xFFFFE074),
      2,
      'assets/images/reserve_food_image.svg',
      'EXPLORING',
      'FLUTTER',
      'On this channel we try and build fun stuff using Flutter and Dart. Subscribe for more content and let me know what you think in the comments!',
    ),
    OnboardPageModel(
      Color(0xFF005699),
      Color(0xFFFFE074),
      Color(0xFF39393A),
      2,
      'assets/images/friend_pickup_image.svg',
      'ANIMATING',
      'FLARE',
      'Making Flare animations and incorporating it into Flutter. Mobile animations have never been so easy!',
    ),
    OnboardPageModel(
      Color(0xFFFFE074),
      Color(0xFF39393A),
      Color(0xFFE6E6E6),
      0,
      'assets/images/rate_meal_image.svg',
      'DESIGN AND',
      'ANIMATION',
      'Recreating and imagining our own designs and animations to create custom effects and widgets.',
    ),
  ];