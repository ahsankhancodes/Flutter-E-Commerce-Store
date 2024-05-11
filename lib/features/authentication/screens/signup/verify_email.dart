import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/success_screen/success_screen.dart';
import 'package:fyp_store/features/authentication/screens/login/login.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give Default Space on all sides in all screens.
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(MyImages.deliveredEmailIllustration),
                width: MyHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              /// Title & SubTitle
              Text(
                MyTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text(
                'contact @: ahsankhancodes@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text(
                MyTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                        () => SuccessScreen(
                      image: MyImages.staticSuccessIllustration,
                      title: MyTexts.yourAccountCreatedTitle,
                      subTitle: MyTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(MyTexts.tContinue),
                ),
              ),

              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(MyTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
