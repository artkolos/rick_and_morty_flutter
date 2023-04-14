import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/repository/models/characters_model.dart';


@RoutePage()
class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.character}) : super(key: key);

  Character character;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(widget.character.name),
      ),
    );
  }
}
