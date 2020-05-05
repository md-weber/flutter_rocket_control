import 'package:flutter/material.dart';

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
