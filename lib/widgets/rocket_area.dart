import 'package:flutter/material.dart';

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
              fit: BoxFit.cover
            ),
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
