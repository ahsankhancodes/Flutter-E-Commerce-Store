import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/brands/my_brand_card.dart';
import 'package:fyp_store/common/widgets/layouts/grid_layout.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/features/shop/screens/brand/brand_products.dart';
import 'package:fyp_store/features/shop/screens/home/home.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const MySectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// Brands
              MyGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => MyBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
