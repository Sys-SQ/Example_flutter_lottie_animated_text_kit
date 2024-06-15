import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Tooltip(
              message: 'Me estas tocando',
              child: Text(
                'Este es un ejemplo de tooltip',
                textAlign: TextAlign.center,
              ),
            ),
            AbsorbPointer(
                absorbing: true,
                child: Container(
                  color: Colors.yellow,
                  height: 200,
                )),
          ],
        ),
      ),
    );
  }
}
