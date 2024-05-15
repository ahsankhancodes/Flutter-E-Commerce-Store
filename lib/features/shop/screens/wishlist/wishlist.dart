import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/icons/my_circular_icon.dart';
import 'package:fyp_store/common/widgets/layouts/grid_layout.dart';
import 'package:fyp_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fyp_store/features/shop/screens/home/home.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MyCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MyProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
