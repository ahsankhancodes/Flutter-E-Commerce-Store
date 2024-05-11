import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyCircularIcon extends StatelessWidget {
  const MyCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = MySizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : MyHelperFunctions.isDarkMode(context)
                ? MyColors.black.withOpacity(0.9)
                : MyColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: () {}, icon: Icon(icon, color: color, size: size)),
    );
  }
}
