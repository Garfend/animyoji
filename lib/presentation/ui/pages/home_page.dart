import 'package:animyoji/data/fake_data/fake_series.dart';
import 'package:animyoji/data/models/chararcter_model.dart';
import 'package:animyoji/data/models/series_model.dart';
import 'package:animyoji/helpers/extensions/padding_extensions.dart';
import 'package:animyoji/helpers/extensions/widget_extensions.dart';
import 'package:animyoji/presentation/ui/pages/series_details_page.dart';
import 'package:animyoji/presentation/ui/widgets/category_chip.dart';
import 'package:animyoji/presentation/ui/widgets/character_card.dart';
import 'package:animyoji/presentation/ui/widgets/rating_chip.dart';
import 'package:animyoji/presentation/ui/widgets/series_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/fake_data/fake_characters.dart';
import '../widgets/custom_plan_page_route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<String> chipLabels = listOfChipsLabels.toList();
  List<SeriesModel> seriesList = [];
  List<CharacterModel> characterList = [];

  @override
  void initState() {
    super.initState();
    seriesList = getMockSeries();
    characterList = getMockCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Where Anime Comes Alive'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, PlanPageRoute());
            },
            icon: Icon(Icons.monetization_on),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chipLabels.length,
              itemBuilder: (context, index) {
                return CategoryChip(
                  label: chipLabels[index],
                  selected: selectedIndex == index,
                  onSelected: (value) {
                    setState(() {
                      selectedIndex = value ? index : -1;
                    });
                  },
                ).paddingHorizontal(6);
              },
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: seriesList.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SeriesCard(series: seriesList[index]).onTap(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SeriesDetailsPage(series: seriesList[index]),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CharacterCard(character: characterList[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ).paddingAll(8.0),
    );
  }
}

const listOfChipsLabels = {
  'All',
  'Popular',
  'Trending',
  'New Releases',
  'Top Rated',
  'Upcoming',
};
