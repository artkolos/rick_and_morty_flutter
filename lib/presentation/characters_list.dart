import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/presentation/routers/router.gr.dart';

import '../repository/characters_repository.dart';
import '../repository/models/characters_model.dart';

@RoutePage()
class ListCharacters extends StatefulWidget {
  const ListCharacters({Key? key}) : super(key: key);

  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  CharactersList? charactersList;

  @override
  void initState() {
    getList();
    super.initState();
  }

  void getList() async {
    charactersList = await CharactersRepository().getResponse();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final listCharacters = charactersList?.results;
    return Scaffold(
        body: charactersList == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SafeArea(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                      ),
                    ),
                  )),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, i) {
                          return Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.topLeft,
                                child: Image.network(
                                  listCharacters![i].image,
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                              SizedBox(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        constraints:
                                            const BoxConstraints(maxWidth: 150),
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 30),
                                        child: Text(
                                          listCharacters[i].name,
                                          textAlign: TextAlign.center,
                                          style: textTheme.labelMedium,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          listCharacters[i].status,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: checkColorStatus(
                                                  listCharacters[i].status)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          );
                        },
                        separatorBuilder: (context, i) => const Divider(),
                        itemCount: listCharacters?.length ?? 10),
                  ),
                ],
              ));
  }

  MaterialColor checkColorStatus(String status) {
    if ('Alive' == status) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
