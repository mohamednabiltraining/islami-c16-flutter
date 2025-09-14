import 'package:flutter/material.dart';
import 'package:islami_c16/ui/chapter_details/ChapterDetails.dart';
import 'package:islami_c16/ui/design.dart';
import 'package:islami_c16/ui/home/HomeScreen.dart';
import 'package:islami_c16/ui/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        AppRoutes.HomeScreen.route: (context) => HomeScreen(),
        AppRoutes.ChapterDetails.route: (context) => ChapterDetails(),
      },
      initialRoute: AppRoutes.HomeScreen.route,
    );
  }
}
