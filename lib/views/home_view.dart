import 'dart:math';

import 'package:dice_app/app_constants/app_colors.dart';
import 'package:dice_app/app_constants/app_images.dart';
import 'package:dice_app/app_widgets/image_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int leftDice = 1;
  int rightDice = 6;

  throwDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Row(
          children: <Widget>[
            ImageWidget(
              ontap: throwDice,
              image: AppImages.getDiceImage(
                leftDice.toString(),
              ),
            ),
            ImageWidget(
              ontap: throwDice,
              image: AppImages.getDiceImage(
                rightDice.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
