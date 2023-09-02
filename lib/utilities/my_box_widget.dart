import 'package:flutter/material.dart';

class MyBoxWidget extends StatelessWidget {
  const MyBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
