import 'dart:ui';

import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          "10" * 10000,
          style: const TextStyle(color: Colors.blueGrey),
        ),
        Center(
          child: ClipRect(
              child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              alignment: Alignment.center,
              width: 250.0,
              height: 250.0,
              // decoration: BoxDecoration(
              //   color: Colors.grey.shade200.withOpacity(0.5),
              // ),
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )),
        ),
      ],
    );
  }
}
