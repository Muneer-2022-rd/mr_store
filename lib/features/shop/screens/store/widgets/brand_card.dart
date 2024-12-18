import 'package:mr_store/common/widgets/circular_image.dart';
import 'package:mr_store/common/widgets/rounded_container.dart';
import 'package:mr_store/core/constants/enum.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/store/widgets/brand_tile_with_verified_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandCard extends StatelessWidget {
  final void Function()? onTap;
  final bool showBorder;
  const BrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                fit: BoxFit.contain,
                url: TImages.logoImage,
                isNetworkImage: false,
                backroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: TSizes.spaceBtnItems.w / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTileWithVerifiedIcon(
                    title: 'Nike',
                    barndTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
