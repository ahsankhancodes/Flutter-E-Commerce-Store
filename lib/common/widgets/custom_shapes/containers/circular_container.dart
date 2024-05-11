import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = MySizes.carRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = MyColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = MyColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
