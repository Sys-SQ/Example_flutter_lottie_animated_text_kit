import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_example/pages/lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LottieText(),
      ),
    );
  }
}
