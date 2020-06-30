import 'package:flutter/material.dart';

class View extends StatelessWidget {
  final String text;

  View(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
