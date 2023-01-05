import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromARGB(255, 228, 244, 236),
    body: Center(
      child: ClipOval(child: Image(image: AssetImage('images/myself.png'))),
    ),
  )));
}
