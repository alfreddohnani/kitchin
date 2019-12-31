import 'dart:ui';
import 'package:kitchin/screens/onboarding/models/OnboardPageModel.dart';

List<OnboardPageModel> onboardData  = [
    OnboardPageModel(
      Color(0xFF00DDEE),
      Color(0xFF005699),
      Color(0xFFFFE074),
      2,
      'assets/images/reserve_food_image.png',
      'Make Food Reservations',
    ),
    OnboardPageModel(
      Color(0xFF1787E0),
      Color(0xFFFFE074),
      Color(0xFF39393A),
      2,
      'assets/images/friend_pickup_image.png',
      'Friends Help Pickup Food Without Email',
    ),
    OnboardPageModel(
      Color(0xFF00DDEE),
      Color(0xFF39393A),
      Color(0xFFE6E6E6),
      0,
      'assets/images/rate_meal_image.png',
      'Rate Meals And Give Feedback',
    ),
  ];