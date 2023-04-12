import 'package:flutter/material.dart';
import 'package:lumo_app/widgets/image_list_view.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(204, 183, 9, 218),
      body: TapImage(),
    );
  }
}

class TapImage extends StatefulWidget {
  const TapImage({super.key});

  @override
  State<TapImage> createState() => _TapImageState();
}

class _TapImageState extends State<TapImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Column(
            children: [
              Ink.image(
                image: const AssetImage('assets/warehousing-icon.png'),
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 6,
                child: Text(
                  'Inventory Keeping',
                  style: TextStyle(fontSize: 30, color: Colors.black12),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
