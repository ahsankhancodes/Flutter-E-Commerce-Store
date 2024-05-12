import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/device/device_utility.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: MySizes.defaultSpace),
        child: Container(
          width: MyDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MySizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? MyColors.dark : MyColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(MySizes.carRadiusLg),
            border: showBorder ? Border.all(color: MyColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: MyColors.darkerGrey,),
              const SizedBox(width: MySizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,),

            ],
          ),
        ),
      ),
    );
  }
}