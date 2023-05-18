import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //Logo principal TecnoCrops
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 350,
                  leftAfter: 58,
                  leftBefore: 58),
              child: const Image(image: AssetImage(tSplashTopIcon)),
            ),

            //Texto
            TFadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 250,
                  leftAfter: 90,
                  leftBefore: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tAppTagLine,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 18.0, fontWeight: FontWeight.bold))
                ],
              ),
            ),

            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 60,
                  rightBefore: tDefaultSize,
                  rightAfter: tDefaultSize),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
