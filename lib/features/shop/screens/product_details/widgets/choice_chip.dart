import 'package:mr_store/common/widgets/circular_container.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoiceChipWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  const ChoiceChipWidget({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Color? color = THelperFunctions.getColor(text);
    final bool isColor = color != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : TColors.black),
        avatar: isColor
            ? CircularContainer(
                width: 50.w,
                height: 50.h,
                backgroundColor: color,
              )
            : null,
        shape: isColor ? const CircleBorder() : null,
        padding: isColor ? EdgeInsets.zero : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        backgroundColor: isColor ? color : null,
      ),
    );
  }
}
