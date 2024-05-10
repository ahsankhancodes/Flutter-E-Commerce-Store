import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark
              ? 'assets/logos/fyp-store-splash-logo-black.png'
              : 'assets/logos/fyp-store-splash-logo-white.png'),
        ),
        Text(
          MyTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MySizes.sm),
        Text(
          MyTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

