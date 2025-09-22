import 'package:animyoji/gen/assets.gen.dart';
import 'package:animyoji/helpers/extensions/int_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/series_model.dart';

class SeriesContentDescribtion extends StatelessWidget {
  final SeriesModel series;

  const SeriesContentDescribtion({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.icons.fireIcon, width: 24, height: 24),
        16.width,
        Expanded(
          child: Text(
            series.description,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.visible,
            maxLines: null,
          ),
        ),
      ],
    );
  }
}
