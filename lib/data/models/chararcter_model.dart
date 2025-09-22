class CharacterModel {
  final int characterId;
  final String characterName;
  final String characterSeries;
  final String characterImageUrl;

  CharacterModel({
    required this.characterId,
    required this.characterName,
    required this.characterSeries,
    required this.characterImageUrl,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json){
    return CharacterModel(
      characterId: json['characterId'],
      characterName: json['characterName'],
      characterSeries: json['characterSeries'],
      characterImageUrl: json['characterImageUrl'],
    );
  }
}
