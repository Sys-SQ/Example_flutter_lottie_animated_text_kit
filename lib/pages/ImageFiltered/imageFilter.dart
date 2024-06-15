import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredExample extends StatefulWidget {
  const ImageFilteredExample({super.key});

  @override
  State<ImageFilteredExample> createState() => _ImageFilteredExampleState();
}

class _ImageFilteredExampleState extends State<ImageFilteredExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFiltered Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
              child: const FlutterLogo(size: 200),
            ),
            const SizedBox(height: 5),
            ImageFiltered(
              imageFilter: ImageFilter.matrix(
                Matrix4.rotationZ(0.45).storage,
              ),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.matrix(
                Float64List.fromList(
                  [1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1],
                ),
              ),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            const Tooltip(
              message: 'Me estas tocando',
              child: Text(
                'Este es un ejemplo de tooltip',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
