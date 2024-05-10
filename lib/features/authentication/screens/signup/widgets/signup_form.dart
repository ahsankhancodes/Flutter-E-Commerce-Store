import 'package:flutter/material.dart';
import 'package:fyp_store/features/authentication/screens/signup/verify_email.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'terms_conditions_checkbox.dart';

class MySignUpForm extends StatelessWidget {
  const MySignUpForm({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: MySizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: MyTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: MyTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          /// Terms&Conditions checkbox
          const MyTermsAndConditions(),
          const SizedBox(height: MySizes.spaceBtwSections,),

          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(MyTexts.createAccount),
            ),

          ),
        ],
      ),
    );
  }
}

