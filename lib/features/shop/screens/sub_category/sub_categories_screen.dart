import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/common/widgets/seaction_heading.dart';
import 'package:mr_store/core/constants/image.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/home/widgets/rounded_image.dart';
import 'package:mr_store/features/shop/screens/sub_category/widgets/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              RoundedImage(
                url: TImages.subCatCloth,
                applyRadius: true,
                width: double.infinity,
              ),
              const SizedBox(height: TSizes.spaceBtnSections),
              Column(
                children: [
                  SeactionHeading(
                    title: 'Cloth',
                    onPressed: () {},
                    showActionButton: true,
                  ),
                  SizedBox(height: TSizes.spaceBtnItems),
                  SizedBox(
                    height: 120.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: TSizes.spaceBtnItems),
                      itemCount: 3,
                      itemBuilder: (context, index) => ProductCardHorizontal(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
