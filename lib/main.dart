import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: myIcons.map((myIcon) {
              return IconButton(
                onPressed: (() {
                  _launchUrl(myIcon.url);
                }),
                icon: ImageIcon(AssetImage(myIcon.icon)),
              );
            }).toList(),
            //IconButton(
            //  onPressed: (() {
            //    _launchUrl("https://www.twitter.com/@mikhela65");
            //  }),
            //   icon: ImageIcon(AssetImage("images/twitter.png"))),
            // IconButton(
            //     onPressed: (() {
            //       _launchUrl("https://www.instagram.com/mikhel_v_kuttickal");
            //     icon: ImageIcon(AssetImage('images/instagram.png'))),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: mycards.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 8,
                      vertical: 5),
                  child: GestureDetector(
                    onTap: (() {
                      _launchUrl(mycards[index].url);
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(200)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      width: 300,
                      height: 55,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.abc_rounded),
                            Spacer(),
                            Text(mycards[index].text,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Spacer(),
                          ]),
                    ),
                  ),
                );
              })),
          Spacer(),
          //  GestureDetector(
          //   onTap: (() {
          //     _launchUrl(
          //         'https://drive.google.com/drive/folders/1czcNym8iitFCq5JzP2iDogL1yrl3pCcl?usp=sharing');
          //   }),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.all(Radius.circular(200)),
          //       border: Border.all(color: Colors.black, width: 5),
          //     ),
          //     width: 300,
          //     height: 55,
          //     child:
          //         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //       Icon(Icons.abc_rounded),
          //       Spacer(),
          //       Text('Certificates',
          //           style:
          //               TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          //       Spacer(),
          //     ]),
          //   ),
          // ),
          // Spacer(),
          // GestureDetector(
          //   onTap: (() {
          //     _launchUrl(
          //         'https://drive.google.com/drive/folders/1y_AX7O4ZZTtdF8KEvgb-Rnmo6t_6RJbW?usp=sharing');
          //   }),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.all(Radius.circular(200)),
          //       border: Border.all(color: Colors.black, width: 5),
          //     ),
          //     width: 300,
          //     height: 55,
          //     child:
          //         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //       Icon(Icons.abc_rounded),
          //       Spacer(),
          //       Text('NLP Thesis',
          //           style:
          //               TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          //       Spacer(),
          //     ]),
          //   ),
          // ),
          // Spacer(),
          // GestureDetector(
          //   onTap: () {
          //     _launchUrl(
          //         'https://drive.google.com/file/d/12ZwyIWKRlvMUelpmNFFAEBejm68doVG2/view?usp=sharing');
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         border: Border.all(color: Colors.black, width: 5),
          //         borderRadius: BorderRadius.all(Radius.circular(200))),
          //     width: 300,
          //     height: 55,
          //     child:
          //         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //       Icon(Icons.abc_rounded),
          //       Spacer(),
          //       Text('Resume',
          //           style:
          //               TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          //       Spacer(),
          //     ]),
          //   ),
          // ),
          // Spacer(),
          // GestureDetector(
          // onTap: () {
          //   print('Button clicked');
          //   _launchUrl(
          //       'https://drive.google.com/file/d/1Jy78naf1OQqmSi40iMR8aDifNHzL5RLO/view?usp=sharing');
          // },
          // child: Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.all(Radius.circular(200)),
          //     border: Border.all(color: Colors.black, width: 5),
          //   ),
          //   width: 300,
          //   height: 55,
          //   child:
          //       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //     Icon(Icons.abc_rounded),
          //     Spacer(),
          //     Text('Computer Vision',
          //         style:
          //             TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          //     Spacer(),
          //   ]),
          // )),
        ],
      ),
    ),
  )));
}

class MyIcon {
  MyIcon({required this.icon, required this.url});
  final String icon;
  final String url;
}

List<MyIcon> myIcons = [
  MyIcon(icon: "images/twitter.png", url: "https://www.twitter.com/@mikhela65"),
  MyIcon(
      icon: "images/instagram.png",
      url: "https://www.instagram.com/mikhel_v_kuttickal"),
];

class Mycards {
  Mycards({required this.text, required this.url, required this.icon});
  String text;
  String url;
  String icon;
}

List<Mycards> mycards = [
  Mycards(
      icon: "images/twitter.png",
      text: "Resume",
      url:
          "https://drive.google.com/file/d/12ZwyIWKRlvMUelpmNFFAEBejm68doVG2/view?usp=sharing"),
  Mycards(
      icon: "images/twitter.png",
      text: "Linkedln",
      url: "https://www.linkedin.com/in/mikhel-v-kuttickal-24b760218"),
  Mycards(
      icon: "images/twitter.png",
      text: "Certificates",
      url:
          "https://drive.google.com/drive/folders/1czcNym8iitFCq5JzP2iDogL1yrl3pCcl?usp=sharing"),
  Mycards(
      icon: "images/twitter.png",
      text: "NLP Thesis",
      url:
          "https://drive.google.com/drive/folders/1y_AX7O4ZZTtdF8KEvgb-Rnmo6t_6RJbW?usp=sharing"),
  Mycards(
      icon: "images/twitter.png",
      text: "Computer Vision",
      url:
          "https://drive.google.com/file/d/1Jy78naf1OQqmSi40iMR8aDifNHzL5RLO/view?usp=sharing"),
];
