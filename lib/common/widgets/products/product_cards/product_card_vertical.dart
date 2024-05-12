import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fyp_store/common/styles/shadows.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/common/widgets/icons/my_circular_icon.dart';
import 'package:fyp_store/common/widgets/images/my_rounded_image.dart';
import 'package:fyp_store/common/widgets/texts/product_price_text.dart';
import 'package:fyp_store/common/widgets/texts/product_title_text.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            MyCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const MyRoundedImage(
                    imageUrl: MyImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// Sale Tag
                  Positioned(
                    top: 12,
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
                      child: MyCircularIcon(
                        icon: Iconsax.heart,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),

            /// -- Details
            Padding(
              padding: const EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: MySizes.xs,),
                      const Icon(Iconsax.verify, color: MyColors.primary, size: MySizes.iconXs,)
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '35.0', isLarge: true,),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: MyColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MySizes.carRadiusMd),
                        bottomRight: Radius.circular(MySizes.productImageRadius)
                    ),
                  ),
                  child: const SizedBox(
                      width: MySizes.iconLg * 1.2,
                      height: MySizes.iconLg * 1.2,
                      child: Center(child: Icon(Icons.add, color: MyColors.white,))),
                ),
              ],
            ),

            /// Details
          ],
        ),
      ),
    );
  }
}


