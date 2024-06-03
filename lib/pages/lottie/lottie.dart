import 'package:flutter/material.dart';
// importamos la libreria lottie
import 'package:lottie/lottie.dart';
// importamos la libreria animated_text_kit.dart
import 'package:animated_text_kit/animated_text_kit.dart';

class LottieText extends StatelessWidget {
  const LottieText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  // RotateAnimatedText("Texto de Animación",
                  //     textStyle: const TextStyle(
                  //         color: Colors.red,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //     duration: const Duration(seconds: 5),
                  //     rotateOut: false,
                  //     transitionHeight: 150,
                  //     alignment: Alignment.centerRight),
                  //   RotateAnimatedText(
                  //     "OPTIMIZIC",
                  //     textStyle: const TextStyle(
                  //         color: Colors.red,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   RotateAnimatedText(
                  //     "DIFERENT",
                  //     textStyle: const TextStyle(
                  //         color: Colors.red,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   // Otro tipo de animacion
                  //   FadeAnimatedText(
                  //     'Imagenes y el texto con animación',
                  //     textStyle: const TextStyle(
                  //         color: Colors.deepOrange,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //         fadeInEnd: 1,
                  //         fadeOutBegin: 2
                  //   ),
                  //   FadeAnimatedText(
                  //     'Imagenes y el texto con animación',
                  //     textStyle: const TextStyle(
                  //         color: Colors.deepOrange,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   FadeAnimatedText(
                  //     'Imagenes y el texto con animación',
                  //     textStyle: const TextStyle(
                  //         color: Colors.deepOrange,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  // ),
                  // Otra animacion
                  // TyperAnimatedText(
                  //   'Animacion rapida',
                  //   textStyle: const TextStyle(
                  //       color: Colors.teal,
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center,
                  //       speed:const Duration(milliseconds:  100)
                  // ),
                  // Otra animacion
                  //   TypewriterAnimatedText('Animated cursor.',
                  //       textStyle: const TextStyle(
                  //           color: Colors.indigo,
                  //           fontSize: 30,
                  //           fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center,
                  //       cursor: '.'),
                  //   // Otro tipo de animación
                  //   ScaleAnimatedText(
                  //     'Animated emergent',
                  //     textStyle: const TextStyle(
                  //         color: Colors.deepPurple,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold),
                  //     scalingFactor: 0.01,
                  //   ),
                  //   // otro tipo de animación
                  //   ColorizeAnimatedText('Amimación colorizada',
                  //       textStyle: const TextStyle(
                  //           color: Colors.deepPurple,
                  //           fontSize: 30,
                  //           fontWeight: FontWeight.bold),
                  //       colors: [Colors.purple, Colors.blue, Colors.black12],
                  //       speed: const Duration(seconds: 5))
                  //   WavyAnimatedText('Animacion Pixar',
                  //       textStyle: const TextStyle(
                  //           color: Colors.blueGrey,
                  //           fontSize: 30,
                  //           fontWeight: FontWeight.bold),
                  //       speed: const Duration(milliseconds: 200)),
                  // ]),
                  // Otra Animacion
                  FlickerAnimatedText('FlickerAnimatedText',
                      textStyle: const TextStyle(
                          color: Colors.pink,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      entryEnd: 0.1),
                ],

                // Dueracion de Animaciones
                // isRepeatingAnimation: false,
                // repeatForever: true,
                totalRepeatCount: 3,
                // Para que ponga stop a la animacion
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              TextLiquidFill(
                text: 'TextLiquid',
                waveColor: Colors.amber,
                textStyle:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                boxBackgroundColor: Colors.red,
                boxHeight: 200,
                boxWidth: 400,
                loadDuration: const Duration(seconds: 9),
                waveDuration: const Duration(seconds: 1),
                loadUntil: 0.5,
              ),
              
              // Icono
              Lottie.network(
                'https://lottie.host/2f96fd8d-20fb-4947-bd75-7b5e4230ccf2/iuN3Eyd64v.json',
                height: 350,
                width: 350,
              ),
            ],
          )
        ],
      ),
    );
  }
}
