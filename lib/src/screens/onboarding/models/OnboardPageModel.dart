import 'dart:ui';

class OnboardPageModel {
  final Color primaryColor;
  final Color secondaryColor;
  final Color textColor;
  final int    pageNumber;
  final String imagePath;
  final String caption;

  OnboardPageModel(this.primaryColor, this.secondaryColor, this.textColor, this.pageNumber, this.imagePath,
      this.caption);
}