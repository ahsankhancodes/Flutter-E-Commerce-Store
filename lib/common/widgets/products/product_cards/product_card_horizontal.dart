import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_store/common/styles/shadows.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/common/widgets/icons/my_circular_icon.dart';
import 'package:fyp_store/common/widgets/images/my_rounded_image.dart';
import 'package:fyp_store/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:fyp_store/common/widgets/texts/product_price_text.dart';
import 'package:fyp_store/common/widgets/texts/product_title_text.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      decoration: BoxDecoration(
        border: Border.all(color: dark ? MyColors.white: MyColors.darkerGrey),
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.white,
      ),
      child: Row(
        children: [
          /// Thumbnail
          MyCircularContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.md),
            backgroundColor: dark ? MyColors.dark : MyColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: MyRoundedImage(
                      imageUrl: MyImages.productImage1, applyImageRadius: true),
                ),

                /// Sale Tag
                Positioned(
                  top: 5,
                  child: MyCircularContainer(
                    radius: MySizes.sm,
                    backgroundColor: MyColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm, vertical: MySizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: MyColors.black),
                    ),
                  ),
                ),

                /// Favourite IconButton
                const Positioned(
                    top: 0,
                    right: 0,
                    width: 40,
                    height: 40,
                    child: MyCircularIcon(
                      size: MySizes.iconMd,
                      icon: Iconsax.heart,
                      color: Colors.red,
                    )),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 156,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: MySizes.spaceBtwItems / 2),
                      MyBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: MyProductPriceText(price: '256.0')),

                      /// Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(MySizes.carRadiusMd),
                              bottomRight:
                                  Radius.circular(MySizes.productImageRadius)),
                        ),
                        child: const SizedBox(
                            width: MySizes.iconLg * 1.2,
                            height: MySizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: MyColors.white,
                            ))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
