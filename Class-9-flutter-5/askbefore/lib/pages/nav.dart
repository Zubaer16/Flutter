// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.timewell.io/');
void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 715
        ? Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: SizedBox(
              height: 32,
              width: 150,
              child: OutlinedButton(
                onPressed: _launchUrl,
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF3F6F6),
                  side: BorderSide(
                    width: 2,
                    color: Color(
                      0xFF4F7C87,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Record their answer",
                    style: TextStyle(
                        color: Color(
                          0xFF4F7C87,
                        ),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 40, top: 20),
            child: SizedBox(
              height: 28,
              width: 165,
              child: OutlinedButton(
                onPressed: _launchUrl,
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  primary: Color(0xFFF3F6F6),
                  side: BorderSide(
                    width: 2,
                    color: Color(
                      0xFF4F7C87,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Record their answer",
                    style: TextStyle(
                        color: Color(
                          0xFF4F7C87,
                        ),
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              ),
            ),
          );
  }
}
