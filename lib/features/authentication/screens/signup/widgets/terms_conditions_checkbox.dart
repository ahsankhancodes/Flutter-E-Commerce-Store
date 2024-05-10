import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';

class MyTermsAndConditions extends StatelessWidget {
  const MyTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${MyTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MyTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MyColors.white : MyColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? MyColors.white : MyColors.primary,
                  )),
              TextSpan(
                  text: '${MyTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MyTexts.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MyColors.white : MyColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? MyColors.white : MyColors.primary,
                  )),
            ],
          ),
        )
      ],
    );
  }
}