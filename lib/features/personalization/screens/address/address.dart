import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/features/personalization/screens/address/add_new_address.dart';
import 'package:fyp_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: MyColors.primary,
        child: const Icon(Iconsax.add, color: MyColors.white),
      ),
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Addresses' , style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            MySingleAddress(selectedAddress: true),
            MySingleAddress(selectedAddress: false),
          ],
        ),
      ),
    );
  }
}
