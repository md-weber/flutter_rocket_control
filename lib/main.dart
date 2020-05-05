import 'package:flutter/material.dart';
import 'package:flutterrocketcontrol/views/rocket_view.dart';

void main() => runApp(MyApp());

// Background from Photo by Raphael Nogueira on Unsplash

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(
        sliderTheme: SliderThemeData(
          thumbColor: const Color(0xFFFFFFFF),
          activeTrackColor: const Color(0xFFb8a776),
          inactiveTrackColor: const Color(0xFFb9a874),
        ),
      ),
      home: RocketView(),
    );
  }
}
