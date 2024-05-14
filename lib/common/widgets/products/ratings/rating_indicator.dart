import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fyp_store/utils/constants/colors.dart';

class MyRatingBarIndicator extends StatelessWidget {
  const MyRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      direction: Axis.horizontal,
      itemBuilder: (_, __) => const Icon(
        Icons.star_rate,
        color: MyColors.primary,
      ),
    );
  }
}
