import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  static ColorController get instance => Get.find();
  final Rx<MaterialColor> primaryColor = Colors.green.obs;
  updateColor(color) {
    primaryColor.value = color;
  }
}
