import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromARGB(255, 228, 244, 236),
    body: Center(
      child: Column(
        children: [
          ClipOval(
            child: Image(
                image: AssetImage('images/myself.png'),
                width: 100,
                height: 100,
                fit: BoxFit.cover),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mikhel V Kuttickal',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.verified,
                color: Colors.green,
                size: 20,
              )
            ],
          )
        ],
      ),
    ),
  )));
}
