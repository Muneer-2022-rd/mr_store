import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_store/common/widgets/circular_icon.dart';
import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/custom_grid_layout.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/home/widgets/product_card_vertical.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CircularIcon(onPressed: () {}, icon: Iconsax.add)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                itemCount: 3,
                itemBuilder: (context, index) => const ProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
