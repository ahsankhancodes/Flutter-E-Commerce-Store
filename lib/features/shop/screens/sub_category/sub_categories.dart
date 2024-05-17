import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/images/my_rounded_image.dart';
import 'package:fyp_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const MyRoundedImage(
                  width: double.infinity,
                  imageUrl: MyImages.promoBanner4,
                  applyImageRadius: true),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  MySectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: MySizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: MySizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const MyProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
