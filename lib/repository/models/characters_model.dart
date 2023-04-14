import 'package:json_annotation/json_annotation.dart';

part 'characters_model.g.dart';

@JsonSerializable()
class CharactersList {
  List<Character> results;

  CharactersList(this.results);

  factory CharactersList.fromJson(Map<String, dynamic> json) =>
      _$CharactersListFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersListToJson(this);

  @override
  String toString() {
    return 'CharactersList{results: $results}';
  }
}

@JsonSerializable()
class Character {
  int id;
  String name;
  String image;
  String status;
  String species;


  Character(this.id, this.name, this.image, this.status, this.species);

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

  @override
  String toString() {
    return 'Character{id: $id, name: $name, image: $image}';
  }
}
