import 'package:flutter/material.dart';
import 'package:fyp_store/app.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// -- Appbar
      appBar: MyAppBar(title: Text('Reviews & Ratings')),

      /// -- Body
      body: SingleChildScrollView(

      ),
    );
  }
}
