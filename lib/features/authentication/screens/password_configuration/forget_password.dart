import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(
              MyTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            Text(
              MyTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections * 2,
            ),

            /// Text Field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: MyTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(MyTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
