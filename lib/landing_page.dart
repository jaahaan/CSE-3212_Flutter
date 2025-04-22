import 'package:cse_3212_flutter/converter_page.dart';
import 'package:cse_3212_flutter/gridview_page.dart';
import 'package:cse_3212_flutter/listview_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(150, 80), backgroundColor: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("HomePage"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ConverterPage()));
                },
                child: Text("ConverterPage"),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListviewPage()));
                },
                child: Text("ListviewPage"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GridviewPage()));
                },
                child: Text("GridviewPage"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
