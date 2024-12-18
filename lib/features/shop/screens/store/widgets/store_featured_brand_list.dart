import 'package:get/get.dart';
import 'package:mr_store/common/widgets/custom_grid_layout.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/features/shop/screens/store/widgets/brand_card.dart';
import 'package:flutter/material.dart';

class StoreFeaturedBrandsList extends StatelessWidget {
  const StoreFeaturedBrandsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomGridLayout(
      itemCount: 4,
      mainAxisExtent: 80,
      itemBuilder: (p0, p1) => BrandCard(
        showBorder: true,
        onTap: () {
          Get.toNamed(AppRoute.brandProducts);
        },
      ),
    );
  }
}
