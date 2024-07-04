import 'package:flutter/material.dart';

class MyArrowButtons extends StatelessWidget {
  const MyArrowButtons(
      {super.key,
      required this.onpress,
      required this.icon,
      required this.text});

  final VoidCallback onpress;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: onpress,
              icon: Icon(icon, color: Colors.orange),
              iconSize: 40,
            ),
          ),
          // const SizedBox(height: 1),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
