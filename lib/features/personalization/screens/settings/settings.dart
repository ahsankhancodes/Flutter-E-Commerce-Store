import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fyp_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:fyp_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/features/personalization/screens/address/address.dart';
import 'package:fyp_store/features/personalization/screens/profile/profile.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - Header
            MyPrimaryHeaderContainer(
                child: Column(
              children: [
                /// AppBar
                MyAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: MyColors.white)),
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                /// User Profile Card
                MyUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: MySizes.spaceBtwSections,
                )
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Setting
                  const MySectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  MySettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen())
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-Progress and Completed Orders',
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                  ),
                  const MySettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  /// -- App Settings
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  const MySectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),
                  const MySettingMenuTile(
                      icon: Iconsax.document,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),

                  MySettingMenuTile(
                      icon: Iconsax.location,
                      title: 'GeoLocation',
                      subTitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  MySettingMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  MySettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  /// -- Logout Button
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
