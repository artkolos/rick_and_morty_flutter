import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/presentation/routers/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: const TextTheme(
              labelMedium:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
          )),
      routerConfig: _appRouter.config(),
    );
  }
}
