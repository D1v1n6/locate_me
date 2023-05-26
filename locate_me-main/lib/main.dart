import 'package:flutter/material.dart';
import 'package:locate_me/models/theme_model.dart';
import 'package:locate_me/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

void runApp(MyApp myApp) {
}

class MyApp extends StatelessWidget {
  var ThemeData;


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            title: 'Locate Me',
            debugShowCheckedModeBanner: false,
            theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
            home: Wrapper(),
          );
        },
      ),
    );
  }

  Widget ChangeNotifierProvider({Function(context) create, child}) {}

  ThemeModel() {}
}

Wrapper() {
}

Widget MaterialApp({String title, bool debugShowCheckedModeBanner, theme, home}) {
}

Consumer({Function(context, themeNotifier, child) builder}) {
}

class Widget {
}

class BuildContext {
}

class StatelessWidget {
}
