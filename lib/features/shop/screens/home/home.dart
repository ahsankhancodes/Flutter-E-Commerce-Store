import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fyp_store/common/widgets/layouts/grid_layout.dart';
import 'package:fyp_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/features/shop/screens/all_products/all_products.dart';
import 'package:fyp_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:fyp_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';

import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  MyHomeAppBar(),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),

                  /// Search Bar
                  MySearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        MySectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: MyColors.white,
                        ),
                        SizedBox(
                          height: MySizes.spaceBtwItems,
                        ),

                        /// Categories
                        MyHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const MyPromoSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),

                  /// -- Heading
                  MySectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  /// -- Popular Products
                  MyGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const MyProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
