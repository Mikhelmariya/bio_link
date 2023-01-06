import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.white,
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
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Btech in CSE , TKM College of Engineering',
                style: TextStyle(fontSize: 12, color: Colors.black87)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.access_alarm_outlined)),
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.access_alarm_rounded)),
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.access_alarm_outlined)),
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.access_alarm_outlined)),
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.access_alarm_outlined)),
          ]),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(200)),
              border: Border.all(color: Colors.black, width: 5),
            ),
            width: 300,
            height: 55,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.abc_rounded),
              Spacer(),
              Text('Linkedln',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Spacer(),
            ]),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(200)),
              border: Border.all(color: Colors.black, width: 5),
            ),
            width: 300,
            height: 55,
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(200)),
              border: Border.all(color: Colors.black, width: 5),
            ),
            width: 300,
            height: 55,
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(200))),
            width: 300,
            height: 55,
          ),
          Spacer(),
          GestureDetector(
              onTap: () {
                print('Button clicked');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                width: 300,
                height: 55,
              )),
        ],
      ),
    ),
  )));
}
