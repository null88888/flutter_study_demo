import 'package:flutter/material.dart';
import './demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterstudydemo/demo/i18n/intl/ninghao_demo_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('en', 'US'),
        localizationsDelegates: [
        NinghaoDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor:  Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}
