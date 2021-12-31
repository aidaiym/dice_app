import 'package:dice_app/app_constants/app_urls.dart';
import 'package:flutter/material.dart';

class AppImages {
  static Image getDiceImage(String number) =>
      Image.asset('${AppUrls.imagePath}/dice' '$number.png');
}
