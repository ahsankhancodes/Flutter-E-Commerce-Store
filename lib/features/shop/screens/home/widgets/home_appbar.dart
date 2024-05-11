import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyColors.grey),
          ),
          Text(
            MyTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyColors.white),
          )
        ],
      ),
      actions: [
        MyCartCounterIcon(onPressed: (){}, iconColor: MyColors.white,),
      ],
    );
  }
}

