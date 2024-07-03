import 'package:flutter/material.dart';
import 'package:iconoir_flutter/iconoir_flutter.dart';

class IconListView extends StatelessWidget {
  const IconListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        User(
          color: Colors.grey,
        ),
        Bell(
          color: Colors.grey,
        ),
        Settings(
          color: Colors.grey,
        ),
        Search(
          color: Colors.grey,
        ),
        MastercardCard(
          color: Colors.grey,
        ),
      ],
    );
  }
}
