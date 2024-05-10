import 'package:flutter/material.dart';
import 'package:fyp_store/features/authentication/screens/signup/signup.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';


class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MySizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyTexts.email),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields / 2,
            ),

            /// Remember me and forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyTexts.rememberMe),
                  ],
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(MyTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(MyTexts.signIn),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),

            /// CreateAccount Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(MyTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
