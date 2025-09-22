import 'package:animyoji/data/models/chararcter_model.dart';

import '../../gen/assets.gen.dart';

final List<Map<String, dynamic>> mockCharactersJson = [
  {
    "characterId": 1,
    "characterName": "Conan Edogawa",
    "characterSeries": "Detective Conan",
    "characterImageUrl": Assets.images.conan.path,
  },
  {
    "characterId": 2,
    "characterName": "Gon Freecss",
    "characterSeries": "Hunter x Hunter",
    "characterImageUrl": Assets.images.gon.path,
  },
  {
    "characterId": 3,
    "characterName": "Kakarot (Goku)",
    "characterSeries": "Dragon Ball",
    "characterImageUrl": Assets.images.kakrot.path,
  },
  {
    "characterId": 4,
    "characterName": "Monkey D. Luffy",
    "characterSeries": "One Piece",
    "characterImageUrl": Assets.images.luffy.path,
  },
];

List<CharacterModel> getMockCharacters() {
  return mockCharactersJson
      .map((json) => CharacterModel.fromJson(json))
      .toList();
}
