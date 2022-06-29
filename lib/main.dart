import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleSpacing: 20.0,
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white12,
                statusBarIconBrightness: Brightness.dark),
          ),

          fontFamily: 'jannah',
          primarySwatch: Colors.blue,
        ),
        home:  BoardingScreen()
    );
  }
}

