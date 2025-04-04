import 'package:crash_course/ui/pages/counter.page.dart';
import 'package:crash_course/ui/pages/gallery.page.dart';
import 'package:crash_course/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/meteo": (context) => MeteoPage(),
        "/gallery": (context) => GalleryPage(),
        "/counter": (context) => CounterPage()
      },
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepOrange,
      )),
      initialRoute: "/home",
    );
  }
}
