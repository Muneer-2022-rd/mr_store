import 'package:mr_store/common/styles/spacing_style.dart';
import 'package:mr_store/features/authentication/controllers/login_controller.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:mr_store/core/constants/sizes.dart';

import 'package:mr_store/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeader(),
              const LoginForm(),
              FormDivider(dividerText: TTexts.or.capitalize!),
              const SizedBox(height: TSizes.spaceBtnItems),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
