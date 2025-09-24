import 'package:animyoji/data/models/series_statistics.dart';
import 'package:animyoji/helpers/extensions/int_extensions.dart';
import 'package:animyoji/helpers/extensions/numerical_format_extention.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  final SeriesStatistics statistics;

  const StatisticsSection({super.key, required this.statistics});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(Icons.remove_red_eye,color: Theme.of(context).colorScheme.surface),
                4.width,
                Text(
                  statistics.views.toCompactString(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.waving_hand,color: Theme.of(context).colorScheme.surface),
                4.width,
                Text(
                  statistics.clap.toCompactString(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.movie, color: Theme.of(context).colorScheme.surface),
                4.width,
                Text(
                  statistics.seasons,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
