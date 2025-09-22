import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingChip extends StatelessWidget {
  final double rating;

  const RatingChip({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(rating.toString()),
      labelStyle: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        fontWeight: FontWeight.bold,
      ),
      shape: StadiumBorder(),
      avatar: Icon(
        Icons.star,
        color: Theme.of(context).colorScheme.onSurface,
        size: 16,
      ),
    );
  }
}
