import 'package:flutter/material.dart';

class custom_box extends StatelessWidget {
  final String txt;
  final Color? cl;
  const custom_box({super.key, required this.txt, this.cl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: cl == null ? Colors.white : cl,
          fontSize: 24,
        ),
      ),
    );
  }
}
