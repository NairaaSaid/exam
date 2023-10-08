import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScreenOne.dart';
import 'ScreenThree.dart';
import 'ScreenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ScreenOne.routeName,
      routes: {

        ScreenOne.routeName:(context) => ScreenOne(),
        ScreenTwo.routeName:(context) => ScreenTwo(),
        ScreenThree.routeName:(context) => ScreenThree(),
      },
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
