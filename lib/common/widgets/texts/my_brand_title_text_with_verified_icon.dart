import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/texts/my_brand_title_text.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/enums.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyBrandTitleWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.iconColor = MyColors.primary,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(
          width: MySizes.xs,
        ),
        const Icon(
          Iconsax.verify,
          color: MyColors.primary,
          size: MySizes.iconXs,
        )
      ],
    );
  }
}

// const SizedBox(
// width: MySizes.xs,
// ),
// const Icon(
// Iconsax.verify,
// color: MyColors.primary,
// size: MySizes.iconXs,
// )
