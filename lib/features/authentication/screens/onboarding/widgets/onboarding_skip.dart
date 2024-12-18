import 'package:mr_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/constants/texts.dart';
import 'package:mr_store/core/device/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Obx(
      () => controller.currentPageIndex.value == 2
          ? const SizedBox.shrink()
          : Positioned(
              top: TDeviceUtility.getAppBarHeight(),
              right: TSizes.defaultSpace,
              child: TextButton(
                onPressed: controller.skipPage,
                child: Text(TTexts.skip),
              ),
            ),
    );
  }
}
