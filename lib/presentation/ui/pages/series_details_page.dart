import 'package:animyoji/gen/assets.gen.dart';
import 'package:animyoji/helpers/extensions/int_extensions.dart';
import 'package:animyoji/helpers/extensions/padding_extensions.dart';
import 'package:animyoji/presentation/ui/widgets/category_chip.dart';
import 'package:animyoji/presentation/ui/widgets/series_card.dart';
import 'package:animyoji/presentation/ui/widgets/series_content_describtion.dart';
import 'package:animyoji/presentation/ui/widgets/statistics_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../data/models/series_model.dart';
import '../widgets/custom_button.dart';

class SeriesDetailsPage extends StatelessWidget {
  final SeriesModel series;

  const SeriesDetailsPage({super.key, required this.series});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverStack(
            children: [
              SliverAppBar(
                expandedHeight: 500.0,
                pinned: false,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(series.cover, fit: BoxFit.cover),
                ),
              ),
              if(series.seriesLogo.isNotEmpty)
              SliverPositioned(
                top: 550,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    height: 120,
                    child: Image.asset(
                      series.seriesLogo,
                      height: 80,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                if(series.seriesLogo.isNotEmpty)
                70.height,
                16.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: series.seriesCategory
                          .map(
                            (cat) => CategoryChip(label: cat.name.capitalize()),
                      )
                          .toList(),
                    ),
                  ],
                ),
                16.height,
                StatisticsSection(statistics: series.statistics),
                16.height,
                SeriesContentDescribtion(series: series),
              ],
            ).paddingHorizontal(20),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  label: "Preview",
                  icon: Icons.timer,
                  backgroundColor: Theme.of(context).hintColor,
                  textColor: Theme.of(context).colorScheme.surface,
                  borderRadius: 32,
                  elevation: 0,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: CustomButton(
                  label: "Watch Now",
                  icon: Icons.remove_red_eye,
                  borderRadius: 32,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
