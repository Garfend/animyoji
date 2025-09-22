import 'package:animyoji/data/models/series_statistics.dart';

class SeriesModel {
  final int seriesId;
  final String seriesName;
  final List<SeriesCategory> seriesCategory;
  final double seriesRating;
  final String seriesImageUrl;
  final String cover;
  final String seriesLogo;
  final String description;
  final String seasons;
  final SeriesStatistics statistics;

  SeriesModel({
    required this.seriesId,
    required this.seriesName,
    required this.seriesCategory,
    required this.seriesRating,
    required this.seriesImageUrl,
    required this.cover,
    required this.seriesLogo,
    required this.description,
    required this.seasons,
    required this.statistics,
  });

  factory SeriesModel.fromJson(Map<String, dynamic> json) {
    return SeriesModel(
      seriesId: json['seriesId'],
      seriesName: json['seriesName'],
      seriesCategory: json['seriesCategory'] is List
          ? (json['seriesCategory'] as List<dynamic>)
                .map(
                  (cat) => SeriesCategory.values.firstWhere(
                    (e) => e.name == cat,
                    orElse: () => SeriesCategory.action,
                  ),
                )
                .toList()
          : [
              SeriesCategory.values.firstWhere(
                (e) => e.name == json['seriesCategory'],
                orElse: () => SeriesCategory.action,
              ),
            ],
      seriesRating: json['seriesRating'].toDouble(),
      seriesImageUrl: json['seriesImageUrl'],
      cover: json['cover'] ?? '',
      seriesLogo: json['seriesLogo'] ?? '',
      description: json['description'] ?? '',
      seasons: json['seasons'] ?? '',
      statistics: SeriesStatistics.fromJson(json['statistics'] ?? {}),
    );
  }
}

enum SeriesCategory {
  action,
  adventure,
  comedy,
  drama,
  fantasy,
  horror,
  mystery,
  romance,
  sciFi,
  thriller,
}
