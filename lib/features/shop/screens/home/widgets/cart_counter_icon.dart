import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';

class CartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? numberColor;
  final Color? backgroundNumberColor;
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = TColors.black,
    this.numberColor,
    this.backgroundNumberColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor ?? (dark ? TColors.white : TColors.black),
          ),
          onPressed: onPressed,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: backgroundNumberColor ??
                    (dark ? TColors.white : TColors.black),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color:
                        numberColor ?? (dark ? TColors.black : TColors.white),
                    fontSize: TSizes.fontSizeXs),
              ),
            ),
          ),
        )
      ],
    );
  }
}