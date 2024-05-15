import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/images/my_rounded_image.dart';
import 'package:fyp_store/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:fyp_store/common/widgets/texts/product_title_text.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        MyRoundedImage(
          imageUrl: MyImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(MySizes.sm),
          backgroundColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.darkerGrey
              : MyColors.light,
        ),
        const SizedBox(width: MySizes.spaceBtwItems),

        /// title, Price, & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
              child: MyProductTitleText(
                  title: 'Black Sports Shoes', maxLines: 1),
            ),

            /// Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color: ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: 'Size: ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'UK-08',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
