import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/rounded_container.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/common/widgets/seaction_heading.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:mr_store/features/personalization/screens/settings/widgets/primary_left_header_container.dart';
import 'package:mr_store/features/personalization/screens/settings/widgets/setting_menu_tile.dart';
import 'package:mr_store/features/personalization/screens/settings/widgets/user_profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool? switchTurn = false;
  @override
  Widget build(BuildContext context) {
    // final controller = ColorController.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryLeftHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const UserProfileTile(),
                  SizedBox(height: TSizes.spaceBtnSections.h),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SeactionHeading(title: "Account Settings"),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  SettingMenuTile(
                    title: "My Wishlist",
                    subTitle: "save for later",
                    leadingIcon: Iconsax.heart,
                    onTap: () {
                      Get.toNamed(AppRoute.wishlist);
                    },
                  ),
                  SettingMenuTile(
                      title: "My Orders",
                      subTitle: "your orders is here",
                      leadingIcon: Iconsax.box,
                      onTap: () {
                        Get.toNamed(AppRoute.orders);
                      }),
                  SettingMenuTile(
                      title: "My Addresses",
                      subTitle: "add new address here",
                      leadingIcon: Iconsax.location,
                      onTap: () {
                        Get.toNamed(AppRoute.address);
                      }),
                  SettingMenuTile(
                      title: "Upload Dummy Data",
                      subTitle: "static data to quick test",
                      leadingIcon: Iconsax.document_upload,
                      onTap: () {}),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  const SeactionHeading(title: "App Settings"),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  SettingMenuTile(
                    title: "App Language",
                    subTitle: "change language",
                    leadingIcon: Iconsax.language_square,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(TSizes.defaultSpace),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Change Language',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!),
                                const SizedBox(height: TSizes.spaceBtnItems),
                                RoundedContainer(
                                  showBorder: true,
                                  padding: EdgeInsets.all(TSizes.sm),
                                  backgroundColor:
                                      THelperFunctions.isDarkMode(context)
                                          ? TColors.white
                                          : TColors.black,
                                  child: GestureDetector(
                                    child: Text(
                                      'Arabic',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color:
                                                  THelperFunctions.isDarkMode(
                                                          context)
                                                      ? TColors.black
                                                      : TColors.white),
                                    ),
                                    onTap: () {
                                      Get.updateLocale(Locale('ar'));
                                    },
                                  ),
                                ),
                                const SizedBox(height: TSizes.spaceBtnItems),
                                RoundedContainer(
                                  showBorder: true,
                                  backgroundColor:
                                      THelperFunctions.isDarkMode(context)
                                          ? TColors.white
                                          : TColors.black,
                                  padding: EdgeInsets.all(TSizes.sm),
                                  child: GestureDetector(
                                    child: Text(
                                      'English',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color:
                                                  THelperFunctions.isDarkMode(
                                                          context)
                                                      ? TColors.black
                                                      : TColors.white),
                                    ),
                                    onTap: () {
                                      Get.updateLocale(Locale('en'));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    trailing: RoundedContainer(
                      width: 50,
                      height: 40,
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.softGrey
                          : TColors.darkerGrey,
                      child: Center(
                        child: Text(
                          Get.locale!.languageCode == 'en' ? 'en' : 'ar',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: THelperFunctions.isDarkMode(context)
                                      ? TColors.black
                                      : TColors.white),
                        ),
                      ),
                    ),
                  ),
                  SettingMenuTile(
                    title: "App Theme",
                    subTitle: "change theme",
                    leadingIcon: Iconsax.edit,
                    trailing: RoundedContainer(
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.softGrey
                          : TColors.darkerGrey,
                      width: 50,
                      height: 40,
                      child: Icon(
                        THelperFunctions.isDarkMode(context)
                            ? Iconsax.moon
                            : Iconsax.sun,
                        color: THelperFunctions.isDarkMode(context)
                            ? TColors.black
                            : TColors.white,
                      ),
                    ),
                    onTap: () {
                      THelperFunctions.isDarkMode(context)
                          ? Get.changeThemeMode(ThemeMode.light)
                          : Get.changeThemeMode(ThemeMode.dark);
                    },
                  ),
                  // SettingMenuTile(
                  //   title: "App Color",
                  //   subTitle: "change color",
                  //   leadingIcon: Iconsax.colorfilter,
                  //   onTap: () {
                  //     // controller.updateColor(Colors.pink);
                  //   },
                  //   trailing: RoundedContainer(
                  //     width: 50,
                  //     height: 40,
                  //     backgroundColor: TColors.getPrimaryColor(context),
                  //   ),
                  // ),
                  SettingMenuTile(
                    title: "Notifications",
                    subTitle: "turn on/off notifications",
                    leadingIcon: Iconsax.notification,
                    trailing: Switch(
                      value: switchTurn!,
                      onChanged: (value) {
                        setState(() {
                          switchTurn = value;
                        });
                      },
                      activeTrackColor:
                          Theme.of(context).primaryColor.withValues(alpha: 0.2),
                      activeColor: Theme.of(context).primaryColor,
                    ),
                  ),
                  // Obx(
                  //   () => Container(
                  //     color: controller.primaryColor.value,
                  //     width: 100,
                  //     height: 100,
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
