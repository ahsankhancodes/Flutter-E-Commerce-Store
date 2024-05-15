import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:fyp_store/common/widgets/success_screen/success_screen.dart';
import 'package:fyp_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:fyp_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:fyp_store/navigation_menu.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../cart/widgets/cart_items.dart';
import 'widgets/billing_amount_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: MyAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const MyCartItems(showAddRemoveButtons: false),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// -- Coupon TextField
              const MyCouponCode(),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// -- Billing Section
              MyCircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    MyBillingAmountSection(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    /// Payment Methods
                    MyBillingPaymentSection(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    /// Address
                    MyBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: MyImages.successfulPaymentIcon,
                    title: 'Payment Success',
                    subTitle: 'Your item will be shipped soon',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
