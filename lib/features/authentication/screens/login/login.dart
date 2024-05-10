import 'package:flutter/material.dart';
import 'package:fyp_store/common/styles/spacing_styles.dart';
import 'package:fyp_store/common/widgets/login_signup/form_divider.dart';
import 'package:fyp_store/common/widgets/login_signup/social_buttons.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const MyLoginHeader(),

              /// Form
              const MyLoginForm(),

              /// Divider
              MyLoginDivider(dividerText: MyTexts.orSignInWith.capitalize!,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Footer
              const MySocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}




