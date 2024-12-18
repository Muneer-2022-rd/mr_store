import 'package:mr_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = const EdgeInsets.only(
    top: TSizes.appBarHeight,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}
