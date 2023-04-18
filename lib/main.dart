import 'package:flutter/material.dart';
import 'onboarding_description.dart';
import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}



// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 65,
//           backgroundColor: const Color.fromARGB(204, 183, 9, 218),
//           title: const Center(child: Text('Lumo App')),
//           //profile image for the store
//           actions: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(right: 10.0),
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white, //remove this when you add image.
//                 ),
//                 // child: (
//                 //   width: 120,
//                 //   height: 120,
//                 //   fit: BoxFit.cover,
//                 //   imageUrl: "imageUrl goes here",
//                 // ),
//               ),
//             )
//           ],
//         ),
//         body: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.all(12.0),
//               padding: const EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: const Color.fromARGB(255, 224, 26, 208)),
//               child: const Text('All Products'),
//             ),
//             Container(
//               margin: const EdgeInsets.all(12.0),
//               padding: const EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: const Color.fromARGB(255, 224, 26, 208)),
//               child: const Text('Point of Sale'),
//             ),
//             Container(
//               child: const TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       labelText: 'Enter Name',
//                       hintText: 'Enter Your Name')),
//             ),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: const Color.fromARGB(204, 183, 9, 218),
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
//             BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Records'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.calendar_today), label: 'Sales'),
//           ],
//         ));
//   }
// }
