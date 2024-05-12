import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/images/my_circular_image.dart';
import 'package:fyp_store/common/widgets/texts/section_heading.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const MyCircularImage(image: MyImages.user, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),
            ),

            /// -- Details
            const SizedBox(height: MySizes.spaceBtwItems / 2,),
            const Divider(),
            const SizedBox(height: MySizes.spaceBtwItems,),

            /// -- Heading Profile Info
            const MySectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: MySizes.spaceBtwItems,),

            MyProfileMenu(title: 'Name', value: 'Ahsan Khan', onPressed: () {  },),
            MyProfileMenu(title: 'Username', value: 'ahsankhan_1432', onPressed: (){}),

            const SizedBox( height: MySizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: MySizes.spaceBtwItems,),

            /// -- Heading Personal Info
            const MySectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: MySizes.spaceBtwItems,),

            MyProfileMenu(title: 'User-ID', value: '45689', icon: Iconsax.copy, onPressed: (){}),
            MyProfileMenu(title: 'E-mail', value: 'ahsankhancodes@gmail.com', onPressed: (){}),
            MyProfileMenu(title: 'Phone Number', value: '+92-335-9013479', onPressed: (){}),
            MyProfileMenu(title: 'Gender', value: 'Male', onPressed: (){}),
            MyProfileMenu(title: 'Date of Birth', value: '10 Feb, 2003', onPressed: (){}),
            const Divider(),
            const SizedBox(height: MySizes.spaceBtwItems,),

            Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('Delete Account', style: TextStyle(color: Colors.red),),
              ),
            )
          ],
        ),),
      ),
    );
  }
}

