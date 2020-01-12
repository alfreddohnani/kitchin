import 'dart:ui';
import 'package:kitchin/src/screens/onboarding/models/OnboardPageModel.dart';

List<OnboardPageModel> onboardData  = [
    OnboardPageModel(
      Color(0xFF00DDEE),
      Color(0xFF1787E0),
      Color(0xFFE6E6E6),
      2,
      'assets/images/reserve_food_image.png',
      'Make Food Reservations',
    ),
    OnboardPageModel(
      Color(0xFF1787E0),
      Color(0xFF00DDEE),
      Color(0xFFE6E6E6),
      2,
      'assets/images/friend_pickup_image.png',
      'Friends Help Pickup Food Without Email',
    ),
    OnboardPageModel(
      Color(0xFF00DDEE),
      Color(0xFF1787E0),
      Color(0xFFE6E6E6),
      0,
      'assets/images/rate_meal_image.png',
      'Rate Meals And Give Feedback',
    ),
  ];