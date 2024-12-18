import 'package:mr_store/common/pages/success_screen.dart';
import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/rounded_container.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:mr_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:mr_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:mr_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:mr_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:mr_store/features/shop/screens/checkout/widgets/copun_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtnSections),
              const CopunCode(),
              const SizedBox(height: TSizes.spaceBtnSections),
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtnItems),
                    Divider(),
                    SizedBox(height: TSizes.spaceBtnItems),
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtnItems),
                    BillingAddressSection()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => SuccessScreen(
                image: TImages.success,
                title: 'Payment Success!',
                subtitle: 'Order Being Prepered',
                onPressed: () {
                  Get.toNamed(AppRoute.navigationMenu);
                },
              ),
            );
          },
          child: const Text('Checkout \$750'),
        ),
      ),
    );
  }
}