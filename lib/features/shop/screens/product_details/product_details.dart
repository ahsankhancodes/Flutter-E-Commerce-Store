import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:fyp_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:fyp_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:fyp_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image Slider
            const MyProductImageSlider(),

            /// 2- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: MySizes.defaultSpace,
                  left: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace),
              child: Column(
                children: <Widget>[
                  /// - Rating & Share Button
                  const MyRatingAndShare(),

                  /// -- Price, Title, Stock & Brand
                  const MyProductMetaData(),

                  /// -- Attributes
                  const MyProductAttributes(),
                  const SizedBox(height: MySizes.spaceBtwSections),

                  /// -- CheckOut Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: MySizes.spaceBtwSections),

                  /// -- Description
                  const MySectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const ReadMoreText('This is a Product Description for Blue Nike Sleeveless vest.'
                      ' There are more things that can be added but we are just testing so it is enough',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right, size: 18,)),
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections,),
                  const MyBottomAddToCart(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
