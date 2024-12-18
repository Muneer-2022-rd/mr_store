import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:mr_store/features/shop/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:mr_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Reviews & Rating',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Our ratings and reviews are genuine and based on real customer experiences. We value your trust and ensure transparency in every review shared. Your feedback helps us improve and serve you better.',
              ),
              const SizedBox(height: TSizes.spaceBtnItems),
              const OverallProductRating(),
              const RatingBarIndicatorWidget(rating: 3.5),
              Text('12,161', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtnSections),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
