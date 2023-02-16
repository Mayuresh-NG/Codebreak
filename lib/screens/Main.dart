import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        // Within the SecondScreen widget
        onPressed: () {
          // Navigate back to the first screen by popping the current route
          // off the stack.
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    );
  }
}
