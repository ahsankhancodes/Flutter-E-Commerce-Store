import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/brands/brand_show_case.dart';
import 'package:fyp_store/common/widgets/layouts/grid_layout.dart';
import 'package:fyp_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const MyBrandShowCase(
                images: [
                  MyImages.productImage1,
                  MyImages.productImage2,
                  MyImages.productImage3
                ],
              ),
              const MyBrandShowCase(
                images: [
                  MyImages.productImage1,
                  MyImages.productImage2,
                  MyImages.productImage3
                ],
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              /// -- Products
              MySectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              MyGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MyProductCardVertical()),
              const SizedBox(height: MySizes.spaceBtwItems,)
            ],
          ),
        ),
      ],
    );
  }
}
