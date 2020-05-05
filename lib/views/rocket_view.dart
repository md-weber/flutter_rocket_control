import 'package:flutter/material.dart';
import 'package:flutterrocketcontrol/widgets/control_area.dart';
import 'package:flutterrocketcontrol/widgets/rocket_area.dart';

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
