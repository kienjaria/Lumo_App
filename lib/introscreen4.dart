import 'package:flutter/material.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: const Center(
        child:
            Text('Know all the products you stock and how they are purchased'),
      ),
    );
  }
}

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.verified_user_rounded),
//         ),
//       ],
//     );
//   }
// }
