import 'package:flutter/material.dart';
import 'package:fyp_store/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/device/device_utility.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
