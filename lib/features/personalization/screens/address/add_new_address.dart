import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/custom_text_form_field.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameC = TextEditingController();
    TextEditingController phoneC = TextEditingController();
    TextEditingController countryC = TextEditingController();
    TextEditingController cityC = TextEditingController();
    TextEditingController stateC = TextEditingController();
    TextEditingController streetC = TextEditingController();
    TextEditingController postalCodeC = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Add New Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextFormField(
                  controller: nameC,
                  labelText: 'Name',
                  prefixIcon: Iconsax.user,
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                CustomTextFormField(
                  controller: phoneC,
                  labelText: 'Phone',
                  prefixIcon: Iconsax.mobile,
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                CustomTextFormField(
                  controller: countryC,
                  labelText: 'Country',
                  prefixIcon: Iconsax.global,
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: cityC,
                        labelText: 'City',
                        prefixIcon: Iconsax.building,
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: CustomTextFormField(
                        controller: stateC,
                        labelText: 'State',
                        prefixIcon: Iconsax.activity,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: streetC,
                        labelText: 'Street',
                        prefixIcon: Iconsax.building_34,
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: CustomTextFormField(
                        controller: postalCodeC,
                        labelText: 'Postal Code',
                        prefixIcon: Iconsax.code,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtnSections),
                ElevatedButton(onPressed: () {}, child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
