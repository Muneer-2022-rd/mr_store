import 'package:mr_store/common/widgets/seaction_heading.dart';
import 'package:mr_store/core/constants/colors.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/core/helpers/helper_functions.dart';
import 'package:mr_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:mr_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:mr_store/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:mr_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:mr_store/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: <Widget>[
                  const RatingAndShareWidget(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtnSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtnSections),
                  const SeactionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  ReadMoreText(
                    'This premium T-shirt is crafted from 100% organic cotton, ensuring maximum comfort and durability. Perfect for casual outings, it features a sleek design with a modern fit. The breathable fabric keeps you cool and comfortable all day long. Available in multiple colors to match your style. Ideal for everyday wear or gifting!',
                    trimLines: 2,
                    colorClickableText: TColors.getPrimaryColor(context),
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    style: TextStyle(fontSize: 16),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeactionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.toNamed(AppRoute.productReviews),
                        icon: Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                          color: dark ? TColors.white : TColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}