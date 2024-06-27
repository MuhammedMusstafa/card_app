import 'package:card_app/electricitypage.dart';
import 'package:card_app/firstscreen.dart';
import 'package:card_app/gaspage.dart';
import 'package:card_app/secondscreen.dart';
import 'package:card_app/waterpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        FirstScreen.id: (context) => FirstScreen(),
        SecondScreen.id: (context) => SecondScreen(),
        WaterPage.id: (context) => WaterPage(),
        GasPage.id: (context) => GasPage(),
        ElectricityPage.id: (context) => ElectricityPage(),
      },
      initialRoute: FirstScreen.id,
    );
  }
}
