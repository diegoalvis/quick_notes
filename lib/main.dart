import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/di/app_module.dart';
import 'package:quick_notes/pages/add/add_page.dart';
import 'package:quick_notes/pages/main/main_page.dart';
import 'package:quick_notes/pages/splash/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InjectorWidget.bind(
        bindFunc: (binder) => binder.install(AppModule()),
        child: MaterialApp(
          title: 'Mis Notas',
          theme: AppTheme.build(),
          initialRoute: SplashPage.ROUTE,
          routes: {
            SplashPage.ROUTE: (context) => SplashPage(),
            MainPage.ROUTE: (context) => MainPage(),
            AddPage.ROUTE: (context) => AddPage(),
          },
        ));
  }
}

class AppTheme {
  static ThemeData build() => ThemeData(
        primaryColor: Color(0xffc3e5ae),
        primaryColorDark: Color(0xff97dbae),
        accentColor: Color(0xfff4bba2),
        backgroundColor: Color(0xffeeeeee),
        brightness: Brightness.light,
      );
}
