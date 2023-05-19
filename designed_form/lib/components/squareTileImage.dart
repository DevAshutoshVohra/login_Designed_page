import 'package:flutter/material.dart';

class SquareTileImage extends StatelessWidget {
  final String src;
  const SquareTileImage({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16), color: Colors.grey),
      child: Image.asset(src, height: 40),
    );
  }
}
