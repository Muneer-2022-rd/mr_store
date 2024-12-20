import 'package:mr_store/common/widgets/circular_image.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  final String url;
  const ProfileImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        CircularImage(
          url: url,
          width: 150.w,
          height: 150.h,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: dark ? TColors.darkerGrey : TColors.softGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Change Picture',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        )
      ],
    );
  }
}
