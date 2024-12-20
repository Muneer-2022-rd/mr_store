import 'package:mr_store/common/widgets/circular_image.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
          url: TImages.settingsMan,
          width: 50.w,
          height: 50.h,
          padding: EdgeInsets.zero),
      title: Text('Muneer Radwan',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)),
      subtitle: Text('firebase.projects.1997@gmail.com',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: InkWell(
        onTap: () {
          Get.toNamed(AppRoute.profile);
        },
        child: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
