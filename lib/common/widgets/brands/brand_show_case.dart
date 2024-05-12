import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';

import 'my_brand_card.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyCircularContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      padding: const EdgeInsets.all(MySizes.md),
      child: Column(
        children: [
          /// Brand with products count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItems,),

          /// Brand Top 3 product Images
          Row(
            children: images
                .map((image) => brandTopProductImageView(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageView(String image, context) {
    return Expanded(
      child: MyCircularContainer(
        height: 100,
        backgroundColor: MyHelperFunctions.isDarkMode(context)
            ? MyColors.darkerGrey
            : MyColors.light,
        margin: const EdgeInsets.only(right: MySizes.sm),
        padding: const EdgeInsets.all(MySizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}