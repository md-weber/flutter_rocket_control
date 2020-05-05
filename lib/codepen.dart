import 'package:flutter/material.dart';

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

class RocketArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://myracledesign.de/wp-content/uploads/2020/05/raphael-nogueira-svbDI1Pq30s-unsplash.jpg"),
                fit: BoxFit.cover),
            color: const Color(0xFF222222),
            border: Border.all(
              color: const Color(0xFFdddddd),
              width: 5.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            child: Image.network(
              "https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-1/rocket.svg",
            ),
          ),
        )
      ],
    );
  }
}

class ControlArea extends StatefulWidget {
  @override
  _ControlAreaState createState() => _ControlAreaState();
}

class _ControlAreaState extends State<ControlArea> {
  var sliderOneValue = 50.0;
  var sliderTwoValue = 50.0;
  var sliderThreeValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFffe082),
        image: DecorationImage(
          image: NetworkImage(
            "https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-1/brushed-alum.png",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFFffd042), width: 5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CONTROL PANEL",
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: "Roboto, sans-serif",
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            value: sliderOneValue,
            max: 100,
            min: 0,
            onChanged: (value) {
              setState(() {
                sliderOneValue = value;
              });
            },
            inactiveColor: Color(0xFFb6a779),
          ),
          Slider(
            value: sliderTwoValue,
            max: 100,
            min: 0,
            onChanged: (value) {
              setState(() {
                sliderTwoValue = value;
              });
            },
            inactiveColor: Color(0xFFb6a779),
          ),
          Slider(
            value: sliderThreeValue,
            max: 100,
            min: 0,
            onChanged: (value) {
              setState(() {
                sliderThreeValue = value;
              });
            },
            inactiveColor: Color(0xFFb6a779),
          ),
        ],
      ),
    );
  }
}

class RocketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: RocketArea(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ControlArea(),
            ),
          )
        ],
      ),
    );
  }
}
