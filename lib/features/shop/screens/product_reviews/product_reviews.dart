import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/appbar/appbar.dart';
import 'package:fyp_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:fyp_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:fyp_store/utils/constants/sizes.dart';
import 'widgets/rating_progress_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// -- Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: MySizes.spaceBtwItems),

            /// Overall Product Ratings
            const MyOverallProductRating(),
            const MyRatingBarIndicator(rating: 3.5,),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: MySizes.spaceBtwSections),

            /// User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}

