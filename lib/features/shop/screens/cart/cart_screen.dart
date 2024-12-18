import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItems(),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace / 2),
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoute.checkout);
            },
            child: const Text('Checkout \$750'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
