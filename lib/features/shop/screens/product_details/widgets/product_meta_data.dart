import 'package:mr_store/common/widgets/circular_image.dart';
import 'package:mr_store/common/widgets/rounded_container.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/enum.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:mr_store/features/shop/screens/home/widgets/product_price_text.dart';
import 'package:mr_store/features/shop/screens/home/widgets/product_title_text.dart';
import 'package:mr_store/features/shop/screens/store/widgets/brand_tile_with_verified_icon.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              raduis: TSizes.sm,
              backgroundColor: TColors.secondry.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtnItems),
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtnItems),
            const ProductPriceText(
              price: '150',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtnItems / 1.5),
        const ProductTitleText(title: 'Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtnItems / 1.5),
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtnItems / 1.5),
            Text('In Stock', style: Theme.of(context).textTheme.titleLarge!)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtnItems / 1.5),
        Row(
          children: [
            CircularImage(
              url: TImages.brandNissan,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtnItems / 2),
            const BrandTileWithVerifiedIcon(
              title: 'Nike',
              barndTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}