import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MySizes.gridViewSpacing,
        crossAxisSpacing: MySizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
