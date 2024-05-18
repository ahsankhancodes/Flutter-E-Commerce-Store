import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/layouts/grid_layout.dart';
import 'package:fyp_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// DropDown
        DropdownButtonFormField(
          decoration:
          const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            "Newest",
            'Popularity'
          ]
              .map((option) =>
              DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: MySizes.spaceBtwSections),
        MyGridLayout(itemCount: 8, itemBuilder: (_, index) => const MyProductCardVertical()),
      ],
    );
  }
}