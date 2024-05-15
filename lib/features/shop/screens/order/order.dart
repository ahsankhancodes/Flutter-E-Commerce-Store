import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/features/shop/screens/order/widgets/order_list.dart';
import 'package:fyp_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: MyAppBar(
          title: Text('My Orders',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),

        /// -- Orders
        child: MyOrderListItems(),
      ),
    );
  }
}
