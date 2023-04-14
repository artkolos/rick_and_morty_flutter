import 'package:dio/dio.dart';
import 'package:rick_and_morty_flutter/repository/models/characters_model.dart';

class CharactersRepository {
  final Dio dio = Dio();

  late final List<CharactersList> list;

  Future<CharactersList> getResponse() async {
    final response =
        await dio.get('https://rickandmortyapi.com/api/character?page=1');
    final data = CharactersList.fromJson(response.data);
    return data;
  }
}
