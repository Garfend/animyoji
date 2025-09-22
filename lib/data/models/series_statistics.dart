class SeriesStatistics {
  final int views;
  final int clap;
  final String seasons;

  SeriesStatistics({required this.views, required this.clap, required this.seasons});

  factory SeriesStatistics.fromJson(Map<String, dynamic> json) {
    return SeriesStatistics(
      views: json['views'] ?? 0,
      clap: json['clap'] ?? 0,
      seasons: json['seasons'] ?? '1 Season'
    );
  }
}
