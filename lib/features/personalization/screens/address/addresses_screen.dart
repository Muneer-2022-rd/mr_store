import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/constants/texts.dart';
import 'package:mr_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<bool> addressesList = [true, false, false, true, false];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
        onPressed: () {
          Get.toNamed(AppRoute.addAddress);
        },
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          TTexts.addresses,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: addressesList.length,
                itemBuilder: (context, index) => SingleAddress(
                  selectedAddress: addressesList[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
