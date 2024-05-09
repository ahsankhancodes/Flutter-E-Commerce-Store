import 'package:flutter/material.dart';
import 'package:fyp_store/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
