import 'package:get/get.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/home/widgets/vertical_image_text.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isRtl = Directionality.of(context) == TextDirection.rtl;
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: isRtl
            ? EdgeInsets.zero
            : const EdgeInsets.only(left: TSizes.defaultSpace),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: isRtl ? (index == 7 ? TSizes.defaultSpace : 0) : 0,
          ),
          child: VerticalImageText(
            onTap: () {
              Get.toNamed(AppRoute.subCategories);
            },
            imageTitle: 'Adidas',
            image: TImages.logoImage,
            textColor: TColors.white,
          ),
        ),
      ),
    );
  }
}
