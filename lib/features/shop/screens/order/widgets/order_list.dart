import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyOrderListItems extends StatelessWidget {
  const MyOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: MySizes.spaceBtwItems),
      itemBuilder: (_, index) => MyCircularContainer(
        showBorder: true,
        padding: const EdgeInsets.all(MySizes.md),
        backgroundColor: dark ? MyColors.dark : MyColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: MySizes.spaceBtwItems / 2),

                /// Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MyColors.primary, fontWeightDelta: 1),
                      ),
                      Text('16 May 2024',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right, size: MySizes.iconSm)),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwItems),


            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: MySizes.spaceBtwItems / 2),

                      /// Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                            style: Theme.of(context).textTheme.labelMedium),
                            Text('[#256f2]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: MySizes.spaceBtwItems / 2),

                      /// Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('18 May 2024',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
