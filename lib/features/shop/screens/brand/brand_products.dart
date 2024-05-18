import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/brands/my_brand_card.dart';
import 'package:fyp_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            /// Brand Details
            MyBrandCard(showBorder: true),
            SizedBox(height: MySizes.spaceBtwItems),

            MySortableProducts(),
          ],
        ),
        ),

      ),
    );
  }
}
