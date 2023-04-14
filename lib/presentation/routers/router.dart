import 'package:auto_route/auto_route.dart';
import 'package:rick_and_morty_flutter/presentation/routers/router.gr.dart';
import 'package:rick_and_morty_flutter/repository/models/characters_model.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter{

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: ListCharacters.page, path: '/'),
    AutoRoute(page: DetailScreen.page,),
  ];

}