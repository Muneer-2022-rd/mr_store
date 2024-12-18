import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/custom_grid_layout.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/store/widgets/brand_card.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Popular Brands",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                itemCount: 20,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => BrandCard(
                  showBorder: true,
                  onTap: () {
                    Get.toNamed(AppRoute.brandProducts);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
