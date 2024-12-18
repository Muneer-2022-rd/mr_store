import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/constants/texts.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 120.h,
          image: AssetImage(dark ? TImages.logoDarkImage : TImages.logoImage),
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
