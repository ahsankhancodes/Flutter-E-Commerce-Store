import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:fyp_store/common/widgets/products/cart/cart_item.dart';
import 'package:fyp_store/common/widgets/texts/product_price_text.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: MySizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const MyCartItem(),
          if (showAddRemoveButtons) const  SizedBox(height: MySizes.spaceBtwItems),

          /// Add/Remove Buttons
          if (showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  MyProductQuantityWithAddRemoveButton(),
                ],
              ),
              MyProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
