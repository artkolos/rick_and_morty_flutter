// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:rick_and_morty_flutter/presentation/characters_list.dart'
    as _i1;
import 'package:rick_and_morty_flutter/presentation/detail_screen.dart' as _i2;
import 'package:rick_and_morty_flutter/repository/models/characters_model.dart'
    as _i6;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ListCharacters.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ListCharacters(),
      );
    },
    DetailScreen.name: (routeData) {
      final args = routeData.argsAs<DetailScreenArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ListCharacters]
class ListCharacters extends _i3.PageRouteInfo<void> {
  const ListCharacters({List<_i3.PageRouteInfo>? children})
      : super(
          ListCharacters.name,
          initialChildren: children,
        );

  static const String name = 'ListCharacters';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailScreen]
class DetailScreen extends _i3.PageRouteInfo<DetailScreenArgs> {
  DetailScreen({
    _i5.Key? key,
    required _i6.Character character,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailScreen.name,
          args: DetailScreenArgs(
            key: key,
            character: character,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailScreen';

  static const _i3.PageInfo<DetailScreenArgs> page =
      _i3.PageInfo<DetailScreenArgs>(name);
}

class DetailScreenArgs {
  const DetailScreenArgs({
    this.key,
    required this.character,
  });

  final _i5.Key? key;

  final _i6.Character character;

  @override
  String toString() {
    return 'DetailScreenArgs{key: $key, character: $character}';
  }
}
