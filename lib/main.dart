import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_example/pages/ImageFiltered/imageFilter.dart';
import 'package:lottie_example/pages/awesome_snackbar_content/awesome_snackbar.dart';
import 'package:lottie_example/pages/backdropFilter/backdrop.dart';
import 'package:lottie_example/pages/fade_transition/fadeTransition.dart';
import 'package:lottie_example/pages/lottie/lottie.dart';
import 'package:lottie_example/pages/tooltip/tooltip.dart';
import 'package:lottie_example/pages/wakelock/wakelock.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: LottieText(),
        // body: Backdrop(),
        // body: FadeTransitionExample(),
        // body: WakelockExample(),
        // body: ImageFilteredExample(),
        // body: TooltipExample(),
        body: AwesomeSnackBarContend(),
      ),
    );
  }
}
