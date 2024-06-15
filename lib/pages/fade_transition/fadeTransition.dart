import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

// Añadimos la extencion para la animacion
class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with TickerProviderStateMixin {
  // Añadimos el controlador de la animacion
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  // Añadimos la animacion
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  void dispose() {
    // Limpiamos el controlador
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          "10" * 10000,
          style: const TextStyle(color: Colors.blueGrey),
        ),
        Center(
          child: FadeTransition(opacity: _animation, child: const FlutterLogo(size: 300)),
        ),
      ],
    );
  }
}
