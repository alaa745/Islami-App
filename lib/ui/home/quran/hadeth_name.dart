import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HadethName extends StatelessWidget {
  String title;
  HadethName({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          color: Color(0xFF242424),
        ),
      ),
    );
  }
}
