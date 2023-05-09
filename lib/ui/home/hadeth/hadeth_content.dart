import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HadethContent extends StatelessWidget {
  String content;
  HadethContent({required this.content});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
