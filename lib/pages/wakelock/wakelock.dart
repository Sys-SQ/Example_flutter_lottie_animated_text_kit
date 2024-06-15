import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

class WakelockExample extends StatefulWidget {
  const WakelockExample({super.key});

  @override
  State<WakelockExample> createState() => _WakelockExampleState();
}

class _WakelockExampleState extends State<WakelockExample> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          "10" * 10000,
          style: const TextStyle(color: Colors.blueGrey),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Wakelock.enable();
                  });
                },
                child: const Text('Enable Wakelock'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Wakelock.disable();
                  setState(() {});
                },
                child: const Text('Disable Wakelock'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
