import 'package:mr_store/features/authentication/controllers/register_controller.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:mr_store/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:mr_store/features/authentication/screens/register/widgets/register_form.dart';
import 'package:mr_store/core/constants/sizes.dart';

import 'package:mr_store/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.registerTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const RegisterForm(),
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
