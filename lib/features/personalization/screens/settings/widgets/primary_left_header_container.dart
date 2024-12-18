import 'package:mr_store/common/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/features/shop/screens/home/widgets/curved_widget.dart';

class PrimaryLeftHeaderContainer extends StatelessWidget {
  const PrimaryLeftHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Positioned(
                top: -50,
                left: -100,
                child: CircularContainer(
                    backgroundColor: TColors.getSecondryColor(context),
                    height: 200,
                    width: 200)),
            Positioned(
                top: 75,
                left: -75,
                child: CircularContainer(
                    backgroundColor: TColors.getThirdColor(context),
                    height: 200,
                    width: 200)),
            child
          ],
        ),
      ),
    );
  }
}
