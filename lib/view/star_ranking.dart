import 'package:flutter/material.dart';

class RankingStars extends StatelessWidget {
  final int ranking;
  final double starSize;

  const RankingStars({
    Key? key,
    required this.ranking,
    this.starSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < ranking) {
          return Icon(
            Icons.star,
            size: starSize,
            color: Colors.yellow,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: starSize,
            color: Colors.yellow,
          );
        }
      }),
    );
  }
}
