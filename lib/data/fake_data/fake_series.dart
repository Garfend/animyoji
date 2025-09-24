import '../models/series_model.dart';
import '../../gen/assets.gen.dart';

final List<Map<String, dynamic>> mockSeriesJson = [
  {
    "seriesId": 4,
    "seriesName": "Demon Slayer",
    "seriesCategory": ["action", "drama", "Dark Fantasy", "Adventure"],
    "seriesRating": 8.7,
    "seriesImageUrl": Assets.images.demonSlayerCover.path,
    "cover": Assets.images.demonSlayerCover.path,
    "seriesLogo": Assets.images.demonSlayerLogo.path,
    "description": "Tanjiro Kamado becomes a demon slayer to save his sister Nezuko, who has been turned into a demon, while seeking revenge against the demon who killed his family.",
    "statistics":{
      "views": 2800000,
      "clap": 490000,
      "seasons": "4 Seasons"
    },
    "seasons": "4 Seasons"
  },
  {
    "seriesId": 1,
    "seriesName": "Detective Conan",
    "seriesCategory": ["mystery", "thriller"],
    "seriesRating": 9.0,
    "seriesImageUrl": Assets.images.conanSeries.path,
    "cover": Assets.images.conanSeries.path,
    "seriesLogo": Assets.images.canonLogo.path,
    "description": "High school detective Shinichi Kudo was transformed into a child after being poisoned by a mysterious organization. Now as Conan Edogawa, he must solve cases while searching for a way back to his original form.",
    "statistics":{
      "views": 2500000,
      "clap": 450000,
      "seasons": "30+ Seasons"
    },
    "seasons": "30+ Seasons"
  },
  {
    "seriesId": 2,
    "seriesName": "Hunter x Hunter",
    "seriesCategory": ["adventure", "action"],
    "seriesRating": 9.2,
    "seriesImageUrl": Assets.images.hunterXHunter.path,
    "cover": Assets.images.hunterXHunter.path,
    "seriesLogo": null,
    "description": "Gon Freecss discovers his father is a legendary Hunter and embarks on a journey to become a Hunter himself, facing dangerous creatures and making lifelong friends along the way.",
    "statistics": {
      "views": 1800000,
      "clap": 380000,
      "seasons": "2 Seasons"
    },
    "seasons": "2 Seasons"
  },
  {
    "seriesId": 3,
    "seriesName": "Dragon Ball",
    "seriesCategory": ["action", "adventure"],
    "seriesRating": 8.8,
    "seriesImageUrl": Assets.images.dragonBall.path,
    "cover": Assets.images.dragonBall.path,
    "seriesLogo": null,
    "description": "Follow Goku's journey from a young martial artist to the strongest fighter in the universe as he protects Earth from increasingly powerful threats.",
    "statistics":{
      "views": 3200000,
      "clap": 520000,
      "seasons": "Multiple Series"
    },
    "seasons": "Multiple Series"
  },

];

List<SeriesModel> getMockSeries() {
  return mockSeriesJson.map((json) => SeriesModel.fromJson(json)).toList();
}