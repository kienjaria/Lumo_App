import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: const Center(
        child: Text(
            'Welcome to Lumo App.Your Personal Business Assistant On Your Phone'),
      ),
    );
  }
}
