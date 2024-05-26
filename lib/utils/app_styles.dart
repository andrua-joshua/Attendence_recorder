import 'package:attendance_app/utils/app_colors.dart';
import 'package:attendance_app/utils/app_font_size.dart';
import 'package:flutter/material.dart';

class AppStyles{

  static const TextStyle normalGreyBoldTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: AppFontSize.normalFontSize,
    fontWeight: FontWeight.bold
  );

  static const TextStyle normalGreyTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: AppFontSize.normalFontSize,
  );

  static const TextStyle normalBlackTextStyle = TextStyle(
    color: Colors.black,
    fontSize: AppFontSize.normalFontSize,
  );

  static const TextStyle normalPrimaryTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: AppFontSize.normalFontSize,
  );

  static const TextStyle titleWhiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: AppFontSize.titleFontSize,
    fontWeight: FontWeight.bold
    
  );

  static const TextStyle titlePrimaryTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: AppFontSize.titleFontSize,
    fontWeight: FontWeight.bold
    
  );

  static const TextStyle logoTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: AppFontSize.xBigFontSize,
    fontWeight: FontWeight.bold
  );

}