import 'package:mr_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    selectedColor: TColors.primary,
    disabledColor: TColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: TColors.black),
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: TColors.white,
    // color: const WidgetStatePropertyAll(Colors.transparent)
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    selectedColor: TColors.primaryDark,
    disabledColor: TColors.darkerGrey,
    labelStyle: TextStyle(color: TColors.white),
    padding: EdgeInsets.all(12.0),
    checkmarkColor: TColors.white,
    // color: WidgetStatePropertyAll(Colors.transparent)
  );
}
