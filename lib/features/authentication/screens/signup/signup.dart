import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/login_signup/form_divider.dart';
import 'package:fyp_store/common/widgets/login_signup/social_buttons.dart';
import 'package:fyp_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              /// Form
              const MySignUpForm(),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Divider
              MyLoginDivider(dividerText: MyTexts.orSignUpWith.capitalize!),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Social Buttons

              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


